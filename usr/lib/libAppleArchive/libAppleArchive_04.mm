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

void *aaAssetDecompressionStreamOpen(uint64_t a1)
{
  v2 = malloc(0x70uLL);
  v3 = v2;
  if (!v2)
  {
    v6 = 277;
LABEL_6:
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpen", v6, 132, *v7, "malloc", v8, v9, v11);
    closeProc_0(v3);
    return 0;
  }

  memset_s(v2, 0x70uLL, 0, 0x70uLL);
  *v3 = a1;
  v4 = malloc(0x38uLL);
  if (!v4)
  {
    v6 = 282;
    goto LABEL_6;
  }

  v5 = v4;
  memset_s(v4, 0x38uLL, 0, 0x38uLL);
  *v5 = v3;
  v5[1] = closeProc_0;
  v5[6] = closeWithStateProc_0;
  v5[3] = writeProc_0;
  v5[2] = cancelProc_0;
  return v5;
}

uint64_t closeProc_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    free(*(result + 72));
    memset_s(v1 + 7, 0x18uLL, 0, 0x18uLL);
    free(v1[12]);
    memset_s(v1 + 10, 0x18uLL, 0, 0x18uLL);
    memset_s(v1, 0x70uLL, 0, 0x70uLL);
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

uint64_t closeWithStateProc_0(uint64_t result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    v10 = atomic_load((result + 8));
    v12 = (result + 80);
    v11 = *(result + 80);
    v32 = *(result + 24);
    v13 = *(result + 48);
    v33 = *(result + 32);
    v34 = v13;
    v14 = v10 == 0;
    v15 = (result + 56);
    v16 = *(result + 104);
    v35 = v11;
    v36 = v16;
    if (a2[3])
    {
      v18 = 0;
      v19 = &v32;
      v20 = 56;
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
          if (v18 != 56)
          {
            break;
          }

          if (!a2[3])
          {
            goto LABEL_29;
          }

          v22 = *v15;
          if (*v15)
          {
            v23 = 0;
            v24 = *(v9 + 72);
            while (1)
            {
              v25 = (a2[3])(*a2, v24, v22);
              if (v25 < 1)
              {
                break;
              }

              v24 += v25;
              v23 += v25;
              v22 -= v25;
              if (!v22)
              {
                goto LABEL_18;
              }
            }

            v23 = v25;
LABEL_18:
            if (v23 < 0 || !a2[3])
            {
              goto LABEL_29;
            }
          }

          v27 = *v12;
          if (*v12)
          {
            v28 = 0;
            v29 = *(v9 + 96);
            while (1)
            {
              v30 = (a2[3])(*a2, v29, v27);
              if (v30 < 1)
              {
                break;
              }

              v29 += v30;
              v28 += v30;
              v27 -= v30;
              if (!v27)
              {
                goto LABEL_26;
              }
            }

            v28 = v30;
LABEL_26:
            if (v28 < 0)
            {
LABEL_29:
              v26 = 250;
              goto LABEL_14;
            }
          }

          if (a3)
          {
            *a3 = *(v9 + 104);
          }

          goto LABEL_15;
        }
      }
    }

    v26 = 245;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "closeWithStateProc", v26, 132, 0, "write state", a7, a8, v31);
    v14 = 0;
LABEL_15:
    free(*(v9 + 72));
    memset_s(v12 - 3, 0x18uLL, 0, 0x18uLL);
    free(*(v9 + 96));
    memset_s(v12, 0x18uLL, 0, 0x18uLL);
    memset_s(v9, 0x70uLL, 0, 0x70uLL);
    free(v9);
    return (v14 - 1);
  }

  return result;
}

uint64_t writeProc_0(void **a1, char *__src, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x29EDCA608];
  if (atomic_load(a1 + 2))
  {
    v9 = -1;
    goto LABEL_128;
  }

  v9 = 0;
  v14 = (a1 + 7);
  v13 = a1[7];
  v15 = (a1 + 10);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v16 = *(a1 + 6);
        if (v16 != 2)
        {
          break;
        }

        v17 = a1[5];
        v18 = v17 - v13;
        if (v17 <= v13)
        {
          v32 = a1[2];
          if (v32 && a1[6] != v17)
          {
            if (v17 != v13 || (v37 = a1[10], a1[11] - v37 < a1[4]))
            {
              v55 = "invalid state";
              v56 = 174;
              goto LABEL_123;
            }

            v38 = a1[9];
            v39 = v32(&v37[a1[12]]);
            if (v39 != a1[6])
            {
              v55 = "corrupted stream";
              v56 = 176;
              goto LABEL_123;
            }

            v13 = *v15;
            if (v39)
            {
              v40 = __CFADD__(v13, v39);
              v13 += v39;
              if (v40 || v13 > a1[11])
              {
                v55 = "invalid size";
                v56 = 177;
                goto LABEL_123;
              }

              *v15 = v13;
            }

            v33 = v15;
            if (v13)
            {
LABEL_64:
              v41 = v33[2];
              while (1)
              {
                v42 = (*a1)[3];
                if (!v42)
                {
                  break;
                }

                v43 = v42(**a1, v41, v13);
                if (v43 <= 0)
                {
                  break;
                }

                v41 += v43;
                v13 -= v43;
                if (!v13)
                {
                  goto LABEL_68;
                }
              }

              v55 = "write";
              v56 = 187;
              goto LABEL_123;
            }
          }

          else
          {
            v33 = v14;
            if (v13)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v13 = 0;
          a1[7] = 0;
          a1[10] = 0;
          *(a1 + 6) = 1;
        }

        else
        {
          if (!a3)
          {
            goto LABEL_103;
          }

LABEL_7:
          if (v18 >= a3)
          {
            v19 = a3;
          }

          else
          {
            v19 = v18;
          }

          v20 = v13 + v19;
          if (__CFADD__(v13, v19) || (v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          v21 = a1[8];
          if (v21 < v20)
          {
            do
            {
              while (!v21)
              {
                v21 = 0x4000;
                v23 = 0x4000;
                if (v20 <= 0x4000)
                {
                  goto LABEL_48;
                }
              }

              v22 = v21 >> 1;
              if ((v21 & (v21 >> 1)) != 0)
              {
                v22 = v21 & (v21 >> 1);
              }

              v21 += v22;
            }

            while (v21 < v20);
            v23 = v21;
            if (v21 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_115;
            }

LABEL_48:
            v34 = a1[9];
            v35 = realloc(v34, v23);
            if (v35)
            {
              a1[8] = v23;
              a1[9] = v35;
              goto LABEL_50;
            }

            free(v34);
LABEL_115:
            *v14 = 0;
            v14[1] = 0;
            v14[2] = 0;
LABEL_116:
            v55 = "malloc";
            v56 = 209;
            goto LABEL_123;
          }

LABEL_50:
          v36 = a1[9];
          if (__src)
          {
            memcpy(v36 + *v14, __src, v19);
          }

          else if (v36)
          {
            memset_s(v36 + *v14, v19, 0, v19);
          }

          v13 = *v14 + v19;
          *v14 = v13;
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          a3 -= v19;
          __src += v19;
          v9 += v19;
          a1[13] = (a1[13] + v19);
        }
      }

      if (v16 == 1)
      {
        break;
      }

      if (v16)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 199, 132, 0, "invalid state %d", a7, a8, *(a1 + 6));
        goto LABEL_124;
      }

      if (!(a3 | v13))
      {
        goto LABEL_103;
      }

      if (v13 <= 0xB)
      {
        v54 = 12;
        goto LABEL_102;
      }

      v24 = a1[9];
      *v62 = *v24;
      *&v62[8] = v24[2];
      if (*v24 != 25200 || BYTE2(*v24) != 122)
      {
LABEL_108:
        v55 = "invalid compressed stream";
        v56 = 106;
        goto LABEL_123;
      }

      if (v62[3] <= 0x64u)
      {
        switch(v62[3])
        {
          case '-':
            v27 = 0;
            v26 = 0;
            break;
          case '4':
            v26 = PCompressLZ4Decode;
            v27 = 256;
            break;
          case 'b':
            v26 = PCompressLZBITMAPDecode;
            v27 = 1794;
            break;
          default:
            goto LABEL_108;
        }
      }

      else if (v62[3] > 0x77u)
      {
        if (v62[3] == 120)
        {
          v26 = PCompressLZMADecode;
          v27 = 774;
        }

        else
        {
          if (v62[3] != 122)
          {
            goto LABEL_108;
          }

          v26 = PCompressZLIBDecode;
          v27 = 1285;
        }
      }

      else if (v62[3] == 101)
      {
        v26 = PCompressLZFSEDecode;
        v27 = 2049;
      }

      else
      {
        if (v62[3] != 102)
        {
          goto LABEL_108;
        }

        v26 = PCompressLZVNDecode;
        v27 = 2304;
      }

      *(a1 + 7) = v27;
      v44 = bswap64(*&v62[4]);
      a1[4] = v44;
      a1[2] = v26;
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      v45 = a1[8];
      if (v45 < v44)
      {
        do
        {
          while (!v45)
          {
            v45 = 0x4000;
            v47 = 0x4000;
            if (v44 <= 0x4000)
            {
              goto LABEL_86;
            }
          }

          v46 = v45 >> 1;
          if ((v45 & (v45 >> 1)) != 0)
          {
            v46 = v45 & (v45 >> 1);
          }

          v45 += v46;
        }

        while (v45 < v44);
        v47 = v45;
        if (v45 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_121;
        }

LABEL_86:
        v48 = realloc(v24, v47);
        if (!v48)
        {
          free(v24);
          goto LABEL_121;
        }

        a1[8] = v47;
        a1[9] = v48;
        v44 = a1[4];
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }
      }

      v49 = a1[11];
      if (v49 < v44)
      {
        do
        {
          while (!v49)
          {
            v49 = 0x4000;
            v51 = 0x4000;
            if (v44 <= 0x4000)
            {
              goto LABEL_97;
            }
          }

          v50 = v49 >> 1;
          if ((v49 & (v49 >> 1)) != 0)
          {
            v50 = v49 & (v49 >> 1);
          }

          v49 += v50;
        }

        while (v49 < v44);
        v51 = v49;
        if (v49 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_120;
        }

LABEL_97:
        v52 = a1[12];
        v53 = realloc(v52, v51);
        if (v53)
        {
          a1[11] = v51;
          a1[12] = v53;
          goto LABEL_99;
        }

        free(v52);
LABEL_120:
        v14 = v15;
LABEL_121:
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
LABEL_122:
        v55 = "reserve buffers";
        v56 = 128;
LABEL_123:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", v56, 132, 0, v55, a7, a8, v61);
LABEL_124:
        v9 = -1;
        goto LABEL_125;
      }

LABEL_99:
      v13 = 0;
      a1[7] = 0;
      *(a1 + 6) = 1;
    }

    if (!(a3 | v13))
    {
      goto LABEL_103;
    }

    if (v13 <= 0xF)
    {
      break;
    }

    v28 = a1[9];
    v29 = v28[1];
    v30 = bswap64(*v28);
    v31 = bswap64(v29);
    a1[5] = v31;
    a1[6] = v30;
    if (v30 < v31 || v30 > a1[4])
    {
      v55 = "invalid compressed stream";
      v56 = 149;
      goto LABEL_123;
    }

    v13 = 0;
    a1[7] = 0;
    *(a1 + 6) = 2;
  }

  v54 = 16;
LABEL_102:
  v18 = v54 - v13;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_103:
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_128;
  }

LABEL_125:
  v57 = 0;
  atomic_compare_exchange_strong(a1 + 2, &v57, 1u);
  if (!v57)
  {
    v58 = (*a1)[2];
    if (v58)
    {
      v58(**a1);
    }
  }

LABEL_128:
  v59 = *MEMORY[0x29EDCA608];
  return v9;
}

atomic_uint *cancelProc_0(atomic_uint *result)
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

void (**aaAssetDecompressionStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  v5 = aaAssetDecompressionStreamOpen(a1);
  v8 = v5;
  if (!v5)
  {
    return v8;
  }

  v9 = *v5;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  if (!*(a2 + 2))
  {
LABEL_16:
    v21 = "truncated state";
    v22 = 316;
    goto LABEL_17;
  }

  v10 = &v56;
  v11 = 56;
  do
  {
    v12 = (*(a2 + 2))(*a2, v10, v11);
    if (v12 < 0)
    {
      goto LABEL_16;
    }

    v10 = (v10 + v12);
    v11 -= v12;
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }
  }

  while (!v13);
  v15 = v56;
  v14 = DWORD1(v56);
  *(v9 + 6) = v56;
  *(v9 + 7) = v14;
  v16 = *(&v56 + 1);
  v17 = v57;
  *(v9 + 4) = *(&v56 + 1);
  *(v9 + 5) = v17;
  v18 = *(&v57 + 1);
  v19 = v59;
  *(v9 + 6) = *(&v57 + 1);
  *(v9 + 13) = v19;
  if (v15 >= 3)
  {
    v21 = "invalid state";
    v22 = 330;
    goto LABEL_17;
  }

  v20 = PCompressZLIBDecode;
  if (v14 <= 1284)
  {
    if (v14)
    {
      if (v14 == 256)
      {
        v20 = PCompressLZ4Decode;
      }

      else
      {
        if (v14 != 774)
        {
          goto LABEL_30;
        }

        v20 = PCompressLZMADecode;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (v14 <= 2048)
    {
      if (v14 == 1285)
      {
        goto LABEL_33;
      }

      if (v14 == 1794)
      {
        v20 = PCompressLZBITMAPDecode;
        goto LABEL_33;
      }

LABEL_30:
      v21 = "invalid compression algo";
      v22 = 342;
      goto LABEL_17;
    }

    if (v14 == 2049)
    {
      v20 = PCompressLZFSEDecode;
    }

    else
    {
      if (v14 != 2304)
      {
        goto LABEL_30;
      }

      v20 = PCompressLZVNDecode;
    }
  }

LABEL_33:
  *(v9 + 2) = v20;
  if (v17 > v16 || v18 > v16 || v58 > v17 || v17 > v18 || *(&v58 + 1) > v18)
  {
    v21 = "invalid sizes";
    v22 = 352;
    goto LABEL_17;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_121;
  }

  v24 = *(v9 + 8);
  if (v24 < v16)
  {
    do
    {
      while (!v24)
      {
        v24 = 0x4000;
        if (v16 <= 0x4000)
        {
          v26 = (v9 + 72);
          v24 = 0x4000;
          goto LABEL_50;
        }
      }

      v25 = v24 >> 1;
      if ((v24 & (v24 >> 1)) != 0)
      {
        v25 = v24 & (v24 >> 1);
      }

      v24 += v25;
    }

    while (v24 < v16);
    v26 = (v9 + 72);
    if (v24 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_117:
      *v26 = 0;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      goto LABEL_121;
    }

LABEL_50:
    v27 = *v26;
    v28 = realloc(*v26, v24);
    if (!v28)
    {
      free(v27);
      goto LABEL_117;
    }

    *(v9 + 8) = v24;
    *(v9 + 9) = v28;
    v16 = *(v9 + 4);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }
  }

  v30 = (v9 + 88);
  v29 = *(v9 + 11);
  if (v29 < v16)
  {
    do
    {
      while (!v29)
      {
        v29 = 0x4000;
        if (v16 <= 0x4000)
        {
          v29 = 0x4000;
          goto LABEL_62;
        }
      }

      v31 = v29 >> 1;
      if ((v29 & (v29 >> 1)) != 0)
      {
        v31 = v29 & (v29 >> 1);
      }

      v29 += v31;
    }

    while (v29 < v16);
    if (v29 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_119:
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      goto LABEL_120;
    }

LABEL_62:
    v32 = *(v9 + 12);
    v33 = realloc(v32, v29);
    if (!v33)
    {
      free(v32);
      goto LABEL_119;
    }

    *(v9 + 11) = v29;
    *(v9 + 12) = v33;
  }

  v34 = v58;
  if (v58)
  {
    v36 = *(v9 + 7);
    v35 = *(v9 + 8);
    while (1)
    {
      if (v36 != v35)
      {
        goto LABEL_77;
      }

      v37 = v35 + 0x40000;
      if ((v35 + 0x40000) < 0)
      {
        goto LABEL_121;
      }

      if (v35 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v35)
        {
          v35 = 0x4000;
          v39 = 0x4000;
          if (v37 <= 0x4000)
          {
            goto LABEL_79;
          }
        }

        v38 = v35 >> 1;
        if ((v35 & (v35 >> 1)) != 0)
        {
          v38 = v35 & (v35 >> 1);
        }

        v35 += v38;
      }

      while (v35 < v37);
      v39 = v35;
      if (v35 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_124;
      }

LABEL_79:
      v40 = *(v9 + 9);
      v41 = realloc(v40, v39);
      if (!v41)
      {
        free(v40);
LABEL_124:
        *(v9 + 7) = 0;
        *(v9 + 8) = 0;
        *(v9 + 9) = 0;
        goto LABEL_121;
      }

      *(v9 + 8) = v39;
      *(v9 + 9) = v41;
      v36 = *(v9 + 7);
LABEL_81:
      if (v39 - v36 >= v34)
      {
        v42 = v34;
      }

      else
      {
        v42 = v39 - v36;
      }

      v43 = AAByteStreamRead(a2, (*(v9 + 9) + v36), v42);
      if (v43 < 0)
      {
        goto LABEL_121;
      }

      if (v43)
      {
        v44 = *(v9 + 7);
        v36 = v44 + v43;
        if (__CFADD__(v44, v43))
        {
          goto LABEL_121;
        }

        v35 = *(v9 + 8);
        if (v36 > v35)
        {
          goto LABEL_121;
        }

        *(v9 + 7) = v36;
        v34 -= v43;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_89;
    }

    v36 = v35;
LABEL_77:
    v39 = v35;
    goto LABEL_81;
  }

LABEL_89:
  v45 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
LABEL_114:
    if (a3)
    {
      *a3 = *(v9 + 13);
    }

    return v8;
  }

  v47 = *(v9 + 10);
  v46 = *(v9 + 11);
  while (1)
  {
    if (v47 != v46)
    {
      goto LABEL_102;
    }

    v48 = v46 + 0x40000;
    if ((v46 + 0x40000) < 0)
    {
      goto LABEL_121;
    }

    if (v46 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v47 = v46;
LABEL_102:
    v50 = v46;
LABEL_106:
    if (v50 - v47 >= v45)
    {
      v53 = v45;
    }

    else
    {
      v53 = v50 - v47;
    }

    v54 = AAByteStreamRead(a2, (*(v9 + 12) + v47), v53);
    if (v54 < 0)
    {
      goto LABEL_121;
    }

    if (!v54)
    {
      goto LABEL_114;
    }

    v55 = *(v9 + 10);
    v47 = v55 + v54;
    if (__CFADD__(v55, v54))
    {
      goto LABEL_121;
    }

    v46 = *v30;
    if (v47 > *v30)
    {
      goto LABEL_121;
    }

    *(v9 + 10) = v47;
    v45 -= v54;
    if (!v45)
    {
      goto LABEL_114;
    }
  }

  do
  {
    while (!v46)
    {
      v46 = 0x4000;
      v50 = 0x4000;
      if (v48 <= 0x4000)
      {
        goto LABEL_104;
      }
    }

    v49 = v46 >> 1;
    if ((v46 & (v46 >> 1)) != 0)
    {
      v49 = v46 & (v46 >> 1);
    }

    v46 += v49;
  }

  while (v46 < v48);
  v50 = v46;
  if (v46 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_127;
  }

LABEL_104:
  v51 = *(v9 + 12);
  v52 = realloc(v51, v50);
  if (v52)
  {
    *(v9 + 11) = v50;
    *(v9 + 12) = v52;
    v47 = *(v9 + 10);
    goto LABEL_106;
  }

  free(v51);
LABEL_127:
  *v30 = 0;
  *(v9 + 12) = 0;
LABEL_120:
  *(v9 + 10) = 0;
LABEL_121:
  v21 = "truncated state";
  v22 = 359;
LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", v22, 132, 0, v21, v6, v7, v56);
  if (*v8)
  {
    v8[1]();
  }

  free(v8);
  return 0;
}

unsigned int *ThreadPipelineCreate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v12 = calloc(1uLL, 0x1A8uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    v14 = calloc(a1, 0x198uLL);
    *(v13 + 1) = v14;
    if (v14)
    {
      v15 = calloc(1uLL, 0x20uLL);
      *(v13 + 2) = v15;
      if (v15)
      {
        v16 = *v13;
        v13[10] = 0;
        v13[11] = v16;
        v17 = calloc(v16, 4uLL);
        *(v13 + 6) = v17;
        if (v17)
        {
          if (pthread_mutex_init((v13 + 14), 0))
          {
            v21 = "SharedArrayInit: pthread_mutex_init failed\n";
            v22 = 56;
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v29 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v29;
              v30 = calloc(v29, 4uLL);
              *(v13 + 22) = v30;
              if (v30)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  v34 = "SharedArrayInit: pthread_mutex_init failed\n";
                  v35 = 56;
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v26 = "SemInit";
                      v27 = 184;
                    }

                    else if (*v13)
                    {
                      v36 = 0;
                      v37 = 352;
                      while (1)
                      {
                        v38 = *(v13 + 1);
                        v39 = v38 + v37;
                        *(v38 + v37 - 336) = v13;
                        *(v38 + v37 - 344) = v36;
                        v43 = v36;
                        *(v38 + v37 - 328) = *(a2 + 8 * v36);
                        *(v38 + v37 - 320) = a3;
                        *(v38 + v37 - 312) = 0;
                        if (pthread_mutex_init((v38 + v37 - 304), 0) || pthread_cond_init((v39 - 240), 0))
                        {
                          v26 = "SemInit";
                          v27 = 194;
                          goto LABEL_14;
                        }

                        *(v38 + v37 - 192) = 0;
                        if (pthread_mutex_init((v38 + v37 - 184), 0) || pthread_cond_init((v38 + v37 - 120), 0))
                        {
                          v26 = "SemInit";
                          v27 = 195;
                          goto LABEL_14;
                        }

                        v40 = (v38 + v37);
                        *&v40[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v40[-2].__opaque[24], 0) || pthread_cond_init(v40, 0))
                        {
                          v26 = "SemInit";
                          v27 = 196;
                          goto LABEL_14;
                        }

                        if ((createThread((v39 - 352), threadPipelineWorkerThreadProc, v39 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v36 = v43 + 1;
                        v37 += 408;
                        if (v43 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v26 = "Thread creation";
                      v27 = 197;
                    }

                    else
                    {
LABEL_37:
                      v41 = *(v13 + 2);
                      *(v41 + 8) = v13;
                      *(v41 + 16) = a4;
                      *(v41 + 24) = a5;
                      if ((createThread(v41, threadPipelineConsumerThreadProc, v41, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v26 = "Thread creation";
                      v27 = 206;
                    }

                    goto LABEL_14;
                  }

                  v34 = "SharedArrayInit: pthread_cond_init failed\n";
                  v35 = 57;
                }
              }

              else
              {
                v34 = "SharedArrayInit: malloc failed\n";
                v35 = 55;
              }

              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v35, 0, v34, v31, v32, v33, v42);
              v26 = "SharedArrayInit";
              v27 = 182;
LABEL_14:
              v23 = 0;
              goto LABEL_15;
            }

            v21 = "SharedArrayInit: pthread_cond_init failed\n";
            v22 = 57;
          }
        }

        else
        {
          v21 = "SharedArrayInit: malloc failed\n";
          v22 = 55;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v42);
        v26 = "SharedArrayInit";
        v27 = 180;
        goto LABEL_14;
      }

      v23 = *__error();
      v26 = "malloc";
      v27 = 179;
    }

    else
    {
      v23 = *__error();
      v26 = "malloc";
      v27 = 177;
    }
  }

  else
  {
    v23 = *__error();
    v26 = "malloc";
    v27 = 172;
  }

LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v27, 87, v23, v26, v24, v25, v42);
  ThreadPipelineDestroy(v13);
  return 0;
}

uint64_t threadPipelineWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_lock failed\n";
      v21 = 117;
      goto LABEL_35;
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 44);
    v9 = v7;
    if (v7 < v8)
    {
      *(*(v2 + 48) + 4 * v7) = v3;
      v9 = *(v2 + 40);
    }

    *(v2 + 40) = v9 + 1;
    if (!v9)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v21 = 124;
      goto LABEL_35;
    }

    if (v7 >= v8)
    {
      v20 = "SharedArrayPush: stack is full\n";
      v21 = 125;
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
    }

    while (1)
    {
      v12 = *(a1 + 40);
      if (v12 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 48)))
      {
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v12 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      v17 = "SemAcquire";
      v18 = 72;
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error", v13, v14, v22);
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v15 = *(a1 + 160), *(a1 + 160) = v15 + 1, !v15) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      v17 = "SemRelease";
      v18 = 85;
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v16 = *(a1 + 280);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v16 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    v17 = "SemAcquire";
    v18 = 88;
    goto LABEL_28;
  }

  v20 = "SharedArrayPush: pthread_cond_broadcast failed\n";
  v21 = 122;
LABEL_35:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v21, 0, v20, v4, v5, v6, v22);
  v17 = "SharedArrayPush";
  v18 = 69;
LABEL_28:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", v18, 87, 0, v17, v10, v11, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t threadPipelineConsumerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v12 = *(v2 + 168);
      if (v12)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        v6 = "SharedArrayPop: pthread_cond_wait failed\n";
        v7 = 94;
        goto LABEL_3;
      }
    }

    v13 = v12 - 1;
    *(v2 + 168) = v13;
    v14 = *(*(v2 + 176) + 4 * v13);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      v6 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v7 = 98;
      goto LABEL_3;
    }

    if (v14 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v17 = *(v2 + 296);
        *(v2 + 296) = v17 + 1;
        if (v17 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v14 == -1)
      {
        return a1;
      }

      v15 = *(v2 + 8) + 408 * v14;
      if (pthread_mutex_lock((v15 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v16 = *(v15 + 160);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v15 + 232), (v15 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v15 + 160) = v16 - 1;
      if (pthread_mutex_unlock((v15 + 168)))
      {
LABEL_28:
        v10 = "SemAcquire";
        v11 = 134;
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v15 + 24)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error", v18, v19, v22);
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v15 + 288)) || (v20 = *(v15 + 280), *(v15 + 280) = v20 + 1, !v20) && pthread_cond_broadcast((v15 + 352)) || pthread_mutex_unlock((v15 + 288)))
      {
        v10 = "SemRelease";
        v11 = 144;
        goto LABEL_29;
      }
    }
  }

  v6 = "SharedArrayPop: pthread_mutex_lock failed\n";
  v7 = 91;
LABEL_3:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v7, 0, v6, v3, v4, v5, v22);
  v10 = "SharedArrayDequeue";
  v11 = 114;
LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", v11, 87, 0, v10, v8, v9, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPipelineDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v6 = 1;
        goto LABEL_41;
      }

      v4 = 0;
      do
      {
        if (*v2)
        {
          ++v4;
        }

        v2 += 51;
        --v3;
      }

      while (v3);
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 14)))
          {
            v10 = 91;
            v11 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v10, 0, v11, v7, v8, v9, v39);
            v15 = -1;
          }

          else
          {
            while (1)
            {
              v12 = v1[10];
              if (v12)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                v10 = 94;
                v11 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v20 = v12 - 1;
            v1[10] = v20;
            v15 = *(*(v1 + 6) + 4 * v20);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v21, v22, v23, v39);
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop", v13, v14, v40);
          v6 = 0;
LABEL_17:
          v16 = *(v1 + 1) + 408 * v15;
          *(v16 + 400) = -1;
          if (pthread_mutex_lock((v16 + 48)) || (v19 = *(v16 + 40), *(v16 + 40) = v19 + 1, !v19) && pthread_cond_broadcast((v16 + 112)) || pthread_mutex_unlock((v16 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease", v17, v18, v39);
            v6 = 0;
          }

          if ((joinThread(*v16) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread", v24, v25, v39);
            v6 = 0;
          }

          *v16 = 0;
          if (++v5 == v4)
          {
            if (!*v1)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = 1;
LABEL_33:
      v26 = 0;
      v27 = 352;
      do
      {
        v28 = *(v1 + 1);
        v29 = v28 + v27;
        if (!pthread_mutex_destroy((v28 + v27 - 304)))
        {
          pthread_cond_destroy((v29 - 240));
        }

        if (!pthread_mutex_destroy((v29 - 184)))
        {
          pthread_cond_destroy((v28 + v27 - 120));
        }

        v30 = (v28 + v27);
        if (!pthread_mutex_destroy(&v30[-2].__opaque[24]))
        {
          pthread_cond_destroy(v30);
        }

        ++v26;
        v27 += 408;
      }

      while (v26 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v31 = *(v1 + 2);
    if (v31)
    {
      if (*v31)
      {
        if ((SharedArrayEnqueue_0(v1 + 42, -1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue", v32, v33, v39);
          v6 = 0;
        }

        if ((joinThread(*v31) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread", v34, v35, v39);
          v6 = 0;
        }

        *v31 = 0;
        v31 = *(v1 + 2);
      }

      free(v31);
      *(v1 + 2) = 0;
    }

    if (!pthread_mutex_destroy((v1 + 14)) && !pthread_cond_destroy((v1 + 30)))
    {
      free(*(v1 + 6));
    }

    if (!pthread_mutex_destroy((v1 + 46)) && !pthread_cond_destroy((v1 + 62)))
    {
      free(*(v1 + 22));
    }

    if (!pthread_mutex_destroy((v1 + 76)))
    {
      pthread_cond_destroy((v1 + 92));
    }

    v38 = atomic_load(v1 + 104);
    if (v38 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors", v36, v37, v39);
      v6 = 0;
    }

    free(v1);
    if (v6)
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

uint64_t ThreadPipelineGetWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 294;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", v9, 87, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
    v8 = "SharedArrayPop failed";
    v9 = 298;
    goto LABEL_11;
  }

  while (1)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      v14 = "SharedArrayPop: pthread_cond_wait failed\n";
      v15 = 94;
      goto LABEL_10;
    }
  }

  v17 = v16 - 1;
  *(a1 + 40) = v17;
  v18 = *(*(a1 + 48) + 4 * v17);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v15 = 98;
    goto LABEL_10;
  }

  *(a1 + 24) = v18;
  return *(*(a1 + 8) + 408 * v18 + 24);
}

uint64_t ThreadPipelineRunWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 311;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", v14, 87, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v9 = *(a1 + 8) + 408 * v8;
  v10 = *(a1 + 32);
  *(a1 + 32) = v10 + 1;
  *(v9 + 400) = v10;
  if ((SharedArrayEnqueue_0((a1 + 168), v8) & 0x80000000) != 0)
  {
    v13 = "SharedArrayEnqueue failed";
    v14 = 324;
    goto LABEL_11;
  }

  if (pthread_mutex_lock((v9 + 48)) || (v11 = *(v9 + 40), *(v9 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v9 + 112)) || (result = pthread_mutex_unlock((v9 + 48)), result))
  {
    v13 = "SemRelease failed";
    v14 = 325;
    goto LABEL_11;
  }

  return result;
}

uint64_t ThreadPipelineFlush(uint64_t a1)
{
  if ((SharedArrayEnqueue_0((a1 + 168), -2) & 0x80000000) != 0)
  {
    v4 = "SharedArrayEnqueue failed";
    v5 = 333;
    goto LABEL_9;
  }

  if (pthread_mutex_lock((a1 + 304)))
  {
    goto LABEL_3;
  }

  while (1)
  {
    v6 = *(a1 + 296);
    if (v6 > 0)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 368), (a1 + 304)))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 296) = v6 - 1;
  result = pthread_mutex_unlock((a1 + 304));
  if (result)
  {
LABEL_3:
    v4 = "SemAquire failed";
    v5 = 336;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", v5, 87, 0, v4, v2, v3, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *AARangeInputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x30uLL);
  v6 = v5;
  if (!v5 || (memset_s(v5, 0x30uLL, 0, 0x30uLL), !v4))
  {
    v10 = *__error();
    v11 = "malloc";
    v12 = 81;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "AARangeInputStreamOpen", v12, 118, v10, v11, v8, v9, v14);
    free(v6);
    free(v4);
    return 0;
  }

  *v6 = a1;
  v7 = AAByteRangeClone(a2);
  v6[1] = v7;
  if (!v7)
  {
    v11 = "AAByteRangeClone";
    v12 = 86;
    v10 = 0;
    goto LABEL_6;
  }

  v6[4] = AAByteRangeFirst(v7, 0, v6 + 2, v6 + 3);
  *v4 = v6;
  v4[1] = rangeInputStreamClose;
  v4[7] = rangeInputStreamCancel;
  v4[2] = rangeInputStreamRead;
  return v4;
}

uint64_t rangeInputStreamClose(void ***a1)
{
  AAByteRangeDestroy(a1[1]);
  free(a1);
  return 0;
}

void rangeInputStreamCancel(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 40), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t rangeInputStreamRead(uint64_t a1, char *buf, unint64_t a3)
{
  if (atomic_load((a1 + 40)))
  {
    return -1;
  }

  v4 = 0;
  if ((*(a1 + 32) & 0x8000000000000000) == 0)
  {
    v7 = a3;
    if (a3)
    {
      v4 = 0;
      v10 = (a1 + 16);
      v9 = *(a1 + 16);
      while (1)
      {
        v11 = *(a1 + 24);
        if (v9 >= v11)
        {
          v12 = AAByteRangeNext(*(a1 + 8), *(a1 + 32), (a1 + 16), (a1 + 24));
          *(a1 + 32) = v12;
          if (v12 < 0)
          {
            return v4;
          }

          v9 = *v10;
          v11 = *(a1 + 24);
        }

        v13 = v7 >= 0x10000000 ? 0x10000000 : v7;
        v14 = v9 + v13 <= v11 ? v13 : v11 - v9;
        v15 = AAByteStreamPRead(*a1, buf, v14, v9);
        if (v15 < 1)
        {
          break;
        }

        v9 = *v10 + v15;
        *v10 = v9;
        buf += v15;
        v4 += v15;
        v7 -= v15;
        if (!v7)
        {
          return v4;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "rangeInputStreamRead", 59, 118, 0, "Stream pread", v16, v17, v19);
      v18 = 0;
      atomic_compare_exchange_strong((a1 + 40), &v18, 1u);
      if (!v18)
      {
        AAByteStreamCancel(*a1);
      }

      return -1;
    }
  }

  return v4;
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
    v17 = dword_296AD1A6C[v18];
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
  *(v10 + 3) = xmmword_296AD1A20;
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
      *(v21 + 16) = unk_296AD1A48;
      *(v21 + 32) = xmmword_296AD1A58;
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

  v170 = dword_296AD1A98[v28];
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

uint64_t ParallelCompressionAFSCCompress(const char *a1, int a2)
{
  v62 = 0;
  v61 = -1;
  if ((ParallelCompressionAFSCGetMetadata(a1, &v62, &v61, &v60) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s", v4, v5, a1);
    return 0xFFFFFFFFLL;
  }

  v6 = v62;
  if (!v62)
  {
    return 0;
  }

  if (v61 == -1)
  {
    if (!a2)
    {
      return 0;
    }

    v17 = malloc(0x10000uLL);
    if (v17)
    {
      v18 = open(a1, 2);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = v18;
        v20 = ParallelCompressionAFSCStreamOpen(v18, v6, 0, 0);
        if (v20)
        {
          v28 = v20;
          v29 = 0;
          v30 = 0;
          v31 = 0x10000;
          v32 = 0x10000;
          while (1)
          {
            if (v6 >= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v6;
            }

            if (v32 - 0x10000 >= v6)
            {
              v52 = 1;
              goto LABEL_43;
            }

            v34 = v33 + v29;
            v35 = read(v19, v17, v33 + v29);
            if (v35 < 0)
            {
              v53 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v53, "read: %s", v54, v55, a1);
              goto LABEL_42;
            }

            if (v34 != v35)
            {
              v59 = a1;
              v41 = "truncated read: %s";
              v42 = 951;
              goto LABEL_41;
            }

            v39 = ParallelCompressionAFSCStreamWrite(v28, v17, v34, v36, v37, v38, v26, v27);
            if (v39 < 0)
            {
              break;
            }

            v30 += 0x10000;
            v32 += 0x10000;
            v29 -= 0x10000;
            if (v6 >= v30)
            {
              v40 = v30;
            }

            else
            {
              v40 = v6;
            }

            v31 -= 0x10000;
            if (v40 + v31 != v39)
            {
              v59 = a1;
              v41 = "truncated write: %s";
              v42 = 954;
              goto LABEL_41;
            }
          }

          v59 = a1;
          v41 = "Stream write failed: %s";
          v42 = 953;
LABEL_41:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v42, 86, 0, v41, v26, v27, v59);
LABEL_42:
          v52 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v28, v21, v22, v23, v24, v25, v26, v27) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s", v56, v57, a1);
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s", v26, v27, a1);
        }

        v52 = 0;
LABEL_46:
        close(v19);
        if (v52)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0xFFFFFFFFLL;
        }

        goto LABEL_49;
      }

      v47 = *__error();
      v58 = a1;
      v50 = "open: %s";
      v51 = 940;
    }

    else
    {
      v47 = *__error();
      v50 = "malloc";
      v51 = 938;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v51, 86, v47, v50, v48, v49, v58);
    v16 = 0xFFFFFFFFLL;
LABEL_49:
    free(v17);
    return v16;
  }

  if (a2)
  {
    return 0;
  }

  v7 = open(a1, 9);
  if (v7 < 0)
  {
    v44 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v44, "open: %s", v45, v46, a1);
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = write(v7, 0, 0);
  if (v9 < 0)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v10, "write: %s", v11, v12, a1);
  }

  if (close(v8) < 0)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v13, "close: %s", v14, v15, a1);
  }

  return v9 >> 63;
}

void *AAChunkInputStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  DefaultNThreads = a5;
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = calloc(1uLL, 0x68uLL);
  v11 = malloc(0x90uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x90uLL, 0, 0x90uLL), !v10))
  {
    v20 = *__error();
    v23 = "malloc";
    v24 = 277;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "AAChunkInputStreamOpen", v24, 66, v20, v23, v21, v22, v26);
    free(v10);
    streamClose(v12);
    return 0;
  }

  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a4;
  v13 = DefaultNThreads;
  if (DefaultNThreads * a2 > a3)
  {
    v13 = a3 / a2;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  *(v12 + 128) = v14;
  if (!is_mul_ok(v14, 0x30uLL) || 48 * v14 >= 0x2000000001)
  {
    *__error() = 12;
    *(v12 + 136) = 0;
    goto LABEL_22;
  }

  v15 = calloc(v14, 0x30uLL);
  *(v12 + 136) = v15;
  if (!v15)
  {
LABEL_22:
    v20 = *__error();
    v23 = "malloc";
    v24 = 290;
    goto LABEL_23;
  }

  v16 = *(v12 + 128);
  if (v16)
  {
    v17 = *(v12 + 8);
    v18 = v15 + 16;
    while (1)
    {
      *(v18 - 2) = -1;
      if (v17 >= 0x2000000001)
      {
        break;
      }

      v19 = malloc(v17);
      *v18 = v19;
      if (!v19)
      {
        goto LABEL_27;
      }

      v18 += 6;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    *__error() = 12;
    *v18 = 0;
LABEL_27:
    v20 = *__error();
    v23 = "malloc";
    v24 = 296;
    goto LABEL_23;
  }

LABEL_18:
  if (pthread_mutex_init((v12 + 32), 0) < 0)
  {
    v20 = *__error();
    v23 = "pthread_mutex_init";
    v24 = 298;
    goto LABEL_23;
  }

  *v10 = v12;
  v10[1] = streamClose;
  v10[7] = streamAbort;
  v10[4] = streamPRead;
  v10[2] = streamRead;
  v10[6] = streamSeek;
  return v10;
}

uint64_t streamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) >> 62)
    {
      v2 = MEMORY[0x29EDCA610];
      fwrite("ChunkInputStream\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v2, "%12zu chunk size (B)\n", *(a1 + 8));
      fprintf(*v2, "%12zu chunks in cache\n", *(a1 + 128));
      v3 = *v2;
      v4 = atomic_load((a1 + 112));
      fprintf(v3, "%12llu bytes read from upstream\n", v4);
      v5 = *v2;
      v6 = atomic_load((a1 + 120));
      fprintf(v5, "%12llu bytes read from clients\n", v6);
      v7 = *v2;
      v8 = atomic_load((a1 + 120));
      v9 = v8 * 100.0;
      v10 = atomic_load((a1 + 112));
      fprintf(v7, "%12.2f percent usage\n", v9 / v10);
    }

    pthread_mutex_destroy((a1 + 32));
    v11 = *(a1 + 136);
    if (v11)
    {
      if (*(a1 + 128))
      {
        v12 = 0;
        v13 = 16;
        do
        {
          free(*(*(a1 + 136) + v13));
          ++v12;
          v13 += 48;
        }

        while (v12 < *(a1 + 128));
        v11 = *(a1 + 136);
      }

      free(v11);
    }

    free(a1);
  }

  return 0;
}

void streamAbort(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 24), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t streamPRead(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (!atomic_load((a1 + 24)))
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a4 + a3;
    if (a4 + a3 <= a4)
    {
      return 0;
    }

    v5 = 0;
    v10 = *(a1 + 8);
    v47 = v10;
    v48 = a4 + a3;
    while (1)
    {
      v11 = v6 / v10;
      v12 = v6 / v10 * v10;
      v13 = v12 <= v6 ? v6 : v6 / v10 * v10;
      v14 = v12 + v10;
      v15 = v7 >= v14 ? v14 : v7;
      if (pthread_mutex_lock((a1 + 32)) < 0)
      {
        break;
      }

      v18 = *(a1 + 128);
      if (v18)
      {
        v19 = *(a1 + 136);
        v20 = v19;
        v21 = *(a1 + 128);
        do
        {
          if (*v20 == v11)
          {
LABEL_33:
            *(v20 + 8) = atomic_fetch_add((a1 + 96), 1uLL);
            atomic_fetch_add((v20 + 40), 1u);
            goto LABEL_34;
          }

          v20 += 48;
          --v21;
        }

        while (v21);
        v20 = *(a1 + 136);
        v22 = *(a1 + 128);
        do
        {
          if (*v20 == -1)
          {
            v23 = -1;
LABEL_29:
            if (v23 != v11)
            {
              v24 = atomic_load((v20 + 40));
              if (v24 >= 1)
              {
                do
                {
                  pthread_yield_np();
                  v25 = atomic_load((v20 + 40));
                }

                while (v25 > 0);
              }

              *v20 = v11;
              *(v20 + 24) = 0;
              atomic_store(0, (v20 + 32));
              atomic_store(0, (v20 + 36));
              atomic_store(0, (v20 + 40));
            }

            goto LABEL_33;
          }

          v20 += 48;
          --v22;
        }

        while (v22);
        v20 = 0;
        do
        {
          if (!v20 || *(v19 + 8) < *(v20 + 8))
          {
            v20 = v19;
          }

          v19 += 48;
          --v18;
        }

        while (v18);
        if (v20)
        {
          v23 = *v20;
          goto LABEL_29;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 75, 66, 0, "Invalid state", v16, v17, v46);
      v20 = 0;
LABEL_34:
      if (pthread_mutex_unlock((a1 + 32)) < 0)
      {
        v28 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 107, 66, *v28, "pthread_mutex_unlock", v29, v30, v46);
      }

      if (!v20)
      {
        goto LABEL_55;
      }

      while (!atomic_load((v20 + 32)))
      {
        v32 = atomic_load((a1 + 24));
        if (v32)
        {
          goto LABEL_58;
        }

        atomic_compare_exchange_strong((v20 + 36), &v32, 1u);
        if (v32)
        {
          pthread_yield_np();
        }

        else
        {
          v33 = AAByteStreamPRead(*a1, *(v20 + 16), *(a1 + 8), *(a1 + 8) * v11);
          if (v33 < 0)
          {
            v39 = "Stream read";
            v40 = 132;
LABEL_57:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamReadChunkData", v40, 66, 0, v39, v26, v27, v46);
LABEL_58:
            atomic_fetch_add((v20 + 40), 0xFFFFFFFF);
            goto LABEL_59;
          }

          v34 = 0;
          *(v20 + 24) = v33;
          atomic_compare_exchange_strong((v20 + 32), &v34, 1u);
          atomic_fetch_add_explicit((a1 + 112), v33, memory_order_relaxed);
        }
      }

      v35 = v13 - v12;
      v36 = *(v20 + 24);
      if (v36 < v13 - v12)
      {
        v39 = "Read out of range";
        v40 = 148;
        goto LABEL_57;
      }

      if (v36 >= v15 - v12)
      {
        v37 = v15 - v13;
      }

      else
      {
        v37 = v36 - (v13 - v12);
      }

      memcpy(a2, (*(v20 + 16) + v35), v37);
      atomic_fetch_add_explicit((a1 + 120), v37, memory_order_relaxed);
      atomic_fetch_add((v20 + 40), 0xFFFFFFFF);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v37)
      {
        v5 += v37;
        v6 += v37;
        a2 += v37;
        v10 = v47;
        v7 = v48;
        if (v6 < v48)
        {
          continue;
        }
      }

      return v5;
    }

    v41 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 51, 66, *v41, "pthread_mutex_lock", v42, v43, v46);
LABEL_55:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamReadChunkData", 119, 66, 0, "get a valid chunk from cache", v26, v27, v46);
LABEL_59:
    v44 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v44, 1u);
    if (!v44)
    {
      AAByteStreamCancel(*a1);
    }

LABEL_61:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamPRead", 215, 66, 0, "Reading chunk data failed", v26, v27, v46);
    v45 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v45, 1u);
    if (!v45)
    {
      AAByteStreamCancel(*a1);
    }
  }

  return -1;
}

uint64_t streamRead(uint64_t a1, char *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return streamPRead(a1, a2, a3, atomic_fetch_add((a1 + 104), a3));
  }
}

uint64_t streamSeek(uint64_t a1, off_t a2, int a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    a2 += atomic_fetch_add((a1 + 104), a2);
    return a2;
  }

  if (a3 != 2)
  {
    return -1;
  }

  a2 = AAByteStreamSeek(*a1, a2, 2);
  if (a2 < 0)
  {
    return -1;
  }

LABEL_8:
  atomic_store(a2, (a1 + 104));
  return a2;
}

uint64_t CC_CKSUM_Init(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t CC_CKSUM_Update(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = CKSUMTable[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  *(a1 + 8) += v4;
  return 1;
}

uint64_t CC_CKSUM_Final(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = CKSUMTable[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

uint64_t (**AAChunkAsyncStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  DefaultNThreads = a5;
  if (a5)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 651, 143, 0, "invalid chunk size", a7, a8, v28);
    v16 = 0;
LABEL_16:
    chunkAsyncClose(v16);
    v18 = 0;
    goto LABEL_17;
  }

  DefaultNThreads = getDefaultNThreads();
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = malloc(0xF0uLL);
  v16 = v13;
  if (!v13)
  {
    v24 = 655;
    v25 = 0;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", v24, 143, v25, "malloc", v14, v15, v28);
    goto LABEL_16;
  }

  memset_s(v13, 0xF0uLL, 0, 0xF0uLL);
  v17 = aaAsyncByteStreamAlloc(v16, chunkAsyncClose, ~(a4 >> 55) & 4, 20.0, 1.0);
  if (!v17)
  {
    v25 = *__error();
    v24 = 657;
    goto LABEL_15;
  }

  v18 = v17;
  *(v16 + 8) = a2;
  *(v16 + 16) = a4;
  *v16 = a1;
  *(v16 + 24) = a4 >> 62;
  if (a3 == -1)
  {
    v19 = DefaultNThreads;
  }

  else
  {
    v19 = a3 / a2;
  }

  if (pthread_mutex_init((v16 + 32), 0))
  {
    v22 = "mutex init";
    v23 = 668;
  }

  else
  {
    if (v19 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v19;
    }

    if ((lockedStateReserveActiveChunks(v16, v27) & 0x80000000) != 0)
    {
      v22 = "init active chunks";
      v23 = 669;
    }

    else
    {
      v18[2] = chunkAsyncGetRange;
      v18[3] = chunkAsyncProcess;
      v18[4] = chunkAsyncCancel;
      v18[5] = chunkAsyncIsCancelled;
      if ((createThread((v16 + 192), streamProc, v16, 0) & 0x80000000) == 0)
      {
        return v18;
      }

      v22 = "createThread";
      v23 = 678;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", v23, 143, 0, v22, v20, v21, v28);
LABEL_17:
  AAAsyncByteStreamClose(v18);
  return 0;
}

uint64_t chunkAsyncClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 204), &v2, 1u);
    v3 = *(result + 192);
    if (v3)
    {
      joinThread(v3);
    }

    v4 = atomic_load((v1 + 200));
    if (*(v1 + 24))
    {
      v5 = MEMORY[0x29EDCA610];
      fwrite("AAChunkAsyncStream\n", 0x13uLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v5, "%12zu chunk size\n", *(v1 + 8));
      fprintf(*v5, "%12zu allocated chunks\n", *(v1 + 96));
      v6 = *v5;
      v7 = atomic_load((v1 + 208));
      fprintf(v6, "%12llu ranges requested\n", v7);
      v8 = *v5;
      v9 = atomic_load((v1 + 224));
      fprintf(v8, "%12llu chunks processed\n", v9);
      fprintf(*v5, "%12zu bytes in chunks (%.2f MB)\n", *(v1 + 8) * *(v1 + 96), vcvtd_n_f64_u64(*(v1 + 8) * *(v1 + 96), 0x14uLL));
      v10 = *v5;
      v11 = atomic_load((v1 + 216));
      v12 = atomic_load((v1 + 216));
      fprintf(v10, "%12llu bytes requested in ranges (%.2f MB)\n", v11, vcvtd_n_f64_u64(v12, 0x14uLL));
      v13 = *v5;
      v14 = atomic_load((v1 + 232));
      v15 = atomic_load((v1 + 232));
      fprintf(v13, "%12llu bytes processed in chunks (%.2f MB)\n", v14, vcvtd_n_f64_u64(v15, 0x14uLL));
    }

    pthread_mutex_destroy((v1 + 32));
    free(*(v1 + 168));
    if (*(v1 + 96))
    {
      v16 = 0;
      v17 = 40;
      do
      {
        free(*(*(v1 + 104) + v17));
        ++v16;
        v17 += 48;
      }

      while (v16 < *(v1 + 96));
    }

    free(*(v1 + 104));
    free(*(v1 + 120));
    free(*(v1 + 184));
    memset_s(v1, 0xF0uLL, 0, 0xF0uLL);
    free(v1);
    if (v4)
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

uint64_t lockedStateReserveActiveChunks(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 96) >= a2)
  {
    return 0;
  }

  if (*(a1 + 24) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "    %zu active chunks\n", a2);
  }

  if (48 * a2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    *(a1 + 104) = 0;
    v14 = *__error();
    v17 = 147;
    goto LABEL_16;
  }

  v5 = *(a1 + 104);
  v6 = realloc(v5, 48 * a2);
  if (!v6)
  {
    free(v5);
    goto LABEL_15;
  }

  *(a1 + 104) = v6;
  v7 = *(a1 + 96);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
LABEL_13:
    result = 0;
    *(a1 + 96) = a2;
    return result;
  }

  v9 = 48 * v7;
  while (1)
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 8);
    if (v11 >= 0x2000000001)
    {
      break;
    }

    v12 = malloc(v11);
    v13 = v10 + v9;
    *(v10 + v9 + 40) = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    *v13 = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v9 += 48;
    *(v13 + 8) = -1;
    if (!--v8)
    {
      goto LABEL_13;
    }
  }

  *__error() = 12;
  *(v10 + v9 + 40) = 0;
LABEL_18:
  v14 = *__error();
  v17 = 152;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", v17, 143, v14, "malloc", v15, v16, v18);
  return 0xFFFFFFFFLL;
}

uint64_t chunkAsyncGetRange(uint64_t a1, void *a2, uint64_t *a3)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 519, 143, 0, "lock", v7, v8, v21);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    v12 = 0;
    v13 = *(a1 + 104);
    while (1)
    {
      v14 = *v13;
      v13 += 12;
      if (v14 == 1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v11)
  {
    v15 = *(a1 + 104) + 48 * v12;
    *v15 = 2;
    v16 = *(v15 + 16);
    *a3 = v16;
    v17 = *(v15 + 24);
    *a2 = v17 - v16;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "<-- chunk %10llx %10llx -- %8zu\n", v16, v17, *(v15 + 8));
    }

    goto LABEL_19;
  }

LABEL_13:
  if (!*(a1 + 160) && *(a1 + 128))
  {
    *a2 = 0;
    *a3 = 0;
LABEL_19:
    if (*(a1 + 24) < 3u || *a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1;
      fwrite("<-- EOF\n", 8uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    goto LABEL_22;
  }

  v9 = 0;
LABEL_22:
  if (!pthread_mutex_unlock((a1 + 32)))
  {
    return v9;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 546, 143, 0, "unlock", v18, v19, v21);
  v20 = 0;
  atomic_compare_exchange_strong((a1 + 200), &v20, 1u);
  if (!v20)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t chunkAsyncProcess(uint64_t a1, const void *a2, unint64_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    v11 = "lock";
    v12 = 556;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", v12, 143, 0, v11, v9, v10, v19);
    return 0xFFFFFFFFLL;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    v11 = "invalid range";
    v12 = 559;
    goto LABEL_4;
  }

  v20[0] = a4;
  v20[1] = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    v11 = "invalid range";
    v12 = 561;
    goto LABEL_4;
  }

  atomic_fetch_add_explicit((a1 + 232), a3, memory_order_relaxed);
  atomic_fetch_add_explicit((a1 + 224), 1uLL, memory_order_relaxed);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 104);
    while (*v15 != 2 || rangeCmp((v15 + 16), v20))
    {
      v15 += 48;
      if (!--v14)
      {
        goto LABEL_20;
      }
    }

    memcpy(*(v15 + 40), a2, a3);
    *v15 = 3;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "--> chunk %10llx %10llx -- %8zu\n", *(v15 + 16), *(v15 + 24), *(v15 + 8));
    }
  }

LABEL_20:
  result = pthread_mutex_unlock((a1 + 32));
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 582, 143, 0, "unlock", v16, v17, v19);
    v18 = 0;
    atomic_compare_exchange_strong((a1 + 200), &v18, 1u);
    if (!v18)
    {
      AAAsyncByteStreamCancel(*a1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

atomic_uint *chunkAsyncCancel(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 50, &v1, 1u);
  if (!v1)
  {
    return AAAsyncByteStreamCancel(*result);
  }

  return result;
}

void **streamProc(void **a1)
{
  if (atomic_load(a1 + 51))
  {
    return a1;
  }

  v162 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_4;
    }

    v44 = a1[1] * a1[12];
    v45 = a1[20];
    v46 = v44 + (v44 >> 2);
    v47 = 0;
    if (v45)
    {
      v48 = a1[21] + 1;
      do
      {
        v47 = *v48 + v47 - *(v48 - 1);
        v48 += 2;
        v45 = (v45 - 1);
      }

      while (v45);
      if (v47 > v46)
      {
LABEL_4:
        v3 = 0;
        goto LABEL_5;
      }
    }

    v3 = 0;
    while (1)
    {
      v163 = 0;
      v164 = 0;
      Range = AAAsyncByteStreamGetRange(*a1, &v163, &v164);
      if (Range < 0)
      {
        v148 = "GetRange";
        v149 = 220;
LABEL_267:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", v149, 143, 0, v148, v50, v51, v161);
        goto LABEL_268;
      }

      if (!Range)
      {
        goto LABEL_113;
      }

      if (!v163)
      {
        break;
      }

      v52 = v164;
      if ((v164 & 0x8000000000000000) != 0)
      {
        v148 = "invalid range";
        v149 = 228;
        goto LABEL_267;
      }

      v53 = (v164 + v163);
      *&v165 = v164;
      *(&v165 + 1) = v164 + v163;
      if (__CFADD__(v164, v163))
      {
        v148 = "invalid range overflow";
        v149 = 230;
        goto LABEL_267;
      }

      v54 = a1[20];
      if (v54)
      {
        v55 = a1[21];
        v56 = a1[20];
        while (rangeCmp(v55, &v165))
        {
          v55 += 2;
          v56 = (v56 - 1);
          if (!v56)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_107;
      }

LABEL_90:
      v57 = a1[19];
      if (v54 >= v57)
      {
        v58 = 2 * v57;
        v26 = v57 == 0;
        v59 = 32;
        if (!v26)
        {
          v59 = v58;
        }

        a1[19] = v59;
        if ((16 * v59) >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
          v60 = a1[21];
          v61 = realloc(v60, 16 * v59);
          if (v61)
          {
            a1[21] = v61;
            goto LABEL_96;
          }

          free(v60);
        }

        a1[21] = 0;
        v158 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 248, 143, *v158, "malloc", v159, v160, v161);
        a1[19] = 0;
        a1[20] = 0;
LABEL_268:
        v150 = "fetching ranges";
        v151 = 493;
        goto LABEL_277;
      }

LABEL_96:
      if (*(a1 + 6) >= 3u)
      {
        fprintf(*MEMORY[0x29EDCA610], "<<< range %10llx %10llx\n", v52, v53);
      }

      v63 = a1[20];
      v62 = a1[21];
      a1[20] = (v63 + 1);
      *&v62[2 * v63] = v165;
      v47 += v53 - v52;
      atomic_fetch_add_explicit(a1 + 27, v53 - v52, memory_order_relaxed);
      atomic_fetch_add_explicit(a1 + 26, 1uLL, memory_order_relaxed);
      v65 = a1[17];
      v64 = a1[18];
      if (v65 == v64)
      {
        *(a1 + 17) = v165;
      }

      else if (v53 != v52)
      {
        if (v65 >= v52)
        {
          v65 = v52;
        }

        if (v53 > v64)
        {
          v64 = v53;
        }

        a1[17] = v65;
        a1[18] = v64;
      }

      v3 = 1;
LABEL_107:
      if (v47 > v46)
      {
        goto LABEL_113;
      }
    }

    if (*(a1 + 6) >= 3u)
    {
      fwrite("<<< range EOF\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    *(a1 + 32) = 1;
LABEL_113:
    if (v3)
    {
      stateSortRanges(a1);
    }

LABEL_5:
    if (pthread_mutex_lock((a1 + 4)))
    {
      v152 = "lock";
      v153 = 276;
      goto LABEL_271;
    }

    v6 = a1[20];
    if (!v6)
    {
      goto LABEL_116;
    }

    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = a1[1];
LABEL_9:
      v11 = &a1[21][2 * v8];
      v13 = *v11;
      v12 = v11[1];
      v14 = *v11 / v10;
      v15 = (v12 + v10 - 1) / v10;
      if (v14 < v15)
      {
        break;
      }

LABEL_51:
      v28 = v12 - v13;
      if (v12 - v13 > a1[22])
      {
        a1[22] = v28;
        if (v28 >= 0x2000000001)
        {
          *__error() = 12;
LABEL_263:
          a1[23] = 0;
          v145 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 314, 143, *v145, "malloc", v146, v147, v161);
          a1[22] = 0;
          goto LABEL_75;
        }

        v29 = a1[23];
        v30 = realloc(v29, v12 - v13);
        if (!v30)
        {
          free(v29);
          goto LABEL_263;
        }

        a1[23] = v30;
      }

      if (v14 < v15)
      {
        v31 = 0;
        while (1)
        {
          v32 = &a1[13][6 * a1[15][v14]];
          v33 = v32[2];
          v34 = v32[3];
          if (v33 == v34)
          {
            goto LABEL_64;
          }

          v35 = *v11;
          v36 = v11[1];
          if (*v11 == v36)
          {
            goto LABEL_64;
          }

          if (v35 <= v33)
          {
            v35 = v32[2];
          }

          if (v34 >= v36)
          {
            v34 = v11[1];
          }

          if (v35 >= v34)
          {
LABEL_64:
            v35 = 0;
            v34 = 0;
          }

          v37 = v34 - v35 + v31;
          if (v37 > v28)
          {
            break;
          }

          memcpy(a1[23] + v31, (v32[5] + v35 - v33), v34 - v35);
          ++v14;
          v31 = v37;
          if (v14 >= v15)
          {
            goto LABEL_67;
          }
        }

        v40 = 328;
LABEL_73:
        v41 = 0;
        v42 = "invalid state";
LABEL_74:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v40, 143, v41, v42, v4, v5, v161);
LABEL_75:
        v43 = 1;
        goto LABEL_117;
      }

LABEL_67:
      v38 = *v11;
      v39 = v11[1];
      if (*(a1 + 6) >= 3u)
      {
        fprintf(*MEMORY[0x29EDCA610], ">>> range %10llx %10llx\n", *v11, v39);
        v38 = *v11;
        v39 = v11[1];
      }

      if ((AAAsyncByteStreamProcess(*a1, a1[23], v39 - v38, v38) & 0x80000000) != 0)
      {
        v41 = *__error();
        v40 = 336;
        v42 = "process range";
        goto LABEL_74;
      }

      v9 = 0;
      *v11 = 0;
      v11[1] = 0;
      v6 = a1[20];
      ++v8;
      v7 = 1;
      if (v8 >= v6)
      {
        goto LABEL_257;
      }
    }

    v16 = *v11;
    v17 = *v11 / v10;
    while (v17 < a1[14])
    {
      v18 = a1[15][v17];
      if (v18 == -1)
      {
        break;
      }

      v19 = &a1[13][6 * v18];
      if (!*v19 || v17 != *(v19 + 8))
      {
        v40 = 291;
        goto LABEL_73;
      }

      if (*v19 != 3)
      {
        break;
      }

      if (v16 == v12)
      {
        goto LABEL_22;
      }

      v20 = v17 * v10;
      v21 = (v17 * v10 + v10);
      if (v16 > v17 * v10)
      {
        v20 = v16;
      }

      if (v21 >= v12)
      {
        v21 = v11[1];
      }

      if (v20 >= v21)
      {
LABEL_22:
        v20 = 0;
        v21 = 0;
      }

      v22 = 0;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 != v23)
      {
        v16 = v11[1];
      }

      v25 = 0;
      if (v12 != v13 && v24 != v23)
      {
        if (v13 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = *v11;
        }

        if (v23 >= v12)
        {
          v22 = v11[1];
        }

        else
        {
          v22 = v23;
        }

        if (v25 >= v22)
        {
          v22 = 0;
          v25 = 0;
        }

        else if (v21 == v20)
        {
          break;
        }

        v16 = *v11;
      }

      v26 = v21 != v20 && v22 == v25;
      v27 = v26;
      if (v22 != v21 || v25 != v20 || v27)
      {
        break;
      }

      if (++v17 >= v15)
      {
        goto LABEL_51;
      }
    }

    if (++v8 < v6)
    {
      goto LABEL_9;
    }

    if ((v9 & 1) == 0)
    {
LABEL_257:
      stateSortRanges(a1);
      v43 = 0;
    }

    else
    {
LABEL_116:
      v43 = 0;
      v7 = 0;
    }

LABEL_117:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      v152 = "unlock";
      v153 = 347;
LABEL_271:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v153, 143, 0, v152, v4, v5, v161);
LABEL_272:
      v150 = "retiring ranges";
      v151 = 497;
      goto LABEL_277;
    }

    if (v43)
    {
      goto LABEL_272;
    }

    if (!a1[20])
    {
      v74 = 0;
      goto LABEL_253;
    }

    if (pthread_mutex_lock((a1 + 4)))
    {
      break;
    }

    v66 = a1[14];
    v67 = a1[12];
    v68 = a1[20];
    if (v68)
    {
      v69 = a1[1];
      v70 = a1[21] + 1;
      do
      {
        v71 = (v69 - 1 + *v70) / v69;
        if (v71 > v66)
        {
          v66 = (v69 - 1 + *v70) / v69;
        }

        if (v71 - *(v70 - 1) / v69 > v67)
        {
          v67 = v71 - *(v70 - 1) / v69;
        }

        v70 += 2;
        v68 = (v68 - 1);
      }

      while (v68);
    }

    if ((lockedStateReserveActiveChunks(a1, v67) & 0x80000000) != 0)
    {
      goto LABEL_248;
    }

    if (a1[14] >= v66)
    {
      goto LABEL_139;
    }

    if (*(a1 + 6) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "    %zu chunks\n", v66);
    }

    if (8 * v66 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_247;
    }

    v75 = a1[15];
    v76 = realloc(v75, 8 * v66);
    if (!v76)
    {
      free(v75);
LABEL_247:
      a1[15] = 0;
      v141 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveChunks", 172, 143, *v141, "malloc", v142, v143, v161);
      a1[14] = 0;
LABEL_248:
      v112 = 375;
      v113 = "reserving chunks";
      goto LABEL_249;
    }

    a1[15] = v76;
    v77 = a1[14];
    if (v77 < v66)
    {
      memset(&v76[v77], 255, 8 * v66 - 8 * v77);
    }

    a1[14] = v66;
LABEL_139:
    v78 = a1[12];
    if (v78)
    {
      v79 = (v78 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v80 = vdupq_n_s64(v78 - 1);
      v81 = a1[13] + 10;
      v82 = xmmword_296AD1760;
      do
      {
        v83 = vmovn_s64(vcgeq_u64(v80, v82));
        if (v83.i8[0])
        {
          *(v81 - 6) = 0;
        }

        if (v83.i8[4])
        {
          *v81 = 0;
        }

        v82 = vaddq_s64(v82, vdupq_n_s64(2uLL));
        v81 += 12;
        v79 -= 2;
      }

      while (v79);
    }

    v84 = a1[20];
    if (v84)
    {
      v85 = 0;
      v86 = a1[21];
      v87 = a1[1];
      while (1)
      {
        v88 = &v86[2 * v85];
        v89 = *v88;
        v90 = v88[1];
        v91 = v89 / v87;
        v92 = (v87 - 1 + v90) / v87;
        if (v89 / v87 < v92)
        {
          break;
        }

LABEL_186:
        if (++v85 == v84)
        {
          goto LABEL_187;
        }
      }

      v93 = a1[15];
      v94 = v90;
      while (2)
      {
        v95 = v93[v91];
        if (v95 != -1)
        {
          v96 = &a1[13][6 * v95];
          if (!*v96 || v91 != *(v96 + 8))
          {
            v112 = 389;
            v113 = "invalid state";
LABEL_249:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v112, 143, 0, v113, v72, v73, v161);
            v74 = 0;
            goto LABEL_250;
          }

          if (v89 == v94)
          {
            goto LABEL_159;
          }

          v97 = v91 * v87;
          v98 = (v91 * v87 + v87);
          if (v89 > v91 * v87)
          {
            v97 = v89;
          }

          if (v98 >= v94)
          {
            v98 = v94;
          }

          if (v97 >= v98)
          {
LABEL_159:
            v97 = 0;
            v98 = 0;
          }

          v99 = 0;
          v100 = *(v96 + 16);
          v73 = *(v96 + 24);
          if (v100 != v73)
          {
            v94 = v89;
          }

          v72 = 0;
          if (v89 != v90 && v100 != v73)
          {
            if (v89 <= v100)
            {
              v72 = *(v96 + 16);
            }

            else
            {
              v72 = v89;
            }

            if (v73 >= v90)
            {
              v99 = v90;
            }

            else
            {
              v99 = *(v96 + 24);
            }

            if (v72 >= v99)
            {
              v99 = 0;
              v72 = 0;
            }

            else
            {
              v94 = v90;
              if (v98 == v97)
              {
                goto LABEL_185;
              }
            }

            v94 = v90;
          }

          v73 = v98 != v97 && v99 == v72;
          if (v98 == v99 && v72 == v97 && (v73 & 1) == 0)
          {
            ++*(v96 + 32);
          }
        }

LABEL_185:
        if (++v91 >= v92)
        {
          goto LABEL_186;
        }

        continue;
      }
    }

LABEL_187:
    if (!v78)
    {
      v74 = 0;
LABEL_204:
      v114 = a1[20];
      if (v114)
      {
        for (i = 0; i < v114; ++i)
        {
          v116 = &a1[21][2 * i];
          v117 = a1[1];
          v118 = *v116 / v117;
          v119 = (v117 + v116[1] - 1) / v117;
          if (!i && v118 < v119)
          {
            v120 = a1[15];
            v121 = v118;
            do
            {
              v122 = v120[v121];
              if (v122 != -1)
              {
                a1[13][6 * v122 + 4] = 1;
              }

              ++v121;
            }

            while (v121 < v119);
          }

          if (v118 < v119)
          {
            while (1)
            {
              v123 = a1[15];
              if (v123[v118] == -1)
              {
                v124 = a1[12];
                if (v124)
                {
                  v125 = 0;
                  v126 = a1[13];
                  while (1)
                  {
                    v127 = *v126;
                    v126 += 12;
                    if (!v127)
                    {
                      break;
                    }

                    v125 = (v125 + 1);
                    if (v124 == v125)
                    {
                      goto LABEL_221;
                    }
                  }
                }

                else
                {
                  v125 = 0;
                }

                if (v125 == v124)
                {
LABEL_221:
                  if (i)
                  {
                    goto LABEL_245;
                  }

                  v125 = 0;
                  if (v124)
                  {
                    v128 = a1[13] + 4;
                    while (1)
                    {
                      v129 = *v128;
                      v128 += 6;
                      if (!v129)
                      {
                        break;
                      }

                      v125 = (v125 + 1);
                      if (v124 == v125)
                      {
                        goto LABEL_244;
                      }
                    }
                  }

                  if (v125 == v124)
                  {
LABEL_244:
                    v139 = 451;
                    v140 = "no available chunk";
                    goto LABEL_259;
                  }

                  v130 = &a1[13][6 * v125];
                  v131 = *(v130 + 8);
                  v123[v131] = -1;
                  *v130 = 0;
                  *(v130 + 16) = 0;
                  *(v130 + 24) = 0;
                  *(v130 + 8) = -1;
                  fprintf(*MEMORY[0x29EDCA610], "BYE chunk %8zu evicted\n", v131);
                  v123 = a1[15];
                }

                v132 = &a1[13][6 * v125];
                *(v132 + 8) = v118;
                v123[v118] = v125;
                *v132 = 1;
                v133 = a1[1];
                v134 = (v133 * *(v132 + 8));
                *(v132 + 16) = v134;
                v135 = (v133 + v134);
                *(v132 + 24) = v133 + v134;
                *(v132 + 32) = i == 0;
                if (!v133)
                {
                  goto LABEL_236;
                }

                v137 = a1[17];
                v136 = a1[18];
                if (v137 == v136)
                {
                  goto LABEL_236;
                }

                if (v137 > v134)
                {
                  v134 = a1[17];
                }

                if (v135 >= v136)
                {
                  v135 = a1[18];
                }

                *(v132 + 16) = v134;
                *(v132 + 24) = v135;
                if (v134 >= v135)
                {
LABEL_236:
                  *(v132 + 16) = 0;
                  *(v132 + 24) = 0;
                }

                if (*(a1 + 6) >= 3u)
                {
                  fprintf(*MEMORY[0x29EDCA610], "SET range %10llx %10llx -- %8zu\n", *v116, v116[1], v118);
                }

                v74 = 1;
              }

              if (++v118 >= v119)
              {
                v114 = a1[20];
                break;
              }
            }
          }

          v138 = 0;
        }
      }

      else
      {
LABEL_245:
        v138 = 0;
      }

      goto LABEL_251;
    }

    v102 = 0;
    v74 = 0;
    v103 = 0;
    while (2)
    {
      v104 = a1[13];
      if (v104[v102 + 4] || !LODWORD(v104[v102]))
      {
LABEL_193:
        ++v103;
        v102 += 6;
        if (v103 >= v78)
        {
          if (v78)
          {
            v107 = (v78 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v108 = vdupq_n_s64(v78 - 1);
            v109 = a1[13] + 10;
            v110 = xmmword_296AD1760;
            do
            {
              v111 = vmovn_s64(vcgeq_u64(v108, v110));
              if (v111.i8[0])
              {
                *(v109 - 6) = 0;
              }

              if (v111.i8[4])
              {
                *v109 = 0;
              }

              v110 = vaddq_s64(v110, v162);
              v109 += 12;
              v107 -= 2;
            }

            while (v107);
          }

          goto LABEL_204;
        }

        continue;
      }

      break;
    }

    v105 = &v104[v102];
    v106 = v104[v102 + 1];
    if (v106 < a1[14])
    {
      a1[15][v106] = -1;
      *v105 = 0;
      v105[2] = 0;
      v105[3] = 0;
      v105[1] = -1;
      v78 = a1[12];
      v74 = 1;
      goto LABEL_193;
    }

    v139 = 410;
    v140 = "invalid chunk index";
LABEL_259:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v139, 143, 0, v140, v72, v73, v161);
LABEL_250:
    v138 = 1;
LABEL_251:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      v154 = "unlock";
      v155 = 478;
      goto LABEL_275;
    }

    if (v138)
    {
      goto LABEL_276;
    }

LABEL_253:
    if (!(v7 | v3 | v74))
    {
      usleep(0x9C40u);
    }

    if (atomic_load(a1 + 51))
    {
      return a1;
    }
  }

  v154 = "lock";
  v155 = 359;
LABEL_275:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v155, 143, 0, v154, v4, v5, v161);
LABEL_276:
  v150 = "updating chunks";
  v151 = 501;
LABEL_277:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", v151, 143, 0, v150, v4, v5, v161);
  v156 = 0;
  atomic_compare_exchange_strong(a1 + 50, &v156, 1u);
  if (!v156)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return a1;
}

uint64_t rangeCmp(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == *a1 && v5 != v4)
  {
    return 1;
  }

  if (v3 >= v5)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = -1;
  }

  if (v4 >= v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v5 != v4 || v3 == v2) && v2 >= v4)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void stateSortRanges(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    qsort(*(a1 + 168), v1, 0x10uLL, rangeCmp);
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = (*(a1 + 168) + 16 * v3 - 8);
      do
      {
        if (*(v5 - 1) != *v5)
        {
          break;
        }

        v5 -= 2;
        *(a1 + 160) = v4--;
      }

      while (v4 != -1);
    }
  }
}

unint64_t AAAsyncByteStreamProcessAllRanges(void *a1, void *a2, int a3, size_t __count)
{
  if (!__count)
  {
    LODWORD(__count) = getDefaultNThreads();
  }

  v47 = 0;
  v46 = 0;
  v6 = __count;
  v7 = calloc(__count, 8uLL);
  v8 = v7;
  if (!v7)
  {
    v30 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 79, 116, *v30, "malloc", v31, v32, v44);
    v15 = 0;
    goto LABEL_24;
  }

  if (v6)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v11 = malloc(0x48uLL);
      v12 = v11;
      if (!v11)
      {
        v33 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 83, 116, *v33, "malloc", v34, v35, v44);
        v15 = 0;
        goto LABEL_25;
      }

      memset_s(v11, 0x48uLL, 0, 0x48uLL);
      *v12 = a2;
      v12[1] = a1;
      v12[2] = &v47;
      v12[3] = &v46;
      *v10++ = v12;
      --v9;
    }

    while (v9);
  }

  v15 = ThreadPoolCreate(v6, v8, workerProc_2);
  if (!v15)
  {
    v42 = "ThreadPoolCreate";
    v43 = 93;
    goto LABEL_23;
  }

  if (atomic_load(&v47))
  {
LABEL_10:
    LODWORD(v12) = 1;
    goto LABEL_25;
  }

  while (1)
  {
    v44 = 0;
    v45 = 0;
    Range = AAAsyncByteStreamGetRange(a1, &v45, &v44);
    if (Range < 0)
    {
      v42 = "AAAsyncByteStreamGetRange";
      v43 = 101;
      goto LABEL_23;
    }

    if (!Range)
    {
      usleep(0x4E20u);
      goto LABEL_17;
    }

    if (!v45)
    {
      goto LABEL_10;
    }

    Worker = ThreadPoolGetWorker(v15, v25, v26, v27, v28, v29, v13, v14);
    if (!Worker)
    {
      break;
    }

    v22 = v44;
    *(Worker + 32) = v45;
    *(Worker + 40) = v22;
    if ((ThreadPoolRunWorker(v15, Worker, v18, v19, v20, v21, v13, v14) & 0x80000000) != 0)
    {
      v42 = "ThreadPoolRunWorker";
      v43 = 110;
      goto LABEL_23;
    }

LABEL_17:
    v23 = atomic_load(&v47);
    LODWORD(v12) = 1;
    if (v23)
    {
      goto LABEL_25;
    }
  }

  v42 = "ThreadPoolGetWorker";
  v43 = 107;
LABEL_23:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", v43, 116, 0, v42, v13, v14, v44);
LABEL_24:
  LODWORD(v12) = 0;
LABEL_25:
  if ((ThreadPoolDestroy(v15) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 115, 116, 0, "Threads reported errors", v36, v37, v44);
    LODWORD(v12) = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v38 = v8;
      do
      {
        v39 = *v38;
        if (*v38)
        {
          free(v39[8]);
          free(v39);
        }

        ++v38;
        --v6;
      }

      while (v6);
    }

    free(v8);
  }

  if (atomic_load(&v47))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 127, 116, 0, "Threads reported errors", v36, v37, v44);
    return -1;
  }

  if (v12)
  {
    return atomic_load(&v46);
  }

  else
  {
    return -1;
  }
}

uint64_t workerProc_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) < v2)
  {
    *(a1 + 48) = v2;
    if (v2 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_16:
      *(a1 + 64) = 0;
      v12 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 36, 116, *v12, "malloc", v13, v14, v16);
      *(a1 + 48) = 0;
      goto LABEL_17;
    }

    v3 = *(a1 + 64);
    v4 = realloc(v3, v2);
    if (!v4)
    {
      free(v3);
      goto LABEL_16;
    }

    *(a1 + 64) = v4;
    v2 = *(a1 + 32);
  }

  *(a1 + 56) = 0;
  v5 = 0;
  if (v2)
  {
    while (1)
    {
      v6 = AAByteStreamPRead(*a1, (*(a1 + 64) + v5), v2 - v5, *(a1 + 40) + v5);
      if (v6 < 0)
      {
        break;
      }

      v5 = *(a1 + 56);
      if (v6)
      {
        v5 += v6;
        *(a1 + 56) = v5;
        v2 = *(a1 + 32);
        if (v5 < v2)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v10 = "istream read";
    v11 = 43;
  }

  else
  {
LABEL_10:
    if ((AAAsyncByteStreamProcess(*(a1 + 8), *(a1 + 64), v5, *(a1 + 40)) & 0x80000000) == 0)
    {
      result = 0;
      atomic_fetch_add_explicit(*(a1 + 24), *(a1 + 56), memory_order_relaxed);
      return result;
    }

    v10 = "stream process";
    v11 = 50;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", v11, 116, 0, v10, v7, v8, v16);
LABEL_17:
  v15 = 0;
  *(a1 + 56) = 0;
  atomic_compare_exchange_strong(*(a1 + 16), &v15, 1u);
  return 0xFFFFFFFFLL;
}

void *reallocToFit(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

double getRealTime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t getDefaultNThreads()
{
  v5 = 0;
  v4 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname", v1, v2, v4);
  return 1;
}

uint64_t sha1ToString(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = serializeHexString_digit[v4 >> 4];
    *v3 = serializeHexString_digit[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t serializeHexString(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = serializeHexString_digit[v4 >> 4];
      *(result + (v3 + 1)) = serializeHexString_digit[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sha1cmp(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

const char *makePath(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

uint64_t normalizePath(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 - 1;
  do
  {
LABEL_2:
    for (i = v2; ; i += 2)
    {
      while (1)
      {
        v2 = i + 1;
        v5 = *(a1 + i);
        if (v5 != 47)
        {
          break;
        }

        ++i;
        if (v1)
        {
          i = v2;
          if (*(v3 + v1) != 47)
          {
            LOBYTE(v5) = 47;
LABEL_28:
            *(a1 + v1++) = v5;
            goto LABEL_2;
          }
        }
      }

      if (!*(a1 + i))
      {
        goto LABEL_29;
      }

      if (v1)
      {
        v6 = *(v3 + v1) == 47;
      }

      else
      {
        v6 = 1;
      }

      if (v5 != 46 || !v6)
      {
        goto LABEL_28;
      }

      v8 = *(a1 + v2);
      if (v8 != 47)
      {
        break;
      }
    }

    if (!*(a1 + v2))
    {
      break;
    }

    if (v8 != 46 || *(a1 + 2 + i) != 47 && *(a1 + 2 + i))
    {
      LOBYTE(v5) = 46;
      goto LABEL_28;
    }

    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a1 - 2 + v1);
    v10 = v1 - 1;
    do
    {
      v1 = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9--;
      --v10;
    }

    while (v11 != 47);
    v2 = i + 3;
  }

  while (*(a1 + 2 + i));
LABEL_29:
  while (v1)
  {
    if (*(v3 + v1) != 47)
    {
      break;
    }

    --v1;
  }

  v12 = 0;
  *(a1 + v1) = 0;
  return v12;
}

uint64_t concatPath(char *a1, unint64_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t concatExtractPath(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s", v10, v11, __s);
    return 0xFFFFFFFFLL;
  }

  v12 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s", v10, v11, __s);
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  memset(&v30, 0, sizeof(v30));
  while (1)
  {
    v14 = &a4[v13];
    v15 = strchr(&a4[v13], 47);
    v18 = v15 - a4;
    if (v15)
    {
      v19 = v15 - a4;
    }

    else
    {
      v19 = v12;
    }

    v20 = v19 - v13;
    if (v19 == v13)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s", v16, v17, a4);
      return 0xFFFFFFFFLL;
    }

    v21 = v15;
    if (v20 != 2)
    {
      if (v20 == 1 && *v14 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v14 == 46 && v14[1] == 46)
    {
      break;
    }

LABEL_15:
    v22 = lstat(a1, &v30);
    if (v13)
    {
      if (v22)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v30) || (v30.st_mode & 0xF000) != 0x4000))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s", v25, v26, a4);
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v30.st_mode & 0xF000) != 0x4000)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s", v23, v24, a4);
        return 0xFFFFFFFFLL;
      }
    }

    else if (v22 || (v27 = v30.st_mode & 0xF000, v27 != 0x4000) && v27 != 40960)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s", v23, v24, __s);
      return 0xFFFFFFFFLL;
    }

    v28 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v28 = 47;
    }

    memcpy(&a1[v8], &a4[v13], v20);
    v8 += v20;
    a1[v8] = 0;
LABEL_29:
    if (v21)
    {
      v13 = v18 + 1;
      if (v18 + 1 < v12)
      {
        continue;
      }
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s", v16, v17, a4);
  return 0xFFFFFFFFLL;
}

BOOL pathIsValid(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t getTempDir(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t isDirEmpty(const char *a1)
{
  v1 = a1;
  v18 = *MEMORY[0x29EDCA608];
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    memset(&v17, 0, 512);
    v16 = 0;
    while (1)
    {
      if (readdir_r(v3, &v17, &v16))
      {
        v10 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v10, "readdir_r", v11, v12, v15);
        v4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      if (!v16)
      {
        break;
      }

      if (v17.d_namlen == 1 && v17.d_name[0] == 46)
      {
        v4 = 1;
      }

      else
      {
        v6 = v17.d_namlen == 2 && v17.d_name[0] == 46 && v17.d_name[1] == 46;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
LABEL_24:
    closedir(v3);
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", v8, v9, v1);
    v4 = 0xFFFFFFFFLL;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t storeFileContents(const char *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v14, "%s", v15, v16, v5);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v17 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v17, "%s", v18, v19, v5);
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s", v11, v12, v5);
LABEL_14:
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }

    close(v7);
  }

  return v13;
}

uint64_t copyFileSegment(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v10 = MemBufferCreate(0x100000uLL);
  if (v10)
  {
    v13 = IFileStreamCreateWithFilename(a1, a2, a3);
    if (v13)
    {
      v16 = OFileStreamCreateWithFilename(a4, a3);
      if (v16)
      {
        if ((MemBufferTransmit(v10, a3, IFileStreamRead, v13, OFileStreamWrite, v16, v14, v15) & 0x8000000000000000) == 0)
        {
          v19 = 0;
          goto LABEL_11;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s", v17, v18, a1);
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s", v14, v15, a4);
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", v11, v12, a1);
      v16 = 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation", v8, v9, v21);
    v16 = 0;
    v13 = 0;
  }

  v19 = 1;
LABEL_11:
  IFileStreamDestroy(v13);
  OFileStreamDestroy(v16);
  MemBufferDestroy(v10);
  if (v19)
  {
    unlink(a4);
  }

  return (v19 << 31 >> 31);
}

uint64_t updateFileAttributes(const char *a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v25.tv_sec = *(a2 + 32);
  v25.tv_usec = 0;
  v26 = *(a2 + 48);
  v27 = 0;
  memset(&v24, 0, sizeof(v24));
  if (stat(a1, &v24))
  {
    if (*__error() == 1)
    {
      v4 = 0;
      goto LABEL_25;
    }

    v7 = 604;
LABEL_24:
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v19, "%s", v20, v21, a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v5 = *(a2 + 16);
  if (v24.st_uid == v5)
  {
    v6 = *(a2 + 20);
    if (v24.st_gid == v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 20);
  }

  if (chown(a1, v5, v6) && *__error() != 1)
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", v9, v10, a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
LABEL_13:
  v11 = *(a2 + 4);
  if (v24.st_mode != v11 && chmod(a1, v11 & 0xFFF) && *__error() != 1)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v12, "%s", v13, v14, a1);
    v4 = 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v24.st_flags >> 5) & 1));
  if (v24.st_flags != v15 && chflags(a1, v15) && *__error() != 1)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v16, "%s", v17, v18, a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v25) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

LABEL_25:
  v22 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t copyFileWithAttributes(const char *a1, const char *a2, int a3, uint64_t a4, int a5)
{
  memset(&v54, 0, sizeof(v54));
  v9 = open(a1, 0);
  if (v9 < 0)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v16, "%s", v17, v18, a1);
LABEL_19:
    v24 = 0;
LABEL_20:
    v28 = 0;
LABEL_21:
    v32 = 0;
LABEL_22:
    IFileStreamDestroy(v24);
    OArchiveFileStreamDestroy(v28, v44, v45, v46, v47, v48, v49, v50);
    MemBufferDestroy(v32);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v54))
  {
    v13 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v13, "%s", v14, v15, a1);
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v54.st_mode & 0xF000) != 0x8000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s", v11, v12, a1);
    goto LABEL_18;
  }

  FileProtectionClassFD = getFileProtectionClassFD(v10);
  close(v10);
  st_size = v54.st_size;
  st_flags = v54.st_flags;
  v24 = IFileStreamCreateWithFilename(a1, 0, v54.st_size);
  if (!v24)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", v22, v23, a1);
    goto LABEL_20;
  }

  if ((st_flags & 0x40000020) == 0x20)
  {
    v25 = a5 | 4;
  }

  else
  {
    v25 = a5;
  }

  v28 = OArchiveFileStreamCreate(a2, st_size, v25 | 8u, FileProtectionClassFD, a3);
  if (!v28)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", v26, v27, a1);
    goto LABEL_21;
  }

  v29 = MemBufferCreate(0x100000uLL);
  v32 = v29;
  if (!v29)
  {
    v51 = "alloc";
    v52 = 670;
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", v52, 3, 0, v51, v30, v31, v53);
    goto LABEL_22;
  }

  v33 = MemBufferTransmit(v29, st_size, IFileStreamRead, v24, OArchiveFileStreamWrite, v28, v30, v31);
  if (v33 < 0 || v33 != st_size)
  {
    v53 = v33;
    v51 = "copy failed %lld";
    v52 = 674;
    goto LABEL_27;
  }

  IFileStreamDestroy(v24);
  OArchiveFileStreamDestroy(v28, v34, v35, v36, v37, v38, v39, v40);
  MemBufferDestroy(v32);
  if (!updateFileAttributes(a2, &v54))
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes", v41, v42, v53);
  return 0xFFFFFFFFLL;
}

uint64_t getFileProtectionClassFD(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v5[1] = 0;
  v5[2] = 0;
  memset(v6, 0, sizeof(v6));
  v5[0] = 0x4000000000000005;
  v1 = fgetattrlist(a1, v5, v6, 0x40uLL, 1u);
  if (LODWORD(v6[0]) == 8 && v1 == 0)
  {
    result = DWORD1(v6[0]);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t statIsCompressed(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t setFileAPFSInternalFlags(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t areFilesEqual(const char *a1, const char *a2)
{
  memset(&v39, 0, sizeof(v39));
  memset(&v38, 0, sizeof(v38));
  if (stat(a1, &v39))
  {
    v4 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s", v5, v6, a1);
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v38))
  {
    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v7, "%s", v8, v9, a2);
    goto LABEL_5;
  }

  if ((v39.st_mode & 0xF000) != 0x8000 || (v38.st_mode & 0xF000) != 0x8000 || v39.st_size != v38.st_size)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v14 = open(a1, 0);
  if (v14 < 0)
  {
    v22 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v22, "%s", v23, v24, a1);
    goto LABEL_5;
  }

  v15 = v14;
  v16 = open(a2, 0);
  if (v16 < 0)
  {
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v25, "%s", v26, v27, a2);
    close(v15);
    goto LABEL_5;
  }

  v17 = v16;
  v11 = malloc(0x40000uLL);
  v18 = malloc(0x40000uLL);
  v10 = v18;
  if (v11 && v18)
  {
    while (1)
    {
      v19 = read(v15, v11, 0x40000uLL);
      if (v19 < 0)
      {
        v31 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v31, "%s read", v32, v33, a1);
        goto LABEL_24;
      }

      v20 = v19;
      v21 = read(v17, v10, 0x40000uLL);
      if (v21 < 0)
      {
        v34 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v34, "%s read", v35, v36, a2);
        goto LABEL_24;
      }

      if (v20 != v21)
      {
        goto LABEL_19;
      }

      if (!v20)
      {
        break;
      }

      if (memcmp(v11, v10, v20))
      {
LABEL_19:
        v12 = 0;
        goto LABEL_25;
      }
    }

    v12 = 1;
  }

  else
  {
    v28 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v28, "malloc", v29, v30, v37);
LABEL_24:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v15);
  close(v17);
LABEL_6:
  free(v11);
  free(v10);
  return v12;
}

uint64_t areFilesEqual2()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v9 = *MEMORY[0x29EDCA608];
  if (concatPath(v8, 0x800uLL, v0, v4) || concatPath(v7, 0x800uLL, v3, v2))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = areFilesEqual(v8, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t getFilesystemBlockSize(const char *a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  memset(&v7, 0, 512);
  if (statfs(a1, &v7) < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", v2, v3, v4, v1);
    result = 4096;
  }

  else
  {
    result = v7.f_bsize;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t getFileDiskUsage(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a1, &v12))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", v2, v3, v4, a1);
    return -1;
  }

  else
  {
    if (v12.st_blocks << 9 >= v12.st_size)
    {
      st_size = v12.st_size;
    }

    else
    {
      st_size = v12.st_blocks << 9;
    }

    if (v12.st_blocks << 9)
    {
      v5 = st_size;
    }

    else
    {
      v5 = v12.st_size;
    }

    if ((v12.st_mode & 0xF000) == 0x8000)
    {
      v10 = 0;
      v11 = 0;
      v7 = ParallelCompressionAFSCGetMetadata(a1, &v11, &v10 + 1, &v10);
      if (HIDWORD(v10) != -1 && v7 == 0)
      {
        return v10;
      }
    }
  }

  return v5;
}

uint64_t getFileProtectionClass(const char *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v5[1] = 0;
  v5[2] = 0;
  memset(v6, 0, sizeof(v6));
  v5[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v5, v6, 0x40uLL, 1u);
  if (LODWORD(v6[0]) == 8 && v1 == 0)
  {
    result = DWORD1(v6[0]);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t getBufferSHA1Digest(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t getFileSegmentSHA1Digest(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", v13, v14, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    FileSegmentSHA1DigestFD = getFileSegmentSHA1DigestFD(v8, a2, a3, a4);
    close(v9);
    return FileSegmentSHA1DigestFD;
  }
}

uint64_t getFileSegmentSHA1DigestFD(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v24 = 1;
  if (fcntl(a1, 48))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n", v8, v9, v10, 1);
  }

  memset(&c, 0, sizeof(c));
  v11 = valloc(0x100000uLL);
  if (!v11)
  {
    v18 = *__error();
    v21 = "malloc";
    v22 = 1049;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", v22, 3, v18, v21, v19, v20, v24);
LABEL_16:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      if (a3 >= 0x100000)
      {
        v12 = 0x100000;
      }

      else
      {
        v12 = a3;
      }

      v13 = pread(a1, v11, v12, a2);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v18 = *__error();
        v21 = "read";
        v22 = 1059;
        goto LABEL_15;
      }

      v16 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }

      if (v13 > v12)
      {
        break;
      }

      CC_SHA1_Update(&c, v11, v13);
      a2 += v16;
      a3 -= v16;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)", v14, v15, v13);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v17 = 0;
LABEL_17:
  free(v11);
  return v17;
}

uint64_t enumerateTree(void *a1, char *__s)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = strlen(__s);
  if (v3 - 1024 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    v5 = v3;
    bzero(v8, 0x400uLL);
    __memcpy_chk();
    do
    {
      v6 = v5;
      if (!v5)
      {
        break;
      }

      --v5;
    }

    while (v8[v6 - 1] == 47);
    v8[v6] = 0;
    result = enumerateTree_rec(a1, v8, v6);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t removeFile(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t enumerateTree_rec(void *a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v33, 0, 512);
    v32 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v33, &v32))
      {
        v19 = a3 + 1;
        v20 = &a2[a3];
        do
        {
          if (!v32)
          {
            v12 = 1;
            goto LABEL_10;
          }

          d_namlen = v33.d_namlen;
          if ((v33.d_namlen != 1 || v33.d_name[0] != 46) && (v33.d_namlen != 2 || v33.d_name[0] != 46 || v33.d_name[1] != 46))
          {
            v22 = v19 + v33.d_namlen;
            if (v22 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v20 = 47;
            memcpy(v20 + 1, v33.d_name, d_namlen);
            a2[v22] = 0;
            memset(&v31, 0, sizeof(v31));
            v23 = lstat(a2, &v31);
            if (v23)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s", v24, v25, v26, v23);
            }

            else if ((v31.st_flags & 0x40000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s", v24, v25, v26, a2);
            }

            else
            {
              d_type = v33.d_type;
              if (!v33.d_type)
              {
                if ((v31.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v33.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v28 = a1[3];
              if (v28)
              {
                v29 = v28(*a1, a2) >> 31;
                d_type = v33.d_type;
              }

              else
              {
                LOBYTE(v29) = 0;
              }

              if (d_type == 4 && (enumerateTree_rec(a1, a2, v22) & 0x80000000) != 0)
              {
                v12 = 0;
                *v20 = 0;
                goto LABEL_10;
              }

              *v20 = 0;
              if (v29)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v33, &v32));
      }

      v9 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r", v10, v11, v30);
    }

LABEL_9:
    v12 = 0;
LABEL_10:
    closedir(v7);
    v13 = a1[2];
    if (v13 && v13(*a1, a2) < 0)
    {
      v12 = 0;
    }

    if (v12)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v15, "%s", v16, v17, a2);
    result = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t removeTree(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = removeEntryProc;
  v2[2] = removeLeaveDirProc;
  return enumerateTree(v2, __s);
}

uint64_t removeEntryProc(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (lstat(a2, &v8))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", v5, v6, a2);
    return 0xFFFFFFFFLL;
  }

  if ((v8.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t removeLeaveDirProc(int a1, char *a2)
{
  v2 = a2;
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", v5, v6, v2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t getVolumeCapabilities(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  bzero(&v12, 0x878uLL);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (statfs(a1, &v12) < 0)
  {
    result = -1;
  }

  else
  {
    LOWORD(v9) = 5;
    LODWORD(v10) = -2147352576;
    v2 = getattrlist(v12.f_mntonname, &v9, v7, 0x24uLL, 1u);
    result = -1;
    if (!v2 && LODWORD(v7[0]) == 36)
    {
      v4.i64[0] = *(v7 + 4);
      v4.i64[1] = *(v7 + 4);
      v5 = vandq_s8(vshlq_u32(v4, xmmword_296AD1ED0), xmmword_296AD1EE0);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      result = (v5.i32[0] | v5.i32[1]);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaAssetExtractStreamSetParameterPtr(uint64_t *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] == closeProc_1)
  {
    v9 = a3;
    v10 = *a1;
    memset(&v16, 0, sizeof(v16));
    switch(a2)
    {
      case 'e':
        result = 0;
        *(v10 + 1040) = a3;
        return result;
      case 'j':
        if (!realpath_DARWIN_EXTSN(a3, (v10 + 3516)) || stat((v10 + 3516), &v16) < 0 || (v16.st_mode & 0xF000) != 0x4000)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 820, 133, 0, "invalid output dir: %s", v13, v14, v9);
          return 0xFFFFFFFFLL;
        }

        break;
      case 'i':
        if (a3)
        {
          if (!realpath_DARWIN_EXTSN(a3, (v10 + 2492)) || stat((v10 + 2492), &v16) < 0 || (v16.st_mode & 0xF000) != 0x4000)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 816, 133, 0, "invalid input dir: %s", v11, v12, v9);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          memset_s((v10 + 2492), 0x400uLL, 0, 0x400uLL);
        }

        break;
      default:
        return 0xFFFFFFFFLL;
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 808, 133, 0, "invalid stream", a7, a8, v15);
  return 0xFFFFFFFFLL;
}

uint64_t closeProc_1(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    AAHeaderDestroy(*(result + 4768));
    free(*(v1 + 4800));
    memset_s((v1 + 4784), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4824));
    memset_s((v1 + 4808), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4848));
    memset_s((v1 + 4832), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4888));
    memset_s((v1 + 4872), 0x18uLL, 0, 0x18uLL);
    AAByteStreamClose(*(v1 + 4864));
    AAByteStreamClose(*(v1 + 4856));
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

uint64_t aaAssetExtractStreamSetParameterCallback(uint64_t (**a1)(uint64_t result), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v9 = "NULL stream";
    v10 = 834;
    goto LABEL_5;
  }

  if (a1[1] != closeProc_1)
  {
    v9 = "invalid stream";
    v10 = 835;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterCallback", v10, 133, 0, v9, a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 104)
  {
    result = 0;
    *(*a1 + 131) = a3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t *aaAssetExtractStreamOpen(const char *a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  v4 = malloc(0x1320uLL);
  v5 = v4;
  if (!v4)
  {
    v10 = 855;
LABEL_9:
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "openProc", v10, 133, *v11, "malloc", v12, v13, v20);
    closeProc_1(v5);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 885, 133, 0, "create extract stream", v14, v15, v21);
    closeProc_1(0);
    return 0;
  }

  memset_s(v4, 0x1320uLL, 0, 0x1320uLL);
  v6 = malloc(0x38uLL);
  if (!v6)
  {
    v10 = 859;
    goto LABEL_9;
  }

  v7 = v6;
  memset_s(v6, 0x38uLL, 0, 0x38uLL);
  *v7 = v5;
  v7[1] = closeProc_1;
  v7[6] = closeWithStateProc_1;
  v7[4] = writeHeaderProc;
  v7[5] = writeBlobProc;
  v7[2] = cancelProc_1;
  *v5 = a2;
  *(v5 + 4752) = 0x100000;
  if (!realpath_DARWIN_EXTSN(a1, (v5 + 12)))
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 893, 133, v16, a1, v17, v18, v20);
    goto LABEL_12;
  }

  if (stat((v5 + 12), &v22) || (v22.st_mode & 0xF000) != 0x4000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 894, 133, 0, "Not a directory: %s", v8, v9, a1);
LABEL_12:
    if (*v7)
    {
      (v7[1])();
    }

    free(v7);
    return 0;
  }

  __strlcpy_chk();
  return v7;
}

uint64_t *aaAssetExtractStreamOpenWithState(const char *a1, AAByteStream_impl *a2, void *a3)
{
  v121 = *MEMORY[0x29EDCA608];
  data_size = 0;
  v118 = 0;
  data = 0;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  __s = 0;
  v109 = 0;
  __ptr = 0;
  StreamOpen = aaAssetExtractStreamOpen(a1, 0);
  v8 = StreamOpen;
  if (!StreamOpen)
  {
    v87 = "create extract stream";
    v88 = 927;
    goto LABEL_222;
  }

  if (!*(a2 + 2))
  {
    goto LABEL_186;
  }

  v9 = *StreamOpen;
  v10 = &v111;
  v11 = 84;
  do
  {
    v12 = (*(a2 + 2))(*a2, v10, v11);
    if (v12 < 0)
    {
      break;
    }

    v10 = (v10 + v12);
    v11 -= v12;
  }

  while (v12 && v11 != 0);
  if (v12 < 0 || (v14 = v112, v112 > 0x3FF) || DWORD1(v112) > 0x3FF || DWORD2(v112) > 0xC7 || HIDWORD(v112) >= 0x10000)
  {
LABEL_186:
    v87 = "invalid state";
    v88 = 935;
    goto LABEL_222;
  }

  v15 = *(&v111 + 1);
  *v9 = v111;
  *(v9 + 4752) = v15;
  v16 = *(&v113 + 1);
  *(v9 + 4776) = v113;
  *(v9 + 4740) = BYTE2(v116);
  *(v9 + 4744) = HIBYTE(v116);
  *(v9 + 4760) = v16;
  if (!*(a2 + 2))
  {
    goto LABEL_221;
  }

  if (v14)
  {
    v17 = v9 + 2492;
    do
    {
      v18 = (*(a2 + 2))(*a2, v17, v14);
      if (v18 < 0)
      {
        goto LABEL_221;
      }

      v17 += v18;
      v14 -= v18;
      if (v18)
      {
        v19 = v14 == 0;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
    if (!*(a2 + 2))
    {
      goto LABEL_221;
    }
  }

  v107 = (v9 + 3516);
  v20 = DWORD1(v112);
  if (DWORD1(v112))
  {
    v21 = v9 + 3516;
    do
    {
      v22 = (*(a2 + 2))(*a2, v21, v20);
      if (v22 < 0)
      {
        goto LABEL_221;
      }

      v21 += v22;
      v20 -= v22;
      if (v22)
      {
        v23 = v20 == 0;
      }

      else
      {
        v23 = 1;
      }
    }

    while (!v23);
    if (!*(a2 + 2))
    {
      goto LABEL_221;
    }
  }

  v24 = DWORD2(v112);
  if (DWORD2(v112))
  {
    v25 = v9 + 4540;
    do
    {
      v26 = (*(a2 + 2))(*a2, v25, v24);
      if (v26 < 0)
      {
        goto LABEL_221;
      }

      v25 += v26;
      v24 -= v26;
      if (v26)
      {
        v27 = v24 == 0;
      }

      else
      {
        v27 = 1;
      }
    }

    while (!v27);
  }

  v28 = HIDWORD(v112);
  if (HIDWORD(v112))
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      if (v31 != v30)
      {
        goto LABEL_54;
      }

      v32 = v30 + 0x40000;
      if ((v30 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v30 <= 0xFFFFFFFFFFFBFFFFLL)
      {
        do
        {
          while (!v30)
          {
            v30 = 0x4000;
            v34 = 0x4000;
            if (v32 <= 0x4000)
            {
              goto LABEL_56;
            }
          }

          v33 = v30 >> 1;
          if ((v30 & (v30 >> 1)) != 0)
          {
            v33 = v30 & (v30 >> 1);
          }

          v30 += v33;
        }

        while (v30 < v32);
        v34 = v30;
        if (v30 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_219;
        }

LABEL_56:
        v35 = realloc(v29, v34);
        if (!v35)
        {
          free(v29);
LABEL_219:
          p_data_size = &data_size;
LABEL_220:
          *p_data_size = 0;
          p_data_size[1] = 0;
          p_data_size[2] = 0;
LABEL_221:
          v87 = "write state";
          v88 = 953;
          goto LABEL_222;
        }

        v118 = v34;
        data = v35;
        v29 = v35;
      }

      else
      {
LABEL_54:
        v34 = v30;
      }

      if (v34 - v31 >= v28)
      {
        v36 = v28;
      }

      else
      {
        v36 = v34 - v31;
      }

      v37 = AAByteStreamRead(a2, &v29[v31], v36);
      if (v37 < 0)
      {
        goto LABEL_221;
      }

      if (!v37)
      {
        break;
      }

      v31 = data_size + v37;
      if (__CFADD__(data_size, v37))
      {
        goto LABEL_221;
      }

      v30 = v118;
      if (v31 > v118)
      {
        goto LABEL_221;
      }

      data_size += v37;
      v28 -= v37;
    }

    while (v28);
  }

  v38 = *(&v114 + 1);
  if (*(&v114 + 1))
  {
    p_data_size = (v9 + 4784);
    v40 = *(v9 + 4784);
    v41 = *(v9 + 4792);
    while (1)
    {
      if (v40 != v41)
      {
        goto LABEL_79;
      }

      v42 = v41 + 0x40000;
      if ((v41 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v41 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v41)
        {
          v41 = 0x4000;
          v44 = 0x4000;
          if (v42 <= 0x4000)
          {
            goto LABEL_81;
          }
        }

        v43 = v41 >> 1;
        if ((v41 & (v41 >> 1)) != 0)
        {
          v43 = v41 & (v41 >> 1);
        }

        v41 += v43;
      }

      while (v41 < v42);
      v44 = v41;
      if (v41 >= 0x2000000001)
      {
LABEL_217:
        *__error() = 12;
        goto LABEL_220;
      }

LABEL_81:
      v45 = *(v9 + 4800);
      v46 = realloc(v45, v44);
      if (!v46)
      {
LABEL_214:
        free(v45);
        goto LABEL_220;
      }

      *(v9 + 4800) = v46;
      *(v9 + 4792) = v44;
      v40 = *(v9 + 4784);
LABEL_83:
      if (v44 - v40 >= v38)
      {
        v47 = v38;
      }

      else
      {
        v47 = v44 - v40;
      }

      v48 = AAByteStreamRead(a2, (*(v9 + 4800) + v40), v47);
      if (v48 < 0)
      {
        goto LABEL_221;
      }

      if (!v48)
      {
        goto LABEL_91;
      }

      v40 = *p_data_size + v48;
      if (__CFADD__(*p_data_size, v48))
      {
        goto LABEL_221;
      }

      v41 = *(v9 + 4792);
      if (v40 > v41)
      {
        goto LABEL_221;
      }

      *p_data_size = v40;
      v38 -= v48;
      if (!v38)
      {
        goto LABEL_91;
      }
    }

    v40 = v41;
LABEL_79:
    v44 = v41;
    goto LABEL_83;
  }

LABEL_91:
  v49 = v115;
  if (v115)
  {
    p_data_size = (v9 + 4808);
    v50 = *(v9 + 4808);
    v51 = *(v9 + 4816);
    while (1)
    {
      if (v50 != v51)
      {
        goto LABEL_104;
      }

      v52 = v51 + 0x40000;
      if ((v51 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v51 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v51)
        {
          v51 = 0x4000;
          v54 = 0x4000;
          if (v52 <= 0x4000)
          {
            goto LABEL_106;
          }
        }

        v53 = v51 >> 1;
        if ((v51 & (v51 >> 1)) != 0)
        {
          v53 = v51 & (v51 >> 1);
        }

        v51 += v53;
      }

      while (v51 < v52);
      v54 = v51;
      if (v51 >= 0x2000000001)
      {
        goto LABEL_217;
      }

LABEL_106:
      v45 = *(v9 + 4824);
      v55 = realloc(v45, v54);
      if (!v55)
      {
        goto LABEL_214;
      }

      *(v9 + 4824) = v55;
      *(v9 + 4816) = v54;
      v50 = *(v9 + 4808);
LABEL_108:
      if (v54 - v50 >= v49)
      {
        v56 = v49;
      }

      else
      {
        v56 = v54 - v50;
      }

      v57 = AAByteStreamRead(a2, (*(v9 + 4824) + v50), v56);
      if (v57 < 0)
      {
        goto LABEL_221;
      }

      if (!v57)
      {
        goto LABEL_116;
      }

      v50 = *p_data_size + v57;
      if (__CFADD__(*p_data_size, v57))
      {
        goto LABEL_221;
      }

      v51 = *(v9 + 4816);
      if (v50 > v51)
      {
        goto LABEL_221;
      }

      *p_data_size = v50;
      v49 -= v57;
      if (!v49)
      {
        goto LABEL_116;
      }
    }

    v50 = v51;
LABEL_104:
    v54 = v51;
    goto LABEL_108;
  }

LABEL_116:
  v58 = *(&v115 + 1);
  if (*(&v115 + 1))
  {
    p_data_size = (v9 + 4832);
    v59 = *(v9 + 4832);
    v60 = *(v9 + 4840);
    while (1)
    {
      if (v59 != v60)
      {
        goto LABEL_129;
      }

      v61 = v60 + 0x40000;
      if ((v60 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v60 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v60)
        {
          v60 = 0x4000;
          v63 = 0x4000;
          if (v61 <= 0x4000)
          {
            goto LABEL_131;
          }
        }

        v62 = v60 >> 1;
        if ((v60 & (v60 >> 1)) != 0)
        {
          v62 = v60 & (v60 >> 1);
        }

        v60 += v62;
      }

      while (v60 < v61);
      v63 = v60;
      if (v60 >= 0x2000000001)
      {
        goto LABEL_217;
      }

LABEL_131:
      v45 = *(v9 + 4848);
      v64 = realloc(v45, v63);
      if (!v64)
      {
        goto LABEL_214;
      }

      *(v9 + 4848) = v64;
      *(v9 + 4840) = v63;
      v59 = *(v9 + 4832);
LABEL_133:
      if (v63 - v59 >= v58)
      {
        v65 = v58;
      }

      else
      {
        v65 = v63 - v59;
      }

      v66 = AAByteStreamRead(a2, (*(v9 + 4848) + v59), v65);
      if (v66 < 0)
      {
        goto LABEL_221;
      }

      if (!v66)
      {
        goto LABEL_141;
      }

      v59 = *p_data_size + v66;
      if (__CFADD__(*p_data_size, v66))
      {
        goto LABEL_221;
      }

      v60 = *(v9 + 4840);
      if (v59 > v60)
      {
        goto LABEL_221;
      }

      *p_data_size = v59;
      v58 -= v66;
      if (!v58)
      {
        goto LABEL_141;
      }
    }

    v59 = v60;
LABEL_129:
    v63 = v60;
    goto LABEL_133;
  }

LABEL_141:
  *(v9 + 2492 + v112) = 0;
  v107[DWORD1(v112)] = 0;
  *(v9 + 4540 + DWORD2(v112)) = 0;
  if (HIDWORD(v112))
  {
    v67 = AAHeaderCreateWithEncodedData(data_size, data);
    *(v9 + 4768) = v67;
    if (!v67)
    {
      v87 = "invalid header in state";
      v88 = 959;
      goto LABEL_222;
    }
  }

  if (BYTE1(v116))
  {
    v68 = AATempFileStreamOpenWithDirectory((v9 + 12));
    *(v9 + 4864) = v68;
    if (!v68)
    {
      v87 = "create temp file";
      v88 = 965;
      goto LABEL_222;
    }

    v69 = v114;
    if (v114)
    {
      v70 = 0;
      while (2)
      {
        __s = 0;
        v71 = v69 - v70;
        if (v71)
        {
          v72 = 0;
          v73 = 0;
          if (v71 >= 0x40000)
          {
            v74 = 0x40000;
          }

          else
          {
            v74 = v71;
          }

          v75 = v109;
          while (1)
          {
            if (v72 == v75)
            {
              v76 = v75 + 0x40000;
              if ((v75 + 0x40000) < 0)
              {
                goto LABEL_251;
              }

              if (v75 <= 0xFFFFFFFFFFFBFFFFLL)
              {
                do
                {
                  while (!v75)
                  {
                    v75 = 0x4000;
                    v78 = 0x4000;
                    if (v76 <= 0x4000)
                    {
                      goto LABEL_163;
                    }
                  }

                  v77 = v75 >> 1;
                  if ((v75 & (v75 >> 1)) != 0)
                  {
                    v77 = v75 & (v75 >> 1);
                  }

                  v75 += v77;
                }

                while (v75 < v76);
                v78 = v75;
                if (v75 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_250;
                }

LABEL_163:
                v79 = realloc(__ptr, v78);
                if (v79)
                {
                  v109 = v78;
                  __ptr = v79;
                  v75 = v78;
                  goto LABEL_165;
                }

                free(__ptr);
LABEL_250:
                __s = 0;
                v109 = 0;
                __ptr = 0;
LABEL_251:
                v87 = "reading state";
                v88 = 973;
                goto LABEL_222;
              }
            }

LABEL_165:
            if (v75 - v72 >= v74)
            {
              v80 = v74;
            }

            else
            {
              v80 = v75 - v72;
            }

            v81 = AAByteStreamRead(a2, __ptr + v72, v80);
            if (v81 < 0)
            {
              goto LABEL_251;
            }

            if (!v81)
            {
              break;
            }

            v82 = __CFADD__(v72, v81);
            v72 += v81;
            if (v82 || v72 > v75)
            {
              goto LABEL_251;
            }

            __s = v72;
            v73 += v81;
            v74 -= v81;
            if (!v74)
            {
              goto LABEL_175;
            }
          }

          if (!v73)
          {
            goto LABEL_235;
          }

LABEL_175:
          v83 = *(v9 + 4864);
          if (*(v83 + 24))
          {
            v84 = 0;
            if (v72)
            {
              v85 = __ptr;
              while (1)
              {
                v86 = (*(v83 + 24))(*v83, v85, v72);
                if (v86 < 1)
                {
                  break;
                }

                v85 += v86;
                v84 += v86;
                v72 -= v86;
                if (!v72)
                {
                  goto LABEL_183;
                }
              }

              v84 = v86;
            }
          }

          else
          {
            v84 = -1;
          }

LABEL_183:
          if (v84 != v73)
          {
            v87 = "write DAT file";
            v88 = 976;
            goto LABEL_222;
          }

          v70 += v73;
          v69 = v114;
          if (v70 < v114)
          {
            continue;
          }
        }

        else
        {
LABEL_235:
          v69 = v114;
        }

        break;
      }

      if (v70 != v69)
      {
        v87 = "truncated state";
        v88 = 979;
        goto LABEL_222;
      }
    }
  }

  else
  {
    v89 = v114;
    if (v114)
    {
      v90 = (v9 + 4872);
      v91 = *(v9 + 4872);
      v92 = *(v9 + 4880);
      do
      {
        if (v91 == v92)
        {
          v93 = v92 + 0x40000;
          if ((v92 + 0x40000) < 0)
          {
            goto LABEL_256;
          }

          if (v92 <= 0xFFFFFFFFFFFBFFFFLL)
          {
            do
            {
              while (!v92)
              {
                v92 = 0x4000;
                v95 = 0x4000;
                if (v93 <= 0x4000)
                {
                  goto LABEL_203;
                }
              }

              v94 = v92 >> 1;
              if ((v92 & (v92 >> 1)) != 0)
              {
                v94 = v92 & (v92 >> 1);
              }

              v92 += v94;
            }

            while (v92 < v93);
            v95 = v92;
            if (v92 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_255;
            }

LABEL_203:
            v96 = *(v9 + 4888);
            v97 = realloc(v96, v95);
            if (v97)
            {
              *(v9 + 4888) = v97;
              *(v9 + 4880) = v95;
              v91 = *(v9 + 4872);
              goto LABEL_205;
            }

            free(v96);
LABEL_255:
            *v90 = 0;
            *(v9 + 4880) = 0;
            *(v9 + 4888) = 0;
LABEL_256:
            v87 = "truncated state";
            v88 = 983;
LABEL_222:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", v88, 133, 0, v87, v6, v7, v106);
LABEL_223:
            v100 = 0;
            goto LABEL_224;
          }

          v91 = v92;
        }

        v95 = v92;
LABEL_205:
        if (v95 - v91 >= v89)
        {
          v98 = v89;
        }

        else
        {
          v98 = v95 - v91;
        }

        v99 = AAByteStreamRead(a2, (*(v9 + 4888) + v91), v98);
        if (v99 < 0)
        {
          goto LABEL_256;
        }

        if (!v99)
        {
          break;
        }

        v91 = *v90 + v99;
        if (__CFADD__(*v90, v99))
        {
          goto LABEL_256;
        }

        v92 = *(v9 + 4880);
        if (v91 > v92)
        {
          goto LABEL_256;
        }

        *v90 = v91;
        v89 -= v99;
      }

      while (v89);
    }
  }

  if ((updateFromHeader(v9) & 0x80000000) != 0)
  {
    v87 = "deriving fields from header";
    v88 = 987;
    goto LABEL_222;
  }

  if (v116)
  {
    if (!*(v9 + 1056))
    {
      v87 = "missing PAT";
      v88 = 995;
      goto LABEL_222;
    }

    if ((concatExtractPath(v120, 0x400uLL, v107, (v9 + 1064)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 996, 133, 0, "invalid PAT: %s", v103, v104, v9 + 40);
      goto LABEL_223;
    }

    v105 = aaArchiveFileOutputStreamOpenAtWithState(-1, v120, a2, a3);
    *(v9 + 4856) = v105;
    if (!v105)
    {
      v87 = "aaArchiveFileOutputStreamOpenAtWithState";
      v88 = 1000;
      goto LABEL_222;
    }
  }

  if (a3)
  {
    *a3 = -1;
  }

  v100 = 1;
LABEL_224:
  free(data);
  memset_s(&data_size, 0x18uLL, 0, 0x18uLL);
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  if (v100)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if (v8 && (v100 & 1) == 0)
  {
    if (*v8)
    {
      (v8[1])();
    }

    free(v8);
    result = 0;
  }

  v102 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t updateFromHeader(_BYTE *a1)
{
  size = 0;
  length = 0;
  v45 = 0;
  offset = 0;
  *(a1 + 132) = 0;
  *(a1 + 261) = 0;
  *(a1 + 263) = 0;
  *(a1 + 262) = 0;
  memset_s(a1 + 2112, 0x48uLL, 0, 0x48uLL);
  memset_s(a1 + 2184, 0x38uLL, 0, 0x38uLL);
  memset_s(a1 + 2240, 0xACuLL, 0, 0xACuLL);
  memset_s(a1 + 2416, 0x38uLL, 0, 0x38uLL);
  v2 = *(a1 + 596);
  if (!v2)
  {
    return 0;
  }

  v3.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(*(a1 + 596), v3);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v2, KeyIndex, a1 + 261), FieldUInt <= 1) ? (v8 = 1) : (v8 = FieldUInt), v8 <= 0))
  {
    v41 = "missing TYP";
    v42 = 141;
LABEL_46:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "updateFromHeader", v42, 133, 0, v41, v5, v6, v45);
    return 0xFFFFFFFFLL;
  }

  if ((aaEntryAttributesInitWithHeader(a1 + 2112, a1 + 2184, a1 + 2240, *(a1 + 596)) & 0x80000000) != 0)
  {
    v41 = "attributes from header";
    v42 = 142;
    goto LABEL_46;
  }

  v9 = *(a1 + 596);
  v10.ikey = 5521744;
  v11 = AAHeaderGetKeyIndex(v9, v10);
  if ((v11 & 0x80000000) == 0)
  {
    FieldString = AAHeaderGetFieldString(v9, v11, 0x400uLL, a1 + 1064, &length);
    v13 = FieldString <= 1 ? 1 : FieldString;
    if (v13 >= 1)
    {
      *(a1 + 264) = 1;
    }
  }

  v14 = *(a1 + 596);
  v15.ikey = 4408665;
  v16 = AAHeaderGetKeyIndex(v14, v15);
  if ((v16 & 0x80000000) == 0)
  {
    FieldBlob = AAHeaderGetFieldBlob(v14, v16, &size, &offset);
    v18 = FieldBlob <= 1 ? 1 : FieldBlob;
    if (v18 >= 1)
    {
      a1[2416] |= 1u;
      *(a1 + 304) = size;
    }
  }

  v19 = *(a1 + 596);
  v20.ikey = 5521752;
  v21 = AAHeaderGetKeyIndex(v19, v20);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = AAHeaderGetFieldBlob(v19, v21, &size, &offset);
    v23 = v22 <= 1 ? 1 : v22;
    if (v23 >= 1)
    {
      a1[2416] |= 2u;
      *(a1 + 306) = size;
    }
  }

  v24 = *(a1 + 596);
  v25.ikey = 4997953;
  v26 = AAHeaderGetKeyIndex(v24, v25);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = AAHeaderGetFieldBlob(v24, v26, &size, &offset);
    v28 = v27 <= 1 ? 1 : v27;
    if (v28 >= 1)
    {
      a1[2416] |= 4u;
      *(a1 + 308) = size;
    }
  }

  v29 = *(a1 + 596);
  v30.ikey = 5521732;
  v31 = AAHeaderGetKeyIndex(v29, v30);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = AAHeaderGetFieldBlob(v29, v31, &size, &offset);
    v33 = v32 <= 1 ? 1 : v32;
    if (v33 >= 1)
    {
      *(a1 + 265) = 1;
      *(a1 + 263) = size;
    }
  }

  v34 = *(a1 + 595);
  *(a1 + 262) = v34;
  if (!v34)
  {
    v35 = *(a1 + 596);
    v36.ikey = 5263193;
    v37 = AAHeaderGetKeyIndex(v35, v36);
    if ((v37 & 0x80000000) != 0 || ((v38 = AAHeaderGetFieldUInt(v35, v37, &v45), v38 <= 1) ? (v39 = 1) : (v39 = v38), v39 < 1))
    {
      v40 = *(a1 + 262);
    }

    else
    {
      v40 = v45;
      *(a1 + 262) = v45;
    }

    if (!v40 && *(a1 + 261) != 77)
    {
      *(a1 + 262) = 69;
    }
  }

  *(a1 + 310) = 40;
  *(a1 + 618) = -1;
  *(a1 + 622) = -1;
  if ((a1[2112] & 4) != 0)
  {
    v44 = a1[2184];
    if ((a1[2124] & 0x20) != 0)
    {
      *(a1 + 310) = 44;
      *(a1 + 622) = 0;
      if (v44)
      {
        *(a1 + 622) = *(a1 + 548);
      }
    }
  }

  else
  {
    v44 = a1[2184];
  }

  if ((v44 & 8) != 0)
  {
    result = 0;
    *(a1 + 618) = *(a1 + 547);
    return result;
  }

  return 0;
}