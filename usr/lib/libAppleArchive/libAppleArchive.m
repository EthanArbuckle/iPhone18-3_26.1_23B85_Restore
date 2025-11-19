pthread_mutex_t *retireThreadProc(pthread_mutex_t *a1)
{
  v2 = &a1->__opaque[8];
  sig = a1->__sig;
  if (pthread_mutex_lock(&a1->__opaque[8]))
  {
    goto LABEL_64;
  }

  while (1)
  {
    v4 = *&a1[1].__opaque[16];
    if (v4 >= *&a1[1].__opaque[24])
    {
      if (!pthread_mutex_unlock(v2))
      {
        goto LABEL_63;
      }

      v6 = 0;
    }

    else
    {
      v5 = *&a1[1].__opaque[32];
      *&a1[1].__opaque[16] = v4 + 1;
      v6 = *(v5 + 8 * v4);
      if (!pthread_mutex_unlock(v2))
      {
        if (!v6)
        {
          return a1;
        }

        goto LABEL_9;
      }
    }

    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 643, 72, *v14, "pthread_mutex_unlock", v15, v16, v61);
    if (!v6)
    {
      return a1;
    }

LABEL_9:
    v17 = *(v6 + 2300);
    if (v17 == -1)
    {
      goto LABEL_62;
    }

    if (v17 == 2)
    {
      *(v6 + 2300) = 3;
      v18 = sig[130];
      if (v18)
      {
        v18(sig[129], 21, v6, v6 + 2272);
      }
    }

    v19 = *(v6 + 2048);
    if (v19 != 70)
    {
LABEL_30:
      if (v19 == 72)
      {
        v28 = sig[195];
        if (v28 == sig[194])
        {
          v29 = 2 * v28;
          v30 = v28 == 0;
          v31 = 32;
          if (!v30)
          {
            v31 = v29;
          }

          sig[194] = v31;
          if ((8 * v31) >= 0x2000000001)
          {
            *__error() = 12;
LABEL_52:
            sig[196] = 0;
            v44 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "hlinkInsertEntry", 455, 72, *v44, "malloc", v45, v46, v61);
            sig[194] = 0;
            sig[195] = 0;
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 681, 72, 0, "hlinkInsertEntry failed: %s", v47, v48, v6);
            goto LABEL_59;
          }

          v38 = sig[196];
          v32 = realloc(v38, 8 * v31);
          if (!v32)
          {
            free(v38);
            goto LABEL_52;
          }

          sig[196] = v32;
          v28 = sig[195];
        }

        else
        {
          v32 = sig[196];
        }

        sig[195] = v28 + 1;
        v32[v28] = v6;
        atomic_fetch_add((v6 + 2304), 1u);
        v19 = *(v6 + 2048);
      }

      if (v19 != 68)
      {
        goto LABEL_62;
      }

      v39 = sig[198];
      if (v39 == sig[197])
      {
        v40 = 2 * v39;
        v30 = v39 == 0;
        v41 = 32;
        if (!v30)
        {
          v41 = v40;
        }

        sig[197] = v41;
        if ((8 * v41) >= 0x2000000001)
        {
          *__error() = 12;
LABEL_58:
          sig[199] = 0;
          v51 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "dirInsertEntry", 433, 72, *v51, "malloc", v52, v53, v61);
          sig[197] = 0;
          sig[198] = 0;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 687, 72, 0, "dirInsertEntry failed: %s", v54, v55, v6);
          goto LABEL_59;
        }

        v43 = sig[199];
        v42 = realloc(v43, 8 * v41);
        if (!v42)
        {
          free(v43);
          goto LABEL_58;
        }

        sig[199] = v42;
        v39 = sig[198];
      }

      else
      {
        v42 = sig[199];
      }

      sig[198] = v39 + 1;
      v42[v39] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_62;
    }

    v20 = 0;
    v21 = (sig + 164);
    while (1)
    {
      v22 = *(v6 + v20 + 2312);
      if (v22 == -1)
      {
        goto LABEL_28;
      }

      if (pthread_mutex_lock(v21) < 0)
      {
        v33 = *__error();
        v36 = 561;
        v37 = "pthread_mutex_lock";
        goto LABEL_55;
      }

      v25 = (*v21[1].__opaque + 32 * v22);
      if (!v20)
      {
        break;
      }

      v26 = *(v6 + 2312);
      if (v26 == -1)
      {
        break;
      }

      v25[2] = v26;
      if (v20 == 16)
      {
        v27 = *(v6 + 2320);
        if (v27 != -1)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      if (pthread_mutex_unlock(v21) < 0)
      {
        goto LABEL_54;
      }

LABEL_28:
      v20 += 8;
      v21 = (v21 + 80);
      if (v20 == 24)
      {
        v19 = *(v6 + 2048);
        goto LABEL_30;
      }
    }

    if (v20 == 16)
    {
      v27 = *(v6 + 2320);
      if (v27 != -1)
      {
LABEL_24:
        v25[3] = v27;
        goto LABEL_27;
      }
    }

    if (!*(v6 + v20 + 2336))
    {
      *(v6 + v20 + 2336) = v25[1];
      v25[1] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_27;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 574, 72, 0, "entry already linked", v23, v24, v61);
    if ((pthread_mutex_unlock(v21) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_54:
    v33 = *__error();
    v36 = 585;
    v37 = "pthread_mutex_unlock";
LABEL_55:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", v36, 72, v33, v37, v34, v35, v61);
LABEL_56:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 674, 72, 0, "clusterInsertEntry failed: %s", v49, v50, v6);
LABEL_59:
    if (*(v6 + 2300) != -1)
    {
      *(v6 + 2300) = -1;
      v56 = sig[130];
      if (v56)
      {
        v56(sig[129], 22, v6, v6 + 2272);
      }
    }

LABEL_62:
    entryRelease(v6, v7, v8, v9, v10, v11, v12, v13);
LABEL_63:
    if (pthread_mutex_lock(v2))
    {
LABEL_64:
      v57 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 637, 72, *v57, "pthread_mutex_lock", v58, v59, v61);
      return a1;
    }
  }
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

      v12 = &unk_296ABFE1D;
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
    *v38 = dword_296AD1740[v39];
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

void *pc_array_init(uint64_t a1, uint64_t a2)
{
  v4 = malloc(a2 * a1 + 64);
  if (v4)
  {
    *v4 = 0;
    v4[1] = a2;
    v5 = v4 + 8;
    v4[2] = a1;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_init", 26, 139, *v6, "malloc", v7, v8, v10);
    return 0;
  }

  return v5;
}

void pc_array_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 64));
  }
}

char *pc_array_compact(uint64_t a1)
{
  v3 = *(a1 - 64);
  v4 = *(a1 - 56);
  v2 = (a1 - 64);
  if (v4 <= v3)
  {
    return v2 + 64;
  }

  *(a1 - 56) = v3;
  v2 = reallocf(v2, *(a1 - 48) * v3 + 64);
  if (v2)
  {
    return v2 + 64;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_compact", 56, 139, *v6, "reallocf", v7, v8, vars0);
  return 0;
}

void *pc_array_append(uint64_t a1, void *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 - 64);
  v10 = *(a1 - 56);
  v11 = (a1 - 64);
  if (v10 > v9)
  {
    goto LABEL_7;
  }

  v12 = 2 * v10;
  v13 = v10 == 0;
  v14 = 16;
  if (!v13)
  {
    v14 = v12;
  }

  *(a1 - 56) = v14;
  if (v14 <= v9)
  {
    v17 = "too many elements";
    v18 = 70;
    v19 = 0;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_append", v18, 139, v19, v17, a7, a8, v21);
    return 0;
  }

  v15 = reallocf((a1 - 64), *(a1 - 48) * v14 + 64);
  if (!v15)
  {
    v19 = *__error();
    v17 = "reallocf";
    v18 = 72;
    goto LABEL_10;
  }

  v11 = v15;
  v9 = *v15;
LABEL_7:
  v16 = v11 + 8;
  memcpy(v11 + v11[2] * v9 + 64, __src, v11[2]);
  ++*v11;
  return v16;
}

void *pc_array_indirect_sort(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 - 64);
  v5 = malloc(8 * v4);
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = *(v3 - 48);
      v8 = v5;
      v9 = v4;
      do
      {
        *v8++ = v3;
        v3 += v7;
        --v9;
      }

      while (v9);
    }

    qsort_r(v5, v4, 8uLL, a2, pc_array_compare);
  }

  else
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_indirect_sort", 95, 139, *v10, "malloc", v11, v12, v14);
  }

  return v6;
}

uint64_t pc_array_aggregate(char *a1, unsigned int (*a2)(char *, char *), uint64_t (*a3)(char *, char *))
{
  if (*(a1 - 8) < 2uLL)
  {
    return 0;
  }

  v7 = &a1[*(a1 - 6)];
  v8 = 1;
  v9 = 1;
  v10 = a1;
  while (1)
  {
    if (a2(v10, v7))
    {
      v11 = *(a1 - 6);
      v10 += v11;
      if (v10 < v7)
      {
        memcpy(v10, v7, v11);
      }

      ++v9;
      goto LABEL_9;
    }

    if ((a3(v10, v7) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    ++v8;
    v7 += *(a1 - 6);
    if (v8 >= *(a1 - 8))
    {
      result = 0;
      *(a1 - 8) = v9;
      return result;
    }
  }
}

char *PCompressGetEncoderDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_29EE51278[a1];
  }
}

uint64_t PCompressGetEncoderDecoder(uint64_t result)
{
  if (result >= 7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

unint64_t PCompressGetDecoderKey(unsigned int a1)
{
  v1 = 0x2D62653466787AuLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

char *PCompressGetDecoderDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_29EE512B0[a1];
  }
}

void *AEADecryptAsyncStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  DefaultNThreads = a6;
  if (!a6)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = malloc(0x4A0uLL);
  v13 = v12;
  if (!v12)
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 884;
    goto LABEL_8;
  }

  memset_s(v12, 0x4A0uLL, 0, 0x4A0uLL);
  if (pthread_mutex_init((v13 + 56), 0))
  {
    v16 = "pthread_mutex_init";
    v17 = 885;
LABEL_6:
    v18 = 0;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "AEADecryptAsyncStreamOpen", v17, 114, v18, v16, v14, v15, v29);
    decryptAsyncClose(v13);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 1128) = -1;
  *(v13 + 1144) = -1;
  *(v13 + 1152) = -1;
  *(v13 + 32) = a5 >> 62;
  *(v13 + 40) = a5;
  *(v13 + 1160) = DefaultNThreads;
  v20 = calloc(DefaultNThreads, 8uLL);
  *(v13 + 1168) = v20;
  if (!v20)
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 899;
    goto LABEL_8;
  }

  if (*(v13 + 1160))
  {
    v21 = 0;
    while (1)
    {
      v22 = malloc(0x468uLL);
      v23 = v22;
      if (v22)
      {
        memset_s(v22, 0x468uLL, 0, 0x468uLL);
        *v23 = v13;
      }

      else
      {
        v24 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAlloc", 129, 114, *v24, "malloc", v25, v26, v29);
      }

      *(*(v13 + 1168) + 8 * v21) = v23;
      v27 = *(v13 + 1168);
      if (!*(v27 + 8 * v21))
      {
        break;
      }

      ++v21;
      v20 = *(v13 + 1160);
      if (v21 >= v20)
      {
        goto LABEL_20;
      }
    }

    v16 = "Worker alloc";
    v17 = 903;
    goto LABEL_6;
  }

  v27 = v20;
  LODWORD(v20) = 0;
LABEL_20:
  v28 = ThreadPoolCreate(v20, v27, workerProc);
  *(v13 + 1176) = v28;
  if (!v28)
  {
    v16 = "creating worker pool";
    v17 = 906;
    goto LABEL_6;
  }

  *(v13 + 52) = 0;
  if (pushRange(v13, 12))
  {
    v16 = "add range";
    v17 = 910;
    goto LABEL_6;
  }

  *(v13 + 1128) = 0;
  result = aaAsyncByteStreamAlloc(v13, decryptAsyncClose, ~(a5 >> 55) & 4, 20.0, 1.0);
  if (!result)
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 921;
    goto LABEL_8;
  }

  result[2] = decryptAsyncGetRange;
  result[3] = decryptAsyncProcess;
  result[4] = decryptAsyncCancel;
  result[5] = decryptAsyncIsCancelled;
  return result;
}

uint64_t workerProc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x29EDCA608];
  v9 = *result;
  v8 = *(result + 8);
  if (v8 >= *(*result + 1120))
  {
    v25 = "Invalid range index";
    v26 = 183;
    goto LABEL_48;
  }

  v10 = *(v9 + 1136) + 32 * v8;
  v11 = *(v10 + 24);
  if (*(v9 + 1096) <= v11)
  {
    v25 = "Invalid segment index";
    v26 = 191;
    goto LABEL_48;
  }

  v12 = *(v9 + 784);
  if (v12 >= 0x101)
  {
    goto LABEL_62;
  }

  v13 = result;
  v48 = *(v9 + 1136) + 32 * v8;
  v14 = *(v10 + 28);
  v15 = (*(v9 + 1104) + *(v9 + 800) * v11);
  v16 = *(v9 + 152) * v11;
  v18 = *v15;
  v17 = v15[1];
  v19 = v15 + 2;
  v20 = (result + 612);
  memcpy((result + 612), v15 + 2, v12);
  *(v13 + 608) = v12;
  __s2 = v20;
  memset_s(&v20[v12], 256 - v12, 0, 256 - v12);
  result = aeaEffectiveCompressionAlgorithm(*(v9 + 160));
  if (v18 == v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = result;
  }

  v22 = *(v13 + 16);
  if (v22 != 1)
  {
    if (v22)
    {
      v25 = "Invalid op";
      v26 = 307;
    }

    else if (v14 == 3)
    {
      v23 = *(v9 + 16);
      if (!v23)
      {
        goto LABEL_29;
      }

      v24 = v23(*v9, v18, v16, *(v9 + 148), __s2, *(v13 + 608));
      if ((v24 & 0x80000000) == 0)
      {
        if (v24)
        {
          *(v48 + 28) = 6;
          atomic_fetch_add((v9 + 120), 1u);
          if (*(v9 + 32) >= 3u)
          {
            fprintf(*MEMORY[0x29EDCA610], "Segment %u skipped, offset=%jd, payload=%u, raw=%u\n");
          }

LABEL_15:
          result = 0;
LABEL_49:
          v41 = *MEMORY[0x29EDCA608];
          return result;
        }

LABEL_29:
        result = 0;
        *(v48 + 28) = 4;
        goto LABEL_49;
      }

      v25 = "Client selection callback reported an error";
      v26 = 220;
    }

    else
    {
      v25 = "Invalid segment state";
      v26 = 207;
    }

LABEL_48:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", v26, 114, 0, v25, a7, a8, v45);
    v40 = 0;
    atomic_compare_exchange_strong((v9 + 48), &v40, 1u);
    result = 0xFFFFFFFFLL;
    goto LABEL_49;
  }

  if (v14 != 2)
  {
    v25 = "Invalid segment state";
    v26 = 239;
    goto LABEL_48;
  }

  if (*(v13 + 32) != v17)
  {
    v25 = "Segment payload size mismatch";
    v26 = 242;
    goto LABEL_48;
  }

  v46 = v18;
  v27 = *(v9 + 324);
  if (v27 >= 0x101)
  {
    goto LABEL_62;
  }

  memcpy((v13 + 352), v19 + *(v9 + 784), *(v9 + 324));
  *(v13 + 348) = v27;
  memset_s((v13 + 352 + v27), 256 - v27, 0, 256 - v27);
  v28 = *(v9 + 156);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  memset(&__s[8], 0, 252);
  memset(v51, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v11 / v28;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v29 = *(v9 + 384);
  if (v29 && *(v9 + 520))
  {
    v30 = v29(v49, *(v9 + 312));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v31 = 0;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v31 = 1;
LABEL_33:
  memset(v51 + 8, 0, 224);
  memset(&v51[14] + 8, 0, 28);
  WORD4(v51[0]) = 19283;
  *&v51[0] = 0x5F41454100000006;
  result = memset_s(v51 + 10, 0xFAuLL, 0, 0xFAuLL);
  v32 = LODWORD(v51[0]);
  if (LODWORD(v51[0]) < 0xFD)
  {
    *(v51 + LODWORD(v51[0]) + 4) = v11 % v28;
    LODWORD(v51[0]) = v32 + 4;
    memset_s(v51 + v32 + 8, 252 - v32, 0, 252 - v32);
    memset(__s, 0, sizeof(__s));
    v33 = *(v9 + 384);
    if (v33 && LODWORD(v49[0]))
    {
      v34 = v33(v13 + 88, *(v9 + 316), v49, v51, __s);
      memset_s(v51, 0x104uLL, 0, 0x104uLL);
      if ((v34 & 0x80000000) == 0)
      {
        memset_s(v49, 0x104uLL, 0, 0x104uLL);
        if (!v31)
        {
          v35 = *(v9 + 408);
          if (v35 && *(v13 + 348) == *(v9 + 324) && (v36 = (v13 + 40), (v35(*(v13 + 40), *(v13 + 32)) & 0x80000000) == 0))
          {
            if (v21)
            {
              v36 = (v13 + 64);
              v39 = compression_decode_buffer(*(v13 + 64), *(v13 + 48), *(v13 + 40), *(v13 + 32), *(v13 + 80), v21);
              *(v13 + 56) = v39;
            }

            else
            {
              v39 = *(v13 + 32);
            }

            if (v39 == v46 && (v42 = *v36, (aeaChecksum(v13 + 868, *(v9 + 148), v42, v39, v37, v38, a7, a8) & 0x80000000) == 0) && (v43 = *(v13 + 868), *(v9 + 784) == v43) && v43 == *(v13 + 608) && !memcmp((v13 + 872), __s2, v43))
            {
              v44 = *(v9 + 24);
              if (!v44 || (v44(*v9, v39, v16, v42) & 0x80000000) == 0)
              {
                *(v48 + 28) = 5;
                atomic_fetch_add((v9 + 120), 1u);
                if (*(v9 + 32) >= 3u)
                {
                  fprintf(*MEMORY[0x29EDCA610], "Segment %u processed, offset=%jd, payload=%u, raw=%u\n");
                }

                goto LABEL_15;
              }

              v25 = "Client processing callback reported an error";
              v26 = 297;
            }

            else
            {
              v25 = "Segment data failed verification";
              v26 = 285;
            }
          }

          else
          {
            v25 = "Segment decryption";
            v26 = 259;
          }

          goto LABEL_48;
        }

LABEL_45:
        v25 = "derive segment encryption key";
        v26 = 252;
        goto LABEL_48;
      }
    }

    else
    {
      memset_s(v51, 0x104uLL, 0, 0x104uLL);
    }

    memset_s(v49, 0x104uLL, 0, 0x104uLL);
    goto LABEL_45;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t pushRange(void *a1, uint64_t a2)
{
  v4 = a1[140];
  v5 = a1[139];
  if (v4 >= v5)
  {
    v6 = 2 * v5;
    v7 = v5 == 0;
    v8 = 32;
    if (!v7)
    {
      v8 = v6;
    }

    a1[139] = v8;
    if ((32 * v8) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_14:
      a1[142] = 0;
      v15 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushRange", 346, 114, *v15, "malloc", v16, v17, v19);
      a1[139] = 0;
      a1[140] = 0;
      return -1;
    }

    v9 = a1[142];
    v10 = realloc(v9, 32 * v8);
    if (!v10)
    {
      free(v9);
      goto LABEL_14;
    }

    a1[142] = v10;
    v4 = a1[140];
  }

  v11 = a1[142];
  if (v4)
  {
    v12 = &v11[4 * v4];
    v13 = *(v12 - 4) + *(v12 - 3);
    a1[140] = v4 + 1;
LABEL_11:
    memset_s(v12, 0x20uLL, 0, 0x20uLL);
    v14 = v13;
    goto LABEL_12;
  }

  v13 = 0;
  v14 = 0;
  a1[140] = 1;
  v12 = v11;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  *v12 = a2;
  v12[1] = v14;
  v12[2] = -1;
  *(v12 + 6) = -1;
  return v4;
}

uint64_t decryptAsyncClose(uint64_t a1)
{
  v2 = atomic_load((a1 + 48));
  v3 = v2 == 0;
  if ((ThreadPoolDestroy(*(a1 + 1176)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncClose", 850, 114, 0, "ThreadPoolDestroy", v4, v5, v18);
    v3 = 0;
  }

  v6 = *(a1 + 1168);
  if (v6)
  {
    v7 = *(a1 + 1160);
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        v9 = *(*(a1 + 1168) + 8 * i);
        if (v9)
        {
          v10 = *(v9 + 40);
          if (v10)
          {
            memset_s(*(v9 + 40), *(v9 + 24), 0, *(v9 + 24));
          }

          free(v10);
          v11 = *(v9 + 64);
          if (v11)
          {
            memset_s(*(v9 + 64), *(v9 + 48), 0, *(v9 + 48));
          }

          free(v11);
          v12 = *(v9 + 80);
          if (v12)
          {
            memset_s(*(v9 + 80), *(v9 + 72), 0, *(v9 + 72));
          }

          free(v12);
          memset_s(v9, 0x468uLL, 0, 0x468uLL);
          free(v9);
          v7 = *(a1 + 1160);
        }
      }

      v6 = *(a1 + 1168);
    }

    free(v6);
  }

  v13 = *(a1 + 808);
  if (v13)
  {
    memset_s(*(a1 + 808), *(a1 + 792), 0, *(a1 + 792));
  }

  free(v13);
  v14 = *(a1 + 1136);
  if (v14)
  {
    memset_s(*(a1 + 1136), 32 * *(a1 + 1112), 0, 32 * *(a1 + 1112));
  }

  free(v14);
  v15 = *(a1 + 1104);
  if (v15)
  {
    v16 = *(a1 + 800) * *(a1 + 1088);
    memset_s(*(a1 + 1104), v16, 0, v16);
  }

  free(v15);
  AEAContextDestroy(*(a1 + 128));
  pthread_mutex_destroy((a1 + 56));
  memset_s(a1, 0x4A0uLL, 0, 0x4A0uLL);
  free(a1);
  return (v3 - 1);
}

uint64_t decryptAsyncGetRange(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v9 = "lockState";
    v10 = 743;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", v10, 114, 0, v9, v7, v8, v21);
    v19 = 0;
    atomic_compare_exchange_strong((a1 + 48), &v19, 1u);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 52) == 4)
  {
    v11 = *(a1 + 1128);
    if (v11 < 0)
    {
LABEL_9:
      v14 = atomic_load((a1 + 120));
      if (*(a1 + 1096) == v14)
      {
        *(a1 + 52) = 5;
      }
    }

    else
    {
      v12 = *(a1 + 1136);
      while (1)
      {
        v13 = v12 + 32 * v11;
        if (*(v13 + 28) == 4)
        {
          break;
        }

        v11 = *(v13 + 16);
        *(a1 + 1128) = v11;
        if (v11 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v15 = *(a1 + 1128);
  if (v15 < 0)
  {
    if (*(a1 + 52) == 5)
    {
      *a2 = 0;
      *a3 = 0;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 1136) + 32 * v15;
    v17 = *(v16 + 8);
    *a2 = *v16;
    *a3 = v17;
    v18 = 1;
    *(v16 + 28) = 1;
    *(a1 + 1128) = *(v16 + 16);
  }

  if (pthread_mutex_unlock((a1 + 56)))
  {
    v9 = "unlockState";
    v10 = 782;
    goto LABEL_18;
  }

  return v18;
}

uint64_t decryptAsyncProcess(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v11 = "lockState";
    v12 = 796;
    goto LABEL_26;
  }

  __key[0] = 0;
  v26 = 0u;
  __key[1] = a4;
  v13 = bsearch(__key, *(a1 + 1136), *(a1 + 1120), 0x20uLL, cmpRange);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 800, 114, 0, "Invalid offset received: %jd\n", v17, v18, a4);
    goto LABEL_23;
  }

  if (v13[7] == 1)
  {
    v13[7] = 2;
    if (*v13 == a3)
    {
      v19 = *(a1 + 52);
      if (v19 <= 1)
      {
        if (v19)
        {
          if (v19 != 1)
          {
            goto LABEL_22;
          }

          v20 = processPrologue(a1, a2, a3);
        }

        else
        {
          v20 = processMagic(a1, a2, a3, v14, v15, v16, v17, v18);
        }
      }

      else
      {
        switch(v19)
        {
          case 2:
            v20 = processClusterHeader(a1, a2, a3, v14, v15, v16, v17, v18);
            break;
          case 3:
            v20 = processPadding(a1, a2, a3);
            break;
          case 4:
            v20 = processSegment(a1, (v13 - *(a1 + 1136)) >> 5, a2, a3, v15, v16, v17, v18);
            break;
          default:
LABEL_22:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 822, 114, 0, "Invalid archive", v17, v18, v24);
            goto LABEL_23;
        }
      }

      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 808, 114, 0, "Invalid size received: %zu\n", v17, v18, a3);
LABEL_23:
    v21 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v21 = 0;
LABEL_24:
  if (!pthread_mutex_unlock((a1 + 56)))
  {
    if (!v21)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v11 = "unlockState";
  v12 = 825;
LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", v12, 114, 0, v11, v9, v10, v24);
LABEL_27:
  v22 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v22, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t processMagic(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Magic received: %zu B\n", a3);
  }

  if (a3 == 12)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    memset(v15, 0, sizeof(v15));
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v21 = *a2;
    v22 = *(a2 + 2);
    if ((aeaContainerParamsInitWithMagic(v19, &v21, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0 && (aeaCryptoInit((a1 + 312), v19) & 0x80000000) == 0 && (aeaContainerOffsetsInit(v15, v19, (a1 + 312)) & 0x80000000) == 0)
    {
      result = 0;
      **(a1 + 1136) = v16;
      *(a1 + 52) = 1;
      *(a1 + 1128) = 0;
      return result;
    }

    v12 = "Invalid archive";
    v13 = 494;
  }

  else
  {
    v12 = "Invalid magic";
    v13 = 487;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", v13, 114, 0, v12, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t processPrologue(void *a1, _DWORD *a2, size_t a3)
{
  if (*(a1 + 8) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Prologue received: %zu B\n", a3);
  }

  v6 = aeaContextCreateWithPrologue(a2, a3);
  a1[16] = v6;
  if (!v6)
  {
    v12 = "creating encryption context";
    v13 = 514;
    goto LABEL_29;
  }

  v9 = v6;
  v10 = a1[1];
  if (v10)
  {
    if ((v10(*a1, v6) & 0x80000000) != 0)
    {
      v12 = "Context setup callback returned an error";
      v13 = 518;
      goto LABEL_29;
    }

    v9 = a1[16];
  }

  if ((aeaContextUnlock(v9, (a1 + 17), a1 + 130, 0, 1, 0) & 0x80000000) != 0)
  {
    v12 = "Archive unlock";
    v13 = 521;
    goto LABEL_29;
  }

  v11 = aeaChecksumSize(*(a1 + 37));
  a1[98] = v11;
  if (v11 <= 0x1F)
  {
    v12 = "Invalid checksum mode for decrypt to file, at least 256 bits are required";
    v13 = 525;
LABEL_29:
    v25 = 0;
LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", v13, 114, v25, v12, v7, v8, v35);
    return 0xFFFFFFFFLL;
  }

  result = aeaContainerOffsetsInit((a1 + 26), a1 + 34, a1 + 78);
  if ((result & 0x80000000) != 0)
  {
    v12 = "Invalid archive";
    v13 = 528;
    goto LABEL_29;
  }

  if (a1[1])
  {
    v15 = a1[16];
    *v15 = *(a1 + 17);
    v16 = *(a1 + 19);
    v17 = *(a1 + 21);
    v18 = *(a1 + 23);
    *(v15 + 64) = a1[25];
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    result = (a1[1])(*a1, a1[16]);
    if ((result & 0x80000000) != 0)
    {
      v12 = "Client post-unlock callback returned an error";
      v13 = 534;
      goto LABEL_29;
    }
  }

  if ((*(a1 + 47) & 4) != 0)
  {
    *(a1[16] + 2740) = 1;
  }

  v19 = *(a1 + 39);
  v20 = ((a1[21] + *(a1 + 38) - 1) / *(a1 + 38) + v19 - 1) / v19;
  if (HIDWORD(v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = (v20 * v19) >> 32 == 0;
  }

  if (!v21)
  {
    v12 = "Invalid archive, too many clusters";
    v13 = 546;
    goto LABEL_29;
  }

  *(a1 + 195) = v20;
  v22 = *(a1 + 81);
  if (v22 >= 0x101)
  {
    __break(1u);
  }

  else
  {
    memcpy(a1 + 820, a2 + a1[33], *(a1 + 81));
    *(a1 + 204) = v22;
    memset_s(a1 + v22 + 820, 256 - v22, 0, 256 - v22);
    if (*(a1 + 195))
    {
      v23 = a1[98] + *(a1 + 81) + 8;
      a1[100] = v23;
      v24 = v20 * *(a1 + 39);
      a1[136] = v24;
      a1[137] = 0;
      if (v24 * v23 >= 0x2000000001)
      {
        *__error() = 12;
        a1[138] = 0;
LABEL_38:
        v25 = *__error();
        v12 = "malloc";
        v13 = 569;
        goto LABEL_30;
      }

      v32 = malloc(v24 * v23);
      a1[138] = v32;
      if (!v32)
      {
        goto LABEL_38;
      }

      v33 = pushRange(a1, a1[38]);
      if (v33 < 0)
      {
        v12 = "inserting first cluster header range";
        v13 = 573;
        goto LABEL_29;
      }

      v34 = v33;
      result = 0;
      *(a1 + 13) = 2;
      a1[141] = v34;
      *(a1 + 269) = 0;
    }

    else
    {
      v26 = pushPaddingRange(a1);
      if (v26 < 0)
      {
        v12 = "inserting padding range";
        v13 = 556;
        goto LABEL_29;
      }

      if (!v26 && (startStreaming(a1, v27, v28, v29, v30, v31, v7, v8) & 0x80000000) != 0)
      {
        v12 = "Streaming data setup";
        v13 = 559;
        goto LABEL_29;
      }

      return 0;
    }
  }

  return result;
}

uint64_t processClusterHeader(uint64_t a1, void *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x29EDCA608];
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Cluster header received: %zu B\n", __n);
  }

  v11 = *(a1 + 808);
  if (v11)
  {
    v12 = *(a1 + 792);
    goto LABEL_5;
  }

  v12 = *(a1 + 304);
  *(a1 + 792) = v12;
  if (v12 >= 0x2000000001)
  {
    *__error() = 12;
    *(a1 + 808) = 0;
LABEL_49:
    v50 = *__error();
    v17 = "malloc";
    v18 = 596;
LABEL_54:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", v18, 114, v50, v17, a7, a8, v53);
    v49 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

  v11 = malloc(v12);
  *(a1 + 808) = v11;
  if (!v11)
  {
    goto LABEL_49;
  }

LABEL_5:
  if (v12 != __n)
  {
    v17 = "Invalid cluster header size";
    v18 = 600;
LABEL_53:
    v50 = 0;
    goto LABEL_54;
  }

  memcpy(v11, __src, __n);
  v13 = *(a1 + 1076);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  memset(&__s[8], 0, 252);
  memset(v58, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v13;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v14 = *(a1 + 384);
  if (!v14 || !*(a1 + 520))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  v15 = v14(v56, *(a1 + 312));
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v16 = 0;
  if (v15 < 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  memset(v58 + 12, 0, 248);
  *(v58 + 4) = 0x4B4548435F414541;
  LODWORD(v58[0]) = 8;
  memset_s(v58 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(__s, 0, sizeof(__s));
  v19 = *(a1 + 384);
  if (!v19 || !LODWORD(v56[0]))
  {
    memset_s(v58, 0x104uLL, 0, 0x104uLL);
    goto LABEL_51;
  }

  v20 = v19(v54, *(a1 + 316), v56, v58, __s);
  memset_s(v58, 0x104uLL, 0, 0x104uLL);
  if (v20 < 0)
  {
LABEL_51:
    memset_s(v56, 0x104uLL, 0, 0x104uLL);
    goto LABEL_52;
  }

  memset_s(v56, 0x104uLL, 0, 0x104uLL);
  if (v16)
  {
LABEL_52:
    v17 = "Cluster header encryption key derivation";
    v18 = 611;
    goto LABEL_53;
  }

  v21 = *(a1 + 408);
  if (!v21 || *(a1 + 816) != *(a1 + 324) || (result = v21(*(a1 + 808), *(a1 + 288), a1 + 816, v54, *(a1 + 808) + *(a1 + 288), *(a1 + 304) - *(a1 + 288)), (result & 0x80000000) != 0))
  {
    v17 = "Cluster header decryption";
    v18 = 622;
    goto LABEL_53;
  }

  v23 = *(a1 + 324);
  v24 = *(a1 + 156);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 784) + 8;
    v27 = v24 * *(a1 + 1076);
    v28 = *(a1 + 296);
    v29 = *(a1 + 280);
    while (1)
    {
      v30 = *(a1 + 1096);
      if (v30 >= *(a1 + 1088))
      {
        v17 = "Invalid archive";
        v18 = 634;
        goto LABEL_53;
      }

      v31 = (*(a1 + 1104) + *(a1 + 800) * v30);
      memcpy(v31, (*(a1 + 808) + v29), v26);
      result = memcpy(v31 + v26, (*(a1 + 808) + v28), v23);
      v32 = *v31;
      if (!v32)
      {
        goto LABEL_41;
      }

      v33 = *(a1 + 1120);
      if (v33)
      {
        v33 = *(*(a1 + 1136) + 32 * v33 - 32) + *(*(a1 + 1136) + 32 * v33 - 24);
      }

      v34 = v31[1];
      if ((v33 + v34) > *(a1 + 176) || (v35 = *(a1 + 1080) + v32, v36 = *(a1 + 168), v35 > v36))
      {
        v17 = "Invalid archive: segment size mismatch";
        v18 = 648;
        goto LABEL_53;
      }

      if (v34 > v32 || (v35 != v36 ? (v37 = v32 >= *(a1 + 152)) : (v37 = 1), !v37))
      {
        v53 = v31[1];
        v17 = "Invalid segment sizes: payload=%u raw=%u";
        v18 = 651;
        goto LABEL_53;
      }

      ++*(a1 + 1096);
      *(a1 + 1080) = v35;
      result = pushRange(a1, v34);
      if (result < 0)
      {
        break;
      }

      v29 += v26;
      v28 += v23;
      v38 = *(a1 + 1136);
      v39 = v38 + 32 * result;
      *(v39 + 24) = v27;
      *(v39 + 28) = 3;
      v40 = *(a1 + 1152);
      v41 = (v38 + 32 * v40 + 16);
      if (v40 < 0)
      {
        v41 = (a1 + 1144);
      }

      *v41 = result;
      *(a1 + 1152) = result;
      ++v25;
      ++v27;
      if (v25 >= *(a1 + 156))
      {
LABEL_41:
        LODWORD(v23) = *(a1 + 324);
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushSegmentRange", 386, 114, 0, "inserting segment range", a7, a8, v53);
    v18 = 658;
    v50 = 0;
    v17 = "inserting segment range";
    goto LABEL_54;
  }

LABEL_42:
  if (v23 < 0x101)
  {
    memcpy((a1 + 820), (*(a1 + 808) + *(a1 + 288)), v23);
    *(a1 + 816) = v23;
    memset_s((a1 + 820 + v23), 256 - v23, 0, 256 - v23);
    v42 = *(a1 + 1076) + 1;
    *(a1 + 1076) = v42;
    if (v42 == *(a1 + 780))
    {
      v43 = pushPaddingRange(a1);
      if (v43 < 0)
      {
        v17 = "inserting padding range";
        v18 = 669;
      }

      else
      {
        if (v43 || (startStreaming(a1, v44, v45, v46, v47, v48, a7, a8) & 0x80000000) == 0)
        {
          v49 = 0;
LABEL_55:
          memset_s(v54, 0x104uLL, 0, 0x104uLL);
          v51 = *MEMORY[0x29EDCA608];
          return v49;
        }

        v17 = "Streaming data setup";
        v18 = 672;
      }
    }

    else
    {
      v52 = pushRange(a1, *(a1 + 304));
      if ((v52 & 0x8000000000000000) == 0)
      {
        v49 = 0;
        *(a1 + 1128) = v52;
        goto LABEL_55;
      }

      v17 = "inserting next cluster header range";
      v18 = 679;
    }

    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t processPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Padding received: %zu B\n", a3);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  __s = 0u;
  v29 = 0u;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  if (*(a1 + 488) && (*(v26 + 7) = 1262571615, *&v26[0] = 0x5F41454100000007, memset_s((v26 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v6 = *(a1 + 384)) != 0) && *(a1 + 520) && (v6(&__s, *(a1 + 312)) & 0x80000000) == 0)
  {
    v7 = (*(a1 + 488))(&__s);
  }

  else
  {
    v7 = 0;
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v26, 0x104uLL, 0, 0x104uLL);
  if (!v7)
  {
    v16 = "authenticating padding";
    v17 = 699;
    goto LABEL_25;
  }

  v10 = *(a1 + 496);
  v11 = !v10 || (v10(v7, a2, a3) & 0x80000000) != 0;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  __s = 0u;
  v29 = 0u;
  v12 = *(a1 + 504);
  if (!v12)
  {
    goto LABEL_22;
  }

  if (*(a1 + 816) != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if ((v12(v7, &__s) & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (__s != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if (__s >= 8)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v14 |= *(&__s + v13 + 4) ^ *(a1 + 820 + v13);
      v15 = v13 + 16;
      v13 += 8;
    }

    while (v15 <= __s);
    if (v14)
    {
LABEL_22:
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
LABEL_23:
      v16 = "authenticating padding";
      v17 = 702;
      goto LABEL_25;
    }
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  if (v11)
  {
    goto LABEL_23;
  }

  if ((startStreaming(a1, v20, v21, v22, v23, v24, v8, v9) & 0x80000000) == 0)
  {
    result = 0;
    goto LABEL_26;
  }

  v16 = "Streaming data setup";
  v17 = 705;
LABEL_25:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", v17, 114, 0, v16, v8, v9, v25);
  result = 0xFFFFFFFFLL;
LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t processSegment(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment received: %zu B\n", a4);
  }

  Worker = ThreadPoolGetWorker(*(a1 + 1176), a2, a3, a4, a5, a6, a7, a8);
  if (!Worker)
  {
    v23 = "ThreadPoolGetWorker";
    v24 = 720;
    goto LABEL_9;
  }

  v15 = Worker;
  v16 = 1;
  if (*(Worker + 24) < v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 723, 114, 0, "Invalid segment size", v13, v14, v26);
    v16 = 0;
    v8 = 0;
  }

  memcpy(*(v15 + 40), a3, v8);
  *(v15 + 32) = v8;
  *(v15 + 16) = 1;
  *(v15 + 8) = a2;
  if ((ThreadPoolRunWorker(*(a1 + 1176), v15, v17, v18, v19, v20, v21, v22) & 0x80000000) != 0)
  {
    v23 = "ThreadPoolRunWorker";
    v24 = 728;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", v24, 114, 0, v23, v13, v14, v26);
    v16 = 0;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t cmpRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 != v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t pushPaddingRange(uint64_t a1)
{
  if (*(*(a1 + 128) + 2740))
  {
    return 0;
  }

  v2 = *(a1 + 1120);
  if (v2)
  {
    v2 = *(*(a1 + 1136) + 32 * v2 - 32) + *(*(a1 + 1136) + 32 * v2 - 24);
  }

  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    return 0;
  }

  if (v3 >= v2)
  {
    v5 = pushRange(a1, v3 - v2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(a1 + 52) = 3;
      *(a1 + 1128) = v5;
      return 1;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushPaddingRange", 375, 114, 0, "inserting padding range", v6, v7, v8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t startStreaming(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 780))
  {
    result = 0;
    *(a1 + 52) = 5;
    return result;
  }

  if (!*(a1 + 1160))
  {
LABEL_14:
    v20 = *(a1 + 1120);
    if (v20)
    {
      v21 = 0;
      v22 = 24;
      do
      {
        if (*(*(a1 + 1136) + v22) != -1)
        {
          Worker = ThreadPoolGetWorker(*(a1 + 1176), a2, a3, a4, a5, a6, a7, a8);
          if (!Worker)
          {
            v36 = "ThreadPoolGetWorker";
            v37 = 449;
            goto LABEL_45;
          }

          *(Worker + 16) = 0;
          *(Worker + 8) = v21;
          if ((ThreadPoolRunWorker(*(a1 + 1176), Worker, v24, v25, v26, v27, a7, a8) & 0x80000000) != 0)
          {
            v36 = "ThreadPoolRunWorker";
            v37 = 452;
            goto LABEL_45;
          }

          v20 = *(a1 + 1120);
        }

        ++v21;
        v22 += 32;
      }

      while (v21 < v20);
    }

    if ((ThreadPoolSync(*(a1 + 1176)) & 0x80000000) != 0)
    {
      v36 = "ThreadPoolSync";
      v37 = 454;
      goto LABEL_45;
    }

    v28 = *(a1 + 1120);
    if (v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = (*(a1 + 1136) + 28);
      do
      {
        v33 = *v31;
        v31 += 8;
        v32 = v33;
        if (v33 == 4)
        {
          v34 = v30 + 1;
        }

        else
        {
          v34 = v30;
        }

        if (v32 == 6)
        {
          ++v29;
        }

        else
        {
          v30 = v34;
        }

        --v28;
      }

      while (v28);
      v28 = (v29 + v30);
    }

    if (*(a1 + 1096) != v28 || *(a1 + 1080) != *(a1 + 168))
    {
      v36 = "Segment count/size mismatch";
      v37 = 467;
      goto LABEL_45;
    }

    result = 0;
    *(a1 + 52) = 4;
    *(a1 + 1128) = *(a1 + 1144);
    return result;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(*(a1 + 1168) + 8 * v9);
    if (v10[3])
    {
      goto LABEL_5;
    }

    v11 = *v10;
    v12 = *(*v10 + 152);
    v13 = malloc(v12);
    v10[5] = v13;
    if (!v13)
    {
      v38 = 144;
      goto LABEL_44;
    }

    v10[3] = v12;
    v14 = aeaEffectiveCompressionAlgorithm(*(v11 + 160));
    if (!v14)
    {
      goto LABEL_5;
    }

    v15 = v14;
    v16 = malloc(v12);
    v10[8] = v16;
    if (!v16)
    {
      v38 = 152;
      goto LABEL_44;
    }

    v10[6] = v12;
    v17 = compression_decode_scratch_buffer_size(v15);
    if (!v17)
    {
      goto LABEL_5;
    }

    v18 = v17;
    if (v17 >= 0x2000000001)
    {
      break;
    }

    v19 = malloc(v17);
    v10[10] = v19;
    if (!v19)
    {
      goto LABEL_43;
    }

    v10[9] = v18;
LABEL_5:
    if (++v9 >= *(a1 + 1160))
    {
      goto LABEL_14;
    }
  }

  *__error() = 12;
  v10[10] = 0;
LABEL_43:
  v38 = 159;
LABEL_44:
  v39 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAllocBuffers", v38, 114, *v39, "malloc", v40, v41, v42);
  v36 = "Worker buffer allocation";
  v37 = 440;
LABEL_45:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", v37, 114, 0, v36, a7, a8, v42);
  return 0xFFFFFFFFLL;
}

int AAArchiveStreamReadHeader(AAArchiveStream s, AAHeader *header)
{
  v2 = *(s + 5);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamReadBlob(AAArchiveStream s, AAFieldKey key, void *buf, size_t nbyte)
{
  v4 = *(s + 6);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteHeader(AAArchiveStream s, AAHeader header)
{
  v2 = *(s + 3);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteBlob(AAArchiveStream s, AAFieldKey key, const void *buf, size_t nbyte)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamClose(AAArchiveStream s)
{
  if (!s)
  {
    return 0;
  }

  if (*s)
  {
    v2 = (*(s + 1))();
  }

  else
  {
    v2 = 0;
  }

  free(s);
  return v2;
}

void AAArchiveStreamCancel(AAArchiveStream s)
{
  v1 = *(s + 2);
  if (v1)
  {
    v1(*s);
  }
}

AAArchiveStream AACustomArchiveStreamOpen(void)
{
  v0 = malloc(0x38uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x38uLL, 0, 0x38uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AACustomArchiveStreamOpen", 49, 14, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

uint64_t appendPathListWorkerProc(uint64_t a1)
{
  v170 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  bzero(path, 0x400uLL);
  bzero(v168, 0x800uLL);
  v6 = AAHeaderCreate();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 168, 14, 0, "creating header", v4, v5, v144);
    v7 = 0;
  }

  v10 = AAEntryXATBlobCreate();
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 170, 14, 0, "creating XAT field", v8, v9, v144);
    v7 = 0;
  }

  v13 = AAEntryACLBlobCreate();
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 172, 14, 0, "creating XAT field", v11, v12, v144);
    v7 = 0;
  }

  v16 = AAEntryYECBlobCreate();
  if (!v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 174, 14, 0, "creating YEC field", v14, v15, v144);
    v7 = 0;
  }

  memset(&v165, 0, sizeof(v165));
  size[0] = 0;
  size[1] = 0;
  v164 = 0;
  v17 = (v2[136] + 40 * *(a1 + 8));
  v18 = *v17;
  if (*v17 < v17[1])
  {
    v19 = *(v2 + 280) != 0;
    do
    {
      v20 = v2[144] + (v18 << 7);
      if (v19 || *(v2 + 280))
      {
        v7 = 0;
        v21 = 1;
        v19 = 1;
      }

      else
      {
        path_length = 0;
        if (AAPathListNodeGetPath(v2[1], *(v20 + 24), 0x400uLL, path, &path_length) < 0)
        {
          v39 = 192;
          v40 = "AAPathListNodeGetPath";
          goto LABEL_41;
        }

        if ((concatPath(v168, 0x800uLL, v2 + 24, path) & 0x80000000) != 0)
        {
          v39 = 193;
          v40 = "invalid path";
          goto LABEL_41;
        }

        v24 = v2[132];
        if (!v24 || (v24(v2[131], 30, path, 0) & 0x80000000) == 0)
        {
          if (lstat(v168, &v165) < 0)
          {
            v41 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 202, 14, v41, "lstat %s", v42, v43, v168);
            goto LABEL_42;
          }

          if ((aaHeaderInitWithPath(v6, v2[2], v2 + 24, path, v3) & 0x80000000) != 0)
          {
            v39 = 203;
            v40 = "initializing header from path";
          }

          else
          {
            v28.ikey = 5521732;
            if (AAFieldKeySetContainsKey(v2[2], v28))
            {
              if ((v165.st_mode & 0xF000) == 0x8000)
              {
                v29.ikey = 5521732;
                if (AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v29, v165.st_size) < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 209, 14, 0, "inserting DAT: %s", v30, v31, v168);
                  goto LABEL_42;
                }
              }
            }

            v32.ikey = 5521752;
            if (AAFieldKeySetContainsKey(v2[2], v32) && (v165.st_mode & 0xF000) != 0xC000)
            {
              if ((aaEntryXATBlobInitWithPath(v10, v2 + 24, path) & 0x80000000) == 0)
              {
                if (!AAEntryXATBlobGetEntryCount(v10))
                {
                  goto LABEL_28;
                }

                EncodedSize = AAEntryXATBlobGetEncodedSize(v10);
                v51.ikey = 5521752;
                if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v51, EncodedSize) & 0x80000000) == 0)
                {
                  __src = 0;
                  goto LABEL_29;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 220, 14, 0, "inserting XAT: %s", v52, v53, v168);
                goto LABEL_42;
              }

              v39 = 216;
              v40 = "initializing XAT field from path";
            }

            else
            {
LABEL_28:
              __src = 1;
LABEL_29:
              v33.ikey = 4997953;
              if (!AAFieldKeySetContainsKey(v2[2], v33))
              {
                goto LABEL_43;
              }

              v34 = v165.st_mode & 0xF000;
              if (v34 != 0x8000 && v34 != 0x4000)
              {
                goto LABEL_43;
              }

              if ((aaEntryACLBlobInitWithPath(v13, v2 + 24, path, v3) & 0x80000000) != 0)
              {
                v39 = 228;
                v40 = "initializing ACL field from path";
              }

              else
              {
                if (AAEntryACLBlobGetEntryCount(v13))
                {
                  v35 = AAEntryACLBlobGetEncodedSize(v13);
                  v36.ikey = 4997953;
                  if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v36, v35) & 0x80000000) == 0)
                  {
                    v151 = 0;
                    goto LABEL_44;
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 232, 14, 0, "inserting ACL: %s", v37, v38, v168);
LABEL_42:
                  v19 = 0;
                  v7 = 0;
                  v21 = 1;
                  goto LABEL_15;
                }

LABEL_43:
                v151 = 1;
LABEL_44:
                v45.ikey = 4408665;
                if (!AAFieldKeySetContainsKey(v2[2], v45))
                {
                  v153 = 1;
                  goto LABEL_55;
                }

                v153 = 1;
                if ((v165.st_mode & 0xF000) == 0x8000 && v165.st_size >= 1)
                {
                  if ((aaEntryYECBlobInitWithPath(v16, 65552, v2 + 24, path) & 0x80000000) == 0)
                  {
                    v46 = AAEntryYECBlobGetEncodedSize(v16);
                    v47.ikey = 4408665;
                    if (AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v47, v46) < 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 242, 14, 0, "inserting YEC: %s", v48, v49, v168);
                      goto LABEL_42;
                    }

                    v153 = 0;
                    goto LABEL_55;
                  }

                  v39 = 240;
                  v40 = "initializing YEC field from path";
                }

                else
                {
LABEL_55:
                  v54.ikey = 5260889;
                  if (!AAFieldKeySetContainsKey(v2[2], v54))
                  {
                    v150 = 1;
                    goto LABEL_62;
                  }

                  v150 = 1;
                  if ((v165.st_mode & 0xF000) != 0x8000 || v165.st_size < 1)
                  {
                    goto LABEL_62;
                  }

                  if ((aaEntryYFPBlobInitWithPath(size, v2 + 24, path) & 0x80000000) == 0)
                  {
                    v55.ikey = 5260889;
                    if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v55, size[0]) & 0x80000000) == 0)
                    {
                      v150 = 0;
LABEL_62:
                      v58.ikey = 4410440;
                      if (AAFieldKeySetContainsKey(v2[2], v58) && (v165.st_mode & 0xF000) == 0x8000 && v165.st_nlink >= 2u)
                      {
                        *(v20 + 32) = v165.st_ino;
                      }

                      v59.ikey = 4410435;
                      v60 = AAFieldKeySetContainsKey(v2[2], v59);
                      st_mode = v165.st_mode;
                      xat = v10;
                      if (v60 && (v165.st_mode & 0xF000) == 0x8000)
                      {
                        v166 = 0uLL;
                        if (!fsctl(v168, 0x40104A0EuLL, &v166, 0) && v166 == 2)
                        {
                          *(v20 + 40) = *(&v166 + 1);
                        }

                        st_mode = v165.st_mode;
                      }

                      if ((st_mode & 0xF000) == 0x8000)
                      {
                        v62.ikey = 4410451;
                        if (AAFieldKeySetContainsKey(v2[2], v62))
                        {
                          *(v20 + 48) = 0;
                          memset_s((v20 + 56), 0x40uLL, 0, 0x40uLL);
                          hash_function = 0;
                          v63.ikey = 3491923;
                          if (!AAFieldKeySetContainsKey(v2[2], v63))
                          {
                            goto LABEL_85;
                          }

                          v64.ikey = 3491923;
                          KeyIndex = AAHeaderGetKeyIndex(v6, v64);
                          if ((KeyIndex & 0x80000000) != 0)
                          {
                            goto LABEL_85;
                          }

                          FieldHash = AAHeaderGetFieldHash(v6, KeyIndex, 0x40uLL, &hash_function, (v20 + 56));
                          v67 = FieldHash <= 1 ? 1 : FieldHash;
                          if (v67 <= 0)
                          {
LABEL_85:
                            if ((v68.ikey = 3360851, !AAFieldKeySetContainsKey(v2[2], v68)) || (v69.ikey = 3360851, v70 = AAHeaderGetKeyIndex(v6, v69), (v70 & 0x80000000) != 0) || ((v71 = AAHeaderGetFieldHash(v6, v70, 0x40uLL, &hash_function, (v20 + 56)), v71 <= 1) ? (v72 = 1) : (v72 = v71), v72 <= 0))
                            {
                              if ((v73.ikey = 3295315, !AAFieldKeySetContainsKey(v2[2], v73)) || (v74.ikey = 3295315, v75 = AAHeaderGetKeyIndex(v6, v74), (v75 & 0x80000000) != 0) || ((v76 = AAHeaderGetFieldHash(v6, v75, 0x40uLL, &hash_function, (v20 + 56)), v76 <= 1) ? (v77 = 1) : (v77 = v76), v77 <= 0))
                              {
                                if ((v78.ikey = 3229779, !AAFieldKeySetContainsKey(v2[2], v78)) || (v79.ikey = 3229779, v80 = AAHeaderGetKeyIndex(v6, v79), (v80 & 0x80000000) != 0) || ((v81 = AAHeaderGetFieldHash(v6, v80, 0x40uLL, &hash_function, (v20 + 56)), v81 <= 1) ? (v82 = 1) : (v82 = v81), v82 <= 0))
                                {
                                  v166 = 0uLL;
                                  v167 = 0;
                                  if ((getFileSHA1Digest(v168, &v166) & 0x80000000) == 0)
                                  {
                                    v85 = v166;
                                    *(v20 + 72) = v167;
                                    *(v20 + 56) = v85;
                                    goto LABEL_100;
                                  }

                                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 282, 14, 0, "hashing file: %s", v83, v84, v168);
                                  v19 = 0;
                                  v7 = 0;
                                  v21 = 1;
LABEL_237:
                                  v10 = xat;
                                  goto LABEL_15;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_100:
                      v148 = v3;
                      v86 = AAHeaderGetEncodedSize(v6);
                      if ((__src & 1) == 0)
                      {
                        v86 += AAEntryXATBlobGetEncodedSize(xat);
                      }

                      if ((v151 & 1) == 0)
                      {
                        v86 += AAEntryACLBlobGetEncodedSize(v13);
                      }

                      if ((v153 & 1) == 0)
                      {
                        v86 += AAEntryYECBlobGetEncodedSize(v16);
                      }

                      v87 = size[0];
                      if (v150)
                      {
                        v87 = 0;
                      }

                      v88 = v87 + v86;
                      *v20 = v17[2];
                      *(v20 + 8) = v87 + v86;
                      *(v20 + 16) = AAHeaderGetEncodedSize(v6);
                      v91 = v17[2] + v88;
                      if ((v91 & 0x8000000000000000) != 0)
                      {
LABEL_143:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 300, 14, 0, "reallocating block blob", v89, v90, v144);
                        v19 = 0;
                        v7 = 0;
                        v21 = 1;
                      }

                      else
                      {
                        v92 = v17[3];
                        if (v92 < v91)
                        {
                          do
                          {
                            while (!v92)
                            {
                              v92 = 0x4000;
                              v94 = 0x4000;
                              if (v91 <= 0x4000)
                              {
                                goto LABEL_122;
                              }
                            }

                            v93 = v92 >> 1;
                            if ((v92 & (v92 >> 1)) != 0)
                            {
                              v93 = v92 & (v92 >> 1);
                            }

                            v92 += v93;
                          }

                          while (v92 < v91);
                          v94 = v92;
                          if (v92 >= 0x2000000001)
                          {
                            *__error() = 12;
                            goto LABEL_142;
                          }

LABEL_122:
                          v95 = v17[4];
                          v96 = realloc(v95, v94);
                          if (v96)
                          {
                            v17[3] = v94;
                            v17[4] = v96;
                            goto LABEL_124;
                          }

                          free(v95);
LABEL_142:
                          v17[2] = 0;
                          v17[3] = 0;
                          v17[4] = 0;
                          goto LABEL_143;
                        }

LABEL_124:
                        EncodedData = AAHeaderGetEncodedData(v6);
                        v98 = AAHeaderGetEncodedSize(v6);
                        v99 = v17[2];
                        v100 = v99 + v98;
                        if (!__CFADD__(v99, v98) && (v100 & 0x8000000000000000) == 0)
                        {
                          v101 = v98;
                          v102 = v17[3];
                          if (v102 >= v100)
                          {
LABEL_148:
                            v106 = v17[4];
                            if (EncodedData)
                            {
                              memcpy((v106 + v17[2]), EncodedData, v101);
                            }

                            else if (v106)
                            {
                              memset_s((v106 + v17[2]), v101, 0, v101);
                            }

                            v99 = v17[2] + v101;
                            v17[2] = v99;
                          }

                          else
                          {
                            v146 = EncodedData;
                            do
                            {
                              while (!v102)
                              {
                                v102 = 0x4000;
                                v104 = 0x4000;
                                if (v100 <= 0x4000)
                                {
                                  goto LABEL_146;
                                }
                              }

                              v103 = v102 >> 1;
                              if ((v102 & (v102 >> 1)) != 0)
                              {
                                v103 = v102 & (v102 >> 1);
                              }

                              v102 += v103;
                            }

                            while (v102 < v100);
                            v104 = v102;
                            if (v102 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_155;
                            }

LABEL_146:
                            v145 = v17[4];
                            v105 = realloc(v145, v104);
                            if (v105)
                            {
                              v17[3] = v104;
                              v17[4] = v105;
                              EncodedData = v146;
                              goto LABEL_148;
                            }

                            free(v145);
LABEL_155:
                            v99 = 0;
                            v17[2] = 0;
                            v17[3] = 0;
                            v17[4] = 0;
                          }
                        }

                        if ((__src & 1) == 0)
                        {
                          __srca = AAEntryXATBlobGetEncodedData(xat);
                          v107 = AAEntryXATBlobGetEncodedSize(xat);
                          v99 = v17[2];
                          v108 = v99 + v107;
                          if (!__CFADD__(v99, v107) && (v108 & 0x8000000000000000) == 0)
                          {
                            v109 = v107;
                            v110 = v17[3];
                            if (v110 >= v108)
                            {
LABEL_171:
                              v114 = v17[4];
                              if (__srca)
                              {
                                memcpy((v114 + v17[2]), __srca, v109);
                              }

                              else if (v114)
                              {
                                memset_s((v114 + v17[2]), v109, 0, v109);
                              }

                              v99 = v17[2] + v109;
                              v17[2] = v99;
                            }

                            else
                            {
                              do
                              {
                                while (!v110)
                                {
                                  v110 = 0x4000;
                                  v112 = 0x4000;
                                  if (v108 <= 0x4000)
                                  {
                                    goto LABEL_169;
                                  }
                                }

                                v111 = v110 >> 1;
                                if ((v110 & (v110 >> 1)) != 0)
                                {
                                  v111 = v110 & (v110 >> 1);
                                }

                                v110 += v111;
                              }

                              while (v110 < v108);
                              v112 = v110;
                              if (v110 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_177;
                              }

LABEL_169:
                              v147 = v17[4];
                              v113 = realloc(v147, v112);
                              if (v113)
                              {
                                v17[3] = v112;
                                v17[4] = v113;
                                goto LABEL_171;
                              }

                              free(v147);
LABEL_177:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v151 & 1) == 0)
                        {
                          v115 = AAEntryACLBlobGetEncodedData(v13);
                          v116 = AAEntryACLBlobGetEncodedSize(v13);
                          v99 = v17[2];
                          v117 = v99 + v116;
                          if (!__CFADD__(v99, v116) && (v117 & 0x8000000000000000) == 0)
                          {
                            v118 = v116;
                            v119 = v17[3];
                            if (v119 >= v117)
                            {
LABEL_194:
                              v123 = v17[4];
                              if (v115)
                              {
                                memcpy((v123 + v17[2]), v115, v118);
                              }

                              else if (v123)
                              {
                                memset_s((v123 + v17[2]), v118, 0, v118);
                              }

                              v99 = v17[2] + v118;
                              v17[2] = v99;
                            }

                            else
                            {
                              __srcb = v115;
                              do
                              {
                                while (!v119)
                                {
                                  v119 = 0x4000;
                                  v121 = 0x4000;
                                  if (v117 <= 0x4000)
                                  {
                                    goto LABEL_192;
                                  }
                                }

                                v120 = v119 >> 1;
                                if ((v119 & (v119 >> 1)) != 0)
                                {
                                  v120 = v119 & (v119 >> 1);
                                }

                                v119 += v120;
                              }

                              while (v119 < v117);
                              v121 = v119;
                              if (v119 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_200;
                              }

LABEL_192:
                              v152 = v17[4];
                              v122 = realloc(v152, v121);
                              if (v122)
                              {
                                v17[3] = v121;
                                v17[4] = v122;
                                v115 = __srcb;
                                goto LABEL_194;
                              }

                              free(v152);
LABEL_200:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v153 & 1) == 0)
                        {
                          v124 = AAEntryYECBlobGetEncodedData(v16);
                          v125 = AAEntryYECBlobGetEncodedSize(v16);
                          v99 = v17[2];
                          v126 = v99 + v125;
                          if (!__CFADD__(v99, v125) && (v126 & 0x8000000000000000) == 0)
                          {
                            v127 = v125;
                            v128 = v17[3];
                            if (v128 >= v126)
                            {
LABEL_217:
                              v132 = v17[4];
                              if (v124)
                              {
                                memcpy((v132 + v17[2]), v124, v127);
                              }

                              else if (v132)
                              {
                                memset_s((v132 + v17[2]), v127, 0, v127);
                              }

                              v99 = v17[2] + v127;
                              v17[2] = v99;
                            }

                            else
                            {
                              __srcc = v124;
                              do
                              {
                                while (!v128)
                                {
                                  v128 = 0x4000;
                                  v130 = 0x4000;
                                  if (v126 <= 0x4000)
                                  {
                                    goto LABEL_215;
                                  }
                                }

                                v129 = v128 >> 1;
                                if ((v128 & (v128 >> 1)) != 0)
                                {
                                  v129 = v128 & (v128 >> 1);
                                }

                                v128 += v129;
                              }

                              while (v128 < v126);
                              v130 = v128;
                              if (v128 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_223;
                              }

LABEL_215:
                              v154 = v17[4];
                              v131 = realloc(v154, v130);
                              if (v131)
                              {
                                v17[3] = v130;
                                v17[4] = v131;
                                v124 = __srcc;
                                goto LABEL_217;
                              }

                              free(v154);
LABEL_223:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v150 & 1) != 0 || (v133 = size[0], v134 = __CFADD__(v99, size[0]), v135 = v99 + size[0], v134) || (v135 & 0x8000000000000000) != 0)
                        {
                          v21 = 0;
                          v19 = 0;
                        }

                        else
                        {
                          v136 = v164;
                          v137 = v17[3];
                          if (v137 >= v135)
                          {
LABEL_242:
                            v141 = v17[4];
                            if (v136)
                            {
                              memcpy((v141 + v17[2]), v136, v133);
                            }

                            else if (v141)
                            {
                              memset_s((v141 + v17[2]), v133, 0, v133);
                            }

                            v21 = 0;
                            v19 = 0;
                            v17[2] += v133;
                          }

                          else
                          {
                            do
                            {
                              while (!v137)
                              {
                                v137 = 0x4000;
                                v139 = 0x4000;
                                if (v135 <= 0x4000)
                                {
                                  goto LABEL_240;
                                }
                              }

                              v138 = v137 >> 1;
                              if ((v137 & (v137 >> 1)) != 0)
                              {
                                v138 = v137 & (v137 >> 1);
                              }

                              v137 += v138;
                            }

                            while (v137 < v135);
                            v139 = v137;
                            if (v137 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_248;
                            }

LABEL_240:
                            v155 = v17[4];
                            __srcd = v164;
                            v140 = realloc(v155, v139);
                            if (v140)
                            {
                              v17[3] = v139;
                              v17[4] = v140;
                              v136 = __srcd;
                              goto LABEL_242;
                            }

                            free(v155);
LABEL_248:
                            v21 = 0;
                            v19 = 0;
                            v17[2] = 0;
                            v17[3] = 0;
                            v17[4] = 0;
                          }
                        }
                      }

                      v3 = v148;
                      goto LABEL_237;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 251, 14, 0, "inserting YFP: %s", v56, v57, v168);
                    goto LABEL_42;
                  }

                  v39 = 249;
                  v40 = "initializing YFP field from path";
                }
              }
            }
          }

LABEL_41:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", v39, 14, 0, v40, v22, v23, v144);
          goto LABEL_42;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 199, 14, "operation aborted", v25, v26, v27, v144);
        v44 = 0;
        v19 = 0;
        v7 = 0;
        v21 = 1;
        atomic_compare_exchange_strong(v2 + 280, &v44, 1u);
      }

LABEL_15:
      *(v20 + 120) = v21;
      ++v18;
    }

    while (v18 < v17[1]);
  }

  AAHeaderDestroy(v6);
  AAEntryXATBlobDestroy(v10);
  AAEntryACLBlobDestroy(v13);
  AAEntryYECBlobDestroy(v16);
  free(v164);
  memset_s(size, 0x18uLL, 0, 0x18uLL);
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v143 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cmp_entries_hlc(void *a1, void *a2)
{
  v4 = a1[4];
  v2 = a2[4];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t cmp_entries_clc(void *a1, void *a2)
{
  v4 = a1[5];
  v2 = a2[5];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t cmp_entries_slc(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v3 >= v4;
  v6 = v3 != v4;
  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!result)
  {
    result = memcmp(a1 + 7, a2 + 7, 0x40uLL);
    if (!result)
    {
      if (*a1 < *a2)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return *a1 != *a2;
      }
    }
  }

  return result;
}

uint64_t cmp_entries_offset(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

AAByteStream AEADecryptionRandomAccessInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 90, 32, 0, "Invalid context", v5, v6, v34);
    v12 = 0;
    goto LABEL_28;
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 94;
    goto LABEL_27;
  }

  memset_s(v11, 0x38uLL, 0, 0x38uLL);
  *v12 = encrypted_stream;
  *(v12 + 8) = flags;
  if ((flags & 0x400000000000000) != 0)
  {
    *(context + 685) = 1;
  }

  Existing = aeaContainerCreateExisting(context, encrypted_stream, 1, 0);
  *(v12 + 16) = Existing;
  if (!Existing)
  {
    v32 = "unlock container";
    v33 = 106;
    v31 = 0;
    goto LABEL_27;
  }

  *(v12 + 24) = DefaultNThreads;
  v16 = calloc(DefaultNThreads, 0x10uLL);
  *(v12 + 32) = v16;
  if (!v16)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 111;
    goto LABEL_27;
  }

  v17 = *(v12 + 16);
  v18 = *(v17 + 24);
  if (v18)
  {
    v19 = aeaEffectiveCompressionAlgorithm(v18);
    *(v12 + 40) = compression_decode_scratch_buffer_size(v19);
    v17 = *(v12 + 16);
  }

  v20 = *(v12 + 24);
  if (!v20)
  {
LABEL_19:
    *context = *v17;
    v27 = *(v17 + 16);
    v28 = *(v17 + 32);
    v29 = *(v17 + 48);
    *(context + 8) = *(v17 + 64);
    *(context + 2) = v28;
    *(context + 3) = v29;
    *(context + 1) = v27;
    return AAGenericRandomAccessInputStreamOpen(*(v17 + 32), *(v17 + 16), v20, 4 * v20, v12, RandomAccessDecryptionStreamGetBlock, RandomAccessDecryptionStreamAbort, RandomAccessDecryptionStreamDestroy, flags);
  }

  v21 = *(v12 + 32);
  v22 = *(v17 + 16);
  v23 = *(v12 + 24);
  while (1)
  {
    v24 = malloc(v22);
    v21[1] = v24;
    if (!v24)
    {
      v31 = *__error();
      v32 = "malloc";
      v33 = 120;
      goto LABEL_27;
    }

    v25 = *(v12 + 40);
    if (!v25)
    {
      goto LABEL_18;
    }

    if (v25 >= 0x2000000001)
    {
      break;
    }

    v26 = malloc(v25);
    *v21 = v26;
    if (!v26)
    {
      goto LABEL_26;
    }

LABEL_18:
    v21 += 2;
    if (!--v23)
    {
      goto LABEL_19;
    }
  }

  *__error() = 12;
  *v21 = 0;
LABEL_26:
  v31 = *__error();
  v32 = "malloc";
  v33 = 124;
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", v33, 32, v31, v32, v14, v15, v34);
LABEL_28:
  RandomAccessDecryptionStreamDestroy(v12);
  return 0;
}

uint64_t RandomAccessDecryptionStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
LABEL_15:
      aeaContainerDestroy(*(a1 + 16));
      memset_s(a1, 0x38uLL, 0, 0x38uLL);
      free(a1);
      return 0;
    }

    if (*(a1 + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + v3 + 8);
        if (v6)
        {
          v7 = *(*(a1 + 16) + 16);
          memset_s(*(v5 + v3 + 8), v7, 0, v7);
        }

        free(v6);
        v8 = *(v5 + v3);
        if (v8)
        {
          memset_s(*(v5 + v3), *(a1 + 40), 0, *(a1 + 40));
        }

        free(v8);
        ++v4;
        v9 = *(a1 + 24);
        v3 += 16;
      }

      while (v4 < v9);
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_14;
      }

      v10 = 16 * v9;
    }

    else
    {
      v10 = 0;
    }

    memset_s(v2, v10, 0, v10);
LABEL_14:
    free(v2);
    goto LABEL_15;
  }

  return 0;
}

uint64_t RandomAccessDecryptionStreamGetBlock(uint64_t a1, unsigned int a2, unint64_t a3, uint8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 16) + 400) > a3)
  {
    v9 = *(a1 + 32) + 16 * a2;
    if ((aeaContainerLoadSegment(*(a1 + 16), *a1, a3, a4, *(v9 + 8), *v9, a7, a8) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "RandomAccessDecryptionStreamGetBlock", 71, 32, 0, "Loading segment", v10, v11, v8);
  }

  return 0xFFFFFFFFLL;
}

void RandomAccessDecryptionStreamAbort(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAByteStreamCancel(*a1);
  }
}

uint64_t aaAssetDecodeStreamDone(uint64_t (**a1)(uint64_t result), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] == closeProc)
  {
    return *(*a1 + 8) == 4;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamDone", 410, 131, 0, "invalid stream", a7, a8, v8);
  return 0xFFFFFFFFLL;
}

uint64_t closeProc(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    free(*(result + 80));
    memset_s((v1 + 64), 0x18uLL, 0, 0x18uLL);
    AAHeaderDestroy(*(v1 + 88));
    free(*(v1 + 112));
    memset_s((v1 + 104), 0x10uLL, 0, 0x10uLL);
    v3 = *(v1 + 128);
    if (v3)
    {
      if (*v3)
      {
        v3[1]();
      }

      free(v3);
    }

    v4 = *(v1 + 136);
    if (v4)
    {
      if (*v4)
      {
        v4[1]();
      }

      free(v4);
    }

    memset_s(v1, 0x90uLL, 0, 0x90uLL);
    free(v1);
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aaAssetDecodeStreamSetParameterPtr(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] == closeProc)
  {
    v10 = *a1;
    if (a2 == 103)
    {
      result = 0;
      *(v10 + 24) = a3;
    }

    else if (a2 == 101)
    {
      result = 0;
      *(v10 + 16) = a3;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamSetParameterPtr", 420, 131, 0, "invalid stream", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *aaAssetDecodeStreamOpen(uint64_t a1)
{
  v2 = malloc(0x90uLL);
  v3 = v2;
  if (!v2)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 443;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpen", v11, 131, v9, v10, v5, v6, v13);
    closeProc(v3);
    return 0;
  }

  memset_s(v2, 0x90uLL, 0, 0x90uLL);
  *v3 = a1;
  v4 = AAHeaderCreate();
  v3[11] = v4;
  if (!v4)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 446;
    goto LABEL_10;
  }

  if ((aaHeaderBlobArrayInitWithHeader((v3 + 13), v4) & 0x80000000) != 0)
  {
    v10 = "blob array init";
    v11 = 447;
    v9 = 0;
    goto LABEL_10;
  }

  v3[6] = -1;
  v7 = malloc(0x38uLL);
  if (!v7)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 452;
    goto LABEL_10;
  }

  v8 = v7;
  memset_s(v7, 0x38uLL, 0, 0x38uLL);
  *v8 = v3;
  v8[1] = closeProc;
  v8[6] = closeWithStateProc;
  v8[3] = writeProc;
  v8[2] = cancelProc;
  return v8;
}

uint64_t closeWithStateProc(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (atomic_load((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 96);
  v46[0] = *(a1 + 32);
  v46[1] = v8;
  v47 = *(a1 + 40);
  v9 = *(a1 + 120);
  v48 = *(a1 + 56);
  v49 = v9;
  EncodedSize = AAHeaderGetEncodedSize(*(a1 + 88));
  v14 = (a1 + 64);
  v13 = *(a1 + 64);
  v16 = (a1 + 104);
  v15 = *(a1 + 104);
  v50 = EncodedSize;
  v51 = v15;
  v52 = v13;
  v17 = *(a1 + 136);
  v53 = *(a1 + 128) != 0;
  v54 = v17 != 0;
  if (a2[3])
  {
    v18 = 0;
    v19 = v46;
    v20 = 58;
    while (1)
    {
      v21 = (a2[3])(*a2, v19, v20);
      if (v21 < 1)
      {
        break;
      }

      v19 = (v19 + v21);
      v18 += v21;
      v20 -= v21;
      if (!v20)
      {
        if (v18 < 0)
        {
          goto LABEL_36;
        }

        goto LABEL_12;
      }
    }

    if (v21 < 0)
    {
      goto LABEL_36;
    }

LABEL_12:
    EncodedData = AAHeaderGetEncodedData(*(a1 + 88));
    if (a2[3])
    {
      v23 = v50;
      if (!v50)
      {
        goto LABEL_72;
      }

      v24 = EncodedData;
      v25 = 0;
      while (1)
      {
        v26 = (a2[3])(*a2, v24, v23);
        if (v26 < 1)
        {
          break;
        }

        v24 += v26;
        v25 += v26;
        v23 -= v26;
        if (!v23)
        {
          goto LABEL_19;
        }
      }

      v25 = v26;
LABEL_19:
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_72:
        if (*v16)
        {
          v27 = 0;
          while (a2[3])
          {
            v28 = 0;
            v29 = *(a1 + 112) + 24 * v27 + 8;
            v30 = 8;
            while (1)
            {
              v31 = (a2[3])(*a2, v29, v30);
              if (v31 < 1)
              {
                break;
              }

              v29 += v31;
              v28 += v31;
              v30 -= v31;
              if (!v30)
              {
                goto LABEL_28;
              }
            }

            v28 = v31;
LABEL_28:
            if (v28 < 0)
            {
              break;
            }

            if (++v27 >= *v16)
            {
              goto LABEL_30;
            }
          }

          v36 = 376;
          goto LABEL_37;
        }

LABEL_30:
        if (!a2[3])
        {
          goto LABEL_52;
        }

        v32 = *v14;
        if (!*v14)
        {
          goto LABEL_51;
        }

        v33 = 0;
        v34 = *(a1 + 80);
        while (1)
        {
          v35 = (a2[3])(*a2, v34, v32);
          if (v35 < 1)
          {
            break;
          }

          v34 += v35;
          v33 += v35;
          v32 -= v35;
          if (!v32)
          {
            goto LABEL_50;
          }
        }

        v33 = v35;
LABEL_50:
        if (v33 < 0)
        {
LABEL_52:
          v40 = 0;
        }

        else
        {
LABEL_51:
          v40 = 1;
        }

        if (v54)
        {
          v41 = *(a1 + 136);
          if (v41)
          {
            if (*v41)
            {
              v42 = (v41[6])(*v41, a2, 0);
              free(v41);
              if (v42 < 0)
              {
                v40 = 0;
              }
            }

            else
            {
              free(*(a1 + 136));
            }
          }
        }

        *(a1 + 136) = 0;
        if (v53)
        {
          v43 = *(a1 + 128);
          if (v43)
          {
            if (*v43)
            {
              v44 = (v43[6])(*v43, a2, 0);
              free(v43);
              if (v44 < 0)
              {
                *(a1 + 128) = 0;
LABEL_69:
                v36 = 385;
                goto LABEL_37;
              }
            }

            else
            {
              free(*(a1 + 128));
            }
          }
        }

        *(a1 + 128) = 0;
        if (v40)
        {
          v5 = 0;
          if (a3)
          {
            *a3 = *(a1 + 56);
          }

          goto LABEL_38;
        }

        goto LABEL_69;
      }
    }
  }

LABEL_36:
  v36 = 373;
LABEL_37:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "closeWithStateProc", v36, 131, 0, "write state", v11, v12, v45);
  v5 = 0xFFFFFFFFLL;
LABEL_38:
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  AAHeaderDestroy(*(a1 + 88));
  free(*(a1 + 112));
  memset_s((a1 + 104), 0x10uLL, 0, 0x10uLL);
  v37 = *(a1 + 128);
  if (v37)
  {
    if (*v37)
    {
      v37[1]();
    }

    free(v37);
  }

  v38 = *(a1 + 136);
  if (v38)
  {
    if (*v38)
    {
      v38[1]();
    }

    free(v38);
  }

  memset_s(a1, 0x90uLL, 0, 0x90uLL);
  free(a1);
  return v5;
}

uint64_t writeProc(void **a1, _WORD *__src, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load(a1 + 2))
  {
    return -1;
  }

  v13 = *(a1 + 8);
  if (v13 == 4)
  {
    v9 = 0;
LABEL_6:
    if (a3 && !v9)
    {
      v14 = "no more writes possible";
      v15 = 325;
      goto LABEL_204;
    }

LABEL_182:
    if (v9 < 1)
    {
LABEL_187:
      if (v9 < 0)
      {
        goto LABEL_206;
      }
    }

    else
    {
      v97 = a1[6];
      if (v97 + 1 >= 2)
      {
        v98 = a1[3];
        if (v98)
        {
          if (((v98)(a1[2], __src, (a1[7] * 100.0) / v97) & 0x80000000) != 0)
          {
            v14 = "user cancelled in progress callback";
            v15 = 335;
            goto LABEL_204;
          }
        }
      }
    }

    return v9;
  }

  v16 = __src;
  v9 = 0;
  while (1)
  {
    v17 = a1[8];
    if (!(v17 | a3))
    {
      if (a1[7] >= a1[6])
      {
        *(a1 + 8) = 4;
      }

      goto LABEL_182;
    }

    if (v13 <= 1)
    {
      if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_190;
        }

        v18 = *(a1 + 26);
        v19 = *(a1 + 24);
        if (v19 < v18)
        {
          v20 = &a1[14][3 * v19 + 1];
          while (1)
          {
            v21 = *v20;
            v20 += 3;
            if (v21)
            {
              break;
            }

            *(a1 + 24) = ++v19;
            if (v18 == v19)
            {
              goto LABEL_145;
            }
          }

          v19 = v19;
        }

        if (v19 == v18)
        {
          goto LABEL_145;
        }

        v55 = &a1[14][3 * v19];
        if (a3 >= *(v55 + 1))
        {
          v40 = *(v55 + 1);
        }

        else
        {
          v40 = a3;
        }

        v56 = (*a1)[5];
        if (!v56 || (v56(**a1, *v55, v16, v40) & 0x80000000) != 0)
        {
          v14 = "blob processing";
          v15 = 202;
          goto LABEL_204;
        }

        *(v55 + 1) -= v40;
        goto LABEL_107;
      }

      if (a1[7] >= a1[6])
      {
        *(a1 + 8) = 4;
        goto LABEL_6;
      }

      if (v17 <= 5)
      {
        v38 = 6;
        goto LABEL_47;
      }

      __src = a1[10];
      v107 = *__src;
      v108 = __src[2];
      if (v107 != 825246017 && v107 != 826360153)
      {
        v14 = "invalid header magic";
        v15 = 120;
        goto LABEL_204;
      }

      if (v108 <= 5uLL)
      {
        v14 = "invalid header size";
        v15 = 122;
        goto LABEL_204;
      }

      v39 = v108 - v17;
      if (v108 <= v17)
      {
        if (v108 != v17)
        {
          v14 = "invalid state";
          v15 = 127;
          goto LABEL_204;
        }

        if ((aaHeaderInitWithEncodedData(a1[11], __src, v17) & 0x80000000) != 0 || (aaHeaderBlobArrayInitWithHeader((a1 + 13), a1[11]) & 0x80000000) != 0)
        {
          v14 = "invalid header";
          v15 = 130;
          goto LABEL_204;
        }

        v105 = 0;
        value = 0;
        size = 0;
        v104 = 0;
        offset = 0;
        v57 = a1[11];
        v58.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(v57, v58);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v57, KeyIndex, &value), FieldUInt <= 1) ? (v61 = 1) : (v61 = FieldUInt), v61 <= 0))
        {
          v14 = "missing TYP field";
          v15 = 137;
          goto LABEL_204;
        }

        v62 = a1[11];
        v63.ikey = 5263193;
        v64 = AAHeaderGetKeyIndex(v62, v63);
        if ((v64 & 0x80000000) != 0 || ((v65 = AAHeaderGetFieldUInt(v62, v64, &v105), v65 <= 1) ? (v66 = 1) : (v66 = v65), v66 <= 0))
        {
          v105 = 0;
        }

        v67 = a1[11];
        v68.ikey = 5521732;
        v69 = AAHeaderGetKeyIndex(v67, v68);
        if ((v69 & 0x80000000) != 0)
        {
          v72 = 0;
        }

        else
        {
          FieldBlob = AAHeaderGetFieldBlob(v67, v69, &size, &offset);
          if (FieldBlob <= 1)
          {
            v71 = 1;
          }

          else
          {
            v71 = FieldBlob;
          }

          v72 = v71 > 0;
        }

        v80 = a1[11];
        v81.ikey = 5915721;
        v82 = AAHeaderGetKeyIndex(v80, v81);
        if ((v82 & 0x80000000) == 0)
        {
          v83 = AAHeaderGetFieldUInt(v80, v82, &v104);
          v84 = v83 <= 1 ? 1 : v83;
          if (v84 >= 1)
          {
            a1[5] = (a1[5] + v104);
          }
        }

        a1[8] = 0;
        *(a1 + 24) = 0;
        if (v105)
        {
          v85 = v105 == 80;
        }

        else
        {
          v85 = 1;
        }

        v86 = !v85;
        if (((v72 && value == 77) & v86) == 1)
        {
          v87 = aaHeaderBlobArrayPayloadSize(a1 + 26);
          if (v87 != size)
          {
            v14 = "invalid AssetArchive, extra blobs";
            v15 = 151;
            goto LABEL_204;
          }

          if (v87 <= 3)
          {
            v14 = "invalid AssetArchive DAT blob size";
            v15 = 152;
            goto LABEL_204;
          }

          v88.ikey = 5521732;
          v89 = AAHeaderGetKeyIndex(a1[11], v88);
          if ((v89 & 0x80000000) != 0 || AAHeaderRemoveField(a1[11], v89) < 0 || (aaHeaderBlobArrayInitWithHeader((a1 + 13), a1[11]) & 0x80000000) != 0)
          {
            v14 = "removing DAT";
            v15 = 160;
            goto LABEL_204;
          }

          v90.ikey = 5328729;
          if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v90, v105) < 0)
          {
            v14 = "append YOQ";
            v15 = 162;
            goto LABEL_204;
          }

          v91.ikey = 5263193;
          v92 = AAHeaderGetKeyIndex(a1[11], v91);
          if ((v92 & 0x80000000) != 0)
          {
            v14 = "invalid index";
            v15 = 164;
            goto LABEL_204;
          }

          v93.ikey = 5263193;
          if (AAHeaderSetFieldUInt(a1[11], v92, v93, 0x5BuLL) < 0)
          {
            v14 = "set YOP";
            v15 = 165;
            goto LABEL_204;
          }

          v94 = (*a1)[4];
          if (!v94 || (v94(**a1, a1[11]) & 0x80000000) != 0)
          {
            v14 = "header processing";
            v15 = 167;
            goto LABEL_204;
          }

          a1[15] = size;
          v95 = 2;
        }

        else
        {
          v96 = (*a1)[4];
          if (!v96 || (v96(**a1, a1[11]) & 0x80000000) != 0)
          {
            v14 = "header processing";
            v15 = 175;
            goto LABEL_204;
          }

          v95 = 1;
        }

        *(a1 + 8) = v95;
      }

      else if (v108 != v17)
      {
        goto LABEL_48;
      }

LABEL_108:
      v13 = *(a1 + 8);
      goto LABEL_146;
    }

    if (v13 != 2)
    {
      break;
    }

    if (v17 <= 3)
    {
      v38 = 4;
LABEL_47:
      v39 = v38 - v17;
LABEL_48:
      if (!a3)
      {
        goto LABEL_187;
      }

      if (v39 >= a3)
      {
        v40 = a3;
      }

      else
      {
        v40 = v39;
      }

      v41 = v17 + v40;
      if (__CFADD__(v17, v40) || (v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      v42 = a1[9];
      if (v42 < v41)
      {
        do
        {
          while (!v42)
          {
            v42 = 0x4000;
            v44 = 0x4000;
            if (v41 <= 0x4000)
            {
              goto LABEL_91;
            }
          }

          v43 = v42 >> 1;
          if ((v42 & (v42 >> 1)) != 0)
          {
            v43 = v42 & (v42 >> 1);
          }

          v42 += v43;
        }

        while (v42 < v41);
        v44 = v42;
        if (v42 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_202;
        }

LABEL_91:
        v52 = a1[10];
        v53 = realloc(v52, v44);
        if (v53)
        {
          a1[9] = v44;
          a1[10] = v53;
          goto LABEL_93;
        }

        free(v52);
LABEL_202:
        a1[8] = 0;
        a1[9] = 0;
        a1[10] = 0;
LABEL_203:
        v14 = "malloc";
        v15 = 314;
        goto LABEL_204;
      }

LABEL_93:
      v54 = a1[10];
      if (v16)
      {
        memcpy(a1[8] + v54, v16, v40);
      }

      else if (v54)
      {
        memset_s(a1[8] + v54, v40, 0, v40);
      }

      a1[8] = (a1[8] + v40);
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_107:
      a3 -= v40;
      v16 = (v16 + v40);
      v9 += v40;
      a1[7] = (a1[7] + v40);
      goto LABEL_108;
    }

    v45 = *a1[10];
    LODWORD(value) = v45;
    if (v45 != 825246017 && v45 != 826360153)
    {
      v47 = value == 25200 && BYTE2(value) == 122;
      if (!v47 || ((v48 = HIBYTE(v45), HIBYTE(v45) - 45 <= 0x39u) ? (v49 = ((1 << (HIBYTE(v45) - 45)) & 0x320000000000081) == 0) : (v49 = 1), v49 && v48 != 120 && v48 != 122))
      {
        v14 = "invalid DAT blob";
        v15 = 227;
        goto LABEL_204;
      }
    }

    v50 = aaAssetDecodeStreamOpen(*a1);
    a1[17] = v50;
    if (!v50)
    {
      v14 = "dat decoder stream";
      v15 = 231;
      goto LABEL_204;
    }

    if (v45 == 825246017 || v45 == 826360153)
    {
      if (a1[16])
      {
        v50 = a1[16];
      }
    }

    else
    {
      v50 = aaAssetDecompressionStreamOpen(v50);
      a1[16] = v50;
      if (!v50)
      {
        v14 = "dat decompression stream";
        v15 = 237;
        goto LABEL_204;
      }
    }

    v73 = v50[3];
    if (!v73 || v73(*v50, &value, 4) != 4)
    {
      v14 = "sending dat magic";
      v15 = 241;
      goto LABEL_204;
    }

    a1[15] = (a1[15] - 4);
    a1[8] = 0;
    v13 = 3;
    *(a1 + 8) = 3;
LABEL_146:
    if (v13 == 4)
    {
      goto LABEL_6;
    }
  }

  if (v13 != 3)
  {
LABEL_190:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 304, 131, 0, "invalid state %d", a7, a8, v13);
    goto LABEL_205;
  }

  v22 = a1[15];
  if (a3 >= v22)
  {
    v23 = a1[15];
  }

  else
  {
    v23 = a3;
  }

  if (v23)
  {
    v24 = a1[16];
    if (!v24)
    {
      v24 = a1[17];
    }

    v25 = v24[3];
    if (!v25 || (v26 = v25(*v24, v16), v26 < 0))
    {
      v14 = "writing DAT bytes";
      v15 = 255;
      goto LABEL_204;
    }

    a3 -= v26;
    v16 = (v16 + v26);
    v9 += v26;
    a1[7] = (a1[7] + v26);
    v22 = (a1[15] - v26);
    a1[15] = v22;
  }

  if (v22)
  {
    goto LABEL_108;
  }

  value = 0;
  v27 = a1[11];
  v28.ikey = 5328729;
  v29 = AAHeaderGetKeyIndex(v27, v28);
  if ((v29 & 0x80000000) == 0)
  {
    v30 = AAHeaderGetFieldUInt(v27, v29, &value);
    v31 = v30 <= 1 ? 1 : v30;
    if (v31 >= 1 && value == 77)
    {
      v32 = a1[17];
      if (v32)
      {
        v33 = *(*v32 + 40);
        v34 = a1[7];
        a1[6] = (v34 + v33);
        if (__CFADD__(v34, v33))
        {
          v14 = "invalid sizes in manifest";
          v15 = 274;
          goto LABEL_204;
        }
      }
    }
  }

  v35 = a1[16];
  if (v35)
  {
    if (*v35)
    {
      v36 = v35[1]();
      free(v35);
      v37 = v36 >> 31;
      goto LABEL_135;
    }

    free(a1[16]);
  }

  v37 = 0;
LABEL_135:
  a1[16] = 0;
  v74 = a1[17];
  if (!v74)
  {
    goto LABEL_140;
  }

  if (!*v74)
  {
    free(a1[17]);
    goto LABEL_140;
  }

  v75 = v74[1]();
  free(v74);
  if ((v75 & 0x80000000) == 0)
  {
LABEL_140:
    a1[17] = 0;
    if (v37)
    {
      goto LABEL_215;
    }

    v76.ikey = 5263193;
    v77 = AAHeaderGetKeyIndex(a1[11], v76);
    if ((v77 & 0x80000000) != 0)
    {
      v14 = "invalid index";
      v15 = 288;
      goto LABEL_204;
    }

    v78.ikey = 5263193;
    if (AAHeaderSetFieldUInt(a1[11], v77, v78, 0x5DuLL) < 0)
    {
      v14 = "set YOP";
      v15 = 289;
      goto LABEL_204;
    }

    v79 = (*a1)[4];
    if (!v79 || (v79(**a1, a1[11]) & 0x80000000) != 0)
    {
      v14 = "header processing";
      v15 = 291;
      goto LABEL_204;
    }

LABEL_145:
    AAHeaderClear(a1[11]);
    v13 = 0;
    *(a1 + 26) = 0;
    *(a1 + 8) = 0;
    goto LABEL_146;
  }

  a1[17] = 0;
LABEL_215:
  v14 = "dat archive invalid";
  v15 = 282;
LABEL_204:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", v15, 131, 0, v14, a7, a8, v101);
LABEL_205:
  v9 = -1;
LABEL_206:
  v99 = 0;
  atomic_compare_exchange_strong(a1 + 2, &v99, 1u);
  if (!v99)
  {
    v100 = (*a1)[2];
    if (v100)
    {
      v100(**a1);
    }
  }

  return v9;
}

atomic_uint *cancelProc(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 2, &v1, 1u);
  if (!v1)
  {
    v2 = *(*result + 16);
    if (v2)
    {
      return v2(**result);
    }
  }

  return result;
}

void (**aaAssetDecodeStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  __s = 0;
  v52 = 0;
  v53 = 0;
  v5 = aaAssetDecodeStreamOpen(a1);
  v8 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v9 = *v5;
  memset(v50, 0, 58);
  if (!*(a2 + 2))
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = v50;
  v12 = 58;
  do
  {
    v13 = (*(a2 + 2))(*a2, v11, v12);
    if (v13 < 0)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      break;
    }

    v11 = (v11 + v13);
    v10 += v13;
    v12 -= v13;
  }

  while (v12);
  if (v10 != 58)
  {
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", 487, 131, 0, "truncated state", v6, v7, v50[0]);
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v14 = DWORD1(v50[0]);
  *(v9 + 8) = v50[0];
  *(v9 + 24) = v14;
  *(v9 + 40) = *(v50 + 8);
  v15 = *&v50[2];
  *(v9 + 7) = *(&v50[1] + 1);
  *(v9 + 15) = v15;
  v16 = DWORD2(v50[2]);
  if ((DWORD2(v50[2]) - 0x10000) < 0xFFFF0006)
  {
    v17 = 0;
LABEL_92:
    v48 = "invalid header state";
    v49 = 502;
    goto LABEL_93;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    if (v22 == v21)
    {
      v23 = v21 + 0x40000;
      if ((v21 + 0x40000) < 0)
      {
        goto LABEL_91;
      }

      if (v21 <= 0xFFFFFFFFFFFBFFFFLL)
      {
        do
        {
          while (!v21)
          {
            v21 = 0x4000;
            v25 = 0x4000;
            if (v23 <= 0x4000)
            {
              goto LABEL_35;
            }
          }

          v24 = v21 >> 1;
          if ((v21 & (v21 >> 1)) != 0)
          {
            v24 = v21 & (v21 >> 1);
          }

          v21 += v24;
        }

        while (v21 < v23);
        v25 = v21;
        if (v21 >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
LABEL_35:
          v26 = realloc(v20, v25);
          if (v26)
          {
            v52 = v25;
            v53 = v26;
            v20 = v26;
            goto LABEL_37;
          }

          free(v20);
        }

        v17 = 0;
        __s = 0;
        v52 = 0;
        v53 = 0;
        goto LABEL_92;
      }
    }

    v25 = v21;
LABEL_37:
    if (v25 - v22 >= v16)
    {
      v27 = v16;
    }

    else
    {
      v27 = v25 - v22;
    }

    v28 = AAByteStreamRead(a2, v20 + v22, v27);
    if (v28 < 0)
    {
      goto LABEL_91;
    }

    v22 = __s;
    if (!v28)
    {
      break;
    }

    v22 = __s + v28;
    if (__CFADD__(__s, v28) || (v21 = v52, v22 > v52))
    {
LABEL_91:
      v17 = v53;
      goto LABEL_92;
    }

    __s += v28;
    v16 -= v28;
  }

  while (v16);
  v17 = v53;
  if ((aaHeaderInitWithEncodedData(*(v9 + 11), v53, v22) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  if ((aaHeaderBlobArrayInitWithHeader(v9 + 104, *(v9 + 11)) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v29 = *(v9 + 26);
  if (v29 != HIDWORD(v50[2]))
  {
    goto LABEL_92;
  }

  if (v29)
  {
    v30 = 0;
    do
    {
      if (!*(a2 + 2))
      {
LABEL_95:
        v48 = "invalid blob state";
        v49 = 505;
        goto LABEL_93;
      }

      v31 = *(v9 + 14) + 24 * v30 + 8;
      v32 = 8;
      do
      {
        v33 = (*(a2 + 2))(*a2, v31, v32);
        if (v33 < 0)
        {
          goto LABEL_95;
        }

        v31 += v33;
        v32 -= v33;
        if (v33)
        {
          v34 = v32 == 0;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
      ++v30;
    }

    while (v30 < *(v9 + 26));
  }

  v35 = *&v50[3];
  if (!*&v50[3])
  {
LABEL_84:
    if (BYTE9(v50[3]))
    {
      v46 = aaAssetDecodeStreamOpenWithState(*v9, a2, 0);
      *(v9 + 17) = v46;
      if (!v46)
      {
        goto LABEL_101;
      }
    }

    if (BYTE8(v50[3]))
    {
      v47 = aaAssetDecompressionStreamOpenWithState(*(v9 + 17), a2, 0);
      *(v9 + 16) = v47;
      if (!v47)
      {
        goto LABEL_101;
      }
    }

    if (a3)
    {
      *a3 = *(v9 + 7);
    }

    v18 = 1;
    goto LABEL_13;
  }

  v37 = *(v9 + 8);
  v36 = *(v9 + 9);
  while (2)
  {
    if (v37 != v36)
    {
LABEL_72:
      v40 = v36;
LABEL_76:
      if (v40 - v37 >= v35)
      {
        v43 = v35;
      }

      else
      {
        v43 = v40 - v37;
      }

      v44 = AAByteStreamRead(a2, (*(v9 + 10) + v37), v43);
      if (v44 < 0)
      {
        goto LABEL_101;
      }

      if (!v44)
      {
        goto LABEL_84;
      }

      v45 = *(v9 + 8);
      v37 = v45 + v44;
      if (__CFADD__(v45, v44))
      {
        goto LABEL_101;
      }

      v36 = *(v9 + 9);
      if (v37 > v36)
      {
        goto LABEL_101;
      }

      *(v9 + 8) = v37;
      v35 -= v44;
      if (!v35)
      {
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  v38 = v36 + 0x40000;
  if ((v36 + 0x40000) < 0)
  {
    goto LABEL_101;
  }

  if (v36 > 0xFFFFFFFFFFFBFFFFLL)
  {
    v37 = v36;
    goto LABEL_72;
  }

  do
  {
    while (!v36)
    {
      v36 = 0x4000;
      v40 = 0x4000;
      if (v38 <= 0x4000)
      {
        goto LABEL_74;
      }
    }

    v39 = v36 >> 1;
    if ((v36 & (v36 >> 1)) != 0)
    {
      v39 = v36 & (v36 >> 1);
    }

    v36 += v39;
  }

  while (v36 < v38);
  v40 = v36;
  if (v36 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_100;
  }

LABEL_74:
  v41 = *(v9 + 10);
  v42 = realloc(v41, v40);
  if (v42)
  {
    *(v9 + 9) = v40;
    *(v9 + 10) = v42;
    v37 = *(v9 + 8);
    goto LABEL_76;
  }

  free(v41);
LABEL_100:
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
LABEL_101:
  v48 = "read state";
  v49 = 512;
LABEL_93:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", v49, 131, 0, v48, v6, v7, v50[0]);
LABEL_12:
  v18 = 0;
LABEL_13:
  free(v17);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  if (v18)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if (v8 && (v18 & 1) == 0)
  {
    if (*v8)
    {
      v8[1]();
    }

    free(v8);
    return 0;
  }

  return result;
}

char *AAAssetBuilderCreate(uint64_t a1)
{
  v2 = malloc(0xA0uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0xA0uLL, 0, 0xA0uLL);
    *v3 = a1;
    *(v3 + 104) = xmmword_296AD1770;
    *(v3 + 120) = xmmword_296AD1780;
    *(v3 + 34) = 774;
    *(v3 + 9) = xmmword_296AD1790;
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderCreate", 13, 26, *v4, "malloc", v5, v6, v8);
  }

  return v3;
}

void AAAssetBuilderDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AAAssetBuilderAddVariantArchive(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8 >= 0xA)
  {
    v9 = "too many inputs/outputs";
    v10 = 44;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderAddVariantArchive", v10, 26, 0, v9, a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  if ((a2 - 1) >= 2)
  {
    v9 = "invalid variant";
    v10 = 53;
    goto LABEL_7;
  }

  v13 = a1 + 24;
  if (a2 == 2)
  {
    v14 = (v13 + 8 * v8);
  }

  else
  {
    v16 = *(a1 + 8);
    v14 = (v13 + 8 * v16);
    memmove(v14 + 1, v14, 8 * (v8 - v16));
    v8 = *(a1 + 16);
    ++*(a1 + 8);
  }

  result = 0;
  *(a1 + 16) = v8 + 1;
  *v14 = a3;
  return result;
}

uint64_t AAAssetBuilderSetParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v9 = 0;
        *(a1 + 128) = a3;
        return v9;
      case 5:
        v9 = 0;
        *(a1 + 136) = a3;
        return v9;
      case 6:
        v9 = 0;
        *(a1 + 144) = a3;
        return v9;
    }

LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderSetParameter", 104, 26, 0, "unsupported parameter", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1)
  {
    v9 = 0;
    *(a1 + 104) = a3;
    return v9;
  }

  if (a2 == 2)
  {
    v9 = 0;
    *(a1 + 112) = a3;
    return v9;
  }

  if (a2 != 3)
  {
    goto LABEL_12;
  }

  v9 = 0;
  *(a1 + 120) = a3;
  return v9;
}

uint64_t AAAssetBuilderGetParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      return *(a1 + 128);
    }

    if (a2 != 5)
    {
      if (a2 == 6)
      {
        return *(a1 + 144);
      }

      goto LABEL_12;
    }

    return *(a1 + 136);
  }

  else
  {
    if (a2 == 1)
    {
      return *(a1 + 104);
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1 + 120);
      }

LABEL_12:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderGetParameter", 129, 26, 0, "unsupported parameter key", a7, a8, v8);
      return 0;
    }

    return *(a1 + 112);
  }
}

uint64_t AEADecryptAndExtractChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11)
{
  v30[3] = a6;
  v31 = 0;
  v30[0] = a2;
  v30[1] = a5;
  v30[2] = a7;
  v32 = a10 >> 62;
  ChunkAsyncStreamOpen = AEADecryptAndExtractChunkAsyncStreamOpen(a3, a4, v30, asyncContext, asyncSelect, asyncProgress, a8, a9, a10, a11);
  v15 = ChunkAsyncStreamOpen;
  if (!ChunkAsyncStreamOpen)
  {
    v19 = "AEADecryptAndExtractAsyncStreamOpen";
    v20 = 96;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", v20, 117, 0, v19, v13, v14, v27);
    v21 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(ChunkAsyncStreamOpen, a1, a10, a11) & 0x8000000000000000) == 0)
    {
      v21 = 1;
      goto LABEL_19;
    }

    v19 = "AAAsyncByteStreamProcessAllRanges";
    v20 = 124;
    goto LABEL_18;
  }

  while (1)
  {
    v28 = 0;
    v29 = 0;
    Range = AAAsyncByteStreamGetRange(v15, &v29, &v28);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v29)
      {
        v21 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        v22 = "AAByteStreamPReadAsync";
        v23 = 113;
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  v22 = "AAAsyncByteStreamGetRange";
  v23 = 108;
LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", v23, 117, 0, v22, v17, v18, v27);
  v21 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    v19 = "AAByteStreamPReadAsync barrier";
    v20 = 118;
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v15) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 128, 117, 0, "AAAsyncByteStreamClose", v24, v25, v27);
    v21 = 0;
  }

  if (v21)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t asyncContext(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 32))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 36))
    {
      v8 = MEMORY[0x29EDCA610];
      v9 = *MEMORY[0x29EDCA610];
      FieldUInt = AEAContextGetFieldUInt(context, 3u);
      if (FieldUInt <= 1284)
      {
        switch(FieldUInt)
        {
          case 0:
            v15 = "none";
            goto LABEL_25;
          case 256:
            v15 = "lz4";
            goto LABEL_25;
          case 774:
            v15 = "lzma";
LABEL_25:
            v16 = AEAContextGetFieldUInt(context, 4u);
            fprintf(v9, "  compression: %s %zu MB\n", v15, v16 >> 20);
            v17 = *v8;
            v18 = AEAContextGetFieldUInt(context, 2u);
            if (v18 > 2)
            {
              v19 = "???";
            }

            else
            {
              v19 = off_29EE512E8[v18 & 3];
            }

            fprintf(v17, "  checksum: %s\n", v19);
            v20 = *v8;
            v21 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v20, "  container size: %llu B\n", v21);
            v22 = *v8;
            v23 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v22, "  raw size: %llu B\n", v23);
            return 0;
        }
      }

      else
      {
        if (FieldUInt <= 2048)
        {
          if (FieldUInt == 1285)
          {
            v15 = "zlib";
            goto LABEL_25;
          }

          if (FieldUInt != 1794)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (FieldUInt == 2049)
        {
LABEL_20:
          v15 = "lzfse";
          goto LABEL_25;
        }

        if (FieldUInt == 2304)
        {
          v15 = "lzvn";
          goto LABEL_25;
        }
      }

LABEL_22:
      v15 = "???";
      goto LABEL_25;
    }

    return 0;
  }

  v11 = *(v4 + 1112);
  if (v11 < 0x101)
  {
    memcpy(context + 1116, (v4 + 1116), *(v4 + 1112));
    *(context + 278) = v11;
    result = memset_s(context + v11 + 1116, 256 - v11, 0, 256 - v11);
    v12 = *(*v3 + 72);
    if (v12 < 0x101)
    {
      memcpy(context + 76, (*v3 + 76), *(*v3 + 72));
      *(context + 18) = v12;
      result = memset_s(context + v12 + 76, 256 - v12, 0, 256 - v12);
      v13 = *(*v3 + 2152);
      if (v13 < 0x101)
      {
        memcpy(context + 2156, (*v3 + 2156), *(*v3 + 2152));
        *(context + 538) = v13;
        result = memset_s(context + v13 + 2156, 256 - v13, 0, 256 - v13);
        v14 = *(*v3 + 332);
        if (v14 < 0x101)
        {
          memcpy(context + 21, (*v3 + 336), *(*v3 + 332));
          *(context + 83) = v14;
          memset_s(context + v14 + 336, 256 - v14, 0, 256 - v14);
          v3[8] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t asyncSelect(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t asyncProgress(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *AAAssetExtractorCreate(const char *a1, uint64_t *a2, uint64_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  memset(&v57, 0, sizeof(v57));
  bzero(__s, 0x400uLL);
  bzero(path, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(a1, __s) || stat(__s, &v57) || (v57.st_mode & 0xF000) != 0x4000 || (concatPath(path, 0x400uLL, __s, ".AssetExtractCheckpoint") & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 216, 15, 0, "invalid work dir: %s", v6, v7, a1);
    Common = 0;
  }

  else
  {
    if (!stat(path, &v57))
    {
      v62 = 0;
      v63 = 0;
      v61 = 0;
      v8 = AAFileStreamOpenWithPath(path, 0, 0);
      if (v8)
      {
        Common = aaAssetExtractorCreateCommon(__s, path, a3);
        if (Common)
        {
          v60 = 0;
          v58 = 0;
          v59 = 0;
          if (*(v8 + 2))
          {
            v12 = &v58;
            v13 = 17;
            while (1)
            {
              v14 = (*(v8 + 2))(*v8, v12, v13);
              if (v14 < 0)
              {
                break;
              }

              v12 = (v12 + v14);
              v13 -= v14;
              if (v14)
              {
                v15 = v13 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (v15)
              {
                *Common = v58;
                *(Common + 1038) = v59;
                Common[520] = BYTE4(v59);
                if (!BYTE5(v59))
                {
                  goto LABEL_33;
                }

                StreamOpenWithState = aaAssetExtractStreamOpenWithState(__s, v8, 0);
                Common[521] = StreamOpenWithState;
                if (!StreamOpenWithState)
                {
                  goto LABEL_33;
                }

                if (BYTE6(v59))
                {
                  v20 = aaAssetDecodeStreamOpenWithState(StreamOpenWithState, v8, &v63);
                  Common[522] = v20;
                  if (!v20)
                  {
                    goto LABEL_33;
                  }
                }

                if (HIBYTE(v59) && (v21 = aaAssetDecompressionStreamOpenWithState(Common[522], v8, &v62), (Common[523] = v21) == 0) || v60 && (v22 = aaAssetDecryptionStreamOpenWithState(Common[522], v8, &v61), (Common[524] = v22) == 0))
                {
LABEL_33:
                  v35 = "invalid state";
                  v36 = 121;
                  goto LABEL_34;
                }

                if (a2)
                {
                  if (v60)
                  {
                    v23 = &v61;
                  }

                  else if (HIBYTE(v59))
                  {
                    v23 = &v62;
                  }

                  else
                  {
                    v23 = Common + 520;
                    if (BYTE6(v59))
                    {
                      v23 = &v63;
                    }
                  }

                  *a2 = *v23;
                }

                v51 = Common[522];
                if (!v51 || (aaAssetDecodeStreamSetParameterPtr(v51, 101, Common, v17, v18, v19, v9, v10) & 0x80000000) == 0 && (aaAssetDecodeStreamSetParameterPtr(Common[522], 103, aaAssetExtractorProgress, v52, v53, v54, v9, v10) & 0x80000000) == 0)
                {
                  AAByteStreamClose(v8);
                  goto LABEL_29;
                }

                v35 = "mapping decode stream progress";
                v36 = 137;
                goto LABEL_34;
              }
            }
          }

          v35 = "invalid state";
          v36 = 112;
        }

        else
        {
          v35 = "common constructor";
          v36 = 109;
        }

LABEL_34:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", v36, 15, 0, v35, v9, v10, v55);
      }

      else
      {
        v32 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 102, 15, *v32, "open: %s", v33, v34, path);
        Common = 0;
      }

      AAByteStreamClose(v8);
      AAAssetExtractorDestroy(Common, 0, v37, v38, v39, v40, v41, v42);
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 229, 15, "could not resume from saved checkpoint", v43, v44, v45, v56);
      unlink(path);
    }

    Common = aaAssetExtractorCreateCommon(__s, path, a3);
    if (Common)
    {
      StreamOpen = aaAssetExtractStreamOpen(a1, a3);
      Common[521] = StreamOpen;
      if (StreamOpen)
      {
        goto LABEL_29;
      }

      v49 = "extractor stream";
      v50 = 245;
    }

    else
    {
      v49 = "common constructor";
      v50 = 240;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", v50, 15, 0, v49, v46, v47, v55);
  }

  AAAssetExtractorDestroy(Common, 0, v24, v25, v26, v27, v28, v29);
  Common = 0;
LABEL_29:
  v30 = *MEMORY[0x29EDCA608];
  return Common;
}

void *aaAssetExtractorCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = malloc(0x1068uLL);
  v5 = v4;
  if (v4)
  {
    memset_s(v4, 0x1068uLL, 0, 0x1068uLL);
    *v5 = a3;
    __strlcpy_chk();
    __strlcpy_chk();
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateCommon", 76, 15, *v6, "malloc", v7, v8, v16);
    AAAssetExtractorDestroy(0, 0, v9, v10, v11, v12, v13, v14);
  }

  return v5;
}

uint64_t AAAssetExtractorDestroy(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (atomic_load(a1 + 1034))
    {
LABEL_3:
      v10 = 0xFFFFFFFFLL;
LABEL_4:
      v11 = 1;
      goto LABEL_5;
    }

    v17 = *(a1 + 522);
    if (v17 && aaAssetDecodeStreamDone(v17, a2, a3, a4, a5, a6, a7, a8))
    {
      v10 = 0;
      goto LABEL_4;
    }

    if (atomic_load(a1 + 1036))
    {
      if (atomic_load(a1 + 1034))
      {
LABEL_81:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorDestroy", 269, 15, 0, "storing checkpoint", a7, a8, v47);
        goto LABEL_3;
      }

      memset(v51, 0, 17);
      v49 = -1;
      v50 = -1;
      v48 = -1;
      v22 = AAFileStreamOpenWithPath(a1 + 3080, 1537, 0x1A4u);
      v25 = v22;
      if (!v22)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorStoreCheckpoint", 160, 15, 0, "open checkpoint path: %s", v23, v24, a1 + 8);
LABEL_80:
        AAByteStreamClose(v25);
        unlink(a1 + 3080);
        goto LABEL_81;
      }

      v51[0] = *a1;
      LODWORD(v51[1]) = *(a1 + 1038);
      BYTE4(v51[1]) = *(a1 + 520);
      v26 = (a1 + 4168);
      v27 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(a1 + 4168)), vceqzq_s64(*(a1 + 4184))))), 0x1000100010001);
      *(&v51[1] + 5) = vuzp1_s8(v27, v27).u32[0];
      if (!*(v22 + 3))
      {
        goto LABEL_47;
      }

      v28 = 0;
      v29 = v51;
      v30 = 17;
      while (1)
      {
        v31 = (*(v25 + 3))(*v25, v29, v30);
        if (v31 < 1)
        {
          break;
        }

        v29 = (v29 + v31);
        v28 += v31;
        v30 -= v31;
        if (!v30)
        {
          goto LABEL_45;
        }
      }

      v28 = v31;
LABEL_45:
      if (v28 < 0)
      {
LABEL_47:
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      if (BYTE5(v51[1]))
      {
        v38 = *v26;
        if (*v26)
        {
          if (*v38)
          {
            v39 = (v38[6])(*v38, v25, 0);
            free(v38);
            if (v39 < 0)
            {
              v37 = 0;
            }
          }

          else
          {
            free(*v26);
          }
        }
      }

      *v26 = 0;
      if (BYTE6(v51[1]))
      {
        v40 = *(a1 + 522);
        if (v40)
        {
          if (*v40)
          {
            v41 = (v40[6])(*v40, v25, &v50);
            free(v40);
            if (v41 < 0)
            {
              v37 = 0;
            }
          }

          else
          {
            free(*(a1 + 522));
          }
        }
      }

      *(a1 + 522) = 0;
      if (HIBYTE(v51[1]))
      {
        v42 = *(a1 + 523);
        if (v42)
        {
          if (*v42)
          {
            v43 = (v42[6])(*v42, v25, &v49);
            free(v42);
            if (v43 < 0)
            {
              v37 = 0;
            }
          }

          else
          {
            free(*(a1 + 523));
          }
        }
      }

      *(a1 + 523) = 0;
      if (LOBYTE(v51[2]))
      {
        v44 = *(a1 + 524);
        if (v44)
        {
          if (*v44)
          {
            v45 = (v44[6])(*v44, v25, &v48);
            free(v44);
            if (v45 < 0)
            {
              *(a1 + 524) = 0;
LABEL_79:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorStoreCheckpoint", 179, 15, 0, "write checkpoint", v23, v24, v47);
              goto LABEL_80;
            }
          }

          else
          {
            free(*(a1 + 524));
          }
        }
      }

      *(a1 + 524) = 0;
      if (!v37)
      {
        goto LABEL_79;
      }

      AAByteStreamClose(v25);
      if (a2)
      {
        if (LOBYTE(v51[2]))
        {
          v46 = &v48;
        }

        else if (HIBYTE(v51[1]))
        {
          v46 = &v49;
        }

        else
        {
          v46 = (a1 + 4160);
          if (BYTE6(v51[1]))
          {
            v46 = &v50;
          }
        }

        *a2 = *v46;
      }

      AAByteStreamClose(0);
    }

    v11 = 0;
    v10 = 1;
LABEL_5:
    v12 = *(a1 + 523);
    if (v12)
    {
      if (*v12)
      {
        v13 = v12[1]();
        free(v12);
        if (v13 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 523));
      }
    }

    v18 = *(a1 + 524);
    if (v18)
    {
      if (*v18)
      {
        v19 = v18[1]();
        free(v18);
        if (v19 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 524));
      }
    }

    v32 = *(a1 + 522);
    if (v32)
    {
      if (*v32)
      {
        v33 = v32[1]();
        free(v32);
        if (v33 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 522));
      }
    }

    v34 = *(a1 + 521);
    if (v34)
    {
      if (!*v34)
      {
        free(*(a1 + 521));
        if (v11)
        {
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      v35 = v34[1]();
      free(v34);
      if (v35 < 0)
      {
LABEL_37:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorDestroy", 276, 15, 0, "internal streams", v14, v15, v47);
        v10 = 0xFFFFFFFFLL;
        goto LABEL_38;
      }
    }

    if (v11)
    {
LABEL_38:
      unlink(a1 + 3080);
LABEL_41:
      memset_s(a1, 0x1068uLL, 0, 0x1068uLL);
      free(a1);
      return v10;
    }

LABEL_40:
    v10 = 1;
    goto LABEL_41;
  }

  return 0;
}

uint64_t AAAssetExtractorWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 4136)))
  {
    return -1;
  }

  v11 = a3;
  if (!a3)
  {
    return 0;
  }

  v14 = 0;
  atomic_compare_exchange_strong((a1 + 4144), &v14, 1u);
  if (!v14)
  {
    unlink((a1 + 3080));
  }

  v15 = *(a1 + 4176);
  if (v15)
  {
    v9 = 0;
  }

  else
  {
    v30 = *(a1 + 4160);
    if (v30 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v31 = *(a2 + v9);
        *(a1 + 4160) = v30 + 1;
        *(a1 + 4152 + v30) = v31;
        v30 = *(a1 + 4160);
      }

      while (v30 <= 3 && v11 - 1 != v9++);
      if (v30 < 4)
      {
        return v9;
      }

      v11 -= v9;
      a2 += v9;
    }

    v33 = (a1 + 4152);
    if (*(a1 + 4152) == 825246017 || *v33 == 826360153)
    {
      v36 = 0;
      v37 = 0;
    }

    else if (*v33 == 826361153)
    {
      v37 = 0;
      v36 = 1;
    }

    else
    {
      v34 = *(a1 + 4155);
      v35 = *v33 == 25200 && *(a1 + 4154) == 122;
      if (!v35 || ((v36 = 0, v37 = 1, (v34 - 45) > 0x39) || ((1 << (v34 - 45)) & 0x320000000000081) == 0) && v34 != 120 && v34 != 122)
      {
        v54 = *(a1 + 4154);
        v53 = *(a1 + 4153);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 323, 15, 0, "invalid stream type (0x%02x 0x%02x 0x%02x 0x%02x)", a7, a8, *(a1 + 4152));
        goto LABEL_24;
      }
    }

    v38 = aaAssetDecodeStreamOpen(*(a1 + 4168));
    *(a1 + 4176) = v38;
    if (!v38)
    {
      v27 = "decoder stream";
      v28 = 330;
      goto LABEL_23;
    }

    if (v36)
    {
      v42 = aaAssetDecryptionStreamOpen(v38, *(a1 + 4104), *(a1 + 4112));
      *(a1 + 4192) = v42;
      if (!v42)
      {
        v27 = "decryption stream";
        v28 = 334;
        goto LABEL_23;
      }
    }

    else
    {
      if (v37)
      {
        v43 = aaAssetDecompressionStreamOpen(v38);
        *(a1 + 4184) = v43;
        if (!v43)
        {
          v27 = "decompression stream";
          v28 = 339;
          goto LABEL_23;
        }
      }

      v44 = *(a1 + 4112);
      if (v44 && (v44(*(a1 + 4104), 0) & 0x80000000) != 0)
      {
        v27 = "callback cancel on non AEA container";
        v28 = 346;
        goto LABEL_23;
      }
    }

    if ((aaAssetDecodeStreamSetParameterPtr(*(a1 + 4176), 101, a1, v39, v40, v41, a7, a8) & 0x80000000) != 0 || (aaAssetDecodeStreamSetParameterPtr(*(a1 + 4176), 103, aaAssetExtractorProgress, v45, v46, v47, a7, a8) & 0x80000000) != 0)
    {
      v27 = "mapping decode stream progress";
      v28 = 352;
      goto LABEL_23;
    }

    v48 = *(a1 + 4176);
    if (*(a1 + 4184))
    {
      v48 = *(a1 + 4184);
    }

    v49 = *(a1 + 4192);
    if (!v49)
    {
      v49 = v48;
    }

    v50 = v49[3];
    if (v50)
    {
      v51 = v50(*v49, a1 + 4152, *(a1 + 4160));
    }

    else
    {
      v51 = -1;
    }

    if (v51 != *(a1 + 4160))
    {
      v27 = "invalid stream";
      v28 = 360;
      goto LABEL_23;
    }

    v15 = *(a1 + 4176);
  }

  if (*(a1 + 4184))
  {
    v15 = *(a1 + 4184);
  }

  v16 = *(a1 + 4192);
  if (!v16)
  {
    v16 = v15;
  }

  v17 = v16[3];
  if (!v17 || (v18 = v17(*v16, a2, v11), v18 < 0))
  {
    v27 = "invalid stream";
    v28 = 370;
    goto LABEL_23;
  }

  v9 += v18;
  v24 = *(a1 + 4176);
  if (v24)
  {
    if (aaAssetDecodeStreamDone(v24, v19, v20, v21, v22, v23, a7, a8))
    {
      v25 = 0;
      atomic_compare_exchange_strong((a1 + 4140), &v25, 1u);
      if (!v25)
      {
        v26 = *(a1 + 4128);
        if (v26)
        {
          if ((v26(*(a1 + 4104), 92, &unk_296ABFE1D, 0) & 0x80000000) != 0)
          {
            v27 = "end of stream cancel";
            v28 = 381;
LABEL_23:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", v28, 15, 0, v27, a7, a8, v52);
LABEL_24:
            v29 = 0;
            atomic_compare_exchange_strong((a1 + 4136), &v29, 1u);
            return -1;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t aaAssetExtractorProgress(uint64_t a1, float a2)
{
  if ((a2 >= 100.0 || ((v2 = *(a1 + 4148), v2 > 0.0) ? (v3 = (v2 + 1.0) <= a2) : (v3 = 1), v3)) && (*(a1 + 4148) = a2, (v4 = *(a1 + 4120)) != 0))
  {
    return v4(*(a1 + 4104));
  }

  else
  {
    return 0;
  }
}

uint64_t AAAssetExtractorSetParameterPtr(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 4136)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 - 105) >= 2)
  {
    if (a2 != 101 || (aaAssetExtractStreamSetParameterPtr(*(a1 + 4168), 101, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a1 + 4104) = a3;
  }

  else
  {
    v12 = *(a1 + 4168);

    return aaAssetExtractStreamSetParameterPtr(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t AAAssetExtractorSetParameterCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 4136)))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 102)
  {
    v12 = 4112;
  }

  else if (a2 == 103)
  {
    v12 = 4120;
  }

  else
  {
    if (a2 != 104 || (aaAssetExtractStreamSetParameterCallback(*(a1 + 4168), 104, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = 4128;
  }

  result = 0;
  *(a1 + v12) = a3;
  return result;
}

uint64_t compressionWorkerProc(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (atomic_load((*a1 + 112)))
  {
    result = 0;
    a1[6] = -1;
    return result;
  }

  v12 = a1[2];
  a1[6] = v12;
  if (v12 == -2)
  {
    return 0;
  }

  if (v12 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received", a7, a8, v21);
    return 0;
  }

  if (v12 < 0)
  {
    v14 = "Invalid iBlock received";
    v15 = 246;
  }

  else
  {
    if (!*(v9 + 4))
    {
      v16 = (*(v9 + 96))(a1[5], *(v9 + 16), a1[1], a1[3]);
      v17 = a1[3];
      if ((v16 & 0x8000000000000000) != 0 || v16 >= v17)
      {
        memcpy(a1[5], a1[1], v17);
        v16 = a1[3];
        v17 = v16;
      }

      a1[7] = v16;
      a1[8] = v17;
      if (*(v9 + 24) >= 2)
      {
        v22 = a1[6];
        fprintf(*MEMORY[0x29EDCA610], "Worker: encode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    if (a1[3] == a1[4])
    {
      memcpy(a1[5], a1[1], a1[3]);
      v13 = a1[3];
      a1[7] = v13;
      goto LABEL_19;
    }

    v18 = a1[1];
    v19 = (*(v9 + 96))(a1[5]);
    if ((v19 & 0x8000000000000000) == 0 && v19 == a1[4])
    {
      a1[7] = v19;
      v13 = a1[3];
LABEL_19:
      a1[8] = v13;
      if (*(v9 + 24) >= 2)
      {
        v23 = a1[6];
        fprintf(*MEMORY[0x29EDCA610], "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    v25 = a1[4];
    v21 = a1[6];
    v24 = a1[3];
    v14 = "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld";
    v15 = 292;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", v15, 37, 0, v14, a7, a8, v21);
  v20 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v9 + 112), &v20, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t outputStreamProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!atomic_load((a1 + 112)))
  {
    v12 = *(a2 + 48);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = 0;
LABEL_5:
      result = 0;
      *(a1 + 88) += v13;
      goto LABEL_23;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld", a7, a8, *(a2 + 48));
    }

    else
    {
      if (*(a1 + 4) == 1)
      {
        v14 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if ((v14 & 0x8000000000000000) == 0)
        {
          v13 = v14;
          if (v14 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)", v15, v16, v14);
LABEL_22:
          v24 = 0;
          *(a1 + 88) += v13;
          atomic_compare_exchange_strong((a1 + 112), &v24, 1u);
          result = 0xFFFFFFFFLL;
          goto LABEL_23;
        }

        v22 = "writing block";
        v23 = 334;
      }

      else
      {
        v17 = vrev64q_s8(*(a2 + 56));
        v27 = vextq_s8(v17, v17, 8uLL);
        v18 = pcWrite(*(a1 + 56), *(a1 + 72), &v27, 16);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v13 = v18;
          if (v18 == 16)
          {
            v19 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
            if (v19 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload", v20, v21, v26);
              v13 = 16;
            }

            else
            {
              v13 = v19 + 16;
              if (v19 == *(a2 + 56))
              {
                goto LABEL_5;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v20, v21, v19);
            }
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)", v15, v16, v18);
          }

          goto LABEL_22;
        }

        v22 = "writing block header";
        v23 = 345;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", v23, 37, 0, v22, v15, v16, v26);
    }

    v13 = 0;
    goto LABEL_22;
  }

  result = 0;
LABEL_23:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcWrite(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    v8 = 0;
    while (1)
    {
      v9 = a1(a2, a3, v6);
      v12 = v9;
      if (v9 < 0)
      {
        break;
      }

      a3 += v9;
      v8 += v9;
      v6 -= v9;
      if (!v6)
      {
        return v8;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed", v10, v11, v16);
    return v12;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v13, v14, v16);
    }
  }

  return v8;
}

uint64_t PCompressFilter(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125[2] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v112);
  *v123 = 0;
  v121 = 0u;
  *v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  DefaultNThreads = a1[2];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  a1[2] = DefaultNThreads;
  if (a1[1] == 1)
  {
    if (pcRead(*a2, *(a2 + 16), &v124, 4) != 4)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      *a3 += 4;
    }

    v14 = 0;
    while (1)
    {
      DecoderKey = PCompressGetDecoderKey(v14);
      if (DecoderKey != 63)
      {
        LODWORD(v125[0]) = 544891504;
        BYTE3(v125[0]) = DecoderKey;
        if (v124 == LODWORD(v125[0]))
        {
          break;
        }
      }

      if (++v14 == 7)
      {
        if (compression_stream_identify_algorithm() == -1)
        {
          v16 = "invalid header in input stream";
          v17 = 179;
        }

        else
        {
          v16 = "compressed stream detected : try compression_tool";
          v17 = 178;
        }

LABEL_89:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", v17, 37, 0, v16, v12, v13, v113);
LABEL_90:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader", v12, v13, v113);
        goto LABEL_91;
      }
    }

    v125[0] = 0;
    if (pcRead(*a2, *(a2 + 16), v125, 8) != 8)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      *a3 += 8;
    }

    if (!v125[0])
    {
      v16 = "invalid blockSize in input stream";
      v17 = 191;
      goto LABEL_89;
    }

    *(a1 + 2) = bswap64(v125[0]);
    *a1 = v14;
    if (a1[6] >= 1)
    {
      v22 = MEMORY[0x29EDCA610];
      v23 = *MEMORY[0x29EDCA610];
      DecoderDescription = PCompressGetDecoderDescription(v14);
      fprintf(v23, "Decoder: %s\n", DecoderDescription);
      fprintf(*v22, "Blocksize: %llu\n");
    }
  }

  else
  {
    v18 = *(a1 + 2);
    EncoderDecoder = PCompressGetEncoderDecoder(*a1);
    v20 = PCompressGetDecoderKey(EncoderDecoder);
    if (v20 == 63)
    {
      goto LABEL_90;
    }

    v124 = 544891504;
    HIBYTE(v124) = v20;
    if (pcWrite(*(a2 + 24), *(a2 + 40), &v124, 4) != 4)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      a3[1] += 4;
    }

    v125[0] = bswap64(v18);
    if (pcWrite(*(a2 + 24), *(a2 + 40), v125, 8) != 8)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      a3[1] += 8;
    }

    if (a1[6] >= 1)
    {
      v21 = *MEMORY[0x29EDCA610];
      PCompressGetEncoderDescription(*a1);
      fprintf(v21, "Encoder: %s\n");
    }
  }

  v25 = *(a1 + 1);
  v116 = *a1;
  v117 = v25;
  v121 = 0u;
  *v122 = 0u;
  *v123 = 0;
  v26 = *(a2 + 16);
  v118 = *a2;
  v119 = v26;
  v120 = *(a2 + 32);
  if (a3)
  {
    v121 = *a3;
  }

  v27 = *a1;
  if (a1[1])
  {
    DecoderFilter = PCompressGetDecoderFilter(v27);
  }

  else
  {
    DecoderFilter = PCompressGetEncoderFilter(v27);
  }

  v122[0] = DecoderFilter;
  v29 = calloc(a1[2], 0x48uLL);
  v122[1] = v29;
  if (!v29)
  {
    v35 = 468;
LABEL_86:
    v87 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v35, 37, *v87, "malloc", v88, v89, v113);
LABEL_87:
    v90 = "initFilterState";
    v91 = 510;
LABEL_104:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", v91, 37, 0, v90, v43, v44, v113);
    v100 = 0;
    v101 = 1;
    goto LABEL_105;
  }

  v30 = a1[2];
  if (v30 < 1)
  {
    goto LABEL_43;
  }

  v31 = v29;
  v32 = *(a1 + 2);
  v33 = malloc(v32);
  v31[1] = v33;
  v34 = malloc(v32);
  v31[5] = v34;
  *v31 = &v116;
  v35 = 477;
  if (!v33 || !v34)
  {
    goto LABEL_86;
  }

  v36 = 0;
  v37 = v31 + 9;
  do
  {
    if (v30 - 1 == v36)
    {
      goto LABEL_43;
    }

    v38 = malloc(v32);
    v37[1] = v38;
    v39 = malloc(v32);
    v37[5] = v39;
    *v37 = &v116;
    ++v36;
    if (!v38)
    {
      break;
    }

    v37 += 9;
  }

  while (v39);
  v40 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v40, "malloc", v41, v42, v113);
  if (v36 < v30)
  {
    goto LABEL_87;
  }

LABEL_43:
  v45 = v117;
  v46 = SDWORD2(v116);
  v47 = malloc(8 * SDWORD2(v116));
  if (!v47)
  {
    v97 = *__error();
    v98 = "malloc";
    v99 = 372;
LABEL_102:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", v99, 37, v97, v98, v62, v63, v113);
    goto LABEL_103;
  }

  v48 = v47;
  if (v46 >= 1)
  {
    v49 = v122[1];
    v50 = (v46 + 1) & 0xFFFFFFFE;
    v51 = vdupq_n_s64(v46 - 1);
    v52 = xmmword_296AD1760;
    v53 = v47 + 8;
    v54 = vdupq_n_s64(2uLL);
    do
    {
      v55 = vmovn_s64(vcgeq_u64(v51, v52));
      if (v55.i8[0])
      {
        *(v53 - 1) = v49;
      }

      if (v55.i8[4])
      {
        *v53 = v49 + 72;
      }

      v52 = vaddq_s64(v52, v54);
      v53 += 2;
      v49 += 144;
      v50 -= 2;
    }

    while (v50);
  }

  v115 = v45;
  v56 = ThreadPipelineCreate(v46, v47, compressionWorkerProc, &v116, outputStreamProc, 0);
  if (!v56)
  {
    v98 = "creating pipeline";
    v99 = 375;
    v97 = 0;
    goto LABEL_102;
  }

  v64 = v56;
  v114 = v48;
  v65 = 0;
  v66 = 1;
  while (1)
  {
    if (atomic_load(v123))
    {
      v66 = 0;
LABEL_118:
      v106 = v66 == 0;
      goto LABEL_120;
    }

    if (!v66)
    {
      break;
    }

    Worker = ThreadPipelineGetWorker(v64, v57, v58, v59, v60, v61, v62, v63);
    if (!Worker)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline", v69, v70, v113);
      v84 = 0;
LABEL_82:
      v66 = 0;
      goto LABEL_83;
    }

    v71 = Worker;
    if (DWORD1(v116) == 1)
    {
      v72 = pcRead(v118, v119, v125, 16);
      if (v72)
      {
        v79 = v72;
        if (v72 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header", v77, v78, v113);
          v79 = 0;
        }

        else if (v72 == 16)
        {
          v80 = v45;
          v81 = bswap64(v125[0]);
          v82 = bswap64(v125[1]);
          if (v82 > v80 || v81 > v80)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v77, v78, v82);
            v79 = 16;
            v45 = v80;
          }

          else
          {
            v83 = pcRead(v118, v119, v71[1], v82);
            if (v83 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload", v77, v78, v113);
              v79 = 16;
            }

            else
            {
              v79 = v83 + 16;
              if (v83 == v82)
              {
                v84 = 0;
                v71[3] = v82;
                v71[4] = v81;
                v71[2] = v65;
                *&v121 = v121 + v79;
                v66 = 1;
                v45 = v115;
                goto LABEL_80;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v77, v78, v83);
            }

            v45 = v115;
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v77, v78, v72);
        }

        v66 = 0;
        *&v121 = v121 + v79;
        v86 = -1;
      }

      else
      {
        v86 = -2;
        v66 = 1;
      }
    }

    else
    {
      v85 = pcRead(v118, v119, *(Worker + 8), v45);
      if (v85 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block", v77, v78, v113);
        v66 = 0;
        v86 = -1;
      }

      else
      {
        if (v85)
        {
          v84 = 0;
          v71[3] = v85;
          v71[4] = 0;
          v71[2] = v65;
          *&v121 = v121 + v85;
          v66 = 1;
          goto LABEL_80;
        }

        v86 = -2;
        v66 = 1;
      }
    }

    v71[2] = v86;
    v84 = v66;
LABEL_80:
    if ((ThreadPipelineRunWorker(v64, v71, v73, v74, v75, v76, v77, v78) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker", v62, v63, v113);
      goto LABEL_82;
    }

LABEL_83:
    ++v65;
    if (v84)
    {
      goto LABEL_118;
    }
  }

  atomic_load(v123);
  v106 = 1;
LABEL_120:
  if ((ThreadPipelineDestroy(v64) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy", v107, v108, v113);
    free(v114);
    goto LABEL_103;
  }

  free(v114);
  if (v106)
  {
LABEL_103:
    v90 = "processStream";
    v91 = 513;
    goto LABEL_104;
  }

  v109 = (*(a2 + 24))(*(a2 + 40), 0, 0);
  if (v109 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v110, v111, v113);
    v90 = "writing EOF";
    v91 = 520;
    goto LABEL_104;
  }

  v101 = 0;
  *(&v121 + 1) += v109;
  v100 = 1;
LABEL_105:
  v102 = v122[1];
  if (v122[1])
  {
    if (SDWORD2(v116) >= 1)
    {
      v103 = 0;
      v104 = 0;
      do
      {
        free(*(v122[1] + v103 + 8));
        free(*(v122[1] + v103 + 40));
        ++v104;
        v103 += 72;
      }

      while (v104 < SDWORD2(v116));
      v102 = v122[1];
    }

    free(v102);
    v122[1] = 0;
  }

  v105 = v100 ^ 1;
  if (!a3)
  {
    v105 = 1;
  }

  if ((v105 & 1) == 0)
  {
    v94 = 0;
    *a3 = v121;
    goto LABEL_96;
  }

  if (!v101)
  {
    v94 = 0;
    goto LABEL_96;
  }

LABEL_91:
  v92 = *(a2 + 32);
  if (v92)
  {
    v92(*(a2 + 40));
  }

  v93 = *(a2 + 8);
  if (v93)
  {
    v93(*(a2 + 16));
  }

  v94 = -1;
LABEL_96:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v94;
  }

  else
  {
    result = result;
  }

  v96 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcRead(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v8 = 0;
  while (1)
  {
    v9 = a1(a2, a3, v4);
    v12 = v9;
    if (v9 < 0)
    {
      break;
    }

    if (v9)
    {
      a3 += v9;
      v8 += v9;
      v4 -= v9;
      if (v4)
      {
        continue;
      }
    }

    return v8;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed", v10, v11, v14);
  return v12;
}

size_t PCompressCopyEncode(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t PCompressCopyDecode(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

AEAAuthData AEAAuthDataCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreate", 19, 95, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AEAAuthDataDestroy(AEAAuthData auth_data)
{
  if (auth_data)
  {
    free(*(auth_data + 2));
    free(*(auth_data + 5));
    memset_s(auth_data + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(auth_data, 0x30uLL, 0, 0x30uLL);

    free(auth_data);
  }
}

AEAAuthData AEAAuthDataCreateWithContext(AEAContext context)
{
  __s = 0;
  v48 = 0;
  __ptr = 0;
  v46 = 0;
  v2 = AEAAuthDataCreate();
  if (!v2)
  {
    return v2;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, 0, 0, &v46) < 0)
  {
    v8 = "AEAContextGetFieldBlob";
    v9 = 46;
    goto LABEL_31;
  }

  if (!v46)
  {
    goto LABEL_97;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v5 = v48;
  if (v48 >= v46)
  {
    v10 = __ptr;
  }

  else
  {
    do
    {
      while (!v5)
      {
        v5 = 0x4000;
        if (v46 <= 0x4000)
        {
          v7 = __ptr;
          v5 = 0x4000;
          goto LABEL_18;
        }
      }

      v6 = v5 >> 1;
      if ((v5 & (v5 >> 1)) != 0)
      {
        v6 = v5 & (v5 >> 1);
      }

      v5 += v6;
    }

    while (v5 < v46);
    if (v5 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_29;
    }

    v7 = __ptr;
LABEL_18:
    v10 = realloc(v7, v5);
    if (!v10)
    {
      free(v7);
LABEL_29:
      v48 = 0;
      __ptr = 0;
      __s = 0;
      goto LABEL_30;
    }

    v48 = v5;
    __ptr = v10;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, v5 - __s, v10 + __s, &v46) < 0)
  {
    goto LABEL_30;
  }

  v11 = __s;
  if (v46)
  {
    v11 = __s + v46;
    if (!__CFADD__(__s, v46) && v11 <= v48)
    {
      __s += v46;
      goto LABEL_25;
    }

LABEL_30:
    v8 = "AEAContextGetFieldBlob";
    v9 = 59;
    goto LABEL_31;
  }

LABEL_25:
  v12 = __ptr;
  *v2 = 0;
  *(v2 + 3) = 0;
  v13 = (v2 + 24);
  if (!v11)
  {
    goto LABEL_97;
  }

  if (v11 < 4)
  {
    goto LABEL_27;
  }

  v14 = 0;
  v15 = 1;
  while (2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *&v12[v17];
      if (v18 < 4)
      {
        goto LABEL_27;
      }

      v19 = __CFADD__(v18, v17);
      v20 = v18 + v17;
      if (v19 || v20 > v11)
      {
        goto LABEL_27;
      }

      if (v14)
      {
        v21 = *(v2 + 2);
        v22 = (*v2)++;
        *(v21 + 8 * v22) = v17;
        if (v20 >= v11)
        {
          goto LABEL_68;
        }

        ++v16;
        goto LABEL_41;
      }

      ++v16;
      if (v20 >= v11)
      {
        break;
      }

LABEL_41:
      v17 = v20;
      if (v20 + 4 > v11)
      {
        goto LABEL_27;
      }
    }

    if (v15)
    {
      if (v16 > 0xFFFFFFFE)
      {
        goto LABEL_27;
      }

      v23 = *(v2 + 1);
      if (v23 >= v16)
      {
        goto LABEL_55;
      }

      v24 = *(v2 + 1);
      do
      {
        if (v24)
        {
          v24 *= 2;
        }

        else
        {
          v24 = 16;
        }
      }

      while (v24 < v16);
      if (v24 <= v23)
      {
        goto LABEL_55;
      }

      *(v2 + 1) = v24;
      if (8 * v24 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v25 = *(v2 + 2);
        v26 = realloc(v25, 8 * v24);
        if (v26)
        {
          *(v2 + 2) = v26;
LABEL_55:
          if ((v11 & 0x8000000000000000) == 0)
          {
            v27 = *(v2 + 4);
            if (v27 >= v11)
            {
              goto LABEL_67;
            }

            do
            {
              while (!v27)
              {
                v27 = 0x4000;
                v29 = 0x4000;
                if (v11 <= 0x4000)
                {
                  goto LABEL_65;
                }
              }

              v28 = v27 >> 1;
              if ((v27 & (v27 >> 1)) != 0)
              {
                v28 = v27 & (v27 >> 1);
              }

              v27 += v28;
            }

            while (v27 < v11);
            v29 = v27;
            if (v27 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_65:
              v30 = *(v2 + 5);
              v31 = realloc(v30, v29);
              if (v31)
              {
                *(v2 + 4) = v29;
                *(v2 + 5) = v31;
LABEL_67:
                v15 = 0;
                v14 = 1;
                continue;
              }

              free(v30);
            }

            *v13 = 0;
            *(v2 + 4) = 0;
            *(v2 + 5) = 0;
          }

LABEL_27:
          *v2 = 0;
          *(v2 + 3) = 0;
          v8 = "invalid auth data blob";
          v9 = 62;
          goto LABEL_31;
        }

        free(v25);
      }

      *(v2 + 2) = 0;
      goto LABEL_27;
    }

    break;
  }

LABEL_68:
  *v13 = 0;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v32 = *(v2 + 4);
  if (v32 < v11)
  {
    v33 = 0x4000;
    do
    {
      while (!v32)
      {
        v32 = 0x4000;
        if (v11 <= 0x4000)
        {
          goto LABEL_80;
        }
      }

      v34 = v32 >> 1;
      if ((v32 & (v32 >> 1)) != 0)
      {
        v34 = v32 & (v32 >> 1);
      }

      v32 += v34;
    }

    while (v32 < v11);
    v33 = v32;
    if (v32 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_101:
      *(v2 + 4) = 0;
      *(v2 + 5) = 0;
      goto LABEL_27;
    }

LABEL_80:
    v35 = *(v2 + 5);
    v36 = realloc(v35, v33);
    if (!v36)
    {
      free(v35);
      goto LABEL_101;
    }

    *(v2 + 4) = v33;
    *(v2 + 5) = v36;
  }

  v37 = *(v2 + 5);
  if (v12)
  {
    memcpy((v37 + *v13), v12, v11);
  }

  else if (v37)
  {
    memset_s((v37 + *v13), v11, 0, v11);
  }

  *(v2 + 3) += v11;
  v38 = *v2;
  if (!*v2)
  {
LABEL_97:
    free(__ptr);
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    return v2;
  }

  v39 = 0;
  while (v38 <= v39)
  {
    v40 = 0;
    v41 = 0xFFFFFFFFLL;
LABEL_92:
    v42 = (v40 + 1);
    v43 = v41 - 4;
    while (*v42++)
    {
      if (!--v43)
      {
        goto LABEL_99;
      }
    }

    if (++v39 == v38)
    {
      goto LABEL_97;
    }
  }

  v40 = (*(v2 + 5) + *(*(v2 + 2) + 8 * v39));
  v41 = *v40;
  if (v41 >= 5)
  {
    goto LABEL_92;
  }

LABEL_99:
  v8 = "invalid auth_data key";
  v9 = 74;
LABEL_31:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", v9, 95, 0, v8, v3, v4, v46);
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AEAAuthDataDestroy(v2);
  return 0;
}