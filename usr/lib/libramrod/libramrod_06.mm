uint64_t sub_67D18(unsigned int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a2;
  if (*(a1 + 2))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n", a6, a7, a8, v27);
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

      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed", v16, v17, v18, v27);
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v20, "Final FULLSYNC", v21, v22, 0);
      }
    }

    v19 = *a1;
    if (!v10)
    {
      if (close(*a1))
      {
        v23 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v23, "close", v24, v25, v27);
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

uint64_t sub_67EFC(uint64_t a1, char *__buf, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d", a7, a8, v16);
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v42, "write", v43, v44, v45);
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
                    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed", a6, a7, a8, v45);
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

uint64_t sub_68204(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void *sub_68214(uint64_t a1, uint64_t a2)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

uint64_t sub_6828C(uint64_t a1, const void *a2, size_t a3)
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

void *sub_682F8(uint64_t a1, uint64_t a2)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

size_t sub_68370(uint64_t a1, void *__dst, size_t a3)
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

uint64_t sub_683E4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

char *sub_683F4(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = sub_75AC4(a4);
    *v9 = v10;
    if (v10)
    {
      *(v9 + 1) = a1;
      *(v9 + 2) = a2;
      *(v9 + 3) = a3;
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer", v11, v12, v24);
      sub_684D0(v9, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }
  }

  else
  {
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v13, "malloc", v14, v15, v24);
  }

  return v9;
}

void sub_684D0(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_76184(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], a5, a6, a7, a8);
    sub_75BD4(*a1);

    free(a1);
  }
}

uint64_t sub_68528(unint64_t **a1, char *a2, unint64_t a3)
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
      v8 = sub_75C74(*a1);
      if (!v8)
      {
        if (sub_76184(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], v9, v10, v11, v12) < 0)
        {
          return -1;
        }

        v8 = sub_75C74(*a1);
      }

      v13 = v6 >= v8 ? v8 : v6;
      if (sub_75DFC(*a1, v13, a2) < 0)
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed", v14, v15, v16);
  }

  return -1;
}

uint64_t sub_68608(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 1;
  }

  return result;
}

_OWORD *sub_68618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 64);
  v9 = v8;
  if (v8)
  {
    *v8 = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = a1;
    *(v8 + 1) = a2;
    *(v8 + 2) = a3;
    *(v8 + 4) = a4;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  else
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamCreate", 1270, 29, *v10, "malloc", v11, v12, v14);
  }

  return v9;
}

uint64_t sub_686B4(uint64_t a1, char *__dst, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 24))
  {
    return -1;
  }

  v10 = a4;
  v12 = a4 + a3;
  v13 = __dst;
  if (a4 + a3 <= a4)
  {
    return v13 - __dst;
  }

  v14 = a1 + 64;
  v13 = __dst;
  while (1)
  {
    v15 = *(a1 + 56);
    if (v10 < v15)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1301, 29, 0, "history stream access out of range, requested %llu, available %llu", a7, a8, v10);
      return -1;
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v17 + v15;
    if (v10 >= v17 + v15)
    {
      break;
    }

    if (v18 >= v12)
    {
      v18 = v12;
    }

    v19 = v10 - v15 + v16;
    v20 = *(a1 + 32);
    if (v19 >= v20)
    {
      v21 = *(a1 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = v19 - v21;
    v23 = v18 + v16 - (v15 + v21);
    if (v23 <= v20)
    {
      v26 = v23 - v22;
      memcpy(v13, (v14 + v22), v23 - v22);
      v13 += v26;
    }

    else
    {
      v24 = v20 - v22;
      memcpy(v13, (v14 + v22), v20 - v22);
      v25 = &v13[v24];
      v26 = v24 + v10;
      v10 = v23 - *(a1 + 32);
      memcpy(v25, (a1 + 64), v10);
      v13 = &v25[v10];
    }

    v10 += v26;
LABEL_32:
    if (v10 >= v12)
    {
      return v13 - __dst;
    }
  }

  v27 = v16 + v17;
  v28 = *(a1 + 32);
  if (v27 >= v28)
  {
    v29 = *(a1 + 32);
  }

  else
  {
    v29 = 0;
  }

  v30 = v27 - v29;
  v31 = v28 - (v27 - v29);
  if (v12 - v18 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v12 - v18;
  }

  v33 = (*a1)(*(a1 + 16), v14 + v30, v32);
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (!v33)
    {
      return v13 - __dst;
    }

    v34 = *(a1 + 48) + v33;
    *(a1 + 48) = v34;
    v35 = *(a1 + 32);
    v36 = v34 > v35;
    v37 = v34 - v35;
    if (v36)
    {
      if (v30 + v33 >= v35)
      {
        v38 = *(a1 + 32);
      }

      else
      {
        v38 = 0;
      }

      v39 = *(a1 + 56);
      *(a1 + 48) = v35;
      *(a1 + 56) = v37 + v39;
      *(a1 + 40) = v30 + v33 - v38;
    }

    goto LABEL_32;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1347, 29, 0, "read failed", a7, a8, v40);
  return -1;
}

uint64_t sub_688AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      result = v2(*(result + 16));
    }

    *(v1 + 24) = 1;
  }

  return result;
}

_DWORD *ParallelCompressionAFSCStreamOpen(int a1, unint64_t a2, int a3, int a4)
{
  v10 = calloc(1uLL, 0x78uLL);
  if (!v10)
  {
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v13, "malloc", v14, v15, v33);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v12, 86, v16, v11, v8, v9, v33);
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
    v17 = dword_10B29C[v18];
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
  *(v10 + 3) = xmmword_10B250;
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
    while (v14 + 65537 <= *(a1 + 48) || (sub_68E60(a1) & 0x80000000) == 0)
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

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", v9, 86, 0, v8, a7, a8, v28);
  return -1;
}

uint64_t sub_68E60(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork", v4, v5, v8);
  }

  v6 = *(a1 + 108) + *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 108) = v6;
  *(a1 + 112) = 1;
  return (v2 >> 31);
}

uint64_t ParallelCompressionAFSCStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  memset(&v42, 0, sizeof(v42));
  if (*(a1 + 96) >= *(a1 + 8) && !*(a1 + 72))
  {
    v14 = *(a1 + 112);
    v15 = *(a1 + 20);
    if (v15)
    {
      v15 = (*(a1 + 28) >> 1) & 1;
    }

    if (*(a1 + 32) > 1u)
    {
      v15 = 1;
    }

    if ((*(a1 + 56) - 3569) < 0xFFFFFFFFFFFFF1FFLL)
    {
      v15 = 1;
    }

    if (v15 | v14)
    {
      if ((sub_68E60(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 341;
        goto LABEL_5;
      }

      v14 = *(a1 + 112);
    }

    v16 = (__PAIR64__(*(a1 + 16), v14) - 1) >> 32;
    v17 = *(a1 + 8);
    v18 = *(a1 + 80);
    *v18 = 1668116582;
    *(v18 + 4) = v16;
    *(v18 + 8) = v17;
    v19 = 16;
    *(a1 + 72) = 16;
    if (!*(a1 + 112))
    {
      memcpy((*(a1 + 80) + 16), *(a1 + 64), *(a1 + 56));
      v19 = *(a1 + 72) + *(a1 + 56);
      *(a1 + 72) = v19;
      *(a1 + 56) = 0;
    }

    if (fsetxattr(*a1, "com.apple.decmpfs", *(a1 + 80), v19, 0, 0) < 0)
    {
      v11 = *__error();
      v9 = "fsetxattr decmpfs";
      v10 = 363;
      goto LABEL_6;
    }

    if (!*(a1 + 112))
    {
      v21 = 0;
      goto LABEL_36;
    }

    if (*(a1 + 16) == 4)
    {
      v20 = *(a1 + 64);
      *v20 = xmmword_10B268;
      *(v20 + 16) = unk_10B278;
      *(v20 + 32) = xmmword_10B288;
      *(v20 + 48) = 0;
      *(a1 + 56) = 50;
      if ((sub_68E60(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 373;
        goto LABEL_5;
      }

      v21 = *(a1 + 108);
      if (*(a1 + 16) == 4)
      {
        v22 = *(a1 + 32);
        if ((8 * v22) + 264 > *(a1 + 48))
        {
          LOBYTE(v41) = 8 * v22 + 8;
          v9 = "File a radar to increase obuf_capacity, sz=%zu";
          v10 = 382;
          goto LABEL_5;
        }

        v43 = 0u;
        v44 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v57 = 0u;
        v32 = *(a1 + 64);
        *v32 = 0x10000;
        *(v32 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v21), 0xFFFFFECEFFFFFFCELL));
        *(v32 + 12) = 838860800;
        v33 = v44;
        *(v32 + 16) = v43;
        *(v32 + 32) = v33;
        v34 = v48;
        *(v32 + 80) = v47;
        *(v32 + 96) = v34;
        v35 = v46;
        *(v32 + 48) = v45;
        *(v32 + 64) = v35;
        v36 = v52;
        *(v32 + 144) = v51;
        *(v32 + 160) = v36;
        v37 = v50;
        *(v32 + 112) = v49;
        *(v32 + 128) = v37;
        v38 = v56;
        *(v32 + 208) = v55;
        *(v32 + 224) = v38;
        v39 = v54;
        *(v32 + 176) = v53;
        *(v32 + 192) = v39;
        *(v32 + 240) = v57;
        *(v32 + 256) = bswap32(v21 - 310);
        *(v32 + 260) = v22;
        v23 = 264;
        *(a1 + 56) = 264;
        if (*(a1 + 32))
        {
          v40 = 0;
          v23 = 264;
          do
          {
            *(*(a1 + 64) + v23) = (*(*(a1 + 40) + 4 * v40) - 260) | ((*(*(a1 + 40) + 4 * v40 + 4) - *(*(a1 + 40) + 4 * v40)) << 32);
            ++v40;
            v23 = *(a1 + 56) + 8;
            *(a1 + 56) = v23;
          }

          while (v40 < *(a1 + 32));
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = *(a1 + 108);
    }

    v23 = (4 * *(a1 + 32) + 4);
    if (*(a1 + 48) < v23)
    {
      v41 = 4 * *(a1 + 32) + 4;
      v9 = "File a radar to increase obuf_capacity, sz=%zu";
      v10 = 408;
      goto LABEL_5;
    }

    memcpy(*(a1 + 64), *(a1 + 40), (4 * *(a1 + 32) + 4));
    *(a1 + 56) = v23;
LABEL_35:
    if (fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v23, 0, 0) < 0)
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

    if ((*(a1 + 28) & 4) != 0 || !*(a1 + 112) || 93 * *(a1 + 8) / 0x64uLL >= v21)
    {
      if (fstat(*a1, &v42))
      {
        v11 = *__error();
        v9 = "fstat";
        v10 = 465;
        goto LABEL_6;
      }

      if (fchflags(*a1, v42.st_flags | 0x20) < 0)
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
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = (*(a1 + 40) + 4 * v24);
          v27 = v26[1];
          v28 = v27 - *v26;
          if (v27 == *v26 || v28 >= 0x10002)
          {
            v9 = "Invalid chunk size";
            v10 = 437;
            goto LABEL_5;
          }

          if (fgetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v27 - *v26, *v26, 32) != v28)
          {
            v9 = "reading chunk";
            v10 = 440;
            goto LABEL_5;
          }

          v30 = *(a1 + 64);
          if (*v30 == *(a1 + 24))
          {
            v31 = (v28 - 1);
            memcpy(*(a1 + 80), v30 + 1, v31);
          }

          else
          {
            v31 = compression_decode_buffer(*(a1 + 80), 0x10000uLL, v30, v28, *(a1 + 88), *(a1 + 20));
          }

          if (v31 != 0x10000)
          {
            if (!v31)
            {
              v9 = "Decompression";
              v10 = 451;
              goto LABEL_5;
            }

            if (v31 + v25 != *(a1 + 8))
            {
              break;
            }
          }

          if (pwrite(*a1, *(a1 + 80), v31, v25) != v31)
          {
            v9 = "writing chunk";
            v10 = 454;
            goto LABEL_5;
          }

          ++v24;
          v25 += v31;
          if (v24 >= *(a1 + 32))
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
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v10, 86, v11, v9, a7, a8, v41);
  v12 = 0xFFFFFFFFLL;
LABEL_7:
  free(*(a1 + 40));
  free(*(a1 + 64));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(a1);
  return v12;
}

uint64_t ParallelCompressionAFSCGetMetadataFD(int a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  memset(&v24, 0, sizeof(v24));
  if (fstat(a1, &v24))
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat", v9, v10, v23);
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v17, 86, v18, v16, v14, v15, v23);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v13, "open %s", v14, v15, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", v10, v11, v7);
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
  v178 = -1;
  v177 = 0;
  v176 = 0;
  memset(&v175, 0, sizeof(v175));
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  value[0] = 0;
  value[1] = 0;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s", v6, v7, a1);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s", v15, v16, a1);
    goto LABEL_5;
  }

  v18 = malloc(0x100000uLL);
  if (!v18)
  {
    v23 = *__error();
    v21 = "malloc";
    v22 = 586;
LABEL_137:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v22, 86, v23, v21, v13, v14, v155);
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
      v155 = a3;
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
    v155 = v19;
    v21 = "Invalid compression type request %d";
    v22 = 608;
    goto LABEL_136;
  }

LABEL_16:
  if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) != 0)
  {
LABEL_134:
    v155 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 615;
    goto LABEL_136;
  }

  v24 = 0;
  v165 = 0;
  v25 = 0;
  v164 = (v18 + 66);
  v26 = vadd_s32(vdup_n_s32(a3), 0xFFFFFECEFFFFFFCELL);
  v27 = vrev32_s8(v26);
  position = v26.i32[0];
  v161 = bswap32(a3 - 310);
  v28 = (v19 - 4);
  v168 = 0x551u >> (v19 - 4);
  while (1)
  {
    v171 = v176;
    if (v176 >= 0xFA000001)
    {
      v21 = "Invalid AFSC data";
      v22 = 616;
      goto LABEL_136;
    }

    v170 = v24;
    if (v178 == v19)
    {
      if (!a3 || v177 == a3)
      {
        goto LABEL_155;
      }

      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      v158 = v28;
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
        v138 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v138, "open: %s", v139, v140, a1);
      }

      else
      {
        if (!fstat(v33, &v175))
        {
          v35 = mkstemp(&__from);
          v36 = v35;
          if (v35 < 0)
          {
            v147 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v147, "mkstemp", v148, v149, v155);
            v17 = 0;
            v44 = 0;
          }

          else
          {
            v162 = v25;
            v44 = ParallelCompressionAFSCStreamOpen(v35, v171, v32, v29);
            if (v44)
            {
              v166 = v19;
              v172 = v18;
              v45 = 0;
              v46 = 0;
              v47 = 0x100000;
              v48 = 0x100000;
              v49 = v171;
              while (1)
              {
                v50 = v49 >= v48 ? v48 : v49;
                if (v48 - 0x100000 >= v49)
                {
                  break;
                }

                v51 = v50 + v45;
                v52 = read(v34, v172, v50 + v45);
                if (v52 < 0)
                {
                  v123 = *__error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v123, "read: %s", v124, v125, a1);
                  goto LABEL_153;
                }

                if (v52 < v51)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s", v56, v57, a1);
LABEL_153:
                  v17 = 0;
LABEL_154:
                  v72 = 0;
                  v74 = 0;
                  v18 = v172;
                  goto LABEL_140;
                }

                v46 += 0x100000;
                v58 = ParallelCompressionAFSCStreamWrite(v44, v172, v51, v53, v54, v55, v56, v57);
                v48 += 0x100000;
                v45 -= 0x100000;
                v49 = v171;
                if (v171 >= v46)
                {
                  v59 = v46;
                }

                else
                {
                  v59 = v171;
                }

                v47 -= 0x100000;
                if (v58 < (v59 + v47))
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s", v42, v43, a1);
                  goto LABEL_153;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v44, v37, v38, v39, v40, v41, v42, v43) & 0x80000000) != 0)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error", v89, v90, v155);
                v17 = 0;
                v44 = 0;
                goto LABEL_154;
              }

              fchown(v36, v175.st_uid, v175.st_gid);
              fchmod(v36, v175.st_mode & 0xFFF);
              close(v34);
              close(v36);
              rename(&__from, a1, v91);
              v93 = v92;
              unlink(&__from);
              v18 = v172;
              v19 = v166;
              v28 = v158;
              v25 = v162;
              if ((v93 & 0x80000000) == 0)
              {
                goto LABEL_55;
              }

              v23 = *__error();
              v155 = a1;
              v21 = "rename: %s";
              v22 = 694;
              goto LABEL_137;
            }

            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", v42, v43, a1);
            v17 = 0;
          }

          v72 = 0;
          v74 = 0;
          goto LABEL_140;
        }

        v144 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v144, "stat: %s", v145, v146, a1);
      }

LABEL_150:
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
      v132 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v132, "open %s", v133, v134, a1);
      goto LABEL_150;
    }

    if (write(v60, 0, 0) < 0)
    {
      v118 = *__error();
      v121 = "write";
      v122 = 630;
      goto LABEL_149;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 631;
      goto LABEL_137;
    }

    v178 = -1;
    v177 = 0;
LABEL_55:
    if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) != 0)
    {
      v155 = a1;
      v21 = "obtain AFSC data: %s";
      v22 = 699;
      goto LABEL_136;
    }

    if (v178 != v19)
    {
      v21 = "Couldn't convert to requested compression type";
      v22 = 700;
      goto LABEL_136;
    }

    if (!a3)
    {
      goto LABEL_155;
    }

    v61 = v177;
    v62 = a3 - v177;
    if (a3 == v177)
    {
      goto LABEL_155;
    }

    if (a3 >= v177)
    {
      break;
    }

    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", v12, v13, v14, a1);
LABEL_61:
    if (v170)
    {
      v21 = "Second pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)";
      v155 = a1;
      v22 = 852;
      goto LABEL_136;
    }

    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", v12, v13, v14, a1);
    v63 = open(a1, 9);
    v34 = v63;
    if (v63 < 0)
    {
      v135 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v135, "open %s", v136, v137, a1);
      goto LABEL_150;
    }

    if (write(v63, 0, 0) < 0)
    {
      v118 = *__error();
      v121 = "write";
      v122 = 865;
      goto LABEL_149;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 866;
      goto LABEL_137;
    }

    v178 = -1;
    v177 = 0;
    v64 = ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177);
    v24 = 1;
    if (v64 < 0)
    {
      goto LABEL_134;
    }
  }

  if (v28 > 0xA || (v168 & 1) == 0)
  {
    v155 = v19;
    v21 = "Invalid compression type %u";
    v22 = 722;
    goto LABEL_136;
  }

  v169 = dword_10B2C8[v28];
  v65 = open(a1, 0);
  v34 = v65;
  if (v65 < 0)
  {
    v141 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v141, "open: %s", v142, v143, a1);
    goto LABEL_150;
  }

  if (fstat(v65, &v175))
  {
    v118 = *__error();
    v121 = "fstat";
    v122 = 728;
LABEL_149:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v122, 86, v118, v121, v119, v120, v155);
    goto LABEL_150;
  }

  if (fgetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v118 = *__error();
    v121 = "Reading decmpfs";
    v122 = 729;
    goto LABEL_149;
  }

  if (fchflags(v34, v175.st_flags & 0xFFFFFFDF) < 0)
  {
    v118 = *__error();
    v121 = "fchflags UF_COMPRESSED";
    v122 = 730;
    goto LABEL_149;
  }

  v163 = v25;
  v167 = v19;
  v157 = (v171 + 0xFFFF) >> 16;
  v159 = v28;
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
      v118 = *__error();
      v121 = "Expanding resource fork";
      v122 = 738;
      goto LABEL_149;
    }
  }

  v72 = malloc(4 * v157 + 4);
  size = 4 * v157 + 4;
  v73 = malloc(size);
  v74 = v73;
  if (!v72 || !v73)
  {
    v150 = *__error();
    v153 = "malloc";
    v154 = 744;
    goto LABEL_187;
  }

  if (v167 != 4)
  {
    v83 = 4 * v157 + 4;
    if (fgetxattr(v34, "com.apple.ResourceFork", v72, size, 0, 32) != size)
    {
      v150 = *__error();
      v153 = "Reading chunk sizes";
      v154 = 763;
      goto LABEL_187;
    }

LABEL_99:
    v173 = v18;
    memcpy(v74, v72, v83);
    v74[v157] = v72[v157] + v62;
    v94 = (v171 + 0xFFFF) >> 16;
    while (v62 && v94)
    {
      v95 = v72[v94 - 1];
      v96 = v72[v94] - v95;
      if (fgetxattr(v34, "com.apple.ResourceFork", v173, v96, v95, 32) != v96)
      {
        v126 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v126, "Reading chunk", v127, v128, v155);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v173;
        goto LABEL_140;
      }

      v97 = 0x10000 - v96;
      if (v169 == *v173 || v96 > 0x10000)
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
        bzero(v173 + v96, v99);
      }

      v100 = (v99 + v96);
      v101 = v74[v94] - v100;
      v74[v94 - 1] = v101;
      v62 -= v99;
      --v94;
      if (fsetxattr(v34, "com.apple.ResourceFork", v173, v100, v101, 0))
      {
        v129 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v129, "Writing chunk", v130, v131, v155);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v173;
        goto LABEL_140;
      }
    }

    if (v167 == 4)
    {
      v102 = v192;
      v18 = v173;
      *(v173 + 51) = v191;
      *(v173 + 55) = v102;
      *(v173 + 59) = v193;
      v103 = v188;
      *(v173 + 35) = v187;
      *(v173 + 39) = v103;
      v104 = v190;
      *(v173 + 43) = v189;
      *(v173 + 47) = v104;
      v105 = v184;
      *(v173 + 19) = v183;
      *(v173 + 23) = v105;
      v106 = v186;
      *(v173 + 27) = v185;
      *(v173 + 31) = v106;
      v107 = v180;
      *(v173 + 3) = v179;
      *(v173 + 7) = v107;
      v108 = v182;
      *(v173 + 11) = v181;
      v25 = v163;
      *v173 = v163;
      *(v173 + 1) = v27;
      v109 = v194;
      *(v173 + 15) = v108;
      v173[63] = v109;
      v173[64] = v161;
      v173[65] = v165;
      if (v171)
      {
        if (v157 <= 1)
        {
          v110 = 1;
        }

        else
        {
          v110 = v157;
        }

        v111 = v74 + 1;
        v112 = *v74;
        v113 = v164;
        do
        {
          v114 = *v111++;
          *v113++ = (v112 - 260) | ((v114 - v112) << 32);
          v112 = v114;
          --v110;
        }

        while (v110);
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", v173, 8 * v157 + 264, 0, 0))
      {
        v150 = *__error();
        v153 = "Writing resource fork header";
        v154 = 817;
        goto LABEL_187;
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", &xmmword_10B268, 0x32uLL, position, 0))
      {
        v150 = *__error();
        v153 = "Writing resource map";
        v154 = 820;
        goto LABEL_187;
      }
    }

    else
    {
      v18 = v173;
      v25 = v163;
      if (fsetxattr(v34, "com.apple.ResourceFork", v74, size, 0, 0))
      {
        v150 = *__error();
        v153 = "Writing chunk sizes";
        v154 = 827;
        goto LABEL_187;
      }
    }

    if (fsetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v150 = *__error();
      v153 = "Writing decmpfs";
      v154 = 831;
      goto LABEL_187;
    }

    if (fchflags(v34, v175.st_flags | 0x20) < 0)
    {
      v150 = *__error();
      v153 = "fchflags UF_COMPRESSED";
      v154 = 832;
      goto LABEL_187;
    }

    close(v34);
    free(v72);
    free(v74);
    if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) == 0)
    {
      v19 = v167;
      if (v178 != v167)
      {
        v28 = v159;
        goto LABEL_61;
      }

      v28 = v159;
      if (v177 != a3)
      {
        goto LABEL_61;
      }

LABEL_155:
      if (v170)
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", v12, v13, v14, a1);
      }

      v44 = 0;
      v72 = 0;
      v74 = 0;
      v34 = -1;
      v17 = 1;
      goto LABEL_139;
    }

    v155 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 840;
    goto LABEL_136;
  }

  if (fgetxattr(v34, "com.apple.ResourceFork", v18, 8 * v157 + 264, 0, 32) == 8 * v157 + 264)
  {
    v75 = *v18;
    v76 = *(v18 + 55);
    v191 = *(v18 + 51);
    v192 = v76;
    v193 = *(v18 + 59);
    v194 = v18[63];
    v77 = *(v18 + 39);
    v187 = *(v18 + 35);
    v188 = v77;
    v78 = *(v18 + 47);
    v189 = *(v18 + 43);
    v190 = v78;
    v79 = *(v18 + 23);
    v183 = *(v18 + 19);
    v184 = v79;
    v80 = *(v18 + 31);
    v185 = *(v18 + 27);
    v186 = v80;
    v81 = *(v18 + 7);
    v179 = *(v18 + 3);
    v180 = v81;
    v82 = *(v18 + 15);
    v181 = *(v18 + 11);
    v182 = v82;
    v165 = v18[65];
    v163 = v75;
    if (v171)
    {
      v83 = 4 * v157 + 4;
      if (v157 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v157;
      }

      v85 = v72 + 1;
      v86 = v164;
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
      v83 = 4 * v157 + 4;
    }

    goto LABEL_99;
  }

  v150 = *__error();
  v153 = "Reading chunk sizes";
  v154 = 749;
LABEL_187:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v154, 86, v150, v153, v151, v152, v155);
  v17 = 0;
  v44 = 0;
LABEL_139:
  v36 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v44, v8, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error", v115, v116, v155);
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
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ParallelCompressionAFSCCompress(const char *a1, int a2)
{
  v62 = 0;
  v61 = -1;
  if ((ParallelCompressionAFSCGetMetadata(a1, &v62, &v61, &v60) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s", v4, v5, a1);
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
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v53, "read: %s", v54, v55, a1);
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v42, 86, 0, v41, v26, v27, v59);
LABEL_42:
          v52 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v28, v21, v22, v23, v24, v25, v26, v27) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s", v56, v57, a1);
        }

        else
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s", v26, v27, a1);
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v51, 86, v47, v50, v48, v49, v58);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v44, "open: %s", v45, v46, a1);
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = write(v7, 0, 0);
  if (v9 < 0)
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v10, "write: %s", v11, v12, a1);
  }

  if (close(v8) < 0)
  {
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v13, "close: %s", v14, v15, a1);
  }

  return v9 >> 63;
}

uint64_t sub_6B014(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t sub_6B024(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = dword_10B2F4[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
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

uint64_t sub_6B074(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = dword_10B2F4[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

unsigned int *sub_6B0B8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
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

                        if ((sub_60BD4((v39 - 352), sub_6B570, v39 - 352, a6) & 0x80000000) != 0)
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
                      if ((sub_60BD4(v41, sub_6B830, v41, 0) & 0x80000000) == 0)
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

              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v35, 0, v34, v31, v32, v33, v42);
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

        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v42);
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
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v27, 87, v23, v26, v24, v25, v42);
  sub_6BAB4(v13);
  return 0;
}

uint64_t sub_6B570(uint64_t a1)
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error", v13, v14, v22);
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
  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v21, 0, v20, v4, v5, v6, v22);
  v17 = "SharedArrayPush";
  v18 = 69;
LABEL_28:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", v18, 87, 0, v17, v10, v11, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_6B830(uint64_t a1)
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error", v18, v19, v22);
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
  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v7, 0, v6, v3, v4, v5, v22);
  v10 = "SharedArrayDequeue";
  v11 = 114;
LABEL_29:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", v11, 87, 0, v10, v8, v9, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_6BAB4(uint64_t result)
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
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v10, 0, v11, v7, v8, v9, v39);
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

            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v21, v22, v23, v39);
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop", v13, v14, v40);
          v6 = 0;
LABEL_17:
          v16 = *(v1 + 1) + 408 * v15;
          *(v16 + 400) = -1;
          if (pthread_mutex_lock((v16 + 48)) || (v19 = *(v16 + 40), *(v16 + 40) = v19 + 1, !v19) && pthread_cond_broadcast((v16 + 112)) || pthread_mutex_unlock((v16 + 48)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease", v17, v18, v39);
            v6 = 0;
          }

          if ((sub_60F34(*v16) & 0x80000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread", v24, v25, v39);
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
        if ((sub_66530(v1 + 42, -1) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue", v32, v33, v39);
          v6 = 0;
        }

        if ((sub_60F34(*v31) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread", v34, v35, v39);
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors", v36, v37, v39);
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

uint64_t sub_6BEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 294;
LABEL_11:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", v9, 87, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
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

uint64_t sub_6BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 311;
LABEL_11:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", v14, 87, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v9 = *(a1 + 8) + 408 * v8;
  v10 = *(a1 + 32);
  *(a1 + 32) = v10 + 1;
  *(v9 + 400) = v10;
  if ((sub_66530((a1 + 168), v8) & 0x80000000) != 0)
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

uint64_t sub_6C0D0(uint64_t a1)
{
  if ((sub_66530((a1 + 168), -2) & 0x80000000) != 0)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", v5, 87, 0, v4, v2, v3, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_6C18C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received", a7, a8, v20);
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
        fprintf(__stderrp, "Worker: encode block %5lld: %7llu => %7llu\n");
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

    v18 = (*(v9 + 96))(a1[5]);
    if ((v18 & 0x8000000000000000) == 0 && v18 == a1[4])
    {
      a1[7] = v18;
      v13 = a1[3];
LABEL_19:
      a1[8] = v13;
      if (*(v9 + 24) >= 2)
      {
        fprintf(__stderrp, "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    v20 = a1[6];
    v14 = "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld";
    v15 = 292;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", v15, 37, 0, v14, a7, a8, v20);
  v19 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v9 + 112), &v19, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_6C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 112)))
  {
    return 0;
  }

  v12 = *(a2 + 48);
  if (v12 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = 0;
LABEL_5:
    result = 0;
    *(a1 + 88) += v13;
    return result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld", a7, a8, *(a2 + 48));
LABEL_20:
    v13 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 4) != 1)
  {
    v17 = vrev64q_s8(*(a2 + 56));
    v26 = vextq_s8(v17, v17, 8uLL);
    v18 = sub_6C600(*(a1 + 56), *(a1 + 72), &v26, 16);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v13 = v18;
      if (v18 == 16)
      {
        v19 = sub_6C600(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v19 < 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload", v20, v21, v25);
          v13 = 16;
        }

        else
        {
          v13 = v19 + 16;
          if (v19 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v20, v21, v19);
        }
      }

      else
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)", v15, v16, v18);
      }

      goto LABEL_22;
    }

    v22 = "writing block header";
    v23 = 345;
    goto LABEL_19;
  }

  v14 = sub_6C600(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v14 < 0)
  {
    v22 = "writing block";
    v23 = 334;
LABEL_19:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", v23, 37, 0, v22, v15, v16, v25);
    goto LABEL_20;
  }

  v13 = v14;
  if (v14 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)", v15, v16, v14);
LABEL_22:
  v24 = 0;
  *(a1 + 88) += v13;
  atomic_compare_exchange_strong((a1 + 112), &v24, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_6C600(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed", v10, v11, v16);
    return v12;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v13, v14, v16);
    }
  }

  return v8;
}

uint64_t PCompressFilter(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ParallelCompressionEnterThreadErrorContext_0(a1, a2, a3, a4, a5, a6, a7, a8, v110);
  *v121 = 0;
  v119 = 0u;
  *v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  v11 = a1[2];
  if (!v11)
  {
    v11 = sub_62BA4();
  }

  a1[2] = v11;
  if (a1[1] == 1)
  {
    if (sub_6D138(*a2, *(a2 + 16), &v122, 4) != 4)
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
      v15 = sub_758D4(v14);
      if (v15 != 63)
      {
        LODWORD(v123[0]) = 544891504;
        BYTE3(v123[0]) = v15;
        if (v122 == LODWORD(v123[0]))
        {
          break;
        }
      }

      if (++v14 == 7)
      {
        if (compression_stream_identify_algorithm(&v122) == -1)
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", v17, 37, 0, v16, v12, v13, v111);
LABEL_90:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader", v12, v13, v111);
        goto LABEL_91;
      }
    }

    v123[0] = 0;
    if (sub_6D138(*a2, *(a2 + 16), v123, 8) != 8)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      *a3 += 8;
    }

    if (!v123[0])
    {
      v16 = "invalid blockSize in input stream";
      v17 = 191;
      goto LABEL_89;
    }

    *(a1 + 2) = bswap64(v123[0]);
    *a1 = v14;
    if (a1[6] >= 1)
    {
      v22 = __stderrp;
      v23 = sub_7590C(v14);
      fprintf(v22, "Decoder: %s\n", v23);
      fprintf(__stderrp, "Blocksize: %llu\n");
    }
  }

  else
  {
    v18 = *(a1 + 2);
    v19 = sub_75900(*a1);
    v20 = sub_758D4(v19);
    if (v20 == 63)
    {
      goto LABEL_90;
    }

    v122 = 544891504;
    HIBYTE(v122) = v20;
    if (sub_6C600(*(a2 + 24), *(a2 + 40), &v122, 4) != 4)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      a3[1] += 4;
    }

    v123[0] = bswap64(v18);
    if (sub_6C600(*(a2 + 24), *(a2 + 40), v123, 8) != 8)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      a3[1] += 8;
    }

    if (a1[6] >= 1)
    {
      v21 = __stderrp;
      sub_758B4(*a1);
      fprintf(v21, "Encoder: %s\n");
    }
  }

  v24 = *(a1 + 1);
  v114 = *a1;
  v115 = v24;
  v119 = 0u;
  *v120 = 0u;
  *v121 = 0;
  v25 = *(a2 + 16);
  v116 = *a2;
  v117 = v25;
  v118 = *(a2 + 32);
  if (a3)
  {
    v119 = *a3;
  }

  v26 = *a1;
  if (a1[1])
  {
    v27 = sub_75A04(v26);
  }

  else
  {
    v27 = sub_759E4(v26);
  }

  v120[0] = v27;
  v28 = calloc(a1[2], 0x48uLL);
  v120[1] = v28;
  if (!v28)
  {
    v34 = 468;
LABEL_86:
    v86 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v34, 37, *v86, "malloc", v87, v88, v111);
LABEL_87:
    v89 = "initFilterState";
    v90 = 510;
LABEL_103:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", v90, 37, 0, v89, v42, v43, v111);
    v98 = 0;
    v99 = 1;
    goto LABEL_104;
  }

  v29 = a1[2];
  if (v29 < 1)
  {
    goto LABEL_43;
  }

  v30 = v28;
  v31 = *(a1 + 2);
  v32 = malloc(v31);
  v30[1] = v32;
  v33 = malloc(v31);
  v30[5] = v33;
  *v30 = &v114;
  v34 = 477;
  if (!v32 || !v33)
  {
    goto LABEL_86;
  }

  v35 = 0;
  v36 = v30 + 9;
  do
  {
    if (v29 - 1 == v35)
    {
      goto LABEL_43;
    }

    v37 = malloc(v31);
    v36[1] = v37;
    v38 = malloc(v31);
    v36[5] = v38;
    *v36 = &v114;
    ++v35;
    if (!v37)
    {
      break;
    }

    v36 += 9;
  }

  while (v38);
  v39 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v39, "malloc", v40, v41, v111);
  if (v35 < v29)
  {
    goto LABEL_87;
  }

LABEL_43:
  v44 = v115;
  v45 = SDWORD2(v114);
  v46 = malloc(8 * SDWORD2(v114));
  if (!v46)
  {
    v95 = *__error();
    v96 = "malloc";
    v97 = 372;
LABEL_101:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", v97, 37, v95, v96, v61, v62, v111);
    goto LABEL_102;
  }

  v47 = v46;
  if (v45 >= 1)
  {
    v48 = v120[1];
    v49 = (v45 + 1) & 0xFFFFFFFE;
    v50 = vdupq_n_s64(v45 - 1);
    v51 = xmmword_10A0F0;
    v52 = v46 + 8;
    v53 = vdupq_n_s64(2uLL);
    do
    {
      v54 = vmovn_s64(vcgeq_u64(v50, v51));
      if (v54.i8[0])
      {
        *(v52 - 1) = v48;
      }

      if (v54.i8[4])
      {
        *v52 = v48 + 72;
      }

      v51 = vaddq_s64(v51, v53);
      v52 += 2;
      v48 += 144;
      v49 -= 2;
    }

    while (v49);
  }

  v113 = v44;
  v55 = sub_6B0B8(v45, v46, sub_6C18C, &v114, sub_6C39C, 0);
  if (!v55)
  {
    v96 = "creating pipeline";
    v97 = 375;
    v95 = 0;
    goto LABEL_101;
  }

  v63 = v55;
  v112 = v47;
  v64 = 0;
  v65 = 1;
  while (1)
  {
    if (atomic_load(v121))
    {
      v65 = 0;
LABEL_117:
      v104 = v65 == 0;
      goto LABEL_119;
    }

    if (!v65)
    {
      break;
    }

    v67 = sub_6BEA0(v63, v56, v57, v58, v59, v60, v61, v62);
    if (!v67)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline", v68, v69, v111);
      v83 = 0;
LABEL_82:
      v65 = 0;
      goto LABEL_83;
    }

    v70 = v67;
    if (DWORD1(v114) == 1)
    {
      v71 = sub_6D138(v116, v117, v123, 16);
      if (v71)
      {
        v78 = v71;
        if (v71 < 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header", v76, v77, v111);
          v78 = 0;
        }

        else if (v71 == 16)
        {
          v79 = v44;
          v80 = bswap64(v123[0]);
          v81 = bswap64(v123[1]);
          if (v81 > v79 || v80 > v79)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v76, v77, v81);
            v78 = 16;
            v44 = v79;
          }

          else
          {
            v82 = sub_6D138(v116, v117, v70[1], v81);
            if (v82 < 0)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload", v76, v77, v111);
              v78 = 16;
            }

            else
            {
              v78 = v82 + 16;
              if (v82 == v81)
              {
                v83 = 0;
                v70[3] = v81;
                v70[4] = v80;
                v70[2] = v64;
                *&v119 = v119 + v78;
                v65 = 1;
                v44 = v113;
                goto LABEL_80;
              }

              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v76, v77, v82);
            }

            v44 = v113;
          }
        }

        else
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v76, v77, v71);
        }

        v65 = 0;
        *&v119 = v119 + v78;
        v85 = -1;
      }

      else
      {
        v85 = -2;
        v65 = 1;
      }
    }

    else
    {
      v84 = sub_6D138(v116, v117, *(v67 + 8), v44);
      if (v84 < 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block", v76, v77, v111);
        v65 = 0;
        v85 = -1;
      }

      else
      {
        if (v84)
        {
          v83 = 0;
          v70[3] = v84;
          v70[4] = 0;
          v70[2] = v64;
          *&v119 = v119 + v84;
          v65 = 1;
          goto LABEL_80;
        }

        v85 = -2;
        v65 = 1;
      }
    }

    v70[2] = v85;
    v83 = v65;
LABEL_80:
    if ((sub_6BFD4(v63, v70, v72, v73, v74, v75, v76, v77) & 0x80000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker", v61, v62, v111);
      goto LABEL_82;
    }

LABEL_83:
    ++v64;
    if (v83)
    {
      goto LABEL_117;
    }
  }

  atomic_load(v121);
  v104 = 1;
LABEL_119:
  if ((sub_6BAB4(v63) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy", v105, v106, v111);
    free(v112);
    goto LABEL_102;
  }

  free(v112);
  if (v104)
  {
LABEL_102:
    v89 = "processStream";
    v90 = 513;
    goto LABEL_103;
  }

  v107 = (*(a2 + 24))(*(a2 + 40), 0, 0);
  if (v107 < 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v108, v109, v111);
    v89 = "writing EOF";
    v90 = 520;
    goto LABEL_103;
  }

  v99 = 0;
  *(&v119 + 1) += v107;
  v98 = 1;
LABEL_104:
  v100 = v120[1];
  if (v120[1])
  {
    if (SDWORD2(v114) >= 1)
    {
      v101 = 0;
      v102 = 0;
      do
      {
        free(*(v120[1] + v101 + 8));
        free(*(v120[1] + v101 + 40));
        ++v102;
        v101 += 72;
      }

      while (v102 < SDWORD2(v114));
      v100 = v120[1];
    }

    free(v100);
    v120[1] = 0;
  }

  v103 = v98 ^ 1;
  if (!a3)
  {
    v103 = 1;
  }

  if ((v103 & 1) == 0)
  {
    v93 = 0;
    *a3 = v119;
    goto LABEL_96;
  }

  if (!v99)
  {
    v93 = 0;
    goto LABEL_96;
  }

LABEL_91:
  v91 = *(a2 + 32);
  if (v91)
  {
    v91(*(a2 + 40));
  }

  v92 = *(a2 + 8);
  if (v92)
  {
    v92(*(a2 + 16));
  }

  v93 = -1;
LABEL_96:
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v93;
  }

  else
  {
    return result;
  }
}

uint64_t sub_6D138(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed", v10, v11, v14);
  return v12;
}

uint64_t sub_6D1E4(uint64_t a1, unint64_t a2, char *__source, char *__dst, size_t __size, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (HIDWORD(a2))
  {
    v8 = "cluster id out of range";
    v9 = 213;
    v10 = 0;
LABEL_3:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", v9, 2, v10, v8, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  v17 = *a1;
  if (*a1 <= a2)
  {
    do
    {
      if (v17)
      {
        v17 += v17 >> 1;
      }

      else
      {
        v17 = 32;
      }
    }

    while (v17 <= a2);
    v19 = reallocf(*(a1 + 8), 1028 * v17);
    *(a1 + 8) = v19;
    if (!v19)
    {
      v10 = *__error();
      v8 = "malloc";
      v9 = 221;
      goto LABEL_3;
    }

    v18 = v19;
    bzero(&v19[1028 * *a1], 1028 * (v17 - *a1));
    *a1 = v17;
  }

  else
  {
    v18 = *(a1 + 8);
  }

  v20 = &v18[1028 * a2];
  if (*v20)
  {
    strlcpy(__dst, v20 + 4, __size);
    return 1;
  }

  else
  {
    strlcpy(v20 + 4, __source, 0x400uLL);
    result = 0;
    *(*(a1 + 8) + 1028 * a2) = 1;
  }

  return result;
}

uint64_t sub_6D348(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  bzero(path, 0x800uLL);
  if (*v4 >= 3)
  {
    fprintf(__stderrp, "[%7d] set attributes: %s\n", *(a2 + 2296), (a2 + 144));
  }

  if ((sub_63058(path, 0x800uLL, (a1 + 12), (a2 + 144)) & 0x80000000) != 0)
  {
    LOBYTE(v23) = a2 - 112;
    v9 = "invalid path: %s";
    v8 = 257;
LABEL_21:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v8, 2, 0, v9, v6, v7, v23);
    v19 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (*(a2 + 4) == 68 && (sub_64998(path) & 0x80000000) != 0)
  {
    v23 = path;
    v9 = "clear XAT: %s";
    v8 = 262;
    goto LABEL_21;
  }

  if ((v5 & 0x40000) == 0 && sub_5EFE4(path, a2, a2 + 2192, v5 & 1))
  {
    v8 = 266;
LABEL_19:
    v9 = "setEntryAttributes";
    goto LABEL_21;
  }

  v10 = *(a2 + 2280);
  if (v10)
  {
    v11 = sub_75C6C(v10);
    v12 = sub_75C80(*(a2 + 2280));
    if (sub_5F658(path, a2, v5 & 1, v11, v12, v13, v14, v15))
    {
      v9 = "setEntryXAT";
      v8 = 272;
      goto LABEL_21;
    }
  }

  v16 = *(a2 + 2288);
  if (v16)
  {
    v17 = sub_75C6C(v16) / 0x120uLL;
    v18 = sub_75C80(*(a2 + 2288));
    if (sub_5F828(path, a2, v5 & 1, v17, v18))
    {
      v9 = "setEntryACL";
      v8 = 278;
      goto LABEL_21;
    }
  }

  if ((v5 & 0x40000) != 0 && sub_5EFE4(path, a2, a2 + 2192, v5 & 1))
  {
    v8 = 282;
    goto LABEL_19;
  }

  v19 = 0;
LABEL_22:
  v20 = *a1;
  v21 = *(*a1 + 96);
  if (v21)
  {
    v21(*(v20 + 18), a2);
    v20 = *a1;
  }

  atomic_fetch_add_explicit((a1 + 1528), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (*v20 >= 3)
  {
    fprintf(__stderrp, "[%7d] end: %s\n", *(a2 + 2296), (a2 + 144));
  }

  return v19;
}

uint64_t sub_6D610(void *a1, int a2)
{
  v2 = a1[174];
  if (!v2)
  {
    return -1;
  }

  v3 = a1[175];
  v4 = (a2 - *(a1[177] + 2320 * v3 + 2296));
  if (v4 < 0 || v2 <= v4)
  {
    return -1;
  }

  v5 = v3 + v4;
  v6 = a1[173];
  if (v5 < v6)
  {
    v6 = 0;
  }

  return v5 - v6;
}

uint64_t sub_6D65C(void *a1, int a2)
{
  v2 = a1[174];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[177];
  v4 = a1[175];
  v5 = (a2 - *(v3 + 2320 * v4 + 2296));
  if (v5 < 0 || v2 <= v5)
  {
    return 0;
  }

  v6 = v4 + v5;
  v7 = a1[173];
  if (v6 < v7)
  {
    v7 = 0;
  }

  v8 = v6 - v7;
  v9 = v3 + 2320 * v8;
  if (v8 >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6D6B8(uint64_t a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = sub_75C74(*(a1 + 16));
    if (v6)
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      sub_75DFC(*(a1 + 16), v7, a2);
      a2 += v7;
      v3 -= v7;
      goto LABEL_18;
    }

    if (pthread_mutex_lock((a1 + 32)) || (v10 = *(a1 + 24), *(a1 + 24) = v10 + 1, !v10) && pthread_cond_broadcast((a1 + 96)) || pthread_mutex_unlock((a1 + 32)))
    {
      v13 = "SemRelease";
      v14 = 764;
      goto LABEL_21;
    }

    if (pthread_mutex_lock((a1 + 152)))
    {
      goto LABEL_20;
    }

    while (1)
    {
      v11 = *(a1 + 144);
      if (v11 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 216), (a1 + 152)))
      {
        goto LABEL_20;
      }
    }

    *(a1 + 144) = v11 - 1;
    if (pthread_mutex_unlock((a1 + 152)))
    {
LABEL_20:
      v13 = "SemAcquire";
      v14 = 767;
      goto LABEL_21;
    }

    if (!sub_75C74(*(a1 + 16)))
    {
      break;
    }

LABEL_18:
    if (!v3)
    {
      return 0;
    }
  }

  v13 = "thread didn't consume data";
  v14 = 770;
LABEL_21:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", v14, 2, 0, v13, v8, v9, v15);
  return 0xFFFFFFFFLL;
}

uint64_t sub_6D820(uint64_t a1)
{
  result = pthread_mutex_lock((a1 + 8));
  if (!result)
  {
    v3 = (*a1)++;
    if (v3 || (result = pthread_cond_broadcast((a1 + 72)), !result))
    {

      return pthread_mutex_unlock((a1 + 8));
    }
  }

  return result;
}

uint64_t sub_6D88C(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  while (*a1 <= 0)
  {
    if (pthread_cond_wait((a1 + 72), (a1 + 8)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  --*a1;
  if (pthread_mutex_unlock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ParallelArchiveExtract()
{
  v0 = off_1AD4E8();
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v0;
  ParallelCompressionEnterThreadErrorContext_0(v0, v1, v2, v3, v4, v5, v6, v7, v102);
  bzero(&v117, 0x628uLL);
  v116 = v8;
  v9 = *(v8 + 20);
  if (!v9)
  {
    v9 = sub_62BA4();
  }

  LODWORD(__count) = v9;
  v130 = -1;
  v10 = *(v8 + 40);
  v117 = (*(v8 + 24) >> 1) & 1;
  v119 = v10;
  pthread_mutex_init(&v128, 0);
  pthread_mutex_init(&v129, 0);
  v104 = v8;
  if (!realpath_DARWIN_EXTSN(*(v8 + 8), v118))
  {
    v17 = *__error();
    v20 = *(v8 + 8);
    v21 = 1908;
    goto LABEL_15;
  }

  v120 = 0;
  v121 = __count;
  v122 = calloc(__count, 4uLL);
  if (!v122)
  {
    v14 = "SharedArrayInit: malloc failed\n";
    v15 = 55;
    goto LABEL_13;
  }

  if (pthread_mutex_init(&v123, 0))
  {
    v14 = "SharedArrayInit: pthread_mutex_init failed\n";
    v15 = 56;
LABEL_13:
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", v15, 0, v14, v11, v12, v13, v103);
    v20 = "SharedArrayInit";
    v21 = 1911;
    goto LABEL_14;
  }

  if (pthread_cond_init(&v124, 0))
  {
    v14 = "SharedArrayInit: pthread_cond_init failed\n";
    v15 = 57;
    goto LABEL_13;
  }

  v126 = calloc(__count, 0x130uLL);
  if (!v126)
  {
    v17 = *__error();
    v20 = "malloc";
    v21 = 1915;
    goto LABEL_15;
  }

  if (__count)
  {
    v78 = 0;
    v79 = 216;
    while (1)
    {
      v80 = v126;
      v81 = v126 + v79;
      v82 = v126 + v79;
      *(v82 - 27) = &v116;
      v83 = (v82 - 216);
      v84 = sub_75AC4(0x100000uLL);
      *(v83 + 16) = v84;
      if (!v84)
      {
        break;
      }

      *(v81 - 48) = 0;
      if (pthread_mutex_init((v81 - 184), 0) || (v85 = &v80[v79], pthread_cond_init(&v80[v79 - 120], 0)))
      {
        v20 = "SemInit";
        v21 = 1922;
        goto LABEL_14;
      }

      *(v85 - 18) = 0;
      if (pthread_mutex_init(v85 - 1, 0) || (v86 = &v80[v79], pthread_cond_init(v86, 0)))
      {
        v20 = "SemInit";
        v21 = 1923;
        goto LABEL_14;
      }

      if (sub_60BD4(&v86[-5].__opaque[24], sub_6E4A4, v83, 0))
      {
        v17 = *__error();
        v20 = "createThread";
        v21 = 1924;
        goto LABEL_15;
      }

      ++v78;
      v79 += 304;
      if (v78 >= __count)
      {
        goto LABEL_85;
      }
    }

    v20 = "MemBufferCreate";
    v21 = 1921;
LABEL_14:
    v17 = 0;
LABEL_15:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", v21, 2, v17, v20, v18, v19, v103);
    v22 = 0;
    v23 = 0.0;
    goto LABEL_16;
  }

LABEL_85:
  v107 = 0;
  v87 = *(v104 + 16);
  if (!v87)
  {
    v87 = sub_62BA4();
  }

  v105[0] = 0;
  v105[1] = v87;
  v88 = *(v104 + 64);
  v106 = *(v104 + 48);
  v108 = v88;
  v109 = sub_70074;
  v110 = sub_70C08;
  v111 = sub_70D1C;
  v113 = sub_70DE4;
  v112 = sub_70F6C;
  v114 = sub_70F6C;
  v115 = &v116;
  v89 = sub_62B5C();
  v97 = ParallelArchiveRead(v105, v90, v91, v92, v93, v94, v95, v96);
  v100 = sub_62B5C();
  v22 = 1;
  if (v97 | v127)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1948, 2, 0, "ParallelArchiveRead failed", v98, v99, v103);
    v127 = 1;
    v22 = 0;
  }

  v23 = v100 - v89;
  if (v130 != -1 && v131)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1956, 2, 0, "aborting current receiving thread", v98, v99, v103);
    v127 = 1;
    v101 = v126 + 304 * v130;
    if (!v131)
    {
      sub_6D88C((v101 + 144));
      v131 = 1;
    }

    sub_75DE0(*(v101 + 2));
    v131 = 0;
    sub_6D820((v101 + 24));
  }

  while (1)
  {
LABEL_16:
    if (v126)
    {
      v24 = __count == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = 0;
      do
      {
        v26 = v126 + 304 * v25;
        if (*(v26 + 1))
        {
          LODWORD(v150[0]) = 0;
          if (!pthread_mutex_lock((v26 + 152)))
          {
            while (1)
            {
              v27 = *(v26 + 36);
              if (v27 > 0)
              {
                break;
              }

              if (pthread_cond_wait((v26 + 216), (v26 + 152)))
              {
                goto LABEL_27;
              }
            }

            *(v26 + 36) = v27 - 1;
            pthread_mutex_unlock((v26 + 152));
          }

LABEL_27:
          sub_75DFC(*(v26 + 2), 4uLL, v150);
          if (!pthread_mutex_lock((v26 + 32)))
          {
            v28 = *(v26 + 6);
            *(v26 + 6) = v28 + 1;
            if (v28 || !pthread_cond_broadcast(v26 + 2))
            {
              pthread_mutex_unlock((v26 + 32));
            }
          }

          if (sub_60F34(*(v26 + 1)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1989, 2, 0, "joinThread", v29, v30, v103);
            v22 = 0;
          }
        }

        sub_75BD4(*(v26 + 2));
        if (!pthread_mutex_destroy((v26 + 32)))
        {
          pthread_cond_destroy(v26 + 2);
        }

        if (!pthread_mutex_destroy((v26 + 152)))
        {
          pthread_cond_destroy((v26 + 216));
        }

        atomic_fetch_add(&v145, *(v26 + 36));
        atomic_fetch_add(&v149, *(v26 + 37));
        ++v25;
      }

      while (v25 < __count);
    }

    if (pthread_mutex_lock(&v128))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 701, 2, 0, "pthread_mutex_lock", v31, v32, v103);
      goto LABEL_51;
    }

    v35 = v136;
    if (!v136)
    {
      break;
    }

    v36 = 1;
    do
    {
      memset(v152, 0, 368);
      memset(v151, 0, sizeof(v151));
      v136 = v35 - 1;
      v37 = v137 + 16 * v35 - 16;
      pc_zero_coder_decode(v151, 2320, *v37, *(v37 + 1));
      if (v156 != 6 || v151[1] != 68)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 711, 2, 0, "Invalid entry state", v38, v39, v103);
        v36 = 0;
      }

      sub_60A5C(v150);
      if (*v116 >= 3)
      {
        fprintf(__stderrp, "[%7d] processing deferred Dir: %s\n", v155, v152);
      }

      if ((sub_6D348(&v116, v151) & 0x80000000) != 0)
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 720, 2, "Failed to set dir attributes", v40, v41, v42, v103);
        sub_60AD0(v150);
        v156 = 7;
        ++v138;
      }

      sub_75BD4(v153);
      sub_75BD4(v154);
      free(*v37);
      *v37 = 0;
      v35 = v136;
    }

    while (v136);
    pthread_mutex_unlock(&v128);
    if (v36)
    {
      goto LABEL_53;
    }

LABEL_51:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2002, 2, 0, "Processing deferred entries", v33, v34, v103);
    v22 = 0;
  }

  pthread_mutex_unlock(&v128);
LABEL_53:
  if (v22)
  {
    if (*v104 >= 1)
    {
      v43 = atomic_load(&v145);
      v44 = atomic_load(&v149);
      v45 = v44 + v43;
      v46 = atomic_load(&v146);
      v47 = atomic_load(&v147);
      v48 = v45 + v46 + v47;
      v49 = atomic_load(&v148);
      v50 = v48 + v49;
      v51 = __stderrp;
      v52 = atomic_load(&v142);
      fprintf(v51, "%12lld entries in archive\n", v52);
      v53 = __stderrp;
      v54 = atomic_load(&v143);
      fprintf(v53, "%12lld entries extracted\n", v54);
      fprintf(__stderrp, "%12llu entries failed to extract\n", v138);
      fprintf(__stderrp, "%12lld max entries in flight\n", v134);
      v55 = __stderrp;
      v56 = atomic_load(v144);
      fprintf(v55, "%12lld deferred directories\n", v56);
      fprintf(__stderrp, "%12llu bytes in archive\n", v132);
      fprintf(__stderrp, "%12lld bytes received in regular files\n", v50);
      v57 = __stderrp;
      v58 = atomic_load(&v145);
      fprintf(v57, "%12lld bytes stored in regular files\n", v58);
      v59 = __stderrp;
      v60 = atomic_load(&v149);
      fprintf(v59, "%12lld bytes not stored in holes\n", v60);
      v61 = __stderrp;
      v62 = atomic_load(&v146);
      fprintf(v61, "%12lld bytes not stored in hard links\n", v62);
      v63 = __stderrp;
      v64 = atomic_load(&v147);
      fprintf(v63, "%12lld bytes not stored in clones\n", v64);
      v65 = __stderrp;
      v66 = atomic_load(&v148);
      fprintf(v65, "%12lld bytes not stored in same data files\n", v66);
      fprintf(__stderrp, "%12.0f MB/s\n", v50 / v23 * 0.000000953674316);
      if (*v104 >= 3)
      {
        if (__count)
        {
          v67 = 0;
          v68 = 264;
          do
          {
            v69 = v126;
            fprintf(__stderrp, "-- thread %d:\n", v67);
            v70 = &v69[v68];
            fprintf(__stderrp, "%12lld entries stored\n", *(v70 + 1));
            fprintf(__stderrp, "%12lld bytes received\n", *(v70 + 2));
            fprintf(__stderrp, "%12lld bytes stored\n", *(v70 + 3));
            fprintf(__stderrp, "%12lld buffers exchanged\n", *v70);
            ++v67;
            v68 += 304;
          }

          while (v67 < __count);
        }
      }
    }
  }

  free(v126);
  if (!pthread_mutex_destroy(&v123) && !pthread_cond_destroy(&v124))
  {
    free(v122);
  }

  pthread_mutex_destroy(&v128);
  pthread_mutex_destroy(&v129);
  if (v133)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2043, 2, 0, "Destroying state with non-empty in-flight queue", v71, v72, v103);
  }

  free(v135);
  if (v136)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2045, 2, 0, "Destroying state with non-empty deferred queue", v73, v74, v103);
  }

  free(v137);
  free(v139);
  free(v140);
  free(v141);
  if (v138 && (*(v104 + 24) & 8) == 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2054, 2, 0, "%llu entries failed to extract", v75, v76, v138);
    v22 = 0;
  }

  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (v22)
  {
    v77 = 0;
  }

  else
  {
    v77 = -1;
  }

  if (result >= 0)
  {
    return v77;
  }

  else
  {
    return result;
  }
}

uint64_t sub_6E4A4()
{
  v0 = off_1AD4E8();
  v1 = *v0;
  v2 = **v0;
  v226 = *v2;
  v3 = 678152731 * ((v0 - *(*v0 + 1176)) >> 4);
  __dst = -1;
  memset(v263, 0, 368);
  v262 = 0u;
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v258 = 0u;
  v257 = 0u;
  v256 = 0u;
  *v255 = 0u;
  v254 = 0u;
  v243 = 0;
  v242 = 0u;
  memset(v241, 0, sizeof(v241));
  bzero(v253, 0x800uLL);
  v237 = -1;
  v4 = *(v2 + 96);
  v229 = *(v2 + 88);
  v227 = *(v2 + 104);
  v228 = *(v2 + 144);
  v5 = *(v2 + 24);
  v6 = sub_75AC4(0x10000uLL);
  v7 = sub_75AC4(0x10000uLL);
  v10 = v7;
  v234 = v6;
  if (!v6 || !v7)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 830, 2, 0, "MemBufferCreate", v8, v9, v221);
  }

  v238 = 0;
  v239 = 0;
  v240 = 0;
  if (*(*v1 + 32) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(*v1 + 32);
  }

  v236 = v11;
  v235 = calloc(v11, 0x120uLL);
  if (!v235)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 835, 2, 0, "malloc ACE", v12, v13, v221);
  }

  if (sub_70F7C(v1 + 260, v3))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 838, 2, 0, "SharedArrayPush", v14, v15, v221);
  }

  v230 = v5;
  if (pthread_mutex_lock((v0 + 152)) || (v18 = *(v0 + 144), *(v0 + 144) = v18 + 1, !v18) && pthread_cond_broadcast((v0 + 216)) || pthread_mutex_unlock((v0 + 152)))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 847, 2, 0, "SemRelease", v16, v17, v221);
  }

  v232 = 0;
  v233 = 0;
  v19 = 0;
  v20 = 0;
  v21 = " (MSU)";
  if ((v230 & 0x10000) == 0)
  {
    v21 = "";
  }

  v225 = v21;
  v231 = 7;
LABEL_20:
  v22 = 1;
  while (v20 != -1)
  {
    v23 = v20;
    if (v20 == 6)
    {
      break;
    }

    if (v22)
    {
      if (pthread_mutex_lock((v0 + 32)))
      {
        goto LABEL_29;
      }

      while (1)
      {
        v26 = *(v0 + 24);
        if (v26 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v0 + 96), (v0 + 32)))
        {
          goto LABEL_29;
        }
      }

      *(v0 + 24) = v26 - 1;
      if (pthread_mutex_unlock((v0 + 32)))
      {
LABEL_29:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 859, 2, 0, "SemAcquire", v24, v25, v221);
      }

      ++*(v0 + 264);
    }

    if (!sub_75C6C(*(v0 + 16)) && v1[296])
    {
      goto LABEL_55;
    }

    if (v20 > 3)
    {
      if (v20 > 5)
      {
LABEL_55:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1425, 2, 0, "aborting entry", v29, v30, v221);
        v237 = -1;
        sub_75DE0(v234);
        sub_75DE0(v10);
        if (!sub_70F7C(v1 + 260, v3))
        {
          v20 = 0;
LABEL_58:
          v233 = 0;
          goto LABEL_108;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1440, 2, 0, "SharedArrayPush", v50, v51, v221);
        v233 = 0;
        v20 = 7;
LABEL_108:
        if (pthread_mutex_lock((v0 + 152)) || (v108 = *(v0 + 144), *(v0 + 144) = v108 + 1, !v108) && pthread_cond_broadcast((v0 + 216)) || (v109 = pthread_mutex_unlock((v0 + 152)), v22 = 1, v109))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1462, 2, 0, "SemRelease", v106, v107, v221);
          goto LABEL_20;
        }
      }

      else
      {
        if (v20 == 4)
        {
          *&__s[0] = 0;
          if (sub_75C6C(*(v0 + 16)) < 8)
          {
            v20 = 4;
            goto LABEL_108;
          }

          if (sub_75F2C(*(v0 + 16), 8uLL, __s, v36, v37, v38, v39, v40) < 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1295, 2, 0, "MemBufferFlushToBuffer", v83, v84, v221);
            v20 = 4;
            goto LABEL_157;
          }

          *(v0 + 280) += 8;
          v85 = v237;
          v86 = *&__s[0];
          if (pthread_mutex_lock((v1 + 298)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 424, 2, 0, "pthread_mutex_lock", v87, v88, v221);
            goto LABEL_92;
          }

          v146 = sub_6D65C(v1, v85);
          if (v146)
          {
            *(v146 + 2312) = v86;
            pthread_mutex_unlock((v1 + 298));
          }

          else
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 428, 2, 0, "couldn't locate entry [%d] in queue", v147, v148, v85);
            pthread_mutex_unlock((v1 + 298));
LABEL_92:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1297, 2, 0, "store entryEnd", v89, v90, v222);
          }

          v20 = 5;
          goto LABEL_157;
        }

        if (v19)
        {
          *&__s[0] = 0;
          *v251 = 0;
          sub_67D18(v19, 0, __s, v251, v27, v28, v29, v30);
          v52 = *(v0 + 296) + *v251;
          *(v0 + 288) += *&__s[0];
          *(v0 + 296) = v52;
          if ((v254 & 8) != 0 && sub_64398(v255[0]) && v258 && (v241[0] & 0x20) != 0 && (v241[0] & 0x40) != 0 && DWORD1(v242) && (ParallelCompressionAFSCFixupMetadata(v253, v242, DWORD1(v242)) & 0x80000000) != 0)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1322, 2, "ParallelCompressionAFSCFixupMetadata failed: %s (aft=%d afr=%u)", v101, v102, v103, v253);
          }
        }

        v53 = v231;
        if (v231 == 2)
        {
          v53 = 3;
        }

        if (v53 == 7)
        {
LABEL_142:
          v231 = v53;
          if (sub_7108C())
          {
            v136 = 1399;
            v137 = "retiring entry from in-flight state";
          }

          else
          {
            if (!sub_75C6C(*(v0 + 16)))
            {
              v237 = -1;
              sub_75DE0(v234);
              sub_75DE0(v10);
              if (sub_70F7C(v1 + 260, v3))
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1417, 2, 0, "SharedArrayPush", v149, v150, v221);
                v19 = 0;
                v233 = 0;
                v20 = 5;
                goto LABEL_108;
              }

              v20 = 0;
              v19 = 0;
              goto LABEL_58;
            }

            v136 = 1402;
            v137 = "buffer is not empty";
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v136, 2, 0, v137, v134, v135, v221);
          v19 = 0;
          v22 = 0;
          v20 = 5;
        }

        else
        {
          if (v53 == 3)
          {
            sub_60A5C(__s);
            if ((v230 & 0x40000) != 0 || !sub_5EFE4(v253, &v254, v241, v230 & 1))
            {
              v57 = 3;
            }

            else
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1341, 2, "setEntryAttributes: %s", v54, v55, v56, v253);
              v57 = 7;
            }

            if ((BYTE1(v254) & 4) != 0)
            {
              v110 = sub_75C6C(v234);
              v111 = sub_75C80(v234);
              if (sub_5F658(v253, &v254, v230 & 1, v110, v111, v112, v113, v114))
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1350, 2, 0, "setEntryXAT: %s", v115, v116, v253);
                v57 = 7;
              }
            }

            if ((BYTE1(v254) & 8) != 0 && sub_5F828(v253, &v254, v230 & 1, v233, v235))
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1360, 2, 0, "setEntryACL: %s", v117, v118, v253);
              v57 = 7;
            }

            if ((v230 & 0x40000) != 0 && sub_5EFE4(v253, &v254, v241, v230 & 1))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1368, 2, "setEntryAttributes: %s", v119, v120, v121, v253);
              v57 = 7;
            }

            if (v4)
            {
              v4(*(*v1 + 144), &v254);
            }

            atomic_fetch_add_explicit(v1 + 191, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            if (v57 == 7)
            {
              sub_60AD0(__s);
              v53 = 7;
            }

            else
            {
              v53 = 4;
            }

            goto LABEL_142;
          }

          v231 = v53;
          v91 = v10;
          v224 = v4;
          v92 = v3;
          v93 = v237;
          v94 = sub_75C6C(v234);
          v95 = sub_75C80(v234);
          v96 = v235;
          if (pthread_mutex_lock((v1 + 298)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 445, 2, 0, "pthread_mutex_lock", v97, v98, v221);
            v3 = v92;
            v10 = v91;
          }

          else
          {
            v138 = sub_6D65C(v1, v93);
            if (v138)
            {
              v141 = v138;
              if (v94 && (v142 = sub_75C18(v94, v95), (*(v141 + 2280) = v142) == 0))
              {
                v152 = 454;
                v153 = "allocating XAT blob";
              }

              else
              {
                if (!v233 || (v145 = sub_75C18(288 * v233, v96), (*(v141 + 2288) = v145) != 0))
                {
                  pthread_mutex_unlock((v1 + 298));
                  v3 = v92;
                  v4 = v224;
                  v10 = v91;
                  v53 = v231;
                  goto LABEL_142;
                }

                v152 = 459;
                v153 = "allocating ACL blob";
              }

              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", v152, 2, 0, v153, v143, v144, v221);
            }

            else
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 449, 2, 0, "couldn't locate entry [%d] in queue", v139, v140, v93);
            }

            v3 = v92;
            v10 = v91;
            pthread_mutex_unlock((v1 + 298));
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1391, 2, 0, "store XAT and ACL blobs in entry", v99, v100, v223);
          v19 = 0;
          v22 = 0;
          v20 = 5;
          v4 = v224;
        }
      }
    }

    else if (v20 > 1)
    {
      if (v20 == 2)
      {
        goto LABEL_44;
      }

      v58 = sub_75C6C(*(v0 + 16));
      v59 = sub_75C80(*(v0 + 16));
      if (v58 >= v232)
      {
        v58 = v232;
      }

      *(v0 + 280) += v58;
      switch(__dst)
      {
        case 4:
          if (sub_75DFC(v10, v58, v59) < 0)
          {
            v104 = 1251;
            v105 = "storing ACL blob contents";
            goto LABEL_161;
          }

LABEL_106:
          sub_75CDC(*(v0 + 16), v58, v65, v66, v67, v62, v63, v64);
          v232 -= v58;
          if (v232)
          {
            v20 = 3;
            goto LABEL_108;
          }

          v232 = 0;
          v22 = 0;
          v20 = 2;
          if (__dst == 4)
          {
            v22 = 0;
            v232 = 0;
            if ((BYTE1(v254) & 8) != 0)
            {
              if (v259)
              {
                v122 = sub_75C6C(v10);
                v123 = sub_75C80(v10);
                v129 = sub_5EEBC(&v254, &v236, &v235, v122, v123, v124, v125, v126);
                if (v129 < 0)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1267, 2, 0, "decodeEntryACL", v127, v128, v221);
                }

                v130 = v129 & ~(v129 >> 63);
                if (v227)
                {
                  v130 = v227(v228, &v254, v130, v236, v235);
                  if (v130 > v236)
                  {
                    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1274, 2, 0, "invalid user ACL callback return value", v131, v132, v221);
                    v130 = 0;
                  }
                }

                v233 = v130;
                sub_75DE0(v10);
                v232 = 0;
                goto LABEL_138;
              }
            }
          }

          break;
        case 3:
          if (sub_75DFC(v234, v58, v59) < 0)
          {
            v104 = 1246;
            v105 = "storing XAT blob contents";
            goto LABEL_161;
          }

          goto LABEL_106;
        case 2:
          if (!v19 || sub_67EFC(v19, v59, v58, v60, v61, v62, v63, v64) != v58)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1239, 2, "OArchiveFileStreamWrite", v62, v63, v64, v221);
            v231 = 7;
          }

          goto LABEL_106;
        default:
          v104 = 1253;
          v105 = "invalid op in BLOB PAYLOAD";
LABEL_161:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v104, 2, 0, v105, v63, v64, v221);
          v22 = 0;
          v20 = 3;
          break;
      }
    }

    else if (v20)
    {
      if (sub_75C6C(*(v0 + 16)) < 0x8EC)
      {
        v20 = 1;
        goto LABEL_108;
      }

      if (sub_75F2C(*(v0 + 16), 0x890uLL, &v254, v31, v32, v33, v34, v35) < 0)
      {
        v133 = 926;
LABEL_167:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v133, 2, 0, "MemBufferFlushToBuffer", v71, v72, v221);
        goto LABEL_234;
      }

      if (sub_75F2C(*(v0 + 16), 0x58uLL, v241, v68, v69, v70, v71, v72) < 0)
      {
        v133 = 927;
        goto LABEL_167;
      }

      if (sub_75F2C(*(v0 + 16), 4uLL, &v237, v73, v74, v75, v71, v72) < 0)
      {
        v133 = 928;
        goto LABEL_167;
      }

      *(v0 + 272) = vaddq_s64(*(v0 + 272), xmmword_10B700);
      if (!v229)
      {
        goto LABEL_197;
      }

      v238 = 0;
      v239 = 0;
      v240 = 0;
      v229(v228, &v254, &v238);
      if (v238)
      {
        LODWORD(v254) = v254 | 2;
        DWORD2(v254) = HIDWORD(v238);
        if ((v238 & 2) == 0)
        {
LABEL_82:
          if ((v238 & 8) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_178;
        }
      }

      else if ((v238 & 2) == 0)
      {
        goto LABEL_82;
      }

      LODWORD(v254) = v254 | 4;
      HIDWORD(v254) = v239;
      if ((v238 & 8) == 0)
      {
LABEL_83:
        if ((v238 & 4) == 0)
        {
          goto LABEL_85;
        }

LABEL_84:
        LODWORD(v254) = v254 | 8;
        v255[0] = HIDWORD(v239);
        goto LABEL_85;
      }

LABEL_178:
      LODWORD(v254) = v254 | 0x10;
      v255[1] = v240;
      if ((v238 & 4) != 0)
      {
        goto LABEL_84;
      }

LABEL_85:
      if ((v238 & 0xF) != 0)
      {
        v76 = v237;
        if (pthread_mutex_lock((v1 + 298)))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 401, 2, 0, "pthread_mutex_lock", v77, v78, v221);
LABEL_88:
          v81 = 949;
          v82 = "override attributes";
LABEL_232:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v81, 2, 0, v82, v79, v80, v221);
          goto LABEL_233;
        }

        v154 = sub_6D65C(v1, v76);
        if (!v154)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 405, 2, 0, "couldn't locate entry [%d] in queue", v155, v156, v76);
          pthread_mutex_unlock((v1 + 298));
          goto LABEL_88;
        }

        v157 = v238;
        if (v238)
        {
          *v154 |= 2u;
          v154[2] = HIDWORD(v238);
          v157 = v238;
        }

        if ((v157 & 2) != 0)
        {
          *v154 |= 4u;
          v154[3] = v239;
          v157 = v238;
          if ((v238 & 8) != 0)
          {
            goto LABEL_251;
          }

LABEL_194:
          if ((v157 & 4) == 0)
          {
LABEL_196:
            pthread_mutex_unlock((v1 + 298));
            goto LABEL_197;
          }
        }

        else
        {
          if ((v157 & 8) == 0)
          {
            goto LABEL_194;
          }

LABEL_251:
          *v154 |= 0x10u;
          v154[5] = v240;
          if ((v238 & 4) == 0)
          {
            goto LABEL_196;
          }
        }

        *v154 |= 8u;
        v154[4] = HIDWORD(v239);
        goto LABEL_196;
      }

LABEL_197:
      atomic_fetch_add_explicit(v1 + 191, 1uLL, memory_order_relaxed);
      if (**v1 >= 3)
      {
        fprintf(__stderrp, "[%7d] begin: %s\n", v237, v263);
      }

      if ((sub_63058(v253, 0x800uLL, v1 + 12, v263) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 955, 2, 0, "invalid path: %s", v158, v159, v263);
LABEL_233:
        v231 = 0;
LABEL_234:
        v22 = 0;
        v20 = 1;
      }

      else
      {
        v160 = v254;
        if ((v254 & 0x400) != 0)
        {
          if ((sub_75B58(v234, *(&v258 + 1)) & 0x8000000000000000) != 0)
          {
            v81 = 960;
            v82 = "allocate XAT blob";
            goto LABEL_232;
          }

          v160 = v254;
        }

        if ((v160 & 0x800) != 0 && (sub_75B58(v10, v259) & 0x8000000000000000) != 0)
        {
          v81 = 964;
          v82 = "allocate ACL blob";
          goto LABEL_232;
        }

        if (!sub_75DEC(v234) || !sub_75DEC(v10))
        {
          v81 = 968;
          v82 = "XAT/ACL blob is not empty";
          goto LABEL_232;
        }

        if (SDWORD1(v254) > 75)
        {
          if (SDWORD1(v254) > 119)
          {
            if ((DWORD1(v254) - 120) >= 2)
            {
              goto LABEL_278;
            }

            v22 = 0;
            v20 = 2;
            v231 = 1;
            if (v226 >= 3)
            {
              fprintf(__stderrp, "[%7d] HLINK/CLONE deferred: %s\n");
              goto LABEL_263;
            }
          }

          else
          {
            switch(DWORD1(v254))
            {
              case 'L':
                if (v226 >= 3)
                {
                  fprintf(__stderrp, "[%7d] SLINK: %s -> %s\n", v237, v263, v264);
                }

                unlink(v253);
                v183 = symlink(v264, v253);
                v22 = 0;
                v20 = 2;
                v231 = 3;
                if (v183)
                {
                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1086, 2, "symlink %s -> %s", v184, v185, v186, v253);
                  goto LABEL_277;
                }

                break;
              case 'P':
                if (v226 >= 3)
                {
                  fprintf(__stderrp, "[%7d] FIFO: %s\n", v237, v263);
                }

                unlink(v253);
                if ((v254 & 0x10) != 0)
                {
                  v187 = LOWORD(v255[1]) | 0x1000;
                }

                else
                {
                  v187 = 4516;
                }

                v188 = mkfifo(v253, v187);
                v22 = 0;
                v20 = 2;
                v231 = 3;
                if (v188)
                {
                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1108, 2, "mkfifo %s", v189, v190, v191, v253);
LABEL_277:
                  v22 = 0;
                  v231 = 7;
                }

                break;
              case 'S':
                if (v226 >= 3)
                {
                  fprintf(__stderrp, "[%7d] SOCKET: %s\n", v237, v263);
                }

                unlink(v253);
                bzero(__s, 0x400uLL);
                bzero(v251, 0x400uLL);
                v249 = 0u;
                memset(v250, 0, sizeof(v250));
                v247 = 0u;
                v248 = 0u;
                v245 = 0;
                v246 = 0u;
                __strlcpy_chk();
                v168 = strrchr(__s, 47);
                if (!v168)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1137, 2, 0, "could not determine parent directory: %s", v169, v170, v253);
LABEL_283:
                  v231 = 3;
                  goto LABEL_138;
                }

                *v168 = 0;
                v249 = 0u;
                memset(v250, 0, sizeof(v250));
                v247 = 0u;
                v248 = 0u;
                v245 = 0;
                v246 = 0u;
                __strlcpy_chk();
                v245.sa_len = strlen(v245.sa_data) + 3;
                v245.sa_family = 1;
                v171 = socket(1, 1, 0);
                if (v171 < 0)
                {
                  v192 = *__error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1162, 2, v192, "socket failed: %s", v193, v194, v253);
                  goto LABEL_283;
                }

                v172 = v171;
                if (pthread_mutex_lock((v1 + 314)) < 0)
                {
                  v173 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1169, 2, *v173, "locking chdir_mutex failed: %s", v174, v175, v253);
                }

                if (getcwd(v251, 0x400uLL))
                {
                  if (chdir(__s) < 0 || bind(v172, &v245, 0x6Au) < 0)
                  {
                    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1176, 2, "chdir+bind failed: %s/%s", v176, v177, v178, __s);
                    v179 = 7;
                  }

                  else
                  {
                    v179 = 3;
                  }

                  v231 = v179;
                  if (chdir(v251) < 0)
                  {
                    v204 = __error();
                    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1180, 2, *v204, "chdir failed: %s", v205, v206, v251);
                  }
                }

                else
                {
                  v207 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1182, 2, *v207, "getcwd failed: %s", v208, v209, v253);
                  v231 = 3;
                }

                if (pthread_mutex_unlock((v1 + 314)) < 0)
                {
                  v210 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1183, 2, *v210, "unlocking chdir_mutex failed: %s", v211, v212, v253);
                }

                close(v172);
LABEL_138:
                v22 = 0;
                v20 = 2;
                break;
              default:
LABEL_278:
                v20 = 2;
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1217, 2, 0, "unsupported entry type", v79, v80, v221);
                v231 = 0;
LABEL_157:
                v22 = 0;
                break;
            }
          }
        }

        else if (SDWORD1(v254) > 69)
        {
          if (DWORD1(v254) == 70)
          {
            v180 = v1[259];
            if ((v254 & 8) != 0)
            {
              v182 = v230;
              if (sub_64398(v255[0]))
              {
                v181 = v258 != 0;
              }

              else
              {
                v181 = 0;
              }
            }

            else
            {
              v181 = 0;
              v182 = v230;
            }

            if (v226 >= 3)
            {
              v195 = "";
              if (v181)
              {
                v195 = " (C)";
              }

              fprintf(__stderrp, "[%7d] FILE writing %s%s: %s\n", v237, v195, v225, v263);
            }

            if (v181)
            {
              if (v241[0] & 0x20) != 0 && (v196 = v242 - 3, (v242 - 3) <= 0xB) && ((0xFF3u >> v196))
              {
                v197 = dword_10B720[v196];
                v180 = dword_10B750[v196];
              }

              else
              {
                v197 = 4;
              }
            }

            else
            {
              v197 = 0;
            }

            v198 = v197 | (16 * v230) & 0x40;
            if ((v182 & 0x10000) != 0)
            {
              v199 = v198 | 0x2B;
            }

            else
            {
              v199 = v198;
            }

            if ((v182 & 0x10) != 0)
            {
              if ((v241[0] & 0x80) != 0)
              {
                v200 = DWORD2(v242);
              }

              else
              {
                v200 = -1;
              }
            }

            else
            {
              v200 = -1;
            }

            sub_65374(v253);
            sub_60A5C(__s);
            v19 = sub_67770(v253, v258, v199 | 0x100u, v200, v180);
            if (!v19)
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1062, 2, "OArchiveFileStreamCreate: %s", v201, v202, v203, v253);
              sub_60AD0(__s);
            }

            v22 = 0;
            v231 = 2;
            v20 = 2;
          }

          else
          {
            if (DWORD1(v254) != 72)
            {
              goto LABEL_278;
            }

            v22 = 0;
            v20 = 2;
            v231 = 1;
            if (v226 >= 3)
            {
              fprintf(__stderrp, "[%7d] HLINK (legacy) deferred: %s\n");
              goto LABEL_263;
            }
          }
        }

        else if ((DWORD1(v254) - 66) >= 2)
        {
          if (DWORD1(v254) != 68)
          {
            goto LABEL_278;
          }

          v22 = 0;
          v20 = 2;
          v231 = 1;
          if (v226 >= 3)
          {
            fprintf(__stderrp, "[%7d] DIR deferred: %s\n");
LABEL_263:
            v22 = 0;
            v231 = 1;
          }
        }

        else
        {
          if (v226 >= 3)
          {
            v161 = "CHAR";
            if (DWORD1(v254) == 66)
            {
              v161 = "BLOCK";
            }

            fprintf(__stderrp, "[%7d] %s SPECIAL: %s\n", v237, v161, v253);
          }

          if ((v254 & 0x20) == 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1195, 2, 0, "DEV field is not set for a block/char special entry", v79, v80, v221);
          }

          unlink(v253);
          v162 = v255[1];
          if ((v254 & 0x10) == 0)
          {
            v162 = 420;
          }

          if (DWORD1(v254) == 66)
          {
            v163 = 24576;
          }

          else
          {
            v163 = 0x2000;
          }

          v164 = mknod(v253, v163 | v162, v255[2]);
          v22 = 0;
          v20 = 2;
          v231 = 3;
          if (v164)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1209, 2, "mknod %s", v165, v166, v167, v253);
            goto LABEL_277;
          }
        }
      }
    }

    else
    {
LABEL_44:
      if (sub_75C6C(*(v0 + 16)) < 4)
      {
        goto LABEL_108;
      }

      if (sub_75F2C(*(v0 + 16), 4uLL, &__dst, v41, v42, v43, v44, v45) < 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 882, 2, 0, "MemBufferFlushToBuffer", v46, v47, v221);
        v22 = 0;
      }

      else
      {
        v22 = 0;
        *(v0 + 280) += 4;
        v20 = 6;
        if (v23 | __dst)
        {
          if (v23 || (v22 = 0, v20 = 1, __dst != 1))
          {
            if (v23 == 2 && __dst == 2)
            {
              if ((BYTE1(v254) & 2) == 0)
              {
                v20 = 2;
                v48 = 894;
                v49 = "unexpected DAT blob";
LABEL_174:
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v48, 2, 0, v49, v46, v47, v221);
                goto LABEL_157;
              }

              v22 = 0;
              v20 = 3;
              v232 = v258;
            }

            else if (v23 == 2 && __dst == 3)
            {
              if ((BYTE1(v254) & 4) == 0)
              {
                v20 = 2;
                v48 = 901;
                v49 = "unexpected XAT blob";
                goto LABEL_174;
              }

              v22 = 0;
              v20 = 3;
              v232 = *(&v258 + 1);
            }

            else if (v23 == 2 && __dst == 4)
            {
              if ((BYTE1(v254) & 8) == 0)
              {
                v20 = 2;
                v48 = 908;
                v49 = "unexpected ACL blob";
                goto LABEL_174;
              }

              v22 = 0;
              v20 = 3;
              v232 = v259;
            }

            else
            {
              v22 = 0;
              if (__dst == 5 && v23 == 2)
              {
                v20 = 4;
              }

              else
              {
                v20 = -1;
              }
            }
          }
        }
      }
    }
  }

  sub_75BD4(v234);
  sub_75BD4(v10);
  sub_67D08(v19, v213, v214, v215, v216, v217, v218, v219);
  free(v235);
  return 0;
}

void sub_70074()
{
  v0 = off_1AD4E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  bzero(v100, 0x800uLL);
  v98 = 0;
  *v96 = 0u;
  v97 = 0u;
  memset(v95, 0, sizeof(v95));
  bzero(__dst, 0x890uLL);
  v12 = (v11 + 1320);
  *(v11 + 1320) = xmmword_10B710;
  v13 = *(v11 + 1368);
  *(v11 + 1352) = v13;
  *(v11 + 1368) = v13 + v2;
  *(v11 + 1336) = 0xFFFFFFFF00000000;
  if (*(v11 + 1184))
  {
    return;
  }

  if (v10[1] != 77)
  {
    memcpy(__dst, v10, sizeof(__dst));
    v19 = 1;
    atomic_fetch_add_explicit((v11 + 1504), 1uLL, memory_order_relaxed);
    *(v11 + 1324) = 0;
    v20 = *v11;
    v21 = *(*v11 + 72);
    if (v21)
    {
      if ((*(v20 + 26) & 2) != 0)
      {
        LODWORD(__dst[0]) |= 0x40u;
        __dst[4] = v13;
      }

      v22 = v21(*(v20 + 144), __dst);
      v19 = v22 != 0;
      *(v11 + 1324) = v22 == 0;
    }

    v23 = 0;
    if (v6)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = (v8 + 8);
      v32 = 0uLL;
      v16 = 4410440;
      v17 = 4410451;
      v18 = 4411984;
      v33 = 0uLL;
      do
      {
        v34 = *(v31 - 1) & 0xDFDFDF;
        if (v34 <= 0x494C45)
        {
          if ((*(v31 - 1) & 0xDFDFDFu) > 0x434C52)
          {
            if (v34 == 4410451)
            {
              v30 |= 0x10u;
              v25 = *v31;
            }

            else if (v34 == 4411984)
            {
              v30 |= 0x80u;
              v35 = *v31;
              v28 = -1;
              if (*v31 > 67)
              {
                switch(v35)
                {
                  case 'D':
                    v28 = 4;
                    break;
                  case 'E':
                    v28 = 5;
                    break;
                  case 'F':
                    v28 = 6;
                    break;
                }
              }

              else
              {
                switch(v35)
                {
                  case 'A':
                    v28 = 1;
                    break;
                  case 'B':
                    v28 = 2;
                    break;
                  case 'C':
                    v28 = 3;
                    break;
                }
              }
            }
          }

          else if (v34 == 4410435)
          {
            v30 |= 8u;
            v24 = *v31;
          }

          else if (v34 == 4410440)
          {
            v30 |= 4u;
            v23 = *v31;
          }
        }

        else if ((*(v31 - 1) & 0xDFDFDFu) <= 0x4D5442)
        {
          if (v34 == 4803654)
          {
            v30 |= 0x100u;
            v29 = *v31;
          }

          else if (v34 == 5067842)
          {
            v30 |= 2u;
            v33 = *v31;
          }
        }

        else
        {
          switch(v34)
          {
            case 0x544641u:
              v30 |= 0x20u;
              v26 = *v31;
              break;
            case 0x524641u:
              v30 |= 0x40u;
              v27 = *v31;
              break;
            case 0x4D5443u:
              v30 |= 1u;
              v32 = *v31;
              break;
          }
        }

        v31 += 129;
        --v6;
      }

      while (v6);
      v98 = v29;
      DWORD2(v97) = v28;
      *&v97 = __PAIR64__(v27, v26);
      *v96 = v24;
      *&v96[2] = v25;
      *(&v95[2] + 1) = v23;
      *(&v95[1] + 8) = v33;
      *(v95 + 8) = v32;
    }

    else
    {
      LOWORD(v30) = 0;
    }

    LOWORD(v95[0]) = v30;
    if (v19 && HIDWORD(__dst[0]) == 70)
    {
      if ((v30 & 4) != 0 && v23 != -1)
      {
        v36 = sub_6D1E4(v11 + 1456, v23, &__dst[18], &__dst[146], 0x400uLL, v16, v17, v18);
        if (v36 < 0)
        {
          v46 = *__error();
          v44 = "looking up cluster";
          v45 = 1608;
          goto LABEL_74;
        }

        if (v36)
        {
          HIDWORD(__dst[0]) = 120;
          *(v11 + 1336) = 1;
          atomic_fetch_add((v11 + 1552), __dst[8]);
        }
      }

      if (HIDWORD(__dst[0]) == 70)
      {
        if ((v95[0] & 8) != 0 && *v96 != -1)
        {
          v37 = sub_6D1E4(v11 + 1472, *v96, &__dst[18], &__dst[146], 0x400uLL, v16, v17, v18);
          if (v37 < 0)
          {
            v46 = *__error();
            v44 = "looking up cluster";
            v45 = 1630;
            goto LABEL_74;
          }

          if (v37)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1560), __dst[8]);
          }
        }

        if (HIDWORD(__dst[0]) == 70 && (v95[0] & 0x10) != 0 && *&v96[2] != -1 && *(v11 + 8))
        {
          v38 = sub_6D1E4(v11 + 1488, *&v96[2], &__dst[18], &__dst[146], 0x400uLL, v16, v17, v18);
          if (v38 < 0)
          {
            v46 = *__error();
            v44 = "looking up cluster";
            v45 = 1652;
            goto LABEL_74;
          }

          if (v38)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1568), __dst[8]);
          }
        }
      }
    }

    v39 = *(v11 + 1352);
    if (pthread_mutex_lock((v11 + 1192)))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 325, 2, 0, "pthread_mutex_lock", v40, v41, v93);
LABEL_71:
      *v12 = -1;
      goto LABEL_72;
    }

    v47 = *(v11 + 1392);
    v48 = *(v11 + 1384);
    if (v47 >= v48)
    {
      if (v48)
      {
        v48 += v48 >> 1;
      }

      else
      {
        v48 = 128;
      }

      v49 = calloc(v48, 0x910uLL);
      if (!v49)
      {
        v81 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 336, 2, *v81, "malloc", v82, v83, v93);
        pthread_mutex_unlock((v11 + 1192));
        goto LABEL_71;
      }

      v50 = v49;
      if (*(v11 + 1392))
      {
        v51 = 0;
        v52 = *(v11 + 1400);
        v53 = v49;
        do
        {
          memcpy(v53, (*(v11 + 1416) + 2320 * v52), 0x910uLL);
          v54 = *(v11 + 1384);
          if (v52 + 1 < v54)
          {
            v54 = 0;
          }

          v52 = v52 + 1 - v54;
          ++v51;
          v53 += 2320;
        }

        while (v51 < *(v11 + 1392));
      }

      free(*(v11 + 1416));
      *(v11 + 1416) = v50;
      *(v11 + 1384) = v48;
      *(v11 + 1400) = 0;
      v47 = *(v11 + 1392);
    }

    if (v47)
    {
      v55 = *(v11 + 1400);
    }

    else
    {
      v55 = 0;
      *(v11 + 1400) = 0;
    }

    v56 = v55 + v47;
    if (v56 >= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v11 + 1416) + 2320 * (v56 - v57);
    v59 = *(v11 + 1376);
    *(v11 + 1376) = v59 + 1;
    bzero(v58, 0x910uLL);
    memcpy(v58, __dst, 0x890uLL);
    v60 = v95[0];
    *(v58 + 2208) = v95[1];
    *(v58 + 2192) = v60;
    v61 = v95[2];
    v62 = *v96;
    v63 = v97;
    *(v58 + 2272) = v98;
    *(v58 + 2256) = v63;
    *(v58 + 2240) = v62;
    *(v58 + 2224) = v61;
    *(v58 + 2296) = v59;
    *(v58 + 2312) = v39;
    *(v58 + 2304) = v39;
    *(v58 + 2300) = 0;
    v64 = *(v11 + 1392) + 1;
    *(v11 + 1392) = v64;
    if (v64 > *(v11 + 1408))
    {
      *(v11 + 1408) = v64;
    }

    if (**v11 >= 3)
    {
      fprintf(__stderrp, "[%7d] inserted: %s\n", v59, &__dst[18]);
    }

    pthread_mutex_unlock((v11 + 1192));
    *v12 = v59;
    if ((v59 & 0x80000000) == 0)
    {
      if (*(v11 + 1324))
      {
        return;
      }

      v65 = 1;
      atomic_fetch_add_explicit((v11 + 1512), 1uLL, memory_order_relaxed);
      if ((sub_63058(v100, 0x800uLL, (v11 + 12), &__dst[18]) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1690, 2, 0, "invalid path: %s", v66, v67, &__dst[18]);
        v65 = 0;
      }

      v68 = HIDWORD(__dst[0]);
      if (HIDWORD(__dst[0]) == 68)
      {
        if (**v11 >= 3)
        {
          fprintf(__stderrp, "[%7d] DIR mkdir: %s\n", *v12, &__dst[18]);
        }

        memset(&v94, 0, sizeof(v94));
        if (!lstat(v100, &v94) && (v94.st_mode & 0xF000) != 0x4000)
        {
          unlink(v100);
        }

        if (mkdir(v100, 0x1EDu) && *__error() != 17)
        {
          v69 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1706, 2, *v69, "%s", v70, v71, v100);
          v65 = 0;
        }

        if ((__dst[0] & 6) != 0)
        {
          if ((__dst[0] & 4) != 0)
          {
            v72 = HIDWORD(__dst[1]);
          }

          else
          {
            v72 = -1;
          }

          if ((__dst[0] & 2) != 0)
          {
            v73 = __dst[1];
          }

          else
          {
            v73 = -1;
          }

          chown(v100, v73, v72);
        }

        v68 = HIDWORD(__dst[0]);
      }

      if (v68 == 70 && (__dst[0] & 0x200) == 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1720, 2, 0, "Regular file is missing DAT blob: %s", v66, v67, &__dst[18]);
        v65 = 0;
      }

      if (pthread_mutex_lock((v11 + 1056)))
      {
        v77 = "SharedArrayPop: pthread_mutex_lock failed\n";
        v78 = 91;
LABEL_133:
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", v78, 0, v77, v74, v75, v76, v93);
        v44 = "SharedArrayPop";
        v45 = 1729;
      }

      else
      {
        while (1)
        {
          v79 = *(v11 + 1040);
          if (v79)
          {
            break;
          }

          if (pthread_cond_wait((v11 + 1120), (v11 + 1056)))
          {
            v77 = "SharedArrayPop: pthread_cond_wait failed\n";
            v78 = 94;
            goto LABEL_133;
          }
        }

        v80 = v79 - 1;
        *(v11 + 1040) = v80;
        *(v11 + 1340) = *(*(v11 + 1048) + 4 * v80);
        if (pthread_mutex_unlock((v11 + 1056)))
        {
          v77 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v78 = 98;
          goto LABEL_133;
        }

        v84 = *(v11 + 1176) + 304 * *(v11 + 1340);
        if (sub_6D88C(v84 + 144))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1740, 2, 0, "SemAcquire", v85, v86, v93);
          v65 = 0;
        }

        *(v11 + 1344) = 1;
        v94.st_dev = 1;
        if (sub_6D6B8(v84, &v94, 4uLL))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1748, 2, 0, "writeToThread", v87, v88, v93);
          v65 = 0;
        }

        if (sub_6D6B8(v84, __dst, 0x890uLL))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1749, 2, 0, "writeToThread", v89, v90, v93);
          v65 = 0;
        }

        if (sub_6D6B8(v84, v95, 0x58uLL))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1750, 2, 0, "writeToThread", v91, v92, v93);
          if (!sub_6D6B8(v84, (v11 + 1320), 4uLL))
          {
            goto LABEL_75;
          }
        }

        else if (!sub_6D6B8(v84, (v11 + 1320), 4uLL))
        {
          if (v65)
          {
            return;
          }

LABEL_75:
          *(v11 + 1184) = 1;
          return;
        }

        v44 = "writeToThread";
        v45 = 1751;
      }

      goto LABEL_73;
    }

LABEL_72:
    v93 = &__dst[18];
    v44 = "extractInsertEntry: %s";
    v45 = 1676;
LABEL_73:
    v46 = 0;
LABEL_74:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", v45, 2, v46, v44, v42, v43, v93);
    goto LABEL_75;
  }

  *(v11 + 1332) = 1;
  v14 = *(*v11 + 112);
  if (v14)
  {
    v15 = *(*v11 + 144);

    v14(v15, v10, v8, v6, v4, v2);
  }
}

_DWORD *sub_70C08(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  if (result[333])
  {
    v4 = *(*result + 120);
    if (v4)
    {
      result = v4(*(*result + 144), a2);
    }
  }

  if ((v3[330] & 0x80000000) == 0 && !v3[331])
  {
    v5 = *(v3 + 147);
    v6 = v3[335];
    v3[332] = 0;
    v7 = *a2 & 0xDFDFDF;
    if (v7 == 4997953)
    {
      v9 = 4;
    }

    else if (v7 == 5521752)
    {
      v9 = 3;
    }

    else
    {
      v8 = v3 + 332;
      if (v7 != 5521732 || v3[334])
      {
LABEL_15:
        *v8 = 1;
        return result;
      }

      v9 = 2;
    }

    v13 = v9;
    result = sub_6D6B8(v5 + 304 * v6, &v13, 4uLL);
    if (!result)
    {
      return result;
    }

    result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBlobProc", 1790, 2, 0, "writeToThread", v10, v11, v12);
    v8 = v3 + 296;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_70D1C(uint64_t result, char *a2, size_t a3)
{
  v5 = result;
  *(result + 1368) += a3;
  if (*(result + 1332))
  {
    v6 = *(*result + 128);
    if (v6)
    {
      result = v6(*(*result + 144), a2, a3);
    }
  }

  if ((*(v5 + 1320) & 0x80000000) == 0 && !*(v5 + 1324) && !*(v5 + 1328))
  {
    result = sub_6D6B8(*(v5 + 1176) + 304 * *(v5 + 1340), a2, a3);
    if (result)
    {
      result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractPayloadProc", 1819, 2, 0, "extractWriteToThread", v7, v8, v9);
      *(v5 + 1184) = 1;
    }
  }

  return result;
}

uint64_t sub_70DE4(uint64_t result)
{
  v1 = result;
  *(result + 1360) = *(result + 1368);
  if (*(result + 1332))
  {
    v2 = *(*result + 136);
    if (v2)
    {
      result = v2(*(*result + 144));
    }
  }

  if ((*(v1 + 1320) & 0x80000000) == 0)
  {
    if (*(v1 + 1324))
    {
      result = sub_7108C();
      if ((result & 0x80000000) == 0)
      {
LABEL_7:
        *(v1 + 1320) = -1;
        *(v1 + 1340) = -1;
        return result;
      }

      v6 = "Updating entry state";
      v7 = 1870;
    }

    else
    {
      v5 = *(v1 + 1176) + 304 * *(v1 + 1340);
      v10 = 5;
      if (sub_6D6B8(v5, &v10, 4uLL))
      {
        v6 = "extractWriteToThread";
        v7 = 1859;
      }

      else if (sub_6D6B8(v5, (v1 + 1360), 8uLL))
      {
        v6 = "extractWriteToThread";
        v7 = 1860;
      }

      else
      {
        *(v1 + 1344) = 0;
        if (!pthread_mutex_lock((v5 + 32)))
        {
          v8 = *(v5 + 24);
          *(v5 + 24) = v8 + 1;
          if (v8 || !pthread_cond_broadcast((v5 + 96)))
          {
            result = pthread_mutex_unlock((v5 + 32));
            if (!result)
            {
              goto LABEL_7;
            }
          }
        }

        v6 = "SemRelease";
        v7 = 1865;
      }
    }

    result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", v7, 2, 0, v6, v3, v4, v9);
    *(v1 + 1184) = 1;
  }

  return result;
}

uint64_t sub_70F7C(unsigned int *a1, int a2)
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

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_7108C()
{
  v0 = off_1AD4E8();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (pthread_mutex_lock((v0 + 1192)))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 476, 2, 0, "pthread_mutex_lock", v6, v7, v58);
    return 0xFFFFFFFFLL;
  }

  v9 = sub_6D65C(v5, v4);
  if (!v9)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 480, 2, 0, "couldn't locate entry [%d] in queue", v10, v11, v4);
LABEL_18:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v12 = *(v9 + 2300);
  if (v12 <= 2)
  {
    if (v12)
    {
      goto LABEL_16;
    }

    *(v9 + 2300) = v2;
    v12 = v2;
  }

  else if (v12 <= 4 || v12 != 7)
  {
LABEL_16:
    v58 = v4;
    v14 = "Invalid entry state [%d] %s: %s";
    v15 = 485;
LABEL_17:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", v15, 2, 0, v14, v10, v11, v58);
    goto LABEL_18;
  }

  if (**v5 >= 3)
  {
    if (v12 > 7)
    {
      v13 = "???";
    }

    else
    {
      v13 = off_1A9EC0[v12];
    }

    fprintf(__stderrp, "[%7d] retiring %s: %s\n", v4, v13, (v9 + 144));
  }

  if (!*(v5 + 1392))
  {
    v8 = 0;
    goto LABEL_19;
  }

  v17 = *(v5 + 1400);
  v18 = 1;
  do
  {
    v19 = *(v5 + 1416) + 2320 * v17;
    v20 = *(v19 + 2300);
    if (v20 == 1)
    {
      v24 = *(v19 + 4);
      if (v24 == 72)
      {
        bzero(__src, 0x800uLL);
        bzero(v60, 0x800uLL);
        if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v19 + 144)) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 506, 2, 0, "invalid path: %s", v25, v26, v19 - 112);
          goto LABEL_18;
        }

        if (sub_62F94(v60, 0x800uLL, (v5 + 12), (v19 + 1168)))
        {
          v14 = "concatPath";
          v15 = 507;
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(__stderrp, "[%7d] HLINK (legacy) %s -> %s\n", *(v19 + 2296), (v19 + 144), v60);
        }

        unlink(__src);
        if (link(v60, __src))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 521, 2, "%s", v27, v10, v11, __src);
          LODWORD(v20) = 7;
        }

        else
        {
          LODWORD(v20) = 3;
        }

        *(v19 + 2300) = v20;
        v20 = v20;
        goto LABEL_27;
      }

      if (v24 == 120)
      {
        bzero(__src, 0x800uLL);
        bzero(v60, 0x800uLL);
        if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v19 + 144)) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 533, 2, 0, "invalid path: %s", v28, v29, v19 - 112);
          goto LABEL_18;
        }

        if (sub_62F94(v60, 0x800uLL, (v5 + 12), (v19 + 1168)))
        {
          v14 = "concatPath";
          v15 = 534;
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(__stderrp, "[%7d] HLINK %s -> %s\n", *(v19 + 2296), (v19 + 144), (v19 + 1168));
        }

        unlink(__src);
        if (link(v60, __src))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 548, 2, "%s", v30, v10, v11, __src);
          LODWORD(v20) = 7;
        }

        else
        {
          LODWORD(v20) = 3;
        }

        *(v19 + 2300) = v20;
        v20 = v20;
        goto LABEL_27;
      }

      v31 = *(v19 + 4);
      if (v31 != 121)
      {
        if (v31 != 68)
        {
          goto LABEL_64;
        }

        v34 = (*v19 & 8) != 0 && *(v19 + 16) != 0;
        if ((*v19 & 0x10) != 0 && (~*(v19 + 20) & 0x1ED) != 0)
        {
          v34 = 1;
        }

        if (*(v19 + 2288))
        {
          v35 = 0;
        }

        else
        {
          v35 = (*v19 & 0x100) == 0;
        }

        if (v35 && *(v19 + 2280) == 0 && !v34)
        {
          *(v19 + 2300) = 3;
LABEL_28:
          if ((sub_6D348(v5, v19) & 0x80000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 599, 2, 0, "setEntryAttributes failed", v21, v22, v58);
            v23 = 1;
            v20 = 7;
          }

          else
          {
            v23 = 1;
            v20 = 4;
          }
        }

        else
        {
          v23 = 0;
          v20 = 6;
        }

        *(v19 + 2300) = v20;
LABEL_81:
        v38 = *v5;
        if (*(*v5 + 80))
        {
          v39 = *(v38 + 24);
          if ((v39 & 8) != 0)
          {
            *v19 |= 0x20u;
            *(v19 + 24) = v20 == 7;
            v38 = *v5;
            v39 = *(*v5 + 24);
          }

          if ((v39 & 0x20000) != 0)
          {
            *v19 |= 0x40u;
            *(v19 + 32) = *(v19 + 2312);
            v38 = *v5;
          }

          (*(v38 + 80))(*(v38 + 144), v19);
          v20 = *(v19 + 2300);
        }

        if (v20 == 7)
        {
          ++*(v5 + 1448);
        }

        if (**v5 < 2 || v20 == 5)
        {
          if (v23)
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (v20 == 7)
          {
            fprintf(__stderrp, "%s (with errors)\n");
          }

          else
          {
            fprintf(__stderrp, "%s\n");
          }

          if (v23)
          {
LABEL_95:
            sub_75BD4(*(v19 + 2280));
            sub_75BD4(*(v19 + 2288));
            goto LABEL_113;
          }
        }

        v41 = *(v5 + 1432);
        v42 = *(v5 + 1424);
        v43 = *(v5 + 1440);
        if (v41 < v42)
        {
LABEL_105:
          v47 = &v43[16 * v41];
          v48 = pc_zero_coder_encode(__src, 2610, v19, 2320);
          *(v47 + 1) = v48;
          if (v48)
          {
            v51 = v48;
            v52 = malloc(v48);
            *v47 = v52;
            if (v52)
            {
              memcpy(v52, __src, v51);
              ++*(v5 + 1432);
              atomic_fetch_add_explicit((v5 + 1520), 1uLL, memory_order_relaxed);
              goto LABEL_113;
            }

            v54 = *__error();
            v53 = 661;
            v55 = "Allocating deferred entry";
          }

          else
          {
            v53 = 657;
            v54 = 0;
            v55 = "zero_coder_encode";
          }
        }

        else
        {
          v44 = v42 + (v42 >> 1);
          v35 = v42 == 0;
          v45 = 16;
          if (!v35)
          {
            v45 = v44;
          }

          *(v5 + 1424) = v45;
          v46 = reallocf(v43, 16 * v45);
          *(v5 + 1440) = v46;
          if (v46)
          {
            v43 = v46;
            v41 = *(v5 + 1432);
            bzero(&v46[16 * v41], 16 * (*(v5 + 1424) - v41));
            goto LABEL_105;
          }

          v54 = *__error();
          v53 = 646;
          v55 = "Allocating deferred stack";
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", v53, 2, v54, v55, v49, v50, v58);
        goto LABEL_112;
      }

      bzero(__src, 0x800uLL);
      bzero(v60, 0x800uLL);
      if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v19 + 144)) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 560, 2, 0, "invalid path: %s", v32, v33, v19 - 112);
        goto LABEL_18;
      }

      if (sub_62F94(v60, 0x800uLL, (v5 + 12), (v19 + 1168)))
      {
        v14 = "concatPath";
        v15 = 561;
        goto LABEL_17;
      }

      if (**v5 >= 3)
      {
        fprintf(__stderrp, "[%7d] CLONE %s -> %s\n", *(v19 + 2296), (v19 + 144), (v19 + 1168));
      }

      unlink(__src);
      if (clonefile(v60, __src, 0) && (sub_63BD8(v60, 0, 0xFFFFFFFFFFFFFFFFLL, __src) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 572, 2, 0, "cloning file, falling back to copy, failed: %s", v10, v11, __src);
        v18 = 0;
      }

      *(v19 + 2300) = 3;
      v20 = 3;
    }

    else if (!*(v19 + 2300))
    {
      break;
    }

LABEL_27:
    if (v20 == 3)
    {
      goto LABEL_28;
    }

    if ((v20 & 0xFFFFFFFC) == 4)
    {
      v23 = 1;
      goto LABEL_81;
    }

LABEL_64:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 608, 2, 0, "Invalid entry state [%d] %s: %s", v10, v11, v4);
LABEL_112:
    v18 = 0;
LABEL_113:
    bzero(v19, 0x910uLL);
    v56 = *(v5 + 1400);
    if (v56 + 1 == *(v5 + 1384))
    {
      v17 = 0;
    }

    else
    {
      v17 = v56 + 1;
    }

    *(v5 + 1400) = v17;
    v57 = *(v5 + 1392) - 1;
    *(v5 + 1392) = v57;
  }

  while (v57);
  if (v18)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

LABEL_19:
  pthread_mutex_unlock((v5 + 1192));
  return v8;
}

_BYTE *pc_zero_coder_decode(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  v5 = &a1[a2];
  if (a2 >= 8 && a4 >= 9)
  {
    v6 = a1;
    while (1)
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = a3[1];
        a3 += 2;
        if ((v7 & 2) != 0)
        {
LABEL_6:
          v10 = *a3++;
          v9 = v10;
          if ((v7 & 4) != 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v8 = 0;
        ++a3;
        if ((v7 & 2) != 0)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      if ((v7 & 4) != 0)
      {
LABEL_7:
        v12 = *a3++;
        v11 = v12;
        if ((v7 & 8) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

LABEL_11:
      v11 = 0;
      if ((v7 & 8) != 0)
      {
LABEL_8:
        v14 = *a3++;
        v13 = v14;
        goto LABEL_13;
      }

LABEL_12:
      v13 = 0;
LABEL_13:
      *v6 = v8;
      v6[1] = v9;
      v6[2] = v11;
      v6[3] = v13;
      if ((v7 & 0x10) != 0)
      {
        v22 = *a3++;
        v15 = v22;
        if ((v7 & 0x20) != 0)
        {
LABEL_15:
          v17 = *a3++;
          v16 = v17;
          if ((v7 & 0x40) != 0)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_15;
        }
      }

      v16 = 0;
      if ((v7 & 0x40) != 0)
      {
LABEL_16:
        v19 = *a3++;
        v18 = v19;
        if ((v7 & 0x80) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_20:
      v18 = 0;
      if ((v7 & 0x80) != 0)
      {
LABEL_17:
        v21 = *a3++;
        v20 = v21;
        goto LABEL_22;
      }

LABEL_21:
      v20 = 0;
LABEL_22:
      v6[4] = v15;
      v6[5] = v16;
      v6[6] = v18;
      v6[7] = v20;
      v23 = v6 + 16;
      v6 += 8;
      if (v23 > v5 || (a3 + 9) > v4)
      {
        goto LABEL_33;
      }
    }
  }

  v6 = a1;
LABEL_33:
  if (a3 < v4)
  {
    v24 = *a3++;
    v25 = v24 | 0x100;
    while (v6 != v5)
    {
      if (v25)
      {
        if (a3 == v4)
        {
          return (v6 - a1);
        }

        v27 = *a3++;
        v26 = v27;
      }

      else
      {
        v26 = 0;
      }

      *v6++ = v26;
      v28 = v25 > 3;
      v25 >>= 1;
      if (!v28)
      {
        goto LABEL_33;
      }
    }

    v6 = &a1[a2];
  }

  return (v6 - a1);
}

_BYTE *pc_zero_coder_encode(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 9)
  {
    return 0;
  }

  v5 = &a3[a4];
  v6 = a1;
  while ((a3 + 8) <= v5)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    if (!*a3)
    {
      v11 = v6 + 1;
      if (!a3[1])
      {
        goto LABEL_8;
      }

LABEL_7:
      *v11++ = v8;
      v7 |= 2u;
      goto LABEL_8;
    }

    v11 = v6 + 2;
    v6[1] = v7;
    v7 = 1;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v9)
    {
      *v11++ = v9;
      v7 |= 4u;
    }

    if (v10)
    {
      *v11++ = v10;
      v7 |= 8u;
    }

    v12 = a3[5];
    v13 = a3[6];
    v14 = a3[7];
    if (a3[4])
    {
      *v11++ = a3[4];
      v7 |= 0x10u;
    }

    if (v12)
    {
      *v11++ = v12;
      v7 |= 0x20u;
    }

    if (v13)
    {
      *v11++ = v13;
      v7 |= 0x40u;
    }

    if (v14)
    {
      *v11++ = v14;
      v7 |= 0x80u;
    }

    *v6 = v7;
    a3 += 8;
    v6 = v11;
    if (v11 + 9 > &a1[a2])
    {
      return 0;
    }
  }

  if (a3 >= v5)
  {
    v17 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v6 + 1;
    v18 = -1 << (a4 & 7);
    v19 = 1;
    v20 = a3;
    do
    {
      v21 = *v20;
      if (v21)
      {
        *v17++ = v21;
        v18 |= 1 << v15;
      }

      v15 = ++v16;
      v20 = &a3[v19++];
    }

    while (v20 < v5);
    *v6 = v18;
  }

  return (v17 - a1);
}

uint64_t ParallelCompressionGetCompressedSize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  if (a2 >= 0x400)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0;
    v7 = sub_682F8(a1, a2);
    if (v7)
    {
      DWORD2(v20) = a3;
      LODWORD(v20) = 0;
      DWORD1(v20) = sub_62BA4();
      *&v21 = 0x200000;
      *(&v21 + 1) = sub_68370;
      *(&v22 + 1) = v7;
      *&v23 = sub_71D88;
      v24 = &v19;
      if (!ParallelCompressionEncode(&v20, v8, v9, v10, v11, v12, v13, v14))
      {
        if (v19 < v3)
        {
          v3 = v19;
        }

        goto LABEL_9;
      }

      v15 = "ParallelCompressionEncode";
      v16 = 75;
    }

    else
    {
      v15 = "IMemStreamCreate";
      v16 = 64;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", v16, 39, 0, v15, v5, v6, v18);
    v3 = -1;
LABEL_9:
    j__free(v7);
  }

  return v3;
}

uint64_t sub_71D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionDecode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t sub_71DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v18 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v19 = sub_659B0(a4, v11, v12, v13, v14, v15, v16, v17);
    *(v18 + 64) = v19;
    if (!v19)
    {
      v23 = "fail to init buffer";
      v24 = 112;
      v22 = 0;
      goto LABEL_7;
    }

    *v18 = 0;
    *(v18 + 4) = a5;
    *(v18 + 8) = a1;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = sub_66658;
    *(v18 + 40) = sub_66224;
    *(v18 + 48) = v19;
    if (sub_60BD4((v18 + 56), sub_71D9C, v18, 0))
    {
      v22 = *__error();
      v23 = "failed to start decoder thread";
      v24 = 125;
LABEL_7:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", v24, 39, v22, v23, v20, v21, v29);
      sub_71F30(v18);
      return 0;
    }
  }

  else
  {
    v25 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v25, "malloc", v26, v27, v29);
  }

  return v18;
}

void sub_71F30(void *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = sub_666FC(a1[8], v10, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer", v3, v4, v9);
    }

LABEL_7:
    v5 = a1[7];
    if (v5)
    {
      if (sub_60F34(v5))
      {
        v6 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v6, "failed to join decoder thread", v7, v8, v9);
      }
    }

    sub_65E5C(a1[8]);
    free(a1);
  }
}

uint64_t sub_72020(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return sub_666FC(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

size_t sub_72034(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return sub_66224(*(result + 64), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_72044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionEncode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t sub_7208C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v14 = malloc(0x60uLL);
  v22 = v14;
  if (v14)
  {
    v14[10] = 0;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v23 = sub_659B0(a4, v15, v16, v17, v18, v19, v20, v21);
    *(v22 + 88) = v23;
    if (!v23)
    {
      v27 = "init buffer";
      v28 = 204;
      v26 = 0;
      goto LABEL_7;
    }

    *(v22 + 4) = a7;
    *(v22 + 8) = a5;
    *v22 = 0;
    *(v22 + 16) = a6;
    *(v22 + 24) = sub_666FC;
    *(v22 + 32) = sub_66224;
    *(v22 + 40) = v23;
    *(v22 + 48) = a1;
    *(v22 + 56) = a2;
    *(v22 + 64) = a3;
    if (sub_60BD4((v22 + 80), sub_72044, v22, 0))
    {
      v26 = *__error();
      v27 = "failed to start encoder thread";
      v28 = 219;
LABEL_7:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", v28, 39, v26, v27, v24, v25, v40);
      sub_721F8(v22, v32, v33, v34, v35, v36, v37, v38);
      return 0;
    }
  }

  else
  {
    v29 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v29, "malloc", v30, v31, v40);
  }

  return v22;
}

void sub_721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      sub_66658(*(a1 + 88), 0, 0, a4, a5, a6, a7, a8);
    }

    v9 = *(a1 + 80);
    if (v9 && sub_60F34(v9))
    {
      v10 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v10, "failed to join encoder thread", v11, v12, v13);
    }

    sub_65E5C(*(a1 + 88));

    free(a1);
  }
}

uint64_t sub_72290(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return -1;
  }

  v9 = *(a1 + 72);
  if (a3)
  {
    if (v9)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent", a7, a8, vars0);
      return -1;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    *(a1 + 72) = 1;
  }

  v11 = *(a1 + 88);

  return sub_66658(v11, a2, a3, a4, a5, a6, a7, a8);
}

size_t sub_72314(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return sub_66224(*(result + 88), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t *sub_72324(int a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_66F58(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_71DE4(sub_6707C, sub_673E4, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_72408(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFD", 285, 39, *v14, "malloc", v15, v16, v18);
  }

  return v11;
}

void sub_72408(uint64_t a1)
{
  if (a1)
  {
    sub_71F30(*(a1 + 8));
    sub_66F00(*a1);

    free(a1);
  }
}

uint64_t *sub_72454(const char *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_66B80(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_71DE4(sub_6707C, sub_673E4, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_72408(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFilename", 304, 39, *v14, "malloc", v15, v16, v18);
  }

  return v11;
}

uint64_t sub_72538(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0)
  {
    return sub_666FC(*(v3 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t *sub_72554(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    result = sub_673E4(*result);
    v17 = v9[1];
    if (v17)
    {
      v18 = *(v17 + 64);

      return sub_66224(v18, v10, v11, v12, v13, v14, v15, v16, a9);
    }
  }

  return result;
}

void *sub_725A8(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_674D4(a1, a2);
    *v13 = v14;
    if (!v14 || (v22 = sub_7208C(sub_675A0, sub_67760, v14, a3, a4, a5, a6), (v13[1] = v22) == 0))
    {
      sub_7269C(v13, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v23 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v23, "malloc", v24, v25, v27);
  }

  return v13;
}

void sub_7269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_721F8(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
    sub_67550(*a1);

    free(a1);
  }
}

int **sub_726E8(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_673F4(a1, a2);
    *v13 = v14;
    if (!v14 || (v22 = sub_7208C(sub_675A0, sub_67760, v14, a3, a4, a5, a6), (v13[1] = v22) == 0))
    {
      sub_7269C(v13, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v23 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFilename", 374, 39, *v23, "malloc", v24, v25, v27);
  }

  return v13;
}

uint64_t *sub_727E4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    result = sub_67760(*result);
    v17 = v9[1];
    if (v17)
    {
      v18 = *(v17 + 88);

      return sub_66224(v18, v10, v11, v12, v13, v14, v15, v16, a9);
    }
  }

  return result;
}

uint64_t sub_72838(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0xD8uLL);
  v9 = v8;
  if (v8)
  {
    v8[26] = 0;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    if (a4 <= 0x1000)
    {
      a4 = 4096;
    }

    *v8 = 0uLL;
    v10 = sub_75AC4(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_75AC4(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_27;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (sub_75FD4(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      v19 = "couldn't read enough header bytes from compressed file";
      v20 = 465;
      goto LABEL_26;
    }

    v14 = sub_75C80(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v15 = v14;
      if (*v14 == 25200 && *(v14 + 2) == 122)
      {
        v25 = 0;
        while (1)
        {
          v26 = v15[3];
          if (v26 == sub_758D4(v25))
          {
            break;
          }

          if (++v25 == 7)
          {
            if ((*(v9 + 32) & 0x80000000) == 0)
            {
              return v9;
            }

            goto LABEL_12;
          }
        }

        *(v9 + 40) = bswap64(*(v15 + 4));
        *(v9 + 48) = sub_75A04(v25);
        sub_75CDC(*(v9 + 56), 0xCuLL, v36, v37, v38, v39, v40, v41);
        if ((sub_75B58(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          v19 = "MemBufferIncreaseCapacity in";
          v20 = 487;
        }

        else
        {
          if ((sub_75B58(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          v19 = "MemBufferIncreaseCapacity out";
          v20 = 488;
        }

        goto LABEL_26;
      }

LABEL_12:
      if (*v15 == 1484404733 && *(v15 + 2) == 90)
      {
        if (!lzma_stream_decoder())
        {
          *(v9 + 32) = 1;
          return v9;
        }

        v19 = "lzma_stream_decoder";
        v20 = 503;
        goto LABEL_26;
      }

      v18 = *v15 == 23106 && v15[2] == 104;
      if (v18 && v15[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          v19 = "BZ2_bzDecompressInit";
          v20 = 514;
LABEL_26:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", v20, 39, 0, v19, v12, v13, v47);
LABEL_27:
          sub_72DBC(v9);
          return 0;
        }

        v46 = 3;
LABEL_61:
        *(v9 + 32) = v46;
        return v9;
      }

      v27 = *v15;
      if (v27 == 120)
      {
        if (-1108378657 * (v15[1] | 0x7800u) <= 0x8421084)
        {
          if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
          {
            sub_75CDC(*(v9 + 56), 2uLL, v42, v43, v44, v45, v12, v13);
            *(v9 + 32) = 2;
            return v9;
          }

          v19 = "compression_stream_init";
          v20 = 570;
          goto LABEL_26;
        }
      }

      else if (v27 == 31 && v15[1] == 139 && v15[2] == 8)
      {
        if (sub_75FD4(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) < 0)
        {
          v19 = "reading gzip header data";
          v20 = 525;
          goto LABEL_26;
        }

        v28 = sub_75C6C(*(v9 + 56));
        if ((v15[3] & 4) != 0)
        {
          if (v28 <= 0xB)
          {
            v19 = "parsing gzip header";
            v20 = 531;
            goto LABEL_26;
          }

          v33 = *(v15 + 5) + 12;
          if (v33 > v28)
          {
            v19 = "parsing gzip header";
            v20 = 534;
            goto LABEL_26;
          }
        }

        else
        {
          v33 = 10;
        }

        if ((v15[3] & 8) != 0)
        {
          v34 = v33 + 2;
          if (v33 + 2 > v28)
          {
            v19 = "parsing gzip header";
            v20 = 539;
            goto LABEL_26;
          }

          if (v33 + 2 < v28)
          {
            while (v15[v33 + 1])
            {
              if (v28 - 2 == ++v33)
              {
                v34 = v28;
                goto LABEL_43;
              }
            }

            v34 = v33 + 2;
          }
        }

        else
        {
          v34 = v33;
        }

LABEL_43:
        if ((v15[3] & 0x10) != 0)
        {
          v35 = v34 + 2;
          if (v34 + 2 > v28)
          {
            v19 = "parsing gzip header";
            v20 = 545;
            goto LABEL_26;
          }

          if (v34 + 2 < v28)
          {
            while (v15[v34 + 1])
            {
              if (v28 - 2 == ++v34)
              {
                v35 = v28;
                goto LABEL_45;
              }
            }

            v35 = v34 + 2;
          }
        }

        else
        {
          v35 = v34;
        }

LABEL_45:
        if ((v15[3] & 2) != 0)
        {
          v35 += 2;
          if (v35 > v28)
          {
            v19 = "parsing gzip header";
            v20 = 551;
            goto LABEL_26;
          }
        }

        sub_75CDC(*(v9 + 56), v35, v29, v30, v31, v32, v12, v13);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          v19 = "compression_stream_init";
          v20 = 557;
          goto LABEL_26;
        }

        v46 = 2;
        goto LABEL_61;
      }

      v19 = "Could not identify compressed stream format";
      v20 = 579;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v21, "malloc", v22, v23, v47);
  }

  return v9;
}

void sub_72DBC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    switch(v2)
    {
      case 3:
        BZ2_bzDecompressEnd((a1 + 72));
        break;
      case 2:
        compression_stream_destroy((a1 + 72));
        break;
      case 1:
        lzma_end();
        break;
    }

    sub_75BD4(*(a1 + 56));
    sub_75BD4(*(a1 + 64));
    j__free(*(a1 + 24));

    free(a1);
  }
}

uint64_t sub_72E4C(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = sub_682F8(a1, a2);
  if (v4)
  {
    v7 = v4;
    result = sub_72838(sub_68370, sub_683E4, v4, a3);
    if (result)
    {
      *(result + 24) = v7;
      return result;
    }

    j__free(v7);
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed", v5, v6, v9);
  }

  return 0;
}

uint64_t sub_72EE8(uint64_t a1, char *a2, size_t a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!a3)
      {
        return v7;
      }

      v8 = sub_75C6C(*(a1 + 64));
      if (v8)
      {
        if (v8 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v8;
        }

        v10 = sub_75C80(*(a1 + 64));
        memcpy(a2, v10, v9);
        sub_75CDC(*(a1 + 64), v9, v11, v12, v13, v14, v15, v16);
        v7 += v9;
        a3 -= v9;
        if (!a3)
        {
          return v7;
        }

        a2 += v9;
      }

      if (*(a1 + 208))
      {
        return v7;
      }

      v17 = *(a1 + 56);
      if (!*(a1 + 32))
      {
        v43 = sub_75C6C(v17);
        v44 = v43;
        if (v43 <= 0xF)
        {
          if (sub_75FD4(*(a1 + 56), 16 - v43, *a1, *(a1 + 16)) < 0)
          {
            v107 = "reading block header failed";
            v108 = 645;
            goto LABEL_78;
          }

          v45 = sub_75C6C(*(a1 + 56));
          if (!v45)
          {
            *(a1 + 208) = 1;
            return v7;
          }

          v44 = v45;
        }

        v46 = sub_75C80(*(a1 + 56));
        v52 = *v46;
        v51 = v46[1];
        v53 = bswap64(*v46);
        v54 = bswap64(v51);
        v55 = *(a1 + 40);
        if (v53 > v55 || v54 > v55)
        {
          v107 = "invalid block header";
          v108 = 655;
          goto LABEL_78;
        }

        sub_75CDC(*(a1 + 56), 0x10uLL, v47, v48, v49, v50, v18, v19);
        v57 = v54 >= v44 - 16;
        v58 = v54 - (v44 - 16);
        if (v58 != 0 && v57)
        {
          if (sub_75FD4(*(a1 + 56), v58, *a1, *(a1 + 16)) != v58)
          {
            v107 = "reading block payload failed";
            v108 = 665;
            goto LABEL_78;
          }

          sub_75C6C(*(a1 + 56));
        }

        if (v52 == v51)
        {
          v59 = sub_75C90(*(a1 + 64));
          v60 = sub_75C80(*(a1 + 56));
          memcpy(v59, v60, v53);
        }

        else
        {
          v97 = *(a1 + 48);
          v98 = sub_75C90(*(a1 + 64));
          v99 = sub_75C80(*(a1 + 56));
          if (v97(v98, v53, v99, v54) != v53)
          {
            v107 = "decoding block payload failed";
            v108 = 677;
            goto LABEL_78;
          }
        }

        sub_75CDC(*(a1 + 56), v54, v61, v62, v63, v64, v18, v19);
        sub_75D64(*(a1 + 64), v53, v100, v101, v102, v103, v104, v105);
        goto LABEL_64;
      }

      if (sub_75FD4(v17, 0xFFFFFFFFFFFFFFFFLL, *a1, *(a1 + 16)) < 0)
      {
        v107 = "reading payload failed";
        v108 = 687;
        goto LABEL_78;
      }

      v20 = sub_75C80(*(a1 + 56));
      v21 = sub_75C6C(*(a1 + 56));
      v22 = sub_75C90(*(a1 + 64));
      v23 = sub_75C74(*(a1 + 64));
      v26 = v23;
      v27 = *(a1 + 32);
      switch(v27)
      {
        case 1:
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 96) = v22;
          *(a1 + 104) = v23;
          v80 = lzma_code();
          v87 = v80;
          if (v80 > 0xA || ((1 << v80) & 0x403) == 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload", v85, v86, v110);
            v106 = 1;
            goto LABEL_62;
          }

          v88 = *(a1 + 72);
          v89 = *(a1 + 96);
          sub_75CDC(*(a1 + 56), v88 - v20, v81, v82, v83, v84, v85, v86);
          if (v89 == v22 && v88 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(*(a1 + 64), v89 - v22, v90, v91, v92, v93, v94, v95);
          if (v87 != 1)
          {
            v106 = 14;
LABEL_62:
            if (v87 > 0xA || ((1 << v87) & 0x403) == 0)
            {
              continue;
            }

            goto LABEL_64;
          }

          break;
        case 3:
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 96) = v22;
          *(a1 + 104) = v23;
          v65 = BZ2_bzDecompress((a1 + 72));
          if (v65 < 0)
          {
            v107 = "decoding bzip2 payload";
            v108 = 722;
            goto LABEL_78;
          }

          v70 = v65;
          v71 = *(a1 + 72);
          v72 = *(a1 + 96);
          sub_75CDC(*(a1 + 56), v71 - v20, v66, v67, v68, v69, v18, v19);
          if (v72 == v22 && v71 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(*(a1 + 64), v72 - v22, v73, v74, v75, v76, v77, v78);
          if (v70 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          *(a1 + 88) = v20;
          *(a1 + 96) = v21;
          *(a1 + 72) = v22;
          *(a1 + 80) = v23;
          v28 = compression_stream_process((a1 + 72), 0);
          if (v28 < 0)
          {
            v107 = "decoding zlib payload";
            v108 = 706;
            goto LABEL_78;
          }

          v33 = v28;
          v34 = *(a1 + 96);
          v35 = *(a1 + 80);
          sub_75CDC(*(a1 + 56), v21 - v34, v29, v30, v31, v32, v18, v19);
          if (v26 == v35 && v21 == v34)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(*(a1 + 64), v26 - v35, v36, v37, v38, v39, v40, v41);
          if (v33 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d", v24, v25, *(a1 + 32));
          return -1;
      }

      *(a1 + 208) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        v107 = "Truncated stream";
        v108 = 753;
LABEL_78:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", v108, 39, 0, v107, v18, v19, v110);
        return -1;
      }

      v106 = 0;
    }

    while (!v106);
  }

  return -1;
}

uint64_t sub_733E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v2(*(result + 16));
    }

    v3 = *(v1 + 24);

    return sub_683E4(v3);
  }

  return result;
}

void *sub_7342C(int a1, unint64_t st_size, unint64_t a3, unsigned int a4)
{
  v8 = calloc(1uLL, 0x70uLL);
  if (!v8)
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", 889, 39, *v14, "malloc", v15, v16, v44);
    return v8;
  }

  memset(&v45, 0, sizeof(v45));
  if (fstat(a1, &v45))
  {
    v9 = *__error();
    v12 = "accessing file";
    v13 = 896;
    goto LABEL_20;
  }

  if (v45.st_size < st_size)
  {
    st_size = v45.st_size;
  }

  if (st_size + a3 > v45.st_size || a3 == -1)
  {
    a3 = v45.st_size - st_size;
  }

  *v8 = a1;
  if (pread(a1, &__buf, 0xCuLL, st_size) != 12)
  {
    v12 = "reading file header";
    v13 = 906;
    goto LABEL_19;
  }

  if (__buf != 25200 || v48 != 122)
  {
    v12 = "invalid file header";
    v13 = 907;
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v20 = v49;
  if (v49 <= 0x64u)
  {
    switch(v49)
    {
      case '-':
        v21 = 6;
        break;
      case '4':
        v21 = 3;
        break;
      case 'b':
        v21 = 5;
        break;
      default:
        goto LABEL_35;
    }
  }

  else if (v49 > 0x77u)
  {
    if (v49 == 120)
    {
      v21 = 1;
    }

    else
    {
      if (v49 != 122)
      {
        goto LABEL_35;
      }

      v21 = 0;
    }
  }

  else
  {
    if (v49 != 101)
    {
      if (v49 == 102)
      {
        v21 = 2;
        goto LABEL_39;
      }

LABEL_35:
      v8[2] = 0;
LABEL_57:
      v44 = v20;
      v12 = "Unsupported decoder in file header: %c";
      v13 = 920;
      goto LABEL_19;
    }

    v21 = 4;
  }

LABEL_39:
  v22 = sub_75A04(v21);
  v8[2] = v22;
  if (!v22)
  {
    v20 = v49;
    goto LABEL_57;
  }

  *(v8 + 8) = bswap64(v50);
  v23 = st_size + 12;
  v24 = a3 + st_size;
  if (v23 < v24)
  {
    v25 = 0;
    v26 = 0;
    while (1)
    {
      if (pread(*v8, v46, 0x10uLL, v23) != 16)
      {
        v44 = v23;
        v12 = "reading block header at offset %llu";
        v13 = 932;
        goto LABEL_19;
      }

      v27 = bswap64(v46[0]);
      v28 = bswap64(v46[1]);
      v29 = *(v8 + 8);
      if (v29 < v27 || v29 < v28)
      {
        v12 = "Invalid sizes in file block header";
        v13 = 936;
        goto LABEL_19;
      }

      v32 = v8[5];
      v31 = v8[6];
      if (v32 >= v25)
      {
        if (v25)
        {
          v25 += v25 >> 1;
        }

        else
        {
          v25 = 32;
        }

        v31 = reallocf(v31, 32 * v25);
        v8[6] = v31;
        if (!v31)
        {
          v9 = *__error();
          v12 = "malloc";
          v13 = 944;
LABEL_20:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", v13, 39, v9, v12, v10, v11, v44);
          sub_7392C(v8);
          return 0;
        }

        v32 = v8[5];
      }

      v33 = &v31[32 * v32];
      *v33 = v26;
      *(v33 + 2) = v27;
      *(v33 + 2) = v23 + 16;
      *(v33 + 6) = v28;
      *(v33 + 7) = -1;
      v8[5] = v32 + 1;
      v23 += 16 + v28;
      v26 += v27;
      if (v23 >= v24)
      {
        goto LABEL_59;
      }
    }
  }

  v26 = 0;
LABEL_59:
  if (v23 != v24)
  {
    v12 = "extra bytes found in file";
    v13 = 961;
    goto LABEL_19;
  }

  v8[3] = v26;
  *(v8 + 14) = a4;
  v34 = calloc(a4, 0x10uLL);
  v8[8] = v34;
  if (!v34)
  {
    v9 = *__error();
    v12 = "malloc";
    v13 = 967;
    goto LABEL_20;
  }

  v35 = calloc(*(v8 + 14), *(v8 + 8));
  v8[9] = v35;
  if (!v35)
  {
    v9 = *__error();
    v12 = "malloc";
    v13 = 969;
    goto LABEL_20;
  }

  v36 = *(v8 + 14);
  if (v36)
  {
    v37 = (v36 + 1) & 0x1FFFFFFFELL;
    v38 = vdupq_n_s64(v36 - 1);
    v39 = xmmword_10A0F0;
    v40 = (v8[8] + 16);
    v41 = vdupq_n_s64(2uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v38, v39));
      if (v42.i8[0])
      {
        *(v40 - 2) = -1;
      }

      if (v42.i8[4])
      {
        *v40 = -1;
      }

      v39 = vaddq_s64(v39, v41);
      v40 += 4;
      v37 -= 2;
    }

    while (v37);
  }

  v43 = malloc(*(v8 + 8));
  v8[10] = v43;
  if (!v43)
  {
    v9 = *__error();
    v12 = "malloc";
    v13 = 977;
    goto LABEL_20;
  }

  return v8;
}

void sub_7392C(void **a1)
{
  if (a1)
  {
    free(a1[6]);
    free(a1[8]);
    free(a1[9]);
    free(a1[10]);

    free(a1);
  }
}

uint64_t sub_73988(uint64_t a1, char *__dst, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++*(a1 + 8);
  if (a3)
  {
    v10 = a3;
    v12 = 0;
    v47 = (a1 + 88);
    v45 = (a1 + 96);
    while (1)
    {
      if (a4 >= *(a1 + 24))
      {
        goto LABEL_38;
      }

      v13 = *(a1 + 32);
      v14 = a4 / v13;
      if (a4 / v13 >= *(a1 + 40))
      {
        break;
      }

      v15 = *(a1 + 48);
      v16 = v15 + 32 * v14;
      v17 = a4 % v13;
      v18 = *(v16 + 8);
      if (v18 <= (a4 % v13))
      {
        v36 = "Block offset out of range";
        v37 = 1000;
        goto LABEL_49;
      }

      v19 = (v18 - v17);
      if (v10 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v10;
      }

      if (!v20)
      {
        v36 = "Invalid block size in read";
        v37 = 1003;
        goto LABEL_49;
      }

      v21 = *(v16 + 28);
      if (v21 == -1)
      {
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);
        if (v23)
        {
          v25 = 0;
          v26 = (v24 + 8);
          LODWORD(v21) = -1;
          while (*(v26 - 1) != -1)
          {
            if (v21 == -1 || *v26 < *(v24 + 16 * v21 + 8))
            {
              LODWORD(v21) = v25;
            }

            ++v25;
            v26 += 2;
            if (v23 == v25)
            {
              goto LABEL_23;
            }
          }

          LODWORD(v21) = v25;
        }

        else
        {
          LODWORD(v21) = -1;
        }

LABEL_23:
        v27 = (v24 + 16 * v21);
        v28 = *(a1 + 72);
        if (*v27 != -1)
        {
          *(v15 + 32 * *v27 + 28) = -1;
          *v27 = -1;
        }

        v46 = (v24 + 16 * v21);
        v29 = (v21 * v13);
        v30 = *(v16 + 24);
        v31 = *a1;
        if (v18 == v30)
        {
          v32 = pread(v31, (v28 + v29), v18, *(v16 + 16));
          if (v32 < 0)
          {
            v40 = *__error();
            v38 = "read block";
            v39 = 862;
            goto LABEL_48;
          }

          if (*(v16 + 8) != v32)
          {
            v38 = "Truncated block";
            v39 = 863;
            goto LABEL_47;
          }
        }

        else
        {
          v43 = v29;
          v44 = v28;
          v33 = pread(v31, *(a1 + 80), v30, *(v16 + 16));
          if (v33 < 0)
          {
            v40 = *__error();
            v38 = "read block";
            v39 = 870;
            goto LABEL_48;
          }

          if (*(v16 + 24) != v33)
          {
            v38 = "Truncated block";
            v39 = 871;
LABEL_47:
            v40 = 0;
LABEL_48:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "loadBlock", v39, 39, v40, v38, a7, a8, v42);
            v36 = "loading block";
            v37 = 1006;
            goto LABEL_49;
          }

          v34 = (*(a1 + 16))(v44 + v43, *(a1 + 32), *(a1 + 80));
          if (v34 < 0 || *(v16 + 8) != v34)
          {
            v38 = "decoding compressed block";
            v39 = 874;
            goto LABEL_47;
          }
        }

        *(v16 + 28) = v21;
        v22 = v45;
        *v46 = v14;
      }

      else
      {
        v22 = v47;
        if (*(*(a1 + 64) + 16 * v21) != v14)
        {
          v38 = "Cache inconsistency";
          v39 = 835;
          goto LABEL_47;
        }
      }

      ++*v22;
      if (v21 >= *(a1 + 56))
      {
        v36 = "Invalid cache index";
        v37 = 1007;
        goto LABEL_49;
      }

      v35 = *(a1 + 72);
      *(*(a1 + 64) + 16 * v21 + 8) = *(a1 + 8);
      memcpy(__dst, (v35 + (*(a1 + 32) * v21) + v17), v20);
      __dst += v20;
      a4 += v20;
      v12 += v20;
      v10 -= v20;
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    v36 = "Block index out of range";
    v37 = 997;
LABEL_49:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", v37, 39, 0, v36, a7, a8, v42);
    return -1;
  }

  v12 = 0;
LABEL_38:
  *(a1 + 104) += v12;
  return v12;
}

uint64_t sub_73D8C(uint64_t result)
{
  if (result)
  {
    *(result + 4) = 1;
  }

  return result;
}

size_t sub_73D9C(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t sub_73DDC(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

uint64_t sub_73E1C(unsigned __int16 a1)
{
  v1 = (((a1 & 0xF000) - 4096) >> 12) - 3;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_10B7B0[v1];
  }
}

uint64_t sub_73E4C(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_10B780[v1 >> 12];
  }
}

void sub_73E7C(_DWORD *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  *(a1 + 1) = bswap64(*(a2 + 2));
  *a1 = *(a2 + 1);
  a1[4] = bswap32(*(a2 + 24)) >> 16;
  a1[5] = bswap32(*(a2 + 26)) >> 16;
  a1[6] = bswap32(*(a2 + 28)) >> 16;
  a1[7] = bswap32(*(a2 + 18));
  *(a1 + 5) = bswap64(*(a2 + 10));
}

void sub_73F04(unsigned int *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v5;
    v5 = *(a2 + 16 + v4++) & 7 | (8 * v5);
  }

  while (v4 != 8);
  v7 = ((((8 * v6) & 0xF000) - 4096) >> 12) - 3;
  if (v7 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_10B7B0[v7];
  }

  v9 = 0;
  v10 = 0;
  *a1 = v8;
  a1[6] = v5 & 0xFFF;
  do
  {
    v11 = *(a2 + 64 + v9++) & 7 | (8 * v10);
    v10 = v11;
  }

  while (v9 != 4);
  v12 = 0;
  v13 = 0;
  v14 = v11 << 24;
  do
  {
    v15 = *(a2 + 68 + v12++) & 7 | (8 * v13);
    v13 = v15;
  }

  while (v12 != 8);
  v16 = 0;
  v17 = 0;
  *(a1 + 1) = v15 + (v14 & 0x1FF000000);
  do
  {
    v18 = *(a2 + 47 + v16++) & 7 | (8 * v17);
    v17 = v18;
  }

  while (v16 != 4);
  v19 = 0;
  v20 = 0;
  v21 = v18 << 24;
  do
  {
    v22 = *(a2 + 51 + v19++) & 7 | (8 * v20);
    v20 = v22;
  }

  while (v19 != 8);
  v23 = 0;
  v24 = 0;
  *(a1 + 5) = v22 + (v21 & 0x1FF000000);
  do
  {
    v25 = *(a2 + 22 + v23++) & 7 | (8 * v24);
    v24 = v25;
  }

  while (v23 != 8);
  v26 = 0;
  v27 = 0;
  a1[4] = v25 & 0x3FFFF;
  do
  {
    v28 = *(a2 + 28 + v26++) & 7 | (8 * v27);
    v27 = v28;
  }

  while (v26 != 8);
  v29 = 0;
  v30 = 0;
  a1[5] = v28 & 0x3FFFF;
  do
  {
    v31 = *(a2 + 10 + v29++) & 7 | (8 * v30);
    v30 = v31;
  }

  while (v29 != 8);
  *(a1 + 4) = v31 & 0x3FFFF;
}

void sub_740C4(unsigned int *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 14 + v4);
    v5 *= 16;
    v7 = v6 - 48;
    if ((v6 - 48) <= 0x36)
    {
      if (((1 << v7) & 0x3FF) != 0)
      {
        v5 = v5 + v6 - 48;
      }

      else if (((1 << v7) & 0x7E0000) != 0)
      {
        v5 = v5 + v6 - 55;
      }

      else if (((1 << v7) & 0x7E000000000000) != 0)
      {
        v5 = v5 + v6 - 87;
      }
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = (((v5 & 0xF000) - 4096) >> 12) - 3;
  if (v8 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_10B7B0[v8];
  }

  v10 = 0;
  v11 = 0;
  *a1 = v9;
  a1[6] = v5 & 0xFFF;
  do
  {
    v12 = *(a2 + 54 + v10);
    v11 *= 16;
    v13 = v12 - 48;
    if ((v12 - 48) <= 0x36)
    {
      if (((1 << v13) & 0x3FF) != 0)
      {
        v11 = v11 + v12 - 48;
      }

      else if (((1 << v13) & 0x7E0000) != 0)
      {
        v11 = v11 + v12 - 55;
      }

      else if (((1 << v13) & 0x7E000000000000) != 0)
      {
        v11 = v11 + v12 - 87;
      }
    }

    ++v10;
  }

  while (v10 != 8);
  v14 = 0;
  v15 = 0;
  *(a1 + 1) = v11;
  do
  {
    v16 = *(a2 + 46 + v14);
    v15 *= 16;
    v17 = v16 - 48;
    if ((v16 - 48) <= 0x36)
    {
      if (((1 << v17) & 0x3FF) != 0)
      {
        v15 = v15 + v16 - 48;
      }

      else if (((1 << v17) & 0x7E0000) != 0)
      {
        v15 = v15 + v16 - 55;
      }

      else if (((1 << v17) & 0x7E000000000000) != 0)
      {
        v15 = v15 + v16 - 87;
      }
    }

    ++v14;
  }

  while (v14 != 8);
  v18 = 0;
  v19 = 0;
  *(a1 + 5) = v15;
  do
  {
    v20 = *(a2 + 22 + v18);
    v19 *= 16;
    v21 = v20 - 48;
    if ((v20 - 48) <= 0x36)
    {
      if (((1 << v21) & 0x3FF) != 0)
      {
        v19 = v19 + v20 - 48;
      }

      else if (((1 << v21) & 0x7E0000) != 0)
      {
        v19 = v19 + v20 - 55;
      }

      else if (((1 << v21) & 0x7E000000000000) != 0)
      {
        v19 = v19 + v20 - 87;
      }
    }

    ++v18;
  }

  while (v18 != 8);
  v22 = 0;
  v23 = 0;
  a1[4] = v19;
  do
  {
    v24 = *(a2 + 30 + v22);
    v23 *= 16;
    v25 = v24 - 48;
    if ((v24 - 48) <= 0x36)
    {
      if (((1 << v25) & 0x3FF) != 0)
      {
        v23 = v23 + v24 - 48;
      }

      else if (((1 << v25) & 0x7E0000) != 0)
      {
        v23 = v23 + v24 - 55;
      }

      else if (((1 << v25) & 0x7E000000000000) != 0)
      {
        v23 = v23 + v24 - 87;
      }
    }

    ++v22;
  }

  while (v22 != 8);
  v26 = 0;
  v27 = 0;
  a1[5] = v23;
  do
  {
    v28 = *(a2 + 6 + v26);
    v27 *= 16;
    v29 = v28 - 48;
    if ((v28 - 48) <= 0x36)
    {
      if (((1 << v29) & 0x3FF) != 0)
      {
        v27 = v27 + v28 - 48;
      }

      else if (((1 << v29) & 0x7E0000) != 0)
      {
        v27 = v27 + v28 - 55;
      }

      else if (((1 << v29) & 0x7E000000000000) != 0)
      {
        v27 = v27 + v28 - 87;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  *(a1 + 4) = v27;
}

void sub_743F4(_DWORD *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = *(a2 + 22);
  v5 = *(a2 + 2);
  v6 = *(a2 + 1);
  v7 = *a1 | 1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v8 = 76;
      goto LABEL_11;
    }

    if (v6 == 4)
    {
      v8 = 72;
      goto LABEL_11;
    }

LABEL_8:
    v7 = *a1 & 0xFFFFFFFE;
    v8 = a1[1];
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    v8 = 70;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    goto LABEL_8;
  }

  v8 = 68;
LABEL_11:
  a1[1] = v8;
LABEL_12:
  v9 = bswap64(v5);
  *a1 = v7 | 2;
  a1[2] = bswap32(*(a2 + 24)) >> 16;
  *a1 = v7 | 6;
  a1[3] = bswap32(*(a2 + 26)) >> 16;
  *a1 = v7 | 0x16;
  a1[5] = bswap32(*(a2 + 28)) >> 16;
  *a1 = v7 | 0x1E;
  a1[4] = bswap32(*(a2 + 18));
  v10 = v7 | 0x11E;
  *a1 = v7 | 0x11E;
  *(a1 + 6) = bswap64(*(a2 + 10));
  if (v8 == 70)
  {
    v10 = v7 | 0x31E;
    *a1 = v7 | 0x31E;
    *(a1 + 8) = v9;
  }

  if (v4)
  {
    v11 = __rev16(v4);
    v10 |= 0x8000u;
    *a1 = v10;
    memcpy(a1 + 36, (a2 + 30), v11);
    v12 = v11 + 30;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v12 = 30;
    if (!v5)
    {
      return;
    }
  }

  if ((v8 | 4) == 0x4C)
  {
    *a1 = v10 | 0x10000;

    memcpy(a1 + 292, (a2 + v12), v9);
  }
}

void *sub_745B0(int *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 57 + v4++) & 7 | (8 * v5);
    v5 = v6;
  }

  while (v4 != 8);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a2 + 64 + v7++) & 7 | (8 * v8);
    v8 = v9;
  }

  while (v7 != 4);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(a2 + 68 + v10++) & 7 | (8 * v11);
    v11 = v12;
  }

  while (v10 != 8);
  v13 = 0;
  v14 = 0;
  v15 = (v9 << 24) & 0x1FF000000;
  do
  {
    v16 = *(a2 + 16 + v13++) & 7 | (8 * v14);
    v14 = v16;
  }

  while (v13 != 8);
  v17 = v6 & 0x3FFFF;
  v18 = *a1;
  result = sub_73E4C(v16);
  v20 = result;
  v21 = 0;
  v22 = 0;
  a1[5] = v16 & 0xFFF;
  *a1 = v18 | 0x111;
  a1[1] = result;
  do
  {
    v23 = *(a2 + 47 + v21++) & 7 | (8 * v22);
    v22 = v23;
  }

  while (v21 != 4);
  v24 = 0;
  v25 = 0;
  v26 = v23 << 24;
  do
  {
    v27 = *(a2 + 51 + v24++) & 7 | (8 * v25);
    v25 = v27;
  }

  while (v24 != 8);
  v28 = 0;
  v29 = 0;
  *(a1 + 6) = v27 + (v26 & 0x1FF000000);
  *a1 = v18 | 0x113;
  do
  {
    v30 = *(a2 + 22 + v28++) & 7 | (8 * v29);
    v29 = v30;
  }

  while (v28 != 8);
  v31 = 0;
  v32 = 0;
  a1[2] = v30 & 0x3FFFF;
  *a1 = v18 | 0x117;
  do
  {
    v33 = *(a2 + 28 + v31++) & 7 | (8 * v32);
    v32 = v33;
  }

  while (v31 != 8);
  v34 = 0;
  v35 = 0;
  a1[3] = v33 & 0x3FFFF;
  *a1 = v18 | 0x157;
  do
  {
    v36 = *(a2 + 10 + v34++) & 7 | (8 * v35);
    v35 = v36;
  }

  while (v34 != 8);
  v37 = 0;
  v38 = 0;
  *(a1 + 4) = v36 & 0x3FFFF;
  v39 = v18 | 0x177;
  *a1 = v18 | 0x177;
  do
  {
    v40 = *(a2 + 40 + v37++) & 7 | (8 * v38);
    v38 = v40;
  }

  while (v37 != 8);
  v41 = v12 + v15;
  a1[6] = v40 & 0x3FFFF;
  if (result == 70)
  {
    v39 = v18 | 0x377;
    *a1 = v18 | 0x377;
    *(a1 + 8) = v41;
  }

  if (v17)
  {
    v39 |= 0x8000u;
    *a1 = v39;
    result = memcpy(a1 + 36, (a2 + 76), v17);
    v42 = v17 + 76;
    if (!v41)
    {
      return result;
    }
  }

  else
  {
    v42 = 76;
    if (!v41)
    {
      return result;
    }
  }

  if ((v20 | 4) == 0x4C)
  {
    *a1 = v39 | 0x10000;

    return memcpy(a1 + 292, (a2 + v42), v41);
  }

  return result;
}

void *sub_74880(int *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 94 + v4);
    v5 *= 16;
    v7 = v6 - 48;
    if ((v6 - 48) <= 0x36)
    {
      if (((1 << v7) & 0x3FF) != 0)
      {
        v5 = v5 + v6 - 48;
      }

      else if (((1 << v7) & 0x7E0000) != 0)
      {
        v5 = v5 + v6 - 55;
      }

      else if (((1 << v7) & 0x7E000000000000) != 0)
      {
        v5 = v5 + v6 - 87;
      }
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(a2 + 54 + v8);
    v9 *= 16;
    v11 = v10 - 48;
    if ((v10 - 48) <= 0x36)
    {
      if (((1 << v11) & 0x3FF) != 0)
      {
        v9 = v9 + v10 - 48;
      }

      else if (((1 << v11) & 0x7E0000) != 0)
      {
        v9 = v9 + v10 - 55;
      }

      else if (((1 << v11) & 0x7E000000000000) != 0)
      {
        v9 = v9 + v10 - 87;
      }
    }

    ++v8;
  }

  while (v8 != 8);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(a2 + 14 + v12);
    v13 *= 16;
    v15 = v14 - 48;
    if ((v14 - 48) <= 0x36)
    {
      if (((1 << v15) & 0x3FF) != 0)
      {
        v13 = v13 + v14 - 48;
      }

      else if (((1 << v15) & 0x7E0000) != 0)
      {
        v13 = v13 + v14 - 55;
      }

      else if (((1 << v15) & 0x7E000000000000) != 0)
      {
        v13 = v13 + v14 - 87;
      }
    }

    ++v12;
  }

  while (v12 != 8);
  v16 = *a1;
  result = sub_73E4C(v13);
  v18 = result;
  v19 = 0;
  v20 = 0;
  a1[5] = v13 & 0xFFF;
  *a1 = v16 | 0x111;
  a1[1] = result;
  do
  {
    v21 = *(a2 + 46 + v19);
    v20 *= 16;
    v22 = v21 - 48;
    if ((v21 - 48) <= 0x36)
    {
      if (((1 << v22) & 0x3FF) != 0)
      {
        v20 = v20 + v21 - 48;
      }

      else if (((1 << v22) & 0x7E0000) != 0)
      {
        v20 = v20 + v21 - 55;
      }

      else if (((1 << v22) & 0x7E000000000000) != 0)
      {
        v20 = v20 + v21 - 87;
      }
    }

    ++v19;
  }

  while (v19 != 8);
  v23 = 0;
  v24 = 0;
  *(a1 + 6) = v20;
  *a1 = v16 | 0x113;
  do
  {
    v25 = *(a2 + 22 + v23);
    v24 *= 16;
    v26 = v25 - 48;
    if ((v25 - 48) <= 0x36)
    {
      if (((1 << v26) & 0x3FF) != 0)
      {
        v24 = v24 + v25 - 48;
      }

      else if (((1 << v26) & 0x7E0000) != 0)
      {
        v24 = v24 + v25 - 55;
      }

      else if (((1 << v26) & 0x7E000000000000) != 0)
      {
        v24 = v24 + v25 - 87;
      }
    }

    ++v23;
  }

  while (v23 != 8);
  v27 = 0;
  v28 = 0;
  a1[2] = v24;
  *a1 = v16 | 0x117;
  do
  {
    v29 = *(a2 + 30 + v27);
    v28 *= 16;
    v30 = v29 - 48;
    if ((v29 - 48) <= 0x36)
    {
      if (((1 << v30) & 0x3FF) != 0)
      {
        v28 = v28 + v29 - 48;
      }

      else if (((1 << v30) & 0x7E0000) != 0)
      {
        v28 = v28 + v29 - 55;
      }

      else if (((1 << v30) & 0x7E000000000000) != 0)
      {
        v28 = v28 + v29 - 87;
      }
    }

    ++v27;
  }

  while (v27 != 8);
  v31 = 0;
  v32 = 0;
  a1[3] = v28;
  *a1 = v16 | 0x157;
  do
  {
    v33 = *(a2 + 6 + v31);
    v32 *= 16;
    v34 = v33 - 48;
    if ((v33 - 48) <= 0x36)
    {
      if (((1 << v34) & 0x3FF) != 0)
      {
        v32 = v32 + v33 - 48;
      }

      else if (((1 << v34) & 0x7E0000) != 0)
      {
        v32 = v32 + v33 - 55;
      }

      else if (((1 << v34) & 0x7E000000000000) != 0)
      {
        v32 = v32 + v33 - 87;
      }
    }

    ++v31;
  }

  while (v31 != 8);
  v35 = 0;
  v36 = 0;
  *(a1 + 4) = v32;
  do
  {
    v37 = *(a2 + 78 + v35);
    v36 *= 16;
    v38 = v37 - 48;
    if ((v37 - 48) <= 0x36)
    {
      if (((1 << v38) & 0x3FF) != 0)
      {
        v36 = v36 + v37 - 48;
      }

      else if (((1 << v38) & 0x7E0000) != 0)
      {
        v36 = v36 + v37 - 55;
      }

      else if (((1 << v38) & 0x7E000000000000) != 0)
      {
        v36 = v36 + v37 - 87;
      }
    }

    ++v35;
  }

  while (v35 != 8);
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = *(a2 + 86 + v39);
    v40 *= 16;
    v42 = v41 - 48;
    if ((v41 - 48) <= 0x36)
    {
      if (((1 << v42) & 0x3FF) != 0)
      {
        v40 = v40 + v41 - 48;
      }

      else if (((1 << v42) & 0x7E0000) != 0)
      {
        v40 = v40 + v41 - 55;
      }

      else if (((1 << v42) & 0x7E000000000000) != 0)
      {
        v40 = v40 + v41 - 87;
      }
    }

    ++v39;
  }

  while (v39 != 8);
  v43 = v16 | 0x177;
  *a1 = v16 | 0x177;
  a1[6] = v40 + (v36 << 24);
  if (result == 70)
  {
    v43 = v16 | 0x377;
    *a1 = v16 | 0x377;
    *(a1 + 8) = v9;
  }

  if (v5)
  {
    v43 |= 0x8000u;
    *a1 = v43;
    result = memcpy(a1 + 36, (a2 + 110), v5);
    v44 = v5 + 110;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v44 = 110;
    if (!v9)
    {
      return result;
    }
  }

  if ((v18 | 4) == 0x4C)
  {
    *a1 = v43 | 0x10000;

    return memcpy(a1 + 292, (a2 + v44), v9);
  }

  return result;
}