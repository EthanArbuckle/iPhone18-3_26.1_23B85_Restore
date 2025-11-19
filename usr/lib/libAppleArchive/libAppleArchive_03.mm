uint64_t SharedArrayPush(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *a1;
    if (*a1 < v10)
    {
      *(*(a1 + 1) + 4 * v9) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 122;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

void SharedBufferDestroy(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t SharedBufferFillFromStream(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        v11 = "write after EOF";
        v12 = 365;
LABEL_25:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", v12, 73, 0, v11, a7, a8, v38);
      }

      else
      {
        v15 = a2;
        v16 = 0;
        v17 = a1 + 256;
        while (1)
        {
          v18 = *(a1 + 384);
          if (v18 <= 3)
          {
            v23 = *(v17 + 32 * v18 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_lock failed\n";
              v36 = 91;
LABEL_24:
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v36, 0, v35, v19, v20, v21, v38);
              v11 = "SharedArrayPop";
              v12 = 378;
              goto LABEL_25;
            }

            while (1)
            {
              v22 = *(a1 + 128);
              if (v22)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                v35 = "SharedArrayPop: pthread_cond_wait failed\n";
                v36 = 94;
                goto LABEL_24;
              }
            }

            v24 = v22 - 1;
            *(a1 + 128) = v24;
            v18 = *(*(a1 + 136) + 4 * v24);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_unlock failed\n";
              v36 = 98;
              goto LABEL_24;
            }

            if (v18 > 3)
            {
              goto LABEL_26;
            }

            v23 = 0;
            *(a1 + 384) = v18;
            v29 = (a1 + 272 + 32 * v18);
            *v29 = 0;
            v29[1] = 0;
          }

          v30 = (v17 + 32 * v18);
          if (v30[1] - v23 >= v15)
          {
            v31 = v15;
          }

          else
          {
            v31 = v30[1] - v23;
          }

          v32 = a3(a4, *v30 + v23, v31);
          if (v32 < 0)
          {
            v11 = "stream read";
            v12 = 393;
            goto LABEL_25;
          }

          v33 = v32;
          if (!v32)
          {
            break;
          }

          v34 = v30[3] + v32;
          v30[3] = v34;
          if (v34 == v30[1] && (currentWriteBufferFull(a1) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }

          v16 += v33;
          v15 -= v33;
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        if ((sendEOF(a1) & 0x80000000) == 0)
        {
LABEL_31:
          if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
          {
            return v16;
          }
        }
      }

LABEL_26:
      SharedBufferAbort(a1, v25, v26, v27, v28, v19, v20, v21, v38);
    }
  }

  return -1;
}

uint64_t sendEOF(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
  {
    if ((SharedArrayEnqueue_0(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue", v3, v4, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t currentWriteBufferFull(unsigned int *a1)
{
  v2 = a1[96];
  a1[96] = -1;
  if (v2 > 3)
  {
    return 0;
  }

  if ((SharedArrayEnqueue_0(a1, v2) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v4, v5, v1);
  return 0xFFFFFFFFLL;
}

size_t SharedBufferAbort(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    v10 = 0;
    atomic_compare_exchange_strong((result + 400), &v10, 1u);
    if (!v10)
    {
      if ((SharedArrayPush((result + 128), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush", v11, v12, v15);
      }

      result = SharedArrayEnqueue_0(v9, -1);
      if ((result & 0x80000000) != 0)
      {

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush", v13, v14, a9);
      }
    }
  }

  return result;
}

uint64_t SharedBufferFlushToStream(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_lock failed\n";
          v32 = 91;
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            v31 = "SharedArrayPop: pthread_cond_wait failed\n";
            v32 = 94;
            goto LABEL_26;
          }
        }

        v16 = *a1 - 1;
        *a1 = v16;
        v12 = *(*(a1 + 8) + 4 * v16);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v32 = 98;
LABEL_26:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v32, 0, v31, v13, v14, v15, v37);
          v33 = "SharedBufferFlushToStream";
          v34 = "SharedArrayDequeue";
          v35 = 448;
LABEL_27:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", v33, v35, 73, 0, v34, v25, v26, v37);
LABEL_28:
          SharedBufferAbort(a1, v17, v18, v19, v20, v13, v14, v15, v37);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v36 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v36, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_28;
        }

        *(a1 + 388) = v12;
      }

      v21 = (a1 + 256 + 32 * v12);
      v22 = v21[2];
      if (v21[3] - v22 >= v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = v21[3] - v22;
      }

      v24 = a3(a4, *v21 + v22, v23);
      if (v24 <= 0)
      {
        v33 = "SharedBufferFlushToStream";
        v34 = "stream write";
        v35 = 469;
        goto LABEL_27;
      }

      v27 = v24;
      v28 = v21[3];
      v29 = v21[2] + v24;
      v21[2] = v29;
      if (v29 == v28)
      {
        v30 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v30 <= 3 && (SharedArrayPush((a1 + 128), v30) & 0x80000000) != 0)
        {
          v33 = "currentReadBufferEmpty";
          v34 = "SharedArrayPush";
          v35 = 337;
          goto LABEL_27;
        }
      }

      v6 += v27;
      v11 -= v27;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t SharedArrayEnqueue_0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferWrite(size_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sendEOF(a1);
  }

  v10 = a2;
  return SharedBufferFillFromStream(a1, a3, SharedBufferReadFromBufferProc, &v10, a5, a6, a7, a8);
}

size_t SharedBufferReadFromBufferProc(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t SharedBufferRead(size_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return SharedBufferFlushToStream(a1, a3, SharedBufferWriteToBufferProc, v7);
}

size_t SharedBufferWriteToBufferProc(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t *AARemoveArchiveOutputStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  DefaultNThreads = a5;
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v39, 0, sizeof(v39));
  v12 = malloc(0x478uLL);
  v13 = v12;
  if (v12 && (memset_s(v12, 0x478uLL, 0, 0x478uLL), v11))
  {
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      if (stat(v13, &v39) || (v39.st_mode & 0xF000) != 0x4000)
      {
        v38 = a1;
        v27 = "Invalid directory: %s";
        v28 = 393;
        goto LABEL_24;
      }

      *(v13 + 1024) = a4;
      *(v13 + 1032) = a2;
      *(v13 + 1040) = a3;
      *(v13 + 1048) = getRealTime();
      *(v13 + 1120) = DefaultNThreads;
      v16 = StringTableCreate();
      *(v13 + 1088) = v16;
      if (!v16)
      {
        v27 = "string table creation";
        v28 = 402;
        goto LABEL_24;
      }

      v17 = calloc(*(v13 + 1120), 8uLL);
      *(v13 + 1128) = v17;
      if (v17)
      {
        if (*(v13 + 1120))
        {
          v18 = 0;
          while (1)
          {
            v19 = malloc(0x1040uLL);
            v20 = v19;
            if (v19)
            {
              memset_s(v19, 0x1040uLL, 0, 0x1040uLL);
              *(v20 + 2064) = -1;
              *v20 = v13;
              v21 = StringTableCreate();
              *(v20 + 2072) = v21;
              if (v21)
              {
                goto LABEL_19;
              }

              v22 = 82;
              v23 = 0;
              v24 = "StringTableCreate";
            }

            else
            {
              v23 = *__error();
              v22 = 78;
              v24 = "malloc";
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerCreate", v22, 123, v23, v24, v14, v15, v38);
            workerDestroy(v20);
            v20 = 0;
LABEL_19:
            *(*(v13 + 1128) + 8 * v18) = v20;
            v25 = *(v13 + 1128);
            if (!*(v25 + 8 * v18))
            {
              v27 = "creating new worker";
              v28 = 410;
              goto LABEL_24;
            }

            ++v18;
            v17 = *(v13 + 1120);
            if (v18 >= v17)
            {
              goto LABEL_31;
            }
          }
        }

        v25 = v17;
        LODWORD(v17) = 0;
LABEL_31:
        v37 = ThreadPoolCreate(v17, v25, workerProc_1);
        *(v13 + 1136) = v37;
        if (v37)
        {
          v11[3] = removeStreamWriteHeader;
          v11[4] = removeStreamWriteBlob;
          v11[2] = removeStreamAbort;
          *v11 = v13;
          v11[1] = removeStreamClose;
          return v11;
        }

        v27 = "ThreadPoolCreate";
        v28 = 415;
LABEL_24:
        v26 = 0;
      }

      else
      {
        v26 = *__error();
        v27 = "malloc";
        v28 = 406;
      }
    }

    else
    {
      v26 = *__error();
      v38 = a1;
      v27 = "%s";
      v28 = 392;
    }
  }

  else
  {
    v26 = *__error();
    v27 = "malloc";
    v28 = 391;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "AARemoveArchiveOutputStreamOpen", v28, 123, v26, v27, v14, v15, v38);
  free(v11);
  removeStreamClose(v13, v29, v30, v31, v32, v33, v34, v35);
  return 0;
}

uint64_t workerProc_1(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 2080))
  {
    v3 = 0;
    v4 = (a1 + 2088);
    do
    {
      if ((processEntry(a1, v4, *(a1 + 2072)) & 0x80000000) != 0)
      {
        v11 = 185;
        goto LABEL_14;
      }

      ++v3;
      v4 += 2;
    }

    while (v3 < *(a1 + 2080));
  }

  v7 = *(a1 + 4136);
  v8 = *(a1 + 4144);
  if (v7 < v8)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *(v2 + 1112) + v9;
      if (*(a1 + 4152) == *(v10 + 6))
      {
        if ((processEntry(a1, v10, *(v2 + 1088)) & 0x80000000) != 0)
        {
          v11 = 193;
LABEL_14:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerProc", v11, 123, 0, "entry failed", v5, v6, v14);
          v12 = 0;
          atomic_compare_exchange_strong((v2 + 1056), &v12, 1u);
          return 0;
        }

        v8 = *(a1 + 4144);
      }

      ++v7;
      v9 += 8;
    }

    while (v7 < v8);
  }

  return 0;
}

uint64_t removeStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 1024);
    if (atomic_load((result + 1056)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 314, 123, 0, "stream cancelled", a7, a8, v38);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v8 + 1080);
    if (v12)
    {
      if ((ThreadPoolRunWorker(*(v8 + 1136), v12, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 319, 123, 0, "ThreadPoolRunWorker", a7, a8, v38);
        v11 = 0;
      }

      *(v8 + 1080) = 0;
    }

    v13 = *(v8 + 1104);
    if (v13)
    {
      v14 = 0;
      v15 = (*(v8 + 1112) + 6);
      v16 = (v13 + *(v8 + 1120) - 1) / (4 * *(v8 + 1120));
      do
      {
        v18 = *v15;
        v15 += 4;
        v17 = v18;
        if (v18 > v14)
        {
          v14 = v17;
        }

        --v13;
      }

      while (v13);
      v19 = v16 <= 0xC8 ? 200 : v16;
      if (v11)
      {
        while (1)
        {
          if (*(v8 + 1104))
          {
            v20 = 0;
            while (1)
            {
              Worker = ThreadPoolGetWorker(*(v8 + 1136), v12, a3, a4, a5, a6, a7, a8);
              if (!Worker)
              {
                v28 = 335;
                v29 = "ThreadPoolGetWorker";
                goto LABEL_28;
              }

              *(Worker + 2080) = 0;
              *(Worker + 4136) = v20;
              v20 += v19;
              v26 = *(v8 + 1104);
              if (v20 < v26)
              {
                v26 = v20;
              }

              *(Worker + 4144) = v26;
              *(Worker + 4152) = v14;
              if ((ThreadPoolRunWorker(*(v8 + 1136), Worker, v22, v23, v24, v25, a7, a8) & 0x80000000) != 0)
              {
                break;
              }

              if (v20 >= *(v8 + 1104))
              {
                goto LABEL_25;
              }
            }

            v28 = 340;
            v29 = "ThreadPoolRunWorker";
LABEL_28:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", v28, 123, 0, v29, a7, a8, v38);
            v11 = 0;
            v27 = 1;
          }

          else
          {
LABEL_25:
            v27 = 0;
            v11 = 1;
          }

          ThreadPoolSync(*(v8 + 1136));
          if (!v14)
          {
            break;
          }

          --v14;
          if (v27)
          {
            v11 = 0;
            break;
          }
        }
      }
    }

    ThreadPoolDestroy(*(v8 + 1136));
    v30 = *(v8 + 1128);
    if (v30)
    {
      if (*(v8 + 1120))
      {
        v31 = 0;
        do
        {
          workerDestroy(*(*(v8 + 1128) + 8 * v31++));
        }

        while (v31 < *(v8 + 1120));
        v30 = *(v8 + 1128);
      }

      free(v30);
    }

    StringTableDestroy(*(v8 + 1088));
    free(*(v8 + 1112));
    if (v11 && v9 >> 62)
    {
      v32 = getRealTime() - *(v8 + 1048);
      v33 = MEMORY[0x29EDCA610];
      fwrite("Remove archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      v34 = *v33;
      v35 = atomic_load((v8 + 1064));
      fprintf(v34, "%12llu entries removed\n", v35);
      v36 = *v33;
      v37 = atomic_load((v8 + 1072));
      fprintf(v36, "%12llu entries skipped\n", v37);
      fprintf(*v33, "%12.2f time (s)\n", v32);
    }

    free(v8);
    if (v11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t removeStreamWriteHeader(uint64_t a1, AAHeader header)
{
  *&v67[1023] = *MEMORY[0x29EDCA608];
  value = -1;
  if (atomic_load((a1 + 1056)))
  {
    goto LABEL_2;
  }

  v7.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v7);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    v25 = "AA entry missing TYP field";
    v26 = 215;
LABEL_21:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", v26, 123, v25, v9, v10, v11, v61);
    goto LABEL_22;
  }

  if (value == 77)
  {
    goto LABEL_22;
  }

  length[0] = 0;
  v12.ikey = 5521744;
  v13 = AAHeaderGetKeyIndex(header, v12);
  if ((v13 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v13, 0x400uLL, &__s, length) >= 2)
  {
    v25 = "AA entry missing/invalid PAT field";
    v26 = 224;
    goto LABEL_21;
  }

  v18 = *(a1 + 1040);
  if (v18)
  {
    v19 = v18(*(a1 + 1032), 80, &__s, header);
    if (v19 < 0)
    {
      v28 = "user cancelled";
      v29 = 234;
      goto LABEL_48;
    }

    if (v19)
    {
      goto LABEL_22;
    }

    v20 = (*(a1 + 1040))(*(a1 + 1032), 81, &__s, length);
    if (v20 < 0)
    {
      v28 = "user cancelled";
      v29 = 239;
      goto LABEL_48;
    }

    if (v20)
    {
      __strlcpy_chk();
    }
  }

  if (value != 68)
  {
    v30 = *(a1 + 1080);
    if (!v30)
    {
      Worker = ThreadPoolGetWorker(*(a1 + 1136), v14, v15, v16, v17, v9, v10, v11);
      *(a1 + 1080) = Worker;
      if (!Worker)
      {
        v28 = "ThreadPoolGetWorker";
        v29 = 269;
        goto LABEL_48;
      }

      v30 = Worker;
      *(Worker + 2080) = 0;
      StringTableClear(*(Worker + 2072));
      *(v30 + 4136) = 0u;
      *(v30 + 4152) = -1;
    }

    v62 = 0;
    v32 = strlen(&__s);
    if ((StringTableAppend(*(v30 + 2072), &__s, v32, &v62, v33, v34, v35, v36) & 0x80000000) == 0)
    {
      v41 = *(v30 + 2080);
      v42 = v30 + 8 * v41++;
      *(v30 + 2080) = v41;
      *(v42 + 2088) = v62;
      *(v42 + 2092) = value;
      *(v42 + 2094) = 0;
      if (v41 == 256)
      {
        if ((ThreadPoolRunWorker(*(a1 + 1136), v30, v37, v38, v39, v40, v10, v11) & 0x80000000) == 0)
        {
          result = 0;
          *(a1 + 1080) = 0;
          goto LABEL_23;
        }

        v28 = "ThreadPoolRunWorker";
        v29 = 287;
        goto LABEL_48;
      }

LABEL_22:
      result = 0;
      goto LABEL_23;
    }

    v28 = "StringTableAppend";
    v29 = 278;
LABEL_48:
    v60 = 0;
LABEL_49:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", v29, 123, v60, v28, v10, v11, v61);
LABEL_2:
    result = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = *(a1 + 1104);
  if (v21 == *(a1 + 1096))
  {
    v22 = 2 * v21;
    v23 = v21 == 0;
    v24 = 256;
    if (!v23)
    {
      v24 = v22;
    }

    *(a1 + 1096) = v24;
    if ((8 * v24) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_51:
      *(a1 + 1096) = 0;
      *(a1 + 1104) = 0;
      *(a1 + 1112) = 0;
      v60 = *__error();
      v28 = "malloc";
      v29 = 250;
      goto LABEL_49;
    }

    v43 = *(a1 + 1112);
    v44 = realloc(v43, 8 * v24);
    if (!v44)
    {
      free(v43);
      goto LABEL_51;
    }

    *(a1 + 1112) = v44;
  }

  v63 = 0;
  v45 = strlen(&__s);
  v52 = StringTableAppend(*(a1 + 1088), &__s, v45, &v63, v46, v47, v48, v49);
  if (v52 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", 253, 123, 0, "StringTableAppend", v50, v51, v61);
  }

  else
  {
    v53 = *(a1 + 1112);
    v54 = *(a1 + 1104);
    *(a1 + 1104) = v54 + 1;
    v55 = v53 + 8 * v54;
    *v55 = v63;
    *(v55 + 4) = value;
    *(v55 + 6) = 0;
    v56 = __s;
    if (__s)
    {
      v57 = 0;
      v58 = v67;
      do
      {
        if (v56 == 47)
        {
          ++v57;
        }

        *(v55 + 6) = v57;
        v59 = *v58++;
        v56 = v59;
      }

      while (v59);
    }
  }

  result = (v52 >> 31);
LABEL_23:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t removeStreamWriteBlob(uint64_t a1)
{
  if (atomic_load((a1 + 1056)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void workerDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2064);
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
    }

    StringTableDestroy(*(a1 + 2072));

    free(a1);
  }
}

uint64_t processEntry(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  memset(&v37, 0, sizeof(v37));
  v5 = *a1;
  v6 = (*(a3 + 32) + *(*(a3 + 8) + 16 * *a2));
  if ((concatPath(__s, 0x400uLL, *a1, v6) & 0x80000000) != 0)
  {
    v17 = "invalid path";
    v18 = 114;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v9 = strrchr(__s, 47);
  if (!v9)
  {
    v17 = "invalid path";
    v18 = 118;
    goto LABEL_11;
  }

  v10 = v9;
  *v9 = 0;
  v11 = v9 + 1;
  v12 = strlen(__s);
  v15 = v12;
  v16 = *(a1 + 2064);
  if ((v16 & 0x80000000) == 0)
  {
    if (v12 == *(a1 + 2056) && !strcmp(__s, (a1 + 8)))
    {
LABEL_15:
      *v10 = 47;
      if ((fstatat(*(a1 + 2064), v11, &v37, 32) & 0x80000000) == 0)
      {
        v24 = aaEntryTypeFromMode(v37.st_mode);
        v25 = *(a2 + 2);
        if (v24 == v25)
        {
          v26 = 0;
          v27 = 1;
        }

        else
        {
          v30 = *(v5 + 130);
          if (!v30)
          {
            goto LABEL_28;
          }

          v31 = v30(*(v5 + 129), 83, v6, 0);
          v26 = v31 == 0;
          v27 = v31 >= 0;
          if (v31 < 1)
          {
            goto LABEL_26;
          }

          v25 = *(a2 + 2);
        }

        if (unlinkat(*(a1 + 2064), v11, (v25 == 68) << 7) < 0)
        {
          v34 = *(v5 + 130);
          if (v34)
          {
            v35 = v34(*(v5 + 129), 84, v6, 0);
            if (!v35)
            {
              v26 = 1;
            }

            if (v35 < 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v26 = 1;
          }
        }

        goto LABEL_26;
      }

      if (*__error() == 2)
      {
        goto LABEL_19;
      }

      v19 = *__error();
      v17 = __s;
      v18 = 128;
LABEL_12:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "processEntry", v18, 123, v19, v17, v7, v8, v36);
      goto LABEL_13;
    }

    close(v16);
    *(a1 + 2064) = -1;
  }

  if (v15 >= 0x800)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerUpdateDir", 95, 123, 0, "directory path too long", v13, v14, v36);
    goto LABEL_19;
  }

  *(a1 + 2056) = v15;
  memcpy((a1 + 8), __s, v15);
  *(a1 + 8 + v15) = 0;
  v23 = open((a1 + 8), 0);
  *(a1 + 2064) = v23;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v28 = *(v5 + 130);
  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = v28(*(v5 + 129), 82, v6, 0);
  if (!v29)
  {
    goto LABEL_28;
  }

  v26 = 0;
  v27 = v29 >= 0;
LABEL_26:
  if (v27)
  {
    if (!v26)
    {
      result = 0;
      v32 = (v5 + 1064);
      goto LABEL_29;
    }

LABEL_28:
    result = 0;
    v32 = (v5 + 1072);
LABEL_29:
    atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
    goto LABEL_30;
  }

LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "processEntry", 167, 123, 0, "Entry failed: %s", v20, v21, v6);
  result = 0xFFFFFFFFLL;
LABEL_30:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AEADecryptToFileChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unsigned int a9)
{
  v9 = a8;
  v30 = 0;
  v29[0] = a2;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a8 >> 62;
  LODWORD(v30) = a1[10] != 0;
  v11 = AEADecryptToFileChunkAsyncStreamOpen(a3, v29, asyncContext_0, asyncProgress_0, a6, a7, a8, a9);
  v14 = v11;
  if (!v11)
  {
    v18 = "AEADecryptToFileAsyncStreamOpen";
    v19 = 87;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", v19, 56, 0, v18, v12, v13, v26);
    v20 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(v11, a1, v9, a9) & 0x8000000000000000) == 0)
    {
      v20 = 1;
      goto LABEL_19;
    }

    v18 = "AAAsyncByteStreamProcessAllRanges";
    v19 = 115;
    goto LABEL_18;
  }

  while (1)
  {
    v27 = 0;
    v28 = 0;
    Range = AAAsyncByteStreamGetRange(v14, &v28, &v27);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v28)
      {
        v20 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        v21 = "AAByteStreamPReadAsync";
        v22 = 104;
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  v21 = "AAAsyncByteStreamGetRange";
  v22 = 99;
LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", v22, 56, 0, v21, v16, v17, v26);
  v20 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    v18 = "AAByteStreamPReadAsync barrier";
    v19 = 109;
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v14) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 119, 56, 0, "AAAsyncByteStreamClose", v23, v24, v26);
    v20 = 0;
  }

  if (v20)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t asyncContext_0(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 28))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 24))
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
              v19 = off_29EE51318[v18 & 3];
            }

            fprintf(v17, "  checksum: %s\n", v19);
            v20 = *v8;
            v21 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v20, "  container size: %llu B\n", v21);
            v22 = *v8;
            v23 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v22, "  raw size: %llu B\n", v23);
            if (v3[8])
            {
              v24 = "yes";
            }

            else
            {
              v24 = "no";
            }

            fprintf(*v8, "  async read stream: %s\n", v24);
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
          v3[7] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t asyncProgress_0(uint64_t a1)
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

uint64_t aaCompositeChunkAsyncStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a1;
  if (a1 && a2)
  {
    v10 = malloc(0x10uLL);
    v11 = v10;
    if (v10)
    {
      memset_s(v10, 0x10uLL, 0, 0x10uLL);
      *v11 = v5;
      v15 = AAChunkAsyncStreamOpen(v5, a2, a3, a4 | 0x200000000000000, a5, v12, v13, v14);
      *(v11 + 8) = v15;
      if (v15)
      {
        v18 = aaAsyncByteStreamAlloc(v11, compositeChunkAsyncClose, ~(a4 >> 55) & 4, 20.0, 1.0);
        if (v18)
        {
          v5 = v18;
          v18[2] = compositeChunkAsyncGetRange;
          v18[3] = compositeChunkAsyncProcess;
          v18[4] = compositeChunkAsyncCancel;
          v18[5] = compositeChunkAsyncIsCancelled;
          return v5;
        }

        v20 = "async stream alloc";
        v21 = 89;
      }

      else
      {
        v20 = "AAChunkAsyncStreamOpen";
        v21 = 86;
      }

      v19 = 0;
    }

    else
    {
      v19 = *__error();
      v20 = "malloc";
      v21 = 78;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", v21, 145, v19, v20, v16, v17, v23);
    compositeChunkAsyncClose(v11);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  return v5;
}

uint64_t (***compositeChunkAsyncClose(uint64_t (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    v2 = AAAsyncByteStreamClose(result[1]);
    v3 = AAAsyncByteStreamClose(*v1) | v2;
    free(v1);
    return (v3 >> 31);
  }

  return result;
}

void aeaContainerDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v2);
    v3 = *(a1 + 392);
    if (v3)
    {
      memset_s(*(a1 + 392), 544 * *(a1 + 400), 0, 544 * *(a1 + 400));
    }

    free(v3);
    memset_s(a1, 0x6C0uLL, 0, 0x6C0uLL);

    free(a1);
  }
}

uint64_t aeaContainerCreateNew(uint64_t a1)
{
  v2 = malloc(0x6C0uLL);
  v3 = v2;
  if (!v2)
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 22;
    goto LABEL_28;
  }

  memset_s(v2, 0x6C0uLL, 0, 0x6C0uLL);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  if ((aeaCryptoInit((v3 + 72), v3) & 0x80000000) != 0)
  {
    v12 = "Invalid context";
    v13 = 28;
    goto LABEL_27;
  }

  v8 = *(v3 + 4);
  if (v8)
  {
    v9 = malloc(*(v3 + 4));
    *(v3 + 384) = v9;
    if (v9)
    {
      memcpy(v9, *(a1 + 2712), v8);
      goto LABEL_6;
    }

    v14 = *__error();
    v12 = "malloc";
    v13 = 34;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateNew", v13, 28, v14, v12, v6, v7, v19);
    aeaContainerDestroy(v3);
    return 0;
  }

LABEL_6:
  if (*v3 <= 5u && ((1 << *v3) & 0x2A) != 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 592))
  {
    v15 = *(v3 + 240);
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = v15(a1 + 332, a1 + 592);
    if (*(a1 + 332) != *(v3 + 104) || v16 < 0)
    {
      goto LABEL_23;
    }

    v17 = *(a1 + 592);
    if (v17 >= 0x101)
    {
      __break(1u);
LABEL_23:
      v12 = "Invalid signing private key in context";
      v13 = 45;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = 0;
  }

  __memcpy_chk();
  *(v3 + 1188) = v17;
  memset_s((v3 + 1192 + v17), 256 - v17, 0, 256 - v17);
  *(v3 + 1712) = *(a1 + 2416);
  if (*(a1 + 332) != *(v3 + 104))
  {
    v12 = "Invalid signing public key in context";
    v13 = 55;
    goto LABEL_27;
  }

LABEL_10:
  if ((aeaContainerOffsetsInit(v3 + 280, v3, (v3 + 72)) & 0x80000000) != 0)
  {
    v12 = "deriving container offsets";
    v13 = 59;
    goto LABEL_27;
  }

  v11 = *(v3 + 344);
  *(v3 + 32) = 0;
  *(v3 + 40) = v11;
  if ((aeaDeriveMainKeyNew((v3 + 72), v3, (v3 + 668), (v3 + 928), (v3 + 408), (a1 + 72), (a1 + 2152), (a1 + 332), (a1 + 852)) & 0x80000000) != 0)
  {
    v12 = "Main key derivation";
    v13 = 75;
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  return v3;
}

uint64_t aeaContainerCreateExisting(uint64_t a1, AAByteStream_impl *a2, int a3, int a4)
{
  v131 = *MEMORY[0x29EDCA608];
  v111 = 0;
  memset(__s, 0, sizeof(__s));
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, sizeof(v105));
  v8 = malloc(0x6C0uLL);
  v9 = v8;
  if (!v8)
  {
    v27 = *__error();
    v28 = "malloc";
    v29 = 95;
    goto LABEL_41;
  }

  memset_s(v8, 0x6C0uLL, 0, 0x6C0uLL);
  v10 = (v9 + 668);
  if ((aeaContextUnlock(a1, v9, (v9 + 668), (v9 + 408), a3, a4) & 0x80000000) != 0)
  {
    v28 = "unlocking context";
    v29 = 99;
LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  if ((aeaCryptoInit((v9 + 72), v9) & 0x80000000) != 0)
  {
    v28 = "Invalid container";
    v29 = 102;
    goto LABEL_40;
  }

  if ((aeaContainerOffsetsInit(v9 + 280, v9, (v9 + 72)) & 0x80000000) != 0)
  {
    v28 = "deriving container offsets";
    v29 = 103;
    goto LABEL_40;
  }

  v13 = *(v9 + 4);
  if (v13)
  {
    v14 = malloc(*(v9 + 4));
    *(v9 + 384) = v14;
    if (v14)
    {
      memcpy(v14, *(a1 + 2712), v13);
      goto LABEL_8;
    }

    v27 = *__error();
    v28 = "malloc";
    v29 = 110;
LABEL_41:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v29, 28, v27, v28, v11, v12, v99);
    v26 = 0;
    goto LABEL_42;
  }

LABEL_8:
  if (*v9 > 5u || ((1 << *v9) & 0x2A) == 0)
  {
    if (*(a1 + 592))
    {
      v40 = *(v9 + 240);
      if (!v40)
      {
        goto LABEL_36;
      }

      v41 = v40(a1 + 332, a1 + 592);
      if (*(a1 + 332) != *(v9 + 104) || v41 < 0)
      {
        goto LABEL_36;
      }

      v42 = *(a1 + 592);
      if (v42 >= 0x101)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        v28 = "Invalid signing private key in context";
        v29 = 121;
        goto LABEL_40;
      }
    }

    else
    {
      v42 = 0;
    }

    __memcpy_chk();
    *(v9 + 1188) = v42;
    memset_s((v9 + 1192 + v42), 256 - v42, 0, 256 - v42);
    *(v9 + 1712) = *(a1 + 2416);
    if (*(a1 + 332) != *(v9 + 104))
    {
      v28 = "Invalid signing public key in context";
      v29 = 131;
      goto LABEL_40;
    }
  }

  v15 = *(v9 + 120);
  if (v15 >= 0x101)
  {
    goto LABEL_35;
  }

  v16 = *(a1 + 2720) + *(v9 + 304);
  v17 = *(v9 + 120);
  __memcpy_chk();
  *(v9 + 928) = v15;
  memset_s((v9 + 932 + v15), 256 - v15, 0, 256 - v15);
  v18 = *(v9 + 84);
  if (v18 >= 0x101)
  {
    goto LABEL_35;
  }

  v19 = *(a1 + 2720) + *(v9 + 336);
  v20 = *(v9 + 84);
  __memcpy_chk();
  LODWORD(v106[0]) = v18;
  memset_s(v106 + v18 + 4, 256 - v18, 0, 256 - v18);
  v21 = *(v9 + 84);
  if (v21 >= 0x101)
  {
    goto LABEL_35;
  }

  v22 = *(a1 + 2720) + *(v9 + 320);
  v23 = *(v9 + 84);
  __memcpy_chk();
  LODWORD(v108[0]) = v21;
  memset_s(v108 + v21 + 4, 256 - v21, 0, 256 - v21);
  v24 = AAByteStreamSeek(a2, 0, 2);
  if ((v24 & 0x8000000000000000) == 0 && v24 != *(v9 + 40))
  {
    v28 = "Container size mismatch";
    v29 = 143;
    goto LABEL_40;
  }

  v25 = *(v9 + 376);
  if (v25 <= 0x100000)
  {
    v26 = 0x100000;
  }

  else
  {
    v26 = *(v9 + 376);
  }

  if (v25 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_28:
    v37 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 151, 28, *v37, "malloc", v38, v39, v99);
LABEL_42:
    v33 = 0;
LABEL_43:
    v43 = 1;
    goto LABEL_44;
  }

  v30 = malloc(v26);
  if (!v30)
  {
    goto LABEL_28;
  }

  v33 = v30;
  v34 = (*(v9 + 32) + *(v9 + 16) - 1) / *(v9 + 16);
  if (HIDWORD(v34))
  {
    v35 = "Invalid sizes in root header";
    v36 = 155;
LABEL_51:
    v48 = 0;
LABEL_52:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v36, 28, v48, v35, v31, v32, v99);
    goto LABEL_43;
  }

  *(v9 + 400) = v34;
  v46 = *(v9 + 20);
  v47 = (v34 + v46 - 1) / v46;
  *(v9 + 404) = v47;
  if (((v46 * v47) & 0xFFFFFFFF00000000) != 0)
  {
    v35 = "Invalid sizes in root header";
    v36 = 158;
    goto LABEL_51;
  }

  v49 = v47 * v46;
  if (v49 >= 0xF0F0F10)
  {
    *__error() = 12;
    *(v9 + 392) = 0;
LABEL_99:
    v48 = *__error();
    v35 = "malloc";
    v36 = 171;
    goto LABEL_52;
  }

  v50 = calloc(v49, 0x220uLL);
  *(v9 + 392) = v50;
  if (!v50)
  {
    goto LABEL_99;
  }

  v100 = v26;
  v51 = *(v9 + 344);
  v102 = a2;
  v101 = (v9 + 668);
  if (*(v9 + 404))
  {
    v104 = 0;
    v52 = *(v9 + 376);
    while (1)
    {
      v103 = v51;
      if (*(a2 + 4))
      {
        v53 = 0;
        if (v52)
        {
          v54 = v33;
          v55 = v52;
          while (1)
          {
            v56 = (*(a2 + 4))(*a2, v54, v55, v51);
            if (v56 < 0)
            {
              break;
            }

            if (v56)
            {
              v54 += v56;
              v53 += v56;
              v51 += v56;
              v55 -= v56;
              if (v55)
              {
                continue;
              }
            }

            goto LABEL_67;
          }

          v53 = v56;
        }
      }

      else
      {
        v53 = -1;
      }

LABEL_67:
      if (v53 != v52)
      {
        v82 = "loading cluster header";
        v83 = 183;
        goto LABEL_108;
      }

      v128 = 0;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 0u;
      v120 = 0u;
      v119 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      memset(&v130[8], 0, 252);
      memset(v129, 0, 260);
      *&v130[8] = 19267;
      *v130 = 0x5F41454100000006;
      memset_s(&v130[10], 0xFAuLL, 0, 0xFAuLL);
      v57 = *v130;
      if (*v130 >= 0xFDu)
      {
        goto LABEL_35;
      }

      *&v130[*v130 + 4] = v104;
      *v130 = v57 + 4;
      memset_s(&v130[v57 + 8], 252 - v57, 0, 252 - v57);
      v58 = *(v9 + 144);
      if (!v58 || !*v10)
      {
        break;
      }

      v59 = v58(&v112, *(v9 + 72), v10, v130, v129);
      memset_s(v130, 0x104uLL, 0, 0x104uLL);
      v60 = 0;
      if (v59 < 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      memset(v129 + 12, 0, 248);
      *(v129 + 4) = 0x4B4548435F414541;
      LODWORD(v129[0]) = 8;
      memset_s(v129 + 12, 0xF8uLL, 0, 0xF8uLL);
      memset(v130, 0, sizeof(v130));
      v61 = *(v9 + 144);
      if (!v61 || !v112)
      {
        memset_s(v129, 0x104uLL, 0, 0x104uLL);
LABEL_106:
        memset_s(&v112, 0x104uLL, 0, 0x104uLL);
LABEL_107:
        v82 = "deriving cluster header key";
        v83 = 187;
LABEL_108:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v83, 28, 0, v82, v11, v12, v99);
        v43 = 1;
        goto LABEL_109;
      }

      v62 = v61(__s, *(v9 + 76), &v112, v129, v130);
      memset_s(v129, 0x104uLL, 0, 0x104uLL);
      if (v62 < 0)
      {
        goto LABEL_106;
      }

      memset_s(&v112, 0x104uLL, 0, 0x104uLL);
      if (v60)
      {
        goto LABEL_107;
      }

      v63 = *(v9 + 168);
      if (!v63 || LODWORD(v106[0]) != *(v9 + 84) || (v63(v33, *(v9 + 360), v106, __s, &v33[*(v9 + 360)], *(v9 + 376) - *(v9 + 360)) & 0x80000000) != 0)
      {
        v82 = "decrypting cluster header";
        v83 = 195;
        goto LABEL_108;
      }

      v64 = *(v9 + 84);
      if (v64 >= 0x101)
      {
        goto LABEL_35;
      }

      v65 = *(v9 + 360);
      v66 = *(v9 + 84);
      __memcpy_chk();
      LODWORD(v106[0]) = v64;
      memset_s(v106 + v64 + 4, 256 - v64, 0, 256 - v64);
      LODWORD(v67) = *(v9 + 20);
      if (v67)
      {
        v68 = 0;
        v69 = *(v9 + 368);
        v70 = *(v9 + 352);
        do
        {
          v71 = v68 + v104 * v67;
          if (v71 >= *(v9 + 400))
          {
            v52 = *(v9 + 376);
            a2 = v102;
            v51 = v52 + v103;
            v10 = (v9 + 668);
            goto LABEL_93;
          }

          v72 = (*(v9 + 392) + 544 * v71);
          *v72 = v71;
          v72[1] = *&v33[v70];
          v72[2] = *&v33[v70 + 4];
          v73 = *(v9 + 48);
          if (v73 >= 0x101)
          {
            goto LABEL_35;
          }

          v74 = v70 + 8;
          memcpy(v72 + 7, &v33[v74], *(v9 + 48));
          v72[6] = v73;
          memset_s(v72 + v73 + 28, 256 - v73, 0, 256 - v73);
          v75 = *(v9 + 84);
          if (v75 >= 0x101)
          {
            goto LABEL_35;
          }

          v70 = v74 + *(v9 + 48);
          memcpy(v72 + 72, &v33[v69], *(v9 + 84));
          v72[71] = v75;
          memset_s(v72 + v75 + 288, 256 - v75, 0, 256 - v75);
          v69 += *(v9 + 84);
          ++v68;
          LODWORD(v67) = *(v9 + 20);
        }

        while (v68 < v67);
        v52 = *(v9 + 376);
        a2 = v102;
        v51 = v52 + v103;
        v10 = (v9 + 668);
        if (!v67)
        {
          goto LABEL_96;
        }

LABEL_93:
        v76 = (v67 * v104);
        v77 = *(v9 + 400);
        v67 = v67;
        v78 = 544 * v76;
        do
        {
          if (v76 >= v77)
          {
            break;
          }

          v79 = *(v9 + 392) + v78;
          *(v79 + 16) = v51;
          v51 += *(v79 + 8);
          v78 += 544;
          ++v76;
          --v67;
        }

        while (v67);
      }

      else
      {
        v52 = *(v9 + 376);
        v51 = v52 + v103;
        a2 = v102;
        v10 = (v9 + 668);
      }

LABEL_96:
      if (++v104 >= *(v9 + 404))
      {
        goto LABEL_97;
      }
    }

    memset_s(v130, 0x104uLL, 0, 0x104uLL);
LABEL_74:
    v60 = 1;
    goto LABEL_75;
  }

LABEL_97:
  v80 = *(v9 + 40);
  v81 = v80 - v51;
  if (v80 < v51)
  {
    v82 = "Invalid container size";
    v83 = 230;
    goto LABEL_108;
  }

  *(v9 + 64) = v81;
  v26 = v100;
  if (v80 == v51 || *(a1 + 2740))
  {
    v43 = 0;
  }

  else
  {
    v84 = v51;
    memset(v130, 0, sizeof(v130));
    memset(v129, 0, 260);
    v128 = 0;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v112 = 0u;
    if (*(v9 + 248) && (*(v129 + 7) = 1262571615, *&v129[0] = 0x5F41454100000007, memset_s((v129 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v85 = *(v9 + 144)) != 0) && *v101 && (v85(v130, *(v9 + 72), v101, v129, &v112) & 0x80000000) == 0)
    {
      v86 = (*(v9 + 248))(v130);
    }

    else
    {
      v86 = 0;
    }

    memset_s(v130, 0x104uLL, 0, 0x104uLL);
    memset_s(v129, 0x104uLL, 0, 0x104uLL);
    if (!v86)
    {
      v82 = "authenticating padding";
      v83 = 241;
      goto LABEL_108;
    }

    v87 = v102;
    while (1)
    {
      if (v81 >= 0x100000)
      {
        v88 = 0x100000;
      }

      else
      {
        v88 = v81;
      }

      if (!*(v87 + 4))
      {
        goto LABEL_134;
      }

      v89 = 0;
      v90 = v33;
      v91 = v84;
      v92 = v88;
      while (1)
      {
        v93 = (*(v102 + 4))(*v102, v90, v92, v91);
        if (v93 < 0)
        {
          break;
        }

        if (v93)
        {
          v90 += v93;
          v89 += v93;
          v91 += v93;
          v92 -= v93;
          if (v92)
          {
            continue;
          }
        }

        goto LABEL_128;
      }

      v89 = v93;
LABEL_128:
      if (v89 != v88)
      {
LABEL_134:
        v82 = "loading padding";
        v83 = 250;
        goto LABEL_108;
      }

      v94 = *(v9 + 256);
      v87 = v102;
      if (!v94 || (v94(v86, v33, v88) & 0x80000000) != 0)
      {
        break;
      }

      v84 += v88;
      v81 -= v88;
      if (!v81)
      {
        v43 = 0;
        goto LABEL_136;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 252, 28, 0, "authenticating padding", v11, v12, v99);
    v43 = 1;
LABEL_136:
    memset(v130, 0, sizeof(v130));
    v95 = *(v9 + 264);
    if (!v95)
    {
      goto LABEL_144;
    }

    if (LODWORD(v106[0]) != *(v9 + 84))
    {
      goto LABEL_144;
    }

    if ((v95(v86, v130) & 0x80000000) != 0)
    {
      goto LABEL_144;
    }

    if (*v130 != *(v9 + 84))
    {
      goto LABEL_144;
    }

    if (*v130 >= 8u)
    {
      v96 = 0;
      v97 = 4;
      do
      {
        v96 |= *&v130[v97] ^ *(v106 + v97);
        v98 = v97 + 12;
        v97 += 8;
      }

      while (v98 <= *v130);
      if (v96)
      {
LABEL_144:
        memset_s(v130, 0x104uLL, 0, 0x104uLL);
        v82 = "authenticating padding";
        v83 = 257;
        goto LABEL_108;
      }
    }

    memset_s(v130, 0x104uLL, 0, 0x104uLL);
LABEL_109:
    v26 = v100;
  }

LABEL_44:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v108, 0x104uLL, 0, 0x104uLL);
  memset_s(v106, 0x104uLL, 0, 0x104uLL);
  memset_s(v105, 0x30uLL, 0, 0x30uLL);
  if (v33)
  {
    memset_s(v33, v26, 0, v26);
  }

  free(v33);
  if (v43)
  {
    aeaContainerDestroy(v9);
    v9 = 0;
  }

  v44 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t aeaContainerAppendSegment(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*__src == -1)
  {
    v22 = "Invalid segment id\n";
    v23 = 280;
  }

  else
  {
    v12 = *(a1 + 400);
    v13 = *(a1 + 404);
    v14 = *(a1 + 20);
    if (v12 < v14 * v13)
    {
      v15 = *(a1 + 40);
      goto LABEL_4;
    }

    *(a1 + 404) = v13 + 1;
    v24 = v14 * (v13 + 1);
    if (v24 < 0xFFFFFFFF)
    {
      if (v24 < 0xF0F0F10)
      {
        v25 = *(a1 + 392);
        v26 = realloc(v25, 544 * v24);
        if (v26)
        {
          *(a1 + 392) = v26;
          memset_s(&v26[544 * *(a1 + 400)], 544 * (v24 - *(a1 + 400)), 0, 544 * (v24 - *(a1 + 400)));
          v15 = *(a1 + 40) + *(a1 + 376);
          *(a1 + 40) = v15;
          v12 = *(a1 + 400);
LABEL_4:
          __src[2] = v15;
          v16 = *(__src + 2);
          memcpy((*(a1 + 392) + 544 * v12), __src, 0x220uLL);
          ++*(a1 + 400);
          v17 = *(a1 + 40) + v16;
          *(a1 + 32) += *(__src + 1);
          *(a1 + 40) = v17;
          if (*(a2 + 40))
          {
            v18 = 0;
            if (v16)
            {
              v19 = __src[2];
              v20 = v16;
              while (1)
              {
                v21 = (*(a2 + 40))(*a2, a4, v20, v19);
                if (v21 < 1)
                {
                  break;
                }

                a4 += v21;
                v18 += v21;
                v19 += v21;
                v20 -= v21;
                if (!v20)
                {
                  goto LABEL_18;
                }
              }

              v18 = v21;
            }

LABEL_18:
            if (v18 == v16)
            {
              return 0;
            }
          }

          v22 = "Segment write";
          v23 = 308;
          goto LABEL_21;
        }

        free(v25);
      }

      else
      {
        *__error() = 12;
      }

      *(a1 + 392) = 0;
      v28 = *__error();
      v22 = "malloc";
      v23 = 289;
      goto LABEL_22;
    }

    v22 = "Container size limit reached";
    v23 = 287;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", v23, 28, v28, v22, a7, a8, v29);
  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerRemovePadding(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 40) -= v2;
    *(a1 + 64) = 0;
    if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemovePadding", 328, 28, "Warning: container truncate failed", v3, v4, v5, vars0);
    }
  }

  return 0;
}

uint64_t aeaContainerRemoveLastSegment(uint64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[25].i32[0];
  if (!v8)
  {
    v10 = "No segments to remove";
    v11 = 339;
    goto LABEL_5;
  }

  if (a1[4].i64[0])
  {
    v10 = "Padding was not removed";
    v11 = 340;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", v11, 28, 0, v10, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  v14 = a1[24].i64[1] + 544 * (v8 - 1);
  v15 = a1[25].i32[1];
  a1[25].i32[0] = v8 - 1;
  a1[25].i32[1] = (v8 + a1[1].i32[1] - 2) / a1[1].i32[1];
  a1[2] = vsubw_u32(a1[2], *(v14 + 4));
  memset_s(v14, 0x220uLL, 0, 0x220uLL);
  if (v15 != a1[25].i32[1])
  {
    a1[2].i64[1] -= a1[23].i64[1];
  }

  if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 364, 28, "Warning: container truncate failed", v16, v17, v18, v19);
  }

  return 0;
}

uint64_t aeaContainerReencrypt(uint64_t a1, AAByteStream_impl *a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, unsigned int *a6)
{
  v140 = *MEMORY[0x29EDCA608];
  v120 = 0;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  *__n = 0u;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  *v87 = 0u;
  v88 = 0u;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
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
  *v70 = 0u;
  v71 = 0u;
  v12 = *(a1 + 16);
  v13 = *a1;
  v14 = *a1 < 6u;
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  v15 = malloc(v12);
  if (!v15)
  {
    v51 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 390, 28, *v51, "malloc", v52, v53, v60);
    v50 = 0xFFFFFFFFLL;
    goto LABEL_66;
  }

  if ((aeaDeriveMainKeyNew((a1 + 72), a1, v87, v70, __n, a3, a4, a5, a6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 400, 28, 0, "generating new main key", v16, v17, v61);
    v50 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v63 = v12;
  if (!*(a1 + 400))
  {
LABEL_47:
    v47 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101)
    {
      goto LABEL_68;
    }

    memcpy((a1 + 412), __n + 4, LODWORD(__n[0]));
    *(a1 + 408) = v47;
    memset_s((a1 + 412 + v47), 256 - v47, 0, 256 - v47);
    v48 = LODWORD(v87[0]);
    v12 = v63;
    if (LODWORD(v87[0]) >= 0x101 || (memcpy((a1 + 672), v87 + 4, LODWORD(v87[0])), *(a1 + 668) = v48, memset_s((a1 + 672 + v48), 256 - v48, 0, 256 - v48), v49 = LODWORD(v70[0]), LODWORD(v70[0]) >= 0x101))
    {
LABEL_68:
      __break(1u);
    }

    memcpy((a1 + 932), v70 + 4, LODWORD(v70[0]));
    *(a1 + 928) = v49;
    memset_s((a1 + 932 + v49), 256 - v49, 0, 256 - v49);
    v50 = 0;
    goto LABEL_65;
  }

  v18 = 0;
  v62 = v14 & (1u >> v13);
  v64 = (a1 + 668);
  v66 = v15;
  while (1)
  {
    if (!*(a2 + 4))
    {
      goto LABEL_54;
    }

    v19 = *(a1 + 392) + 544 * v18;
    v20 = *(a1 + 20);
    nbyte = *(v19 + 8);
    v65 = v19;
    v21 = 0;
    if (nbyte)
    {
      v22 = *(v19 + 16);
      v23 = v15;
      v24 = *(v19 + 8);
      while (1)
      {
        v25 = (*(a2 + 4))(*a2, v23, v24, v22);
        if (v25 < 0)
        {
          break;
        }

        if (v25)
        {
          v23 += v25;
          v21 += v25;
          v22 += v25;
          v24 -= v25;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v21 = v25;
    }

LABEL_13:
    v15 = v66;
    if (v21 != nbyte)
    {
LABEL_54:
      v56 = "loading compressed segment";
      v57 = 412;
      goto LABEL_63;
    }

    v137 = 0;
    v136 = 0uLL;
    v135 = 0uLL;
    v134 = 0uLL;
    v133 = 0uLL;
    v132 = 0uLL;
    v131 = 0uLL;
    v130 = 0uLL;
    v129 = 0uLL;
    v128 = 0uLL;
    v127 = 0uLL;
    v126 = 0uLL;
    v125 = 0uLL;
    v124 = 0uLL;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    *(&__s[15] + 4) = 0uLL;
    *(&__s[14] + 8) = 0uLL;
    *(&__s[13] + 8) = 0uLL;
    *(&__s[12] + 8) = 0uLL;
    *(&__s[11] + 8) = 0uLL;
    *(&__s[10] + 8) = 0uLL;
    *(&__s[9] + 8) = 0uLL;
    *(&__s[8] + 8) = 0uLL;
    *(&__s[7] + 8) = 0uLL;
    *(&__s[6] + 8) = 0uLL;
    *(&__s[5] + 8) = 0uLL;
    *(&__s[4] + 8) = 0uLL;
    *(&__s[3] + 8) = 0uLL;
    *(&__s[2] + 8) = 0uLL;
    *(&__s[1] + 8) = 0uLL;
    __s[0] = 0x5F41454100000006uLL;
    memset(v138, 0, 260);
    WORD4(__s[0]) = 19267;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v26 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v18 / v20;
    LODWORD(__s[0]) = v26 + 4;
    memset_s(__s + v26 + 8, 252 - v26, 0, 252 - v26);
    v27 = *(a1 + 144);
    if (v27 && *v64)
    {
      v28 = v27(&v121, *(a1 + 72), v64, __s, v138);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v29 = 0;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v29 = 1;
LABEL_21:
    memset(v138 + 8, 0, 224);
    memset(&v138[14] + 8, 0, 28);
    WORD4(v138[0]) = 19283;
    *&v138[0] = 0x5F41454100000006;
    memset_s(v138 + 10, 0xFAuLL, 0, 0xFAuLL);
    v30 = LODWORD(v138[0]);
    if (LODWORD(v138[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    v31 = v18 % v20;
    *(v138 + LODWORD(v138[0]) + 4) = v18 % v20;
    LODWORD(v138[0]) = v30 + 4;
    memset_s(v138 + v30 + 8, 252 - v30, 0, 252 - v30);
    memset(__s, 0, 260);
    v32 = *(a1 + 144);
    if (!v32 || !v121)
    {
      memset_s(v138, 0x104uLL, 0, 0x104uLL);
LABEL_57:
      memset_s(&v121, 0x104uLL, 0, 0x104uLL);
LABEL_58:
      v54 = "deriving segment key";
      v55 = 416;
LABEL_59:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", v55, 28, 0, v54, v34, v35, v61);
      v50 = 0xFFFFFFFFLL;
      v15 = v66;
      goto LABEL_64;
    }

    v33 = v32(v68, *(a1 + 76), &v121, v138, __s);
    memset_s(v138, 0x104uLL, 0, 0x104uLL);
    if (v33 < 0)
    {
      goto LABEL_57;
    }

    memset_s(&v121, 0x104uLL, 0, 0x104uLL);
    if (v29)
    {
      goto LABEL_58;
    }

    v36 = *(a1 + 168);
    if (!v36 || (v37 = (v65 + 284), *(v65 + 284) != *(a1 + 84)) || (v36(v66, nbyte, v65 + 284, v68, 0, 0) & 0x80000000) != 0)
    {
      v54 = "decrypting segment data";
      v55 = 418;
      goto LABEL_59;
    }

    v137 = 0;
    v136 = 0u;
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
    memset(__s + 8, 0, 252);
    memset(v138, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v38 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v18 / v20;
    LODWORD(__s[0]) = v38 + 4;
    memset_s(__s + v38 + 8, 252 - v38, 0, 252 - v38);
    v39 = *(a1 + 144);
    if (v39 && LODWORD(v87[0]))
    {
      v40 = v39(&v121, *(a1 + 72), v87, __s, v138);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v41 = 0;
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v41 = 1;
LABEL_36:
    memset(v138 + 8, 0, 224);
    memset(&v138[14] + 8, 0, 28);
    WORD4(v138[0]) = 19283;
    *&v138[0] = 0x5F41454100000006;
    memset_s(v138 + 10, 0xFAuLL, 0, 0xFAuLL);
    v42 = LODWORD(v138[0]);
    if (LODWORD(v138[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(v138 + LODWORD(v138[0]) + 4) = v31;
    LODWORD(v138[0]) = v42 + 4;
    memset_s(v138 + v42 + 8, 252 - v42, 0, 252 - v42);
    memset(__s, 0, 260);
    v43 = *(a1 + 144);
    if (!v43 || !v121)
    {
      break;
    }

    v44 = v43(v68, *(a1 + 76), &v121, v138, __s);
    memset_s(v138, 0x104uLL, 0, 0x104uLL);
    v15 = v66;
    if (v44 < 0)
    {
      goto LABEL_61;
    }

    memset_s(&v121, 0x104uLL, 0, 0x104uLL);
    if (v41)
    {
      goto LABEL_62;
    }

    v45 = *(a1 + 160);
    if (!v45 || (v46 = v45(v66, nbyte, v37, v68, 0, 0), *v37 != *(a1 + 84)) || v46 < 0)
    {
      v56 = "decrypting segment data";
      v57 = 424;
      goto LABEL_63;
    }

    if ((v62 & 1) == 0 && AAByteStreamPWrite(a2, v66, nbyte, *(v65 + 16)) != nbyte)
    {
      v56 = "storing compressed segment";
      v57 = 429;
      goto LABEL_63;
    }

    if (++v18 >= *(a1 + 400))
    {
      goto LABEL_47;
    }
  }

  memset_s(v138, 0x104uLL, 0, 0x104uLL);
  v15 = v66;
LABEL_61:
  memset_s(&v121, 0x104uLL, 0, 0x104uLL);
LABEL_62:
  v56 = "deriving segment key";
  v57 = 422;
LABEL_63:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", v57, 28, 0, v56, v16, v17, v61);
  v50 = 0xFFFFFFFFLL;
LABEL_64:
  v12 = v63;
LABEL_65:
  memset_s(v15, v12, 0, v12);
LABEL_66:
  free(v15);
  memset_s(v87, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v70, 0x104uLL, 0, 0x104uLL);
  memset_s(v68, 0x104uLL, 0, 0x104uLL);
  v58 = *MEMORY[0x29EDCA608];
  return v50;
}

uint64_t aeaContainerLoadSegment(uint64_t a1, void *a2, unsigned int a3, uint8_t *a4, const uint8_t *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x29EDCA608];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  if (*(a1 + 400) <= a3)
  {
    v20 = "Invalid segment index";
    v21 = 463;
    goto LABEL_41;
  }

  if (!a2[4])
  {
    goto LABEL_20;
  }

  v13 = *(a1 + 392) + 544 * a3;
  v14 = *(v13 + 8);
  __n = *(v13 + 4);
  v43 = v13;
  if (v14)
  {
    v15 = 0;
    v16 = *(v13 + 16);
    v17 = v9;
    v18 = *(v13 + 8);
    while (1)
    {
      v19 = (a2[4])(*a2, v9, v14, v16);
      if (v19 < 0)
      {
        break;
      }

      if (v19)
      {
        v9 += v19;
        v15 += v19;
        v16 += v19;
        v14 -= v19;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v15 = v19;
  }

  else
  {
    v17 = v9;
    v18 = *(v13 + 8);
    v15 = 0;
  }

LABEL_15:
  if (v15 != v18)
  {
LABEL_20:
    v20 = "loading segment";
    v21 = 471;
    goto LABEL_41;
  }

  v22 = v18;
  v23 = v17;
  v24 = *(a1 + 20);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  memset(&__s[8], 0, 252);
  memset(v55, 0, 260);
  *&__s[8] = 19267;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  v41 = v22;
  *&__s[10] = a3 / v24;
  *__s = 0x5F4145410000000ALL;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v25 = *(a1 + 144);
  if (v25 && *(a1 + 668))
  {
    v26 = v25(v53, *(a1 + 72));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v27 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v27 = 1;
LABEL_23:
  memset(v55 + 8, 0, 224);
  memset(&v55[14] + 8, 0, 28);
  WORD4(v55[0]) = 19283;
  *&v55[0] = 0x5F41454100000006;
  result = memset_s(v55 + 10, 0xFAuLL, 0, 0xFAuLL);
  v29 = LODWORD(v55[0]);
  if (LODWORD(v55[0]) < 0xFD)
  {
    *(v55 + LODWORD(v55[0]) + 4) = a3 % v24;
    LODWORD(v55[0]) = v29 + 4;
    memset_s(v55 + v29 + 8, 252 - v29, 0, 252 - v29);
    memset(__s, 0, sizeof(__s));
    v30 = *(a1 + 144);
    if (v30 && LODWORD(v53[0]))
    {
      v31 = v30(v49, *(a1 + 76), v53, v55, __s);
      memset_s(v55, 0x104uLL, 0, 0x104uLL);
      if ((v31 & 0x80000000) == 0)
      {
        memset_s(v53, 0x104uLL, 0, 0x104uLL);
        if (!v27)
        {
          v32 = *(a1 + 168);
          if (v32 && *(v43 + 284) == *(a1 + 84) && (v32(v23, v41) & 0x80000000) == 0)
          {
            v35 = __n;
            if (v8)
            {
              v36 = *(a1 + 24);
              if (v36 && __n > v41)
              {
                if (v36 == 774)
                {
                  v37 = PCompressLZMADecode(a4, *(a1 + 16), a5, v41);
                  if (v37 >= 0)
                  {
                    v37 = v37;
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else
                {
                  v39 = aeaEffectiveCompressionAlgorithm(v36);
                  v37 = compression_decode_buffer(a4, *(a1 + 16), a5, v41, a6, v39);
                }

                if (v37 != __n)
                {
                  v20 = "Segment decompression";
                  v21 = 511;
                  goto LABEL_41;
                }
              }

              else
              {
                memcpy(a4, a5, __n);
              }
            }

            if ((aeaChecksum(v47, *(a1 + 12), a4, __n, v33, v34, a7, a8) & 0x80000000) != 0)
            {
              v20 = "computing segment checksum";
              v21 = 515;
            }

            else
            {
              v40 = *(a1 + 48);
              if (!v40 || !memcmp(v47 + 4, (v43 + 28), v40))
              {
                goto LABEL_42;
              }

              v20 = "Checksum verification failed, data corrupted";
              v21 = 519;
            }
          }

          else
          {
            v20 = "decrypting segment data";
            v21 = 485;
          }

LABEL_41:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", v21, 28, 0, v20, a7, a8, v41);
          v35 = -1;
LABEL_42:
          memset_s(v51, 0x104uLL, 0, 0x104uLL);
          memset_s(v49, 0x104uLL, 0, 0x104uLL);
          memset_s(v47, 0x104uLL, 0, 0x104uLL);
          v38 = *MEMORY[0x29EDCA608];
          return v35;
        }

LABEL_40:
        v20 = "deriving segment key";
        v21 = 481;
        goto LABEL_41;
      }
    }

    else
    {
      memset_s(v55, 0x104uLL, 0, 0x104uLL);
    }

    memset_s(v53, 0x104uLL, 0, 0x104uLL);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

unint64_t aeaPaddedContainerSize(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a2 > 0xF)
    {
      goto LABEL_8;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (result >= 8)
        {
          v9 = __clz(result);
          v10 = __clz(v9 ^ 0x3F) - v9;
          if (v10 < -31)
          {
            return -1;
          }

          a2 = 1 << (v10 + 31);
LABEL_8:
          if (!__CFADD__(result, a2 - 1))
          {
            return (result + a2 - 1) / a2 * a2;
          }

          return -1;
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaPaddedContainerSize", 585, 28, 0, "Invalid padding_alignment", a7, a8, v8);
        return -1;
      }
    }
  }

  return result;
}

uint64_t aeaContainerFinish(uint64_t a1, AAByteStream_impl *a2)
{
  v219 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  if (v3 <= v4)
  {
    v5 = *(a1 + 376);
  }

  else
  {
    v5 = *(a1 + 344);
  }

  v182 = 0;
  if (v5 <= 0x100000)
  {
    v6 = 0x100000;
  }

  else
  {
    v6 = v5;
  }

  memset(__s, 0, sizeof(__s));
  v180 = 0;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  *v164 = 0u;
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  v161 = 0;
  memset(v160, 0, sizeof(v160));
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  *v143 = 0u;
  v144 = 0u;
  v142 = 0;
  memset(v141, 0, sizeof(v141));
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  v135 = 0;
  v134 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0u;
  if (v5 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_21:
    v23 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 620, 28, *v23, "malloc", v24, v25, nbyte);
    v8 = 0;
    v22 = 0;
    v26 = 0;
    v27 = 0xFFFFFFFFLL;
    v28 = 1;
LABEL_25:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v164, 0x104uLL, 0, 0x104uLL);
    memset_s(v141, 0x104uLL, 0, 0x104uLL);
    memset_s(v162, 0x104uLL, 0, 0x104uLL);
    memset_s(v160, 0x104uLL, 0, 0x104uLL);
    memset_s(v143, 0x104uLL, 0, 0x104uLL);
    memset_s(v139, 0x104uLL, 0, 0x104uLL);
    memset_s(&v136, 0x30uLL, 0, 0x30uLL);
    memset_s(&v134, 0xCuLL, 0, 0xCuLL);
    if ((v28 & 1) == 0)
    {
      memset_s(v8, v6, 0, v6);
    }

    free(v8);
    if (v26)
    {
      memset_s(v26, v22, 0, v22);
    }

    free(v26);
    v31 = *(a1 + 384);
    if (v31)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v31);
    *(a1 + 384) = 0;
    v32 = *MEMORY[0x29EDCA608];
    return v27;
  }

  v7 = malloc(v6);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(a1 + 84);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v9 > 0x100 || (v12 = *(a1 + 136)) == 0 || (v12(__s + 4, v9) & 0x80000000) != 0)
  {
    v29 = "generating last cluster random MAC";
    v30 = 624;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v30, 28, 0, v29, v10, v11, nbyte);
    v28 = 0;
    v22 = 0;
    v26 = 0;
LABEL_24:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  __n = v6;
  LODWORD(__s[0]) = v9;
  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 40);
    v19 = aeaPaddedContainerSize(v18, v17, v13, v14, v15, v16, v10, v11);
    if (v19 == -1)
    {
      v34 = "Container size is too large to allow padding";
      v35 = 631;
LABEL_130:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v35, 28, 0, v34, v10, v11, nbyte);
      v28 = 0;
      v22 = 0;
      goto LABEL_131;
    }

    v20 = v19;
    if (v19 > v18)
    {
      memset(v218, 0, sizeof(v218));
      memset(v217, 0, 260);
      v216 = 0;
      v215 = 0u;
      v214 = 0u;
      v213 = 0u;
      v212 = 0u;
      v211 = 0u;
      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      v204 = 0u;
      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v200 = 0u;
      if (*(a1 + 248) && (*(v217 + 7) = 1262571615, *&v217[0] = 0x5F41454100000007, memset_s((v217 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v21 = *(a1 + 144)) != 0) && *(a1 + 668) && (v21(v218, *(a1 + 72)) & 0x80000000) == 0)
      {
        v22 = (*(a1 + 248))(v218);
      }

      else
      {
        v22 = 0;
      }

      memset_s(v218, 0x104uLL, 0, 0x104uLL);
      memset_s(v217, 0x104uLL, 0, 0x104uLL);
      if (!v22)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 636, 28, 0, "hashing padding", v36, v37, nbyte);
        v28 = 0;
LABEL_131:
        v26 = 0;
LABEL_132:
        v27 = 0xFFFFFFFFLL;
LABEL_133:
        v6 = __n;
        goto LABEL_25;
      }

      nbyte = v3;
      v131 = v22;
      while (1)
      {
        if (v20 - v18 >= 0x100000)
        {
          v38 = 0x100000;
        }

        else
        {
          v38 = v20 - v18;
        }

        v39 = *(a1 + 136);
        if (!v39 || (v39(v8, v38) & 0x80000000) != 0)
        {
          v48 = "generating padding";
          v49 = 640;
          goto LABEL_58;
        }

        v40 = *(a1 + 256);
        if (!v40 || (v40(v22, v8, v38) & 0x80000000) != 0)
        {
          v48 = "hashing padding";
          v49 = 641;
          goto LABEL_58;
        }

        if (!*(a2 + 5))
        {
          break;
        }

        v41 = v20;
        if (v20 == v18)
        {
          v42 = 0;
        }

        else
        {
          v42 = 0;
          v43 = v8;
          v44 = v18;
          v45 = v38;
          while (1)
          {
            v46 = (*(a2 + 5))(*a2, v43, v45, v44);
            if (v46 < 1)
            {
              break;
            }

            v43 += v46;
            v42 += v46;
            v44 += v46;
            v45 -= v46;
            if (!v45)
            {
              goto LABEL_51;
            }
          }

          v42 = v46;
        }

LABEL_51:
        v22 = v131;
        if (v38 != v42)
        {
          break;
        }

        v20 = v41;
        v18 += v38;
        if (v18 >= v41)
        {
          v47 = 0;
          goto LABEL_59;
        }
      }

      v48 = "writing padding";
      v49 = 642;
LABEL_58:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v49, 28, 0, v48, v36, v37, nbyte);
      v47 = 1;
LABEL_59:
      v50 = *(a1 + 264);
      if (v50)
      {
        if ((v50(v22, __s) & 0x80000000) == 0 && LODWORD(__s[0]) == *(a1 + 84))
        {
          if (!v47)
          {
            *(a1 + 40) = v18;
            v3 = nbyte;
            goto LABEL_64;
          }

          goto LABEL_129;
        }

        memset_s(__s, 0x104uLL, 0, 0x104uLL);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 645, 28, 0, "hashing padding", v36, v37, nbyte);
LABEL_129:
      v34 = "Padding generation and hashing failed";
      v35 = 647;
      goto LABEL_130;
    }
  }

LABEL_64:
  nbyte = v3;
  v51 = *(a1 + 404);
  v52 = v51 - 1;
  v128 = (a1 + 668);
  while (v51)
  {
    v53 = *(a1 + 20);
    v130 = v52;
    v132 = v51 - 1;
    v54 = (v53 * (v51 - 1));
    v55 = *(a1 + 400);
    if (v53 * v51 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = (v53 * v51);
    }

    v57 = *(a1 + 392);
    v129 = *(v57 + 544 * v54 + 16);
    v58 = *(a1 + 368);
    v59 = *(a1 + 376);
    v60 = 0;
    if (v54 < v56)
    {
      v61 = (v57 + 544 * (v53 * v52));
      do
      {
        v62 = &v8[v60];
        *v62 = v61[1];
        *(v62 + 1) = v61[2];
        v63 = v60 + 8;
        memcpy(&v8[v63], v61 + 7, v61[6]);
        v60 = v63 + v61[6];
        memcpy(&v8[v58], v61 + 72, v61[71]);
        v58 += v61[71];
        ++v54;
        v61 += 136;
      }

      while (v54 < v56);
    }

    v64 = *(a1 + 360);
    v65 = v59;
    if (v64 > v60)
    {
      memset_s(&v8[v60], v64 - v60, 0, v64 - v60);
      v65 = *(a1 + 376);
    }

    v66 = v65 - v58;
    if (v65 > v58)
    {
      v67 = *(a1 + 136);
      if (!v67 || (v67(&v8[v58], v66) & 0x80000000) != 0)
      {
        v34 = "generating random padding";
        v35 = 686;
        goto LABEL_130;
      }
    }

    memcpy(&v8[*(a1 + 360)], __s + 4, LODWORD(__s[0]));
    v216 = 0;
    v215 = 0u;
    v214 = 0u;
    v213 = 0u;
    v212 = 0u;
    v211 = 0u;
    v210 = 0u;
    v209 = 0u;
    v208 = 0u;
    v207 = 0u;
    v206 = 0u;
    v205 = 0u;
    v204 = 0u;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    memset(&v218[8], 0, 252);
    memset(v217, 0, 260);
    *&v218[8] = 19267;
    *v218 = 0x5F41454100000006;
    result = memset_s(&v218[10], 0xFAuLL, 0, 0xFAuLL);
    v68 = *v218;
    if (*v218 >= 0xFDu)
    {
      goto LABEL_181;
    }

    v51 = v132;
    *&v218[*v218 + 4] = v132;
    *v218 = v68 + 4;
    memset_s(&v218[v68 + 8], 252 - v68, 0, 252 - v68);
    v69 = *(a1 + 144);
    if (!v69 || !*v128)
    {
      memset_s(v218, 0x104uLL, 0, 0x104uLL);
LABEL_83:
      v71 = 1;
      goto LABEL_84;
    }

    v70 = v69(&v200, *(a1 + 72), v128, v218, v217);
    memset_s(v218, 0x104uLL, 0, 0x104uLL);
    v71 = 0;
    if (v70 < 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    memset(v217 + 12, 0, 248);
    *(v217 + 4) = 0x4B4548435F414541;
    LODWORD(v217[0]) = 8;
    memset_s(v217 + 12, 0xF8uLL, 0, 0xF8uLL);
    memset(v218, 0, sizeof(v218));
    v72 = *(a1 + 144);
    if (!v72 || !v200)
    {
      memset_s(v217, 0x104uLL, 0, 0x104uLL);
LABEL_125:
      memset_s(&v200, 0x104uLL, 0, 0x104uLL);
LABEL_126:
      v34 = "derivating secondary key";
      v35 = 694;
      goto LABEL_130;
    }

    v73 = v72(v162, *(a1 + 76), &v200, v217, v218);
    memset_s(v217, 0x104uLL, 0, 0x104uLL);
    if (v73 < 0)
    {
      goto LABEL_125;
    }

    memset_s(&v200, 0x104uLL, 0, 0x104uLL);
    if (v71)
    {
      goto LABEL_126;
    }

    v74 = *(a1 + 160);
    if (!v74 || (v75 = v74(v8, *(a1 + 360), __s, v162, &v8[*(a1 + 360)], v4 - *(a1 + 360)), LODWORD(__s[0]) != *(a1 + 84)) || v75 < 0)
    {
      v34 = "Cluster header encryption";
      v35 = 701;
      goto LABEL_130;
    }

    v76 = *(a2 + 5);
    if (v76)
    {
      v77 = 0;
    }

    else
    {
      v77 = -1;
    }

    if (v76 && v4)
    {
      v77 = 0;
      v78 = v129 - v59;
      v79 = v8;
      v80 = v4;
      while (1)
      {
        v81 = (*(a2 + 5))(*a2, v79, v80, v78);
        if (v81 < 1)
        {
          break;
        }

        v79 += v81;
        v77 += v81;
        v78 += v81;
        v80 -= v81;
        if (!v80)
        {
          goto LABEL_101;
        }
      }

      v77 = v81;
    }

LABEL_101:
    v52 = v130 - 1;
    if (v77 != v4)
    {
      v34 = "writing cluster header";
      v35 = 706;
      goto LABEL_130;
    }
  }

  v6 = __n;
  memset_s(v8, __n, 0, __n);
  if ((aeaMagicInit(&v134, a1) & 0x80000000) != 0)
  {
    v29 = "encoding magic";
    v30 = 716;
    goto LABEL_23;
  }

  v82 = *(a1 + 288);
  v83 = &v8[*(a1 + 280)];
  *v83 = v134;
  *(v83 + 2) = v135;
  memcpy(&v8[v82], *(a1 + 384), *(a1 + 4));
  memcpy(&v8[*(a1 + 336)], __s + 4, LODWORD(__s[0]));
  if ((aeaRootHeaderInit(&v136, a1, v84, v85, v86, v87, v88, v89) & 0x80000000) != 0)
  {
    v29 = "encoding root header";
    v30 = 726;
    goto LABEL_23;
  }

  v90 = LODWORD(__s[0]);
  v91 = *(a1 + 4);
  v22 = (v91 + LODWORD(__s[0]));
  v92 = malloc(v22);
  v26 = v92;
  if (!v92)
  {
    v114 = *__error();
    v112 = "malloc";
    v113 = 731;
    goto LABEL_140;
  }

  memcpy(v92, __s + 4, v90);
  memcpy(&v26[v90], *(a1 + 384), v91);
  memset(v217 + 12, 0, 248);
  *(v217 + 4) = 0x4B4548525F414541;
  LODWORD(v217[0]) = 8;
  memset_s(v217 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v218, 0, sizeof(v218));
  v93 = *(a1 + 144);
  if (!v93 || !*v128)
  {
    memset_s(v217, 0x104uLL, 0, 0x104uLL);
    goto LABEL_137;
  }

  v94 = v93(v162, *(a1 + 76), v128, v217, v218);
  memset_s(v217, 0x104uLL, 0, 0x104uLL);
  if (v94 < 0)
  {
LABEL_137:
    v112 = "derivating RHEK";
    v113 = 738;
LABEL_138:
    v114 = 0;
LABEL_140:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v113, 28, v114, v112, v95, v96, nbyte);
    v28 = 0;
    goto LABEL_24;
  }

  v97 = *(a1 + 160);
  if (!v97 || (v98 = v97(&v136, 48, v164, v162, v26, v22), v99 = LODWORD(v164[0]), LODWORD(v164[0]) != *(a1 + 84)) || v98 < 0)
  {
    v112 = "Root header encryption";
    v113 = 744;
    goto LABEL_138;
  }

  v100 = *(a1 + 320);
  v101 = &v8[*(a1 + 328)];
  v102 = v137;
  *v101 = v136;
  *(v101 + 1) = v102;
  *(v101 + 2) = v138;
  memcpy(&v8[v100], v164 + 4, v99);
  memcpy(&v8[*(a1 + 312)], (a1 + 412), *(a1 + 408));
  v103 = *(a1 + 928);
  if (v103 != *(a1 + 120))
  {
    v112 = "Invalid encryption data size";
    v113 = 752;
    goto LABEL_138;
  }

  memcpy(&v8[*(a1 + 304)], (a1 + 932), v103);
  if (!*(a1 + 1188) && !*(a1 + 1712))
  {
LABEL_172:
    v124 = *(a1 + 272);
    if (v124 && (v125 = v124(a1 + 1448, v8, nbyte), *(a1 + 1448) == *(a1 + 124)) && (v125 & 0x80000000) == 0)
    {
      if (AAByteStreamPWrite(a2, v8, nbyte, 0) == nbyte)
      {
        v28 = 0;
        v27 = 0;
        goto LABEL_133;
      }

      v110 = "writing container headers";
      v111 = 800;
    }

    else
    {
      v110 = "digesting prologue";
      v111 = 796;
    }

    goto LABEL_144;
  }

  v106 = *(a1 + 192);
  if (!v106 || (v107 = v106(v139, v8, nbyte), LODWORD(v139[0]) != *(a1 + 108)) || v107 < 0)
  {
    v110 = "digesting prologue";
    v111 = 759;
LABEL_144:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v111, 28, 0, v110, v104, v105, nbyte);
    v28 = 0;
    goto LABEL_132;
  }

  v108 = *(a1 + 1712);
  if (!v108)
  {
    v115 = *(a1 + 200);
    if (!v115 || (result = v115(v160, a1 + 1188, v139), LODWORD(v160[0]) != *(a1 + 112)) || (result & 0x80000000) != 0)
    {
      v110 = "signing prologue";
      v111 = 778;
      goto LABEL_144;
    }

LABEL_152:
    if (*a1)
    {
      memset(&v218[8], 0, 252);
      memset(v217, 0, 260);
      *&v218[7] = 1262834527;
      *v218 = 0x5F41454100000007;
      memset_s(&v218[11], 0xF9uLL, 0, 0xF9uLL);
      v116 = *(a1 + 144);
      if (v116 && *v128)
      {
        v117 = v116(v141, *(a1 + 72), v128, v218, v217);
        memset_s(v218, 0x104uLL, 0, 0x104uLL);
        if ((v117 & 0x80000000) == 0)
        {
          if (*(a1 + 216))
          {
            memset(v217, 0, 260);
            v216 = 0;
            v215 = 0u;
            v214 = 0u;
            v213 = 0u;
            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            v208 = 0u;
            v207 = 0u;
            v206 = 0u;
            v205 = 0u;
            v204 = 0u;
            v203 = 0u;
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0;
            v198 = 0u;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            *v183 = 0u;
            if (LODWORD(v160[0]) == *(a1 + 112) && LODWORD(v141[0]) == *(a1 + 72))
            {
              *(&v200 + 4) = 0x324B45535F414541;
              LODWORD(v200) = 8;
              memset_s((&v200 | 0xC), 0xF8uLL, 0, 0xF8uLL);
              memset(v218, 0, sizeof(v218));
              v118 = *(a1 + 144);
              if (v118)
              {
                if (LODWORD(v141[0]))
                {
                  result = v118(v217, *(a1 + 76), v141, &v200, v218);
                  if ((result & 0x80000000) == 0)
                  {
                    v119 = LODWORD(v160[0]);
                    if (LODWORD(v160[0]) >= 0x101)
                    {
                      goto LABEL_181;
                    }

                    __memcpy_chk();
                    LODWORD(v143[0]) = v119;
                    memset_s(v143 + v119 + 4, 256 - v119, 0, 256 - v119);
                    result = (*(a1 + 216))(v143 + 4, LODWORD(v160[0]), v183, v217, 0, 0);
                    if ((result & 0x80000000) == 0)
                    {
                      v120 = LODWORD(v143[0]) + LODWORD(v183[0]);
                      if (v120 >= 0x101)
                      {
                        goto LABEL_181;
                      }

                      memcpy(v143 + LODWORD(v143[0]) + 4, v183 + 4, LODWORD(v183[0]));
                      LODWORD(v143[0]) = v120;
                      memset_s(v143 + v120 + 4, 256 - v120, 0, 256 - v120);
                      v121 = v143[0];
                      v122 = *(a1 + 116);
                      memset_s(v217, 0x104uLL, 0, 0x104uLL);
                      memset_s(v183, 0x104uLL, 0, 0x104uLL);
                      memset_s(&v200, 0x104uLL, 0, 0x104uLL);
                      if (v121 != v122)
                      {
                        goto LABEL_180;
                      }

                      goto LABEL_171;
                    }
                  }
                }
              }
            }

            memset_s(v217, 0x104uLL, 0, 0x104uLL);
            memset_s(v183, 0x104uLL, 0, 0x104uLL);
            memset_s(&v200, 0x104uLL, 0, 0x104uLL);
          }

LABEL_180:
          v110 = "encrypt signature";
          v111 = 788;
          goto LABEL_144;
        }
      }

      else
      {
        memset_s(v218, 0x104uLL, 0, 0x104uLL);
      }

      v110 = "deriving signature encryption key";
      v111 = 786;
      goto LABEL_144;
    }

    v123 = LODWORD(v160[0]);
    if (LODWORD(v160[0]) >= 0x101)
    {
      goto LABEL_181;
    }

    __memcpy_chk();
    LODWORD(v143[0]) = v123;
    memset_s(v143 + v123 + 4, 256 - v123, 0, 256 - v123);
LABEL_171:
    memcpy(&v8[*(a1 + 296)], v143 + 4, LODWORD(v143[0]));
    goto LABEL_172;
  }

  *v218 = 0;
  result = v108(*(a1 + 1720), 256, v160 + 4, v218, v139 + 4);
  if ((result & 0x80000000) != 0)
  {
    v110 = "Signing callback";
    v111 = 771;
    goto LABEL_144;
  }

  v109 = *(a1 + 112);
  if (*v218 > v109)
  {
    v110 = "Invalid callback size return value";
    v111 = 772;
    goto LABEL_144;
  }

  if (v109 < 0x101)
  {
    LODWORD(v160[0]) = *(a1 + 112);
    result = memset_s(v160 + v109 + 4, 256 - v109, 0, 256 - v109);
    goto LABEL_152;
  }

LABEL_181:
  __break(1u);
  return result;
}

void *AAMemoryInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 && a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 132, 68, 0, "Invalid arguments", a7, a8, v17);
    v10 = 0;
    v11 = 0;
LABEL_8:
    free(v11);
    free(v10);
    return 0;
  }

  v10 = calloc(1uLL, 0x68uLL);
  v12 = malloc(0x20uLL);
  v11 = v12;
  if (!v12 || (memset_s(v12, 0x20uLL, 0, 0x20uLL), !v10))
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 137, 68, *v13, "malloc", v14, v15, v17);
    goto LABEL_8;
  }

  *v11 = a1;
  v11[1] = a2;
  *v10 = v11;
  v10[1] = memoryInputStreamClose;
  v10[7] = memoryInputStreamCancel;
  v10[2] = memoryInputStreamRead;
  v10[4] = memoryInputStreamPRead;
  v10[6] = memoryInputStreamSeek;
  return v10;
}

size_t memoryInputStreamRead(uint64_t a1, void *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return memoryInputStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 16), a3));
  }
}

size_t memoryInputStreamPRead(uint64_t a1, void *__dst, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load((a1 + 24));
  v5 = -1;
  if ((a4 & 0x8000000000000000) == 0 && !v4)
  {
    v6 = *(a1 + 8);
    v7 = v6 >= a4 ? a4 : *(a1 + 8);
    if (!__CFADD__(v7, a3))
    {
      if (v7 + a3 < v6)
      {
        v6 = v7 + a3;
      }

      v5 = v6 - v7;
      if (v6 <= v7)
      {
        return 0;
      }

      else
      {
        memcpy(__dst, (*a1 + v7), v5);
      }
    }
  }

  return v5;
}

uint64_t memoryInputStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!atomic_load((a1 + 24)))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 16), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 8);
    }

    atomic_store(a2, (a1 + 16));
    return a2;
  }

  return -1;
}

void *AAMemoryOutputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 && a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 169, 68, 0, "Invalid arguments", a7, a8, v17);
    v10 = 0;
    v11 = 0;
LABEL_8:
    free(v11);
    free(v10);
    return 0;
  }

  v10 = calloc(1uLL, 0x68uLL);
  v12 = malloc(0x20uLL);
  v11 = v12;
  if (!v12 || (memset_s(v12, 0x20uLL, 0, 0x20uLL), !v10))
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 174, 68, *v13, "malloc", v14, v15, v17);
    goto LABEL_8;
  }

  v11[1] = 0;
  v11[2] = a2;
  *v11 = a1;
  *v10 = v11;
  v10[1] = memoryOutputStreamClose;
  v10[7] = memoryOutputStreamCancel;
  v10[3] = memoryOutputStreamWrite;
  return v10;
}

size_t memoryOutputStreamWrite(void *a1, const void *a2, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __n;
  if (__n)
  {
    v10 = a1[1];
    v11 = v10 + __n;
    if (__CFADD__(v10, __n))
    {
      v12 = "invalid size";
      v13 = 102;
    }

    else
    {
      if (v11 <= a1[2])
      {
        memcpy((*a1 + v10), a2, __n);
        a1[1] = v11;
        return v8;
      }

      v12 = "buffer full";
      v13 = 103;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "memoryOutputStreamWrite", v13, 68, 0, v12, a7, a8, v15);
    return -1;
  }

  return v8;
}

uint64_t AAMemoryOutputStreamCloseWithSize(uint64_t (**a1)(void *a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[1] == memoryOutputStreamClose)
  {
    v9 = *(*a1 + 1);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 201, 68, 0, "invalid stream type", a7, a8, v13);
    v9 = -1;
  }

  if (AAByteStreamClose(a1) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 207, 68, 0, "close stream", v10, v11, v13);
    return -1;
  }

  return v9;
}

AAByteStream_impl *aaForkOutputStreamOpen(uint64_t a1, void *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0x20050uLL);
  v8 = v5;
  if (!v4 || !v5)
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 408;
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", v18, 136, v16, v17, v6, v7, v40);
    goto LABEL_14;
  }

  if (!*(a1 + 40) || !*(a1 + 32))
  {
    v17 = "stream not compatible\n";
    v18 = 409;
    v16 = 0;
    goto LABEL_13;
  }

  AACustomByteStreamSetData(v4, v5);
  AACustomByteStreamSetWriteProc(v4, ForkOutputStreamWrite);
  AACustomByteStreamSetPWriteProc(v4, ForkOutputStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, ForkOutputStreamCancel);
  AACustomByteStreamSetCloseProc(v4, ForkOutputStreamClose);
  *(v8 + 16385) = a1;
  *(v8 + 16386) = a2;
  if (a2[258])
  {
    v9 = a2[270] + 1;
  }

  else
  {
    v9 = a2[270];
  }

  *(v8 + 16390) = v9;
  if (is_mul_ok(v9, 0x30uLL) && 48 * v9 < 0x2000000001)
  {
    v15 = calloc(v9, 0x30uLL);
  }

  else
  {
    v12 = __error();
    v15 = 0;
    *v12 = 12;
  }

  *(v8 + 16389) = v15;
  *(v8 + 131128) = 0u;
  *(v8 + 32786) = 0;
  if (!v15)
  {
    v16 = *__error();
    v17 = "aaCalloc";
    v18 = 426;
    goto LABEL_13;
  }

  v27 = 0;
  v28 = 0;
  v29 = a2[270];
  v30 = a2[258];
  v31 = 1;
  v32 = v15;
  while (1)
  {
    if (v29)
    {
      v33 = a2[268];
      for (i = v29; i; --i)
      {
        v35 = v33[13];
        if (v28)
        {
          if ((v35 & 2) != 0)
          {
            v32[1] = v27;
            v32[2] = 0;
            v36 = v33[4];
            v37 = 3;
            v38 = v36;
LABEL_26:
            v32[v37] = v36;
            v32[5] = v33[5];
            v27 += v38;
            *(v8 + 16392) = v27;
            v32 += 6;
          }
        }

        else if (v35)
        {
          *v32 = v33;
          v32[1] = v27;
          v39 = v33[10];
          v38 = v33[11];
          v32[2] = 0;
          v32[3] = v38;
          v36 = *v39;
          v37 = 4;
          goto LABEL_26;
        }

        v33 = (v33 + 129);
      }
    }

    if ((v31 & 1) == 0)
    {
      break;
    }

    v31 = 0;
    v28 = 1;
    v13 = v27;
    v14 = v27;
    if (v30)
    {
      v31 = 0;
      v32[1] = v27;
      v32[2] = 0;
      v13 = v30 + v27;
      v32[3] = v30;
      v32[5] = 0;
      v32 += 6;
      v14 = v27;
      v27 = v13;
      *(v8 + 16392) = v13;
    }
  }

  a2[257] = v14;
  a2[259] = v13;
  if (v32 == &v15[6 * *(v8 + 16390)])
  {
    a2[260] = v27;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 480, 136, 0, "bad variant", v10, v11, v40);
    a2[260] = *(v8 + 16392);
LABEL_14:
    free(v4);
    ForkOutputStreamClose(v8, v19, v20, v21, v22, v23, v24, v25);
    return 0;
  }

  return v4;
}

uint64_t ForkOutputStreamWrite(uint8_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 131080);
  if (*(a1 + 32786))
  {
    v9 = "bad write mode";
    v10 = 201;
    goto LABEL_3;
  }

  v11 = a3;
  if (!a3)
  {
    return v11;
  }

  v13 = a2;
  v14 = 0;
  dst_buffer = a1 + 65537;
  v144 = a1 + 131080;
  src_buffer = a1;
  while (1)
  {
    v15 = v8[6];
    if (v15 == v8[5])
    {
      v9 = "segment out of range";
      v10 = 205;
      goto LABEL_3;
    }

    v16 = &v8[4][6 * v15];
    v17 = v11 - v14;
    v18 = v16[2];
    if (v11 - v14 >= 0x10000 - v18)
    {
      v17 = 0x10000 - v18;
    }

    if (v16[3] - v18 >= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16[3] - v18;
    }

    memcpy(&a1[v18], (v13 + v14), v19);
    v20 = v16[3];
    v21 = v19 + v16[2];
    v147 = v16;
    v16[2] = v21;
    if (v21 == v20)
    {
      v8[6] = (v8[6] + 1);
    }

    v22 = v21;
    if (v21)
    {
      if (v21 < v20)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v22 = 0x10000;
    }

    v23 = *v16;
    if (!*v147)
    {
      v29 = v19;
      v30 = *v8;
      if ((*v8)[5])
      {
        v31 = 0;
        v32 = v21 - v22 + v147[5];
        v33 = src_buffer;
        v34 = v22;
        while (1)
        {
          v35 = (v30[5])(*v30, v33, v34, v32);
          if (v35 < 1)
          {
            break;
          }

          v33 += v35;
          v31 += v35;
          v32 += v35;
          v34 -= v35;
          if (!v34)
          {
            goto LABEL_85;
          }
        }

        v31 = v35;
      }

      else
      {
        v31 = -1;
      }

LABEL_85:
      v8 = v144;
      v19 = v29;
      if (v22 != v31)
      {
        v9 = "aaByteStreamPWriteExpected";
        v10 = 233;
        goto LABEL_3;
      }

      goto LABEL_137;
    }

    v24 = *(v23 + 56);
    v140 = v14;
    v141 = v19;
    if (v8[3] < v24)
    {
      v8[3] = v24;
      if (24 * v24 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v25 = v8;
        v26 = v8[2];
        v27 = realloc(v26, 24 * v24);
        if (v27)
        {
          v25[2] = v27;
          v28 = v147;
          v21 = v147[2];
          v8 = v25;
          goto LABEL_30;
        }

        free(v26);
        v8 = v25;
      }

      v8[2] = 0;
      v9 = "aaReallocf";
      v10 = 243;
      goto LABEL_3;
    }

    v27 = v8[2];
    v28 = v147;
LABEL_30:
    v36 = (v21 - 1) >> 16;
    v37 = *(v23 + 80) + 12 * v36;
    v145 = v36;
    v38 = &v27[24 * v36];
    v39 = compression_encode_buffer(dst_buffer, 0x10000uLL, src_buffer, v22, 0, LODWORD(v8[1][*(v23 + 128)]));
    if (v39 - 1 >= v22)
    {
      v40 = v22 + 1;
    }

    else
    {
      v40 = v39;
    }

    *(v38 + 1) = v40;
    *(v38 + 2) = v40;
    v41 = v28[4];
    v42 = *v37 + *(v37 + 8);
    v43 = v40;
    if (v41 + v40 < v42)
    {
      v43 = v42 - v41;
      *(v38 + 2) = v42 - v41;
    }

    if (v43 == v22 + 1)
    {
      *(v38 + 1) = v22 + 1;
      *dst_buffer = BYTE4(v8[1][*(v23 + 128)]);
      memcpy(src_buffer + 65538, src_buffer, v22);
      v40 = *(v38 + 1);
      v43 = *(v38 + 2);
    }

    bzero(&dst_buffer[v40], v43 - v40);
    v44 = *(v38 + 2);
    v45 = v28[4];
    v46 = *(v23 + 96) - v45;
    v47 = v44 - v46;
    if (v44 > v46)
    {
      break;
    }

LABEL_76:
    *v38 = v45;
    v76 = *(v38 + 2);
    v77 = *v8;
    if ((*v8)[5])
    {
      if (!v76)
      {
        goto LABEL_90;
      }

      v78 = 0;
      v79 = v28[5] + v45;
      v80 = dst_buffer;
      v81 = *(v38 + 2);
      while (1)
      {
        v82 = (v77[5])(*v77, v80, v81, v79);
        if (v82 < 1)
        {
          break;
        }

        v80 += v82;
        v78 += v82;
        v79 += v82;
        v81 -= v82;
        if (!v81)
        {
          goto LABEL_88;
        }
      }

      v78 = v82;
    }

    else
    {
      v78 = -1;
    }

LABEL_88:
    v83 = v76 == v78;
    v8 = v144;
    v13 = a2;
    if (!v83)
    {
      v9 = "aaByteStreamPWriteExpected";
      v10 = 290;
      goto LABEL_3;
    }

LABEL_90:
    v84 = v28[3];
    v28[4] += v76;
    v11 = a3;
    v14 = v140;
    v19 = v141;
    if (v28[2] == v84)
    {
      v85 = *v147;
      v86 = *(*v147 + 104);
      v87 = *(*v147 + 56);
      v88 = 2 * v87;
      if ((v86 & 4) == 0)
      {
        v88 = v87 + 1;
      }

      v89 = 4 * v88;
      if ((4 * v88) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_148:
        v132 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 81, 136, *v132, "aaMalloc", v133, v134, v135);
        v93 = 0;
        goto LABEL_154;
      }

      v90 = malloc(v89);
      if (!v90)
      {
        goto LABEL_148;
      }

      v93 = v90;
      if ((v86 & 4) != 0)
      {
        if (v85[8] && (v104 = v85[9]) != 0)
        {
          v105 = *v8;
          if ((*v8)[5])
          {
            v106 = 0;
            v107 = v147[5] + v85[12] - 50;
            v108 = 50;
            while (1)
            {
              v109 = (v105[5])(*v105, v104, v108, v107);
              if (v109 < 1)
              {
                break;
              }

              v104 += v109;
              v106 += v109;
              v107 += v109;
              v108 -= v109;
              if (!v108)
              {
                if (v106 != 50)
                {
                  break;
                }

                v110 = *v144;
                if (*(*v144 + 40))
                {
                  v111 = 0;
                  v112 = v85[8];
                  v113 = v147[5];
                  v114 = 264;
                  while (1)
                  {
                    v115 = (v110[5])(*v110, v112, v114, v113);
                    if (v115 < 1)
                    {
                      break;
                    }

                    v112 += v115;
                    v111 += v115;
                    v113 += v115;
                    v114 -= v115;
                    if (!v114)
                    {
                      if (v111 != 264)
                      {
                        break;
                      }

                      v116 = v85[7];
                      v8 = v144;
                      if (v116)
                      {
                        v117 = v93 + 1;
                        v118 = (v144[2] + 16);
                        do
                        {
                          v119 = *(v118 - 4) - 260;
                          v120 = *v118;
                          v118 += 3;
                          *(v117 - 1) = v119;
                          *v117 = v120;
                          v117 += 2;
                          --v116;
                        }

                        while (v116);
                      }

                      v98 = v147[5] + 264;
                      goto LABEL_100;
                    }
                  }
                }

                v130 = "aaByteStreamPWriteExpected";
                v131 = 97;
                goto LABEL_153;
              }
            }
          }

          v130 = "aaByteStreamPWriteExpected";
          v131 = 92;
        }

        else
        {
          v130 = "Fork missing header/footer";
          v131 = 87;
        }

LABEL_153:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", v131, 136, 0, v130, v91, v92, v135);
LABEL_154:
        free(v93);
        v9 = "fork_write_index";
        v10 = 297;
        goto LABEL_3;
      }

      if (v87)
      {
        v94 = v90 + 1;
        v95 = (v8[2] + 2);
        do
        {
          v96 = *(v95 - 4);
          v97 = *v95;
          v95 += 6;
          *(v94 - 1) = v96;
          *v94++ = v97 + v96;
          --v87;
        }

        while (v87);
      }

      v98 = v147[5];
LABEL_100:
      v11 = a3;
      v99 = *v8;
      if (!(*v8)[5])
      {
        goto LABEL_150;
      }

      if (v89)
      {
        v100 = 0;
        v101 = v93;
        v102 = v89;
        while (1)
        {
          v103 = (v99[5])(*v99, v101, v102, v98);
          if (v103 < 1)
          {
            break;
          }

          v101 = (v101 + v103);
          v100 += v103;
          v98 += v103;
          v102 -= v103;
          if (!v102)
          {
            goto LABEL_123;
          }
        }

        v100 = v103;
LABEL_123:
        v83 = v89 == v100;
        v11 = a3;
        v8 = v144;
        if (!v83)
        {
LABEL_150:
          v130 = "aaByteStreamPWriteExpected";
          v131 = 120;
          goto LABEL_153;
        }
      }

      v121 = v85[4];
      v122 = v85[12];
      v123 = v121 - v122;
      if (v121 != v122)
      {
        if (v123 >= 0x10000)
        {
          v135 = v121 - v122;
          v130 = "Too much fork padding: %zu";
          v131 = 126;
          goto LABEL_153;
        }

        bzero(dst_buffer, v121 - v122);
        v124 = *v8;
        if (!(*v8)[5])
        {
          goto LABEL_151;
        }

        if (v123)
        {
          v125 = 0;
          v126 = v147[5] + v85[12];
          v127 = dst_buffer;
          v128 = v123;
          while (1)
          {
            v129 = (v124[5])(*v124, v127, v128, v126);
            if (v129 < 1)
            {
              break;
            }

            v127 += v129;
            v125 += v129;
            v126 += v129;
            v128 -= v129;
            if (!v128)
            {
              goto LABEL_134;
            }
          }

          v125 = v129;
LABEL_134:
          v83 = v123 == v125;
          v11 = a3;
          v8 = v144;
          if (!v83)
          {
LABEL_151:
            v130 = "aaByteStreamPWriteExpected";
            v131 = 129;
            goto LABEL_153;
          }
        }
      }

      free(v93);
      v19 = v141;
    }

LABEL_137:
    v14 += v19;
    a1 = src_buffer;
    if (v14 >= v11)
    {
      return v11;
    }
  }

  v48 = v145;
  v49 = src_buffer;
  v136 = v38;
  do
  {
    if (!v48)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 145, 136, 0, "realignment failed", a7, a8, v135);
      goto LABEL_142;
    }

    v50 = &v8[2][3 * v48 - 3];
    v51 = v50[1];
    v52 = v50[2];
    v53 = v52 - v51;
    v54 = v47 - (v52 - v51);
    if (v47 > v52 - v51)
    {
      v50[2] = v51;
      --v48;
      goto LABEL_73;
    }

    v50[2] = v52 - v47;
    v45 = *v50 + v52 - v47;
    v28[4] = v45;
    if (v48 >= v145)
    {
      goto LABEL_76;
    }

    v137 = v52 - v51;
    v138 = v47;
    while (1)
    {
      v55 = &v8[2][3 * v48];
      v56 = v28[5];
      v57 = v55[1];
      v58 = *v55 + v56;
      v59 = *v8;
      if ((*v8)[11])
      {
        v60 = v55[1];
        v61 = *v55 + v56;
        if (v57 != aaByteStreamSimulate(*v8))
        {
          v73 = 176;
          v74 = "aaByteStreamSimulate";
          goto LABEL_72;
        }

        goto LABEL_59;
      }

      if (v59[4])
      {
        if (!v57)
        {
          if (!v59[5])
          {
            goto LABEL_70;
          }

          goto LABEL_68;
        }

        v62 = 0;
        v63 = v49;
        v64 = v55[1];
        while (1)
        {
          v65 = (v59[4])(*v59, v63, v64, v58);
          if (v65 < 0)
          {
            break;
          }

          if (v65)
          {
            v63 += v65;
            v62 += v65;
            v58 += v65;
            v64 -= v65;
            if (v64)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v62 = v65;
      }

      else
      {
        v62 = -1;
      }

LABEL_58:
      v8 = v144;
      v49 = src_buffer;
      if (v57 != v62)
      {
        break;
      }

LABEL_59:
      v66 = *v8;
      if ((*v8)[5])
      {
        if (!v57)
        {
          goto LABEL_68;
        }

        v67 = 0;
        v68 = v56 + v45;
        v69 = v49;
        v70 = v57;
        while (1)
        {
          v71 = (v66[5])(*v66, v69, v70, v68);
          if (v71 < 1)
          {
            break;
          }

          v69 += v71;
          v67 += v71;
          v68 += v71;
          v70 -= v71;
          if (!v70)
          {
            goto LABEL_67;
          }
        }

        v67 = v71;
      }

      else
      {
        v67 = -1;
      }

LABEL_67:
      v8 = v144;
      v49 = src_buffer;
      if (v57 != v67)
      {
LABEL_70:
        v73 = 183;
        v74 = "aaByteStreamPWriteExpected";
        goto LABEL_72;
      }

LABEL_68:
      v28 = v147;
      v72 = v147[4];
      *v55 = v72;
      v45 = v72 + v57;
      v147[4] = v72 + v57;
      if (++v48 == v145)
      {
        goto LABEL_75;
      }
    }

    v73 = 179;
    v74 = "aaByteStreamPReadExpected";
LABEL_72:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", v73, 136, 0, v74, a7, a8, v135);
    LODWORD(v44) = -1;
    v53 = v137;
    v47 = v138;
    v54 = v138;
    v13 = a2;
    v28 = v147;
    v38 = v136;
LABEL_73:
    v75 = v47 > v53;
    v47 = v54;
  }

  while (v75);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_75:
    v45 = v28[4];
    v13 = a2;
    v38 = v136;
    goto LABEL_76;
  }

LABEL_142:
  v9 = "realign_fork";
  v10 = 282;
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", v10, 136, 0, v9, a7, a8, v135);
  return -1;
}

uint64_t ForkOutputStreamPWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a1 + 0x20000;
  if (*(a1 + 131144))
  {
    goto LABEL_2;
  }

  v24 = a1;
  v25 = (*(a1 + 131112) + 48 * *(a1 + 131128));
  v26 = v25[2];
  if (v26 + v25[1] != a4)
  {
    v28 = v25[2];
    if (v25[2])
    {
      if (*v25)
      {
        v29 = "pending compressed fork";
        v30 = 326;
        goto LABEL_49;
      }

      v31 = *(a1 + 131080);
      if (!v31[5])
      {
        goto LABEL_48;
      }

      v32 = a3;
      v33 = 0;
      v34 = (v26 & 0xFFFFFFFFFFFF0000) + v25[5];
      v35 = v25[2];
      while (1)
      {
        v36 = (v31[5])(*v31, v24, v35, v34);
        if (v36 < 1)
        {
          break;
        }

        v24 += v36;
        v33 += v36;
        v34 += v36;
        v35 -= v36;
        if (!v35)
        {
          goto LABEL_46;
        }
      }

      v33 = v36;
LABEL_46:
      a3 = v32;
      if (v28 != v33)
      {
LABEL_48:
        v29 = "aaByteStreamPWriteExpected";
        v30 = 328;
LABEL_49:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", v30, 136, 0, v29, a7, a8, a2);
        return -1;
      }
    }

    *(v9 + 72) = 1;
LABEL_2:
    v10 = 0;
    if (a3)
    {
      v38 = a3;
      while (1)
      {
        if (*(v9 + 64) <= v8)
        {
LABEL_36:
          v29 = "no segment found";
          v30 = 343;
          goto LABEL_49;
        }

        v11 = *(v9 + 40);
        v12 = *(v9 + 48);
        if (v12 < 2)
        {
          if (!v11)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v13 = 0;
          do
          {
            if (v11[6 * ((v12 + v13) >> 1) + 1] <= v8)
            {
              v13 = (v12 + v13) >> 1;
            }

            else
            {
              v12 = (v12 + v13) >> 1;
            }
          }

          while (v13 + 1 < v12);
          v11 += 6 * v13;
        }

        if (*v11)
        {
          v29 = "compressed fork";
          v30 = 344;
          goto LABEL_49;
        }

        v14 = v8 - v11[1];
        v15 = v11[3];
        if (a3 - v10 >= v15 - v14)
        {
          v16 = v15 - v14;
        }

        else
        {
          v16 = a3 - v10;
        }

        v17 = v16 + v11[2];
        v11[2] = v17;
        if (v17 > v15)
        {
          v29 = "too much data";
          v30 = 352;
          goto LABEL_49;
        }

        v18 = *(v9 + 8);
        if (*(v18 + 40))
        {
          if (!v16)
          {
            goto LABEL_27;
          }

          v19 = 0;
          v20 = a2 + v10;
          v21 = v11[5] + v14;
          v22 = v16;
          while (1)
          {
            v23 = (*(v18 + 40))(*v18, v20, v22, v21);
            if (v23 < 1)
            {
              break;
            }

            v20 += v23;
            v19 += v23;
            v21 += v23;
            v22 -= v23;
            if (!v22)
            {
              goto LABEL_26;
            }
          }

          v19 = v23;
        }

        else
        {
          v19 = -1;
        }

LABEL_26:
        a3 = v38;
        if (v16 != v19)
        {
          v29 = "aaByteStreamPWriteExpected";
          v30 = 356;
          goto LABEL_49;
        }

LABEL_27:
        v8 += v16;
        v10 += v16;
        if (v10 >= a3)
        {
          return v10;
        }
      }
    }

    return v10;
  }

  return ForkOutputStreamWrite(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t ForkOutputStreamClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1 + 0x4000;
    v10 = a1[16389];
    if (!v10)
    {
      v16 = 0;
LABEL_17:
      free(v9[3]);
      free(a1);
      return v16;
    }

    v11 = v9[6];
    if (v11)
    {
      if (v10[2] != v10[3])
      {
        v16 = 0xFFFFFFFFLL;
LABEL_15:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamClose", 385, 136, 0, "data missing", a7, a8, v18);
        v10 = v9[5];
        goto LABEL_16;
      }

      v12 = 0;
      v13 = v10 + 9;
      while (v11 - 1 != v12)
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v13 += 6;
        ++v12;
        if (v14 != v15)
        {
          if (v12 >= v11)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0xFFFFFFFFLL;
          }

          goto LABEL_15;
        }
      }
    }

    v16 = 0;
LABEL_16:
    free(v10);
    goto LABEL_17;
  }

  return 0;
}

uint64_t BlobBufferStore(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((BlobBufferIncreaseCapacity(a1, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore", v9, v10, v12);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t BlobBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc", v8, v9, v10);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void BlobBufferFree(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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

uint64_t StringTableClear(uint64_t result)
{
  *(result + 24) = 0;
  *result = 0;
  return result;
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
        v10 = xmmword_296AD18D0;
        v11 = xmmword_296AD1760;
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

uint64_t StringTableSearchSortedWithLength(uint64_t a1, char *__s1, size_t a3, unsigned int *a4)
{
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 8);
  v11 = strncmp(__s1, (*(a1 + 32) + *v9), a3);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    result = 0;
    if (!a4)
    {
      return result;
    }

    v13 = -1;
    goto LABEL_8;
  }

  if (v10 > a3)
  {
    goto LABEL_6;
  }

  if (v10 >= a3)
  {
    result = 1;
    if (!a4)
    {
      return result;
    }

    v13 = 0;
    goto LABEL_8;
  }

LABEL_11:
  v13 = v5 - 1;
  v14 = StringTableCmp(a1, v13, __s1, a3);
  if (v14 >= 1)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_8:
    *a4 = v13;
    return result;
  }

  if (v14)
  {
    if (v13 < 2)
    {
      v15 = 0;
LABEL_28:
      result = 0;
      v13 = v15;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = StringTableCmp(a1, v15 + ((v13 - v15) >> 1), __s1, a3);
        if (!v16)
        {
          break;
        }

        if (v16 < 0)
        {
          v13 = v15 + ((v13 - v15) >> 1);
        }

        else
        {
          v15 += (v13 - v15) >> 1;
        }

        if (v15 + 1 >= v13)
        {
          goto LABEL_28;
        }
      }

      result = 1;
      v13 = v15 + ((v13 - v15) >> 1);
      if (a4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    result = 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StringTableMatchesPrefixSorted(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (StringTableSearchSortedWithLength(a1, __s, v4, 0))
  {
    return 1;
  }

  if (v4)
  {
    v6 = v4 - 1;
    while (__s[v6] != 47 || !StringTableSearchSortedWithLength(a1, __s, v6, 0))
    {
      if (--v6 == -1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t StringTableCmp(uint64_t a1, unsigned int a2, char *__s1, size_t __n)
{
  v5 = *(a1 + 8) + 16 * a2;
  v6 = *(v5 + 8);
  LODWORD(result) = strncmp(__s1, (*(a1 + 32) + *v5), __n);
  if (v6 <= __n)
  {
    v8 = v6 < __n;
  }

  else
  {
    v8 = -1;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t ECCFixThreadProc(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2].i32[2] < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc(a1[1].u32[3]);
    if (!v9)
    {
      v10 = "creating workBuffer";
      v11 = 157;
LABEL_32:
      v26 = 0;
LABEL_33:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", v11, 64, v26, v10, a7, a8, v28);
      goto LABEL_34;
    }
  }

  v12 = a1->u64[1];
  if (v12 < a1[1].i64[0])
  {
    v31 = vdupq_n_s64(1uLL).u64[0];
    do
    {
      v13 = a1[1].u32[3];
      v14 = v12 * v13;
      v15 = a1[4].u64[0];
      if (v15 < v12 * v13)
      {
        v10 = "Invalid block index";
        v11 = 166;
        goto LABEL_32;
      }

      if (v14 + v13 <= v15)
      {
        v16 = v13;
      }

      else
      {
        v16 = (v15 - v14);
      }

      v17 = a1[2].i32[2];
      if (v17 < 0)
      {
        v19 = a1[3].i64[0] + v14;
      }

      else
      {
        v18 = pread(v17, v9, v16, a1[3].i64[1] + v14);
        if (v18 < 0)
        {
          v26 = *__error();
          v10 = "reading data segment";
          v11 = 174;
          goto LABEL_33;
        }

        v19 = v9;
        if (v16 != v18)
        {
          v29 = a1[2].u32[2];
          LOBYTE(v28) = v18;
          v10 = "Truncated read n=%zd pos=%llu read=%u fd=%d";
          v11 = 175;
          goto LABEL_32;
        }
      }

      v20 = a1[2].u32[0];
      if (v12 * v20 + v20 > a1[5].i64[0])
      {
        v10 = "Parity buffer out of range";
        v11 = 187;
        goto LABEL_32;
      }

      if (a1[1].i32[2] != 1)
      {
        v28 = a1[1].i32[2];
        v10 = "invalid variant %u";
        v11 = 205;
        goto LABEL_32;
      }

      v32 = 0;
      v21 = ECC65537CheckAndFix(v16, v19, (a1[4].i64[1] + v12 * v20), &v32);
      if (v21 < 0)
      {
        ++a1[5].i64[1];
      }

      else if (v21)
      {
        v22.i64[0] = v31;
        v23 = v32;
        v22.i64[1] = HIDWORD(v32);
        a1[6] = vaddq_s64(a1[6], v22);
        a1[7].i64[0] += v23;
        v24 = a1[2].i32[2];
        if ((v24 & 0x80000000) == 0)
        {
          v25 = pwrite(v24, v9, v16, a1[3].i64[1] + v14);
          if (v25 < 0)
          {
            v26 = *__error();
            v10 = "writing data segment";
            v11 = 211;
            goto LABEL_33;
          }

          if (v16 != v25)
          {
            v30 = a1[2].u32[2];
            LOBYTE(v28) = v25;
            v10 = "Truncated write n=%zd pos=%llu read=%u fd=%d";
            v11 = 212;
            goto LABEL_32;
          }
        }
      }

      ++v12;
    }

    while (v12 < a1[1].i64[0]);
  }

LABEL_34:
  free(v9);
  return 0;
}

uint64_t ParallelArchiveECCFixCommon(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7)
{
  v111 = *MEMORY[0x29EDCA608];
  DefaultNThreads = *(a7 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v88 = *a7;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  RealTime = getRealTime();
  *(a7 + 16) = 0;
  *(a7 + 12) = 0;
  enterThreadErrorContext(v16, v17, v18, v19, v20, v21, v22, v23, v79);
  v87 = a4;
  if (a6 > 0x2F)
  {
    v28 = a5[1];
    v105 = *a5;
    v106 = v28;
    v107 = a5[2];
    if (v105 != 0x3031304343455842)
    {
      v26 = "Invalid ECC magic";
      v27 = 454;
      goto LABEL_9;
    }

    if (HIDWORD(v107))
    {
      v26 = "Invalid ECC header";
      v27 = 455;
      goto LABEL_9;
    }

    v86 = DWORD2(v107);
    if (!DWORD2(v107))
    {
      v26 = "Invalid ECC header";
      v27 = 456;
      goto LABEL_9;
    }

    if (*(&v105 + 1) != a4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 457, 64, 0, "Input buffer size mismatch: expected %llu B, got %llu B", v24, v25, SBYTE8(v105));
      goto LABEL_10;
    }

    v35 = DWORD1(v107);
    if (DWORD1(v107) != 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 476, 64, 0, "Invalid ECC variant: %u", v24, v25, SBYTE4(v107));
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_55:
      v34 = v86;
      goto LABEL_11;
    }

    if (DWORD2(v107) >= 0x1FFE1)
    {
      v34 = DWORD2(v107);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 472, 64, 0, "Invalid blockSize: %u", v24, v25, SBYTE8(v107));
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 1;
      goto LABEL_11;
    }

    v49 = (a4 + DWORD2(v107) - 1) / DWORD2(v107);
    v84 = 34 * v49;
    if (34 * v49 + 48 != a6)
    {
      v51 = "Invalid ECC buffer size";
      v52 = 481;
      goto LABEL_52;
    }

    if (v49 >= DefaultNThreads)
    {
      LODWORD(v50) = DefaultNThreads;
    }

    else
    {
      LODWORD(v50) = (a4 + DWORD2(v107) - 1) / DWORD2(v107);
    }

    if (v50 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v50;
    }

    __count = v50;
    v83 = (a4 + DWORD2(v107) - 1) / DWORD2(v107);
    if (a1 < 0)
    {
      if ((getBufferSHA1Digest(a2, a4, &v108) & 0x80000000) != 0)
      {
        v51 = "computing buffer digest";
        v52 = 495;
        goto LABEL_52;
      }
    }

    else if ((getFileSegmentSHA1DigestFD(a1, a3, a4, &v108) & 0x80000000) != 0)
    {
      v51 = "computing file digest";
      v52 = 491;
LABEL_52:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v52, 64, 0, v51, v24, v25, v80);
LABEL_53:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_54:
      v35 = 1;
      goto LABEL_55;
    }

    v53 = (v83 + __count - 1) / __count;
    if (v88 >= 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v54 = MEMORY[0x29EDCA610];
      fwrite("ParallelArchiveECCFixCommon:\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
      sha1ToString(&v89, &v108);
      fprintf(*v54, "  Input data SHA1: %s\n", &v89);
      sha1ToString(&v89, &v106);
      fprintf(*v54, "  Expected SHA1: %s\n", &v89);
      fwrite("  ECC variant: ", 0xFuLL, 1uLL, *v54);
      fwrite("RS65537\n", 8uLL, 1uLL, *v54);
      fprintf(*v54, "%12llu data size\n", a4);
      fprintf(*v54, "%12u block size\n", v86);
      fprintf(*v54, "%12u ECC parity size per block\n", 34);
      fprintf(*v54, "%11.2f%% parity/data ratio\n", 3400.0 / v86);
      fprintf(*v54, "%12zu block count\n", v83);
      fprintf(*v54, "%12zu ECC buffer size\n", a6);
      fprintf(*v54, "%12u worker threads\n", __count);
      fprintf(*v54, "%12zu blocks per thread\n", v53);
    }

    if (v108 == v106 && v109 == *(&v106 + 1) && v110 == v107)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v29 = 1;
      goto LABEL_54;
    }

    v30 = __count;
    v57 = calloc(__count, 0x78uLL);
    if (!v57)
    {
      v70 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 526, 64, v70, "malloc %u threads", v71, v72, __count);
      goto LABEL_53;
    }

    v58 = 0;
    v59 = a5 + 3;
    v81 = v57;
    v60 = v57;
    v29 = 1;
    do
    {
      v61 = v53 * v58;
      if (v53 * v58 < v83)
      {
        v62 = v61 + v53;
        if (v61 + v53 >= v83)
        {
          v62 = v83;
        }

        *(v60 + 8) = v61;
        *(v60 + 16) = v62;
        *(v60 + 40) = a1;
        *(v60 + 48) = a2;
        *(v60 + 56) = a3;
        *(v60 + 64) = v87;
        *(v60 + 72) = v59;
        *(v60 + 80) = v84;
        *(v60 + 24) = 1;
        *(v60 + 28) = v86;
        *(v60 + 32) = 34;
        if (createThread(v60, ECCFixThreadProc, v60, 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 549, 64, 0, "createThread", v63, v64, v80);
          v29 = 0;
        }
      }

      ++v58;
      v60 += 120;
      --v30;
    }

    while (v30);
    v33 = 0;
    v32 = 0;
    v85 = 0;
    v65 = __count;
    v66 = v81 + 112;
    do
    {
      v67 = *(v66 - 14);
      if (v67)
      {
        if (joinThread(v67))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 556, 64, 0, "joinThread", v68, v69, v80);
          v29 = 0;
        }

        v33 += *(v66 - 3);
        v32 += *(v66 - 2);
        v85 += *(v66 - 1);
        v30 += *v66;
      }

      v66 += 15;
      --v65;
    }

    while (v65);
    if (v33)
    {
LABEL_81:
      v35 = 1;
      v31 = v85;
      v34 = v86;
      goto LABEL_11;
    }

    if (a1 < 0)
    {
      if ((getBufferSHA1Digest(a2, v87, &v108) & 0x80000000) != 0)
      {
        v75 = "computing buffer digest";
        v76 = 574;
        goto LABEL_101;
      }
    }

    else if ((getFileSegmentSHA1DigestFD(a1, a3, v87, &v108) & 0x80000000) != 0)
    {
      v75 = "computing file digest";
      v76 = 570;
LABEL_101:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v76, 64, 0, v75, v73, v74, v80);
      v29 = 0;
      v33 = 0;
      goto LABEL_81;
    }

    v34 = v86;
    if (v88 >= 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      sha1ToString(&v89, &v108);
      fprintf(*MEMORY[0x29EDCA610], "  Output data SHA1: %s\n", &v89);
      sha1ToString(&v89, &v106);
    }

    if (v108 == v106 && v109 == *(&v106 + 1) && v110 == v107)
    {
      v33 = 0;
      v35 = 1;
      v31 = v85;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v35 = 1;
      v33 = v83;
    }

    goto LABEL_11;
  }

  v26 = "Truncated ECC buffer";
  v27 = 452;
LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v27, 64, 0, v26, v24, v25, v80);
LABEL_10:
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_11:
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  if (!v29)
  {
    goto LABEL_31;
  }

  v37 = 0x7FFF;
  if (v30 < 0x7FFF)
  {
    v37 = v30;
  }

  v38 = v37 << 8;
  v39 = 255;
  if (v32 < 0xFF)
  {
    v39 = v32;
  }

  v40 = v38 | v39;
  v41 = 255;
  if (v33 < 0xFF)
  {
    v41 = v33;
  }

  v42 = v38 | v41 | 0x800000;
  if (v33)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  if (v88 > 0)
  {
    v44 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu fixed blocks\n", v32);
    v45 = v31;
    fprintf(*v44, "%12llu fixed bytes\n", v31);
    fprintf(*v44, "%12llu fixed bits\n", v30);
    if (v33)
    {
      fprintf(*v44, "%12llu INVALID BLOCKS\n", v33);
      v46 = "FAIL";
    }

    else
    {
      v46 = "OK";
    }

    fprintf(*v44, "    0x%06x diagnostic code\n", v43);
    *(a7 + 12) = v35;
    *(a7 + 16) = v34;
    *(a7 + 20) = v43;
    v47 = getRealTime();
    fprintf(*v44, "Total time %.2fs, %.2f MB/s (%s)\n", v47 - RealTime, vcvtd_n_f64_u64(v87, 0x14uLL) / (v47 - RealTime), v46);
    v31 = v45;
    if (v33)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  *(a7 + 12) = v35;
  *(a7 + 16) = v34;
  *(a7 + 20) = v43;
  if (v33)
  {
LABEL_31:
    result = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

LABEL_26:
  if (v31 >= 0x7FFFFFFF)
  {
    result = 0x7FFFFFFFLL;
  }

  else
  {
    result = v31;
  }

LABEL_32:
  v48 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ParallelArchiveECCVerifyCommon(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (a6 <= 0x2F)
  {
    v8 = "Truncated ECC buffer";
    v9 = 390;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", v9, 64, 0, v8, a7, a8, v14);
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v14 = *a5;
  v15 = a5[1];
  v16 = a5[2];
  if (*a5 != 0x3031304343455842)
  {
    v8 = "Invalid ECC magic";
    v9 = 392;
    goto LABEL_7;
  }

  if (HIDWORD(v16))
  {
    v8 = "Invalid ECC header";
    v9 = 393;
    goto LABEL_7;
  }

  if (!DWORD2(v16))
  {
    v8 = "Invalid ECC header";
    v9 = 394;
    goto LABEL_7;
  }

  if (*(&v14 + 1) != a4)
  {
    result = 0;
    goto LABEL_8;
  }

  if (a1 < 0)
  {
    if ((getBufferSHA1Digest(a2, a4, &v17) & 0x80000000) != 0)
    {
      v8 = "computing buffer digest";
      v9 = 404;
      goto LABEL_7;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(a1, a3, a4, &v17) & 0x80000000) != 0)
  {
    v8 = "computing file digest";
    v9 = 400;
    goto LABEL_7;
  }

  result = v17 == v15 && v18 == *(&v15 + 1) && v19 == v16;
LABEL_8:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *OECCStreamCreate(int a1, unsigned int a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xB0uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[4] = a3;
    *(v6 + 10) = a2;
    v8 = malloc(a2);
    v7[8] = v8;
    if (v8)
    {
      if (a1 != 1)
      {
        v11 = "Invalid ECC algorithm";
        v12 = 857;
        goto LABEL_9;
      }

      if (a2 >= 0x1FFE1)
      {
        v11 = "Invalid ECC block size";
        v12 = 853;
LABEL_9:
        v13 = 0;
        goto LABEL_10;
      }

      *(v7 + 6) = 34;
      v15 = 34 * ((a3 + a2 - 1) / a2) + 48;
      v7[2] = v15;
      v16 = malloc(v15);
      v7[1] = v16;
      if (v16)
      {
        CC_SHA1_Deprecated_Init((v7 + 76));
        v7[7] = 48;
        checkEOF(v7);
        return v7;
      }

      v13 = *__error();
      v11 = "malloc";
      v12 = 862;
    }

    else
    {
      v13 = *__error();
      v11 = "malloc";
      v12 = 846;
    }
  }

  else
  {
    v13 = *__error();
    v11 = "malloc";
    v12 = 841;
  }

LABEL_10:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamCreate", v12, 64, v13, v11, v9, v10, v17);
  OECCStreamDestroy(v7);
  return 0;
}

int *checkEOF(int *result)
{
  if (*(result + 6) == *(result + 4) && !result[43])
  {
    result[43] = 1;
    v1 = *(result + 1);
    *v1 = 0x3031304343455842;
    v2 = *result;
    *(v1 + 8) = *(result + 4);
    *(v1 + 44) = 0;
    v3 = result[10];
    *(v1 + 36) = v2;
    *(v1 + 40) = v3;
    return CC_SHA1_Deprecated_Final((v1 + 16), (result + 19));
  }

  return result;
}

void OECCStreamDestroy(void **a1)
{
  if (a1)
  {
    free(a1[8]);
    free(a1[1]);

    free(a1);
  }
}

uint64_t OECCStreamGetDataPtr(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OECCStreamGetDataSize(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t OECCStreamWrite(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = __CFADD__(v8, a3);
  v10 = v8 + a3;
  v11 = v9;
  if (v10 <= *(a1 + 32) && v11 == 0)
  {
    v16 = a3;
    v17 = a2;
    CC_SHA1_Deprecated_Update((a1 + 76), a2, a3);
    v15 = 0;
    if (v16)
    {
      v19 = *(a1 + 72);
      do
      {
        v20 = *(a1 + 40);
        v21 = v16 + v19 <= v20 ? v16 : v20 - v19;
        memcpy((*(a1 + 64) + v19), v17, v21);
        v22 = *(a1 + 72) + v21;
        *(a1 + 72) = v22;
        v23 = *(a1 + 48) + v21;
        *(a1 + 48) = v23;
        v15 += v21;
        if (v22 < *(a1 + 40) && v23 < *(a1 + 32))
        {
          break;
        }

        v24 = *(a1 + 56);
        if (v24 + *(a1 + 24) > *(a1 + 16))
        {
          v13 = "ECC buffer overflow";
          v14 = 914;
          goto LABEL_9;
        }

        if (*a1 != 1)
        {
          v13 = "Invalid ECC algorithm";
          v14 = 921;
          goto LABEL_9;
        }

        if ((ECC65537GetParity(v22, *(a1 + 64), *(a1 + 8) + v24) & 0x80000000) != 0)
        {
          v13 = "ECC generation failed";
          v14 = 918;
          goto LABEL_9;
        }

        v19 = 0;
        v17 += v21;
        *(a1 + 56) += *(a1 + 24);
        *(a1 + 72) = 0;
        v16 -= v21;
      }

      while (v16);
    }

    checkEOF(a1);
  }

  else
  {
    v13 = "Too many bytes received";
    v14 = 892;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", v14, 64, 0, v13, a7, a8, v26);
    return -1;
  }

  return v15;
}

uint64_t initBestMatchThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v74 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  v10 = *(v8 + 20);
  bzero(v73, 0x3000uLL);
  bzero(v72, 0x7000uLL);
  v11 = *(v8 + 12);
  v12 = *(v8 + 16);
  v13 = *(v9 + 36);
  v14 = v13 - v10;
  if (v13 < v10)
  {
    v14 = 0;
  }

  if (v12 + v10 > v13)
  {
    v12 = v14;
  }

  if (v11 < v12)
  {
    v15 = *(v8 + 12);
    do
    {
      v16 = *(v9 + 48);
      v17 = *(v16 + 8 * v15 + 4);
      if (v17 < 0x400)
      {
        v18 = v15;
        v19 = *(v9 + 24);
        v20 = 0;
        if (v10)
        {
          v21 = (v19 + v15);
          v22 = v10;
          do
          {
            v23 = *v21++;
            v20 = -1640531535 * (v23 + v20) - 1640531535;
            v22 -= 4;
          }

          while (v22);
        }

        v24 = v20 ^ HIWORD(v20);
        v25 = *(v8 + 32) + 6 * (v20 >> *(v9 + 44));
        if (*(v25 + 4) == v24)
        {
          v26 = *v25;
          if (*v25 >= *(v8 + 8))
          {
            v27 = &v73[3 * ((v15 - v26) & 0x3FF)];
            if (v26 != v27[1] + v15 - *v27 || v27[2] + *v27 < v15)
            {
              v28 = &v72[28 * (v26 & 0x3FF)];
              if (*v28 == v26)
              {
                v29 = v28[2];
                v30 = v15 - v29;
                if (v29 != v28[5] + v15 - v29)
                {
                  goto LABEL_26;
                }

                v32 = v28[3];
                v31 = v28[4];
                v33 = v31 + v30;
                v34 = v28[1];
                if (v31 + v30 <= v34)
                {
                  v33 = v28[1];
                }

                v35 = v33 + v30;
                v36 = v28[6] + v31;
                if (v36 >= v32 + v34)
                {
                  v36 = v32 + v34;
                }

                v37 = v36 >= v35;
                v38 = v36 - v35;
                if (v38 != 0 && v37)
                {
                  v26 = v26 - v15 + v35;
                  v18 = v35;
                }

                else
                {
LABEL_26:
                  v38 = 0;
                  LODWORD(v35) = v15;
                }
              }

              else
              {
                v29 = 0;
                v38 = 0;
                *v28 = v26;
                v28[1] = 0;
                LODWORD(v35) = v15;
                *(v28 + 1) = 0;
              }

              v39 = 0;
              if (v26 >= v35 - v11)
              {
                v40 = v35 - v11;
              }

              else
              {
                v40 = v26;
              }

              v41 = *(v9 + 16);
              v42 = v41 + v26;
              v43 = v19 + v18;
              v44 = -1;
              while (1)
              {
                v39 += 8;
                if (v39 > v40)
                {
                  break;
                }

                v45 = *(v42 - v39);
                v46 = *(v43 - v39);
                v44 += 8;
                if (v45 != v46)
                {
                  v44 = v39 + (__clz(v46 ^ v45) >> 3) - 8;
                  goto LABEL_38;
                }
              }

              while (1)
              {
                v47 = v44 + 2;
                if (v44 + 2 > v40)
                {
                  break;
                }

                ++v44;
                if (*(v42 - v47) != *(v43 - v47))
                {
                  goto LABEL_38;
                }
              }

              v44 = v40;
LABEL_38:
              v48 = v26 - v44;
              v49 = v35 - v44;
              v50 = v44 + v38;
              LODWORD(v51) = *(v9 + 32) - v48;
              v52 = *(v9 + 36) - v49;
              if (v51 >= v52)
              {
                v51 = v52;
              }

              else
              {
                v51 = v51;
              }

              v53 = v41 + v48;
              v54 = v19 + v49;
              while (1)
              {
                v55 = v50 + 8;
                if (v50 + 8 > v51)
                {
                  break;
                }

                v56 = *(v53 + v50);
                v57 = *(v54 + v50);
                v50 += 8;
                if (v56 != v57)
                {
                  LODWORD(v51) = v55 + (__clz(__rbit64(v57 ^ v56)) >> 3) - 8;
                  goto LABEL_51;
                }
              }

              if (v50 < v51)
              {
                v58 = v50;
                while (*(v53 + v58) == *(v54 + v58))
                {
                  if (++v58 >= v51)
                  {
                    goto LABEL_51;
                  }
                }

                LODWORD(v51) = v58;
              }

LABEL_51:
              if (v51 >= v10)
              {
                *v27 = v49;
                v27[1] = v48;
                v27[2] = v51;
                v59 = v28[1];
                v60 = v28[3];
                v28[5] = v29;
                v28[6] = v60;
                v28[1] = v49;
                v28[2] = v15;
                v28[3] = v51;
                v28[4] = v59;
                v61 = (v16 + 8 * v49);
                if (v51 > v61[1])
                {
                  *v61 = v48;
                  *(*(v9 + 48) + 8 * v49 + 4) = v51;
                  if (v51 + v49 > v15 + 1024)
                  {
                    v15 = v51 + v49 - 1024;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v15 = v15 + v17 - 1024;
      }

      ++v15;
    }

    while (v15 < v12);
  }

  if (*(v8 + 24))
  {
    v62 = *(v8 + 16);
    v63 = (*(v8 + 12) + 1);
    if (v63 < v62)
    {
      v64 = 8 * (*(v8 + 12) + 1);
      do
      {
        v65 = *(v9 + 48);
        v66 = v65 + v64;
        v67 = *(v65 + v64 - 4);
        if (v67 > v10 && v67 > *(v65 + v64 + 4))
        {
          v69 = *(v66 - 8) + 1;
          if (v69 < *(v9 + 32))
          {
            *(v65 + v64) = v69;
            *(v66 + 4) = v67 - 1;
            v62 = *(v8 + 16);
          }
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < v62);
    }
  }

  v70 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t BXDiffMatchesCreate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v186[1] = *MEMORY[0x29EDCA608];
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v8 = *a5;
  if (!*a5)
  {
    v8 = 6;
  }

  if (a4 >= 0x4B000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 20;
  }

  if (a2 > 0xFFFFFFFE || (v10 = a4, a4 >= 0xFFFFFFFF))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", 994, 92, 0, "isize,osize too large", a7, a8, v172);
LABEL_109:
    v16 = 0;
    goto LABEL_110;
  }

  v15 = calloc(1uLL, 0x40uLL);
  v16 = v15;
  if (!v15)
  {
    v87 = *__error();
    v88 = "malloc";
    v89 = 998;
LABEL_108:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", v89, 92, v87, v88, v19, v20, v172);
    BXDiffMatchesDestroy(v16);
    goto LABEL_109;
  }

  v17 = *a5;
  v15[2] = a5[2];
  *v15 = v17;
  DefaultNThreads = a5[2];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *(v16 + 8) = DefaultNThreads;
  *(v16 + 16) = a1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a2;
  *(v16 + 36) = v10;
  if ((getProfile(&v182, v9) & 0x80000000) != 0)
  {
    v172 = *a5;
    v88 = "loading profile: %d";
    v89 = 1008;
LABEL_106:
    v87 = 0;
    goto LABEL_108;
  }

  if (v182 >= 1)
  {
    getRealTime();
    v21 = malloc(4 * a2 + 1028);
    v22 = malloc(8 * a2);
    v23 = v22;
    if (!v21 || !v22)
    {
      v90 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "qsufsort32", 377, 92, *v90, "malloc", v91, v92, v172);
      free(v21);
      free(v23);
      *(v16 + 56) = 0;
      v89 = 1021;
      v87 = 0;
      v88 = "qsufsort32";
      goto LABEL_108;
    }

    v24 = v21 + 257;
    v21[257] = a2;
    *v22 = 0;
    if (a2)
    {
      v174 = v21;
      v176 = v10;
      v178 = v16;
      v25 = 0;
      v180 = a2 ^ 0x80000000;
      v26 = v22 + 1;
      do
      {
        if (*v23 == v180)
        {
          break;
        }

        v27 = 0;
        v28 = -1;
        do
        {
          v29 = &v23[2 * v27];
          v30 = *v29;
          if ((v30 & 0x80000000) != 0)
          {
            LODWORD(v31) = v30 & 0x7FFFFFFF;
          }

          else
          {
            v31 = v24[v30];
            if (v25)
            {
              if (v31 > v27)
              {
                v32 = v31 - v27;
                v33 = &v26[2 * v27];
                do
                {
                  *v33 = v24[*(v33 - 1) + v25];
                  v33 += 2;
                  --v32;
                }

                while (v32);
              }
            }

            else if (v31 > v27)
            {
              v34 = 0;
              v35 = (v31 - 1);
              v36 = &v26[2 * v35];
              v37 = (a1 + v35);
              v38 = 1;
              v39 = v31;
              do
              {
                v40 = *v37--;
                v41 = __PAIR64__(v40, v34) >> 8;
                v42 = v39 + 2;
                v43 = v39 - 1;
                v44 = v41 | 0xFF;
                v34 = v38 + (v41 & 0xFFFFFF00);
                if (v42 < v31)
                {
                  v34 = v44;
                }

                *(v36 - 1) = v43;
                *v36 = v34;
                v36 -= 2;
                ++v38;
                v39 = v43;
              }

              while (v27 < v43);
            }

            quicksort64(v31 - v27, &v23[2 * v27], 24);
            v45 = v27 + 1;
            if (v27 + 1 <= v31)
            {
              v46 = v29[1];
              do
              {
                v47 = v46;
                if (v45 >= v31)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v26[2 * v45];
                }

                if (v47 != v46)
                {
                  if (v45 - v27 < 2)
                  {
                    if (v28 >= a2)
                    {
                      v28 = v27;
                    }
                  }

                  else if (v28 < a2)
                  {
                    v23[2 * v28] = v27 ^ 0x80000000;
                    v28 = -1;
                  }

                  if (v45 > v27)
                  {
                    v48 = v45 - v27;
                    v49 = &v23[2 * v27];
                    do
                    {
                      v50 = *v49;
                      v49 += 2;
                      v24[v50] = v45;
                      --v48;
                    }

                    while (v48);
                    v27 = v45;
                  }
                }

                ++v45;
              }

              while (v45 <= v31);
            }
          }

          v27 = v31;
        }

        while (v31 < a2);
        if (v28 < a2)
        {
          v23[2 * v28] = v180;
        }

        if (v25 >= 3)
        {
          v25 *= 2;
        }

        else
        {
          v25 = 3;
        }
      }

      while (v25 < a2);
      v51 = 0;
      do
      {
        *&v23[2 * (v24[v51] - 1)] = v51;
        ++v51;
      }

      while (a2 != v51);
      v52 = v23;
      v53 = v24;
      v54 = a2;
      v10 = v176;
      v16 = v178;
      v21 = v174;
      do
      {
        v55 = *v52++;
        *v53++ = v55;
        --v54;
      }

      while (v54);
    }

    v56 = 0;
    *v21 = 0;
    v21[256] = a2;
    for (i = 1; i != 256; ++i)
    {
      v58 = a2;
      if (v56 != a2)
      {
        if (v56 + 1 >= a2)
        {
          v58 = a2;
        }

        else
        {
          v58 = a2;
          do
          {
            if (i <= *(a1 + v24[v56 + ((v58 - v56) >> 1)]))
            {
              v58 = v56 + ((v58 - v56) >> 1);
            }

            else
            {
              v56 += (v58 - v56) >> 1;
            }
          }

          while (v58 > v56 + 1);
        }

        v59 = v24[v56];
        if (v59 != a2 && i == *(a1 + v59))
        {
          v58 = v56;
        }
      }

      v21[i] = v58;
      v56 = v58;
    }

    free(v23);
    *(v16 + 56) = v21;
    getRealTime();
  }

  if (SHIDWORD(v182) >= 1)
  {
    v60 = malloc(8 * v10);
    *(v16 + 48) = v60;
    if (!v60)
    {
      v87 = *__error();
      v88 = "malloc";
      v89 = 1033;
      goto LABEL_108;
    }

    if (*(v16 + 36))
    {
      v61 = 0;
      v62 = 0;
      do
      {
        *(*(v16 + 48) + v61) = 0xFFFFFFFFLL;
        ++v62;
        v61 += 8;
      }

      while (v62 < *(v16 + 36));
    }
  }

  v63 = *(v16 + 48);
  if (*(v16 + 56))
  {
    if (!v63)
    {
      goto LABEL_187;
    }

    v64 = HIDWORD(v183);
    v65 = v184;
    getRealTime();
    v66 = *(v16 + 36);
    if (v66)
    {
      v67 = 0;
      v68 = 1;
      do
      {
        v69 = v67;
        v70 = (*(v16 + 48) + 8 * v67);
        if (v70[1] < v65)
        {
          v71 = *(v16 + 56);
          v72 = (v71 + 4 * *(*(v16 + 24) + v67));
          v73 = *v72;
          LODWORD(v72) = v72[1];
          LODWORD(v185) = -1;
          v74 = bestMatchInRange(v16, v71 + 1028, v67, v73, v72 + 1, &v185);
          v75 = v185;
          *v70 = v185;
          *(*(v16 + 48) + 8 * v67 + 4) = v74;
          if (v74 >= v65)
          {
            v76 = v75 + 1;
            if ((v75 + 1) < *(v16 + 32))
            {
              v77 = 8 * v68;
              v78 = v74 - 1;
              v79 = v68;
              do
              {
                v80 = v79 < *(v16 + 36) && v78 >= v65;
                if (!v80)
                {
                  break;
                }

                *(*(v16 + 48) + v77) = v76;
                *(*(v16 + 48) + v77 + 4) = v78;
                ++v76;
                v77 += 8;
                ++v79;
                --v78;
              }

              while (v76 < *(v16 + 32));
            }

            if (v67 && v75)
            {
              v81 = 0;
              v82 = v67 - 1;
              v83 = 8 * v67;
              v84 = v74 + 1;
              do
              {
                v85 = *(v16 + 48) + v83;
                if (*(v85 - 8) != -1)
                {
                  break;
                }

                if (*(*(v16 + 16) + (v75 + v81 - 1)) != *(*(v16 + 24) + v82 + v81))
                {
                  break;
                }

                *(v85 - 8) = v75 - 1 + v81;
                *(*(v16 + 48) + v83 - 4) = v84;
                if (!(v82 + v81))
                {
                  break;
                }

                v86 = v75 + v81--;
                v83 -= 8;
                ++v84;
              }

              while (v86 != 1);
            }
          }

          v66 = *(v16 + 36);
        }

        v67 += v64;
        v68 += v64;
      }

      while (v69 + v64 < v66);
    }

    goto LABEL_186;
  }

  if (!v63)
  {
    goto LABEL_187;
  }

  v95 = -13;
  do
  {
    v96 = v95 + 33;
    v97 = 1 << (v95++ + 33 + v183);
  }

  while (v96 < SHIDWORD(v184) && v97 < *(v16 + 32));
  *(v16 + 40) = v95 + 32;
  *(v16 + 44) = -v95;
  v98 = v184;
  getRealTime();
  v99 = *(v16 + 8);
  v185 = 0;
  v186[0] = 0;
  v100 = 1;
  v102 = *(v16 + 32);
  v101 = *(v16 + 36);
  if (v102 >= v101)
  {
    v102 = *(v16 + 36);
  }

  if (v102 < 2 * v98)
  {
    v103 = 0;
    v104 = 0;
    goto LABEL_185;
  }

  v105 = 6 * (1 << *(v16 + 40));
  v181 = ((v99 + v101 - 1) / v99 + 0xFFFF) & 0xFFFF0000;
  v106 = &v185;
  v107 = 1;
  do
  {
    v108 = calloc(1uLL, v105);
    *v106 = v108;
    if (!v108)
    {
      v125 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 852, 92, *v125, "malloc", v126, v127, v172);
      v103 = 0;
      v104 = 0;
      goto LABEL_184;
    }

    v109 = (v99 != 1) & v107;
    v106 = v186;
    v107 = 0;
  }

  while ((v109 & 1) != 0);
  v103 = calloc(v99, 0x28uLL);
  v110 = malloc(8 * v99);
  v104 = v110;
  if (!v103 || !v110)
  {
    v128 = *__error();
    v123 = "malloc";
    v124 = 862;
    goto LABEL_183;
  }

  v118 = 0;
  if (v99 <= 1)
  {
    v119 = 1;
  }

  else
  {
    v119 = v99;
  }

  v177 = v119;
  v120 = 8 * v119;
  v121 = v103;
  do
  {
    v110[v118 / 8] = v121;
    v121[5] = v98;
    *v121 = v16;
    v121 += 10;
    v118 += 8;
  }

  while (v120 != v118);
  if (v99 == 1)
  {
    v122 = 0;
LABEL_136:
    v129 = *(v16 + 32);
    if (v129)
    {
      v173 = v103;
      v130 = 0;
      v131 = 0;
      while (2)
      {
        v175 = v130;
        v132 = v186[v130 - 1];
        v80 = v129 >= v98;
        v133 = v129 - v98;
        if (!v80)
        {
          v133 = 0;
        }

        v179 = v131 + v97;
        if (v131 + v97 < v133)
        {
          v133 = v131 + v97;
        }

        v134 = v131 + 4;
        if (v131 + 4 < v133)
        {
          v135 = *(v16 + 16);
          v136 = v131;
          do
          {
            v137 = v134;
            if (v98)
            {
              v138 = 0;
              v139 = (v135 + v136);
              v140 = v139;
              v141 = v98;
              do
              {
                v142 = *v140++;
                v138 = -1640531535 * (v142 + v138) - 1640531535;
                v141 -= 4;
              }

              while (v141);
              v143 = 0;
              v144 = *(v16 + 44);
              v145 = v138 >> v144;
              v146 = (v139 + 1);
              v147 = v98;
              do
              {
                v148 = *v146++;
                v143 = -1640531535 * (v148 + v143) - 1640531535;
                v147 -= 4;
              }

              while (v147);
              v149 = 0;
              v113 = HIWORD(v143);
              v150 = v143 >> v144;
              v151 = (v139 + 2);
              v152 = v98;
              do
              {
                v153 = *v151++;
                v149 = -1640531535 * (v153 + v149) - 1640531535;
                v152 -= 4;
              }

              while (v152);
              v154 = 0;
              v155 = HIWORD(v138) ^ v138;
              v114 = HIWORD(v149);
              v156 = v149 >> v144;
              v157 = (v139 + 3);
              LODWORD(v115) = v98;
              do
              {
                v158 = *v157++;
                v116 = v158;
                v154 = -1640531535 * (v158 + v154) - 1640531535;
                v115 = (v115 - 4);
              }

              while (v115);
              v159 = HIWORD(v143) ^ v143;
              v160 = HIWORD(v149) ^ v149;
              v111 = &v132[6 * v145];
              v161 = &v132[6 * v150];
              v162 = &v132[6 * v156];
            }

            else
            {
              v160 = 0;
              v155 = 0;
              v159 = 0;
              v154 = 0;
              v144 = *(v16 + 44);
              v162 = v132;
              v111 = v132;
              v161 = v132;
            }

            v112 = v154 ^ HIWORD(v154);
            *v111 = v136;
            *(v111 + 4) = v155;
            *v161 = v136 + 1;
            v163 = &v132[6 * (v154 >> v144)];
            *(v161 + 2) = v159;
            *v162 = v136 + 2;
            *(v162 + 2) = v160;
            *v163 = v136 + 3;
            *(v163 + 2) = v154 ^ HIWORD(v154);
            v134 = v137 + 4;
            v136 = v137;
          }

          while (v137 + 4 < v133);
        }

        v164 = v16;
        if (v122 && (ThreadPoolSync(v122) & 0x80000000) != 0)
        {
          v170 = "ThreadPoolSync";
          v171 = 906;
LABEL_179:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", v171, 92, 0, v170, v116, v117, v172);
          v100 = 0;
          v16 = v164;
          v103 = v173;
LABEL_180:
          if ((ThreadPoolDestroy(v122) & 0x80000000) == 0)
          {
            goto LABEL_185;
          }

          v123 = "ThreadPoolDestroy";
          v124 = 930;
          goto LABEL_182;
        }

        v165 = 0;
        v166 = v177;
        do
        {
          if (v122)
          {
            Worker = ThreadPoolGetWorker(v122, v111, v112, v113, v114, v115, v116, v117);
          }

          else
          {
            Worker = *v104;
          }

          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 910, 92, 0, "ThreadPoolGetWorker", v116, v117, v172);
            v100 = 0;
            v16 = v164;
            goto LABEL_176;
          }

          *(Worker + 32) = v132;
          *(Worker + 24) = v179 >= *(v164 + 32);
          *(Worker + 8) = v131;
          *(Worker + 12) = v165 * v181;
          v168 = v165 * v181 + v181;
          *(Worker + 16) = v168;
          v169 = *(v164 + 36);
          if (v165 * v181 > v169)
          {
            *(Worker + 12) = v169;
          }

          if (v168 > v169)
          {
            *(Worker + 16) = v169;
          }

          if (v122)
          {
            if ((ThreadPoolRunWorker(v122, Worker, v112, v113, v114, v115, v116, v117) & 0x80000000) != 0)
            {
              v170 = "ThreadPoolRunWorker";
              v171 = 920;
              goto LABEL_179;
            }
          }

          else
          {
            initBestMatchThreadProc(Worker, Worker, v112, v113, v114, v115, v116, v117);
          }

          ++v165;
          --v166;
        }

        while (v166);
        v130 = v175 ^ (v122 != 0);
        v16 = v164;
        v129 = *(v164 + 32);
        v131 += v97;
        if (v179 < v129)
        {
          continue;
        }

        break;
      }

      v100 = 1;
LABEL_176:
      v103 = v173;
    }

    else
    {
      v100 = 1;
    }

    if (!v122)
    {
      goto LABEL_185;
    }

    goto LABEL_180;
  }

  v122 = ThreadPoolCreate(v99, v110, initBestMatchThreadProc);
  if (v122)
  {
    goto LABEL_136;
  }

  v123 = "ThreadPoolCreate";
  v124 = 874;
LABEL_182:
  v128 = 0;
LABEL_183:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", v124, 92, v128, v123, v116, v117, v172);
LABEL_184:
  v100 = 0;
LABEL_185:
  free(v103);
  free(v104);
  free(v185);
  free(v186[0]);
  if (!v100)
  {
    v88 = "initBestMatchFromHashes";
    v89 = 1069;
    goto LABEL_106;
  }

LABEL_186:
  getRealTime();
LABEL_187:
  if (v182 >= 2)
  {
    free(*(v16 + 56));
    *(v16 + 56) = 0;
  }

LABEL_110:
  v93 = *MEMORY[0x29EDCA608];
  return v16;
}

size_t getProfile(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 6;
  }

  v25 = (a1 + 4);
  switch(v3)
  {
    case 2:
      v4 = xmmword_296AD19B0;
      goto LABEL_20;
    case 3:
      v4 = xmmword_296AD19A0;
      goto LABEL_20;
    case 4:
      v4 = xmmword_296AD1990;
      goto LABEL_20;
    case 5:
      v4 = xmmword_296AD1980;
      goto LABEL_20;
    case 6:
      *a1 = xmmword_296AD1980;
      v7 = 0x1A00000010;
      goto LABEL_29;
    case 7:
      v8 = xmmword_296AD1980;
      goto LABEL_22;
    case 8:
      *a1 = xmmword_296AD1970;
      v7 = 0x1A0000000CLL;
      goto LABEL_29;
    case 9:
      v8 = xmmword_296AD1970;
LABEL_22:
      *a1 = v8;
      v7 = 0x1A00000008;
      goto LABEL_29;
    case 10:
      v6 = xmmword_296AD1960;
      goto LABEL_28;
    case 11:
      v6 = xmmword_296AD1950;
      goto LABEL_28;
    case 12:
      v6 = xmmword_296AD1940;
      goto LABEL_28;
    case 13:
      v5 = xmmword_296AD1930;
      goto LABEL_11;
    case 14:
      v5 = xmmword_296AD1920;
      goto LABEL_11;
    case 15:
      v6 = xmmword_296AD1910;
      goto LABEL_28;
    case 16:
      v6 = xmmword_296AD1900;
      goto LABEL_28;
    case 17:
      v6 = xmmword_296AD18F0;
LABEL_28:
      *a1 = v6;
      v7 = 24;
      goto LABEL_29;
    case 18:
      v5 = xmmword_296AD18F0;
LABEL_11:
      *a1 = v5;
      v7 = 16;
      goto LABEL_29;
    case 19:
      *a1 = xmmword_296AD18F0;
      v7 = 8;
      goto LABEL_29;
    case 20:
      *a1 = 1;
      *v25 = 0;
      *(a1 + 12) = 0;
      *(a1 + 20) = 0;
      goto LABEL_30;
    case 21:
      *a1 = xmmword_296AD1980;
      v7 = 0x1800000010;
      goto LABEL_29;
    default:
      v4 = xmmword_296AD19C0;
LABEL_20:
      *a1 = v4;
      v7 = 0x1A00000018;
LABEL_29:
      *(a1 + 16) = v7;
LABEL_30:
      result = getenv("BXDIFF_MATCHES_PROFILE");
      if (!result)
      {
        return result;
      }

      v10 = result;
      result = strlen(result);
      if (!result)
      {
        return result;
      }

      v11 = result;
      v12 = (v10 + 1);
      v13 = MEMORY[0x29EDCA600];
      break;
  }

  while (1)
  {
    v14 = __tolower(*(v12 - 1));
    v17 = v14;
    if (v14 > 0x7F)
    {
      if (__maskrune(v14, 0x4000uLL))
      {
        goto LABEL_51;
      }
    }

    else if ((*(v13 + 4 * v14 + 60) & 0x4000) != 0)
    {
      goto LABEL_51;
    }

    v18 = v17 - 58;
    if ((v17 - 58) <= 0x39)
    {
      break;
    }

LABEL_46:
    if (v17 != 44)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 505, 92, 0, "Invalid profile code: %c", v15, v16, v17);
      goto LABEL_54;
    }

LABEL_51:
    ++v12;
    if (!--v11)
    {
      return 0;
    }
  }

  if (((1 << v18) & 0x224820000000000) == 0)
  {
    if (((1 << v18) & 3) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  __endptr = 0;
  v19 = strtol(v12, &__endptr, 10);
  if (*__error())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 508, 92, 0, "Invalid profile value: %s", v20, v21, v12);
    goto LABEL_54;
  }

  if (v17 > 104)
  {
    v22 = (a1 + 8);
    if (v17 != 105)
    {
      v22 = (a1 + 16);
      if (v17 != 108)
      {
        v22 = a1;
        if (v17 != 115)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_50;
  }

  v22 = v25;
  if (v17 == 99 || (v22 = (a1 + 12), v17 == 100))
  {
LABEL_50:
    *v22 = v19;
    goto LABEL_51;
  }

LABEL_57:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 515, 92, 0, "Invalid profile code: %c", v20, v21, v17);
LABEL_54:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "getProfile", 560, 92, 0, "parsing profile: %s", v23, v24, v10);
  return 0xFFFFFFFFLL;
}

void BXDiffMatchesDestroy(void **a1)
{
  if (a1)
  {
    free(a1[7]);
    free(a1[6]);

    free(a1);
  }
}

uint64_t BXDiffMatchesGetBestMatch(uint64_t a1, unsigned int a2, void *a3)
{
  v10 = 0;
  if (*(a1 + 36) <= a2)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = (v5 + 8 * a2);
    v7 = *v6;
    v10 = v7;
    if (v7 != -1)
    {
      LODWORD(result) = v6[1];
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
LABEL_6:
    LODWORD(result) = 0;
    goto LABEL_7;
  }

  v9 = (v7 + 4 * *(*(a1 + 24) + a2));
  result = bestMatchInRange(a1, v7 + 1028, a2, *v9, v9[1], &v10);
  v7 = v10;
  if (v5)
  {
    *(v5 + 8 * a2) = v10 | (result << 32);
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t bestMatchInRange(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  if (a5 <= a4)
  {
    v18 = 0;
    result = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(a2 + 4 * a4);
    v8 = a4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 36) - a3;
    if (v10 >= v9 - v7)
    {
      v11 = (v9 - v7);
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v13 + a3;
    while (1)
    {
      v15 = v6 + 8;
      if (v6 + 8 > v11)
      {
        break;
      }

      v16 = *(v12 + v7 + v6);
      v17 = *(v14 + v6);
      v6 += 8;
      if (v16 != v17)
      {
        LODWORD(v11) = v15 + (__clz(__rbit64(v17 ^ v16)) >> 3) - 8;
        goto LABEL_16;
      }
    }

    if (v6 < v11)
    {
      v20 = v11 - v6;
      v21 = (v13 + a3 + v6);
      v22 = (v12 + v7 + v6);
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *v21++;
        if (v23 != v25)
        {
          break;
        }

        ++v6;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v11) = v6;
    }

LABEL_16:
    v26 = 0;
    v27 = a5 - 1;
    v28 = *(a2 + 4 * v27);
    LODWORD(v29) = v9 - v28;
    if (v10 >= v9 - v28)
    {
      v29 = v29;
    }

    else
    {
      v29 = v10;
    }

    while (1)
    {
      v30 = v26 + 8;
      if (v26 + 8 > v29)
      {
        break;
      }

      v31 = *(v12 + v28 + v26);
      v32 = *(v14 + v26);
      v26 += 8;
      if (v31 != v32)
      {
        LODWORD(v29) = v30 + (__clz(__rbit64(v32 ^ v31)) >> 3) - 8;
        goto LABEL_28;
      }
    }

    if (v26 < v29)
    {
      v33 = v29 - v26;
      v34 = (v13 + a3 + v26);
      v35 = (v12 + v28 + v26);
      while (1)
      {
        v37 = *v35++;
        v36 = v37;
        v38 = *v34++;
        if (v36 != v38)
        {
          break;
        }

        ++v26;
        if (!--v33)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v29) = v26;
    }

LABEL_28:
    v39 = v27 - v8;
    if ((v27 - v8) < 2)
    {
      v40 = v8;
    }

    else
    {
      do
      {
        v40 = v8 + (v39 >> 1);
        v41 = *(a2 + 4 * v40);
        LODWORD(v42) = v9 - v41;
        if (v10 >= v9 - v41)
        {
          v42 = v42;
        }

        else
        {
          v42 = v10;
        }

        if (v11 >= v29)
        {
          LODWORD(v43) = v29;
        }

        else
        {
          LODWORD(v43) = v11;
        }

        v44 = v12 + v41;
        while (1)
        {
          v45 = v43 + 8;
          if (v43 + 8 > v42)
          {
            break;
          }

          v46 = *(v44 + v43);
          v47 = *(v14 + v43);
          LODWORD(v43) = v43 + 8;
          if (v46 != v47)
          {
            LODWORD(v43) = v45 + (__clz(__rbit64(v47 ^ v46)) >> 3) - 8;
            goto LABEL_39;
          }
        }

        if (v43 >= v42)
        {
LABEL_46:
          LODWORD(v43) = v42;
          goto LABEL_47;
        }

        v43 = v43;
        while (*(v44 + v43) == *(v14 + v43))
        {
          if (++v43 >= v42)
          {
            goto LABEL_46;
          }
        }

LABEL_39:
        if (v43 < v42 && *(v13 + v43 + a3) < *(v12 + (v43 + v41)))
        {
          LODWORD(v29) = v43;
          v27 = v40;
          v40 = v8;
          goto LABEL_48;
        }

LABEL_47:
        LODWORD(v11) = v43;
        v8 = v40;
LABEL_48:
        v39 = v27 - v40;
      }

      while ((v27 - v40) > 1);
    }

    if (v11 <= v29)
    {
      v48 = v27;
    }

    else
    {
      v48 = v40;
    }

    if (v11 <= v29)
    {
      result = v29;
    }

    else
    {
      result = v11;
    }

    v18 = *(a2 + 4 * v48);
  }

  *a6 = v18;
  return result;
}

unint64_t quicksort64(unint64_t result, unint64_t *a2, int a3)
{
  if (result >= 2)
  {
    v5 = result;
    while (1)
    {
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          v37 = *a2;
          v36 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v36))
          {
            v38 = a2[1];
            v36 = *a2;
          }

          else
          {
            *a2 = v36;
            a2[1] = v37;
            v38 = v37;
          }

          v58 = a2[2];
          v57 = a2[3];
          v59 = HIDWORD(v58);
          if (HIDWORD(v58) <= HIDWORD(v57))
          {
            v60 = a2[3];
            v57 = a2[2];
          }

          else
          {
            v59 = HIDWORD(v57);
            a2[2] = v57;
            a2[3] = v58;
            v60 = v58;
          }

          if (v59 >= HIDWORD(v36))
          {
            v36 = v57;
          }

          else
          {
            *a2 = v57;
            a2[2] = v36;
          }

          v61 = HIDWORD(v38);
          if (HIDWORD(v38) <= HIDWORD(v60))
          {
            v60 = v38;
          }

          else
          {
            v61 = HIDWORD(v60);
            a2[1] = v60;
            a2[3] = v38;
          }

          if (v61 > HIDWORD(v36))
          {
            a2[1] = v36;
            a2[2] = v60;
          }

          return result;
        }

        if (v5 == 5)
        {
          v39 = *a2;
          v40 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v40))
          {
            v41 = a2[1];
            v40 = *a2;
          }

          else
          {
            *a2 = v40;
            a2[1] = v39;
            v41 = v39;
          }

          v63 = a2[2];
          v62 = a2[3];
          v64 = HIDWORD(v63);
          if (HIDWORD(v63) <= HIDWORD(v62))
          {
            v65 = a2[3];
            v62 = a2[2];
          }

          else
          {
            v64 = HIDWORD(v62);
            a2[2] = v62;
            a2[3] = v63;
            v65 = v63;
          }

          if (v64 >= HIDWORD(v40))
          {
            v66 = v62;
            v62 = v40;
          }

          else
          {
            *a2 = v62;
            a2[2] = v40;
            v66 = v40;
          }

          v67 = a2[4];
          v68 = HIDWORD(v41);
          if (HIDWORD(v41) <= HIDWORD(v67))
          {
            v69 = a2[4];
            v67 = v41;
          }

          else
          {
            v68 = HIDWORD(v67);
            a2[1] = v67;
            a2[4] = v41;
            v69 = v41;
          }

          if (v68 >= HIDWORD(v62))
          {
            v62 = v67;
          }

          else
          {
            *a2 = v67;
            a2[1] = v62;
          }

          v70 = HIDWORD(v66);
          if (HIDWORD(v66) <= HIDWORD(v65))
          {
            v71 = v65;
            v65 = v66;
          }

          else
          {
            v70 = HIDWORD(v65);
            a2[2] = v65;
            a2[3] = v66;
            v71 = v66;
          }

          if (v70 >= HIDWORD(v62))
          {
            v62 = v65;
          }

          else
          {
            a2[1] = v65;
            a2[2] = v62;
          }

          v72 = HIDWORD(v71);
          if (HIDWORD(v71) <= HIDWORD(v69))
          {
            v69 = v71;
          }

          else
          {
            v72 = HIDWORD(v69);
            a2[3] = v69;
            a2[4] = v71;
          }

          if (v72 < HIDWORD(v62))
          {
            a2[2] = v69;
            a2[3] = v62;
          }

          return result;
        }
      }

      else
      {
        if (v5 == 2)
        {
          v30 = *a2;
          v31 = a2[1];
          if (HIDWORD(*a2) > HIDWORD(v31))
          {
            *a2 = v31;
            a2[1] = v30;
          }

          return result;
        }

        if (v5 == 3)
        {
          v32 = *a2;
          v33 = a2[2];
          v34 = HIDWORD(*a2);
          if (v34 <= HIDWORD(v33))
          {
            v35 = a2[2];
            v33 = *a2;
          }

          else
          {
            v34 = HIDWORD(v33);
            *a2 = v33;
            a2[2] = v32;
            v35 = v32;
          }

          v56 = a2[1];
          if (v34 <= HIDWORD(v56))
          {
            v34 = HIDWORD(v56);
          }

          else
          {
            *a2 = v56;
            a2[1] = v33;
            v56 = v33;
          }

          if (v34 > HIDWORD(v35))
          {
            a2[1] = v35;
            a2[2] = v56;
          }

          return result;
        }
      }

      if (a3 <= 0)
      {
        break;
      }

      v6 = v5 >> 2;
      v7 = &a2[v5 >> 1];
      v8 = *a2;
      v9 = v7[-(v5 >> 2)];
      if (HIDWORD(*a2) <= HIDWORD(v9))
      {
        v10 = v7[-(v5 >> 2)];
        v9 = *a2;
      }

      else
      {
        *a2 = v9;
        v7[-(v5 >> 2)] = v8;
        v10 = v8;
      }

      v11 = *v7;
      v12 = v7[v6];
      v13 = HIDWORD(*v7);
      if (v13 <= HIDWORD(v12))
      {
        v14 = v7[v6];
        v12 = *v7;
      }

      else
      {
        v13 = HIDWORD(v12);
        *v7 = v12;
        v7[v6] = v11;
        v14 = v11;
      }

      if (v13 >= HIDWORD(v9))
      {
        v15 = v12;
        v12 = v9;
      }

      else
      {
        *a2 = v12;
        *v7 = v9;
        v15 = v9;
      }

      v16 = &a2[v5];
      v17 = *(v16 - 1);
      v18 = HIDWORD(v10);
      if (HIDWORD(v10) <= HIDWORD(v17))
      {
        v19 = *(v16 - 1);
        v17 = v10;
      }

      else
      {
        v18 = HIDWORD(v17);
        v7[-(v5 >> 2)] = v17;
        *(v16 - 1) = v10;
        v19 = v10;
      }

      if (v18 >= HIDWORD(v12))
      {
        v12 = v17;
      }

      else
      {
        *a2 = v17;
        v7[-(v5 >> 2)] = v12;
      }

      v20 = HIDWORD(v15);
      if (HIDWORD(v15) <= HIDWORD(v14))
      {
        v21 = v14;
        v14 = v15;
      }

      else
      {
        v20 = HIDWORD(v14);
        *v7 = v14;
        v7[v6] = v15;
        v21 = v15;
      }

      if (v20 >= HIDWORD(v12))
      {
        v12 = v14;
      }

      else
      {
        v7[-(v5 >> 2)] = v14;
        *v7 = v12;
      }

      v22 = HIDWORD(v21);
      if (HIDWORD(v21) <= HIDWORD(v19))
      {
        v19 = v21;
      }

      else
      {
        v22 = HIDWORD(v19);
        v7[v6] = v19;
        *(v16 - 1) = v21;
      }

      if (v22 < HIDWORD(v12))
      {
        *v7 = v19;
        v7[v6] = v12;
      }

      v23 = 0;
      v24 = *(v7 + 1);
      v25 = v5;
      while (1)
      {
        if (v23 < v5)
        {
          while (HIDWORD(a2[v23]) < v24)
          {
            if (v5 == ++v23)
            {
              v23 = v5;
              break;
            }
          }
        }

        while (v25)
        {
          if (HIDWORD(a2[v25 - 1]) < v24)
          {
            break;
          }

          --v25;
        }

        if (v23 >= v25)
        {
          break;
        }

        if (v23 != --v25)
        {
          v26 = a2[v23];
          a2[v23] = a2[v25];
          a2[v25] = v26;
        }

        ++v23;
      }

      v27 = v25;
      if (v25 < v5)
      {
        do
        {
          v28 = a2[v27];
          if (v24 == HIDWORD(v28))
          {
            if (v27 != v25)
            {
              v29 = a2[v25];
              a2[v25] = v28;
              a2[v27] = v29;
            }

            ++v25;
          }

          ++v27;
        }

        while (v5 != v27);
      }

      --a3;
      result = quicksort64();
      v5 -= v25;
      a2 += v25;
      if (v5 < 2)
      {
        return result;
      }
    }

    for (i = 1; i != v5; ++i)
    {
      v43 = a2[i];
      v44 = i;
      while (1)
      {
        v45 = v44 - 1;
        v46 = (v44 - 1) >> 1;
        v47 = a2[v46];
        if (v47 >= v43)
        {
          break;
        }

        a2[v44] = v47;
        v44 = (v44 - 1) >> 1;
        if (v45 <= 1)
        {
          goto LABEL_70;
        }
      }

      v46 = v44;
LABEL_70:
      a2[v46] = v43;
    }

    v48 = v5 - 1;
    v49 = a2[v5 - 1];
    a2[v5 - 1] = *a2;
    if (v5 - 1 >= 2)
    {
      do
      {
        v50 = 0;
        v51 = 0;
        v52 = 1;
        while (1)
        {
          v53 = a2[v52];
          v54 = v50 + 2;
          if (v50 + 2 >= v48)
          {
            v54 = v52;
          }

          else
          {
            v55 = a2[v54];
            if (v53 >= v55)
            {
              v54 = v52;
            }

            if (v53 <= v55)
            {
              v53 = v55;
            }
          }

          if (v49 >= v53)
          {
            break;
          }

          a2[v51] = v53;
          v50 = 2 * v54;
          v52 = (2 * v54) | 1;
          v51 = v54;
          if (v52 >= v48)
          {
            goto LABEL_84;
          }
        }

        v54 = v51;
LABEL_84:
        a2[v54] = v49;
        v49 = a2[--v48];
        a2[v48] = *a2;
      }

      while (v48 > 1);
    }

    *a2 = v49;
  }

  return result;
}

void **MemBufferCreate(size_t a1)
{
  v2 = malloc(0x28uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    if ((MemBufferIncreaseCapacity(v2, a1) & 0x8000000000000000) != 0)
    {
      free(v3[4]);
      free(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferCreate", 41, 36, *v4, "malloc", v5, v6, v8);
  }

  return v3;
}

unint64_t MemBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  result = *a1;
  if (result < a2)
  {
    v5 = reallocf(*(a1 + 32), a2);
    *(a1 + 32) = v5;
    if (v5)
    {
      *a1 = a2;
      return a2;
    }

    else
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseCapacity", 91, 36, *v6, "malloc", v7, v8, v9);
      return -1;
    }
  }

  return result;
}

void MemBufferDestroy(void **a1)
{
  if (a1)
  {
    free(a1[4]);

    free(a1);
  }
}

uint64_t MemBufferGetFreePtr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      memmove(*(a1 + 32), (*(a1 + 32) + v3), v2);
      v4 = *(a1 + 8);
      *(a1 + 16) = 0;
      *(a1 + 24) = v4;
    }
  }

  return *(a1 + 32) + *(a1 + 24);
}

uint64_t MemBufferDecreaseSize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 8);
  v10 = *(a1 + 8);
  result = v10 - a2;
  if (v10 >= a2)
  {
    if (v10 == a2)
    {
      result = 0;
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
    }

    else
    {
      v12 = *(a1 + 16) + a2;
      *(a1 + 8) = result;
      *(a1 + 16) = v12;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferDecreaseSize", 117, 36, 0, "MemBufferDecreaseSize n is too large: %zu", a7, a8, a2);
    return -1;
  }

  return result;
}

uint64_t MemBufferIncreaseSize(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3] + a2;
  if (v8 <= *a1)
  {
    a1[3] = v8;
    v9 = a1[1] + a2;
    a1[1] = v9;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseSize", 137, 36, 0, "MemBufferIncreaseSize n is too large: %zu", a7, a8, a2);
    return -1;
  }

  return v9;
}

uint64_t MemBufferFillFromBuffer(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = *a1 - a1[1];
  FreePtr = MemBufferGetFreePtr(a1);
  if (v6 >= a2)
  {
    memcpy(FreePtr, a3, a2);

    return MemBufferIncreaseSize(a1, a2, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromBuffer", 162, 36, 0, "MemBufferFillFromBuffer n is too large: %zu", v8, v9, a2);
    return -1;
  }
}

uint64_t MemBufferFillFromIStream(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v8 = *a1 - a1[1];
  FreePtr = MemBufferGetFreePtr(a1);
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    v16 = FreePtr;
    v17 = 0;
    while (1)
    {
      v18 = a3(a4, v16, v8);
      if (v18 < 0)
      {
        return -1;
      }

      if (v18)
      {
        v16 += v18;
        v17 += v18;
        v8 -= v18;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
LABEL_10:

    return MemBufferIncreaseSize(a1, v17, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t MemBufferFlushToOStream(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1[1];
  }

  if (v9)
  {
    v12 = 0;
    v13 = a1[4] + a1[2];
    while (1)
    {
      v14 = a3(a4, v13, v9);
      if (v14 < 0)
      {
        return -1;
      }

      if (!v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToOStream", 265, 36, 0, "MemBuffer write proc returned 0", a7, a8, v16);
        return -1;
      }

      v13 += v14;
      v12 += v14;
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_11:

    return MemBufferDecreaseSize(a1, v12, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t MemBufferTransmit(unint64_t *a1, unint64_t a2, size_t (*a3)(int a1, void *a2, size_t a3), uint64_t a4, uint64_t (*a5)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a3 | a5)
  {
    if (a3)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = IZeroStreamRead;
    }

    if (a5)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      v14 = a5;
    }

    else
    {
      v14 = ONullStreamWrite;
    }

    if (*a1)
    {
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
      v9 = 0;
      if (!a2)
      {
        return v9;
      }

      while (1)
      {
        if (*a1 >= v8)
        {
          v15 = v8;
        }

        else
        {
          v15 = *a1;
        }

        v16 = v12(v11, a1[4], v15);
        if (v16 < 0)
        {
          v19 = "read failed";
          v20 = 294;
          goto LABEL_30;
        }

        v17 = v16;
        v18 = v14(v13, a1[4], v16);
        if ((v18 & 0x8000000000000000) != 0)
        {
          v19 = "write failed";
          v20 = 298;
          goto LABEL_30;
        }

        if (v18 < v17)
        {
          break;
        }

        if (v17)
        {
          v9 += v17;
          if (v8 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 -= v17;
          }

          if (v8)
          {
            continue;
          }
        }

        return v9;
      }

      v19 = "truncated write";
      v20 = 299;
    }

    else
    {
      v19 = "MemBuffer is not allocated";
      v20 = 281;
    }

LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", v20, 36, 0, v19, a7, a8, v22);
    return -1;
  }

  return a2;
}

void MappedBufferDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 != -1)
    {
      munmap(v2, a1[2]);
    }

    if (*(a1 + 1) && (*a1 & 0x80000000) == 0)
    {
      close(*a1);
    }

    free(a1);
  }
}

void *MappedBufferCreateWithFD(int a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v23, 0, sizeof(v23));
    v8 = getpagesize();
    *v7 = a1;
    *(v7 + 1) = 0;
    if (a1 < 0)
    {
      v13 = "invalid file descriptor";
      v14 = 397;
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }

    v11 = v8;
    if (fstat(a1, &v23))
    {
      v12 = *__error();
      v13 = "MappedBuffer fstat";
      v14 = 400;
LABEL_18:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", v14, 36, v12, v13, v9, v10, v22);
      MappedBufferDestroy(v7);
      return 0;
    }

    if (v23.st_size <= a2)
    {
      v22 = a2;
      v13 = "invalid offset=%llu for fd";
      v14 = 401;
      goto LABEL_17;
    }

    if (a3 == -1)
    {
      a3 = v23.st_size - a2;
    }

    else if (a3 + a2 > v23.st_size)
    {
      v22 = a2;
      v13 = "invalid offset=%llu, size=%llu for fd";
      v14 = 405;
      goto LABEL_17;
    }

    if (!a3)
    {
      v22 = 0;
      v13 = "invalid size=%llu for fd";
      v14 = 407;
      goto LABEL_17;
    }

    v7[4] = a3;
    v18 = a2 / v11 * v11;
    v19 = a2 % v11;
    v7[2] = v19 + a3;
    v20 = mmap(0, v19 + a3, 1, 1, a1, v18);
    v7[1] = v20;
    if (v20 == -1)
    {
      v12 = *__error();
      v13 = "mmap file segment";
      v14 = 417;
      goto LABEL_18;
    }

    v7[3] = &v20[v19];
  }

  else
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", 382, 36, *v15, "malloc", v16, v17, v22);
  }

  return v7;
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

uint64_t IFileStreamCreateWithFD(int a1, unint64_t a2, uint64_t a3)
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
    *v7 = a1;
    *(v7 + 4) = 0;
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
      v13 = 325;
    }

    else
    {
      clampIfRegularFile(v7);
      if ((seekTo(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 331;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", v13, 29, 0, v12, v10, v11, v18);
    IFileStreamDestroy(v7);
    return 0;
  }

  else
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v14, "malloc", v15, v16, v18);
  }

  return v7;
}