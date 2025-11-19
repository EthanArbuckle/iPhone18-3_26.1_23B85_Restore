AAByteStream_impl *aaIntervalInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x20uLL);
  v10 = v7;
  if (v6 && v7)
  {
    if (a3 >= a2)
    {
      *v7 = a1;
      v7[1] = a2;
      v7[2] = a3 - a2;
      v7[3] = 0;
      AACustomByteStreamSetData(v6, v7);
      AACustomByteStreamSetReadProc(v6, IntervalStreamRead);
      AACustomByteStreamSetPReadProc(v6, IntervalStreamPRead);
      AACustomByteStreamSetSeekProc(v6, IntervalStreamSeek);
      AACustomByteStreamSetCancelProc(v6, IntervalStreamCancel);
      AACustomByteStreamSetCloseProc(v6, IntervalStreamClose);
      return v6;
    }

    v11 = "bad interval";
    v12 = 703;
    v13 = 0;
  }

  else
  {
    v13 = *__error();
    v11 = "malloc";
    v12 = 702;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", v12, 137, v13, v11, v8, v9, v15);
  free(v6);
  free(v10);
  return 0;
}

ssize_t IntervalStreamPRead(uint64_t a1, void *a2, size_t a3, int64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 < a4)
  {
    return -1;
  }

  if ((a4 + a3) > v5)
  {
    a3 = v5 - a4;
  }

  result = AAByteStreamPRead(*a1, a2, a3, *(a1 + 8) + a4);
  if (result < 0)
  {
    return -1;
  }

  *(a1 + 24) += result;
  return result;
}

uint64_t IntervalStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 24);
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -1;
      }

      v3 = (a1 + 16);
    }

    a2 += *v3;
  }

  if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 16))
  {
    *(a1 + 24) = a2;
    return a2;
  }

  return -1;
}

uint64_t SegmentStreamPRead(void **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = a1 + 2;
  v77 = (a1 + 4);
  while (1)
  {
    v9 = segment_find(a1, a4);
    if (!v9)
    {
      v69 = "no segment found";
      v70 = 321;
      goto LABEL_74;
    }

    v12 = v9;
    v13 = a4 - *v9;
    if (v5 - v7 >= *(v9 + 8) - v13)
    {
      v14 = *(v9 + 8) - v13;
    }

    else
    {
      v14 = v5 - v7;
    }

    v80 = a4 - *v9;
    if (!*(v9 + 24))
    {
      v22 = v8;
      v23 = *a1;
      if ((*a1)[4])
      {
        if (!v14)
        {
          goto LABEL_41;
        }

        v24 = 0;
        v25 = v14;
        v26 = a2 + v7;
        v27 = *(v9 + 16) + v13;
        __na = v25;
        while (1)
        {
          v28 = (*(v23 + 32))(*v23, v26, v25, v27);
          if (v28 < 0)
          {
            break;
          }

          if (v28)
          {
            v26 += v28;
            v24 += v28;
            v27 += v28;
            v25 -= v28;
            if (v25)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v24 = v28;
      }

      else
      {
        __na = v14;
        v24 = -1;
      }

LABEL_39:
      v14 = __na;
      v55 = __na == v24;
      v5 = a3;
      if (!v55)
      {
        v69 = "aaSegmentStreamProcess";
        v70 = 337;
        goto LABEL_74;
      }

LABEL_41:
      v8 = v22;
      if (*(a1 + 796))
      {
        v56 = *(v12 + 16);
        if (v14 != aaByteStreamSimulate(*a1))
        {
          v69 = "aaByteStreamSimulate";
          v70 = 340;
          goto LABEL_74;
        }
      }

      goto LABEL_56;
    }

    v15 = a1[1];
    v16 = *(v9 + 28);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v64 = "MutexLock";
      v65 = 169;
      goto LABEL_61;
    }

    __n = v14;
    v19 = *(v12 + 16);
    v20 = &v8[3 * (((0x317E428CA9 * v19) >> 32) & 0x7F)];
    if (v20[1] == v19)
    {
      v21 = a1[394] + 1;
      a1[394] = v21;
      v20[2] = v21;
LABEL_26:
      v41 = *v20 + v80;
      v14 = __n;
      memcpy((a2 + v7), v41, __n);
      v42 = 0;
      goto LABEL_53;
    }

    v29 = 0;
    v30 = 0;
    v31 = v77;
    v32 = &v15[v16];
    while (*(v31 - 1) != v19)
    {
      v33 = *v31;
      v31 += 3;
      if (v33 < v8[3 * v30 + 2])
      {
        v30 = v29;
      }

      if (++v29 == 128)
      {
        goto LABEL_25;
      }
    }

    v30 = v29;
LABEL_25:
    v34 = v20[2];
    v35 = *v20;
    v36 = &v8[3 * v30];
    v37 = v36[2];
    *v20 = *v36;
    v20[2] = v37;
    *v36 = v35;
    v36[2] = v34;
    v38 = v20[1];
    v39 = *(v12 + 16);
    v40 = a1[394] + 1;
    a1[394] = v40;
    v20[2] = v40;
    if (v38 == v39)
    {
      goto LABEL_26;
    }

    if (pthread_mutex_unlock((a1 + 386)))
    {
      v64 = "MutexUnlock";
      v65 = 175;
LABEL_61:
      v66 = 0;
LABEL_68:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v65, 137, v66, v64, v17, v18, v72);
      v42 = 0;
      goto LABEL_73;
    }

    v43 = *(v12 + 24);
    v44 = *(v12 + 8) + v43;
    if (v44 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_67:
      v66 = *__error();
      v64 = "aaMalloc";
      v65 = 179;
      goto LABEL_68;
    }

    v45 = malloc(v44);
    if (!v45)
    {
      goto LABEL_67;
    }

    v42 = v45;
    v76 = v32;
    v48 = *a1;
    if (!(*a1)[4])
    {
      goto LABEL_64;
    }

    v74 = v45;
    v75 = v8;
    v49 = v43;
    v73 = v43;
    v50 = 0;
    if (v43)
    {
      v51 = *(v12 + 16);
      v52 = v45;
      v53 = v49;
      while (1)
      {
        v54 = (*(v48 + 32))(*v48, v52, v53, v51);
        if (v54 < 0)
        {
          break;
        }

        if (v54)
        {
          v52 += v54;
          v50 += v54;
          v51 += v54;
          v53 -= v54;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_45;
      }

      v50 = v54;
    }

LABEL_45:
    v42 = v74;
    v55 = v50 == v73;
    v5 = a3;
    v8 = v75;
    if (!v55)
    {
LABEL_64:
      v67 = "aaByteStreamPReadExpected";
      v68 = 183;
      goto LABEL_72;
    }

    v57 = *(v12 + 8);
    if (*v74 == *(v76 + 4))
    {
      if (v57 + 1 != *(v12 + 24))
      {
        v67 = "chunk error";
        v68 = 189;
        goto LABEL_72;
      }

      v58 = v74 + 1;
    }

    else
    {
      v59 = *(v12 + 24);
      v58 = &v74[v59];
      if (compression_decode_buffer(&v74[v59], v57, v74, v59, 0, *v76) != *(v12 + 8))
      {
        v67 = "compression_decode_buffer";
        v68 = 195;
        goto LABEL_72;
      }
    }

    memcpy((a2 + v7), &v58[v80], __n);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v67 = "MutexLock";
      v68 = 202;
      goto LABEL_72;
    }

    memcpy(*v20, v58, *(v12 + 8));
    v60 = *(v12 + 16);
    v61 = a1[394] + 1;
    a1[394] = v61;
    v20[1] = v60;
    v20[2] = v61;
    v14 = __n;
LABEL_53:
    if (pthread_mutex_unlock((a1 + 386)))
    {
      break;
    }

    free(v42);
    if (*(a1 + 796))
    {
      v62 = *(v12 + 24);
      v63 = *(v12 + 16);
      if (aaByteStreamSimulate(*a1) != v62)
      {
        v69 = "aaByteStreamSimulate";
        v70 = 333;
        goto LABEL_74;
      }
    }

LABEL_56:
    a4 += v14;
    v7 += v14;
    if (v7 >= v5)
    {
      return v7;
    }
  }

  v67 = "MutexUnlock";
  v68 = 208;
LABEL_72:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v68, 137, 0, v67, v46, v47, v72);
LABEL_73:
  free(v42);
  v69 = "segment_decode_to_buffer";
  v70 = 330;
LABEL_74:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", v70, 137, 0, v69, v10, v11, v72);
  return -1;
}

uint64_t SegmentStreamPWrite(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = segment_find(a1, a4);
    if (!v8)
    {
      v19 = "no segment found";
      v20 = 363;
      goto LABEL_23;
    }

    v11 = a4 - *v8;
    if (a3 - v7 >= *(v8 + 8) - v11)
    {
      v12 = *(v8 + 8) - v11;
    }

    else
    {
      v12 = a3 - v7;
    }

    if (*(v8 + 24))
    {
      v19 = "compressed content";
      v20 = 370;
      goto LABEL_23;
    }

    v13 = *a1;
    if (!*(*a1 + 40))
    {
      v14 = -1;
      goto LABEL_16;
    }

    if (v12)
    {
      break;
    }

LABEL_17:
    a4 += v12;
    v7 += v12;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  v14 = 0;
  v15 = a2 + v7;
  v16 = *(v8 + 16) + v11;
  v17 = v12;
  while (1)
  {
    v18 = (*(v13 + 40))(*v13, v15, v17, v16);
    if (v18 < 1)
    {
      break;
    }

    v15 += v18;
    v14 += v18;
    v16 += v18;
    v17 -= v18;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v14 = v18;
LABEL_16:
  if (v12 == v14)
  {
    goto LABEL_17;
  }

  v19 = "aaByteStreamPWriteExpected";
  v20 = 374;
LABEL_23:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", v20, 137, 0, v19, v9, v10, v22);
  return -1;
}

uint64_t SegmentStreamSimulate(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = 0;
  while (a4 > v8)
  {
    v9 = segment_find(a1, a5);
    if (!v9)
    {
      v15 = "no segment found";
      v16 = 276;
      goto LABEL_12;
    }

    v12 = *(v9 + 8) - (a5 - *v9);
    if (a4 - v8 < v12)
    {
      v12 = a4 - v8;
    }

    a5 += v12;
    v8 += v12;
    if (*(v9 + 24))
    {
      v13 = *(v9 + 24);
    }

    else
    {
      v13 = v12;
    }

    v14 = *(v9 + 16);
    if (v13 != aaByteStreamSimulate(*a1))
    {
      v15 = "aaByteStreamSimulate";
      v16 = 303;
LABEL_12:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", v16, 137, 0, v15, v10, v11, v18);
      return -1;
    }
  }

  return v8;
}

uint64_t segment_find(void *a1, unint64_t a2)
{
  if (a1[397] <= a2)
  {
    return 0;
  }

  v2 = a1[396];
  v3 = a1[395];
  if (v2 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v3 + 29 * ((v4 + v2) >> 1)) <= a2)
      {
        v4 = (v4 + v2) >> 1;
      }

      else
      {
        v2 = (v4 + v2) >> 1;
      }
    }

    while (v4 + 1 < v2);
  }

  return v3 + 29 * v4;
}

uint64_t createSearchThread(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 152) + 2368 * a2;
  bzero(v4, 0x940uLL);
  *(v4 + 16) = a1;
  *(v4 + 8) = a2;
  *(v4 + 24) = 0;
  if (pthread_mutex_init((v4 + 32), 0) || pthread_cond_init((v4 + 96), 0))
  {
    return 0xFFFFFFFFLL;
  }

  *(v4 + 2336) = 0x1000000;
  v6 = malloc(0x1000000uLL);
  *(v4 + 2360) = v6;
  if (!v6)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "createSearchThread", 142, 23, *v7, "malloc", v8, v9, v10);
    return 0xFFFFFFFFLL;
  }

  if (createThread(v4, searchThreadMain, v4, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t searchThreadMain(uint64_t a1)
{
  v2 = *(a1 + 16);
  v46 = *(*v2 + 16);
  Count = CFArrayGetCount(*(*v2 + 64));
  v4 = calloc(Count, 8uLL);
  v47 = calloc(Count, 8uLL);
  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*v2 + 64), v5);
      if (ValueAtIndex)
      {
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        if (CStringPtr)
        {
          v12 = CStringPtr;
          v13 = strlen(CStringPtr);
          v4[v5] = v13;
          v14 = strdup(v12);
          v47[v5] = v14;
          if (*(*v2 + 24))
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = v14;
            do
            {
              *v16 = __tolower(*v16);
              ++v16;
              --v13;
            }

            while (v13);
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "searchThreadMain", 65, 23, 0, "CFStringGetCStringPtr returned 0", v10, v11, v43);
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "searchThreadMain", 63, 23, 0, "CFArrayGetValueAtIndex(%d) returned 0", v7, v8, v5);
      }

      ++v5;
    }

    while (v5 != (Count & 0x7FFFFFFF));
  }

  v17 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 32)))
  {
LABEL_16:
    v21 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v22 = 117;
  }

  else
  {
    v45 = Count & 0x7FFFFFFF;
    while (1)
    {
      v24 = *(v2 + 16);
      v25 = *(v2 + 20);
      v26 = v24;
      if (v24 < v25)
      {
        *(*(v2 + 24) + 4 * v24) = v17;
        v26 = *(v2 + 16);
      }

      *(v2 + 16) = v26 + 1;
      if (!v26)
      {
        if (pthread_cond_broadcast((v2 + 96)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 32)))
      {
        v21 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v22 = 124;
        goto LABEL_17;
      }

      if (v24 >= v25)
      {
        v21 = "SharedArrayPush: stack is full\n";
        v22 = 125;
        goto LABEL_17;
      }

      if (pthread_mutex_lock((a1 + 32)))
      {
        goto LABEL_18;
      }

      while (1)
      {
        v27 = *(a1 + 24);
        if (v27 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 96), (a1 + 32)))
        {
          goto LABEL_18;
        }
      }

      *(a1 + 24) = v27 - 1;
      if (pthread_mutex_unlock((a1 + 32)))
      {
        goto LABEL_18;
      }

      v28 = *(a1 + 2344);
      if (!v28)
      {
        free(v4);
        free(v47);
        return 0;
      }

      if (*(*v2 + 24))
      {
        v29 = *(a1 + 2360);
        do
        {
          *v29 = __tolower(*v29);
          ++v29;
          --v28;
        }

        while (v28);
      }

      v44 = Count;
      if (Count >= 1)
      {
        v30 = 0;
        do
        {
          if (v4[v30] >= 2uLL)
          {
            v31 = *(a1 + 2344);
            if (v31 >= 1)
            {
              v32 = *(a1 + 2360);
              v33 = &v32[*(a1 + 2352)];
              v34 = &v32[v31];
              v35 = v32;
              do
              {
                v36 = memmem(v35, v34 - v35, v47[v30], v4[v30]);
                if (!v36)
                {
                  break;
                }

                v37 = v36;
                v38 = &v36[-v46];
                if (&v36[-v46] < v32)
                {
                  v38 = v32;
                }

                v39 = &v36[v4[v30]];
                v40 = &v39[v46];
                if (&v39[v46] > v34)
                {
                  v40 = v34;
                }

                v48[2] = v38;
                v48[3] = v40;
                v48[4] = v36;
                v48[5] = v39;
                v41 = &v36[-v33];
                if (v36 < v33)
                {
                  v41 = -1;
                }

                v48[0] = a1 + 288;
                v48[1] = v41;
                v42 = *(*v2 + 48);
                if (v42)
                {
                  v42(*(*v2 + 56), v48);
                }

                v35 = v37 + 1;
              }

              while ((v37 + 1) < v34);
            }
          }

          ++v30;
        }

        while (v30 != v45);
      }

      v17 = *(a1 + 8);
      Count = v44;
      if (pthread_mutex_lock((v2 + 32)))
      {
        goto LABEL_16;
      }
    }

    v21 = "SharedArrayPush: pthread_cond_broadcast failed\n";
    v22 = 122;
  }

LABEL_17:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", v22, 0, v21, v18, v19, v20, v43);
LABEL_18:
  *(v2 + 8) = 0;
  return 0;
}

uint64_t joinSearchThread(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152) + 2368 * a2;
  if (!*v2)
  {
    return 0xFFFFFFFFLL;
  }

  joinThread(*v2);
  if (pthread_mutex_destroy((v2 + 32)) || pthread_cond_destroy((v2 + 96)))
  {
    return 0xFFFFFFFFLL;
  }

  free(*(v2 + 2360));
  return 0;
}

uint64_t appendPayload(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 2344);
  v7 = v6 + a3;
  if (v6 + a3 <= *(a1 + 2336))
  {
    v8 = *(a1 + 2360);
    goto LABEL_5;
  }

  *(a1 + 2336) = v7;
  v8 = reallocf(*(a1 + 2360), v7);
  *(a1 + 2360) = v8;
  if (v8)
  {
    v6 = *(a1 + 2344);
LABEL_5:
    memcpy(&v8[v6], a2, a3);
    result = 0;
    *(a1 + 2344) += a3;
    return result;
  }

  v10 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "appendPayload", 176, 23, *v10, "reallocf", v11, v12, v13);
  *(a1 + 2336) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t ParallelArchiveSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v43);
  v50 = 0u;
  *v51 = 0u;
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  LODWORD(v50) = 1;
  v49 = a1;
  v56 = *(a1 + 8);
  v57 = -1;
  v58 = calloc(v56, 0x940uLL);
  if (v58)
  {
    DWORD2(v50) = 0;
    HIDWORD(v50) = v56;
    v51[0] = calloc(v56, 4uLL);
    if (!v51[0])
    {
      v12 = "SharedArrayInit: malloc failed\n";
      v13 = 55;
      goto LABEL_10;
    }

    if (pthread_mutex_init(&v51[1], 0))
    {
      v12 = "SharedArrayInit: pthread_mutex_init failed\n";
      v13 = 56;
LABEL_10:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", v13, 0, v12, v9, v10, v11, v43);
      goto LABEL_11;
    }

    if (pthread_cond_init(&v55[1], 0))
    {
      v12 = "SharedArrayInit: pthread_cond_init failed\n";
      v13 = 57;
      goto LABEL_10;
    }

    if (v56)
    {
      v40 = 0;
      while (!createSearchThread(&v49, v40))
      {
        if (++v40 >= v56)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_11;
    }

LABEL_50:
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    DefaultNThreads = *(a1 + 4);
    if (!DefaultNThreads)
    {
      DefaultNThreads = getDefaultNThreads();
    }

    DWORD1(v43) = DefaultNThreads;
    v42 = *(a1 + 40);
    *(&v43 + 1) = *(a1 + 32);
    *(&v44 + 1) = v42;
    *&v45 = searchBeginProc;
    *&v46 = searchPayloadProc;
    *(&v46 + 1) = 0;
    *&v47 = searchEndProc;
    v48 = &v49;
    if (!ParallelArchiveRead(&v43, v19, v20, v21, v22, v9, v10, v11))
    {
      goto LABEL_12;
    }

    v17 = "Search failed";
    v18 = 273;
    v14 = 0;
  }

  else
  {
    v14 = *__error();
    v17 = "calloc";
    v18 = 252;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "ParallelArchiveSearch", v18, 23, v14, v17, v15, v16, v43);
LABEL_11:
  LODWORD(v50) = 0;
LABEL_12:
  if (!v56)
  {
    goto LABEL_35;
  }

  for (i = 0; i < v56; ++i)
  {
    if (pthread_mutex_lock(&v51[1]))
    {
      v27 = 91;
      v28 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_19:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", v27, 0, v28, v24, v25, v26, v43);
      v30 = -1;
      goto LABEL_20;
    }

    while (1)
    {
      v29 = DWORD2(v50);
      if (DWORD2(v50))
      {
        break;
      }

      if (pthread_cond_wait(&v55[1], &v51[1]))
      {
        v27 = 94;
        v28 = "SharedArrayPop: pthread_cond_wait failed\n";
        goto LABEL_19;
      }
    }

    --DWORD2(v50);
    v30 = *(v51[0] + (v29 - 1));
    if (pthread_mutex_unlock(&v51[1]))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v33, v34, v35, v43);
LABEL_20:
      LODWORD(v50) = 0;
    }

    v31 = &v58[2368 * v30];
    *(v31 + 293) = 0;
    if (pthread_mutex_lock((v31 + 32)) || (v32 = *(v31 + 6), *(v31 + 6) = v32 + 1, !v32) && pthread_cond_broadcast(v31 + 2) || pthread_mutex_unlock((v31 + 32)))
    {
      LODWORD(v50) = 0;
    }
  }

  if (v56)
  {
    for (j = 0; j < v56; ++j)
    {
      if (joinSearchThread(&v49, j))
      {
        LODWORD(v50) = 0;
      }
    }
  }

LABEL_35:
  if (pthread_mutex_destroy(&v51[1]) || pthread_cond_destroy(&v55[1]))
  {
    LODWORD(v50) = 0;
  }

  else
  {
    free(v51[0]);
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v50)
  {
    v38 = 0;
  }

  else
  {
    v38 = -1;
  }

  if (result >= 0)
  {
    result = v38;
  }

  else
  {
    result = result;
  }

  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t searchBeginProc(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  *(a1 + 148) = -1;
  if (pthread_mutex_lock((a1 + 32)))
  {
    v13 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v14 = 91;
  }

  else
  {
    while (1)
    {
      v15 = *(a1 + 16);
      if (v15)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 96), (a1 + 32)))
      {
        v13 = "SharedArrayPop: pthread_cond_wait failed\n";
        v14 = 94;
        goto LABEL_8;
      }
    }

    v16 = v15 - 1;
    *(a1 + 16) = v16;
    *(a1 + 148) = *(*(a1 + 24) + 4 * v16);
    result = pthread_mutex_unlock((a1 + 32));
    if (!result)
    {
      goto LABEL_9;
    }

    v13 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v14 = 98;
  }

LABEL_8:
  result = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", v14, 0, v13, v10, v11, v12, v20);
  *(a1 + 8) = 0;
LABEL_9:
  v18 = *(a1 + 148);
  if (v18 != -1)
  {
    v19 = (*(a1 + 152) + 2368 * v18);
    memcpy(v19 + 18, a2, 0x890uLL);
    v19[293] = 0;
    v19[294] = a6;
    result = appendPayload(v19, a5, a6);
    if (result)
    {
      *(a1 + 8) = 0;
    }
  }

  return result;
}

uint64_t searchPayloadProc(uint64_t result, const void *a2, size_t a3)
{
  v3 = *(result + 148);
  if (v3 != -1)
  {
    v4 = result;
    result = appendPayload(*(result + 152) + 2368 * v3, a2, a3);
    if (result)
    {
      *(v4 + 8) = 0;
    }
  }

  return result;
}

uint64_t searchEndProc(uint64_t result)
{
  v1 = *(result + 148);
  if (v1 != -1)
  {
    v2 = result;
    v3 = *(result + 152) + 2368 * v1;
    if (**result >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Thread %d processing '%s', size=%zu, header=%zu, capacity=%zu\n", *(v3 + 8), (v3 + 288), *(v3 + 2344), *(v3 + 2352), *(v3 + 2336));
    }

    result = pthread_mutex_lock((v3 + 32));
    if (result || (v4 = *(v3 + 24), *(v3 + 24) = v4 + 1, !v4) && (result = pthread_cond_broadcast((v3 + 96)), result) || (result = pthread_mutex_unlock((v3 + 32)), result))
    {
      *(v2 + 8) = 0;
    }
  }

  return result;
}

uint64_t apfs_scan_diskimage(const char *a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x29EDCA608];
  memset(&v61, 0, sizeof(v61));
  if (snprintf(__str, 0x400uLL, "%s.json", a1) <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 110, 144, 0, "snprintf", v7, v8, v60);
    v12 = 0;
    v11 = 0;
    goto LABEL_71;
  }

  if (stat(__str, &v61) || (v61.st_mode & 0xF000) != 0x8000)
  {
    if (getenv("PC_APFS_DISKIMAGE_MAP") && (__strlcpy_chk(), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000 || (v30 = getenv("MASTERING_TOOLCHAIN_DIR")) != 0 && (snprintf(__str, 0x400uLL, "%s%s/%s", v30, "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000 || (snprintf(__str, 0x400uLL, "%s/%s", "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000)
    {
      v12 = malloc(0x40000uLL);
      if (v12)
      {
        v11 = AATempStreamOpen(0x800000uLL);
        if (v11)
        {
          snprintf(v70, 0x400uLL, "%s %s", __str, a1);
          v35 = popen(v70, "r");
          if (v35)
          {
            v36 = v35;
            while (!feof(v36))
            {
              v37 = fread(v12, 1uLL, 0x40000uLL, v36);
              if (ferror(v36))
              {
                v44 = "reading from tool pipe";
                v45 = 170;
LABEL_86:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", v45, 144, 0, v44, v38, v39, v60);
                AAByteStreamClose(v11);
                pclose(v36);
LABEL_76:
                v46 = 0xFFFFFFFFLL;
                goto LABEL_77;
              }

              if (*(v11 + 3))
              {
                v40 = 0;
                if (v37)
                {
                  v41 = v12;
                  v42 = v37;
                  while (1)
                  {
                    v43 = (*(v11 + 3))(*v11, v41, v42);
                    if (v43 < 1)
                    {
                      break;
                    }

                    v41 += v43;
                    v40 += v43;
                    v42 -= v43;
                    if (!v42)
                    {
                      goto LABEL_68;
                    }
                  }

                  v40 = v43;
                }
              }

              else
              {
                v40 = -1;
              }

LABEL_68:
              if (v40 != v37)
              {
                v44 = "writing tool output";
                v45 = 172;
                goto LABEL_86;
              }
            }

            pclose(v36);
            AAByteStreamSeek(v11, 0, 0);
            goto LABEL_6;
          }

          v54 = *__error();
          v60 = v70;
          v52 = "%s";
          v53 = 164;
        }

        else
        {
          v52 = "temp stream open";
          v53 = 159;
          v54 = 0;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", v53, 144, v54, v52, v33, v34, v60);
LABEL_75:
        AAByteStreamClose(v11);
        goto LABEL_76;
      }

      v49 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 156, 144, *v49, "malloc", v50, v51, v60);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 153, 144, 0, "could not locate the apfs diskimage map tool", v31, v32, v60);
      v12 = 0;
    }

    v11 = 0;
    goto LABEL_75;
  }

  v11 = AAFileStreamOpenWithPath(__str, 0, 0);
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 114, 144, 0, "AAFileStreamOpenWithPath", v9, v10, v60);
    v12 = 0;
    goto LABEL_71;
  }

  v12 = 0;
LABEL_6:
  v68 = 0u;
  *v69 = 0u;
  __src = 0;
  v67 = 0;
  v13 = AAJSONInputStreamOpen(v11);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 27, 144, 0, "AAJSONInputStreamOpen", v18, v19, v60);
    v55 = 0;
    goto LABEL_93;
  }

  v20 = v13;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v13, __s1, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v27 = v65;
    if (!v65)
    {
      AAJSONInputStreamClose(v20);
      v46 = 0;
      goto LABEL_72;
    }

    if (LODWORD(__s1[0]) < 2)
    {
      if (v65 <= 4)
      {
        if (v65 == 2)
        {
          if (strcmp(__s1[1], "volumes"))
          {
            v56 = "bad map";
            v57 = 41;
            goto LABEL_91;
          }
        }

        else if (v65 == 4 && strcmp(__s1[1], "files"))
        {
          v56 = "bad map";
          v57 = 42;
          goto LABEL_91;
        }
      }

      else
      {
        switch(v65)
        {
          case 5:
            v68 = 0u;
            *v69 = 0u;
            *&v69[2] = pc_array_init(16);
            break;
          case 6:
            if (strcmp(__s1[1], "extents"))
            {
              v56 = "bad map";
              v57 = 43;
              goto LABEL_91;
            }

            break;
          case 8:
            v56 = "bad map";
            v57 = 44;
            goto LABEL_91;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      if (v65 == 4)
      {
        v69[1] = *(*&v69[2] - 64);
        if ((a2(&v68, a4) & 0x80000000) != 0)
        {
          v56 = "add_fork";
          v57 = 58;
          goto LABEL_91;
        }

        pc_array_free(*&v69[2]);
        *&v69[2] = 0;
        v27 = v65;
      }

      if (v27 == 6)
      {
        *&v69[2] = pc_array_append(*&v69[2], &__src, v21, v22, v23, v24, v25, v26);
        if (!*&v69[2])
        {
          v56 = "pc_array_append";
          v57 = 67;
          goto LABEL_91;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) != 4)
    {
      goto LABEL_44;
    }

    if (v65 != 7)
    {
      break;
    }

    v29 = __s1[1];
    if (!strcmp(__s1[1], "offset"))
    {
      __src = *(&v63 + 1);
    }

    else
    {
      if (strcmp(v29, "length"))
      {
        v56 = "bad map";
        v57 = 83;
        goto LABEL_91;
      }

      v67 = *(&v63 + 1);
    }

LABEL_44:
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v20, __s1, v21, v22, v23, v24, v25, v26) & 0x80000000) != 0)
    {
      goto LABEL_92;
    }
  }

  if (v65 != 5)
  {
    goto LABEL_44;
  }

  v28 = __s1[1];
  if (!strcmp(__s1[1], "compression"))
  {
    v69[0] = BYTE8(v63);
    goto LABEL_44;
  }

  if (!strcmp(v28, "uncompressed_size"))
  {
    *&v68 = *(&v63 + 1);
    goto LABEL_44;
  }

  if (!strcmp(v28, "size"))
  {
    *(&v68 + 1) = *(&v63 + 1);
    goto LABEL_44;
  }

  v56 = "bad map";
  v57 = 77;
LABEL_91:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", v57, 144, 0, v56, v25, v26, v60);
LABEL_92:
  v55 = v20;
LABEL_93:
  AAJSONInputStreamClose(v55);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 181, 144, 0, "invalid image map JSON", v58, v59, v60);
LABEL_71:
  v46 = 0xFFFFFFFFLL;
LABEL_72:
  AAByteStreamClose(v11);
LABEL_77:
  free(v12);
  v47 = *MEMORY[0x29EDCA608];
  return v46;
}

uint64_t archiveTreeUpdateChilds(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (!v8)
  {
LABEL_16:
    v13 = 0;
    return (v13 << 31 >> 31);
  }

  v9 = (*(a1 + 1) + 48);
  v10 = *a1;
  do
  {
    *(v9 - 11) = -1;
    *v9 = -1;
    v9 += 14;
    --v10;
  }

  while (v10);
  v11 = 0;
  v12 = *(a1 + 1);
  v13 = 1;
  v14 = v12;
  v15 = -1;
  v16 = 0xFFFFFFFFLL;
  while (1)
  {
    v18 = *v14;
    v14 += 14;
    v17 = v18;
    if (v18 == -1)
    {
      break;
    }

    v19 = &v12[14 * v17];
    v20 = v19[12];
    if (v20 == -1)
    {
      if (v19[1] != -1)
      {
        v22 = "node has a first child, but no last child";
        v23 = 1092;
        goto LABEL_20;
      }

      v19[1] = v11;
    }

    else
    {
      v12[14 * v20 + 2] = v11;
    }

    v12[14 * v17 + 12] = v11;
LABEL_15:
    v13 = ++v11 < v8;
    if (v8 == v11)
    {
      goto LABEL_16;
    }
  }

  if (v16 != 0xFFFFFFFFLL)
  {
    v12[14 * v16 + 2] = v11;
    v16 = v11;
    goto LABEL_15;
  }

  if (v15 == -1)
  {
    v16 = v11;
    v15 = v11;
    goto LABEL_15;
  }

  v22 = "tree has a first root, but no last root";
  v23 = 1080;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateChilds", v23, 34, 0, v22, a7, a8, v24);
  return (v13 << 31 >> 31);
}

unsigned int *ArchiveTreeCreateWithRootEntry()
{
  v0 = archiveTreeCreate();
  v3 = v0;
  if (!v0)
  {
    v9 = "archive tree creation";
    v10 = 1134;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateWithRootEntry", v10, 34, 0, v9, v1, v2, v12);
    ArchiveTreeDestroy(v3);
    return 0;
  }

  if ((archiveTreeAppend(v0, -1, "", 0, -1, -1, 68) & 0x80000000) != 0)
  {
    v9 = "inserting root entry";
    v10 = 1137;
    goto LABEL_6;
  }

  archiveTreeUpdateChilds(v3, v4, v5, v6, v7, v8, v1, v2);
  return v3;
}

void *archiveTreeCreate()
{
  v2 = calloc(1uLL, 0x20uLL);
  if (v2)
  {
    v3 = StringTableCreate();
    v2[2] = v3;
    if (!v3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeCreate", 109, 34, 0, "string table creation", v4, v5, v7);
      free(v2);
      return 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeCreate", 108, 34, 0, "malloc", v0, v1, v7);
  }

  return v2;
}

uint64_t archiveTreeAppend(unsigned int *a1, int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (archiveTreeReserve(a1, *a1 + 1))
  {
    v18 = "increasing archive tree storage";
    v19 = 140;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppend", v19, 34, 0, v18, v16, v17, v22);
    return 0xFFFFFFFFLL;
  }

  v21 = *(a1 + 1) + 56 * *a1;
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  if ((StringTableAppend(*(a1 + 2), a3, a4, (v21 + 12), v14, v15, v16, v17) & 0x80000000) != 0)
  {
    v18 = "inserting tree node";
    v19 = 144;
    goto LABEL_3;
  }

  result = 0;
  *v21 = a2;
  *(v21 + 16) = a7;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  ++*a1;
  return result;
}

void ArchiveTreeDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    StringTableDestroy(*(a1 + 16));
    MemBufferDestroy(*(a1 + 24));

    free(a1);
  }
}

unsigned int *ArchiveTreeCreateFromIndex(uint64_t a1, uint64_t a2, int (*a3)(uint64_t, _BYTE *, void), uint64_t a4, int a5, int a6)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v61 = 0;
  v62 = 0;
  v12 = archiveTreeCreate();
  v20 = v12;
  if (!v12)
  {
    v26 = "archive tree creation";
    v27 = 1164;
    goto LABEL_8;
  }

  *&v64 = 0;
  *(&v65 + 1) = 0;
  v66 = 0u;
  v67 = 0u;
  *(&v63 + 1) = a1;
  LODWORD(v63) = 0;
  DWORD1(v63) = a5;
  *(&v64 + 1) = a2;
  *&v65 = archiveTreeFromIndexBeginProc;
  v68 = &v61;
  v61 = v12;
  v62 = 0x1FFFFFFFFLL;
  if (ParallelArchiveRead(&v63, v13, v14, v15, v16, v17, v18, v19) || !HIDWORD(v62))
  {
    v26 = "parsing index";
    v27 = 1178;
    goto LABEL_8;
  }

  if (archiveTreeSort(v20))
  {
    v26 = "sorting tree";
    v27 = 1181;
    goto LABEL_8;
  }

  if (a6 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12u entries in index\n", *v20);
  }

  if (!a3)
  {
    v45 = 0;
LABEL_56:
    archiveTreeUpdateChilds(v20, v21, v22, v23, v24, v25, v18, v19);
    free(v45);
    goto LABEL_10;
  }

  bzero(v69, 0x800uLL);
  v31 = *v20;
  if (!v31)
  {
    v31 = 0;
LABEL_36:
    v46 = calloc(v31, 4uLL);
    if (!v46)
    {
      v28 = *__error();
      v26 = "malloc";
      v27 = 1216;
      goto LABEL_9;
    }

    v45 = v46;
    v47 = *v20;
    if (v47)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = *(v20 + 1);
        if (*(v51 + v48 + 48))
        {
          *(v46 + v49) = v50;
          if (v49 != v50)
          {
            v52 = v51 + 56 * v50;
            v53 = (v51 + v48);
            v54 = *v53;
            v55 = v53[1];
            v56 = v53[2];
            *(v52 + 48) = *(v53 + 6);
            *(v52 + 16) = v55;
            *(v52 + 32) = v56;
            *v52 = v54;
          }

          ++v50;
          v47 = *v20;
        }

        ++v49;
        v48 += 56;
      }

      while (v49 < v47);
      *v20 = v50;
      if (v50)
      {
        v57 = *(v20 + 1);
        v58 = v50;
        do
        {
          v59 = *v57;
          if (v59 != -1)
          {
            LODWORD(v59) = *(v46 + v59);
          }

          *v57 = v59;
          v57 += 14;
          --v58;
        }

        while (v58);
      }
    }

    else
    {
      v50 = 0;
    }

    if (a6 > 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u entries selected\n", v50);
    }

    goto LABEL_56;
  }

  v32 = (v31 + 3) & 0x1FFFFFFFCLL;
  v33 = vdupq_n_s64(v31 - 1);
  v34 = xmmword_2980690D0;
  v35 = xmmword_2980690E0;
  v36 = (*(v20 + 1) + 160);
  v37 = vdupq_n_s64(4uLL);
  do
  {
    v38 = vmovn_s64(vcgeq_u64(v33, v35));
    if (vuzp1_s16(v38, *v33.i8).u8[0])
    {
      *(v36 - 28) = 0;
    }

    if (vuzp1_s16(v38, *&v33).i8[2])
    {
      *(v36 - 14) = 0;
    }

    if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34))).i32[1])
    {
      *v36 = 0;
      v36[14] = 0;
    }

    v34 = vaddq_s64(v34, v37);
    v35 = vaddq_s64(v35, v37);
    v36 += 56;
    v32 -= 4;
  }

  while (v32);
  v39 = 0;
  v40 = 0;
  v41 = *(v20 + 1);
  while (1)
  {
    v42 = *(v41 + v39);
    if (v42 != -1)
    {
      break;
    }

LABEL_27:
    if (ArchiveTreeNodePath(v20, v40, v69, 0x800uLL) < 0)
    {
      v26 = "getting node path";
      v27 = 1209;
      goto LABEL_8;
    }

    if (a3(a4, v69, *(*(v20 + 1) + v39 + 16)) <= 0)
    {
      v44 = 2;
    }

    else
    {
      v44 = 3;
    }

    v41 = *(v20 + 1);
    *(v41 + v39 + 48) = v44;
    v31 = *v20;
LABEL_32:
    ++v40;
    v39 += 56;
    if (v40 >= v31)
    {
      goto LABEL_36;
    }
  }

  v43 = *(v41 + 56 * v42 + 48);
  if (v43)
  {
    *(v41 + v39 + 48) = v43;
    if ((v43 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v26 = "parent node was not processed first";
  v27 = 1202;
LABEL_8:
  v28 = 0;
LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", v27, 34, v28, v26, v18, v19, v60);
  ArchiveTreeDestroy(v20);
  v20 = 0;
LABEL_10:
  v29 = *MEMORY[0x29EDCA608];
  return v20;
}

size_t archiveTreeFromIndexBeginProc(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) != 77)
  {
    v9 = result;
    if (!a4)
    {
      goto LABEL_18;
    }

    v10 = *result;
    v11 = (a3 + 8);
    v12 = -1;
    do
    {
      if ((*(v11 - 1) & 0xDFDFDF) == 0x584449 && *(v11 - 1) == 1)
      {
        v12 = *v11;
      }

      v11 += 129;
      --a4;
    }

    while (a4);
    if (v12 == -1)
    {
LABEL_18:
      v32 = a2 - 112;
      v21 = "entry is missing IDX field: %s";
      v22 = 589;
    }

    else
    {
      v13 = *(result + 8);
      if (v13 != -1)
      {
        v14 = *(v10 + 8) + 56 * v13;
        v15 = v12 - *(v14 + 24);
        if (v15 < *(v14 + 32))
        {
          *(v14 + 32) = v15;
        }
      }

      strncpy(__dst, (a2 + 144), 0x400uLL);
      v16 = strlen(__dst);
      v17 = v16;
      v35 = -1;
      if (v16)
      {
        v18 = 0;
        while (__dst[v16 + v18] != 47)
        {
          --v18;
          if (!(v16 + v18))
          {
            goto LABEL_16;
          }
        }

        v24 = v16 + v18;
        v25 = &__dst[v16 + v18];
        *v25 = 0;
        v19 = v25 + 1;
        if ((archiveTreeFindPath(v10, __dst, &v35) & 0x80000000) == 0)
        {
          v17 = ~v18;
          v20 = v35;
          if (v35 == -1)
          {
            v33 = v19;
            v34 = v10;
            v26 = *v9;
            v27 = __dst;
            while (1)
            {
              v28 = strchr(v27, 47);
              v29 = v28;
              v30 = v28 - v27;
              v31 = v28 ? v28 - v27 : v24;
              if ((archiveTreeAppend(v26, v20, v27, v31, -1, -1, 68) & 0x80000000) != 0)
              {
                break;
              }

              v26 = *v9;
              v20 = **v9 - 1;
              v35 = v20;
              if (v29)
              {
                v27 += v30 + 1;
                v24 -= v30 + 1;
                if (v24)
                {
                  continue;
                }
              }

              v19 = v33;
              v10 = v34;
              goto LABEL_31;
            }

            v21 = "inserting tree node";
            v22 = 640;
            goto LABEL_19;
          }

LABEL_31:
          result = archiveTreeAppend(v10, v20, v19, v17, v12, -1, *(a2 + 4));
          if ((result & 0x80000000) == 0)
          {
            *(v9 + 8) = *v10 - 1;
            goto LABEL_20;
          }

          v21 = "inserting tree node";
          v22 = 650;
          goto LABEL_19;
        }

        v21 = "looking up parent path failed";
        v22 = 624;
      }

      else
      {
LABEL_16:
        if ((archiveTreeFindPath(v10, "", &v35) & 0x80000000) == 0)
        {
          v19 = __dst;
          v20 = v35;
          goto LABEL_31;
        }

        v21 = "looking up parent path failed";
        v22 = 629;
      }
    }

LABEL_19:
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", v22, 34, 0, v21, a7, a8, v32);
    *(v9 + 12) = 0;
  }

LABEL_20:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t archiveTreeSort(_DWORD *a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    if ((archiveTreeSortStringTable(a1) & 0x80000000) != 0)
    {
      v9 = "sort string table";
      v10 = 510;
    }

    else
    {
      if ((archiveTreeUpdateDepth(a1) & 0x80000000) == 0)
      {
        v4 = calloc(*a1, 4uLL);
        v5 = v4;
        if (v4)
        {
          if (*a1)
          {
            v6 = 0;
            do
            {
              v4[v6] = v6;
              ++v6;
              v7 = *a1;
            }

            while (v6 < v7);
          }

          else
          {
            v7 = 0;
          }

          qsort_r(v4, v7, 4uLL, a1, archiveTreeCompareNodesLexProc);
          v16 = *a1;
          if (v16)
          {
            v17 = 0;
            v18 = 0;
            v19 = v5 - 1;
            while (v17)
            {
              v20 = v19[v17];
              v21 = v5[v17];
              if (v20 != v21)
              {
                v22 = v5[v17];
                while (v22 != -1)
                {
                  if (v20 == -1)
                  {
                    break;
                  }

                  v23 = *(a1 + 1);
                  v24 = (v23 + 56 * v20);
                  v25 = (v23 + 56 * v22);
                  if (v24[3] != v25[3])
                  {
                    break;
                  }

                  v20 = *v24;
                  v22 = *v25;
                  if (v20 == v22)
                  {
                    goto LABEL_24;
                  }
                }

                goto LABEL_26;
              }

LABEL_24:
              ArchiveTreeNodePath(a1, v21, v35, 0x400uLL);
              ArchiveTreeNodePath(a1, v19[v17], v34, 0x400uLL);
              *(*(a1 + 1) + 56 * v5[v17] + 48) = v18 - 1;
              v16 = *a1;
LABEL_27:
              if (++v17 >= v16)
              {
                goto LABEL_30;
              }
            }

            v21 = *v5;
LABEL_26:
            *(*(a1 + 1) + 56 * v21 + 48) = v18;
            v18 = (v18 + 1);
            goto LABEL_27;
          }

          v18 = 0;
LABEL_30:
          if ((archiveTreeRemapNodes(a1, v18) & 0x80000000) != 0)
          {
            v14 = "remapping nodes";
            v15 = 544;
          }

          else if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
          {
            v14 = "storing depth in AUX";
            v15 = 547;
          }

          else
          {
            if (*a1)
            {
              v26 = 0;
              do
              {
                v5[v26] = v26;
                ++v26;
                v27 = *a1;
              }

              while (v26 < v27);
            }

            else
            {
              v27 = 0;
            }

            qsort_r(v5, v27, 4uLL, a1, archiveTreeCompareNodesStrProc);
            v28 = *a1;
            if (v28)
            {
              v29 = 0;
              v30 = *(a1 + 1);
              do
              {
                *(v30 + 56 * v5[v29] + 48) = v29;
                ++v29;
              }

              while (v28 != v29);
            }

            if ((archiveTreeRemapNodes(a1, v18) & 0x80000000) == 0)
            {
              v8 = 0;
LABEL_48:
              free(v5);
              goto LABEL_49;
            }

            v14 = "remapping nodes";
            v15 = 559;
          }

          v11 = 0;
        }

        else
        {
          v11 = *__error();
          v14 = "malloc";
          v15 = 517;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", v15, 34, v11, v14, v12, v13, v33);
LABEL_47:
        v8 = 0xFFFFFFFFLL;
        goto LABEL_48;
      }

      v9 = "store AUX in depth";
      v10 = 513;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", v10, 34, 0, v9, v2, v3, v33);
    v5 = 0;
    goto LABEL_47;
  }

  v8 = 0;
LABEL_49:
  v31 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t ArchiveTreeNodePath(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a2 == -1 || *a1 <= a2)
  {
    result = 0;
LABEL_8:
    *(a3 + result) = 0;
    return result;
  }

  v8 = ArchiveTreeNodePath(a1, *(*(a1 + 8) + 56 * a2), a3);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 32);
    v11 = *(v9 + 8) + 16 * *(*(a1 + 8) + 56 * a2 + 12);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v8)
    {
      v14 = v8 + 1;
      if (v8 + 1 + v13 < a4)
      {
        *(a3 + v8) = 47;
LABEL_11:
        memcpy((a3 + v14), (v10 + v12), v13);
        result = v14 + v13;
        goto LABEL_8;
      }
    }

    else if (v13 < a4)
    {
      v14 = 0;
      goto LABEL_11;
    }
  }

  return -1;
}

unsigned int *ArchiveTreeCreateFromArchive(uint64_t a1, uint64_t a2, int a3)
{
  DefaultNThreads = a3;
  v33 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v32, 0, 512);
  v6 = archiveTreeCreate();
  if (v6)
  {
    bzero(v32 + 8, 0x428uLL);
    DWORD2(v32[0]) = 1;
    *&v32[0] = v6;
    *(&v26 + 1) = a1;
    *&v27 = 0;
    LODWORD(v26) = 0;
    DWORD1(v26) = DefaultNThreads;
    *(&v27 + 1) = a2;
    *&v28 = archiveTreeFromArchiveBeginProc;
    *&v30 = archiveTreeFromArchiveEndProc;
    *(&v28 + 1) = archiveTreeFromArchiveBlobProc;
    *&v29 = archiveTreeFromArchivePayloadProc;
    *(&v29 + 1) = archiveTreeFromArchivePaddingProc;
    *(&v30 + 1) = archiveTreeFromArchivePaddingProc;
    v31 = v32;
    if (ParallelArchiveRead(&v26, v7, v8, v9, v10, v11, v12, v13) || !DWORD2(v32[0]))
    {
      v21 = "parsing archive";
      v22 = 1292;
    }

    else
    {
      if (!archiveTreeSort(v6))
      {
        archiveTreeUpdateChilds(v6, v16, v17, v18, v19, v20, v14, v15);
        goto LABEL_12;
      }

      v21 = "sorting tree";
      v22 = 1295;
    }

    v23 = 0;
  }

  else
  {
    v23 = *__error();
    v21 = "archive tree creation";
    v22 = 1274;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromArchive", v22, 34, v23, v21, v14, v15, v26);
  ArchiveTreeDestroy(v6);
  v6 = 0;
LABEL_12:
  v24 = *MEMORY[0x29EDCA608];
  return v6;
}

char *archiveTreeFromArchiveBeginProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 4);
  *(a1 + 48) = 0;
  result = (a1 + 48);
  v8 = *(result - 4);
  *(result - 4) = v8 + a6;
  *(result - 3) = v8;
  *(result - 2) = 0;
  *(result - 1) = v6;
  if ((*(a2 + 1) & 0x80) != 0)
  {
    return strlcpy(result, (a2 + 144), 0x400uLL);
  }

  return result;
}

size_t archiveTreeFromArchiveEndProc(size_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) - v1;
  *(result + 32) = v2;
  v3 = *(result + 44);
  if (v3 != 77)
  {
    v4 = result;
    v5 = (result + 48);
    v6 = strlen((result + 48));
    v7 = v6;
    v21 = -1;
    if (v6 >= 2)
    {
      if (*v5 == 12078)
      {
        v5 = (v4 + 50);
        v7 = v6 - 2;
        if (v6 == 2)
        {
          goto LABEL_9;
        }
      }

LABEL_12:
      v12 = strrchr(v5, 47);
      if (v12)
      {
        v13 = v12;
        v14 = v12 + 1;
        if (v12 == v5)
        {
          goto LABEL_17;
        }

        *v12 = 0;
        if ((archiveTreeFindPath(*v4, v5, &v21) & 0x80000000) == 0)
        {
          *v13 = 47;
          goto LABEL_17;
        }

        v10 = "looking up parent node";
        v11 = 712;
      }

      else
      {
        v14 = v5;
        if ((archiveTreeFindPath(*v4, "", &v21) & 0x80000000) == 0)
        {
LABEL_17:
          if (v21 == -1)
          {
            v16 = -1;
            while (1)
            {
              v17 = strchr(v5, 47);
              v18 = *v4;
              if (!v17)
              {
                break;
              }

              v19 = v17 - v5;
              result = archiveTreeAppend(v18, v16, v5, v17 - v5, -1, -1, 68);
              if ((result & 0x80000000) != 0)
              {
                v10 = "inserting tree node";
                v11 = 741;
                goto LABEL_30;
              }

              v5 += v19 + 1;
              v16 = **v4 - 1;
              v21 = v16;
              v7 -= v19 + 1;
              if (!v7)
              {
                return result;
              }
            }

            result = archiveTreeAppend(v18, v16, v5, v7, *(v4 + 24), *(v4 + 16) - *(v4 + 24), *(v4 + 44));
            if ((result & 0x80000000) == 0)
            {
              return result;
            }

            v10 = "inserting tree node";
            v11 = 748;
          }

          else
          {
            v15 = strlen(v14);
            result = archiveTreeAppend(*v4, v21, v14, v15, *(v4 + 24), *(v4 + 32), *(v4 + 44));
            if ((result & 0x80000000) == 0)
            {
              return result;
            }

            v10 = "inserting tree node";
            v11 = 725;
          }

          goto LABEL_30;
        }

        v10 = "looking up parent node";
        v11 = 719;
      }

LABEL_30:
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", v11, 34, 0, v10, v8, v9, v20);
      *(v4 + 8) = 0;
      return result;
    }

    if (v6 == 1)
    {
      if (*(v4 + 48) != 46)
      {
        v7 = 1;
        goto LABEL_12;
      }

      v5 = (v4 + 49);
    }

LABEL_9:
    result = archiveTreeAppend(*v4, -1, v5, 0, v1, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v10 = "inserting root node";
    v11 = 698;
    goto LABEL_30;
  }

  return result;
}

_DWORD *archiveTreeFromArchiveBlobProc(_DWORD *result, _DWORD *a2, size_t a3)
{
  v3 = result;
  v4 = 10;
  if (!a3 || result[11] != 77)
  {
    goto LABEL_8;
  }

  if ((*a2 & 0xDFDFDF) != 0x464159)
  {
    v4 = 10;
    goto LABEL_8;
  }

  v5 = *(*result + 24);
  result[10] = v5 == 0;
  if (!v5)
  {
    result = MemBufferCreate(a3);
    *(*v3 + 24) = result;
    if (!result)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveBlobProc", 764, 34, 0, "allocating YAF buffer", v6, v7, v8);
      v4 = 2;
LABEL_8:
      v3[v4] = 0;
    }
  }

  return result;
}

unint64_t *archiveTreeFromArchivePayloadProc(unint64_t *result, const void *a2, size_t a3)
{
  result[2] += a3;
  if (*(result + 10))
  {
    v4 = result;
    result = *(*result + 24);
    if (result)
    {
      result = MemBufferFillFromBuffer(result, a3, a2);
      if (result != a3)
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchivePayloadProc", 775, 34, 0, "collecting YAF buffer", v5, v6, v7);
        *(v4 + 2) = 0;
      }
    }
  }

  return result;
}

unsigned int *ArchiveTreeCreateFromDirectory(char *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  DefaultNThreads = a5;
  v46 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = archiveTreeCreate();
  v13 = v12;
  if (!v12)
  {
    v21 = *__error();
    v22 = "archive tree creation";
    v23 = 1323;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromDirectory", v23, 34, v21, v22, v18, v19, v33);
    ArchiveTreeDestroy(v13);
    v13 = 0;
    goto LABEL_32;
  }

  if (a2)
  {
    bzero(buffer, 0x400uLL);
    bzero(v35, 0x800uLL);
    Count = CFArrayGetCount(a2);
    if (Count)
    {
      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
        if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
        {
          v22 = "getting string from includePaths";
          v23 = 1341;
          goto LABEL_30;
        }

        if ((concatPath(v35, 0x800uLL, a1, buffer) & 0x80000000) != 0)
        {
          v22 = "building full path from includePaths";
          v23 = 1342;
          goto LABEL_30;
        }

        memset(&v34, 0, sizeof(v34));
        if (stat(v35, &v34) || (v34.st_mode & 0xF000) != 0x4000)
        {
          v33 = v35;
          v22 = "include path doesn't exist, or is not a directory: %s";
          v23 = 1346;
          goto LABEL_30;
        }

        v20 = strlen(buffer);
        if (archiveTreeAppend(v13, -1, buffer, v20, -1, -1, 68))
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_17;
        }
      }

      v22 = "ArchiveTree append";
      v23 = 1351;
      goto LABEL_30;
    }
  }

  else if (archiveTreeAppend(v12, -1, "", 0, -1, -1, 68))
  {
    v22 = "ArchiveTree append";
    v23 = 1330;
LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

LABEL_17:
  v24 = *v13;
  if (*v13)
  {
    v25 = 0;
    while (1)
    {
      v41 = v25;
      v42 = v24;
      v25 = v24;
      v43 = 0u;
      v44 = 0u;
      *v35 = a6;
      v36 = DefaultNThreads;
      v37 = a1;
      v38 = a3;
      v39 = a4;
      v40 = v13;
      if (expandDirRange(v35))
      {
        break;
      }

      v24 = *v13;
      if (v25 >= *v13)
      {
        goto LABEL_21;
      }
    }

    v22 = "expanding archive tree range";
    v23 = 1370;
    goto LABEL_30;
  }

LABEL_21:
  v43 = 0u;
  v44 = 0u;
  *v35 = a6;
  v36 = DefaultNThreads;
  v37 = a1;
  v38 = a3;
  v39 = a4;
  v40 = v13;
  v41 = 0;
  v42 = v24;
  LODWORD(v43) = 1;
  if (expandDirRange(v35))
  {
    v22 = "expanding archive tree range";
    v23 = 1390;
    goto LABEL_30;
  }

  if (archiveTreeSort(v13))
  {
    v22 = "sorting tree";
    v23 = 1394;
    goto LABEL_30;
  }

  archiveTreeUpdateChilds(v13, v26, v27, v28, v29, v30, v18, v19);
  if (a6 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12u entries in archive tree\n", *v13);
  }

LABEL_32:
  v31 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t expandDirRange(uint64_t a1)
{
  v1 = *(a1 + 44) - *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  if ((v1 + 999) < 0x3E8)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v1 + 999) / 0x3E8u;
  }

  v6 = *a1;
  v5 = *(a1 + 4);
  *(a1 + 56) = 0;
  v7 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if ((v1 + 999) / 0x3E8u <= v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = (v1 + v8 - 1) / v8;
  if (v6 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "Running %u threads to expand %u nodes (%u per thread)\n", v8, v1, (v1 + v8 - 1) / v8);
  }

  if (v8 == 1)
  {
    v10 = archiveTreeCreate();
    *v7 = v10;
    if (v10)
    {
      expandDirRangeThreadProc();
      if (!*(a1 + 72))
      {
        v14 = 1000;
        v38 = 0;
        v13 = "expandDirRange";
        goto LABEL_50;
      }

      if (!archiveTreeAppendTree(*(a1 + 32), *(a1 + 56), 0))
      {
        v2 = 0;
        goto LABEL_51;
      }

      v13 = "append expandDirRange output to main tree";
      v14 = 1003;
    }

    else
    {
      v13 = "archive tree creation";
      v14 = 996;
    }

    v38 = 0;
LABEL_50:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", v14, 34, v38, v13, v11, v12, v48);
    v2 = 0xFFFFFFFFLL;
    goto LABEL_51;
  }

  v15 = calloc(v8, 0x50uLL);
  if (!v15)
  {
    v38 = *__error();
    v13 = "malloc";
    v14 = 1009;
    goto LABEL_50;
  }

  v16 = v15;
  v17 = *(a1 + 40);
  v18 = v8;
  v19 = v15 + 56;
  v20 = v18;
  do
  {
    if (v17 + v9 >= *(a1 + 44))
    {
      v21 = *(a1 + 44);
    }

    else
    {
      v21 = v17 + v9;
    }

    v22 = *(a1 + 48);
    v23 = *(a1 + 64);
    v24 = *(a1 + 16);
    *(v19 - 24) = *(a1 + 32);
    *(v19 - 56) = *a1;
    *(v19 + 8) = v23;
    *(v19 - 8) = v22;
    *(v19 - 40) = v24;
    *(v19 - 4) = v17;
    *(v19 - 3) = v21;
    v25 = archiveTreeCreate();
    *v19 = v25;
    if (!v25)
    {
      v39 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1022, 34, *v39, "malloc", v40, v41, v48);
      v2 = 0xFFFFFFFFLL;
      goto LABEL_46;
    }

    v19 += 80;
    v17 = v21;
    --v20;
  }

  while (v20);
  v26 = 1;
  v27 = v18;
  v28 = v16;
  do
  {
    if (createThread((v28 + 64), expandDirRangeThreadProc, v28, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1030, 34, 0, "create expandDir thread", v29, v30, v48);
      v26 = 0;
    }

    v28 += 80;
    --v27;
  }

  while (v27);
  v31 = v16 + 72;
  v32 = v18;
  do
  {
    v33 = *(v31 - 1);
    if (!v33)
    {
      goto LABEL_33;
    }

    if (joinThread(v33))
    {
      v36 = 1037;
      v37 = "join expandDir thread";
LABEL_31:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", v36, 34, 0, v37, v34, v35, v48);
      v26 = 0;
      goto LABEL_33;
    }

    if (!*v31)
    {
      v36 = 1038;
      v37 = "expandDirRange";
      goto LABEL_31;
    }

LABEL_33:
    v31 += 20;
    --v32;
  }

  while (v32);
  v42 = (v16 + 56);
  v43 = v18;
  do
  {
    if (archiveTreeAppendTree(*(a1 + 32), *v42, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1044, 34, 0, "append expandDirRange output to main tree", v44, v45, v48);
      v26 = 0;
    }

    v42 += 10;
    --v43;
  }

  while (v43);
  if (v26)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

LABEL_46:
  v46 = 56;
  do
  {
    ArchiveTreeDestroy(*&v16[v46]);
    v46 += 80;
    --v18;
  }

  while (v18);
  free(v16);
LABEL_51:
  ArchiveTreeDestroy(*v7);
  *v7 = 0;
  return v2;
}

uint64_t ArchiveTreeMergeAndDestroy(uint64_t a1, unsigned int *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  v8 = calloc((v7 + *a1), 0x38uLL);
  if (!v8)
  {
    v42 = *__error();
    v43 = "malloc";
    v44 = 1435;
    goto LABEL_44;
  }

  if (v7)
  {
    v9 = (v7 + 3) & 0x1FFFFFFFCLL;
    v10 = vdupq_n_s64(v7 - 1);
    v11 = xmmword_2980690D0;
    v12 = xmmword_2980690E0;
    v13 = (*(a2 + 1) + 152);
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 28) = a3;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 14) = a3;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = a3;
        v13[14] = a3;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 56;
      v9 -= 4;
    }

    while (v9);
  }

  if ((archiveTreeAppendTree(a1, a2, 1) & 0x80000000) != 0)
  {
    v43 = "merging trees";
    v44 = 1441;
    goto LABEL_43;
  }

  if ((archiveTreeSortStringTable(a1) & 0x80000000) != 0)
  {
    v43 = "sorting string table";
    v44 = 1444;
    goto LABEL_43;
  }

  if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
  {
    v43 = "storing node depth in AUX";
    v44 = 1447;
    goto LABEL_43;
  }

  v52 = v7 + v6;
  v18 = 0;
  if (v6 | v7)
  {
    v19 = 0;
    v20 = 0;
    v21 = v7 != 0;
    v22 = v6 != 0;
    while (1)
    {
      if (v21)
      {
        v23 = v19 + v6;
        if (!v22)
        {
          goto LABEL_21;
        }

        v24 = archiveTreeCompareNodesStrRec(a1, v20, v19 + v6, 0, 0);
        if ((v24 & 0x80000000) == 0)
        {
          break;
        }
      }

      v30 = *(a1 + 8) + 56 * v20;
      *(v30 + 48) = v18;
      v31 = &v8[14 * v18];
      v32 = *v30;
      v33 = *(v30 + 16);
      v34 = *(v30 + 32);
      *(v31 + 6) = *(v30 + 48);
      *(v31 + 1) = v33;
      *(v31 + 2) = v34;
      *v31 = v32;
      ++v20;
LABEL_24:
      ++v18;
      v21 = v19 < v7;
      v22 = v20 < v6;
      if (v20 >= v6 && v19 >= v7)
      {
        goto LABEL_31;
      }
    }

    if (v24)
    {
LABEL_21:
      v25 = *(a1 + 8) + 56 * v23;
      *(v25 + 48) = v18;
      v26 = &v8[14 * v18];
      v27 = *v25;
      v28 = *(v25 + 16);
      v29 = *(v25 + 32);
      *(v26 + 6) = *(v25 + 48);
      *(v26 + 1) = v28;
      *(v26 + 2) = v29;
      *v26 = v27;
    }

    else
    {
      v35 = *(a1 + 8);
      v36 = (v35 + 56 * v20);
      *(v36 + 12) = v18;
      *(v35 + 56 * v23 + 48) = v18;
      v37 = &v8[14 * v18];
      v38 = *v36;
      v39 = v36[1];
      v40 = v36[2];
      *(v37 + 6) = *(v36 + 6);
      *(v37 + 1) = v39;
      *(v37 + 2) = v40;
      *v37 = v38;
      ++v20;
    }

    ++v19;
    goto LABEL_24;
  }

LABEL_31:
  v45 = *(a1 + 8);
  if (!v52)
  {
LABEL_39:
    free(v45);
    v41 = 0;
    *(a1 + 8) = v8;
    *a1 = v18;
    *(a1 + 4) = v52;
    v8 = 0;
    goto LABEL_45;
  }

  v46 = v7 + v6;
  v47 = *(a1 + 8);
  while (1)
  {
    v48 = v47[12];
    if (v48 != -1)
    {
      break;
    }

LABEL_38:
    v47 += 14;
    if (!--v46)
    {
      goto LABEL_39;
    }
  }

  if (v48 < v18)
  {
    v49 = *v47;
    if (*v47 != -1)
    {
      v49 = *(v45 + 14 * v49 + 12);
    }

    v8[14 * v48] = v49;
    goto LABEL_38;
  }

  v43 = "invalid new index";
  v44 = 1490;
LABEL_43:
  v42 = 0;
LABEL_44:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", v44, 34, v42, v43, v16, v17, v51);
  v41 = 0xFFFFFFFFLL;
LABEL_45:
  free(v8);
  ArchiveTreeDestroy(a2);
  return v41;
}

uint64_t archiveTreeAppendTree(unsigned int *a1, unsigned int *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  if (archiveTreeReserve(a1, *a1 + *a2))
  {
    v8 = "increasing archive tree storage";
    v9 = 164;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppendTree", v9, 34, 0, v8, v6, v7, v17);
    return 0xFFFFFFFFLL;
  }

  v18 = 0;
  if ((StringTableAppendTable(*(a1 + 2), *(a2 + 2), &v18) & 0x80000000) != 0)
  {
    v8 = "merging string tables";
    v9 = 168;
    goto LABEL_5;
  }

  memcpy((*(a1 + 1) + 56 * *a1), *(a2 + 1), 56 * *a2);
  v11 = *a2;
  v12 = *a1;
  if (*a2)
  {
    v13 = *(a1 + 1);
    v14 = *a2;
    v15 = *a1;
    do
    {
      v16 = (v13 + 56 * v15);
      v16[3] += v18;
      if (a3)
      {
        if (*v16 != -1)
        {
          *v16 += v12;
        }
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  result = 0;
  *a1 = v12 + v11;
  return result;
}

uint64_t archiveTreeSortStringTable(unsigned int **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = StringTableSort(a1[2], &v10);
  if (v4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSortStringTable", 397, 34, 0, "string table sorting", v2, v3, v9);
    v5 = v10;
  }

  else
  {
    v7 = *a1;
    v5 = v10;
    if (v7)
    {
      v8 = a1[1] + 3;
      do
      {
        *v8 = v5[*v8];
        v8 += 14;
        --v7;
      }

      while (v7);
    }
  }

  free(v5);
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t archiveTreeUpdateDepth(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v3 = (v1 + 3) & 0x1FFFFFFFCLL;
  v4 = vdupq_n_s64(v1 - 1);
  v5 = xmmword_2980690D0;
  v6 = xmmword_2980690E0;
  v7 = (*(a1 + 1) + 156);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    v9 = vmovn_s64(vcgeq_u64(v4, v6));
    if (vuzp1_s16(v9, *v4.i8).u8[0])
    {
      *(v7 - 28) = -1;
    }

    if (vuzp1_s16(v9, *&v4).i8[2])
    {
      *(v7 - 14) = -1;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
    {
      *v7 = -1;
      v7[14] = -1;
    }

    v5 = vaddq_s64(v5, v8);
    v6 = vaddq_s64(v6, v8);
    v7 += 56;
    v3 -= 4;
  }

  while (v3);
  v10 = 0;
  while ((archiveTreeUpdateNodeDepth(a1, v10) & 0x80000000) == 0)
  {
    if (++v10 >= *a1)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateDepth", 218, 34, 0, "update node depth", v11, v12, v14);
  return 0xFFFFFFFFLL;
}

uint64_t ArchiveTreePrune(unsigned int *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
  {
    v31 = "updating depth field";
    v32 = 1520;
LABEL_38:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", v32, 34, 0, v31, v6, v7, v33);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 1);
      v12 = -1;
      do
      {
        v13 = *(v11 + v8 + 44);
        if (v13 == a2)
        {
          if (v12 != -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", 1530, 34, 0, "invalid prune operation: more than one node at depth %u", v6, v7, a2);
            return 0xFFFFFFFFLL;
          }

          *(v11 + v8) = -1;
          if ((StringTableAppend(*(a1 + 2), "", 0, (v11 + v8 + 12), v4, v5, v6, v7) & 0x80000000) != 0)
          {
            v31 = "inserting new root name string";
            v32 = 1536;
            goto LABEL_38;
          }

          v11 = *(a1 + 1);
          v13 = *(v11 + v8 + 44);
          v12 = v9;
        }

        v14 = v13 >= a2;
        if (v13 < a2)
        {
          v15 = -1;
        }

        else
        {
          v15 = v10;
        }

        if (v14)
        {
          ++v10;
        }

        *(v11 + v8 + 48) = v15;
        ++v9;
        v16 = *a1;
        v8 += 56;
      }

      while (v9 < v16);
      if (*a1)
      {
        v17 = *(a1 + 1);
        v18 = v17;
        v19 = *a1;
        do
        {
          if (v18[12] != -1 && *v18 != -1)
          {
            *v18 = v17[14 * *v18 + 12];
          }

          v18 += 14;
          --v19;
        }

        while (v19);
        v20 = 0;
        for (i = 0; i < v16; ++i)
        {
          v22 = *(a1 + 1);
          v23 = (v22 + v20);
          v24 = *(v22 + v20 + 48);
          if (v24 != -1)
          {
            if (v24 >= v10 || i < v24)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreePackNodes", 424, 34, 0, "invalid new index", v6, v7, v33);
              v31 = "remapping tree nodes";
              v32 = 1543;
              goto LABEL_38;
            }

            if (i > v24)
            {
              v26 = v22 + 56 * v24;
              v27 = *v23;
              v28 = v23[1];
              v29 = v23[2];
              *(v26 + 48) = *(v23 + 6);
              *(v26 + 16) = v28;
              *(v26 + 32) = v29;
              *v26 = v27;
              v16 = *a1;
            }
          }

          v20 += 56;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    *a1 = v10;
  }

  return result;
}

size_t ArchiveTreeInsert(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  result = strlen(__s);
  if (result)
  {
    v5 = result;
    while (__s[v5 - 1] == 47)
    {
      if (!--v5)
      {
        return 0;
      }
    }

    if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
    {
      v9 = "updating tree depth";
      v10 = 1572;
      goto LABEL_14;
    }

    if (!*a1 || (v8 = *(a1 + 8), v8[11]) || *v8 != -1)
    {
      v9 = "invalid input for ArchiveTreeInsert";
      v10 = 1575;
      goto LABEL_14;
    }

    if ((archiveTreeAppend(a1, -1, "", 0, -1, -1, 68) & 0x80000000) != 0)
    {
      v9 = "inserting root node";
      v10 = 1579;
      goto LABEL_14;
    }

    v13 = 0;
    v14 = 0;
    v15 = *a1 - 1;
    while (1)
    {
      if (__s[v13] && __s[v13] != 47)
      {
        ++v13;
      }

      else
      {
        if (v13 != v14)
        {
          if (v13 == v5)
          {
            if ((StringTableAppend(*(a1 + 16), &__s[v14], v13 - v14, (*(a1 + 8) + 12), v11, v12, v6, v7) & 0x80000000) != 0)
            {
              v9 = "inserting string";
              v10 = 1596;
              goto LABEL_14;
            }

            **(a1 + 8) = v15;
          }

          else
          {
            if ((archiveTreeAppend(a1, v15, &__s[v14], v13 - v14, -1, -1, 68) & 0x80000000) != 0)
            {
              v9 = "inserting new node";
              v10 = 1603;
LABEL_14:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", v10, 34, 0, v9, v6, v7, v16);
              return 0xFFFFFFFFLL;
            }

            v15 = *a1 - 1;
          }
        }

        v14 = ++v13;
      }

      if (v13 > v5)
      {
        archiveTreeSort(a1);
        return 0;
      }
    }
  }

  return result;
}

unsigned int *ArchiveTreeSize(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

size_t ArchiveTreeYAF(size_t result, _BYTE *a2, unint64_t a3)
{
  *a2 = 0;
  if (result)
  {
    v3 = result;
    result = *(result + 24);
    if (result)
    {
      DataPtr = MemBufferGetDataPtr(result);
      DataSize = MemBufferGetDataSize(*(v3 + 24));
      if (DataSize + 1 <= a3)
      {
        v8 = DataSize;
        memcpy(a2, DataPtr, DataSize);
        a2[v8] = 0;

        return strlen(a2);
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

uint64_t ArchiveTreeNodeEntryType(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 8) + 56 * a2 + 16);
  }
}

uint64_t ArchiveTreeNodeArchiveID(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 8) + 56 * a2 + 40);
  }
}

uint64_t ArchiveTreeNodeSegment(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 56 * a2 + 24);
  }

  v4 = 0;
  if (a4)
  {
    *a4 = *(*(a1 + 8) + 56 * a2 + 32);
  }

  return v4;
}

uint64_t archiveTreeReserve(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  if (v3)
  {
    v5 = v3 + (v3 >> 1);
  }

  else
  {
    v5 = 256;
  }

  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(a1 + 4) = v5;
  v6 = reallocf(*(a1 + 8), 56 * v5);
  *(a1 + 8) = v6;
  if (v6)
  {
    return 0;
  }

  v8 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeReserve", 122, 34, *v8, "malloc", v9, v10, v2);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t archiveTreeFindPath(uint64_t a1, const char *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(__s1, 0x400uLL);
  if (!*a1)
  {
    goto LABEL_17;
  }

  v6 = *a1 - 1;
  while (1)
  {
    if (ArchiveTreeNodePath(a1, v6, __s1, 0x400uLL) < 0)
    {
      v15 = 243;
      goto LABEL_19;
    }

    v9 = strcmp(__s1, a2);
    if (!v9)
    {
      v12 = v6;
LABEL_21:
      if (a3)
      {
        *a3 = v12;
      }

      result = 1;
      goto LABEL_24;
    }

    if (v9 < 0)
    {
      break;
    }

    v6 = *(*(a1 + 8) + 56 * v6);
    if (v6 == -1)
    {
      v6 = 0;
      break;
    }
  }

  v10 = *a1 - v6;
  if (v10 < 2)
  {
LABEL_17:
    result = 0;
    goto LABEL_24;
  }

  v11 = v10 >> 1;
  while (1)
  {
    v12 = v6 + v11;
    if (v6 + v11 < *a1)
    {
      break;
    }

    v11 >>= 1;
LABEL_16:
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if ((ArchiveTreeNodePath(a1, v6 + v11, __s1, 0x400uLL) & 0x8000000000000000) == 0)
  {
    v13 = strcmp(__s1, a2);
    if (!v13)
    {
      goto LABEL_21;
    }

    v11 >>= v13 > 0;
    if (v13 <= 0)
    {
      v6 = v12;
    }

    goto LABEL_16;
  }

  v15 = 262;
LABEL_19:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFindPath", v15, 34, 0, "invalid path", v7, v8, v17);
  result = 0xFFFFFFFFLL;
LABEL_24:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t archiveTreeRemapNodes(unsigned int *a1, size_t __count)
{
  v2 = __count;
  v24 = *MEMORY[0x29EDCA608];
  v4 = __count;
  v5 = calloc(__count, 0x38uLL);
  v8 = v5;
  if (v5)
  {
    if (v2)
    {
      v9 = v5 + 12;
      do
      {
        *(v9 - 3) = -1;
        *v9 = -1;
        *(v9 + 12) = -1;
        *(v9 + 20) = -1;
        v9 += 56;
        --v4;
      }

      while (v4);
    }

    v10 = *a1;
    if (v10)
    {
      v11 = *(a1 + 1);
      v12 = v11 + 24;
      do
      {
        v13 = *(v12 + 24);
        if (v13 > v2)
        {
          v19 = "invalid new node index";
          v20 = 458;
          v18 = 0;
          goto LABEL_25;
        }

        v14 = &v5[56 * v13];
        if (!*(v14 + 4))
        {
          *(v14 + 4) = *(v12 - 8);
        }

        if (*(v14 + 3) == -1)
        {
          *(v14 + 3) = *v12;
        }

        if (*(v14 + 4) == -1)
        {
          *(v14 + 4) = *(v12 + 8);
        }

        if (*(v14 + 3) == -1)
        {
          *(v14 + 3) = *(v12 - 12);
        }

        if (*v14 == -1)
        {
          v15 = *(v12 - 24);
          if (v15 != -1)
          {
            *v14 = *(v11 + 56 * v15 + 48);
          }
        }

        v12 += 56;
        --v10;
      }

      while (v10);
      v16 = 0;
      do
      {
        ArchiveTreeNodePath(a1, v16++, v23, 0x400uLL);
      }

      while (v16 < *a1);
    }

    free(*(a1 + 1));
    result = 0;
    *(a1 + 1) = v8;
    *a1 = v2;
    a1[1] = v2;
  }

  else
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 443;
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeRemapNodes", v20, 34, v18, v19, v6, v7, v22);
    free(v8);
    result = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t archiveTreeCompareNodesLex(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 == a3)
  {
    v3 = 0;
LABEL_8:
    LODWORD(result) = 0;
    goto LABEL_24;
  }

  v3 = 0;
  while (1)
  {
    if (a2 == -1 || a3 == -1)
    {
      if (a2 == -1)
      {
        LODWORD(result) = -1;
      }

      else
      {
        LODWORD(result) = 1;
      }

      goto LABEL_24;
    }

    v7 = *(a1 + 8);
    v8 = (v7 + 56 * a2);
    v9 = v8[11];
    v10 = (v7 + 56 * a3);
    v11 = v10[11];
    if (v9 <= v11)
    {
      break;
    }

    a2 = *v8;
    v3 = 1;
    if (a2 == a3)
    {
      goto LABEL_8;
    }
  }

  if (v11 <= v9)
  {
    v15 = a2;
    ArchiveTreeNodePath(a1, a2, v22, 0x400uLL);
    ArchiveTreeNodePath(a1, a3, v21, 0x400uLL);
    if (!v9 || (LODWORD(result) = archiveTreeCompareNodesLex(a1, *(*(a1 + 8) + 56 * v15), *(*(a1 + 8) + 56 * a3)), !result))
    {
      v16 = *(a1 + 8);
      v17 = *(v16 + 56 * v15 + 12);
      LODWORD(v16) = *(v16 + 56 * a3 + 12);
      v18 = v17 >= v16;
      v19 = v17 > v16;
      if (v18)
      {
        LODWORD(result) = v19;
      }

      else
      {
        LODWORD(result) = -1;
      }
    }

LABEL_24:
    if (v3 <= result)
    {
      result = result;
    }

    else
    {
      result = v3;
    }

    goto LABEL_27;
  }

  v13 = archiveTreeCompareNodesLex(a1, a2, *v10);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v3 <= v14)
  {
    result = v14;
  }

  else
  {
    result = v3;
  }

LABEL_27:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t expandDirRangeThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v55 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  *(v0 + 72) = 1;
  v1 = *(v0 + 40);
  if (v1 < *(v0 + 44))
  {
    v2 = "skip dataless dir: %s";
    while (1)
    {
      if (ArchiveTreeNodePath(*(v0 + 32), v1, __s, 0x400uLL) < 0)
      {
        v32 = "path too long";
        v33 = 960;
        goto LABEL_73;
      }

      v5 = *(v0 + 56);
      v6 = *(v0 + 48);
      v7 = *(v0 + 8);
      v47 = *(v0 + 24);
      v48 = *(v0 + 16);
      v8 = strlen(v7);
      v9 = strlen(__s);
      __memcpy_chk();
      v54[v8] = 0;
      if (v9)
      {
        if (v8 + v9 - 2047 <= 0xFFFFFFFFFFFFF7FFLL)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 812, 34, 0, "path too long: %s/%s", v10, v11, v7);
          goto LABEL_72;
        }

        v54[v8] = 47;
        memcpy(&v54[v8 + 1], __s, v9);
        v12 = v9 + v8 + 1;
        v54[v12] = 0;
      }

      else
      {
        v12 = v8;
      }

      memset(&v51, 0, sizeof(v51));
      if (lstat(v54, &v51) < 0)
      {
        v34 = *__error();
        v37 = "lstat %s";
        v38 = 822;
        goto LABEL_69;
      }

      if (statIsDataless(v51.st_flags))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 828, 34, v2, v13, v14, v15, v54);
        goto LABEL_61;
      }

      v45 = v6;
      v16 = v2;
      v17 = opendir(v54);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      memset(&v53, 0, 512);
      v50 = 0;
      if (!readdir_r(v17, &v53, &v50))
      {
        v46 = v12 + 1;
        v21 = &v54[v12];
        while (2)
        {
          if (!v50)
          {
            goto LABEL_60;
          }

          d_namlen = v53.d_namlen;
          if (v53.d_namlen == 1 && v53.d_name[0] == 46 || v53.d_namlen == 2 && v53.d_name[0] == 46 && v53.d_name[1] == 46)
          {
            goto LABEL_57;
          }

          v23 = v46 + v53.d_namlen;
          if (v23 >= 0x800)
          {
            v39 = "path too long";
            v40 = 865;
LABEL_67:
            v41 = 0;
            goto LABEL_71;
          }

          *v21 = 47;
          memcpy(v21 + 1, v53.d_name, d_namlen);
          v54[v23] = 0;
          memset(&v49, 0, sizeof(v49));
          if (lstat(v54, &v49))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 872, 34, "stat failed: %s", v24, v25, v26, v54);
            goto LABEL_57;
          }

          if ((v49.st_mode & 0xF000) == 0x4000 && v49.st_dev != v51.st_dev)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 877, 34, "skip mounted dir: %s", v24, v25, v26, v54);
LABEL_32:
            if (v48)
            {
              v48(v47, &v54[v8 + 1], 0);
            }

            goto LABEL_57;
          }

          if (statIsDataless(v49.st_flags))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 888, 34, "skip dataless: %s", v27, v19, v20, v54);
            goto LABEL_32;
          }

          if (v53.d_type > 5u)
          {
            if (v53.d_type > 9u)
            {
              if (v53.d_type == 10)
              {
                AAEntryType = 76;
              }

              else
              {
                if (v53.d_type != 12)
                {
                  goto LABEL_75;
                }

                AAEntryType = 83;
              }
            }

            else if (v53.d_type == 6)
            {
              AAEntryType = 66;
            }

            else
            {
              if (v53.d_type != 8)
              {
                goto LABEL_75;
              }

              AAEntryType = 70;
            }
          }

          else
          {
            if (v53.d_type <= 1u)
            {
              if (v53.d_type)
              {
                AAEntryType = 80;
              }

              else
              {
                AAEntryType = getAAEntryType(v49.st_mode);
                if (!AAEntryType)
                {
LABEL_75:
                  v44 = v54;
                  v39 = "invalid entry type: %s";
                  v40 = 910;
                  goto LABEL_67;
                }
              }

              goto LABEL_49;
            }

            if (v53.d_type != 2)
            {
              if (v53.d_type != 4)
              {
                goto LABEL_75;
              }

              AAEntryType = 68;
              goto LABEL_51;
            }

            AAEntryType = 67;
          }

LABEL_49:
          if (!v45 && AAEntryType != 68)
          {
            goto LABEL_57;
          }

LABEL_51:
          if ((v45 != 1 || AAEntryType != 68) && (!v48 || v48(v47, &v54[v8 + 1], AAEntryType) >= 1))
          {
            if (archiveTreeAppend(v5, v1, v53.d_name, d_namlen, -1, -1, AAEntryType))
            {
              v39 = "ArchiveTree append";
              v40 = 920;
              goto LABEL_67;
            }

            *v21 = 0;
          }

LABEL_57:
          if (readdir_r(v18, &v53, &v50))
          {
            break;
          }

          continue;
        }
      }

      if (*__error() != 11)
      {
        v41 = *__error();
        v39 = "readdir_r";
        v40 = 846;
LABEL_71:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", v40, 34, v41, v39, v19, v20, v44);
        closedir(v18);
        goto LABEL_72;
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 845, 34, "readdir on dataless directory: %s", v29, v30, v31, v54);
LABEL_60:
      closedir(v18);
      v2 = v16;
LABEL_61:
      if (++v1 >= *(v0 + 44))
      {
        goto LABEL_74;
      }
    }

    v34 = *__error();
    v37 = "opendir %s";
    v38 = 835;
LABEL_69:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", v38, 34, v34, v37, v35, v36, v54);
LABEL_72:
    v32 = "expand directory";
    v33 = 961;
LABEL_73:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRangeThreadProc", v33, 34, 0, v32, v3, v4, v44);
    *(v0 + 72) = 0;
  }

LABEL_74:
  v42 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t archiveTreeUpdateNodeDepth(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  v5 = (v4 + 56 * a2);
  if (v5[11] != -1)
  {
    return 0;
  }

  v8 = *v5;
  if (*v5 == -1)
  {
    v11 = v4 + 56 * a2;
    result = 0;
    if (*(*(*(a1 + 16) + 8) + 16 * v5[3] + 8))
    {
      *(v11 + 44) = 1;
    }

    else
    {
      *(v11 + 44) = 0;
    }
  }

  else if ((archiveTreeUpdateNodeDepth(a1, *v5) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateNodeDepth", 198, 34, 0, "update parent depth", v9, v10, v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *(*(a1 + 8) + 56 * a2 + 44) = *(*(a1 + 8) + 56 * v8 + 44) + 1;
  }

  return result;
}

uint64_t archiveTreeCompareNodesStrRec(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * a2 + 44);
  v11 = *(v9 + 56 * a3 + 44);
  if (v10 <= v11)
  {
    v12 = a4;
    if (v11 > v10)
    {
      do
      {
        LODWORD(v7) = *(v9 + 56 * v7);
        --v11;
      }

      while (v11 > v10);
      a5 = 47;
    }

    v11 = *(v9 + 56 * a2 + 44);
  }

  else
  {
    do
    {
      LODWORD(v8) = *(v9 + 56 * v8);
      --v10;
    }

    while (v10 > v11);
    v12 = 47;
  }

  if (v11 < 2 || (result = archiveTreeCompareNodesStrRec(a1, *(v9 + 56 * v8), *(v9 + 56 * v7), 47, 47), !result))
  {
    v14 = *(v9 + 56 * v8 + 12);
    v15 = *(a1 + 16);
    v16 = *(v15 + 8);
    v17 = *(v16 + 16 * v14 + 8);
    v18 = *(v9 + 56 * v7 + 12);
    v19 = *(v16 + 16 * v18 + 8);
    if (v17 == v19)
    {
      if (v14 < v18)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v14 == v18)
      {
        return (v12 - a5);
      }

      else
      {
        return v20;
      }
    }

    else
    {
      v21 = *(v15 + 32);
      v22 = (v21 + *(v16 + 16 * v14));
      v23 = (v21 + *(v16 + 16 * v18));
      if (v17 >= v19)
      {
        LOBYTE(v12) = v22[v19];
        v17 = *(v16 + 16 * v18 + 8);
      }

      else
      {
        LOBYTE(a5) = v23[v17];
      }

      LODWORD(result) = memcmp(v22, v23, v17);
      if (result)
      {
        return result;
      }

      else
      {
        return (v12 - a5);
      }
    }
  }

  return result;
}

uint64_t aaByteStreamSimulate(void *a1)
{
  v1 = a1[11];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamWrite(AAByteStream s, const void *buf, size_t nbyte)
{
  v3 = *(s + 3);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

uint64_t aaFileStreamGetFD(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 == aaFileStreamClose || v1 == aaTempFileStreamClose)
  {
    return **a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaFileStreamClose(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }

  return 0;
}

uint64_t aaTempFileStreamClose(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
      unlink(a1 + 12);
    }

    free(a1);
  }

  return 0;
}

ssize_t AAByteStreamPWrite(AAByteStream s, const void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 5);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamRead(AAByteStream s, void *buf, size_t nbyte)
{
  v3 = *(s + 2);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamPRead(AAByteStream s, void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

void AAByteStreamCancel(AAByteStream s)
{
  v1 = *(s + 7);
  if (v1)
  {
    v1(*s);
  }
}

int AAByteStreamClose(AAByteStream s)
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

uint64_t AAByteStreamFlush(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamTruncate(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AAFileStreamOpenWithFD(int fd, int automatic_close)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0xCuLL);
  v6 = v5;
  if (v4 && v5)
  {
    *v5 = fd;
    v5[1] = automatic_close;
    v5[2] = 0;
    *v4 = v5;
    v4[1] = aaFileStreamClose;
    v4[2] = aaFileStreamRead;
    v4[3] = aaFileStreamWrite;
    v4[4] = aaFileStreamPRead;
    v4[5] = aaFileStreamPWrite;
    v4[7] = aaFileStreamAbort;
    v4[6] = aaFileStreamSeek;
    v4[8] = aaFileStreamTruncate;
    v4[9] = aaFileStreamFlush;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithFD", 402, 17, *v7, "malloc", v8, v9, v11);
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t aaFileStreamRead(int *a1, void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = read(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamRead", 92, 17, "aaFileStreamRead err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t aaFileStreamWrite(int *a1, const void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = write(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamWrite", 104, 17, "aaFileStreamWrite err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t aaFileStreamPRead(int *a1, void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pread(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPRead", 116, 17, "aaFileStreamPRead err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

uint64_t aaFileStreamPWrite(int *a1, const void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pwrite(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPWrite", 128, 17, "aaFileStreamPWrite err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

off_t aaFileStreamSeek(int *a1, off_t a2, int a3)
{
  if (a1[2])
  {
    return -1;
  }

  else
  {
    return lseek(*a1, a2, a3);
  }
}

uint64_t aaFileStreamTruncate(int *a1, off_t a2)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ftruncate(*a1, a2);
  }
}

uint64_t aaFileStreamFlush(int *a1)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = fsync(*a1);
  if (result)
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamFlush", 151, 17, *v3, "fsync", v4, v5, v1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

AAByteStream AAFileStreamOpenWithPath(const char *path, int open_flags, mode_t open_mode)
{
  v3 = path;
  v4 = open(path, open_flags, open_mode);
  if (v4 < 0)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithPath", 428, 17, *v7, "open: %s", v8, v9, v3);
  }

  else
  {
    v5 = v4;
    result = AAFileStreamOpenWithFD(v4, 1);
    if (result)
    {
      return result;
    }

    close(v5);
  }

  return 0;
}

void *AATempFileStreamOpenWithDirectory(const char *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = malloc(0x40CuLL);
  v4 = v3;
  if (!v2 || !v3)
  {
    v9 = *__error();
    v7 = "malloc";
    v8 = 447;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATempFileStreamOpenWithDirectory", v8, 17, v9, v7, v5, v6, v12);
    free(v2);
    free(v4);
    return 0;
  }

  memset_s(v3, 0x40CuLL, 0, 0x40CuLL);
  if (a1)
  {
    memset(&v13, 0, sizeof(v13));
    if (!realpath_DARWIN_EXTSN(a1, v4 + 12) || stat(v4 + 12, &v13) || (v13.st_mode & 0xF000) != 0x4000)
    {
      v12 = a1;
      v7 = "invalid temp_dir: %s";
      v8 = 457;
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }
  }

  else if ((getTempDir(v4 + 12, 0x400uLL) & 0x80000000) != 0)
  {
    v7 = "get temp dir";
    v8 = 462;
    goto LABEL_15;
  }

  if (__strlcat_chk() >= 0x400)
  {
    v12 = v4 + 12;
    v7 = "Invalid temp dir path: %s";
    v8 = 464;
    goto LABEL_15;
  }

  v10 = mkostemp(v4 + 12, 0x1000000);
  *v4 = v10;
  if (v10 < 0)
  {
    v9 = *__error();
    v7 = "mkostemp";
    v8 = 466;
    goto LABEL_16;
  }

  *v2 = v4;
  v2[1] = aaTempFileStreamClose;
  v2[2] = aaFileStreamRead;
  v2[3] = aaFileStreamWrite;
  v2[4] = aaFileStreamPRead;
  v2[5] = aaFileStreamPWrite;
  v2[7] = aaFileStreamAbort;
  v2[6] = aaFileStreamSeek;
  v2[8] = aaFileStreamTruncate;
  v2[9] = aaFileStreamFlush;
  return v2;
}

size_t PCompressLZBITMAPEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZBITMAPDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

void *OSHA1StreamCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    CC_SHA1_Deprecated_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc", v9, v10, v12);
  }

  return v7;
}

void OSHA1StreamDestroy(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    CC_SHA1_Deprecated_Final(md, c);

    free(c);
  }
}

uint64_t OSHA1StreamWrite(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  CC_SHA1_Deprecated_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t OSHA1StreamAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    if (v2)
    {
      result = v2(*(result + 120));
    }

    *(v1 + 96) = 1;
  }

  return result;
}

uint64_t *IMagicStreamCreate(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic", v11, v12, v17);
      free(v9);
      return 0;
    }

    else
    {
      *v9 = v10;
      v9[1] = v10;
      v9[3] = a1;
      v9[4] = a2;
      v9[5] = a3;
    }
  }

  else
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v13, "malloc", v14, v15, v17);
  }

  return v9;
}

size_t IMagicStreamRead(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *(a1 + 16))
  {
    return -1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memcpy(__dst, (a1 + *a1 - v8 + 48), v4);
    *(a1 + 8) -= v4;
    if (v8 < a3)
    {
      v9 = (*(a1 + 24))(*(a1 + 40), &__dst[v4], a3 - v4);
      if (v9 < 0)
      {
        return -1;
      }

      else
      {
        v4 += v9;
      }
    }

    return v4;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 40);

  return v10(v11);
}

uint64_t IMagicStreamAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = v2(*(result + 40));
    }

    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t IFileStreamCreateWithFilename(const char *a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = 0x1FFFFFFFFLL;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v12 = "pthread_mutex_init";
      v13 = 293;
    }

    else
    {
      v16 = open(a1, 0);
      *v7 = v16;
      if (v16 < 0)
      {
        v14 = *__error();
        v17 = a1;
        v12 = "%s";
        v13 = 297;
        goto LABEL_9;
      }

      clampIfRegularFile(v7);
      if ((seekTo(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 303;
    }

    v14 = 0;
  }

  else
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 282;
  }

LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v13, 29, v14, v12, v10, v11, v17);
  IFileStreamDestroy(v7);
  return 0;
}

uint64_t clampIfRegularFile(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(*a1, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x8000)
  {
    st_size = v4.st_size;
    if (*(a1 + 16) > v4.st_size)
    {
      *(a1 + 16) = v4.st_size;
    }

    if (*(a1 + 24) > st_size)
    {
      *(a1 + 24) = st_size;
    }
  }

  return result;
}

uint64_t seekTo(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v6 = lseek(*a1, a2, 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    *(a1 + 32) = v6;
LABEL_5:
    if (v9 == a2)
    {
      return 0;
    }

    v10 = "pos not reached";
    v11 = 261;
    goto LABEL_11;
  }

  if (*__error() != 32)
  {
    v12 = *__error();
    v10 = "lseek failed";
    v11 = 258;
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 <= a2)
  {
    v13 = valloc(0x4000uLL);
    if (!v13)
    {
      v12 = *__error();
      v10 = "malloc";
      v11 = 244;
      goto LABEL_13;
    }

    for (i = v13; v9 < a2; *(a1 + 32) = v9)
    {
      if (v9 + 0x4000 <= a2)
      {
        v15 = 0x4000;
      }

      else
      {
        v15 = a2 - v9;
      }

      v16 = read(*a1, i, v15);
      v9 = *(a1 + 32);
      if (v16 < 1)
      {
        break;
      }

      v9 += v16;
    }

    free(i);
    goto LABEL_5;
  }

  v10 = "lseek failed and pos < s->pos";
  v11 = 240;
LABEL_11:
  v12 = 0;
LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v11, 29, v12, v10, v7, v8, v2);
  return 0xFFFFFFFFLL;
}

void IFileStreamDestroy(char *a1)
{
  if (a1)
  {
    if (*(a1 + 1))
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    pthread_mutex_destroy((a1 + 40));

    free(a1);
  }
}

unint64_t IFileStreamRead(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  if (v11 < *(a1 + 16))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range", a7, a8, v21);
    return -1;
  }

  if (~v11 < a3)
  {
    v12 = ~v11;
  }

  else
  {
    v12 = a3;
  }

  v13 = a3 + v11;
  if (__CFADD__(a3, v11))
  {
    v13 = -1;
  }

  v14 = *(a1 + 24);
  if (v13 <= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14 - v11;
  }

  if (v15)
  {
    v8 = 0;
    while (1)
    {
      v17 = read(*a1, a2, v15);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        a2 += v17;
        v8 += v17;
        v15 -= v17;
        if (v15)
        {
          continue;
        }
      }

      v11 = *(a1 + 32);
      goto LABEL_24;
    }

    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v18, "read", v19, v20, v21);
    *(a1 + 32) += v8;
    atomic_fetch_add((a1 + 104), v8);
    return -1;
  }

  v8 = 0;
LABEL_24:
  *(a1 + 32) = v11 + v8;
  atomic_fetch_add((a1 + 104), v8);
  return v8;
}

uint64_t IFileStreamSetPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v11 = *(a1 + 16);
  v12 = __CFADD__(v11, a2);
  v13 = v11 + a2;
  if (v12 || v13 > *(a1 + 24))
  {
    v14 = "invalid pos";
    v15 = 435;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", v15, 29, 0, v14, a7, a8, v8);
    return -1;
  }

  if ((seekTo(a1, v13) & 0x80000000) != 0)
  {
    v14 = "changing pos";
    v15 = 436;
    goto LABEL_6;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t IFileStreamGetPos(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 32) - *(a1 + 16);
  }
}

int *OFileStreamCreateWithFilename(const char *a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    v4[1] = 1;
    *(v4 + 1) = 0;
    v6 = open(a1, 1537, 420);
    *v5 = v6;
    if (v6 < 0)
    {
      v7 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", v8, v9, a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v10, "malloc", v11, v12, v14);
  }

  return v5;
}

void *OFileStreamCreateWithFD(int a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a2;
    v4[3] = 0;
    *v4 = a1;
    *(v4 + 1) = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

void OFileStreamDestroy(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }
}

uint64_t OFileStreamWrite(uint64_t a1, char *__buf, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v3 = 0;
    while (1)
    {
      v7 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v8 = write(*a1, __buf, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9 != -1)
        {
          *(a1 + 16) = v9 - v8;
        }

        __buf += v8;
        v3 += v8;
        v5 -= v8;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write", v12, v13, v14);
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t OFileStreamSetPos(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v4, "lseek", v5, v6, v2);
    return -1;
  }

  return result;
}

off_t OFileStreamGetPos(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v3, "lseek", v4, v5, v1);
    return -1;
  }

  return result;
}

uint64_t OFileStreamAbort(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *OArchiveFileStreamCreate(const char *a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = malloc(0x60uLL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    if ((a3 & 0x100) == 0)
    {
      unlink(a1);
    }

    v11[1] = (a3 >> 4) & 1;
    *(v11 + 2) = a2;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 < 1)
    {
      v13 = open(a1, 1537, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 648;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = open_dprotected_np(a1, 1537, v12, 0, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 640;
LABEL_31:
        v38 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v38, "%s", v39, v40, a1);
        ParallelCompressionAFSCStreamClose(0, v41, v42, v43, v44, v45, v46, v47);
        goto LABEL_32;
      }
    }

    v18 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", v19, v20, v21, a1);
    }

    if ((a3 & 2) != 0 && fcntl(v18, 68, 1) == -1)
    {
      v22 = __error();
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v23, v24, v25, *v22);
    }

    if (a2 && (a3 & 4) != 0 && a5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v26 = 6;
      }

      else
      {
        v26 = 4;
      }

      v27 = ParallelCompressionAFSCStreamOpen(v18, a2, a5, v26);
      *(v11 + 3) = v27;
      if (!v27)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", v28, v29, a1);
        ParallelCompressionAFSCStreamClose(0, v30, v31, v32, v33, v34, v35, v36);
        close(v18);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v37 = fpathconf(v18, 27);
      if (v37 >= 1)
      {
        v11[10] = 1;
        if (v37 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v49 = 0x10000;
          if (v37 < 0x10000)
          {
            v49 = v37;
          }

          v50 = 1024;
          do
          {
            v51 = v50;
            v50 *= 2;
          }

          while (v51 < v49);
          v11[18] = v51;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc", v16, v17, v52);
  }

  return v11;
}

uint64_t OArchiveFileStreamDestroyEx(unsigned int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a2;
  if (*(a1 + 2))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n", a6, a7, a8, v27);
  }

  ParallelCompressionAFSCStreamClose(*(a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  if ((*a1 & 0x80000000) != 0)
  {
    v13 = 0;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a1 + 7))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 8);
      while (fcntl(*a1, 99, v15 + v12) != -1)
      {
        v15 = *(a1 + 8);
        v13 += *(v15 + v12 + 16);
        ++v14;
        v12 += 24;
        if (v14 >= *(a1 + 7))
        {
          goto LABEL_14;
        }
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed", v16, v17, v18, v27);
    }

    else
    {
      v13 = 0;
    }

LABEL_14:
    if (a1[1])
    {
      v27 = 0;
      if (fcntl(*a1, 51) == -1)
      {
        v20 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v20, "Final FULLSYNC", v21, v22, 0);
      }
    }

    v19 = *a1;
    if (!v10)
    {
      if (close(*a1))
      {
        v23 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v23, "close", v24, v25, v27);
      }

      v19 = 0xFFFFFFFFLL;
      *a1 = -1;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 4) - v13;
  }

  if (a4)
  {
    *a4 = v13;
  }

  free(*(a1 + 8));
  free(a1);
  return v19;
}

uint64_t OArchiveFileStreamWrite(uint64_t a1, char *__buf, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  v11 = a3;
  if (a3)
  {
    v9 = 0;
    v13 = *(a1 + 16);
    while (v13)
    {
      if (v13 >= v11)
      {
        v13 = v11;
      }

      if (v13 >= 0x40000000)
      {
        v14 = 0x40000000;
      }

      else
      {
        v14 = v13;
      }

      v15 = *(a1 + 24);
      if (v15)
      {
        v16 = ParallelCompressionAFSCStreamWrite(v15, __buf, v14, a4, a5, a6, a7, a8);
        v17 = v16;
        if (v16 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d", a7, a8, v16);
          return -1;
        }
      }

      else
      {
        if ((*a1 & 0x80000000) != 0)
        {
          return -1;
        }

        v17 = write(*a1, __buf, v14);
        if (v17 < 0)
        {
          v42 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v42, "write", v43, v44, v45);
          return -1;
        }
      }

      if (*(a1 + 40))
      {
        v18 = 0;
        LODWORD(v19) = *(a1 + 72);
        v20 = *(a1 + 76);
        do
        {
          v21 = (v19 - v20);
          if (v18 + v21 <= v14)
          {
            v22 = v21;
          }

          else
          {
            v22 = (v14 - v18);
          }

          v23 = &__buf[v18];
          v24 = &__buf[v18 + v22];
          if ((&__buf[v18] & 7) != 0 && v22)
          {
            v25 = &__buf[v18 + 1];
            while (!*v23)
            {
              if (++v23 < v24)
              {
                if ((v25++ & 7))
                {
                  continue;
                }
              }

              goto LABEL_29;
            }

LABEL_35:
            v28 = 1;
          }

          else
          {
LABEL_29:
            while (v23 + 8 <= v24)
            {
              v27 = *v23;
              v23 += 8;
              if (v27)
              {
                goto LABEL_35;
              }
            }

            while (v23 < v24)
            {
              if (*v23)
              {
                goto LABEL_35;
              }

              ++v23;
            }

            v28 = 0;
          }

          v29 = *(a1 + 88) | v28;
          *(a1 + 88) = v29;
          v20 += v22;
          *(a1 + 76) = v20;
          if (v20 == v19)
          {
            if (!v29)
            {
              v30 = *(a1 + 80);
              v31 = *(a1 + 56);
              if (v31 && (v32 = *(a1 + 64) + 24 * v31, v33 = *(v32 - 8), v33 + *(v32 - 16) == v30))
              {
                *(v32 - 8) = v33 + v19;
              }

              else
              {
                v34 = *(a1 + 48);
                if (v31 >= v34)
                {
                  v35 = v34 + (v34 >> 1);
                  v36 = v34 == 0;
                  v37 = 32;
                  if (!v36)
                  {
                    v37 = v35;
                  }

                  *(a1 + 48) = v37;
                  v38 = reallocf(*(a1 + 64), 24 * v37);
                  *(a1 + 64) = v38;
                  if (!v38)
                  {
                    *(a1 + 48) = 0;
                    *(a1 + 56) = 0;
                    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed", a6, a7, a8, v45);
                  }
                }

                v39 = *(a1 + 56);
                if (v39 >= *(a1 + 48))
                {
                  LODWORD(v19) = *(a1 + 72);
                }

                else
                {
                  v40 = *(a1 + 64);
                  *(a1 + 56) = v39 + 1;
                  v41 = (v40 + 24 * v39);
                  *v41 = 0;
                  v41[1] = 0;
                  v41[1] = v30;
                  v41[2] = 0;
                  v19 = *(a1 + 72);
                  v41[2] = v19;
                }
              }
            }

            v20 = 0;
            *(a1 + 80) += v19;
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
          }

          v18 += v22;
        }

        while (v18 < v14);
      }

      __buf += v17;
      v9 += v17;
      v13 = *(a1 + 16) - v17;
      *(a1 + 16) = v13;
      v11 -= v17;
      if (!v11)
      {
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) += v9;
  return v9;
}

void *OMemStreamCreate(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

uint64_t OMemStreamWrite(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(*a1, a2, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

void *IMemStreamCreate(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

size_t IMemStreamRead(uint64_t a1, void *__dst, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(__dst, *a1, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

uint64_t IMemStreamAbort(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

char *OBufferedStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = MemBufferCreate(a4);
    *v9 = v10;
    if (v10)
    {
      *(v9 + 1) = a1;
      *(v9 + 2) = a2;
      *(v9 + 3) = a3;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer", v11, v12, v24);
      OBufferedStreamDestroy(v9, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }
  }

  else
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v13, "malloc", v14, v15, v24);
  }

  return v9;
}

void OBufferedStreamDestroy(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    MemBufferFlushToOStream(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], a5, a6, a7, a8);
    MemBufferDestroy(*a1);

    free(a1);
  }
}

uint64_t OBufferedStreamWrite(unint64_t **a1, char *a2, unint64_t a3)
{
  if (a1 && !*(a1 + 8))
  {
    v6 = a3;
    if (!a3)
    {
      return 0;
    }

    v4 = 0;
    while (1)
    {
      FreeSize = MemBufferGetFreeSize(*a1);
      if (!FreeSize)
      {
        if (MemBufferFlushToOStream(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], v9, v10, v11, v12) < 0)
        {
          return -1;
        }

        FreeSize = MemBufferGetFreeSize(*a1);
      }

      v13 = v6 >= FreeSize ? FreeSize : v6;
      if (MemBufferFillFromBuffer(*a1, v13, a2) < 0)
      {
        break;
      }

      a2 += v13;
      v4 += v13;
      v6 -= v13;
      if (!v6)
      {
        return v4;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed", v14, v15, v16);
  }

  return -1;
}

uint64_t bxdiff5Alloc(size_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 16) = a1;
  v3 = *a2;
  *(a3 + 8) = *(a2 + 2);
  *a3 = v3;
  if (a1)
  {
    *(a3 + 24) = calloc(a1, 0x50uLL);
  }

  return 0;
}

uint64_t bxdiff5Free(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = *(a1 + 24);
      if (*(v12 + v9))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 40, 54, 0, "in[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
        v12 = *(a1 + 24);
      }

      if (*(v12 + v9 + 64))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 41, 54, 0, "inPatch[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
        v12 = *(a1 + 24);
      }

      if (*(v12 + v9 + 40))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 42, 54, 0, "inControls[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
      }

      ++v10;
      v9 += 80;
    }

    while (v10 < *(a1 + 16));
  }

  else
  {
    v11 = 1;
  }

  if (*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 44, 54, 0, "out is not NULL", a7, a8, v14);
    v11 = 0;
  }

  if (*(a1 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 45, 54, 0, "comboControls is not NULL", a7, a8, v14);
    v11 = 0;
  }

  if (*(a1 + 96))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 46, 54, 0, "comboPatch is not NULL", a7, a8, v14);
    v11 = 0;
  }

  free(*(a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = 0uLL;
  return result;
}

uint64_t bxdiff5Dump(uint64_t a1, FILE *a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = (*(a1 + 24) + 36);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5;
      v5 += 20;
      if (v7)
      {
        ++v4;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  fprintf(a2, "BXDiff5Data: n=%zu, nUnique=%zu\n", *(a1 + 16), v4);
  if (*(a1 + 16))
  {
    v8 = 0;
    v9 = 0;
    v10 = 16;
    do
    {
      fprintf(a2, "- input %zu\n", v9);
      v11 = (*(a1 + 24) + 80 * v9);
      if (*v11)
      {
        fprintf(a2, "    in set, inSize=%zu, inSHA1=", v11[1]);
        v12 = 20;
        v13 = v10;
        do
        {
          fprintf(a2, "%02x", *(*(a1 + 24) + v13++));
          --v12;
        }

        while (v12);
        v14 = "unique";
        if (!*(*(a1 + 24) + 80 * v9 + 36))
        {
          v14 = "non unique";
        }

        fprintf(a2, ", %s", v14);
        fputc(10, a2);
      }

      else
      {
        fwrite("    in is NULL\n", 0xFuLL, 1uLL, a2);
      }

      v15 = *(a1 + 24) + 80 * v9;
      if (*(v15 + 40))
      {
        v16 = 3 * *(v15 + 56);
        fprintf(a2, "    inControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(v15 + 56), *(v15 + 48), (v16 >> 17) & 0xFFFFFFFFFFFLL);
        v8 += 8 * v16;
      }

      else
      {
        fwrite("    inControls is NULL\n", 0x17uLL, 1uLL, a2);
      }

      v17 = *(a1 + 24) + 80 * v9;
      if (*(v17 + 64))
      {
        v18 = *(v17 + 72);
        fprintf(a2, "    inPatch set, inPatchSize=%zu (%zu MB)\n", v18, v18 >> 20);
        v8 += v18;
      }

      else
      {
        fwrite("    inPatch is NULL\n", 0x14uLL, 1uLL, a2);
      }

      ++v9;
      v10 += 80;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    v8 = 0;
  }

  fwrite("- output\n", 9uLL, 1uLL, a2);
  if (*(a1 + 32))
  {
    fprintf(a2, "    out set, outSize=%zu, outSHA1=", *(a1 + 40));
    for (i = 0; i != 20; ++i)
    {
      fprintf(a2, "%02x", *(a1 + 48 + i));
    }

    fputc(10, a2);
  }

  else
  {
    fwrite("    out is NULL\n", 0x10uLL, 1uLL, a2);
  }

  if (*(a1 + 72))
  {
    v20 = (8 * v4 + 16) * *(a1 + 88);
    fprintf(a2, "    comboControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(a1 + 88), *(a1 + 80), v20 >> 20);
    v8 += v20;
  }

  else
  {
    fwrite("    comboControls is NULL\n", 0x1AuLL, 1uLL, a2);
  }

  if (*(a1 + 96))
  {
    v21 = *(a1 + 104);
    fprintf(a2, "    comboPatch set, comboPatchSize=%zu (%zu MB)\n", v21, v21 >> 20);
    v8 += v21;
  }

  else
  {
    fwrite("    comboPatch is NULL\n", 0x17uLL, 1uLL, a2);
  }

  fprintf(a2, "Total size %zu MB\n", v8 >> 20);
  return 0;
}

uint64_t bxdiff5SetIn(void *a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2] <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 122, 54, 0, "invalid I=%zu", a7, a8, a2);
    return 0xFFFFFFFFLL;
  }

  if (!a3 || !a4)
  {
    v16 = "invalid in,inSize";
    v17 = 123;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", v17, 54, 0, v16, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  if (!a1[4])
  {
    v16 = "missing out";
    v17 = 124;
    goto LABEL_16;
  }

  v10 = a1[3] + 80 * a2;
  *v10 = a3;
  *(v10 + 8) = a4;
  getBufferSHA1Digest(a3, a4, (v10 + 16));
  v11 = a1[2];
  v12 = a1[3];
  *(v12 + 80 * a2 + 36) = 1;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (a2 != v14)
      {
        v15 = a1[3];
        if (*(v15 + v13))
        {
          if (!sha1cmp(v15 + 80 * a2 + 16, v15 + v13 + 16))
          {
            v12 = a1[3];
            *(v12 + 80 * a2 + 36) = 0;
            break;
          }

          v11 = a1[2];
        }
      }

      ++v14;
      v13 += 80;
      if (v14 >= v11)
      {
        v12 = a1[3];
        break;
      }
    }
  }

  result = sha1cmp(v12 + 80 * a2 + 16, (a1 + 6));
  if (result)
  {
    return 0;
  }

  *(a1[3] + 80 * a2 + 36) = 0;
  return result;
}

uint64_t bxdiff5SetOut(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    getBufferSHA1Digest(a2, a3, (a1 + 48));
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetOut", 155, 54, 0, "invalid out,outSize", a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }
}

uint64_t bxdiff5SetInPatch(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetInPatch", 165, 54, 0, "invalid I=%zu", a7, a8, a2);
  }

  else
  {
    if (a3 && a4)
    {
      result = 0;
      v10 = *(a1 + 24) + 80 * a2;
      *(v10 + 64) = a3;
      *(v10 + 72) = a4;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetInPatch", 166, 54, 0, "invalid inPatch,inPatchSize", a7, a8, v11);
  }

  return 0xFFFFFFFFLL;
}

uint64_t bxdiff5ReadInControlsFromInPatch(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) <= a2)
  {
    v9 = "invalid input index";
    v10 = 176;
    goto LABEL_12;
  }

  v8 = *(a1 + 24) + 80 * a2;
  if (!*v8)
  {
    v9 = "input data is missing";
    v10 = 177;
    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    v9 = "output data is missing";
    v10 = 178;
    goto LABEL_12;
  }

  if (*(v8 + 40))
  {
    v9 = "input controls already present";
    v10 = 179;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", v10, 54, 0, v9, a7, a8, v40);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v8 + 64);
  if (!v11 || (v12 = *(v8 + 72), v12 <= 0x57))
  {
    v9 = "input patch is missing or invalid";
    v10 = 180;
    goto LABEL_12;
  }

  if (!*(v8 + 36))
  {
    return 0;
  }

  if (*v11 != 0x3035464649445842 || *(v11 + 8) != 1 || (v14 = *(v11 + 24)) == 0)
  {
    v17 = "patch is not a valid 1:1 BXDIFF50";
    v18 = 199;
    goto LABEL_28;
  }

  if (*(v11 + 16) != *(a1 + 40))
  {
    v17 = "out size mismatch in patch";
    v18 = 202;
    goto LABEL_28;
  }

  if (*(a1 + 48) != *(v11 + 40) || *(a1 + 56) != *(v11 + 48) || *(a1 + 64) != *(v11 + 56))
  {
    v17 = "out digest mismatch in patch";
    v18 = 203;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", v18, 54, 0, v17, a7, a8, v40);
    v19 = 0;
    goto LABEL_29;
  }

  v21 = *(v8 + 16);
  v22 = *(v8 + 24);
  v23 = *(v8 + 32);
  if (v21 != *(v11 + 68) || v22 != *(v11 + 76) || v23 != *(v11 + 84))
  {
    v17 = "in digest mismatch in patch";
    v18 = 204;
    goto LABEL_28;
  }

  v40 = a1;
  if (v11 + 88 + v14 > v11 + v12)
  {
    v17 = "invalid patch payload size";
    v18 = 212;
    goto LABEL_28;
  }

  v26 = *(v11 + 12);
  v19 = ILowMemoryDecoderStreamCreateWithBuffer(v11 + 88, v14, 0x10000uLL);
  if (!v19)
  {
    v36 = "Control stream init";
    v37 = 215;
    v38 = 0;
    goto LABEL_58;
  }

  v20 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v26 & 1;
  while (1)
  {
    if (v29 < v30)
    {
      goto LABEL_51;
    }

    if (v30)
    {
      v30 += v30 >> 1;
    }

    else
    {
      v30 = 4096;
    }

    v32 = reallocf(v20, 24 * v30);
    if (!v32)
    {
      break;
    }

    v20 = v32;
LABEL_51:
    v33 = ILowMemoryDecoderStreamRead(v19, v20 + 24 * v29, 24 * (v30 - v29));
    if ((v33 & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 227, 54, 0, "ILZMAMemStreamRead", v34, v35, v40);
      ILowMemoryDecoderStreamDestroy(v19);
      goto LABEL_30;
    }

    if (!v33)
    {
      ILowMemoryDecoderStreamDestroy(v19);
      result = 0;
      v39 = *(v40 + 24) + 80 * a2;
      *(v39 + 40) = v20;
      *(v39 + 48) = v31;
      *(v39 + 56) = v29;
      return result;
    }

    v29 += v33 / 0x18;
  }

  v38 = *__error();
  v36 = "malloc";
  v37 = 223;
LABEL_58:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", v37, 54, v38, v36, v27, v28, v40);
LABEL_29:
  ILowMemoryDecoderStreamDestroy(v19);
  v20 = 0;
LABEL_30:
  free(v20);
  return 0xFFFFFFFFLL;
}

uint64_t bxdiff5CreateInControls(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) <= a2)
  {
    v12 = "invalid input index";
    v13 = 247;
    goto LABEL_5;
  }

  v10 = *(a1 + 24) + 80 * a2;
  v11 = (v10 + 40);
  if (*(v10 + 40))
  {
    v12 = "input controls already present";
    v13 = 248;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", v13, 54, 0, v12, a7, a8, v23);
    return 0xFFFFFFFFLL;
  }

  v15 = *v10;
  if (!*v10 || (v16 = *(v10 + 8)) == 0)
  {
    v12 = "input is missing or invalid";
    v13 = 249;
    goto LABEL_5;
  }

  if (!*(v10 + 36))
  {
    return 0;
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = (v10 + 56);
  if (!(v16 >> 28) || v19 >> 28 == 0)
  {
    if ((getBXDiffControls(v15, v16, v18, v19, v11, v20, a1, a8) & 0x80000000) != 0)
    {
      v12 = "generic controls";
      v13 = 270;
      goto LABEL_5;
    }
  }

  else
  {
    LargeFileControls = GetLargeFileControls(v15, v16, v18, v19, v11, v20, a1, a8);
    if (LargeFileControls < 0)
    {
      v12 = "largefile controls";
      v13 = 262;
      goto LABEL_5;
    }
  }

  if (!a3)
  {
    return 0;
  }

  if ((forceInPlaceControls(*(*(a1 + 24) + 80 * a2 + 8), *(a1 + 40), *(*(a1 + 24) + 80 * a2 + 40), *(*(a1 + 24) + 80 * a2 + 56), *(a1 + 4)) & 0x80000000) != 0)
  {
    v12 = "forceInPlaceControls";
    v13 = 278;
    goto LABEL_5;
  }

  result = 0;
  *(*(a1 + 24) + 80 * a2 + 48) = 1;
  return result;
}

uint64_t bxdiff5CreateComboControls(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = (*(a1 + 24) + 36);
  v12 = *(a1 + 16);
  do
  {
    v13 = *v11;
    v11 += 20;
    if (v13)
    {
      ++v10;
    }

    --v12;
  }

  while (v12);
  if (v10 <= 1)
  {
LABEL_7:
    v14 = "creating combo controls requires 2 or more unique inputs";
    v15 = 289;
    v16 = 0;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", v15, 54, v16, v14, a7, a8, v36);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 1;
  v19 = calloc(v8, 0x18uLL);
  if (!v19)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 300;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = v19;
  v22 = v8;
  do
  {
    initDiffSegmentVector(v21);
    v21 += 3;
    --v22;
  }

  while (v22);
  v29 = 0;
  v30 = 0;
  v31 = *(a1 + 24);
  do
  {
    if (*(v31 + v29 + 36))
    {
      v32 = *(v31 + v29 + 40);
      if (!v32)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 309, 54, 0, "missing controls for input %zu", v27, v28, v22);
        goto LABEL_30;
      }

      if ((pushControls(&v20[3 * v30], v32, *(v31 + v29 + 56), 0, 0) & 0x80000000) != 0)
      {
        v33 = "pushControls";
        v34 = 312;
        goto LABEL_29;
      }

      v31 = *(a1 + 24);
      if (!*(v31 + v29 + 48))
      {
        *(a1 + 80) = 0;
      }

      ++v30;
    }

    ++v22;
    v29 += 80;
  }

  while (v8 != v22);
  if ((mergeDiffSegmentVectors(v30, v20, v23, v24, v25, v26, v27, v28) & 0x80000000) != 0)
  {
    v33 = "mergeDiffSegmentVectors";
    v34 = 321;
  }

  else
  {
    if ((getComboControlsFromMergedDiffSegmentVectors(v30, v20, (a1 + 72), (a1 + 88)) & 0x80000000) == 0)
    {
      v17 = 0;
      goto LABEL_31;
    }

    v33 = "getComboControlsFromMergedDiffSegmentVectors";
    v34 = 324;
  }

LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", v34, 54, 0, v33, v27, v28, v36);
LABEL_30:
  v17 = 0xFFFFFFFFLL;
LABEL_31:
  v35 = v20;
  do
  {
    BlobBufferFree(v35);
    v35 += 24;
    --v8;
  }

  while (v8);
  free(v20);
  return v17;
}

uint64_t bxdiff5CreatePatchBackend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t __size, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, size_t *a11, int a12, int a13, unsigned int a14)
{
  v19 = a10;
  v18 = a11;
  v20 = malloc(__size);
  v23 = v20;
  if (!v20)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 447;
LABEL_48:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", v33, 54, v31, v32, v21, v22, v89);
    v38 = 0;
LABEL_69:
    free(v23);
    free(v38);
    v86 = 0;
    v85 = 0;
    v87 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v24 = a13;
  v25 = a9;
  v26 = a1 + 2;
  if (a9)
  {
    v27 = 0uLL;
    v28 = vnegq_f64(0);
    v29 = a8;
    v30 = a9;
    do
    {
      v27 = vaddq_s64(vbslq_s8(vcltzq_s64(*v29), vsubq_s64(v28, *v29), *v29), v27);
      v29 = (v29 + 8 * a1 + 16);
      --v30;
    }

    while (v30);
  }

  else
  {
    v27 = 0uLL;
  }

  __dst = v20;
  if (a13 > 1)
  {
    v94 = v27;
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 backend, out: %zu B, diff: %zu B, lit: %zu B, ctrl: %zu B\n", __size, v27.u64[0], v27.u64[1], 8 * (a1 + 2) * a9);
    v27 = v94;
    v24 = a13;
    v26 = a1 + 2;
    v18 = a11;
    v19 = a10;
    v23 = __dst;
  }

  if (vaddvq_s64(v27) != __size)
  {
    v32 = "size inconsistency: diff + archive != out";
    v33 = 458;
    v31 = 0;
    goto LABEL_48;
  }

  v90 = v26;
  v95 = v19;
  v92 = v18;
  v34 = v24;
  v35 = 28 * a1 + lzma_stream_buffer_bound() * a1;
  v36 = v35 + lzma_stream_buffer_bound() + 60;
  v93 = v34;
  if (v34 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch allocated: %zu B\n", v36);
  }

  v37 = malloc(v36);
  v38 = v37;
  if (!v37)
  {
    v69 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 469, 54, *v69, "malloc", v70, v71, v89);
    v18 = v92;
LABEL_50:
    v19 = v95;
    goto LABEL_52;
  }

  *(v37 + 44) = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  *v37 = 0u;
  v91 = v37 + 60;
  bzero(v37 + 60, 28 * a1);
  *v38 = 0x3035464649445842;
  v38[2] = __size;
  *(v38 + 5) = *a7;
  *(v38 + 14) = *(a7 + 16);
  *(v38 + 2) = a1;
  *(v38 + 3) = a12 != 0;
  if (a1)
  {
    v39 = v38 + 68;
    v40 = a1;
    do
    {
      *v39 = *a4;
      *(v39 + 4) = *(a4 + 16);
      a4 += 20;
      v39 += 28;
      --v40;
    }

    while (v40);
  }

  v41 = v38 + v36;
  v42 = &v91[28 * a1];
  if (v34 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch headers: %zu B\n", v42 - v38);
  }

  v18 = v92;
  v43 = plzmaEncodeBuffer(v42, &v41[-v42], a8, 8 * (a1 + 2) * a9, a14);
  if (v43 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 499, 54, 0, "Payload compression", v44, v45, v89);
LABEL_52:
    v23 = __dst;
    goto LABEL_69;
  }

  v46 = v42 + v43;
  v38[3] = v43;
  if (v93 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch control payload: %zu B\n", v43);
  }

  v23 = __dst;
  if (a1)
  {
    v47 = 0;
    v48 = a5;
    while (!a9)
    {
      v52 = v23;
LABEL_42:
      v66 = plzmaEncodeBuffer(v46, &v41[-v46], v23, v52 - v23, a14);
      if (v66 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 530, 54, 0, "Payload compression", v67, v45, v89);
        goto LABEL_50;
      }

      v68 = v66;
      *&v91[28 * v47] = v66;
      if (v93 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch diff[%zu] payload: %zu B\n", v47, v66);
      }

      v46 += v68;
      ++v47;
      v23 = __dst;
      v48 = a5;
      if (v47 == a1)
      {
        goto LABEL_55;
      }
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v23;
    while (1)
    {
      v53 = (a8 + 8 * v49 * v90);
      v54 = *v53;
      v55 = v53[1];
      if (*v53 < 0)
      {
        v54 = 0x8000000000000000 - *v53;
      }

      if (v55 < 0)
      {
        v55 = 0x8000000000000000 - v55;
      }

      v56 = v53[v47 + 2];
      if (v56 < 0)
      {
        v56 = 0x8000000000000000 - v56;
      }

      if (v50 < 0)
      {
        break;
      }

      v57 = v54 + v50;
      if (v54 + v50 > __size)
      {
        break;
      }

      if (v51 < 0 || (v58 = v54 + v51, v54 + v51 > *(a3 + 8 * v47)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 519, 54, 0, "in[%zu] access out of range", v90, v45, v47);
        goto LABEL_68;
      }

      if (v54 >= 1)
      {
        v59 = (v48 + v50);
        v60 = (*(a2 + 8 * v47) + v51);
        v61 = v52;
        v62 = v54;
        do
        {
          v64 = *v59++;
          v63 = v64;
          v65 = *v60++;
          *v61++ = v63 - v65;
          --v62;
        }

        while (v62);
      }

      v52 += v54;
      v50 = v57 + v55;
      v51 = v58 + v56;
      if (++v49 == a9)
      {
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 518, 54, 0, "out access out of range", v90, v45, v89);
    goto LABEL_68;
  }

  v48 = a5;
LABEL_55:
  if (a9)
  {
    v72 = 0;
    v73 = (a8 + 8);
    v74 = 8 * a1 + 16;
    v23 = __dst;
    do
    {
      v75 = *(v73 - 1);
      v76 = *v73;
      if (v75 < 0)
      {
        v75 = 0x8000000000000000 - v75;
      }

      if (v76 >= 0)
      {
        v77 = *v73;
      }

      else
      {
        v77 = 0x8000000000000000 - v76;
      }

      v78 = v75 + v72;
      memcpy(v23, (v48 + v75 + v72), v77);
      v48 = a5;
      v23 += v77;
      v72 = v78 + v77;
      v73 = (v73 + v74);
      --v25;
    }

    while (v25);
  }

  v79 = v23 - __dst;
  v23 = __dst;
  v80 = plzmaEncodeBuffer(v46, &v41[-v46], __dst, v79, a14);
  if (v80 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 554, 54, 0, "Payload compression", v81, v82, v89);
    v18 = v92;
LABEL_68:
    v19 = v95;
    goto LABEL_69;
  }

  v83 = v46 + v80;
  v38[4] = v80;
  v18 = v92;
  v19 = v95;
  if (v93 <= 1)
  {
    v85 = v83 - v38;
  }

  else
  {
    v84 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload: %zu B\n", v80);
    v85 = v83 - v38;
    fprintf(*v84, "BXDiff5 patch total size: %zu B\n", v83 - v38);
  }

  free(__dst);
  v86 = reallocToFit(v38, v85);
  v87 = 0;
LABEL_70:
  *v19 = v86;
  *v18 = v85;
  return v87;
}

uint64_t bxdiff5CreateComboPatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (*(a1 + 24) + 36);
      do
      {
        v12 = *v11;
        v11 += 20;
        if (v12)
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = calloc(v10, 8uLL);
    v15 = calloc(v10, 8uLL);
    v16 = calloc(v10, 0x14uLL);
    v17 = v16;
    if (v14)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || v16 == 0)
    {
      v20 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 609, 54, *v20, "malloc", v21, v22, v32);
      PatchBackend = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = *(a1 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = *(a1 + 24);
          if (*(v27 + v24 + 36))
          {
            v14[v26] = *(v27 + v24);
            v28 = *(a1 + 24) + v24;
            v15[v26] = *(v28 + 8);
            v29 = &v16[20 * v26];
            v30 = *(v28 + 16);
            *(v29 + 4) = *(v28 + 32);
            *v29 = v30;
            ++v26;
            v23 = *(a1 + 16);
          }

          ++v25;
          v24 += 80;
        }

        while (v25 < v23);
      }

      PatchBackend = bxdiff5CreatePatchBackend(v10, v14, v15, v16, *(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 72), *(a1 + 88), (a1 + 96), (a1 + 104), *(a1 + 80), *(a1 + 4), *(a1 + 8));
    }

    free(v14);
    free(v15);
    free(v17);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 600, 54, 0, "missing combo controls", a7, a8, v32);
    return 0xFFFFFFFFLL;
  }

  return PatchBackend;
}

uint64_t BXDiff5WithIndividualPatches(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = *MEMORY[0x29EDCA608];
  if (HIDWORD(*a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 645, 54, 0, "Invalid number of inputs: %zu", a7, a8, *a1);
    result = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v9 = a5;
  v10 = a4;
  v14 = *(a1 + 48);
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v103);
  v20 = *a1;
  v21 = *(a1 + 52);
  if (v10)
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  v24 = *(a1 + 40);
  v25 = *(a1 + 44);
  v112 = 0u;
  memset(v113, 0, sizeof(v113));
  *v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v111 = v20;
  v109 = __PAIR64__(v21, v24);
  v110 = v25;
  if (v20)
  {
    *&v112 = calloc(v20, 0x50uLL);
    *a2 = 0;
    *a3 = 0;
    if (v10)
    {
      bzero(v10, 8 * v20);
    }

    if (v9)
    {
      bzero(v9, 8 * v20);
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }

  if (bxdiff5SetOut(&v109, *(a1 + 24), *(a1 + 32), v15, v16, v17, v18, v19))
  {
    v33 = "bxdiff5SetOut";
    v34 = 672;
    goto LABEL_17;
  }

  if (!v20)
  {
LABEL_28:
    v48 = v111;
    if (v111)
    {
      v49 = 0;
      v50 = (v112 + 36);
      do
      {
        v51 = *v50;
        v50 += 20;
        if (v51)
        {
          ++v49;
        }

        --v48;
      }

      while (v48);
      if (!v49)
      {
        *(v112 + 36) = 1;
      }
    }

    if (v21 >= 2)
    {
      bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
    }

    if (!v20)
    {
      v62 = *(&v112 + 1);
      v63 = *&v113[0];
      v64 = HIDWORD(v109);
      v65 = v110;
      v66 = lzma_stream_buffer_bound();
      v67 = v66 + 60;
      if (v64 >= 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch capacity: %zu B\n", v67);
      }

      v68 = malloc(v67);
      v69 = v68;
      if (v68)
      {
        *v68 = 0u;
        *(v68 + 1) = 0u;
        *(v68 + 44) = 0u;
        *(v68 + 2) = 0u;
        *v68 = 0x3035464649445842;
        *(v68 + 1) = 0;
        *(v68 + 2) = v63;
        *(v68 + 40) = *(v113 + 8);
        *(v68 + 14) = DWORD2(v113[1]);
        v70 = plzmaEncodeBuffer((v68 + 60), v66, v62, v63, v65);
        if ((v70 & 0x8000000000000000) == 0)
        {
          v73 = a3;
          v74 = v69 + v70 + 60;
          v69[4] = v70;
          if (v64 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload size: %zu B\n", v70);
          }

          v35 = 0;
          *a2 = reallocToFit(v69, v74 - v69);
          *v73 = v74 - v69;
          goto LABEL_20;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 406, 54, 0, "Payload compression", v71, v72, v104);
      }

      else
      {
        v81 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 386, 54, *v81, "malloc patch", v82, v83, v104);
      }

      free(v69);
      *a2 = 0;
      *a3 = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 689, 54, 0, "bxdiff5CreateFullReplacementBackend", v84, v85, v105);
      v35 = -1;
      goto LABEL_20;
    }

    v108 = v21;
    v52 = v111;
    if (v111)
    {
      v53 = 0;
      v54 = (v112 + 36);
      do
      {
        v55 = *v54;
        v54 += 20;
        if (v55)
        {
          ++v53;
        }

        --v52;
      }

      while (v52);
      if (v53 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = v23;
      }

      if (v53 == 1)
      {
        v57 = 0;
        v58 = (v112 + 36);
        while (1)
        {
          v59 = *v58;
          v58 += 20;
          if (v59)
          {
            break;
          }

          if (v20 == ++v57)
          {
            v60 = "could not find unique input";
            v61 = 699;
            goto LABEL_89;
          }
        }

        v106 = a2;
        v107 = a3;
        v75 = 1;
        v23 = v56;
        v53 = 1;
LABEL_62:
        v76 = 0;
        v77 = 36;
        do
        {
          if (*(v112 + v77))
          {
            if (bxdiff5CreateInControls(&v109, v76, v14 & 2, v28, v29, v30, v31, v32))
            {
              v33 = "bxdiff5CreateInControls";
              v34 = 710;
              goto LABEL_17;
            }

            v78 = v57 == v76 ? v75 : 0;
            if ((v23 || v78) && bxdiff5CreateInPatch(&v109, v76))
            {
              v33 = "bxdiff5CreateInPatch";
              v34 = 718;
              goto LABEL_17;
            }
          }

          ++v76;
          v77 += 80;
        }

        while (v20 != v76);
        if (v108 >= 2)
        {
          bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
        }

        v80 = v106;
        v79 = v107;
        if (v53 >= 2)
        {
          if (bxdiff5CreateComboControls(&v109, v26, v27, v28, v29, v30, v31, v32))
          {
            v60 = "bxdiff5CreateComboControls";
            v61 = 730;
            goto LABEL_89;
          }

          v86 = 0;
          v87 = v112;
          v88 = v20;
          do
          {
            free(*(v87 + v86 + 40));
            v87 = v112;
            v96 = v112 + v86;
            *(v96 + 40) = 0;
            *(v96 + 56) = 0;
            v86 += 80;
            --v88;
          }

          while (v88);
          v79 = v107;
          if (v108 > 1)
          {
            bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
          }

          v80 = v106;
          if (bxdiff5CreateComboPatch(&v109, v89, v90, v91, v92, v93, v94, v95))
          {
            v60 = "bxdiff5CreateComboPatch";
            v61 = 747;
LABEL_89:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", v61, 54, 0, v60, v31, v32, v104);
            v35 = -1;
            goto LABEL_18;
          }
        }

        if (v108 >= 2)
        {
          bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
        }

        if (v53 >= 2)
        {
          v97 = v116;
          *v80 = *(&v115 + 1);
          *v79 = v97;
          *(&v115 + 1) = 0;
          v116 = 0;
          if (!v23)
          {
            goto LABEL_98;
          }

          v98 = (v112 + 64);
          v99 = v20;
          do
          {
            v100 = v98[1];
            *v10++ = *v98;
            *v9++ = v100;
            *v98 = 0;
            v98[1] = 0;
            v98 += 10;
            --v99;
          }

          while (v99);
        }

        if (v53 == 1)
        {
          v35 = 0;
          v101 = v112 + 80 * v57;
          v102 = *(v101 + 72);
          *v80 = *(v101 + 64);
          *v79 = v102;
          *(v101 + 64) = 0;
          *(v101 + 72) = 0;
          goto LABEL_18;
        }

LABEL_98:
        v35 = 0;
LABEL_18:
        v36 = 0;
        v37 = v112;
        do
        {
          v38 = v37 + v36;
          *v38 = 0;
          free(*(v38 + 40));
          v37 = v112;
          *(v112 + v36 + 40) = 0;
          v36 += 80;
          --v20;
        }

        while (v20);
        goto LABEL_20;
      }

      v106 = a2;
      v107 = a3;
      v75 = 0;
    }

    else
    {
      v106 = a2;
      v107 = a3;
      v75 = 0;
      v53 = 0;
    }

    v57 = -1;
    goto LABEL_62;
  }

  v47 = 0;
  while (!bxdiff5SetIn(&v109, v47, *(*(a1 + 8) + 8 * v47), *(*(a1 + 16) + 8 * v47), v29, v30, v31, v32))
  {
    if (v20 == ++v47)
    {
      goto LABEL_28;
    }
  }

  v33 = "bxdiff5SetIn";
  v34 = 675;
LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", v34, 54, 0, v33, v31, v32, v104);
  v35 = -1;
  if (v20)
  {
    goto LABEL_18;
  }

LABEL_20:
  *(&v112 + 1) = 0;
  free(v114[0]);
  v114[0] = 0;
  bxdiff5Free(&v109, v39, v40, v41, v42, v43, v44, v45);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v35;
  }

  else
  {
    result = result;
  }

LABEL_23:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t plzmaEncodeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = IMemStreamCreate(a3, a4);
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 348, 54, 0, "is", v8, v9, v25);
    v19 = 0;
LABEL_8:
    v22 = 1;
    goto LABEL_9;
  }

  v11 = OMemStreamCreate(a1, a2);
  v19 = v11;
  if (!v11)
  {
    v20 = "os";
    v21 = 349;
    goto LABEL_7;
  }

  *(&v25 + 4) = a5 | 0x100000000;
  LODWORD(v25) = 0;
  *&v26 = 0x100000;
  *(&v26 + 1) = IMemStreamRead;
  *(&v27 + 1) = v10;
  *&v28 = OMemStreamWrite;
  v29 = v11;
  if (ParallelCompressionEncode(&v25, v12, v13, v14, v15, v16, v17, v18))
  {
    v20 = "encode";
    v21 = 358;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", v21, 54, 0, v20, v17, v18, v25);
    goto LABEL_8;
  }

  v22 = 0;
LABEL_9:
  NWritten = OMemStreamGetNWritten(v19);
  IMagicStreamDestroy(v10);
  IMagicStreamDestroy(v19);
  if (v22)
  {
    return -1;
  }

  else
  {
    return NWritten;
  }
}

void *StringTableCreate()
{
  v0 = calloc(1uLL, 0x28uLL);
  if (!v0)
  {
    v1 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableCreate", 30, 35, *v1, "malloc", v2, v3, v5);
  }

  return v0;
}

uint64_t stringTableReserve(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  if (v3)
  {
    v5 = v3 + (v3 >> 1);
  }

  else
  {
    v5 = 32;
  }

  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(a1 + 4) = v5;
  v6 = reallocf(*(a1 + 8), 16 * v5);
  *(a1 + 8) = v6;
  if (v6)
  {
    return 0;
  }

  v8 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "stringTableReserve", 23, 35, *v8, "malloc", v9, v10, v2);
  return 0xFFFFFFFFLL;
}

void StringTableDestroy(void **a1)
{
  if (a1)
  {
    BlobBufferFree((a1 + 2));
    free(a1[1]);

    free(a1);
  }
}

uint64_t StringTableAppend(unsigned int *a1, const void *a2, size_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (HIDWORD(a3))
  {
    v11 = "string too long for StringTable";
    v12 = 74;
  }

  else if (stringTableReserve(a1, *a1 + 1))
  {
    v11 = "increasing string table capacity";
    v12 = 77;
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    if (!BlobBufferStore((a1 + 4), 0, a3 + 1, v17))
    {
      v14 = *(a1 + 1) + 16 * *a1;
      v15 = v17[0];
      *v14 = v17[0];
      *(v14 + 8) = a3;
      v16 = (*(a1 + 4) + v15);
      memcpy(v16, a2, a3);
      result = 0;
      *(v16 + a3) = 0;
      ++*a1;
      return result;
    }

    v11 = "insertion failed in string table";
    v12 = 81;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", v12, 35, 0, v11, a7, a8, v17[0]);
  return 0xFFFFFFFFLL;
}

uint64_t StringTableAppendTable(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  if (!*a2)
  {
    return 0;
  }

  if (stringTableReserve(a1, *a1 + *a2))
  {
    v7 = "increasing string table capacity";
    v8 = 152;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", v8, 35, 0, v7, v5, v6, v15[0]);
    return 0xFFFFFFFFLL;
  }

  v15[0] = 0;
  v15[1] = 0;
  if (BlobBufferStore(a1 + 16, *(a2 + 4), *(a2 + 3), v15))
  {
    v7 = "increasing blob capacity failed";
    v8 = 156;
    goto LABEL_9;
  }

  if (*a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 8);
    do
    {
      v13 = v11 + *a1;
      *(v12 + 16 * v13) = *(*(a2 + 1) + v10);
      v12 = *(a1 + 8);
      *(v12 + 16 * v13) += v15[0];
      ++v11;
      v14 = *a2;
      v10 += 16;
    }

    while (v11 < v14);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  result = 0;
  *a1 += v14;
  return result;
}

size_t StringTableSort(unsigned int *a1, void *a2)
{
  result = *a1;
  if (result)
  {
    if (a2)
    {
      v5 = calloc(result, 4uLL);
      if (!v5)
      {
        v19 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableSort", 195, 35, *v19, "malloc", v20, v21, v22);
        return 0xFFFFFFFFLL;
      }

      v6 = v5;
      *a2 = v5;
      v7 = *a1;
      if (v7)
      {
        v8 = 0;
        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_2980690D0;
        v11 = xmmword_2980690E0;
        v12 = (*(a1 + 1) + 44);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 8) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 4) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[4] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 16;
        }

        while (((v7 + 3) & 0x1FFFFFFFCLL) != v8);
      }
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = result;
    }

    qsort_r(*(a1 + 1), v7, 0x10uLL, a1, stringTableIndexCompareProc);
    if (*a1 < 2)
    {
      v17 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      v17 = 1;
      do
      {
        v18 = *(a1 + 1);
        if (!strcmp((*(a1 + 4) + *(v18 + 16 * (v17 - 1))), (*(a1 + 4) + *(v18 + v15 + 16))))
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17 - 1;
          }
        }

        else
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17;
          }

          if (v16 != v17)
          {
            *(v18 + 16 * v17) = *(v18 + v15 + 16);
          }

          ++v17;
        }

        ++v16;
        v15 += 16;
      }

      while (v16 < *a1);
    }

    result = 0;
    *a1 = v17;
  }

  return result;
}

uint64_t getBXDiffControls(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, int *a7, uint64_t a8)
{
  v8 = 0xFFFFFFFFLL;
  if (!a2 || !a4)
  {
    return v8;
  }

  v10 = a6;
  if (a2 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a2;
  }

  if (v13 >= 0x10000)
  {
    v14 = a4 - a2;
    v15 = a2 - a4;
    if (a2 < a4)
    {
      v15 = a4 - a2;
    }

    v16 = a1;
    v17 = a3;
    do
    {
      v19 = *v16++;
      v18 = v19;
      v20 = *v17++;
      if (v18 != v20)
      {
        ++v15;
      }

      --v13;
    }

    while (v13);
    if (v15 <= a4 / 0x64)
    {
      v95 = calloc(1uLL, 0x18uLL);
      if (v95)
      {
        *a5 = v95;
        *v10 = 1;
        if (a2 <= a4)
        {
          v8 = 0;
          v101 = 0x8000000000000000 - a2;
          if ((a2 & 0x8000000000000000) == 0)
          {
            v101 = a2;
          }

          v102 = 0x8000000000000000 - v14;
          if (v14 >= 0)
          {
            v102 = a4 - a2;
          }

          *v95 = v101;
          v95[1] = v102;
          v95[2] = 0;
        }

        else
        {
          v8 = 0;
          v96 = 0x8000000000000000 - a4;
          v95[1] = 0;
          v95[2] = 0;
          if ((a4 & 0x8000000000000000) == 0)
          {
            v96 = a4;
          }

          *v95 = v96;
        }

        return v8;
      }

      v97 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffFastPathControls", 101, 24, *v97, "calloc", v98, v99, v103);
      v93 = "building fast path controls";
      v94 = 311;
LABEL_122:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "getBXDiffControls", v94, 24, 0, v93, v22, v23, v103);
      return 0xFFFFFFFFLL;
    }
  }

  v21 = BXDiffMatchesCreate(a1, a2, a3, a4, a7, a6, a7, a8);
  if (!v21)
  {
    v93 = "creating diff match lookup object";
    v94 = 319;
    goto LABEL_122;
  }

  v24 = v21;
  v25 = BXDiffMatchesIBuf(v21);
  v26 = BXDiffMatchesISize(v24);
  NWritten = OMemStreamGetNWritten(v24);
  v27 = BXDiffMatchesOSize(v24);
  v113 = 0;
  if (!v26 || (v30 = v27) == 0)
  {
    *a5 = 0;
    *v10 = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "getBXDiffControls", 324, 24, 0, "building diff controls", v28, v29, v103);
    goto LABEL_125;
  }

  if (v27 < 1)
  {
    v36 = 0;
    v92 = 0;
    goto LABEL_124;
  }

  v104 = v10;
  v105 = a5;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __ptr = 0;
  v106 = 0;
  do
  {
    v110 = v34;
    v111 = v33;
    v31 += v32;
    v109 = v31 < v30;
    if (v31 < v30)
    {
      v107 = v36;
      v45 = 0;
      v37 = v31;
      do
      {
        BestMatch = BXDiffMatchesGetBestMatch(v24, v31, &v113);
        v39 = BestMatch + v31;
        if (BestMatch + v31 <= v30)
        {
          v32 = BestMatch;
        }

        else
        {
          v32 = v30 - v31;
        }

        if (v37 < v32 + v31)
        {
          if (v39 >= v30)
          {
            v39 = v30;
          }

          v40 = (NWritten + v37);
          v41 = v39 - v37;
          v42 = v35 + v37;
          do
          {
            if (v42 < v26 && *(v25 + v42) == *v40)
            {
              ++v45;
            }

            ++v40;
            ++v42;
            --v41;
          }

          while (v41);
          v37 = v39;
        }

        if (v32 == v45 && v32 != 0 || v32 > v45 + 8)
        {
          v36 = v107;
          goto LABEL_46;
        }

        if (v31 + v35 < v26)
        {
          v45 -= *(v25 + v31 + v35) == *(NWritten + v31);
        }

        ++v31;
      }

      while (v31 < v30);
      v109 = 0;
      v31 = v30;
      v36 = v107;
    }

    else
    {
      v45 = 0;
LABEL_46:
      if (v32 == v45 && v31 != v30)
      {
        v32 = v45;
        v34 = v110;
        v33 = v111;
        continue;
      }
    }

    v46 = v31 - v111;
    v47 = v26 - v110;
    if (v31 - v111 < v26 - v110)
    {
      v47 = v31 - v111;
    }

    if (v47 < 1)
    {
      v52 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      do
      {
        v53 = v50 | (v51 << 8);
        v54 = *(v25 + v110 + v48) - *(NWritten + v111 + v48);
        if ((v51 & 0xFF000000FF0000) != 0 || v53 == 0)
        {
          v56 = 3;
        }

        else
        {
          v56 = 4;
        }

        v57 = __OFADD__(v56, v49);
        v58 = v56 + v49;
        if ((v58 < 0) ^ v57 | (v58 == 0))
        {
          v59 = v52;
        }

        else
        {
          v59 = v48 + 1;
        }

        v60 = v58 & (v58 >> 31);
        v49 -= 4;
        ++v48;
        if (!v54)
        {
          v52 = v59;
          v49 = v60;
        }

        v51 = v53;
        v50 = v54;
      }

      while (v48 != v47);
    }

    if (!v109)
    {
      goto LABEL_85;
    }

    if (v46 >= v113)
    {
      v46 = v113;
    }

    if (v46 >= 1)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = -v46;
      v66 = (NWritten - 1 + v31);
      v67 = (v25 - 1 + v113);
      v68 = 1;
      do
      {
        v69 = v62 | (v63 << 8);
        v71 = *v67--;
        v70 = v71;
        v72 = *v66--;
        v73 = v70 - v72;
        if ((v63 & 0xFF000000FF0000) != 0 || v69 == 0)
        {
          v75 = 3;
        }

        else
        {
          v75 = 4;
        }

        v57 = __OFADD__(v75, v61);
        v76 = v75 + v61;
        if ((v76 < 0) ^ v57 | (v76 == 0))
        {
          v77 = v64;
        }

        else
        {
          v77 = v68;
        }

        v78 = v76 & (v76 >> 31);
        v61 -= 4;
        if (!v73)
        {
          v64 = v77;
          v61 = v78;
        }

        ++v68;
        v63 = v69;
        v62 = v73;
      }

      while (v65 + v68 != 1);
    }

    else
    {
LABEL_85:
      v64 = 0;
    }

    v79 = v52 + v111 - (v31 - v64);
    if (v52 + v111 > v31 - v64)
    {
      if (v79 < 1)
      {
        v82 = 0;
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        do
        {
          v83 = *(NWritten + v31 - v64 + v81);
          v80 -= v83 == *(v25 + v113 - v64 + v81);
          v84 = *(v25 + v110 - (v111 - (v31 - v64)) + v81);
          if (v80 >= 0)
          {
            v85 = v81 + 1;
          }

          else
          {
            v85 = v82;
          }

          if (v80 < 0)
          {
            v86 = v80 + 1;
          }

          else
          {
            v86 = 0;
          }

          ++v81;
          if (v83 == v84)
          {
            v82 = v85;
            v80 = v86;
          }
        }

        while (v81 < v79);
      }

      v52 = v31 - v64 - v111 + v82;
      v64 -= v82;
    }

    v87 = v106;
    if (v36 >= v106)
    {
      v106 += 0x40000;
      __ptr = reallocf(__ptr, 24 * (v87 + 0x40000));
      if (!__ptr)
      {
        getBXDiffControls_cold_1();
      }
    }

    v88 = 0x8000000000000000 - v52;
    if (v52 >= 0)
    {
      v88 = v52;
    }

    v33 = v31 - v64;
    v89 = v31 - v64 - (v52 + v111);
    if (v89 < 0)
    {
      v89 = 0x8000000000000000 - v89;
    }

    v90 = &__ptr[24 * v36];
    *v90 = v88;
    v90[1] = v89;
    v91 = v113 - (v52 + v110 + v64);
    if (v91 < 0)
    {
      v91 = 0x8000000000000000 - v91;
    }

    v90[2] = v91;
    ++v36;
    v34 = v113 - v64;
    v35 = v113 - v31;
  }

  while (v31 < v30);
  v10 = v104;
  a5 = v105;
  v92 = __ptr;
  if (__ptr)
  {
    v92 = reallocToFit(__ptr, 24 * v36);
  }

LABEL_124:
  *a5 = v92;
  *v10 = v36;
LABEL_125:
  BXDiffMatchesDestroy(v24);
  if (*a5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_DWORD *ParallelCompressionAFSCStreamOpen(int a1, unint64_t a2, int a3, int a4)
{
  v10 = calloc(1uLL, 0x78uLL);
  if (!v10)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v13, "malloc", v14, v15, v33);
LABEL_46:
    free(v10);
    return 0;
  }

  if (!a2)
  {
    v11 = "File too small for AFSC";
    v12 = 167;
    goto LABEL_7;
  }

  if (a2 >= 0xFA000001)
  {
    v11 = "File too large for AFSC";
    v12 = 168;
LABEL_7:
    v16 = 0;
LABEL_45:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v12, 86, v16, v11, v8, v9, v33);
    free(*(v10 + 5));
    free(*(v10 + 8));
    free(*(v10 + 10));
    free(*(v10 + 11));
    goto LABEL_46;
  }

  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = 4;
  }

  v18 = a3 - 3;
  if (a3 - 3) <= 0xA && ((0x551u >> v18))
  {
    v17 = dword_29806915C[v18];
  }

  if (v17 <= 9)
  {
    if (v17 == 4)
    {
      v19 = 1285;
      goto LABEL_25;
    }

    if (v17 == 8)
    {
      v19 = 2304;
      v20 = 6;
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  if (v17 == 10)
  {
    v19 = 0;
    v21 = 0;
    v20 = -52;
    goto LABEL_28;
  }

  if (v17 == 12)
  {
    v19 = COMPRESSION_LZFSE;
    goto LABEL_25;
  }

  if (v17 != 14)
  {
LABEL_41:
    v33 = v17;
    v11 = "invalid compression type %d";
    v12 = 192;
    goto LABEL_7;
  }

  v19 = COMPRESSION_LZBITMAP;
LABEL_25:
  v20 = -1;
LABEL_26:
  v21 = compression_encode_scratch_buffer_size(v19);
  v22 = compression_decode_scratch_buffer_size(v19);
  if (v21 <= v22)
  {
    v21 = v22;
  }

LABEL_28:
  *v10 = a1;
  v23 = (a2 + 0xFFFF) >> 16;
  *(v10 + 1) = a2;
  v10[4] = v17;
  v10[5] = v19;
  *(v10 + 24) = v20;
  v10[7] = a4;
  v10[8] = v23;
  v24 = calloc(v23 + 1, 4uLL);
  *(v10 + 5) = v24;
  if (!v24)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 210;
    goto LABEL_45;
  }

  v25 = v24;
  *(v10 + 3) = xmmword_298069110;
  v26 = malloc(0x100000uLL);
  *(v10 + 8) = v26;
  if (!v26)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 214;
    goto LABEL_45;
  }

  *(v10 + 9) = 0;
  v27 = malloc(0x10000uLL);
  *(v10 + 10) = v27;
  if (!v27)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 217;
    goto LABEL_45;
  }

  if (v21)
  {
    v28 = malloc(v21);
    *(v10 + 11) = v28;
    if (!v28)
    {
      v16 = *__error();
      v11 = "malloc";
      v12 = 221;
      goto LABEL_45;
    }
  }

  v29 = 2;
  if (v10[4] == 4)
  {
    v29 = 3;
  }

  v30 = 4;
  if (v10[4] == 4)
  {
    v30 = 264;
  }

  v31 = (v10[8] << v29) + v30;
  if (HIDWORD(v31))
  {
    v11 = "File too large for AFSC";
    v12 = 235;
    goto LABEL_7;
  }

  v10[27] = v31;
  *v25 = v31;
  v10[26] = 0;
  *(v10 + 12) = 0;
  v10[28] = 0;
  return v10;
}

uint64_t ParallelCompressionAFSCStreamWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 96) + a3 <= *(a1 + 8))
  {
    if (!a3)
    {
      return 0;
    }

    v10 = 0;
    v14 = *(a1 + 56);
    while (v14 + 65537 <= *(a1 + 48) || (flushToResourceFork(a1) & 0x80000000) == 0)
    {
      v15 = *(a1 + 72);
      if (0x10000 - v15 + v10 <= a3)
      {
        v16 = 0x10000 - v15;
      }

      else
      {
        v16 = a3 - v10;
      }

      if (v16 == 0x10000)
      {
        v17 = (a2 + v10);
      }

      else
      {
        v17 = *(a1 + 80);
        memcpy(&v17[v15], (a2 + v10), v16);
        v15 = *(a1 + 72);
      }

      v18 = *(a1 + 96) + v16;
      *(a1 + 96) = v18;
      v10 += v16;
      v19 = v15 + v16;
      *(a1 + 72) = v15 + v16;
      if ((v15 + v16) >> 16 || v18 >= *(a1 + 8))
      {
        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        v22 = (v20 + v21);
        v23 = *(a1 + 20);
        v24 = v19 < 0x78 || v23 == 0;
        if (v24 || (v25 = compression_encode_buffer((v20 + v21), 0x10000uLL, v17, v19, *(a1 + 88), v23)) == 0 || (*(a1 + 28) & 1) != 0 && (v26 = v25 + (v25 >> 6), v25 = v26 + 32, v26 == -32) || v25 > *(a1 + 72) + 1)
        {
          *v22 = *(a1 + 24);
          memcpy(v22 + 1, v17, *(a1 + 72));
          v25 = *(a1 + 72) + 1;
        }

        *(a1 + 72) = 0;
        v14 = *(a1 + 56) + v25;
        *(a1 + 56) = v14;
        *(*(a1 + 40) + 4 * ++*(a1 + 104)) = *(*(a1 + 40) + 4 * *(a1 + 104)) + v25;
        if (v10 < a3)
        {
          continue;
        }
      }

      return v10;
    }

    v8 = "update resource fork";
    v9 = 270;
  }

  else
  {
    v8 = "too many bytes received";
    v9 = 262;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", v9, 86, 0, v8, a7, a8, v28);
  return -1;
}

uint64_t flushToResourceFork(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork", v4, v5, v8);
  }

  v6 = *(a1 + 108) + *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 108) = v6;
  *(a1 + 112) = 1;
  return (v2 >> 31);
}

uint64_t ParallelCompressionAFSCStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  memset(&v43, 0, sizeof(v43));
  if (*(a1 + 96) >= *(a1 + 8) && !*(a1 + 72))
  {
    v15 = *(a1 + 112);
    v16 = *(a1 + 20);
    if (v16)
    {
      v16 = (*(a1 + 28) >> 1) & 1;
    }

    if (*(a1 + 32) > 1u)
    {
      v16 = 1;
    }

    if ((*(a1 + 56) - 3569) < 0xFFFFFFFFFFFFF1FFLL)
    {
      v16 = 1;
    }

    if (v16 | v15)
    {
      if ((flushToResourceFork(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 341;
        goto LABEL_5;
      }

      v15 = *(a1 + 112);
    }

    v17 = (__PAIR64__(*(a1 + 16), v15) - 1) >> 32;
    v18 = *(a1 + 8);
    v19 = *(a1 + 80);
    *v19 = 1668116582;
    *(v19 + 4) = v17;
    *(v19 + 8) = v18;
    v20 = 16;
    *(a1 + 72) = 16;
    if (!*(a1 + 112))
    {
      memcpy((*(a1 + 80) + 16), *(a1 + 64), *(a1 + 56));
      v20 = *(a1 + 72) + *(a1 + 56);
      *(a1 + 72) = v20;
      *(a1 + 56) = 0;
    }

    if (fsetxattr(*a1, "com.apple.decmpfs", *(a1 + 80), v20, 0, 0) < 0)
    {
      v11 = *__error();
      v9 = "fsetxattr decmpfs";
      v10 = 363;
      goto LABEL_6;
    }

    if (!*(a1 + 112))
    {
      v22 = 0;
      goto LABEL_36;
    }

    if (*(a1 + 16) == 4)
    {
      v21 = *(a1 + 64);
      *v21 = old_resource_fork_map;
      *(v21 + 16) = unk_298069138;
      *(v21 + 32) = xmmword_298069148;
      *(v21 + 48) = 0;
      *(a1 + 56) = 50;
      if ((flushToResourceFork(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 373;
        goto LABEL_5;
      }

      v22 = *(a1 + 108);
      if (*(a1 + 16) == 4)
      {
        v23 = *(a1 + 32);
        if ((8 * v23) + 264 > *(a1 + 48))
        {
          LOBYTE(v42) = 8 * v23 + 8;
          v9 = "File a radar to increase obuf_capacity, sz=%zu";
          v10 = 382;
          goto LABEL_5;
        }

        v44 = 0u;
        v45 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v58 = 0u;
        v33 = *(a1 + 64);
        *v33 = 0x10000;
        *(v33 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v22), 0xFFFFFECEFFFFFFCELL));
        *(v33 + 12) = 838860800;
        v34 = v45;
        *(v33 + 16) = v44;
        *(v33 + 32) = v34;
        v35 = v49;
        *(v33 + 80) = v48;
        *(v33 + 96) = v35;
        v36 = v47;
        *(v33 + 48) = v46;
        *(v33 + 64) = v36;
        v37 = v53;
        *(v33 + 144) = v52;
        *(v33 + 160) = v37;
        v38 = v51;
        *(v33 + 112) = v50;
        *(v33 + 128) = v38;
        v39 = v57;
        *(v33 + 208) = v56;
        *(v33 + 224) = v39;
        v40 = v55;
        *(v33 + 176) = v54;
        *(v33 + 192) = v40;
        *(v33 + 240) = v58;
        *(v33 + 256) = bswap32(v22 - 310);
        *(v33 + 260) = v23;
        v24 = 264;
        *(a1 + 56) = 264;
        if (*(a1 + 32))
        {
          v41 = 0;
          v24 = 264;
          do
          {
            *(*(a1 + 64) + v24) = (*(*(a1 + 40) + 4 * v41) - 260) | ((*(*(a1 + 40) + 4 * v41 + 4) - *(*(a1 + 40) + 4 * v41)) << 32);
            ++v41;
            v24 = *(a1 + 56) + 8;
            *(a1 + 56) = v24;
          }

          while (v41 < *(a1 + 32));
        }

        goto LABEL_35;
      }
    }

    else
    {
      v22 = *(a1 + 108);
    }

    v24 = (4 * *(a1 + 32) + 4);
    if (*(a1 + 48) < v24)
    {
      v42 = 4 * *(a1 + 32) + 4;
      v9 = "File a radar to increase obuf_capacity, sz=%zu";
      v10 = 408;
      goto LABEL_5;
    }

    memcpy(*(a1 + 64), *(a1 + 40), (4 * *(a1 + 32) + 4));
    *(a1 + 56) = v24;
LABEL_35:
    if (fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v24, 0, 0) < 0)
    {
      v11 = *__error();
      v9 = "fsetxattr resource fork header";
      v10 = 418;
      goto LABEL_6;
    }

LABEL_36:
    if (ftruncate(*a1, 0))
    {
      v11 = *__error();
      v9 = "ftruncate";
      v10 = 422;
      goto LABEL_6;
    }

    if ((*(a1 + 28) & 4) != 0 || !*(a1 + 112) || 93 * *(a1 + 8) / 0x64uLL >= v22)
    {
      if (fstat(*a1, &v43))
      {
        v11 = *__error();
        v9 = "fstat";
        v10 = 465;
        goto LABEL_6;
      }

      if (fchflags(*a1, v43.st_flags | 0x20) < 0)
      {
        v11 = *__error();
        v9 = "fchflags UF_COMPRESSED";
        v10 = 466;
        goto LABEL_6;
      }
    }

    else
    {
      if (*(a1 + 32))
      {
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = (*(a1 + 40) + 4 * v25);
          v28 = v27[1];
          v29 = v28 - *v27;
          if (v28 == *v27 || v29 >= 0x10002)
          {
            v9 = "Invalid chunk size";
            v10 = 437;
            goto LABEL_5;
          }

          if (fgetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v28 - *v27, *v27, 32) != v29)
          {
            v9 = "reading chunk";
            v10 = 440;
            goto LABEL_5;
          }

          v31 = *(a1 + 64);
          if (*v31 == *(a1 + 24))
          {
            v32 = (v29 - 1);
            memcpy(*(a1 + 80), v31 + 1, v32);
          }

          else
          {
            v32 = compression_decode_buffer(*(a1 + 80), 0x10000uLL, v31, v29, *(a1 + 88), *(a1 + 20));
          }

          if (v32 != 0x10000)
          {
            if (!v32)
            {
              v9 = "Decompression";
              v10 = 451;
              goto LABEL_5;
            }

            if (v32 + v26 != *(a1 + 8))
            {
              break;
            }
          }

          if (pwrite(*a1, *(a1 + 80), v32, v26) != v32)
          {
            v9 = "writing chunk";
            v10 = 454;
            goto LABEL_5;
          }

          ++v25;
          v26 += v32;
          if (v25 >= *(a1 + 32))
          {
            goto LABEL_56;
          }
        }

        v9 = "Invalid uncompressed chunk size";
        v10 = 452;
        goto LABEL_5;
      }

LABEL_56:
      if (fremovexattr(*a1, "com.apple.ResourceFork", 32) < 0)
      {
        v11 = *__error();
        v9 = "Removing xattr";
        v10 = 459;
        goto LABEL_6;
      }

      if (fremovexattr(*a1, "com.apple.decmpfs", 32) < 0)
      {
        v11 = *__error();
        v9 = "Removing xattr";
        v10 = 460;
        goto LABEL_6;
      }
    }

    v12 = 0;
    goto LABEL_7;
  }

  v9 = "not enough bytes received";
  v10 = 325;
LABEL_5:
  v11 = 0;
LABEL_6:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v10, 86, v11, v9, a7, a8, v42);
  v12 = 0xFFFFFFFFLL;
LABEL_7:
  free(*(a1 + 40));
  free(*(a1 + 64));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(a1);
LABEL_9:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ParallelCompressionAFSCGetMetadataFD(int a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  memset(&v24, 0, sizeof(v24));
  if (fstat(a1, &v24))
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat", v9, v10, v23);
    v11 = 0;
LABEL_22:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if ((v24.st_flags & 0x20) != 0)
  {
    v11 = malloc(0x1000uLL);
    if (v11)
    {
      v13 = fgetxattr(a1, "com.apple.decmpfs", v11, 0x1000uLL, 0, 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v16 = "Missing decmpfs xattr";
        v17 = 504;
      }

      else if (v13 > 0xF)
      {
        if (*v11 == 1668116582)
        {
          v19 = *(v11 + 1);
          if (v19 > 0xE)
          {
            goto LABEL_27;
          }

          v20 = v11[1];
          if (((1 << v19) & 0x2A88) != 0)
          {
            v12 = 0;
            *a2 = v20;
            *a3 = v19;
            goto LABEL_5;
          }

          if (((1 << v19) & 0x5510) != 0)
          {
            *a2 = v20;
            *a3 = v19;
            v21 = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
            if ((v21 & 0x8000000000000000) != 0)
            {
              v16 = "Missing resource fork xattr";
              v17 = 532;
            }

            else
            {
              if (!HIDWORD(v21))
              {
                v12 = 0;
                *a4 = v21;
                goto LABEL_23;
              }

              v16 = "Invalid resource fork xattr";
              v17 = 533;
            }
          }

          else
          {
LABEL_27:
            v23 = *(v11 + 1);
            v16 = "Invalid compression type %u in decmpfs xattr";
            v17 = 524;
          }
        }

        else
        {
          v16 = "Invalid decmpfs xattr";
          v17 = 507;
        }
      }

      else
      {
        v16 = "Truncated decmpfs xattr";
        v17 = 505;
      }

      v18 = 0;
    }

    else
    {
      v18 = *__error();
      v16 = "malloc";
      v17 = 501;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v17, 86, v18, v16, v14, v15, v23);
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 0;
  *a2 = v24.st_size;
  *a3 = -1;
LABEL_5:
  *a4 = 0;
LABEL_23:
  free(v11);
  return v12;
}

uint64_t ParallelCompressionAFSCGetMetadata(const char *a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v13, "open %s", v14, v15, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", v10, v11, v7);
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 0;
    }

    close(v9);
  }

  return v12;
}

uint64_t ParallelCompressionAFSCFixupMetadata(const std::__fs::filesystem::path *a1, unsigned int a2, unsigned int a3)
{
  v197 = *MEMORY[0x29EDCA608];
  v179 = -1;
  v178 = 0;
  v177 = 0;
  memset(&v176, 0, sizeof(v176));
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  value[0] = 0;
  value[1] = 0;
  if (__strlcpy_chk() >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s", v6, v7, a1);
LABEL_5:
    v17 = 0;
    v18 = 0;
LABEL_138:
    v44 = 0;
    v72 = 0;
    v74 = 0;
    v34 = -1;
    goto LABEL_139;
  }

  if (__strlcat_chk() >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s", v15, v16, a1);
    goto LABEL_5;
  }

  v18 = malloc(0x100000uLL);
  if (!v18)
  {
    v23 = *__error();
    v21 = "malloc";
    v22 = 586;
LABEL_137:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v22, 86, v23, v21, v13, v14, v156);
    v17 = 0;
    goto LABEL_138;
  }

  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 4;
  }

  if ((v19 + 1) > 0xF)
  {
    goto LABEL_135;
  }

  v20 = 1 << (v19 + 1);
  if ((v20 & 0x5511) != 0)
  {
    if (a3)
    {
      v156 = a3;
      v21 = "Invalid resource fork size request: %u";
      v22 = 605;
LABEL_136:
      v23 = 0;
      goto LABEL_137;
    }

    goto LABEL_16;
  }

  if ((v20 & 0xAA20) == 0)
  {
LABEL_135:
    v156 = v19;
    v21 = "Invalid compression type request %d";
    v22 = 608;
    goto LABEL_136;
  }

LABEL_16:
  if ((ParallelCompressionAFSCGetMetadata(a1, &v177, &v179, &v178) & 0x80000000) != 0)
  {
LABEL_134:
    v156 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 615;
    goto LABEL_136;
  }

  v24 = 0;
  v166 = 0;
  v25 = 0;
  v165 = (v18 + 66);
  v26 = vadd_s32(vdup_n_s32(a3), 0xFFFFFECEFFFFFFCELL);
  v27 = vrev32_s8(v26);
  position = v26.i32[0];
  v162 = bswap32(a3 - 310);
  v28 = (v19 - 4);
  v169 = 0x551u >> (v19 - 4);
  while (1)
  {
    v172 = v177;
    if (v177 >= 0xFA000001)
    {
      v21 = "Invalid AFSC data";
      v22 = 616;
      goto LABEL_136;
    }

    v171 = v24;
    if (v179 == v19)
    {
      if (!a3 || v178 == a3)
      {
        goto LABEL_156;
      }

      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      v159 = v28;
      v29 = 4;
      if (v19 > 0xE)
      {
        v32 = v19;
      }

      else
      {
        v30 = 1 << v19;
        if (((1 << v19) & 0x5510) != 0)
        {
          v31 = 6;
        }

        else
        {
          v31 = 4;
        }

        if ((v30 & 0x2A88) != 0)
        {
          v29 = 4;
        }

        else
        {
          v29 = v31;
        }

        if ((v30 & 0x2A88) != 0)
        {
          v32 = v19 + 1;
        }

        else
        {
          v32 = v19;
        }
      }

      v33 = open(a1, 0);
      v34 = v33;
      if (v33 < 0)
      {
        v139 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v139, "open: %s", v140, v141, a1);
      }

      else
      {
        if (!fstat(v33, &v176))
        {
          v35 = mkstemp(&__from);
          v36 = v35;
          if (v35 < 0)
          {
            v148 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v148, "mkstemp", v149, v150, v156);
            v17 = 0;
            v44 = 0;
          }

          else
          {
            v163 = v25;
            v44 = ParallelCompressionAFSCStreamOpen(v35, v172, v32, v29);
            if (v44)
            {
              v167 = v19;
              v173 = v18;
              v45 = 0;
              v46 = 0;
              v47 = 0x100000;
              v48 = 0x100000;
              v49 = v172;
              while (1)
              {
                v50 = v49 >= v48 ? v48 : v49;
                if (v48 - 0x100000 >= v49)
                {
                  break;
                }

                v51 = v50 + v45;
                v52 = read(v34, v173, v50 + v45);
                if (v52 < 0)
                {
                  v124 = *__error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v124, "read: %s", v125, v126, a1);
                  goto LABEL_154;
                }

                if (v52 < v51)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s", v56, v57, a1);
LABEL_154:
                  v17 = 0;
LABEL_155:
                  v72 = 0;
                  v74 = 0;
                  v18 = v173;
                  goto LABEL_140;
                }

                v46 += 0x100000;
                v58 = ParallelCompressionAFSCStreamWrite(v44, v173, v51, v53, v54, v55, v56, v57);
                v48 += 0x100000;
                v45 -= 0x100000;
                v49 = v172;
                if (v172 >= v46)
                {
                  v59 = v46;
                }

                else
                {
                  v59 = v172;
                }

                v47 -= 0x100000;
                if (v58 < (v59 + v47))
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s", v42, v43, a1);
                  goto LABEL_154;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v44, v37, v38, v39, v40, v41, v42, v43) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error", v89, v90, v156);
                v17 = 0;
                v44 = 0;
                goto LABEL_155;
              }

              fchown(v36, v176.st_uid, v176.st_gid);
              fchmod(v36, v176.st_mode & 0xFFF);
              close(v34);
              close(v36);
              rename(&__from, a1, v91);
              v93 = v92;
              unlink(&__from);
              v18 = v173;
              v19 = v167;
              v28 = v159;
              v25 = v163;
              if ((v93 & 0x80000000) == 0)
              {
                goto LABEL_55;
              }

              v23 = *__error();
              v156 = a1;
              v21 = "rename: %s";
              v22 = 694;
              goto LABEL_137;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", v42, v43, a1);
            v17 = 0;
          }

          v72 = 0;
          v74 = 0;
          goto LABEL_140;
        }

        v145 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v145, "stat: %s", v146, v147, a1);
      }

LABEL_151:
      v17 = 0;
      v44 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_139;
    }

    v60 = open(a1, 9);
    v34 = v60;
    if (v60 < 0)
    {
      v133 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v133, "open %s", v134, v135, a1);
      goto LABEL_151;
    }

    if (write(v60, 0, 0) < 0)
    {
      v119 = *__error();
      v122 = "write";
      v123 = 630;
      goto LABEL_150;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 631;
      goto LABEL_137;
    }

    v179 = -1;
    v178 = 0;
LABEL_55:
    if ((ParallelCompressionAFSCGetMetadata(a1, &v177, &v179, &v178) & 0x80000000) != 0)
    {
      v156 = a1;
      v21 = "obtain AFSC data: %s";
      v22 = 699;
      goto LABEL_136;
    }

    if (v179 != v19)
    {
      v21 = "Couldn't convert to requested compression type";
      v22 = 700;
      goto LABEL_136;
    }

    if (!a3)
    {
      goto LABEL_156;
    }

    v61 = v178;
    v62 = a3 - v178;
    if (a3 == v178)
    {
      goto LABEL_156;
    }

    if (a3 >= v178)
    {
      break;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", v12, v13, v14, a1);
LABEL_61:
    if (v171)
    {
      v21 = "Second pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)";
      v156 = a1;
      v22 = 852;
      goto LABEL_136;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", v12, v13, v14, a1);
    v63 = open(a1, 9);
    v34 = v63;
    if (v63 < 0)
    {
      v136 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v136, "open %s", v137, v138, a1);
      goto LABEL_151;
    }

    if (write(v63, 0, 0) < 0)
    {
      v119 = *__error();
      v122 = "write";
      v123 = 865;
      goto LABEL_150;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 866;
      goto LABEL_137;
    }

    v179 = -1;
    v178 = 0;
    v64 = ParallelCompressionAFSCGetMetadata(a1, &v177, &v179, &v178);
    v24 = 1;
    if (v64 < 0)
    {
      goto LABEL_134;
    }
  }

  if (v28 > 0xA || (v169 & 1) == 0)
  {
    v156 = v19;
    v21 = "Invalid compression type %u";
    v22 = 722;
    goto LABEL_136;
  }

  v170 = dword_298069188[v28];
  v65 = open(a1, 0);
  v34 = v65;
  if (v65 < 0)
  {
    v142 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v142, "open: %s", v143, v144, a1);
    goto LABEL_151;
  }

  if (fstat(v65, &v176))
  {
    v119 = *__error();
    v122 = "fstat";
    v123 = 728;
LABEL_150:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v123, 86, v119, v122, v120, v121, v156);
    goto LABEL_151;
  }

  if (fgetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v119 = *__error();
    v122 = "Reading decmpfs";
    v123 = 729;
    goto LABEL_150;
  }

  if (fchflags(v34, v176.st_flags & 0xFFFFFFDF) < 0)
  {
    v119 = *__error();
    v122 = "fchflags UF_COMPRESSED";
    v123 = 730;
    goto LABEL_150;
  }

  v164 = v25;
  v168 = v19;
  v158 = (v172 + 0xFFFF) >> 16;
  v160 = v28;
  v66 = v61 + 0x100000;
  v67 = -v61;
  v68 = v61;
  while (1)
  {
    v69 = a3 >= v66 ? v66 : a3;
    if (v68 >= a3)
    {
      break;
    }

    v70 = v69 + v67;
    if (v68 == v61)
    {
      __memset_chk();
    }

    v71 = fsetxattr(v34, "com.apple.ResourceFork", v18, v70, v68, 0);
    v66 += 0x100000;
    v67 -= 0x100000;
    v68 += 0x100000;
    if (v71)
    {
      v119 = *__error();
      v122 = "Expanding resource fork";
      v123 = 738;
      goto LABEL_150;
    }
  }

  v72 = malloc(4 * v158 + 4);
  size = 4 * v158 + 4;
  v73 = malloc(size);
  v74 = v73;
  if (!v72 || !v73)
  {
    v151 = *__error();
    v154 = "malloc";
    v155 = 744;
    goto LABEL_188;
  }

  if (v168 != 4)
  {
    v83 = 4 * v158 + 4;
    if (fgetxattr(v34, "com.apple.ResourceFork", v72, size, 0, 32) != size)
    {
      v151 = *__error();
      v154 = "Reading chunk sizes";
      v155 = 763;
      goto LABEL_188;
    }

LABEL_99:
    v174 = v18;
    memcpy(v74, v72, v83);
    v74[v158] = v72[v158] + v62;
    v94 = (v172 + 0xFFFF) >> 16;
    while (v62 && v94)
    {
      v95 = v72[v94 - 1];
      v96 = v72[v94] - v95;
      if (fgetxattr(v34, "com.apple.ResourceFork", v174, v96, v95, 32) != v96)
      {
        v127 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v127, "Reading chunk", v128, v129, v156);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v174;
        goto LABEL_140;
      }

      v97 = 0x10000 - v96;
      if (v170 == *v174 || v96 > 0x10000)
      {
        v97 = 0;
      }

      if (v62 >= v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v62;
      }

      if (v97)
      {
        bzero(v174 + v96, v99);
      }

      v100 = (v99 + v96);
      v101 = v74[v94] - v100;
      v74[v94 - 1] = v101;
      v62 -= v99;
      --v94;
      if (fsetxattr(v34, "com.apple.ResourceFork", v174, v100, v101, 0))
      {
        v130 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v130, "Writing chunk", v131, v132, v156);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v174;
        goto LABEL_140;
      }
    }

    if (v168 == 4)
    {
      v102 = v193;
      v18 = v174;
      *(v174 + 51) = v192;
      *(v174 + 55) = v102;
      *(v174 + 59) = v194;
      v103 = v189;
      *(v174 + 35) = v188;
      *(v174 + 39) = v103;
      v104 = v191;
      *(v174 + 43) = v190;
      *(v174 + 47) = v104;
      v105 = v185;
      *(v174 + 19) = v184;
      *(v174 + 23) = v105;
      v106 = v187;
      *(v174 + 27) = v186;
      *(v174 + 31) = v106;
      v107 = v181;
      *(v174 + 3) = v180;
      *(v174 + 7) = v107;
      v108 = v183;
      *(v174 + 11) = v182;
      v25 = v164;
      *v174 = v164;
      *(v174 + 1) = v27;
      v109 = v195;
      *(v174 + 15) = v108;
      v174[63] = v109;
      v174[64] = v162;
      v174[65] = v166;
      if (v172)
      {
        if (v158 <= 1)
        {
          v110 = 1;
        }

        else
        {
          v110 = v158;
        }

        v111 = v74 + 1;
        v112 = *v74;
        v113 = v165;
        do
        {
          v114 = *v111++;
          *v113++ = (v112 - 260) | ((v114 - v112) << 32);
          v112 = v114;
          --v110;
        }

        while (v110);
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", v174, 8 * v158 + 264, 0, 0))
      {
        v151 = *__error();
        v154 = "Writing resource fork header";
        v155 = 817;
        goto LABEL_188;
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", &old_resource_fork_map, 0x32uLL, position, 0))
      {
        v151 = *__error();
        v154 = "Writing resource map";
        v155 = 820;
        goto LABEL_188;
      }
    }

    else
    {
      v18 = v174;
      v25 = v164;
      if (fsetxattr(v34, "com.apple.ResourceFork", v74, size, 0, 0))
      {
        v151 = *__error();
        v154 = "Writing chunk sizes";
        v155 = 827;
        goto LABEL_188;
      }
    }

    if (fsetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v151 = *__error();
      v154 = "Writing decmpfs";
      v155 = 831;
      goto LABEL_188;
    }

    if (fchflags(v34, v176.st_flags | 0x20) < 0)
    {
      v151 = *__error();
      v154 = "fchflags UF_COMPRESSED";
      v155 = 832;
      goto LABEL_188;
    }

    close(v34);
    free(v72);
    free(v74);
    if ((ParallelCompressionAFSCGetMetadata(a1, &v177, &v179, &v178) & 0x80000000) == 0)
    {
      v19 = v168;
      if (v179 != v168)
      {
        v28 = v160;
        goto LABEL_61;
      }

      v28 = v160;
      if (v178 != a3)
      {
        goto LABEL_61;
      }

LABEL_156:
      if (v171)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", v12, v13, v14, a1);
      }

      v44 = 0;
      v72 = 0;
      v74 = 0;
      v34 = -1;
      v17 = 1;
      goto LABEL_139;
    }

    v156 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 840;
    goto LABEL_136;
  }

  if (fgetxattr(v34, "com.apple.ResourceFork", v18, 8 * v158 + 264, 0, 32) == 8 * v158 + 264)
  {
    v75 = *v18;
    v76 = *(v18 + 55);
    v192 = *(v18 + 51);
    v193 = v76;
    v194 = *(v18 + 59);
    v195 = v18[63];
    v77 = *(v18 + 39);
    v188 = *(v18 + 35);
    v189 = v77;
    v78 = *(v18 + 47);
    v190 = *(v18 + 43);
    v191 = v78;
    v79 = *(v18 + 23);
    v184 = *(v18 + 19);
    v185 = v79;
    v80 = *(v18 + 31);
    v186 = *(v18 + 27);
    v187 = v80;
    v81 = *(v18 + 7);
    v180 = *(v18 + 3);
    v181 = v81;
    v82 = *(v18 + 15);
    v182 = *(v18 + 11);
    v183 = v82;
    v166 = v18[65];
    v164 = v75;
    if (v172)
    {
      v83 = 4 * v158 + 4;
      if (v158 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v158;
      }

      v85 = v72 + 1;
      v86 = v165;
      do
      {
        v87 = *v86;
        v88 = *(v86++ + 1);
        v87 += 260;
        *(v85 - 1) = v87;
        *v85++ = v87 + v88;
        --v84;
      }

      while (v84);
    }

    else
    {
      v83 = 4 * v158 + 4;
    }

    goto LABEL_99;
  }

  v151 = *__error();
  v154 = "Reading chunk sizes";
  v155 = 749;
LABEL_188:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v155, 86, v151, v154, v152, v153, v156);
  v17 = 0;
  v44 = 0;
LABEL_139:
  v36 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v44, v8, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error", v115, v116, v156);
    v17 = 0;
  }

  if ((v34 & 0x80000000) == 0)
  {
    close(v34);
  }

  if ((v36 & 0x80000000) == 0)
  {
    close(v36);
    unlink(&__from);
  }

  free(v18);
  free(v72);
  free(v74);
  if (v17)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v118 = *MEMORY[0x29EDCA608];
  return result;
}