uint64_t aaDecompressionStreamRefill(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

size_t aaDecompressionStreamReadInput(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t aaDecompressionStreamClose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    IDecoderStreamDestroy(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

size_t aaDecompressionStreamRead(uint64_t a1, uint64_t a2, size_t nbyte, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v10 = nbyte;
  v13 = *(a1 + 72);
  if (v13)
  {

    return IDecoderStreamRead(v13, a2, nbyte);
  }

  v14 = *(a1 + 56);
  if (v14 == -1)
  {
    return -1;
  }

  if (!v14)
  {

    return aaDecompressionStreamReadInput(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      if (v10 >= v17)
      {
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = v10;
      }

      memcpy((a2 + v16), *(a1 + 48), v8);
      if ((v8 & 0x8000000000000000) != 0)
      {
        return v8;
      }

      v18 = *(a1 + 32);
      v19 = v18 - v8;
      if (v18 >= v8)
      {
        if (v18 != v8)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v8), v18 - v8);
        }

        *(a1 + 32) = v19;
      }

      v16 += v8;
      v10 -= v8;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v16;
    }

    v21 = *(a1 + 8);
    v20 = *(a1 + 16);
    if (v20 == v21)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v22 = v20 - v21;
    if (v20 == v21)
    {
      goto LABEL_55;
    }

    v8 = 0;
    v23 = *a1;
    do
    {
      if (v21 == v20)
      {
        v24 = v20 + 0x40000;
        if ((v20 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v20 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v20)
            {
              v20 = 0x4000;
              v26 = 0x4000;
              if (v24 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v25 = v20 >> 1;
            if ((v20 & (v20 >> 1)) != 0)
            {
              v25 = v20 & (v20 >> 1);
            }

            v20 += v25;
          }

          while (v20 < v24);
          v26 = v20;
          if (v20 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_165;
          }

LABEL_43:
          v27 = *(a1 + 24);
          v28 = realloc(v27, v26);
          if (v28)
          {
            *(a1 + 16) = v26;
            *(a1 + 24) = v28;
            v21 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v27);
LABEL_165:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v8 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v21 = v20;
      }

      v26 = v20;
LABEL_45:
      if (v26 - v21 >= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v26 - v21;
      }

      v30 = AAByteStreamRead(v23, (*(a1 + 24) + v21), v29);
      if (v30 < 0)
      {
        goto LABEL_151;
      }

      if (!v30)
      {
        break;
      }

      v31 = *(a1 + 8);
      v21 = v31 + v30;
      if (__CFADD__(v31, v30) || (v20 = *(a1 + 16), v21 > v20))
      {
LABEL_151:
        v8 = -1;
LABEL_152:
        v82 = "stream read failed";
        v83 = 144;
        goto LABEL_153;
      }

      *(a1 + 8) = v21;
      v8 += v30;
      v22 -= v30;
    }

    while (v22);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v8)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v21 = *(a1 + 8);
LABEL_57:
    v33 = *(a1 + 24);
    v32 = *(a1 + 32);
    v34 = *(a1 + 40) - v32;
    v35 = (*(a1 + 48) + v32);
    v36 = *(a1 + 56);
    v8 = -1;
    if (v36 <= 2)
    {
      break;
    }

    if (v36 == 3)
    {
      *(a1 + 176) = v33;
      *(a1 + 184) = v21;
      *(a1 + 200) = v35;
      *(a1 + 208) = v34;
      v67 = lzma_code();
      v68 = v67;
      if (v67 <= 0xA && ((1 << v67) & 0x403) != 0)
      {
        v69 = v15;
        v70 = *(a1 + 176);
        v71 = *(a1 + 200);
        v72 = v70 - v33;
        if (v70 != v33)
        {
          v73 = *(a1 + 8);
          v44 = v73 >= v72;
          v74 = v73 - v72;
          if (v44)
          {
            if (v74)
            {
              v90 = v74;
              memmove(*(a1 + 24), (*(a1 + 24) + v72), v74);
              v74 = v90;
            }

            *(a1 + 8) = v74;
          }
        }

        if (v71 != v35)
        {
          v75 = *(a1 + 32);
          v76 = v75 + v71 - v35;
          if (!__CFADD__(v75, v71 - v35) && v76 <= *(a1 + 40))
          {
            *(a1 + 32) = v76;
          }
        }

        if (v71 == v35 && v70 == v33)
        {
          v15 = v69 + 1;
        }

        else
        {
          v15 = 0;
        }

        if (v68 == 1)
        {
          goto LABEL_131;
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload", a7, a8, v86);
      }

      v8 = -1;
      if (v68 <= 0xA && ((1 << v68) & 0x403) != 0)
      {
        goto LABEL_147;
      }

      return v8;
    }

    if (v36 != 4)
    {
      return v8;
    }

    *(a1 + 96) = v33;
    *(a1 + 104) = v21;
    *(a1 + 120) = v35;
    *(a1 + 128) = v34;
    v49 = BZ2_bzDecompress((a1 + 96));
    if (v49 < 0)
    {
      v82 = "decoding bzip2 payload";
      v83 = 178;
      goto LABEL_153;
    }

    v50 = v49;
    v51 = v15;
    v52 = *(a1 + 96);
    v53 = *(a1 + 120);
    v54 = v52 - v33;
    if (v52 != v33)
    {
      v55 = *(a1 + 8);
      v44 = v55 >= v54;
      v56 = v55 - v54;
      if (v44)
      {
        if (v56)
        {
          v88 = v56;
          memmove(*(a1 + 24), (*(a1 + 24) + v54), v56);
          v56 = v88;
        }

        *(a1 + 8) = v56;
      }
    }

    if (v53 != v35)
    {
      v57 = *(a1 + 32);
      v58 = v57 + v53 - v35;
      if (!__CFADD__(v57, v53 - v35) && v58 <= *(a1 + 40))
      {
        *(a1 + 32) = v58;
      }
    }

    if (v53 == v35 && v52 == v33)
    {
      v15 = v51 + 1;
    }

    else
    {
      v15 = 0;
    }

    if (v50 == 4)
    {
      goto LABEL_131;
    }

LABEL_147:
    if (v15 >= 3)
    {
      v84 = "truncated stream";
      v85 = 240;
      goto LABEL_156;
    }

LABEL_148:
    v8 = v16;
    if (!v10)
    {
      return v8;
    }
  }

  if (v36 == 1)
  {
    if (!v21)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_158:
      v82 = "truncated stream header";
      v83 = 208;
      goto LABEL_153;
    }

    if (v21 <= 0xF)
    {
      goto LABEL_158;
    }

    v60 = v33[1];
    v61 = bswap64(*v33);
    v62 = bswap64(v60);
    v63 = *(a1 + 80);
    if (v61 > v63 || v62 > v63)
    {
      v84 = "corrupted stream header";
      v85 = 217;
      goto LABEL_156;
    }

    v89 = v15;
    v65 = v62 + 16;
    if (v62 + 16 > v21)
    {
      v84 = "truncated stream payload";
      v85 = 218;
      goto LABEL_156;
    }

    if (v61 > v34)
    {
      v84 = "unexpected output buffer size";
      v85 = 219;
      goto LABEL_156;
    }

    v66 = *v33;
    if (*v33 == v60)
    {
      memcpy(v35, v33 + 2, v61);
    }

    else if ((*(a1 + 88))(v35, v34, v33 + 2) != v61)
    {
      v84 = "block decompression failed";
      v85 = 229;
LABEL_156:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v85, 20, 0, v84, a7, a8, v86);
      return -1;
    }

    if (v65)
    {
      v78 = *(a1 + 8);
      v79 = v78 - v65;
      if (v78 >= v65)
      {
        if (v78 != v65)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v65), v78 - v65);
        }

        *(a1 + 8) = v79;
      }
    }

    if (v66)
    {
      v80 = *(a1 + 32);
      v44 = __CFADD__(v80, v61);
      v81 = v80 + v61;
      v15 = v89;
      if (!v44 && v81 <= *(a1 + 40))
      {
        *(a1 + 32) = v81;
      }
    }

    else
    {
      v15 = v89;
    }

    goto LABEL_147;
  }

  if (v36 == 2)
  {
    *(a1 + 328) = v33;
    *(a1 + 336) = v21;
    *(a1 + 312) = v35;
    *(a1 + 320) = v34;
    v37 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v37 & 0x80000000) == 0)
    {
      v38 = v37;
      v39 = v15;
      v40 = *(a1 + 336);
      v41 = *(a1 + 320);
      v42 = v21 - v40;
      if (v21 != v40)
      {
        v43 = *(a1 + 8);
        v44 = v43 >= v42;
        v45 = v43 - v42;
        if (v44)
        {
          if (v45)
          {
            v87 = v45;
            memmove(*(a1 + 24), (*(a1 + 24) + v42), v45);
            v45 = v87;
          }

          *(a1 + 8) = v45;
        }
      }

      if (v34 != v41)
      {
        v46 = *(a1 + 32);
        v47 = v46 + v34 - v41;
        if (!__CFADD__(v46, v34 - v41) && v47 <= *(a1 + 40))
        {
          *(a1 + 32) = v47;
        }
      }

      if (v34 == v41 && v21 == v40)
      {
        v15 = v39 + 1;
      }

      else
      {
        v15 = 0;
      }

      if (v38 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    v82 = "decoding compression payload";
    v83 = 162;
LABEL_153:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v83, 20, 0, v82, a7, a8, v86);
  }

  return v8;
}

size_t aaDecompressionStreamAbort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return IDecoderStreamAbort(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t jsonPushLabel(uint64_t a1, char a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (a1 + 72);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 72) = v8;
    v7 = reallocf(*(a1 + 88), v8);
    *(a1 + 88) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushLabel", 358, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 80);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v9 = 0;
  *(a1 + 80) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

uint64_t jsonPushValue(uint64_t a1, char a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = (a1 + 96);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 96) = v8;
    v7 = reallocf(*(a1 + 112), v8);
    *(a1 + 112) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushValue", 372, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 104);
  }

  else
  {
    v7 = *(a1 + 112);
  }

  v9 = 0;
  *(a1 + 104) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

void *AAJSONInputStreamOpen(uint64_t a1)
{
  v2 = malloc(0x78uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x78uLL, 0, 0x78uLL);
    v3[1] = a1;
    v3[5] = 0x10000;
    v4 = malloc(0x10000uLL);
    v3[8] = v4;
    if (v4)
    {
      *(v3 + 20) = 32;
      v3[4] = calloc(0x20uLL, 4uLL);
    }

    else
    {
      v8 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 387, 109, *v8, "malloc", v9, v10, v12);
      AAJSONInputStreamClose(v3);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 382, 109, *v5, "malloc", v6, v7, v12);
  }

  return v3;
}

void AAJSONInputStreamClose(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[11]);
    free(a1[14]);
    free(a1[8]);

    free(a1);
  }
}

uint64_t AAJSONInputStreamRead(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  if (v10 == 9 || v10 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 418, 109, 0, "unexpected read call", a7, a8, v44);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v14 = MEMORY[0x29EDCA600];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v15 = *(a1 + 56);
            v16 = *(a1 + 64);
            if (v15 >= *(a1 + 48))
            {
              v17 = AAByteStreamRead(*(a1 + 8), v16, *(a1 + 40));
              if (v17 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 430, 109, 0, "read error: %zd", a7, a8, v17);
                goto LABEL_113;
              }

              if (!v17)
              {
                v29 = "EOF reached";
                v30 = 431;
                goto LABEL_112;
              }

              v15 = 0;
              *(a1 + 48) = v17;
              v16 = *(a1 + 64);
            }

            *(a1 + 56) = v15 + 1;
            v18 = v16[v15];
            v19 = v16[v15];
            v20 = *(a1 + 16);
            if (v20 > 3)
            {
              break;
            }

            if (v20 > 1)
            {
              if (v20 == 2)
              {
                if (((v19 - 98) >> 1) | ((v19 - 98) << 7)) < 0xAu && ((0x341u >> (((v19 - 98) >> 1) | ((v19 - 98) << 7))))
                {
                  v22 = asc_296AD20B8[(((v19 - 98) >> 1) | ((v19 - 98) << 7))];
                }

                else if (v18 == 102)
                {
                  v22 = 12;
                }

                else
                {
                  v22 = v16[v15];
                }

                if ((jsonPushValue(a1, v22) & 0x80000000) != 0)
                {
                  v29 = "jsonPushValue";
                  v30 = 512;
                  goto LABEL_112;
                }

LABEL_55:
                v21 = 1;
                goto LABEL_78;
              }

              if ((v18 - 48) > 9)
              {
                *(a1 + 16) = 5;
                *(a1 + 56) = v15;
                if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
                {
                  v29 = "jsonPushValue";
                  v30 = 539;
                  goto LABEL_112;
                }

                v26 = 4;
                goto LABEL_130;
              }

              if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushValue";
                v30 = 533;
                goto LABEL_112;
              }
            }

            else if (v20)
            {
              if (v20 != 1)
              {
                goto LABEL_111;
              }

              if (v18 == 92)
              {
                v21 = 2;
                goto LABEL_78;
              }

              if (v18 == 34)
              {
                *(a1 + 16) = 5;
                if ((jsonPushValue(a1, 0) & 0x80000000) == 0)
                {
                  v26 = 3;
                  goto LABEL_130;
                }

                v29 = "jsonPushValue";
                v30 = 499;
LABEL_112:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", v30, 109, 0, v29, a7, a8, v44);
LABEL_113:
                result = 0xFFFFFFFFLL;
                *(a1 + 16) = -1;
                return result;
              }

              if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushValue";
                v30 = 503;
                goto LABEL_112;
              }
            }

            else
            {
              *(a1 + 104) = 0;
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
                  goto LABEL_63;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
LABEL_63:
                if (v18 == 34)
                {
                  goto LABEL_55;
                }

                if (v18 == 43 || v18 == 45 || (v18 - 48) <= 9)
                {
                  if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
                  {
                    v29 = "jsonPushValue";
                    v30 = 451;
                    goto LABEL_112;
                  }

                  v21 = 3;
                }

                else
                {
                  if (v18 == 123)
                  {
                    v31 = *(a1 + 24);
                    if (v31 != *(a1 + 20))
                    {
                      v26 = 0;
                      v42 = *(a1 + 32);
                      *(a1 + 24) = v31 + 1;
                      *(v42 + 4 * v31) = 0;
                      v35 = 6;
                      goto LABEL_129;
                    }

                    v29 = "max level reached";
                    v30 = 465;
                    goto LABEL_112;
                  }

                  if (v18 == 91)
                  {
                    v32 = *(a1 + 24);
                    if (v32 != *(a1 + 20))
                    {
                      v35 = 0;
                      v43 = *(a1 + 32);
                      *(a1 + 24) = v32 + 1;
                      v26 = 1;
                      *(v43 + 4 * v32) = 1;
                      goto LABEL_129;
                    }

                    v29 = "max level reached";
                    v30 = 457;
                    goto LABEL_112;
                  }

                  if ((v18 - 97) > 0x19)
                  {
                    v24 = *(a1 + 24) - 1;
                    v33 = v18 != 93;
                    if (*(*(a1 + 32) + 4 * v24))
                    {
                      v34 = 0;
                    }

                    else
                    {
                      v33 = 1;
                      v34 = v18 == 125;
                    }

                    if (!v33 || v34)
                    {
                      goto LABEL_125;
                    }

LABEL_111:
                    v44 = v19;
                    v45 = *(a1 + 64) + *(a1 + 56) - 1;
                    v29 = "invalid char %c %s";
                    v30 = 610;
                    goto LABEL_112;
                  }

                  if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
                  {
                    v29 = "jsonPushValue";
                    v30 = 473;
                    goto LABEL_112;
                  }

                  v21 = 4;
                }

LABEL_78:
                *(a1 + 16) = v21;
              }
            }
          }

          if (v20 <= 5)
          {
            break;
          }

          switch(v20)
          {
            case 6:
              *(a1 + 80) = 0;
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
LABEL_70:
                  if (v18 != 34)
                  {
                    if (v18 != 125)
                    {
                      goto LABEL_111;
                    }

                    v28 = *(a1 + 24);
                    if (v28)
                    {
                      v24 = v28 - 1;
                      v25 = *(*(a1 + 32) + 4 * v24);
                      goto LABEL_100;
                    }

                    goto LABEL_101;
                  }

                  v21 = 7;
                  goto LABEL_78;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
                goto LABEL_70;
              }

              break;
            case 7:
              if (v18 == 34)
              {
                if ((jsonPushLabel(a1, 0) & 0x80000000) != 0)
                {
                  v29 = "jsonPushLabel";
                  v30 = 587;
                  goto LABEL_112;
                }

                v21 = 8;
                goto LABEL_78;
              }

              if ((jsonPushLabel(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushLabel";
                v30 = 591;
                goto LABEL_112;
              }

              break;
            case 8:
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
LABEL_60:
                  if (v18 != 58)
                  {
                    goto LABEL_111;
                  }

                  v21 = 0;
                  goto LABEL_78;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
                goto LABEL_60;
              }

              break;
            default:
              goto LABEL_111;
          }
        }

        if (v20 != 4)
        {
          break;
        }

        if ((v18 - 97) > 0x19)
        {
          *(a1 + 16) = 5;
          *(a1 + 56) = v15;
          if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
          {
            v29 = "jsonPushValue";
            v30 = 524;
            goto LABEL_112;
          }

          v27 = *(a1 + 112);
          if (!strcmp(v27, "false") || !strcmp(v27, "true"))
          {
            v26 = 6;
          }

          else
          {
            if (strcmp(v27, "null"))
            {
              goto LABEL_111;
            }

            v26 = 7;
          }

          goto LABEL_130;
        }

        if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
        {
          v29 = "jsonPushValue";
          v30 = 519;
          goto LABEL_112;
        }
      }

      if (v18 < 0)
      {
        break;
      }

      if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (__maskrune(v18, 0x4000uLL));
LABEL_73:
  v23 = *(a1 + 24);
  if (!v23)
  {
    v29 = "invalid JSON state";
    v30 = 546;
    goto LABEL_112;
  }

  v24 = v23 - 1;
  v25 = *(*(a1 + 32) + 4 * v24);
  switch(v18)
  {
    case ',':
      if (v25)
      {
        v21 = 0;
      }

      else
      {
        v21 = 6;
      }

      goto LABEL_78;
    case ']':
      if ((v25 & 1) == 0)
      {
        v19 = 93;
        goto LABEL_111;
      }

      break;
    case '}':
LABEL_100:
      if (v25)
      {
LABEL_101:
        v19 = 125;
        goto LABEL_111;
      }

      break;
    default:
      goto LABEL_111;
  }

LABEL_125:
  *(a1 + 24) = v24;
  if (v24)
  {
    v35 = 5;
  }

  else
  {
    v35 = 9;
  }

  v26 = 2;
LABEL_129:
  *(a1 + 16) = v35;
LABEL_130:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  *a2 = v26;
  v36 = *(a1 + 80);
  if (v36)
  {
    v36 = *(a1 + 88);
  }

  *(a2 + 1) = v36;
  a2[12] = *(a1 + 24);
  if (v26 == 6)
  {
    v40 = strcmp(*(a1 + 112), "true");
    result = 0;
    a2[9] = v40 == 0;
  }

  else if (v26 == 4)
  {
    v37 = *(a1 + 112);
    if (*v37 == 45)
    {
      v38 = strtoull(v37 + 1, 0, 10);
      result = 0;
      *(a2 + 3) = v38;
      v39 = -1;
    }

    else
    {
      v41 = strtoull(v37, 0, 0);
      result = 0;
      *(a2 + 3) = v41;
      v39 = v41 != 0;
    }

    a2[8] = v39;
  }

  else
  {
    result = 0;
    if (v26 == 3)
    {
      *(a2 + 2) = *(a1 + 112);
    }
  }

  return result;
}

unsigned int *ThreadPoolCreate(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xA8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v8 = calloc(a1, 0xA8uLL);
    *(v7 + 1) = v8;
    if (v8)
    {
      v9 = *v7;
      v7[8] = 0;
      v7[9] = v9;
      v10 = calloc(v9, 4uLL);
      *(v7 + 5) = v10;
      if (v10)
      {
        if (pthread_mutex_init((v7 + 12), 0))
        {
          v14 = "SharedArrayInit: pthread_mutex_init failed\n";
          v15 = 56;
        }

        else
        {
          if (!pthread_cond_init((v7 + 28), 0))
          {
            v7[4] = -1;
            if (!*v7)
            {
              return v7;
            }

            v22 = 0;
            v23 = 0;
            while (1)
            {
              v24 = *(v7 + 1) + v22;
              *(v24 + 16) = v7;
              *(v24 + 8) = v23;
              *(v24 + 24) = *(a2 + 8 * v23);
              *(v24 + 32) = a3;
              *(v24 + 40) = 0;
              if (pthread_mutex_init((v24 + 48), 0) || pthread_cond_init((v24 + 112), 0))
              {
                v19 = "SemInit";
                v20 = 115;
                goto LABEL_12;
              }

              if ((createThread(v24, threadPoolWorkerThreadProc, v24, 0) & 0x80000000) != 0)
              {
                break;
              }

              ++v23;
              v22 += 168;
              if (v23 >= *v7)
              {
                return v7;
              }
            }

            v19 = "Thread creation";
            v20 = 116;
            goto LABEL_12;
          }

          v14 = "SharedArrayInit: pthread_cond_init failed\n";
          v15 = 57;
        }
      }

      else
      {
        v14 = "SharedArrayInit: malloc failed\n";
        v15 = 55;
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v15, 0, v14, v11, v12, v13, v25);
      v19 = "SharedArrayInit";
      v20 = 104;
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }

    v16 = *__error();
    v19 = "malloc";
    v20 = 103;
  }

  else
  {
    v16 = *__error();
    v19 = "malloc";
    v20 = 98;
  }

LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolCreate", v20, 90, v16, v19, v17, v18, v25);
  ThreadPoolDestroy(v7);
  return 0;
}

uint64_t threadPoolWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 48)))
  {
LABEL_2:
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    while (1)
    {
      v13 = *(v2 + 32);
      v14 = *(v2 + 36);
      v15 = v13;
      if (v13 < v14)
      {
        *(*(v2 + 40) + 4 * v13) = v3;
        v15 = *(v2 + 32);
      }

      *(v2 + 32) = v15 + 1;
      if (!v15)
      {
        if (pthread_cond_broadcast((v2 + 112)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 48)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
        goto LABEL_3;
      }

      if (v13 >= v14)
      {
        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
        goto LABEL_3;
      }

      if (pthread_mutex_lock((a1 + 48)))
      {
        goto LABEL_21;
      }

      while (1)
      {
        v16 = *(a1 + 40);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 48)))
        {
          goto LABEL_21;
        }
      }

      *(a1 + 40) = v16 - 1;
      if (pthread_mutex_unlock((a1 + 48)))
      {
LABEL_21:
        v11 = "SemAcquire";
        v12 = 59;
        goto LABEL_22;
      }

      v17 = *(a1 + 160);
      if (v17 != -2)
      {
        if (v17 < 0)
        {
          return a1;
        }

        if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 72, 90, 0, "worker proc reported an error", v18, v19, v21);
          atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
        }
      }

      v3 = *(a1 + 8);
      if (pthread_mutex_lock((v2 + 48)))
      {
        goto LABEL_2;
      }
    }

    v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
    v8 = 122;
  }

LABEL_3:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v21);
  v11 = "SharedArrayPush";
  v12 = 56;
LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", v12, 90, 0, v11, v9, v10, v21);
  atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPoolDestroy(uint64_t result)
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
        v7 = 1;
        goto LABEL_37;
      }

      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 21;
        if (v5)
        {
          ++v4;
        }

        --v3;
      }

      while (v3);
      if (v4)
      {
        v6 = 0;
        v7 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 12)))
          {
            v11 = 91;
            v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10, v33);
            v16 = -1;
          }

          else
          {
            while (1)
            {
              v13 = v1[8];
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 28), (v1 + 12)))
              {
                v11 = 94;
                v12 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v21 = v13 - 1;
            v1[8] = v21;
            v16 = *(*(v1 + 5) + 4 * v21);
            if (!pthread_mutex_unlock((v1 + 12)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v22, v23, v24, v33);
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 147, 90, 0, "SharedArrayPop", v14, v15, v34);
          v7 = 0;
LABEL_17:
          v17 = *(v1 + 1) + 168 * v16;
          *(v17 + 160) = -1;
          if (pthread_mutex_lock((v17 + 48)) || (v20 = *(v17 + 40), *(v17 + 40) = v20 + 1, !v20) && pthread_cond_broadcast((v17 + 112)) || pthread_mutex_unlock((v17 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 155, 90, 0, "SemRelease", v18, v19, v33);
            v7 = 0;
          }

          if ((joinThread(*v17) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 156, 90, 0, "joinThread", v25, v26, v33);
            v7 = 0;
          }

          *v17 = 0;
          if (++v6 == v4)
          {
            if (!*v1)
            {
              goto LABEL_37;
            }

            goto LABEL_33;
          }
        }
      }

      v7 = 1;
LABEL_33:
      v27 = 0;
      v28 = 112;
      do
      {
        v29 = (*(v1 + 1) + v28);
        if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
        {
          pthread_cond_destroy(v29);
        }

        ++v27;
        v28 += 168;
      }

      while (v27 < *v1);
LABEL_37:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v7 = 1;
    }

    if (!pthread_mutex_destroy((v1 + 12)) && !pthread_cond_destroy((v1 + 28)))
    {
      free(*(v1 + 5));
    }

    v32 = atomic_load(v1 + 40);
    if (v32 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 171, 90, 0, "Threads reported errors", v30, v31, v33);
      v7 = 0;
    }

    free(v1);
    if (v7)
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

uint64_t ThreadPoolGetWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 182;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", v9, 90, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 48)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
    v8 = "SharedArrayPop failed";
    v9 = 186;
    goto LABEL_11;
  }

  while (1)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 112), (a1 + 48)))
    {
      v14 = "SharedArrayPop: pthread_cond_wait failed\n";
      v15 = 94;
      goto LABEL_10;
    }
  }

  v17 = v16 - 1;
  *(a1 + 32) = v17;
  v18 = *(*(a1 + 40) + 4 * v17);
  if (pthread_mutex_unlock((a1 + 48)))
  {
    v14 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v15 = 98;
    goto LABEL_10;
  }

  *(a1 + 16) = v18;
  return *(*(a1 + 8) + 168 * v18 + 24);
}

uint64_t ThreadPoolRunWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 199;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", v14, 90, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
  v9 = *(a1 + 8) + 168 * v8;
  v10 = *(a1 + 24);
  *(a1 + 24) = v10 + 1;
  *(v9 + 160) = v10;
  if (pthread_mutex_lock((v9 + 48)) || (v11 = *(v9 + 40), *(v9 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v9 + 112)) || (result = pthread_mutex_unlock((v9 + 48)), result))
  {
    v13 = "SemRelease failed";
    v14 = 211;
    goto LABEL_9;
  }

  return result;
}

uint64_t ThreadPoolSync(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    v7 = 1;
    goto LABEL_30;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4;
    v4 += 21;
    if (v5)
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (pthread_mutex_lock((a1 + 12)))
      {
        v11 = 91;
        v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
      }

      else
      {
        while (1)
        {
          v13 = a1[8];
          if (v13)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 28), (a1 + 12)))
          {
            v11 = 94;
            v12 = "SharedArrayPop: pthread_cond_wait failed\n";
            goto LABEL_15;
          }
        }

        a1[8] = v13 - 1;
        if (!pthread_mutex_unlock((a1 + 12)))
        {
          goto LABEL_16;
        }

        v11 = 98;
        v12 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      }

LABEL_15:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10, v24);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 231, 90, 0, "SharedArrayPop", v14, v15, v25);
      v7 = 0;
LABEL_16:
      if (++v6 == v3)
      {
        if (!*a1)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  v7 = 1;
LABEL_21:
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(a1 + 1);
    if (*(v18 + v16))
    {
      if ((v19 = v18 + v16, *(v18 + v16 + 160) = -2, pthread_mutex_lock((v18 + v16 + 48))) || (v22 = *(v19 + 40), *(v19 + 40) = v22 + 1, !v22) && pthread_cond_broadcast((v18 + v16 + 112)) || pthread_mutex_unlock((v19 + 48)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 240, 90, 0, "SemRelease", v20, v21, v24);
        v7 = 0;
      }
    }

    ++v17;
    v16 += 168;
  }

  while (v17 < *a1);
LABEL_30:
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AADecompressionRandomAccessInputStreamOpen(AAByteStream compressed_stream, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  v58 = *MEMORY[0x29EDCA608];
  v57 = 0uLL;
  v7 = malloc(0x40uLL);
  v8 = v7;
  if (!v7)
  {
    v22 = *__error();
    v23 = "malloc";
    v24 = 106;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "AADecompressionRandomAccessInputStreamOpen", v24, 110, v22, v23, v10, v11, v51);
    RandomAccessDecompressStreamDestroy(v8);
    result = 0;
    goto LABEL_19;
  }

  memset_s(v7, 0x40uLL, 0, 0x40uLL);
  *v8 = compressed_stream;
  *(v8 + 8) = flags;
  v9 = AAByteStreamSeek(compressed_stream, 0, 2);
  if (v9 < 0)
  {
    v23 = "seek to end of stream";
    v24 = 112;
    goto LABEL_17;
  }

  v12 = *v8;
  if (!*(*v8 + 32))
  {
    goto LABEL_15;
  }

  v13 = v9;
  v14 = 0;
  v15 = 0;
  v16 = &v57;
  v17 = 12;
  do
  {
    v18 = (*(v12 + 32))(*v12, v16, v17, v15);
    if (v18 < 0)
    {
      goto LABEL_15;
    }

    if (!v18)
    {
      break;
    }

    v16 = (v16 + v18);
    v14 += v18;
    v15 += v18;
    v17 -= v18;
  }

  while (v17);
  if (v14 != 12)
  {
LABEL_15:
    v23 = "reading file header";
    v24 = 116;
LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v19 = PCompressZLIBDecode;
  if (BYTE3(v57) <= 0x64u)
  {
    switch(BYTE3(v57))
    {
      case '-':
        v20 = 0;
        v21 = "none";
        v19 = PCompressCopyDecode;
        goto LABEL_32;
      case '4':
        v20 = 0;
        v21 = "lz4";
        v19 = PCompressLZ4Decode;
        goto LABEL_32;
      case 'b':
        v20 = 0;
        v21 = "lzbitmap";
        v19 = PCompressLZBITMAPDecode;
        goto LABEL_32;
    }

LABEL_28:
    v19 = 0;
    v21 = "???";
    v20 = 1;
    goto LABEL_32;
  }

  if (BYTE3(v57) > 0x77u)
  {
    if (BYTE3(v57) == 122)
    {
      v20 = 0;
      v21 = "zlib";
      goto LABEL_32;
    }

    if (BYTE3(v57) == 120)
    {
      v20 = 0;
      v21 = "lzma";
      v19 = PCompressLZMADecode;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (BYTE3(v57) == 101)
  {
    v20 = 0;
    v21 = "lzfse";
    v19 = PCompressLZFSEDecode;
    goto LABEL_32;
  }

  if (BYTE3(v57) != 102)
  {
    goto LABEL_28;
  }

  v20 = 0;
  v21 = "lzvn";
  v19 = PCompressLZVNDecode;
LABEL_32:
  *(v8 + 16) = v19;
  if (v57 != 112 || BYTE1(v57) != 98 || BYTE2(v57) != 122 || v20)
  {
    v23 = "invalid file header";
    v24 = 128;
    goto LABEL_17;
  }

  v56[0] = *(&v57 + 4);
  v27 = bswap64(*(&v57 + 4));
  if (HIDWORD(v27))
  {
    v23 = "invalid block size";
    v24 = 131;
    goto LABEL_17;
  }

  *(v8 + 24) = 0;
  if (v13 == 12)
  {
    v28 = 0;
    goto LABEL_41;
  }

  v54 = v27;
  v52 = v21;
  v34 = 0;
  v28 = 0;
  v35 = 12;
  while (2)
  {
    if (v35 + 16 > v13)
    {
      v23 = "truncated file";
      v24 = 138;
      goto LABEL_17;
    }

    v55 = v35 + 16;
    v53 = v34;
    v36 = v28;
    v37 = *v8;
    if (!*(*v8 + 32))
    {
LABEL_76:
      v23 = "reading block header";
      v24 = 139;
      goto LABEL_17;
    }

    v38 = 0;
    v39 = v56;
    v40 = 16;
    do
    {
      v41 = (*(v37 + 32))(*v37, v39, v40, v35);
      if (v41 < 0)
      {
        goto LABEL_76;
      }

      if (!v41)
      {
        break;
      }

      v39 = (v39 + v41);
      v38 += v41;
      v35 += v41;
      v40 -= v41;
    }

    while (v40);
    if (v38 != 16)
    {
      goto LABEL_76;
    }

    v42 = bswap64(v56[0]);
    v43 = bswap64(v56[1]);
    if (v42 > v54 || v43 > v54)
    {
      v23 = "invalid block header";
      v24 = 143;
      goto LABEL_17;
    }

    v45 = v55;
    v35 = v43 + v55;
    if (v43 + v55 > v13)
    {
      v23 = "truncated file";
      v24 = 144;
      goto LABEL_17;
    }

    v46 = v36;
    v47 = *(v8 + 24);
    if (v36 != v47 * v54)
    {
      v23 = "invalid block size";
      v24 = 147;
      goto LABEL_17;
    }

    v34 = v53;
    if (v47 < v53)
    {
      v48 = *(v8 + 32);
      goto LABEL_73;
    }

    if (v53)
    {
      v34 = 2 * v53;
    }

    else
    {
      v34 = 32;
    }

    if ((16 * v34) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_85:
      *(v8 + 32) = 0;
      v22 = *__error();
      v23 = "malloc";
      v24 = 154;
      goto LABEL_18;
    }

    v49 = *(v8 + 32);
    v48 = realloc(v49, 16 * v34);
    if (!v48)
    {
      free(v49);
      goto LABEL_85;
    }

    *(v8 + 32) = v48;
    v47 = *(v8 + 24);
    v45 = v55;
LABEL_73:
    *(v8 + 24) = v47 + 1;
    v50 = &v48[16 * v47];
    *v50 = v45;
    *(v50 + 2) = v43;
    *(v50 + 3) = v42;
    v28 = v42 + v46;
    if (v35 != v13)
    {
      continue;
    }

    break;
  }

  v21 = v52;
  v27 = v54;
  if (v28 < 0)
  {
    v23 = "invalid file sizes";
    v24 = 169;
    goto LABEL_17;
  }

LABEL_41:
  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v8 + 40) = n_threads;
  v29 = calloc(n_threads, 8uLL);
  *(v8 + 48) = v29;
  if (!v29)
  {
    v22 = *__error();
    v23 = "malloc";
    v24 = 174;
    goto LABEL_18;
  }

  v30 = v28;
  v31 = *(v8 + 40);
  if (v31)
  {
    v32 = v29;
    v33 = 0;
    while (1)
    {
      *&v32[v33] = malloc(v27);
      v32 = *(v8 + 48);
      if (!*&v32[v33])
      {
        break;
      }

      v33 += 8;
      if (8 * v31 == v33)
      {
        goto LABEL_48;
      }
    }

    v22 = *__error();
    v23 = "malloc";
    v24 = 178;
    goto LABEL_18;
  }

LABEL_48:
  if (flags >> 62)
  {
    v31 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu B block size\n", v27);
    fprintf(*v31, "%12llu B file size\n", v13);
    fprintf(*v31, "%12llu B data size\n", v30);
    fprintf(*v31, "%12.2f x compression ratio (%s)\n", v30 / v13, v21);
    fprintf(*v31, "%12llu blocks\n", *(v8 + 24));
    LODWORD(v31) = *(v8 + 40);
  }

  result = AAGenericRandomAccessInputStreamOpen(v30, v27, v31, 2 * v31, v8, RandomAccessDecompressStreamGetBlock, RandomAccessDecompressStreamAbort, RandomAccessDecompressStreamDestroy, flags);
LABEL_19:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RandomAccessDecompressStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 40))
      {
        v3 = 0;
        do
        {
          free(*(*(a1 + 48) + 8 * v3++));
        }

        while (v3 < *(a1 + 40));
        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(*(a1 + 32));
    free(a1);
  }

  return 0;
}

uint64_t RandomAccessDecompressStreamGetBlock(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 10) <= a2 || a1[3] <= a3)
  {
    v18 = "Invalid worker/block id";
    v19 = 66;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "RandomAccessDecompressStreamGetBlock", v19, 110, 0, v18, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  v10 = a1[4] + 16 * a3;
  v11 = *(v10 + 8);
  if (*(v10 + 12) == v11)
  {
    v12 = a4;
  }

  else
  {
    v12 = *(a1[6] + 8 * a2);
  }

  v13 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_20;
  }

  v14 = 0;
  if (v11)
  {
    v15 = *v10;
    v16 = v12;
    while (1)
    {
      v17 = (*(v13 + 32))(*v13, v16, v11, v15);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        v16 += v17;
        v14 += v17;
        v15 += v17;
        v11 -= v17;
        if (v11)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v14 = v17;
LABEL_16:
    if (v14 != *(v10 + 8))
    {
LABEL_20:
      v18 = "loading block";
      v19 = 74;
      goto LABEL_14;
    }
  }

  if (v12 != a4 && (a1[2])(a4, *(v10 + 12), v12, v14) != *(v10 + 12))
  {
    v18 = "decompressing block";
    v19 = 79;
    goto LABEL_14;
  }

  return 0;
}

void RandomAccessDecompressStreamAbort(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 1;
    AAByteStreamCancel(*a1);
  }
}

void *aaAsyncByteStreamAlloc(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v8 = malloc(0x38uLL);
  v9 = v8;
  if (!v8)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "aaAsyncByteStreamAlloc", 191, 97, *v13, "malloc", v14, v15, SLOBYTE(a5));
    return v9;
  }

  memset_s(v8, 0x38uLL, 0, 0x38uLL);
  *v9 = a1;
  v9[1] = a2;
  if (a3)
  {
    v10 = malloc(0x70uLL);
    v11 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    memset_s(v10, 0x70uLL, 0, 0x70uLL);
    v12 = a3 >= 1 ? a3 : 5;
    *(v11 + 24) = v12;
    *(v11 + 100) = vbsl_s8(vclez_f32(__PAIR64__(LODWORD(a5), LODWORD(a4))), 0x40A0000041200000, __PAIR64__(LODWORD(a5), LODWORD(a4)));
    *(v11 + 10) = -1;
    *(v11 + 11) = -1;
    if ((pthread_mutex_init(v11, 0) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    free(v11);
  }

  v11 = 0;
LABEL_10:
  v9[6] = v11;
  return v9;
}

uint64_t AAAsyncByteStreamGetRange(void *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v3(*a1);
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = a1[6];
  if (!v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (pthread_mutex_lock(v9) < 0)
    {
      v35 = *__error();
      v38 = "mutex lock";
      v39 = 149;
    }

    else
    {
      RealTime = getRealTime();
      v27 = *(v9 + 80);
      if (v27 < 0)
      {
LABEL_20:
        v8 = 0;
      }

      else
      {
        v28 = *(v9 + 72);
        while (1)
        {
          v29 = v28 + 40 * v27;
          if (*(v29 + 24) < RealTime)
          {
            break;
          }

          v27 = *(v28 + 40 * v27 + 32);
          if (v27 < 0)
          {
            goto LABEL_20;
          }
        }

        v40 = *(v29 + 16);
        if (v40 <= 0)
        {
          v56 = *(v29 + 8);
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 159, 97, 0, "Async stream range timed out (FAIL): %zu bytes at %llu", v24, v25, *v29);
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          v41 = *v29;
          v42 = *(v29 + 8);
          *(v29 + 24) = RealTime + *(v9 + 100) + vcvtd_n_f64_u64(*v29, 0x14uLL) * *(v9 + 104);
          *(v29 + 16) = v40 - 1;
          *a2 = v41;
          *a3 = v42;
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 170, 97, "Async stream range timed out (retry): %zu bytes at %llu", v23, v24, v25, v41);
          v8 = 1;
        }
      }

      if ((pthread_mutex_unlock(v9) & 0x80000000) == 0)
      {
        return v8;
      }

      v35 = *__error();
      v38 = "mutex unlock";
      v39 = 177;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", v39, 97, v35, v38, v36, v37, v55);
    return 0xFFFFFFFFLL;
  }

  if (!v9)
  {
    return v8;
  }

  v10 = *a2;
  v11 = *a3;
  if (pthread_mutex_lock(v9) < 0)
  {
    v30 = *__error();
    v33 = "mutex lock";
    v34 = 64;
LABEL_53:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", v34, 97, v30, v33, v31, v32, v55);
    return v8;
  }

  v15 = *(v9 + 80);
  if (!v10)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 68, 97, "Async stream returning EOF, but we still have ranges in flight", v12, v13, v14, v55);
    }

    goto LABEL_51;
  }

  if (v15 < 0)
  {
LABEL_12:
    v19 = *(v9 + 88);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_13:
      v20 = *(v9 + 72) + 40 * v19;
      v21 = *(v20 + 32);
      *(v20 + 32) = v15;
      *(v9 + 80) = v19;
      *(v9 + 88) = v21;
      *v20 = v10;
      *(v20 + 8) = v11;
      *(v20 + 16) = *(v9 + 96) - 1;
      v22 = *(v9 + 100) + vcvtd_n_f64_u64(v10, 0x14uLL) * *(v9 + 104);
      *(v20 + 24) = getRealTime() + v22;
      goto LABEL_51;
    }

    v43 = *(v9 + 64);
    if (v43)
    {
      v44 = 2 * v43;
    }

    else
    {
      v44 = 32;
    }

    if (40 * v44 < 0x2000000001)
    {
      v45 = *(v9 + 72);
      v46 = realloc(v45, 40 * v44);
      if (v46)
      {
        *(v9 + 72) = v46;
        v19 = *(v9 + 64);
        if (v19 < v44)
        {
          v47 = v19 + 1;
          for (i = 40 * v19; ; i += 40)
          {
            v49 = &v46[i];
            if (v46)
            {
              memset_s(&v46[i], 0x28uLL, 0, 0x28uLL);
            }

            v50 = v44 == v47 ? -1 : v47;
            *(v49 + 4) = v50;
            if (v44 == v47)
            {
              break;
            }

            v46 = *(v9 + 72);
            ++v47;
          }

          v19 = *(v9 + 64);
        }

        *(v9 + 64) = v44;
        v15 = *(v9 + 80);
        goto LABEL_13;
      }

      free(v45);
    }

    else
    {
      *__error() = 12;
    }

    *(v9 + 72) = 0;
    v52 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 84, 97, *v52, "malloc", v53, v54, v55);
    *(v9 + 64) = 0;
    *(v9 + 80) = -1;
    *(v9 + 88) = -1;
    goto LABEL_51;
  }

  v16 = *(v9 + 72);
  v17 = *(v9 + 80);
  while (1)
  {
    v18 = (v16 + 40 * v17);
    if (v18[1] == v11 && *v18 == v10)
    {
      break;
    }

    v17 = *(v16 + 40 * v17 + 32);
    if (v17 < 0)
    {
      goto LABEL_12;
    }
  }

LABEL_51:
  if (pthread_mutex_unlock(v9) < 0)
  {
    v30 = *__error();
    v33 = "mutex unlock";
    v34 = 108;
    goto LABEL_53;
  }

  return v8;
}

uint64_t AAAsyncByteStreamProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v8 = a1[6];
    if (v8)
    {
      if (pthread_mutex_lock(a1[6]) < 0)
      {
        v19 = *__error();
        v22 = "mutex lock";
        v23 = 116;
      }

      else
      {
        v12 = (v8 + 80);
        v13 = *(v8 + 80);
        if (v13 < 0)
        {
LABEL_10:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 128, 97, "Async stream receiving an unknown segment", v9, v10, v11, v27);
        }

        else
        {
          v14 = *(v8 + 72);
          v15 = -1;
          while (1)
          {
            v16 = v13;
            v17 = (v14 + 40 * v13);
            if (v17[1] == a4 && *v17 == a3)
            {
              break;
            }

            v13 = *(v14 + 40 * v16 + 32);
            v15 = v16;
            if (v13 < 0)
            {
              goto LABEL_10;
            }
          }

          v24 = v14 + 40 * v15 + 32;
          if (v15 >= 0)
          {
            v12 = v24;
          }

          *v12 = v17[4];
          v17[4] = *(v8 + 88);
          *(v8 + 88) = v16;
        }

        if ((pthread_mutex_unlock(v8) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        v19 = *__error();
        v22 = "mutex unlock";
        v23 = 140;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", v23, 97, v19, v22, v20, v21, v27);
    }
  }

LABEL_19:
  v25 = a1[3];
  v26 = *a1;

  return v25(v26, a2, a3, a4);
}

void *AAAsyncByteStreamCancel(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return v1(*result);
  }

  return result;
}

uint64_t AAAsyncByteStreamClose(uint64_t (**a1)(void))
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    v2 = a1[1]();
    *a1 = 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    free(*(v3 + 9));
    pthread_mutex_destroy(v3);
    free(v3);
  }

  free(a1);
  return v2;
}

uint64_t aaAsyncByteStreamIsCancelled(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t graisClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 576);
    v3 = v2 == 0;
    if (*(result + 136))
    {
      sendMessage_0(result, -1, -1);
      joinThread(*(v1 + 17));
    }

    v4 = *(v1 + 12);
    if (v4)
    {
      v5 = v1[22];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v6;
          v9 = *v4;
          v4 += 20;
          v8 = v9;
          if (v9)
          {
            ++v6;
          }

          --v5;
        }

        while (v5);
        if (v6)
        {
          if (v8)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v7;
          }

          do
          {
            v11 = v1[37];
            if (!v11)
            {
              break;
            }

            v12 = v1[39];
            if (!v12)
            {
              v12 = v1[36];
            }

            v13 = v12 - 1;
            v14 = *(*(v1 + 20) + 4 * (v12 - 1));
            v1[39] = v13;
            v1[37] = v11 - 1;
            if (v14 >= v1[22])
            {
              break;
            }

            v15 = *(v1 + 12) + 160 * v14;
            *(v15 + 144) = -1;
            if (!pthread_mutex_lock((v15 + 24)))
            {
              v16 = *(v15 + 16);
              *(v15 + 16) = v16 + 1;
              if (v16 || !pthread_cond_broadcast((v15 + 88)))
              {
                pthread_mutex_unlock((v15 + 24));
              }
            }

            joinThread(*v15);
            *v15 = 0;
            --v10;
          }

          while (v10);
        }
      }
    }

    v17 = *(v1 + 4);
    if (v17)
    {
      v3 = v17(*(v1 + 1)) >= 0 && v2 == 0;
    }

    v19 = *(v1 + 14);
    if (v19)
    {
      if (v1[26])
      {
        v20 = 0;
        v21 = 16;
        do
        {
          free(*(*(v1 + 14) + v21));
          ++v20;
          v21 += 32;
        }

        while (v20 < v1[26]);
        v19 = *(v1 + 14);
      }

      free(v19);
    }

    free(*(v1 + 10));
    v22 = *(v1 + 16);
    if (v22)
    {
      if (v1[30])
      {
        v23 = 0;
        v24 = 88;
        do
        {
          v25 = (*(v1 + 16) + v24);
          if (!pthread_mutex_destroy(&v25[-2].__opaque[24]))
          {
            pthread_cond_destroy(v25);
          }

          ++v23;
          v24 += 136;
        }

        while (v23 < v1[30]);
        v22 = *(v1 + 16);
      }

      free(v22);
    }

    free(*(v1 + 23));
    *(v1 + 21) = 0;
    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    v26 = *(v1 + 12);
    if (v26)
    {
      if (v1[22])
      {
        v27 = 0;
        v28 = 88;
        do
        {
          v29 = (*(v1 + 12) + v28);
          if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
          {
            pthread_cond_destroy(v29);
          }

          ++v27;
          v28 += 160;
        }

        while (v27 < v1[22]);
        v26 = *(v1 + 12);
      }

      free(v26);
    }

    free(*(v1 + 20));
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
    *(v1 + 20) = 0;
    free(*(v1 + 8));
    if (!pthread_mutex_destroy((v1 + 52)) && !pthread_cond_destroy((v1 + 68)))
    {
      free(*(v1 + 25));
    }

    if (!pthread_mutex_destroy((v1 + 84)) && !pthread_cond_destroy((v1 + 100)))
    {
      free(*(v1 + 41));
    }

    if (!pthread_mutex_destroy((v1 + 116)) && !pthread_cond_destroy(v1 + 11))
    {
      free(*(v1 + 57));
    }

    if ((*v1 & 0x8000000000000000) != 0)
    {
      v30 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "%12llu blocks\n", *(v1 + 7));
      fprintf(*v30, "%12u blocks in cache\n", v1[26]);
      v31 = *v30;
      v32 = atomic_load(v1 + 75);
      fprintf(v31, "%12llu blocks computed\n", v32);
      v33 = *v30;
      v34 = atomic_load(v1 + 76);
      fprintf(v33, "%12llu requests processed\n", v34);
    }

    free(v1);
    return (v3 - 1);
  }

  return result;
}

void *AAGenericRandomAccessInputStreamOpen(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = calloc(1uLL, 0x68uLL);
  v18 = malloc(0x268uLL);
  v19 = v18;
  if (v18)
  {
    memset_s(v18, 0x268uLL, 0, 0x268uLL);
    if (v17)
    {
      if (a4 < a3)
      {
        v22 = "Cache size must be >= n_workers";
        v23 = 653;
        goto LABEL_23;
      }

      *(v19 + 16) = a6;
      *(v19 + 24) = a7;
      *v19 = a9;
      *(v19 + 8) = a5;
      *(v19 + 48) = a2;
      *(v19 + 32) = a8;
      *(v19 + 40) = a1;
      *(v19 + 56) = (a1 + a2 - 1) / a2;
      *(v19 + 104) = a4;
      *(v19 + 88) = a3;
      *(v19 + 120) = 2 * a3;
      v25 = 3 * a3 + 1;
      *(v19 + 72) = v25;
      if (a9 < 0)
      {
        v26 = MEMORY[0x29EDCA610];
        fprintf(*MEMORY[0x29EDCA610], "%12llu blocks in file\n", (a1 + a2 - 1) / a2);
        fprintf(*v26, "%12u blocks in cache\n", *(v19 + 104));
        fprintf(*v26, "%12u workers\n", *(v19 + 88));
        fprintf(*v26, "%12u requests\n", *(v19 + 120));
        fprintf(*v26, "%12u messages\n", *(v19 + 72));
        v25 = *(v19 + 72);
      }

      *(v19 + 192) = 0;
      *(v19 + 196) = v25;
      v27 = calloc(v25, 4uLL);
      *(v19 + 200) = v27;
      if (v27)
      {
        if (pthread_mutex_init((v19 + 208), 0))
        {
LABEL_10:
          v31 = "SharedArrayInit: pthread_mutex_init failed\n";
          v32 = 56;
LABEL_22:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v32, 0, v31, v28, v29, v30, v65);
          v22 = "SharedArrayInit";
          v23 = 684;
          goto LABEL_23;
        }

        if (pthread_cond_init((v19 + 272), 0))
        {
LABEL_12:
          v31 = "SharedArrayInit: pthread_cond_init failed\n";
          v32 = 57;
          goto LABEL_22;
        }

        v33 = *(v19 + 72);
        *(v19 + 320) = 0;
        *(v19 + 324) = v33;
        v34 = calloc(v33, 4uLL);
        *(v19 + 328) = v34;
        if (v34)
        {
          if (pthread_mutex_init((v19 + 336), 0))
          {
            goto LABEL_10;
          }

          if (pthread_cond_init((v19 + 400), 0))
          {
            goto LABEL_12;
          }

          v35 = *(v19 + 120);
          *(v19 + 448) = 0;
          *(v19 + 452) = v35;
          v36 = calloc(v35, 4uLL);
          *(v19 + 456) = v36;
          if (v36)
          {
            if (pthread_mutex_init((v19 + 464), 0))
            {
              goto LABEL_10;
            }

            if (!pthread_cond_init((v19 + 528), 0))
            {
              v37 = *(v19 + 56);
              if (v37 < 0x800000001)
              {
                v39 = calloc(v37, 4uLL);
                *(v19 + 64) = v39;
                if (v39)
                {
                  v40 = *(v19 + 56);
                  if (v40)
                  {
                    memset(v39, 255, 4 * v40);
                  }

                  v41 = calloc(*(v19 + 104), 0x20uLL);
                  *(v19 + 112) = v41;
                  if (!v41)
                  {
                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 693;
                    goto LABEL_24;
                  }

                  v42 = *(v19 + 104);
                  if (v42)
                  {
                    v43 = 0;
                    v44 = *(v19 + 48);
                    v45 = (v41 + 16);
                    while (1)
                    {
                      *(v45 - 1) = -1;
                      atomic_store(0, v45 - 4);
                      v46 = malloc(v44);
                      *v45 = v46;
                      if (!v46)
                      {
                        break;
                      }

                      ++v43;
                      v45 += 8;
                      if (v43 >= v42)
                      {
                        goto LABEL_34;
                      }
                    }

                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 700;
                    goto LABEL_24;
                  }

LABEL_34:
                  v47 = calloc(*(v19 + 72), 8uLL);
                  *(v19 + 80) = v47;
                  if (!v47)
                  {
                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 705;
                    goto LABEL_24;
                  }

                  if (*(v19 + 72))
                  {
                    v48 = 0;
                    while ((SharedArrayPush_0((v19 + 192), v48) & 0x80000000) == 0)
                    {
                      if (++v48 >= *(v19 + 72))
                      {
                        goto LABEL_39;
                      }
                    }

                    v22 = "SharedArrayPush";
                    v23 = 708;
                    goto LABEL_23;
                  }

LABEL_39:
                  v49 = *(v19 + 120);
                  if (v49 < 0x3C3C3C3D)
                  {
                    v50 = calloc(v49, 0x88uLL);
                    *(v19 + 128) = v50;
                    if (v50)
                    {
                      v51 = *(v19 + 120);
                      v52 = malloc(4 * v51);
                      *(v19 + 184) = v52;
                      if (v52)
                      {
                        *(v19 + 176) = 0;
                        *(v19 + 168) = v51;
                        *(v19 + 172) = 0;
                        if (!v51)
                        {
LABEL_52:
                          v55 = *(v19 + 88);
                          if (v55 < 0x33333334)
                          {
                            v56 = calloc(v55, 0xA0uLL);
                            *(v19 + 96) = v56;
                            if (v56)
                            {
                              v57 = *(v19 + 88);
                              v58 = malloc(4 * v57);
                              *(v19 + 160) = v58;
                              if (v58)
                              {
                                *(v19 + 152) = 0;
                                *(v19 + 144) = v57;
                                *(v19 + 148) = 0;
                                if (v57)
                                {
                                  v59 = 0;
                                  v60 = 0;
                                  while (1)
                                  {
                                    v61 = *(v19 + 96) + v59;
                                    if ((SemInit(v61 + 16) & 0x80000000) != 0)
                                    {
                                      v22 = "SemInit";
                                      v23 = 729;
                                      goto LABEL_23;
                                    }

                                    *(v61 + 8) = v19;
                                    *(v61 + 136) = v60;
                                    if (*(v19 + 148) >= *(v19 + 144))
                                    {
                                      v22 = "LocalArrayPush";
                                      v23 = 732;
                                      goto LABEL_23;
                                    }

                                    v62 = *(v19 + 156);
                                    *(*(v19 + 160) + 4 * v62) = v60;
                                    v63 = *(v19 + 148);
                                    v64 = v62 + 1 == *(v19 + 144) ? 0 : v62 + 1;
                                    *(v19 + 156) = v64;
                                    *(v19 + 148) = v63 + 1;
                                    if ((createThread(v61, workerProc_4, v61, 0) & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    ++v60;
                                    v59 += 160;
                                    if (v60 >= *(v19 + 88))
                                    {
                                      goto LABEL_68;
                                    }
                                  }

                                  v22 = "Worker thread creation";
                                  v23 = 733;
                                }

                                else
                                {
LABEL_68:
                                  if ((createThread((v19 + 136), streamProc_0, v19, 0) & 0x80000000) == 0)
                                  {
                                    v17[2] = graisRead;
                                    v17[4] = graisPRead;
                                    v17[6] = graisSeek;
                                    v17[7] = graisAbort;
                                    *v17 = v19;
                                    v17[1] = graisClose;
                                    return v17;
                                  }

                                  v22 = "Stream thread creation";
                                  v23 = 737;
                                }
                              }

                              else
                              {
                                v22 = "LocalArrayInit";
                                v23 = 725;
                              }

                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            *__error() = 12;
                            *(v19 + 96) = 0;
                          }

                          v24 = *__error();
                          v22 = "malloc";
                          v23 = 724;
                          goto LABEL_24;
                        }

                        v53 = 0;
                        v54 = 16;
                        while (1)
                        {
                          if ((SemInit(*(v19 + 128) + v54) & 0x80000000) != 0)
                          {
                            v22 = "SemInit";
                            v23 = 718;
                            goto LABEL_23;
                          }

                          if ((SharedArrayPush_0((v19 + 448), v53) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v53;
                          v54 += 136;
                          if (v53 >= *(v19 + 120))
                          {
                            goto LABEL_52;
                          }
                        }

                        v22 = "SharedArrayPush";
                        v23 = 719;
                      }

                      else
                      {
                        v22 = "LocalArrayInit";
                        v23 = 714;
                      }

LABEL_23:
                      v24 = 0;
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    *__error() = 12;
                    *(v19 + 128) = 0;
                  }

                  v24 = *__error();
                  v22 = "malloc";
                  v23 = 713;
                  goto LABEL_24;
                }
              }

              else
              {
                *__error() = 12;
                *(v19 + 64) = 0;
              }

              v24 = *__error();
              v22 = "malloc";
              v23 = 688;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }
      }

      v31 = "SharedArrayInit: malloc failed\n";
      v32 = 55;
      goto LABEL_22;
    }
  }

  v24 = *__error();
  v22 = "malloc";
  v23 = 650;
LABEL_24:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "AAGenericRandomAccessInputStreamOpen", v23, 33, v24, v22, v20, v21, v65);
  free(v17);
  graisClose(v19);
  return 0;
}

uint64_t SharedArrayPush_0(unsigned int *a1, int a2)
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

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t workerProc_4(uint64_t a1)
{
  v2 = 1;
  v3 = *(a1 + 8);
  while (1)
  {
    if (pthread_mutex_lock((a1 + 24)))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 88), (a1 + 24)))
      {
        goto LABEL_7;
      }
    }

    *(a1 + 16) = v6 - 1;
    if (pthread_mutex_unlock((a1 + 24)))
    {
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 365, 33, 0, "SemAcquire", v4, v5, v13);
      v2 = 0;
    }

    v7 = *(a1 + 144);
    if (v7 == -1)
    {
      return a1;
    }

    if (((*(v3 + 16))(*(v3 + 8), *(a1 + 136), v7, *(*(v3 + 112) + 32 * *(a1 + 152) + 16)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 374, 33, 0, "get block data", v8, v9, v13);
      v2 = 0;
    }

    *(a1 + 156) = v2;
    if ((sendMessage_0(v3, -1, *(a1 + 136)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 381, 33, 0, "send worker message", v10, v11, v13);
      v2 = 0;
    }
  }
}

uint64_t streamProc_0(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    while (1)
    {
      if (pthread_mutex_lock((a1 + 336)))
      {
        v6 = 91;
        v7 = "SharedArrayPop: pthread_mutex_lock failed\n";
        goto LABEL_9;
      }

      while (1)
      {
        v8 = *(a1 + 320);
        if (v8)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 400), (a1 + 336)))
        {
          v6 = 94;
          v7 = "SharedArrayPop: pthread_cond_wait failed\n";
          goto LABEL_9;
        }
      }

      v9 = v8 - 1;
      *(a1 + 320) = v9;
      v10 = *(*(a1 + 328) + 4 * v9);
      if (!pthread_mutex_unlock((a1 + 336)))
      {
        break;
      }

      v6 = 98;
      v7 = "SharedArrayPop: pthread_mutex_unlock failed\n";
LABEL_9:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v7, v3, v4, v5, v63);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 186, 33, 0, "SharedArrayPop", v11, v12, v64);
      *(a1 + 576) = 1;
    }

    v13 = (*(a1 + 80) + 8 * v10);
    v15 = *v13;
    v14 = v13[1];
    if ((SharedArrayPush_0((a1 + 192), v10) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 192, 33, 0, "SharedArrayPush", v16, v17, v63);
      *(a1 + 576) = 1;
    }

    if ((v14 & v15) == 0xFFFFFFFF)
    {
      v18 = 1;
    }

    else
    {
      v18 = v2;
    }

    v65 = v18;
    v19 = v15;
    if (v14 != -1)
    {
      atomic_fetch_add_explicit((a1 + 600), 1uLL, memory_order_relaxed);
      v20 = *(a1 + 96) + 160 * v14;
      v21 = *(a1 + 112) + 32 * *(v20 + 152);
      if (*(v20 + 156))
      {
        atomic_fetch_add(v21, 1u);
        atomic_fetch_add((v21 + 4), 0xFFFFFFFF);
        *(v21 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        v22 = *(v20 + 152);
      }

      else
      {
        atomic_fetch_add((v21 + 4), 0xFFFFFFFF);
        *(v21 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        *(v21 + 8) = -1;
        v22 = -3;
      }

      *(*(a1 + 64) + 4 * *(v20 + 144)) = v22;
      *(v20 + 144) = -1;
      *(v20 + 152) = -1;
      if (*(a1 + 148) >= *(a1 + 144))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 242, 33, 0, "LocalArrayPush", v16, v17, v63);
        *(a1 + 576) = 1;
      }

      else
      {
        v23 = *(a1 + 156);
        *(*(a1 + 160) + 4 * v23) = v14;
        v24 = *(a1 + 148);
        if (v23 + 1 == *(a1 + 144))
        {
          v25 = 0;
        }

        else
        {
          v25 = v23 + 1;
        }

        *(a1 + 156) = v25;
        *(a1 + 148) = v24 + 1;
      }
    }

    v26 = *(a1 + 172);
    if (v19 == -1)
    {
      goto LABEL_30;
    }

    atomic_fetch_add_explicit((a1 + 608), 1uLL, memory_order_relaxed);
    v27 = *(a1 + 168);
    if (v26 < v27)
    {
      if (*(a1 + 176))
      {
        v27 = *(a1 + 176);
      }

      v28 = v27 - 1;
      *(*(a1 + 184) + 4 * v28) = v19;
      v26 = *(a1 + 172) + 1;
      *(a1 + 172) = v26;
      *(a1 + 176) = v28;
LABEL_30:
      if (v26)
      {
        goto LABEL_33;
      }

      goto LABEL_96;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 254, 33, 0, "LocalArrayEnqueue", v16, v17, v63);
    *(a1 + 576) = 1;
    v26 = *(a1 + 172);
    if (v26)
    {
LABEL_33:
      v29 = 0;
      while (1)
      {
        v30 = *(a1 + 172);
        if (v30)
        {
          v31 = *(a1 + 180);
          if (!v31)
          {
            v31 = *(a1 + 168);
          }

          v32 = v31 - 1;
          v33 = *(*(a1 + 184) + 4 * (v31 - 1));
          *(a1 + 180) = v32;
          *(a1 + 172) = v30 - 1;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 262, 33, 0, "LocalArrayDequeue", v16, v17, v63);
          *(a1 + 576) = 1;
          v33 = -1;
        }

        v34 = *(a1 + 128) + 136 * v33;
        if (v65)
        {
          break;
        }

        v36 = *(*(a1 + 64) + 4 * *v34);
        if (v36 < *(a1 + 104))
        {
          *(v34 + 8) = v36;
          v37 = *(a1 + 112) + 32 * v36;
          atomic_fetch_add(v37, 1u);
          *(v37 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
          if (!pthread_mutex_lock((v34 + 24)))
          {
            v38 = *(v34 + 16);
            *(v34 + 16) = v38 + 1;
            if ((v38 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
            {
              goto LABEL_81;
            }
          }

          v42 = 292;
          goto LABEL_79;
        }

        if (v36 == -3)
        {
          *(v34 + 8) = -1;
          if (!pthread_mutex_lock((v34 + 24)))
          {
            v39 = *(v34 + 16);
            *(v34 + 16) = v39 + 1;
            if ((v39 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
            {
              goto LABEL_81;
            }
          }

          v42 = 303;
          goto LABEL_79;
        }

        v40 = *(a1 + 168);
        if (*(a1 + 172) >= v40)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 308, 33, 0, "LocalArrayEnqueue", v16, v17, v63);
          *(a1 + 576) = 1;
        }

        else
        {
          if (*(a1 + 176))
          {
            v40 = *(a1 + 176);
          }

          v41 = v40 - 1;
          *(*(a1 + 184) + 4 * v41) = v33;
          ++*(a1 + 172);
          *(a1 + 176) = v41;
        }

        if (v36 == -1 && *(a1 + 148))
        {
          v43 = *v34;
          if (*(a1 + 56) <= *v34)
          {
            v54 = 149;
            v55 = "Invalid block_id, or no workers available";
            goto LABEL_95;
          }

          while (!*(a1 + 104))
          {
            v47 = -1;
LABEL_73:
            v45 = v47;
            v51 = *(a1 + 112) + 32 * v47;
            v52 = 1;
            atomic_compare_exchange_strong(v51, &v52, 0);
            if (v52 == 1)
            {
              *(*(a1 + 64) + 4 * *(v51 + 8)) = -1;
              *(v51 + 8) = -1;
              goto LABEL_85;
            }
          }

          v44 = 0;
          v45 = 0;
          v46 = -1;
          v47 = -1;
          while (1)
          {
            v48 = *(a1 + 112);
            if (!atomic_load((v48 + v44 + 4)))
            {
              if (*(v48 + v44 + 8) == -1)
              {
                v51 = v48 + v44;
                v47 = v45;
LABEL_85:
                atomic_fetch_add((v51 + 4), 1u);
                *(*(a1 + 112) + 32 * v45 + 8) = v43;
                v56 = *(a1 + 148);
                if (v56)
                {
                  v57 = *(a1 + 156);
                  if (!v57)
                  {
                    v57 = *(a1 + 144);
                  }

                  v58 = v57 - 1;
                  v59 = *(*(a1 + 160) + 4 * v58);
                  *(a1 + 156) = v58;
                  *(a1 + 148) = v56 - 1;
                  v60 = *(a1 + 96) + 160 * v59;
                  *(v60 + 144) = v43;
                  *(v60 + 152) = v47;
                  *(*(a1 + 64) + 4 * v43) = -2;
                  if (!pthread_mutex_lock((v60 + 24)))
                  {
                    v61 = *(v60 + 16);
                    *(v60 + 16) = v61 + 1;
                    if ((v61 || !pthread_cond_broadcast((v60 + 88))) && !pthread_mutex_unlock((v60 + 24)))
                    {
                      break;
                    }
                  }

                  v54 = 167;
                  v55 = "SemRelease";
                }

                else
                {
                  v54 = 159;
                  v55 = "LocalArrayPop";
                }

LABEL_95:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", v54, 33, 0, v55, v16, v17, v63);
                v42 = 313;
                v53 = "run worker";
LABEL_80:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", v42, 33, 0, v53, v16, v17, v63);
                *(a1 + 576) = 1;
                break;
              }

              v50 = *(v48 + v44 + 24);
              if (v50 < v46)
              {
                v46 = v50;
                v47 = v45;
              }
            }

            ++v45;
            v44 += 32;
            if (v45 >= *(a1 + 104))
            {
              goto LABEL_73;
            }
          }
        }

LABEL_81:
        if (++v29 == v26)
        {
          goto LABEL_96;
        }
      }

      *(v34 + 8) = -1;
      if (!pthread_mutex_lock((v34 + 24)))
      {
        v35 = *(v34 + 16);
        *(v34 + 16) = v35 + 1;
        if ((v35 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
        {
          goto LABEL_81;
        }
      }

      v42 = 272;
LABEL_79:
      v53 = "SemRelease";
      goto LABEL_80;
    }

LABEL_96:
    v2 = 0;
    if (v65)
    {
      v2 = v65;
      if (*(a1 + 148) == *(a1 + 88))
      {
        return a1;
      }
    }
  }
}

uint64_t graisRead(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  else
  {
    return graisPRead(a1, a2, a3, atomic_fetch_add((a1 + 584), a3));
  }
}

uint64_t graisPRead(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = a4 + a3;
    if (a4 + a3 >= *(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    if (__CFADD__(a4, a3))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = v7;
    }

    if (v8 > a4)
    {
      v9 = a4 / *(a1 + 48);
      if (v9 < *(a1 + 56))
      {
        v4 = 0;
        v11 = (a1 + 448);
        while (1)
        {
          v12 = *(a1 + 48);
          if (pthread_mutex_lock((a1 + 464)))
          {
            v30 = "SharedArrayPop: pthread_mutex_lock failed\n";
            v31 = 91;
LABEL_38:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v31, 0, v30, v13, v14, v15, v34);
            v32 = "SharedArrayPop";
            v33 = 395;
            goto LABEL_39;
          }

          while (!*v11)
          {
            if (pthread_cond_wait((a1 + 528), (a1 + 464)))
            {
              v30 = "SharedArrayPop: pthread_cond_wait failed\n";
              v31 = 94;
              goto LABEL_38;
            }
          }

          v16 = *v11 - 1;
          *(a1 + 448) = v16;
          v17 = *(*(a1 + 456) + 4 * v16);
          if (pthread_mutex_unlock((a1 + 464)))
          {
            v30 = "SharedArrayPop: pthread_mutex_unlock failed\n";
            v31 = 98;
            goto LABEL_38;
          }

          v18 = *(a1 + 128) + 136 * v17;
          *v18 = v9;
          *(v18 + 8) = -1;
          if ((sendMessage_0(a1, v17, -1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 404, 33, 0, "send request", v19, v20, v34);
            v35 = 0;
          }

          else
          {
            v35 = 1;
          }

          if (pthread_mutex_lock((v18 + 24)))
          {
            goto LABEL_26;
          }

          while (1)
          {
            v23 = *(v18 + 16);
            if (v23 > 0)
            {
              break;
            }

            if (pthread_cond_wait((v18 + 88), (v18 + 24)))
            {
              goto LABEL_26;
            }
          }

          *(v18 + 16) = v23 - 1;
          if (pthread_mutex_unlock((v18 + 24)))
          {
LABEL_26:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 410, 33, 0, "SemAcquire", v21, v22, v34);
            v35 = 0;
          }

          v24 = *(v18 + 8);
          if ((SharedArrayPush_0((a1 + 448), v17) & 0x80000000) != 0)
          {
            break;
          }

          if (!v35 || v24 == -1)
          {
            goto LABEL_40;
          }

          v27 = v9 * v12;
          v36 = v9 * v12 + v12;
          if (v36 >= v8)
          {
            v28 = v8;
          }

          else
          {
            v28 = v9 * v12 + v12;
          }

          memcpy(a2, (*(*(a1 + 112) + 32 * v24 + 16) + v5 - v27), v28 - v5);
          v4 += v28 - v5;
          atomic_fetch_add((*(a1 + 112) + 32 * v24), 0xFFFFFFFF);
          if (v36 < v8)
          {
            a2 += v28 - v5;
            ++v9;
            v5 = v28;
            if (v9 < *(a1 + 56))
            {
              continue;
            }
          }

          return v4;
        }

        v32 = "SharedArrayPush";
        v33 = 418;
LABEL_39:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", v33, 33, 0, v32, v25, v26, v34);
LABEL_40:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "graisPRead", 464, 33, 0, "acquire segment in cache", v25, v26, v34);
        return -1;
      }
    }

    return 0;
  }

  return -1;
}

uint64_t graisSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 576))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 584), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 40);
    }

    atomic_store(a2, (a1 + 584));
    return a2;
  }

  return -1;
}

uint64_t graisAbort(uint64_t result)
{
  if (!*(result + 576))
  {
    *(result + 576) = 1;
    v1 = *(result + 24);
    if (v1)
    {
      return v1(*(result + 8));
    }
  }

  return result;
}

uint64_t sendMessage_0(uint64_t a1, int a2, int a3)
{
  if (pthread_mutex_lock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v10 = 91;
LABEL_8:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v10, 0, v9, v6, v7, v8, v20);
    v16 = "SharedArrayPop";
    v17 = 339;
    goto LABEL_9;
  }

  while (1)
  {
    v11 = *(a1 + 192);
    if (v11)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 272), (a1 + 208)))
    {
      v9 = "SharedArrayPop: pthread_cond_wait failed\n";
      v10 = 94;
      goto LABEL_8;
    }
  }

  v12 = v11 - 1;
  *(a1 + 192) = v12;
  v13 = *(*(a1 + 200) + 4 * v12);
  if (pthread_mutex_unlock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v10 = 98;
    goto LABEL_8;
  }

  v19 = (*(a1 + 80) + 8 * v13);
  *v19 = a2;
  v19[1] = a3;
  if ((SharedArrayPush_0((a1 + 320), v13) & 0x80000000) != 0)
  {
    v16 = "SharedArrayPush";
    v17 = 347;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", v17, 33, 0, v16, v14, v15, v20);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t contextPassThroughProc(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 104) = *(a2 + 64);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = v2;
  v5 = *(a1 + 120);
  if (v5)
  {
    return v5(*(a1 + 112));
  }

  else
  {
    return 0;
  }
}

uint64_t verifySegmentProc(uint64_t a1, size_t __size, uint64_t a3, int a4, void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(a1 + 56) >= __size)
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v15 = malloc(__size);
    v20 = v15;
    if (v15)
    {
      v21 = *(a1 + 8);
      __s2 = a5;
      if (*(v21 + 32))
      {
        v22 = 0;
        if (__size)
        {
          v23 = v15;
          v24 = __size;
          while (1)
          {
            v25 = (*(v21 + 32))(*v21, v23, v24, a3);
            if (v25 < 0)
            {
              break;
            }

            if (v25)
            {
              v23 = (v23 + v25);
              v22 += v25;
              a3 += v25;
              v24 -= v25;
              if (v24)
              {
                continue;
              }
            }

            goto LABEL_13;
          }

          v22 = v25;
        }
      }

      else
      {
        v22 = -1;
      }

LABEL_13:
      if (v22 == __size)
      {
        v26 = aeaChecksum(v35, a4, v20, __size, v16, v17, v18, v19);
        v8 = 0;
        if (v26 < 0 || LODWORD(v35[0]) != a6)
        {
          goto LABEL_18;
        }

        if (!memcmp(v35 + 4, __s2, a6))
        {
          v29 = *(a1 + 128);
          if (v29 && (v30 = *(a1 + 72)) != 0 && (v29(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), __size, memory_order_relaxed) + __size) * 100.0) / v30) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "verifySegmentProc", 128, 128, 0, "progress_proc", v31, v32, v33);
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = 1;
          }

          goto LABEL_18;
        }
      }
    }

    v8 = 0;
LABEL_18:
    free(v20);
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "verifySegmentProc", 112, 128, 0, "Invalid segment size", a7, a8, v33);
  v8 = 0xFFFFFFFFLL;
LABEL_19:
  v27 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t readerProc(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_19:
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "readerProc", 142, 128, *v17, "aaMalloc", v18, v19, v22);
    v23 = 0;
    goto LABEL_20;
  }

  v23 = malloc(v3);
  if (!v23)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 3;
  do
  {
    v6 = v5;
    v7 = a1[2];
    v8 = *v2;
    if (*(*v2 + 32))
    {
      if (!v7)
      {
        break;
      }

      v9 = 0;
      v10 = a1[1];
      v11 = v23;
      v12 = a1[2];
      while (1)
      {
        v13 = (*(v8 + 32))(*v8, v11, v12, v10);
        if (v13 < 0)
        {
          break;
        }

        if (v13)
        {
          v11 += v13;
          v9 += v13;
          v10 = (v10 + v13);
          v12 = (v12 - v13);
          if (v12)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v9 = v13;
    }

    else
    {
      v9 = -1;
    }

LABEL_14:
    if (v7 == v9)
    {
      break;
    }

    v5 = v6 - 1;
    v4 = 1;
  }

  while (v6);
  if ((AAAsyncByteStreamProcess(v2[4], v23, a1[2], a1[1]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "readerProc", 149, 128, 0, "AAAsyncByteStreamProcess", v14, v15, v22);
  }

  else if ((v4 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_25;
  }

LABEL_20:
  if (!pthread_mutex_lock((v2 + 29)))
  {
    v20 = *(v2 + 56);
    *(v2 + 56) = v20 + 1;
    if (v20 || !pthread_cond_broadcast((v2 + 37)))
    {
      pthread_mutex_unlock((v2 + 29));
    }
  }

  v16 = 0xFFFFFFFFLL;
LABEL_25:
  free(v23);
  return v16;
}

uint64_t writerProc_0(uint64_t a1, size_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (*(a1 + 384))
  {
    if (pthread_mutex_lock((a1 + 160)))
    {
      v12 = "MutexLock";
      v13 = 172;
LABEL_30:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", v13, 128, 0, v12, a7, a8, v43);
      return 0xFFFFFFFFLL;
    }

    v18 = atomic_load((a1 + 376));
    if (!v18)
    {
      atomic_compare_exchange_strong((a1 + 376), &v18, 1u);
    }

    v19 = *(a1 + 360);
    if (v19 <= a3)
    {
      if (v19 < a3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = *(a1 + 344);
        do
        {
          if (!*(v26 + v24))
          {
            v39 = (v26 + v24);
            goto LABEL_57;
          }

          ++v25;
          v24 += 24;
          v23 += 2;
        }

        while (v25 != *(a1 + 352));
        if (*(a1 + 388))
        {
          v20 = "too many writes pending";
          v21 = 190;
          goto LABEL_14;
        }

        if (v25 < 0)
        {
          v20 = "too many writes pending";
          v21 = 198;
          goto LABEL_14;
        }

        if (is_mul_ok(v23, 0x18uLL) && 24 * v23 <= 0x2000000000)
        {
          v41 = calloc(v23, 0x18uLL);
          if (v41)
          {
            v42 = v41;
            memcpy(v41, *(a1 + 344), 24 * *(a1 + 352));
            free(*(a1 + 344));
            *(a1 + 344) = v42;
            *(a1 + 352) = v23;
            v39 = &v42[v24];
LABEL_57:
            if (v10 < 0x2000000001)
            {
              v40 = malloc(v10);
              *v39 = v40;
              if (v40)
              {
                memcpy(v40, a4, v10);
                v22 = 0;
                *(v39 + 1) = a3;
                *(v39 + 2) = v10;
                goto LABEL_54;
              }
            }

            else
            {
              *__error() = 12;
              *v39 = 0;
            }

            v20 = "malloc";
            v21 = 217;
            goto LABEL_14;
          }
        }

        else
        {
          *__error() = 12;
        }

        v20 = "too many writes pending";
        v21 = 200;
        goto LABEL_14;
      }

      for (i = 0; ; v10 = i[2])
      {
        v30 = *(a1 + 8);
        if (*(v30 + 24))
        {
          v31 = 0;
          if (v10)
          {
            v32 = v10;
            while (1)
            {
              v33 = (*(v30 + 24))(*v30, a4, v32);
              if (v33 < 1)
              {
                break;
              }

              a4 += v33;
              v31 += v33;
              v32 -= v33;
              if (!v32)
              {
                goto LABEL_39;
              }
            }

            v31 = v33;
          }
        }

        else
        {
          v31 = -1;
        }

LABEL_39:
        if (v10 != v31)
        {
          break;
        }

        if (i)
        {
          free(*i);
          *i = 0;
        }

        *(a1 + 360) += v10;
        v34 = *(a1 + 128);
        if (v34)
        {
          v35 = *(a1 + 72);
          if (v35)
          {
            v34(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), v10, memory_order_relaxed) + v10) * 100.0) / v35);
          }
        }

        if (pthread_mutex_lock((a1 + 232)) || (v36 = *(a1 + 224), *(a1 + 224) = v36 + 1, !v36) && pthread_cond_broadcast((a1 + 296)) || pthread_mutex_unlock((a1 + 232)))
        {
          v20 = "SemRelease";
          v21 = 241;
          goto LABEL_14;
        }

        v37 = 0;
        i = *(a1 + 344);
        while (i[1] != *(a1 + 360))
        {
          ++v37;
          i += 3;
          if (v37 == *(a1 + 352))
          {
            v22 = 0;
            goto LABEL_54;
          }
        }

        a4 = *i;
      }

      v20 = "aaByteStreamWriteExpected";
      v21 = 229;
    }

    else
    {
      v20 = "data already written";
      v21 = 178;
    }

LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", v21, 128, 0, v20, a7, a8, v43);
    v22 = 0xFFFFFFFFLL;
LABEL_54:
    pthread_mutex_unlock((a1 + 160));
    return v22;
  }

  v14 = *(a1 + 8);
  if (*(v14 + 40))
  {
    v15 = 0;
    if (a2)
    {
      v16 = a2;
      while (1)
      {
        v17 = (*(v14 + 40))(*v14, a4, v16, a3);
        if (v17 < 1)
        {
          break;
        }

        a4 += v17;
        v15 += v17;
        a3 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v15 = v17;
    }
  }

  else
  {
    v15 = -1;
  }

LABEL_24:
  if (v15 != v10)
  {
    v12 = "aaByteStreamPWriteExpected";
    v13 = 166;
    goto LABEL_30;
  }

  v27 = *(a1 + 128);
  if (v27)
  {
    v28 = *(a1 + 72);
    if (v28)
    {
      if ((v27(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), v10, memory_order_relaxed) + v10) * 100.0) / v28) & 0x80000000) != 0)
      {
        v12 = "progress_proc";
        v13 = 167;
        goto LABEL_30;
      }
    }
  }

  return 0;
}

uint64_t AEADecryptToStreamChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, unint64_t a7, unint64_t a8, int a9)
{
  DefaultNThreads = a9;
  v94 = *MEMORY[0x29EDCA608];
  v91 = 0u;
  __count = 0u;
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  *v87 = 0u;
  *v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  if (!a9)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v78[0] = a1;
  v78[1] = a2;
  *&v85 = a3;
  *(&v85 + 1) = a4;
  v86[0] = a5;
  *&__count = 3 * DefaultNThreads - 1;
  v18 = (a8 & 0x400) == 0 || *(a2 + 40) == 0;
  v92 = v18;
  v19 = (a8 & 0x100000000000000) != 0 && *(a2 + 32) && !v18;
  HIDWORD(v91) = v19;
  v93 = a6 == 0;
  if (pthread_mutex_init(v88, 0))
  {
    v22 = "MutexInit";
    v23 = 288;
    goto LABEL_15;
  }

  *&v88[64] = 0;
  if (pthread_mutex_init(&v88[72], 0) || pthread_cond_init(&v88[136], 0))
  {
    v22 = "SemInit";
    v23 = 289;
    goto LABEL_15;
  }

  if (DefaultNThreads >= 2)
  {
    v38 = DefaultNThreads - 1;
    do
    {
      if (pthread_mutex_lock(&v88[72]) || (v39 = *&v88[64], ++*&v88[64], !v39) && pthread_cond_broadcast(&v88[136]) || pthread_mutex_unlock(&v88[72]))
      {
        v22 = "SemRelease";
        v23 = 292;
        goto LABEL_15;
      }

      --v38;
    }

    while (v38);
  }

  if (is_mul_ok(__count, 0x18uLL) && (24 * __count) < 0x2000000001)
  {
    v41 = calloc(__count, 0x18uLL);
  }

  else
  {
    v40 = __error();
    v41 = 0;
    *v40 = 12;
  }

  *(&v89 + 1) = v41;
  if (DefaultNThreads < 0)
  {
    *__error() = 12;
    v86[1] = 0;
    v43 = __error();
    v42 = 0;
    *v43 = 12;
  }

  else
  {
    v86[1] = calloc(DefaultNThreads, 0x18uLL);
    v42 = calloc(DefaultNThreads, 8uLL);
  }

  v87[0] = v42;
  if (!*(&v89 + 1) || !v86[1] || !v42)
  {
    v24 = *__error();
    v22 = "malloc";
    v23 = 299;
    goto LABEL_16;
  }

  if (HIDWORD(v91))
  {
    v44 = verifySegmentProc;
  }

  else
  {
    v44 = 0;
  }

  v45 = AEADecryptAsyncStreamOpen(v78, contextPassThroughProc, v44, writerProc_0, a8, DefaultNThreads);
  *&v79 = v45;
  if (!v45)
  {
    v22 = "AEADecryptAsyncStreamOpen";
    v23 = 308;
    goto LABEL_15;
  }

  if (a6)
  {
    v47 = AAChunkAsyncStreamOpen(v45, a6, a7, a8, DefaultNThreads, v46, v20, v21);
    *(&v79 + 1) = v47;
    if (!v47)
    {
      v22 = "AAChunkAsyncStreamOpen";
      v23 = 317;
      goto LABEL_15;
    }

    v48 = v47;
    v45 = v79;
  }

  else
  {
    v48 = *(&v79 + 1);
  }

  if (!v48)
  {
    v48 = v45;
  }

  *&v80 = v48;
  if (DefaultNThreads >= 1)
  {
    for (i = 0; i != DefaultNThreads; v50[i++] = v51)
    {
      v50 = v87[0];
      v51 = v86[1] + 24 * i;
      *v51 = v78;
    }
  }

  v87[1] = ThreadPoolCreate(DefaultNThreads, v87[0], readerProc);
  if (!v87[1])
  {
    v22 = "ThreadPoolCreate";
    v23 = 329;
    goto LABEL_15;
  }

  while (2)
  {
    if (v92)
    {
      v52 = atomic_load(&v91 + 2);
      if (v52 && v93)
      {
        while (!pthread_mutex_lock(&v88[72]))
        {
          v76.tv_sec = 0;
          *&v76.tv_usec = 0;
          gettimeofday(&v76, 0);
          v54 = 1000 * v76.tv_usec;
          if (v76.tv_usec < 1000000)
          {
            v57 = v76.tv_sec + 1;
          }

          else
          {
            if (v54 >= 1999999999)
            {
              v55 = 1999999999;
            }

            else
            {
              v55 = 1000 * v76.tv_usec;
            }

            v56 = v54 - v55 + 999999999;
            v57 = v76.tv_sec + v56 / 0x3B9ACA00 + 2;
            v54 = 1000 * v76.tv_usec - 1000000000 * (v56 / 0x3B9ACA00) - 1000000000;
          }

          v77.tv_sec = v57;
          v77.tv_nsec = v54;
          do
          {
            if (*&v88[64] > 0)
            {
              --*&v88[64];
              if (!pthread_mutex_unlock(&v88[72]))
              {
                goto LABEL_98;
              }

              goto LABEL_108;
            }

            v58 = pthread_cond_timedwait(&v88[136], &v88[72], &v77);
          }

          while (!v58);
          if (v58 != 60 || pthread_mutex_unlock(&v88[72]))
          {
            break;
          }

          if (aaAsyncByteStreamIsCancelled(v80))
          {
            v22 = "aaAsyncByteStreamIsCancelled";
            v23 = 343;
            goto LABEL_15;
          }

          if (!v93)
          {
            goto LABEL_98;
          }
        }

LABEL_108:
        v22 = "SemTimedAcquire";
        v23 = 341;
        break;
      }
    }

    while (1)
    {
LABEL_98:
      v74 = 0;
      v75 = 0;
      Range = AAAsyncByteStreamGetRange(v80, &v74, &v75);
      if (Range < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 352, 128, 0, "AAAsyncByteStreamGetRange", v65, v66, v73);
        v25 = 0;
LABEL_105:
        ThreadPoolSync(v87[1]);
        goto LABEL_17;
      }

      if (Range)
      {
        break;
      }

      usleep(0x186A0u);
    }

    if (!v74)
    {
      v25 = 1;
      goto LABEL_105;
    }

    Worker = ThreadPoolGetWorker(v87[1], v60, v61, v62, v63, v64, v65, v66);
    if (Worker)
    {
      v72 = v74;
      *(Worker + 8) = v75;
      *(Worker + 16) = v72;
      if ((ThreadPoolRunWorker(v87[1], Worker, v68, v69, v70, v71, v20, v21) & 0x80000000) == 0)
      {
        continue;
      }

      v22 = "ThreadPoolRunWorker";
      v23 = 365;
    }

    else
    {
      v22 = "ThreadPoolGetWorker";
      v23 = 362;
    }

    break;
  }

LABEL_15:
  v24 = 0;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", v23, 128, v24, v22, v20, v21, v73);
  v25 = 0;
LABEL_17:
  if (DefaultNThreads >= 1)
  {
    do
    {
      if (!pthread_mutex_lock(&v88[72]))
      {
        v26 = (*&v88[64])++;
        if (v26 || !pthread_cond_broadcast(&v88[136]))
        {
          pthread_mutex_unlock(&v88[72]);
        }
      }

      --DefaultNThreads;
    }

    while (DefaultNThreads);
  }

  if ((ThreadPoolDestroy(v87[1]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 373, 128, 0, "Readers reported errors", v27, v28, v73);
    v25 = 0;
  }

  if ((AAAsyncByteStreamClose(*(&v79 + 1)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 374, 128, 0, "Async stream reported errors", v29, v30, v73);
    v25 = 0;
  }

  if ((AAAsyncByteStreamClose(v79) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 375, 128, 0, "Async stream reported errors", v31, v32, v73);
    v25 = 0;
  }

  pthread_mutex_destroy(v88);
  if (!pthread_mutex_destroy(&v88[72]))
  {
    pthread_cond_destroy(&v88[136]);
  }

  v33 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    if (__count)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        free(*(*(&v89 + 1) + v34));
        ++v35;
        v34 += 24;
      }

      while (v35 < __count);
      v33 = *(&v89 + 1);
    }

    free(v33);
  }

  free(v86[1]);
  free(v87[0]);
  if (v25)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
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

unsigned int *PagedFileCreate(const char *a1, unint64_t a2, unint64_t a3, int a4)
{
  memset(&v58, 0, sizeof(v58));
  if (stat(a1, &v58))
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 320, 21, v10, "%s", v11, v12, a1);
    return 0;
  }

  st_size = v58.st_size;
  if (v58.st_size <= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v58.st_size;
  }

  v15 = v14 + 4095;
  if (v15 >= 0xFFFFFFEF000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 324, 21, 0, "File is too large to be patched in place", v8, v9, v56);
    return 0;
  }

  v18 = (v15 >> 12) + 16;
  if ((a3 >> 12) <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a3 >> 12;
  }

  v20 = v19 + v18;
  v21 = (v19 << 12) + 4096 + 4 * v19 + 16 * (v18 & 0x3FFFFFFF) + 8 * v20 + 8 * v20 + 216;
  v22 = malloc(v21);
  v16 = v22;
  if (!v22)
  {
    v29 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 339, 21, *v29, "malloc", v30, v31, v56);
    return v16;
  }

  bzero(v22, v21);
  if (a4 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "Opening paged file %s, %u pages in file, %u pages in cache, %u pages total, memory usage: %zu B\n", a1, v18, v19, v19 + v18, v21);
  }

  *v16 = -1;
  *(v16 + 1) = st_size;
  *(v16 + 2) = a2;
  v16[32] = a4;
  v16[6] = v18;
  v16[7] = v19;
  v16[8] = v20;
  v23 = open(a1, 2);
  *v16 = v23;
  if (v23 < 0)
  {
    v26 = *__error();
    v57 = a1;
    v27 = "%s";
    v28 = 357;
    goto LABEL_23;
  }

  v57 = 1;
  if (fcntl(v23, 48))
  {
    fwrite("Warning: couldn't set F_NOCACHE on paged file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (ftruncate(*v16, v18 << 12))
  {
    v26 = *__error();
    v57 = a1;
    v27 = "%s";
    v28 = 365;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", v28, 21, v26, v27, v24, v25, v57);
    if ((*v16 & 0x80000000) == 0)
    {
      close(*v16);
    }

    free(v16);
    return 0;
  }

  v32 = v16[6];
  v33 = v16[7];
  v34 = &v16[v32 + 48];
  v35 = v34 + 4 * v32;
  v36 = v35 + 4 * v32;
  *(v16 + 14) = v35;
  *(v16 + 15) = v36;
  v37 = v36 + 4 * v32;
  *(v16 + 7) = v37;
  *(v16 + 8) = v34;
  v38 = v16[8];
  v39 = v37 + 4 * v38;
  v40 = v39 + 4 * v38;
  *(v16 + 5) = v40;
  *(v16 + 6) = v16 + 48;
  v41 = v40 + 8 * v38;
  *(v16 + 9) = v39;
  *(v16 + 10) = v41;
  v42 = v41 + 4096;
  v43 = v41 + 4096 + (v33 << 12);
  *(v16 + 11) = v42;
  *(v16 + 12) = v43;
  if (v43 + 4 * v33 > v16 + v21)
  {
    v27 = "in memory allocation for PagedFile";
    v28 = 378;
    v26 = 0;
    goto LABEL_23;
  }

  if (v38)
  {
    v44 = 0;
    do
    {
      *(v37 + 8 * v38) = 0;
      *(v37 + 4 * v44) = -1;
      *(v37 + 4 * v38) = -1;
      ++v44;
      ++v38;
    }

    while (v44 < v16[8]);
    v45 = v16[6];
  }

  else
  {
    v45 = v32;
  }

  if (v45)
  {
    v46 = 0;
    v47 = v32;
    v48 = 2 * v32;
    v49 = 3 * v32;
    v50 = v16 + 48;
    v51 = v45;
    do
    {
      *v50 = -1;
      v50[v47] = -1;
      v50[v48] = -1;
      v50[v49] = -1;
      ++v46;
      ++v50;
    }

    while (v46 < v45);
    v52 = 0;
    v53 = 0;
    v54 = st_size;
    do
    {
      if (v52 >= st_size)
      {
        break;
      }

      v55 = v54 - 4096;
      if (v54 >= 0x1000)
      {
        v54 = 4096;
      }

      *(v40 + 8 * v53) = v54;
      *(v37 + 4 * v53) = v53;
      v16[v53 + 48] = v53;
      ++v53;
      v52 += 4096;
      v54 = v55;
    }

    while (v53 < v51);
  }

  return v16;
}

uint64_t PagedFileDestroy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    for (i = *(result + 24); ; ++i)
    {
      if (i >= *(v8 + 32))
      {
        v10 = 1;
        goto LABEL_8;
      }

      if (storeCachePos(v8, i, a3, a4, a5, a6, a7, a8))
      {
        break;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "flushCache", 243, 21, 0, "flushing cache pos", a7, a8, v19);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 423, 21, 0, "flush cache", v11, v12, v20);
    v10 = 0;
LABEL_8:
    if ((*v8 & 0x80000000) == 0)
    {
      if (ftruncate(*v8, *(v8 + 16)))
      {
        v13 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 427, 21, *v13, "Final truncate", v14, v15, v19);
        v10 = 0;
      }

      if (fcntl(*v8, 51, 0) == -1)
      {
        v16 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 432, 21, *v16, "Final FULLSYNC", v17, v18, v21);
        v10 = 0;
      }

      close(*v8);
    }

    if (*(v8 + 128) >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Closing paged file, input size: %llu B, output size: %llu B, bytes read: %llu B, bytes written: %llu B\n", *(v8 + 8), *(v8 + 16), *(v8 + 136), *(v8 + 144));
    }

    free(v8);
    if (v10)
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

uint64_t PagedFileDump(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x29EDCA610];
  v4 = "current PagedFile state";
  if (a2)
  {
    v4 = a2;
  }

  fprintf(*MEMORY[0x29EDCA610], "*** %s\n", v4);
  LODWORD(v7) = *(a1 + 32);
  if (!v7)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_29;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(*(a1 + 40) + 8 * v8);
    if (!v15)
    {
      if (v8 < *(a1 + 24))
      {
        ++v13;
      }

      else
      {
        ++v14;
      }
    }

    v16 = *(*(a1 + 56) + 4 * v8);
    if (v16 != -1)
    {
      ++v9;
      v11 += v15;
      if (v8 != *(*(a1 + 48) + 4 * v16))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 472, 21, 0, "invalid reverse index for IN", v5, v6, v22);
      }
    }

    v17 = *(*(a1 + 72) + 4 * v8);
    if (v17 != -1)
    {
      ++v10;
      v12 += v15;
      if (v8 != *(*(a1 + 64) + 4 * v17))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 480, 21, 0, "invalid reverse index for OUT", v5, v6, v22);
      }
    }

    if (*(*(a1 + 56) + 4 * v8) != -1 && *(*(a1 + 72) + 4 * v8) != -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 483, 21, 0, "inconsistency in inPage/outPage indices", v5, v6, v22);
    }

    v18 = *(*(a1 + 56) + 4 * v8);
    if (v15)
    {
      if (v18 == -1 && *(*(a1 + 72) + 4 * v8) == -1)
      {
        v19 = 485;
        v20 = "inconsistency in nRefs != 0";
LABEL_25:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", v19, 21, 0, v20, v5, v6, v22);
      }
    }

    else if (v18 != -1 || *(*(a1 + 72) + 4 * v8) != -1)
    {
      v19 = 486;
      v20 = "inconsistency in nRefs == 0";
      goto LABEL_25;
    }

    ++v8;
    v7 = *(a1 + 32);
  }

  while (v8 < v7);
  v3 = MEMORY[0x29EDCA610];
LABEL_29:
  fprintf(*v3, "  %u total pages\n", v7);
  fprintf(*v3, "  %u free pages in file\n", v13);
  fprintf(*v3, "  %u free pages in cache\n", v14);
  fprintf(*v3, "  %u input pages stored, %llu bytes referenced\n", v9, v11);
  return fprintf(*v3, "  %u output pages stored, %llu bytes referenced\n", v10, v12);
}

uint64_t PagedFileRetainIn(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a1[6];
  while (1)
  {
    v9 = *(v8 + 4 * (a2 >> 12));
    if (v9 == -1)
    {
      break;
    }

    v10 = a1[15];
    *(a1[14] + 4 * (a2 >> 12)) = v9;
    v11 = 4096 - (a2 & 0xFFF);
    *(v10 + 4 * v9) = a2 >> 12;
    if (v11 >= a3)
    {
      v11 = a3;
    }

    *(a1[5] + 8 * v9) += v11;
    a2 += v11;
    a3 -= v11;
    if (!a3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainIn", 503, 21, 0, "input page is not stored", a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileReleaseIn(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  v11 = *(a1 + 48);
  v12 = MEMORY[0x29EDCA610];
  while (1)
  {
    v13 = 4096 - (a2 & 0xFFF) >= v8 ? v8 : 4096 - (a2 & 0xFFF);
    v14 = *(v11 + 4 * (a2 >> 12));
    if (v14 == -1)
    {
      break;
    }

    v15 = *(a1 + 40);
    v16 = *(v15 + 8 * v14) - v13;
    *(v15 + 8 * v14) = v16;
    if (!v16)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*v12, "PagedFile: input page %u removed from storage\n", a2 >> 12);
        v11 = *(a1 + 48);
      }

      *(*(a1 + 56) + 4 * v14) = -1;
      *(v11 + 4 * (a2 >> 12)) = -1;
    }

    a2 += v13;
    v8 -= v13;
    if (!v8)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReleaseIn", 525, 21, 0, "input page is not stored", a7, a8, v18);
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainOut(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v11 = *(a1 + 64);
  v12 = MEMORY[0x29EDCA610];
  while (1)
  {
    v13 = v9 >> 12;
    if (4096 - (v9 & 0xFFF) >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = 4096 - (v9 & 0xFFF);
    }

    v15 = *(v11 + 4 * v13);
    if (v15 != -1)
    {
      goto LABEL_11;
    }

    FreeCachePos = getFreeCachePos(a1, a2, a3, a4, a5, a6, a7, a8);
    if (FreeCachePos == -1)
    {
      break;
    }

    v17 = FreeCachePos;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*v12, "PagedFile: assigning cache[%u] to new output page %u\n", FreeCachePos, v9 >> 12);
    }

    v15 = v17;
    v11 = *(a1 + 64);
    *(*(a1 + 72) + 4 * v17) = v13;
    *(v11 + 4 * (v9 >> 12)) = v17;
LABEL_11:
    *(*(a1 + 40) + 8 * v15) += v14;
    v9 += v14;
    v8 -= v14;
    if (!v8)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainOut", 555, 21, 0, "no storage available for output page", a7, a8, v19);
  return 0xFFFFFFFFLL;
}

uint64_t getFreeCachePos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v8 >= v9)
  {
LABEL_13:
    v14 = "no cache";
    v15 = 231;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "getFreeCachePos", v15, 21, 0, v14, a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v13 = *(a1 + 24);
    do
    {
      if (!*(*(a1 + 40) + 8 * v13))
      {
        return v13;
      }

      if (v12 == -1 || *(*(a1 + 96) + v11) < *(*(a1 + 96) + 4 * (v12 - v8)))
      {
        v12 = v13;
      }

      ++v13;
      v11 += 4;
    }

    while (v9 != v13);
    if (v12 == -1)
    {
      goto LABEL_13;
    }

    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: storing oldest cache[%u] to file\n", v12);
    }

    if (storeCachePos(a1, v12, a3, a4, a5, a6, a7, a8))
    {
      v14 = "flushing cache pos";
      v15 = 235;
      goto LABEL_14;
    }
  }

  return v12;
}

uint64_t PagedFileHasNoIn(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(*(a1 + 56) + 4 * v2) != -1 && *(*(a1 + 40) + 8 * v2))
    {
      break;
    }

    v3 = ++v2 >= v1;
  }

  while (v1 != v2);
  return v3;
}

BOOL PagedFileHasAllOut(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if (*(*(a1 + 72) + 4 * v3) != -1)
      {
        v5 = *(*(a1 + 40) + 8 * v3);
        v4 += v5;
        if (v3 < (v1 >> 12) && v5 != 4096)
        {
          break;
        }
      }

      if (v2 == ++v3)
      {
        return v4 == v1;
      }
    }

    return 0;
  }

  else
  {
    v4 = 0;
    return v4 == v1;
  }
}

uint64_t PagedFileReadAndReleaseIn(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  while (1)
  {
    v12 = a2 >> 12;
    if (4096 - (a2 & 0xFFF) >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4096 - (a2 & 0xFFF);
    }

    v14 = *(a1 + 24);
    if (v14 <= v12)
    {
      v31 = "invalid input PAGE";
      v32 = 252;
      goto LABEL_27;
    }

    v15 = *(*(a1 + 48) + 4 * v12);
    if (v15 == -1)
    {
      v31 = "input page is not stored";
      v32 = 254;
      goto LABEL_27;
    }

    v16 = (a2 >> 12);
    if (v15 >= v14)
    {
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1, v15, a3, a4, a5, a6, a7, a8);
      if (FreeCachePos == -1)
      {
        v31 = "could not get a free pos from cache";
        v32 = 261;
        goto LABEL_27;
      }

      v18 = FreeCachePos;
      LODWORD(v15) = *(*(a1 + 48) + 4 * v16);
      v14 = *(a1 + 24);
    }

    if (v15 < v14)
    {
      break;
    }

LABEL_15:
    v19 = v15 >= v14;
    v20 = v15 - v14;
    if (!v19 || v15 >= *(a1 + 32))
    {
      v31 = "could not move input page in cache";
      v32 = 273;
      goto LABEL_27;
    }

    v21 = *(a1 + 104);
    *(a1 + 104) = v21 + 1;
    *(*(a1 + 96) + 4 * v20) = v21;
    v22 = cacheData(a1, v15, v18, a4, a5, a6, a7, a8);
    if (!v22)
    {
      goto LABEL_28;
    }

    memcpy(v8, (v22 + (a2 & 0xFFF)), v13);
    PagedFileReleaseIn(a1, a2, v13, v25, v26, v27, v28, v29);
    a2 += v13;
    v8 += v13;
    v9 -= v13;
    if (!v9)
    {
      return 0;
    }
  }

  if (!movePage(a1, v15, v18, a4, a5, a6, a7, a8))
  {
    LODWORD(v15) = *(*(a1 + 48) + 4 * v16);
    v14 = *(a1 + 24);
    goto LABEL_15;
  }

  v31 = "moving page from disk to cache";
  v32 = 268;
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", v32, 21, 0, v31, a7, a8, v33);
LABEL_28:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReadAndReleaseIn", 615, 21, 0, "unable to load input page", v23, v24, v33);
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainAndWriteOut(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  while (1)
  {
    if (4096 - (a2 & 0xFFF) >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4096 - (a2 & 0xFFF);
    }

    if (PagedFileRetainOut(a1, a2, v12, a4, a5, a6, a7, a8))
    {
      v31 = "retain output chunk";
      v32 = 639;
      goto LABEL_31;
    }

    v19 = *(a1 + 24);
    if (v19 <= (a2 >> 12))
    {
      v29 = "invalid output PAGE";
      v30 = 286;
      goto LABEL_29;
    }

    v20 = *(*(a1 + 64) + 4 * (a2 >> 12));
    if (v20 == -1)
    {
      v29 = "output page is not stored";
      v30 = 288;
      goto LABEL_29;
    }

    v21 = (a2 >> 12);
    if (v20 >= v19)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1, v20, v13, v14, v15, v16, v17, v18);
      if (FreeCachePos == -1)
      {
        v29 = "could not get a free pos from cache";
        v30 = 294;
        goto LABEL_29;
      }

      v23 = FreeCachePos;
      LODWORD(v20) = *(*(a1 + 64) + 4 * v21);
      v19 = *(a1 + 24);
    }

    if (v20 < v19)
    {
      break;
    }

LABEL_16:
    v24 = v20 >= v19;
    v25 = v20 - v19;
    if (!v24 || v20 >= *(a1 + 32))
    {
      v29 = "could not move output page in cache";
      v30 = 305;
      goto LABEL_29;
    }

    v26 = *(a1 + 104);
    *(a1 + 104) = v26 + 1;
    *(*(a1 + 96) + 4 * v25) = v26;
    v27 = cacheData(a1, v20, v23, v14, v15, v16, v17, v18);
    if (!v27)
    {
      goto LABEL_30;
    }

    memcpy((v27 + (a2 & 0xFFF)), v8, v12);
    a2 += v12;
    v8 += v12;
    v9 -= v12;
    if (!v9)
    {
      return 0;
    }
  }

  if (!movePage(a1, v20, v23, v14, v15, v16, v17, v18))
  {
    LODWORD(v20) = *(*(a1 + 64) + 4 * v21);
    v19 = *(a1 + 24);
    goto LABEL_16;
  }

  v29 = "moving page from disk to cache";
  v30 = 301;
LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", v30, 21, 0, v29, v17, v18, v33);
LABEL_30:
  v31 = "unable to load output page";
  v32 = 643;
LABEL_31:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainAndWriteOut", v32, 21, 0, v31, v17, v18, v33);
  return 0xFFFFFFFFLL;
}

uint64_t storeCachePos(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 > a2 || *(a1 + 32) <= a2)
  {
    v18 = "invalid cache POS";
    v19 = 165;
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 8 * a2);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(v13 + 4 * a2);
  if (v14 == -1)
  {
    v20 = *(*(a1 + 72) + 4 * a2);
    if (v20 != -1)
    {
      if (*(v11 + 8 * v20))
      {
        v21 = -v8;
        v22 = v8 - 1;
        do
        {
          if (v22 == -1)
          {
            goto LABEL_18;
          }

          v23 = *(v11 + 8 * v22);
          ++v21;
          --v22;
        }

        while (v23);
        if (v21 == 1)
        {
LABEL_18:
          v18 = "no free pages in file";
          v19 = 208;
          goto LABEL_9;
        }

        v28 = -v21;
        if (*(a1 + 128) >= 3)
        {
          fwrite("PagedFile: vacating file pos\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

        if (movePage(a1, v20, v28, a4, a5, a6, a7, a8))
        {
          v18 = "vacating page in file";
          v19 = 210;
          goto LABEL_9;
        }
      }

      if (*(a1 + 128) >= 3)
      {
        fwrite("PagedFile: storing cached output page to file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      result = movePage(a1, a2, v20, a4, a5, a6, a7, a8);
      if (result)
      {
        v18 = "moving output page from cache to disk";
        v19 = 213;
        goto LABEL_9;
      }

      return result;
    }

    v18 = "nRefs inconsistency";
    v19 = 215;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", v19, 21, 0, v18, a7, a8, v29);
    return 0xFFFFFFFFLL;
  }

  v15 = *(*(a1 + 112) + 4 * v14);
  if (v15 == -1)
  {
    v18 = "cached input page does not have a file position";
    v19 = 175;
    goto LABEL_9;
  }

  if (*(*(a1 + 120) + 4 * v15) == v14)
  {
    result = 0;
    *(*(a1 + 48) + 4 * v14) = v15;
    *(v11 + 8 * v15) = v12;
    *(v13 + 4 * v15) = v14;
    v17 = *(a1 + 72);
    *(v17 + 4 * v15) = -1;
    *(v11 + 8 * a2) = 0;
    *(v13 + 4 * a2) = -1;
    *(v17 + 4 * a2) = -1;
    return result;
  }

  v24 = -v8;
  v25 = v8 - 1;
  do
  {
    if (v25 == -1)
    {
      goto LABEL_24;
    }

    v26 = *(v11 + 8 * v25);
    ++v24;
    --v25;
  }

  while (v26);
  if (v24 == 1)
  {
LABEL_24:
    v18 = "no free pages in file";
    v19 = 196;
    goto LABEL_9;
  }

  v27 = -v24;
  if (*(a1 + 128) >= 3)
  {
    fwrite("PagedFile: storing cached input page to file\n", 0x2DuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  result = movePage(a1, a2, v27, a4, a5, a6, a7, a8);
  if (result)
  {
    v18 = "moving input page from cache to disk";
    v19 = 198;
    goto LABEL_9;
  }

  return result;
}

uint64_t movePage(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (v8 <= a2 || v8 <= a3)
  {
    v10 = "invalid SRC/DST";
    v11 = 77;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", v11, 21, 0, v10, a7, a8, v39);
    return 0xFFFFFFFFLL;
  }

  v14 = *(a1 + 40);
  if (!*(v14 + 8 * a2))
  {
    v10 = "SRC is empty";
    v11 = 78;
    goto LABEL_10;
  }

  v15 = a3;
  if (*(v14 + 8 * a3))
  {
    v10 = "DST is not empty";
    v11 = 79;
    goto LABEL_10;
  }

  v17 = *(a1 + 24);
  if (v17 > a2 && v17 > a3)
  {
    v22 = *(*(a1 + 56) + 4 * a2);
    if (v22 != -1)
    {
      *(*(a1 + 112) + 4 * v22) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v22;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to file[%u]\n", a2, a3);
    }

    if (pread(*a1, *(a1 + 80), 0x1000uLL, a2 << 12) != 4096)
    {
      v10 = "reading page";
      v11 = 93;
      goto LABEL_10;
    }

    if (pwrite(*a1, *(a1 + 80), 0x1000uLL, v15 << 12) != 4096)
    {
      v10 = "writing page";
      v11 = 94;
      goto LABEL_10;
    }

    *(a1 + 136) = vaddq_s64(*(a1 + 136), vdupq_n_s64(0x1000uLL));
  }

  else if (v17 > a2 || v17 <= a3)
  {
    if (v17 <= a2 || v17 > a3)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to cache[%u]\n", a2, a3);
      }

      v26 = cacheData(a1, v15, a3, a4, a5, a6, a7, a8);
      v33 = cacheData(a1, a2, v27, v28, v29, v30, v31, v32);
      memcpy(v26, v33, 0x1000uLL);
    }

    else
    {
      v23 = *(*(a1 + 56) + 4 * a2);
      if (v23 != -1)
      {
        *(*(a1 + 112) + 4 * v23) = a2;
      }

      *(*(a1 + 120) + 4 * a2) = v23;
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to cache[%u]\n", a2, a3);
      }

      v24 = *a1;
      v25 = cacheData(a1, v15, a3, a4, a5, a6, a7, a8);
      if (pread(v24, v25, 0x1000uLL, a2 << 12) != 4096)
      {
        v10 = "reading page";
        v11 = 121;
        goto LABEL_10;
      }

      *(a1 + 136) += 4096;
    }
  }

  else
  {
    v19 = *(*(a1 + 56) + 4 * a2);
    if (v19 != -1)
    {
      *(*(a1 + 112) + 4 * v19) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v19;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to file[%u]\n", a2, a3);
    }

    v20 = *a1;
    v21 = cacheData(a1, a2, a3, a4, a5, a6, a7, a8);
    if (pwrite(v20, v21, 0x1000uLL, v15 << 12) != 4096)
    {
      v10 = "writing page";
      v11 = 108;
      goto LABEL_10;
    }

    *(a1 + 144) += 4096;
  }

  v34 = *(a1 + 40);
  *(v34 + 8 * v15) = *(v34 + 8 * a2);
  *(v34 + 8 * a2) = 0;
  v35 = *(a1 + 56);
  v36 = *(v35 + 4 * a2);
  *(v35 + 4 * v15) = v36;
  *(v35 + 4 * a2) = -1;
  if (v36 != -1)
  {
    *(*(a1 + 48) + 4 * v36) = v15;
  }

  v37 = *(a1 + 72);
  v38 = *(v37 + 4 * a2);
  *(v37 + 4 * v15) = v38;
  *(v37 + 4 * a2) = -1;
  result = 0;
  if (v38 != -1)
  {
    *(*(a1 + 64) + 4 * v38) = v15;
  }

  return result;
}

uint64_t cacheData(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v10 && *(a1 + 32) > a2)
  {
    return *(a1 + 88) + (v11 << 12);
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "cacheData", 66, 21, 0, "invalid cache pos", a7, a8, v8);
  return 0;
}

size_t AAPathFilterApply_cold_1(int a1, const regex_t *a2)
{
  v2 = a1;
  OUTLINED_FUNCTION_0(a1, a2, *MEMORY[0x29EDCA608], v7, v8, v9, v10, v11, v12, v13, v14, v15);
  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "prepareFilter", 119, 130, 0, "compile regex (err=%i, msg=%s)", v3, v4, v2);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

size_t AAPathFilterApply_cold_2(int a1, const regex_t *a2)
{
  v2 = a1;
  OUTLINED_FUNCTION_0(a1, a2, *MEMORY[0x29EDCA608], v7, v8, v9, v10, v11, v12, v13, v14, v15);
  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "prepareFilter", 130, 130, 0, "compile regex (err=%i, msg=%s)", v3, v4, v2);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void joinThread_cold_1()
{
  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join", v1, v2, vars0);
  __break(1u);
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2082;
  v5 = a1;
  _os_log_error_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v3, 0x12u);
  v2 = *MEMORY[0x29EDCA608];
}

void getBXDiffControls_cold_1()
{
  v0 = __error();
  v3 = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffControlsWithMatches", 255, 24, *v0, "malloc", v1, v2, vars0);
  __break(1u);
  BZ2_bzDecompress(v3);
}