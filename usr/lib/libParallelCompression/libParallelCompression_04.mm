void OEncoderStreamDestroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      SharedBufferWrite(*(a1 + 88), 0, 0, a4, a5, a6, a7, a8);
    }

    v9 = *(a1 + 80);
    if (v9 && joinThread(v9))
    {
      v10 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v10, "failed to join encoder thread", v11, v12, v13);
    }

    SharedBufferDestroy(*(a1 + 88));

    free(a1);
  }
}

uint64_t OEncoderStreamWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent", a7, a8, vars0);
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

  return SharedBufferWrite(v11, a2, a3, a4, a5, a6, a7, a8);
}

size_t OEncoderStreamAbort(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 88), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

void *OFileEncoderStreamCreateWithFD(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = OFileStreamCreateWithFD(a1, a2);
    *v13 = v14;
    if (!v14 || (v22 = OEncoderStreamCreate(OFileStreamWrite, OFileStreamAbort, v14, a3, a4, a5, a6), (v13[1] = v22) == 0))
    {
      OFileEncoderStreamDestroy(v13, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v23 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v23, "malloc", v24, v25, v27);
  }

  return v13;
}

void OFileEncoderStreamDestroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    OEncoderStreamDestroy(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
    OFileStreamDestroy(*a1);

    free(a1);
  }
}

uint64_t ILowMemoryDecoderStreamCreate(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
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
    v10 = MemBufferCreate(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = MemBufferCreate(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_27;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (MemBufferFillFromIStream(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      v19 = "couldn't read enough header bytes from compressed file";
      v20 = 465;
      goto LABEL_26;
    }

    DataPtr = MemBufferGetDataPtr(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v15 = DataPtr;
      if (*DataPtr == 25200 && *(DataPtr + 2) == 122)
      {
        v25 = 0;
        while (1)
        {
          v26 = v15[3];
          if (v26 == PCompressGetDecoderKey(v25))
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
        *(v9 + 48) = PCompressGetDecoderFilter(v25);
        MemBufferDecreaseSize(*(v9 + 56), 0xCuLL, v36, v37, v38, v39, v40, v41);
        if ((MemBufferIncreaseCapacity(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          v19 = "MemBufferIncreaseCapacity in";
          v20 = 487;
        }

        else
        {
          if ((MemBufferIncreaseCapacity(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
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
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", v20, 39, 0, v19, v12, v13, v47);
LABEL_27:
          ILowMemoryDecoderStreamDestroy(v9);
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
            MemBufferDecreaseSize(*(v9 + 56), 2uLL, v42, v43, v44, v45, v12, v13);
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
        if (MemBufferFillFromIStream(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) < 0)
        {
          v19 = "reading gzip header data";
          v20 = 525;
          goto LABEL_26;
        }

        DataSize = MemBufferGetDataSize(*(v9 + 56));
        if ((v15[3] & 4) != 0)
        {
          if (DataSize <= 0xB)
          {
            v19 = "parsing gzip header";
            v20 = 531;
            goto LABEL_26;
          }

          v33 = *(v15 + 5) + 12;
          if (v33 > DataSize)
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
          if (v33 + 2 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 539;
            goto LABEL_26;
          }

          if (v33 + 2 < DataSize)
          {
            while (v15[v33 + 1])
            {
              if (DataSize - 2 == ++v33)
              {
                v34 = DataSize;
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
          if (v34 + 2 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 545;
            goto LABEL_26;
          }

          if (v34 + 2 < DataSize)
          {
            while (v15[v34 + 1])
            {
              if (DataSize - 2 == ++v34)
              {
                v35 = DataSize;
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
          if (v35 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 551;
            goto LABEL_26;
          }
        }

        MemBufferDecreaseSize(*(v9 + 56), v35, v29, v30, v31, v32, v12, v13);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v21, "malloc", v22, v23, v47);
  }

  return v9;
}

void ILowMemoryDecoderStreamDestroy(uint64_t a1)
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

    MemBufferDestroy(*(a1 + 56));
    MemBufferDestroy(*(a1 + 64));
    IMagicStreamDestroy(*(a1 + 24));

    free(a1);
  }
}

uint64_t ILowMemoryDecoderStreamCreateWithBuffer(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = IMemStreamCreate(a1, a2);
  if (v4)
  {
    v7 = v4;
    result = ILowMemoryDecoderStreamCreate(IMemStreamRead, IMemStreamAbort, v4, a3);
    if (result)
    {
      *(result + 24) = v7;
      return result;
    }

    IMagicStreamDestroy(v7);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed", v5, v6, v9);
  }

  return 0;
}

uint64_t ILowMemoryDecoderStreamRead(uint64_t a1, char *a2, size_t a3)
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

      DataSize = MemBufferGetDataSize(*(a1 + 64));
      if (DataSize)
      {
        if (DataSize >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = DataSize;
        }

        DataPtr = MemBufferGetDataPtr(*(a1 + 64));
        memcpy(a2, DataPtr, v9);
        MemBufferDecreaseSize(*(a1 + 64), v9, v11, v12, v13, v14, v15, v16);
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
        v43 = MemBufferGetDataSize(v17);
        v44 = v43;
        if (v43 <= 0xF)
        {
          if (MemBufferFillFromIStream(*(a1 + 56), 16 - v43, *a1, *(a1 + 16)) < 0)
          {
            v107 = "reading block header failed";
            v108 = 645;
            goto LABEL_78;
          }

          v45 = MemBufferGetDataSize(*(a1 + 56));
          if (!v45)
          {
            *(a1 + 208) = 1;
            return v7;
          }

          v44 = v45;
        }

        v46 = MemBufferGetDataPtr(*(a1 + 56));
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

        MemBufferDecreaseSize(*(a1 + 56), 0x10uLL, v47, v48, v49, v50, v18, v19);
        v57 = v54 >= v44 - 16;
        v58 = v54 - (v44 - 16);
        if (v58 != 0 && v57)
        {
          if (MemBufferFillFromIStream(*(a1 + 56), v58, *a1, *(a1 + 16)) != v58)
          {
            v107 = "reading block payload failed";
            v108 = 665;
            goto LABEL_78;
          }

          MemBufferGetDataSize(*(a1 + 56));
        }

        if (v52 == v51)
        {
          FreePtr = MemBufferGetFreePtr(*(a1 + 64));
          v60 = MemBufferGetDataPtr(*(a1 + 56));
          memcpy(FreePtr, v60, v53);
        }

        else
        {
          v97 = *(a1 + 48);
          v98 = MemBufferGetFreePtr(*(a1 + 64));
          v99 = MemBufferGetDataPtr(*(a1 + 56));
          if (v97(v98, v53, v99, v54) != v53)
          {
            v107 = "decoding block payload failed";
            v108 = 677;
            goto LABEL_78;
          }
        }

        MemBufferDecreaseSize(*(a1 + 56), v54, v61, v62, v63, v64, v18, v19);
        MemBufferIncreaseSize(*(a1 + 64), v53, v100, v101, v102, v103, v104, v105);
        goto LABEL_64;
      }

      if (MemBufferFillFromIStream(v17, 0xFFFFFFFFFFFFFFFFLL, *a1, *(a1 + 16)) < 0)
      {
        v107 = "reading payload failed";
        v108 = 687;
        goto LABEL_78;
      }

      v20 = MemBufferGetDataPtr(*(a1 + 56));
      v21 = MemBufferGetDataSize(*(a1 + 56));
      v22 = MemBufferGetFreePtr(*(a1 + 64));
      FreeSize = MemBufferGetFreeSize(*(a1 + 64));
      v26 = FreeSize;
      v27 = *(a1 + 32);
      switch(v27)
      {
        case 1:
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 96) = v22;
          *(a1 + 104) = FreeSize;
          v80 = lzma_code();
          v87 = v80;
          if (v80 > 0xA || ((1 << v80) & 0x403) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload", v85, v86, v110);
            v106 = 1;
            goto LABEL_62;
          }

          v88 = *(a1 + 72);
          v89 = *(a1 + 96);
          MemBufferDecreaseSize(*(a1 + 56), v88 - v20, v81, v82, v83, v84, v85, v86);
          if (v89 == v22 && v88 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v89 - v22, v90, v91, v92, v93, v94, v95);
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
          *(a1 + 104) = FreeSize;
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
          MemBufferDecreaseSize(*(a1 + 56), v71 - v20, v66, v67, v68, v69, v18, v19);
          if (v72 == v22 && v71 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v72 - v22, v73, v74, v75, v76, v77, v78);
          if (v70 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          *(a1 + 88) = v20;
          *(a1 + 96) = v21;
          *(a1 + 72) = v22;
          *(a1 + 80) = FreeSize;
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
          MemBufferDecreaseSize(*(a1 + 56), v21 - v34, v29, v30, v31, v32, v18, v19);
          if (v26 == v35 && v21 == v34)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v26 - v35, v36, v37, v38, v39, v40, v41);
          if (v33 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d", v24, v25, *(a1 + 32));
          return -1;
      }

      *(a1 + 208) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        v107 = "Truncated stream";
        v108 = 753;
LABEL_78:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", v108, 39, 0, v107, v18, v19, v110);
        return -1;
      }

      v106 = 0;
    }

    while (!v106);
  }

  return -1;
}

uint64_t ILowMemoryDecoderStreamAbort(uint64_t result)
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

    return IMemStreamAbort(v3);
  }

  return result;
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

void *ISparseArchiveStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v57);
  v60 = 0;
  v9 = calloc(1uLL, 0x40uLL);
  if (!v9)
  {
    v43 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 46, 8, *v43, "malloc", v44, v45, v58);
    v12 = 0;
LABEL_37:
    v16 = 0;
LABEL_54:
    v48 = 1;
    goto LABEL_55;
  }

  v12 = IFileStreamCreateWithFilename(*(a1 + 32), 0, -1);
  if (!v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 50, 8, 0, "creating index file stream", v10, v11, v58);
    goto LABEL_37;
  }

  v13 = ArchiveTreeCreateFromIndex(IFileStreamRead, v12, *(a1 + 40), *(a1 + 48), *(a1 + 4), *a1);
  v16 = v13;
  if (!v13)
  {
    v41 = "loading archive tree";
    v42 = 53;
LABEL_52:
    v50 = 0;
LABEL_53:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", v42, 8, v50, v41, v14, v15, v58);
    goto LABEL_54;
  }

  v17 = ArchiveTreeSize(v13);
  if (v17)
  {
    v18 = v17;
    for (i = 0; v18 != i; ++i)
    {
      *__s = -1;
      v59 = -1;
      if (ArchiveTreeNodeSegment(v16, i, __s, &v59))
      {
        v41 = "reading node segment";
        v42 = 61;
        goto LABEL_52;
      }

      v20 = v9[1];
      v21 = v9[3];
      v22 = &v21[16 * v20];
      if (v20)
      {
        v23 = v22 == 16;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_18;
      }

      v24 = *(v22 - 1);
      v25 = v24 + *(v22 - 2);
      if (v25 > *__s)
      {
        v41 = "invalid segment order";
        v42 = 67;
        goto LABEL_52;
      }

      if (v24 == -1)
      {
        v41 = "invalid segments in archive";
        v42 = 68;
        goto LABEL_52;
      }

      if (v25 != *__s)
      {
LABEL_18:
        v28 = v9[2];
        if (v20 >= v28)
        {
          v29 = v28 + (v28 >> 1);
          if (!v28)
          {
            v29 = 32;
          }

          v9[2] = v29;
          v21 = reallocf(v21, 16 * v29);
          v9[3] = v21;
          if (!v21)
          {
            v50 = *__error();
            v41 = "malloc";
            v42 = 78;
            goto LABEL_53;
          }

          v20 = v9[1];
        }

        v30 = &v21[16 * v20];
        *v30 = *__s;
        *(v30 + 1) = v59;
        v9[1] = v20 + 1;
      }

      else
      {
        v26 = v24 + v59;
        if (v59 == -1)
        {
          v27 = -1;
        }

        else
        {
          v27 = v26;
        }

        *(v22 - 1) = v27;
      }
    }
  }

  if (*a1 >= 1)
  {
    v31 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu segments to read in archive\n", v9[1]);
    if (*a1 >= 2)
    {
      if (v9[1])
      {
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = (v9[3] + v32);
          v35 = *v34;
          v36 = *v31;
          if (v34[1] == -1)
          {
            fprintf(v36, "segment=%zu offset=%llu size=<to EOF>\n");
          }

          else
          {
            fprintf(v36, "segment=%zu offset=%llu size=%llu\n");
          }

          ++v33;
          v32 += 16;
        }

        while (v33 < v9[1]);
      }
    }
  }

  if (loadFileSegment(*(a1 + 8), &v60, 4uLL, 0))
  {
    v41 = "reading archive header";
    v42 = 100;
    goto LABEL_52;
  }

  if (v60 == 25200 && BYTE2(v60) == 122)
  {
    v73 = 0;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    *&__s[6] = 0u;
    strcpy(__s, "r,c=1");
    if (*(a1 + 16))
    {
      v49 = snprintf(&__s[5], 0xC3uLL, ",o=%llu", *(a1 + 16)) + 5;
    }

    else
    {
      v49 = 5;
    }

    if (*(a1 + 24) != -1)
    {
      snprintf(&__s[v49], 200 - v49, ",s=%llu", *(a1 + 24));
    }

    v54 = ParallelCompressionFileOpen(*(a1 + 8), __s, v37, v38, v39, v40, v14, v15);
    v9[4] = v54;
    v48 = v54 == 0;
    if (!v54)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 110, 8, 0, "creating archive decoder stream", v55, v56, v58);
    }
  }

  else
  {
    v47 = IFileStreamCreateWithFilename(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    v9[5] = v47;
    if (!v47)
    {
      v41 = "creating archive file stream";
      v42 = 116;
      goto LABEL_52;
    }

    v48 = 0;
  }

LABEL_55:
  IFileStreamDestroy(v12);
  ArchiveTreeDestroy(v16);
  v51 = leaveThreadErrorContext(0, 0, 0);
  if (v48 || v51 < 0)
  {
    ISparseArchiveStreamDestroy(v9);
    v9 = 0;
  }

  v52 = *MEMORY[0x29EDCA608];
  return v9;
}

void ISparseArchiveStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 24));
    ParallelCompressionFileClose(*(a1 + 32), v2, v3, v4, v5, v6, v7, v8);
    IFileStreamDestroy(*(a1 + 40));

    free(a1);
  }
}

uint64_t ISparseArchiveStreamRead(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = a3;
    v11 = 0;
    while (1)
    {
      v12 = a1[6];
      if (v12 >= a1[1])
      {
        return v11;
      }

      v13 = a1[4];
      v14 = (a1[3] + 16 * v12);
      v15 = a1[7];
      if (v8 >= v14[1] - v15)
      {
        v17 = v14[1] - v15;
      }

      else
      {
        v17 = v8;
      }

      v16 = *v14;
      v18 = *v14 + v15;
      if (v13)
      {
        if (ParallelCompressionFileSeek(v13, v16 + v15, 0, a4, a5, a6, a7, a8) != v18)
        {
          v28 = "seek archive decoder";
          v29 = 163;
          goto LABEL_23;
        }

        v22 = ParallelCompressionFileRead(a1[4], a2, v17, v19, v20, v21, a7, a8);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v23 = a1[5];
        if (!v23)
        {
          goto LABEL_20;
        }

        if (IFileStreamSetPos(v23, v16 + v15, a3, a4, a5, a6, a7, a8) != v18)
        {
          v28 = "seek file decoder";
          v29 = 168;
          goto LABEL_23;
        }

        v22 = IFileStreamRead(a1[5], a2, v17, v24, v25, v26, a7, a8);
        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_20:
          v28 = "archive read failed";
          v29 = 171;
LABEL_23:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamRead", v29, 8, 0, v28, a7, a8, v31);
          return -1;
        }
      }

      if (v22)
      {
        v27 = a1[7] + v22;
        a1[7] = v27;
        if (v27 == v14[1])
        {
          ++a1[6];
          a1[7] = 0;
        }

        a2 += v22;
        v11 += v22;
        v8 -= v22;
        if (v8)
        {
          continue;
        }
      }

      return v11;
    }
  }

  return 0;
}

uint64_t initBestMatchThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v66 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = *(v0 + 20);
  bzero(v65, 0x3000uLL);
  bzero(v64, 0x7000uLL);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v1 + 36);
  v6 = v5 - v2;
  if (v5 < v2)
  {
    v6 = 0;
  }

  if (v4 + v2 > v5)
  {
    v4 = v6;
  }

  if (v3 < v4)
  {
    v7 = *(v0 + 12);
    do
    {
      v8 = *(v1 + 48);
      v9 = *(v8 + 8 * v7 + 4);
      if (v9 < 0x400)
      {
        v10 = v7;
        v11 = *(v1 + 24);
        v12 = 0;
        if (v2)
        {
          v13 = (v11 + v7);
          v14 = v2;
          do
          {
            v15 = *v13++;
            v12 = -1640531535 * (v15 + v12) - 1640531535;
            v14 -= 4;
          }

          while (v14);
        }

        v16 = v12 ^ HIWORD(v12);
        v17 = *(v0 + 32) + 6 * (v12 >> *(v1 + 44));
        if (*(v17 + 4) == v16)
        {
          v18 = *v17;
          if (*v17 >= *(v0 + 8))
          {
            v19 = &v65[3 * ((v7 - v18) & 0x3FF)];
            if (v18 != v19[1] + v7 - *v19 || v19[2] + *v19 < v7)
            {
              v20 = &v64[28 * (v18 & 0x3FF)];
              if (*v20 == v18)
              {
                v21 = v20[2];
                v22 = v7 - v21;
                if (v21 != v20[5] + v7 - v21)
                {
                  goto LABEL_26;
                }

                v24 = v20[3];
                v23 = v20[4];
                v25 = v23 + v22;
                v26 = v20[1];
                if (v23 + v22 <= v26)
                {
                  v25 = v20[1];
                }

                v27 = v25 + v22;
                v28 = v20[6] + v23;
                if (v28 >= v24 + v26)
                {
                  v28 = v24 + v26;
                }

                v29 = v28 >= v27;
                v30 = v28 - v27;
                if (v30 != 0 && v29)
                {
                  v18 = v18 - v7 + v27;
                  v10 = v27;
                }

                else
                {
LABEL_26:
                  v30 = 0;
                  LODWORD(v27) = v7;
                }
              }

              else
              {
                v21 = 0;
                v30 = 0;
                *v20 = v18;
                v20[1] = 0;
                LODWORD(v27) = v7;
                *(v20 + 1) = 0;
              }

              v31 = 0;
              if (v18 >= v27 - v3)
              {
                v32 = v27 - v3;
              }

              else
              {
                v32 = v18;
              }

              v33 = *(v1 + 16);
              v34 = v33 + v18;
              v35 = v11 + v10;
              v36 = -1;
              while (1)
              {
                v31 += 8;
                if (v31 > v32)
                {
                  break;
                }

                v37 = *(v34 - v31);
                v38 = *(v35 - v31);
                v36 += 8;
                if (v37 != v38)
                {
                  v36 = v31 + (__clz(v38 ^ v37) >> 3) - 8;
                  goto LABEL_38;
                }
              }

              while (1)
              {
                v39 = v36 + 2;
                if (v36 + 2 > v32)
                {
                  break;
                }

                ++v36;
                if (*(v34 - v39) != *(v35 - v39))
                {
                  goto LABEL_38;
                }
              }

              v36 = v32;
LABEL_38:
              v40 = v18 - v36;
              v41 = v27 - v36;
              v42 = v36 + v30;
              LODWORD(v43) = *(v1 + 32) - v40;
              v44 = *(v1 + 36) - v41;
              if (v43 >= v44)
              {
                v43 = v44;
              }

              else
              {
                v43 = v43;
              }

              v45 = v33 + v40;
              v46 = v11 + v41;
              while (1)
              {
                v47 = v42 + 8;
                if (v42 + 8 > v43)
                {
                  break;
                }

                v48 = *(v45 + v42);
                v49 = *(v46 + v42);
                v42 += 8;
                if (v48 != v49)
                {
                  LODWORD(v43) = v47 + (__clz(__rbit64(v49 ^ v48)) >> 3) - 8;
                  goto LABEL_51;
                }
              }

              if (v42 < v43)
              {
                v50 = v42;
                while (*(v45 + v50) == *(v46 + v50))
                {
                  if (++v50 >= v43)
                  {
                    goto LABEL_51;
                  }
                }

                LODWORD(v43) = v50;
              }

LABEL_51:
              if (v43 >= v2)
              {
                *v19 = v41;
                v19[1] = v40;
                v19[2] = v43;
                v51 = v20[1];
                v52 = v20[3];
                v20[5] = v21;
                v20[6] = v52;
                v20[1] = v41;
                v20[2] = v7;
                v20[3] = v43;
                v20[4] = v51;
                v53 = (v8 + 8 * v41);
                if (v43 > v53[1])
                {
                  *v53 = v40;
                  *(*(v1 + 48) + 8 * v41 + 4) = v43;
                  if (v43 + v41 > v7 + 1024)
                  {
                    v7 = v43 + v41 - 1024;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v7 = v7 + v9 - 1024;
      }

      ++v7;
    }

    while (v7 < v4);
  }

  if (*(v0 + 24))
  {
    v54 = *(v0 + 16);
    v55 = (*(v0 + 12) + 1);
    if (v55 < v54)
    {
      v56 = 8 * (*(v0 + 12) + 1);
      do
      {
        v57 = *(v1 + 48);
        v58 = v57 + v56;
        v59 = *(v57 + v56 - 4);
        if (v59 > v2 && v59 > *(v57 + v56 + 4))
        {
          v61 = *(v58 - 8) + 1;
          if (v61 < *(v1 + 32))
          {
            *(v57 + v56) = v61;
            *(v58 + 4) = v59 - 1;
            v54 = *(v0 + 16);
          }
        }

        ++v55;
        v56 += 8;
      }

      while (v55 < v54);
    }
  }

  v62 = *MEMORY[0x29EDCA608];
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
            initBestMatchThreadProc();
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
      v4 = xmmword_298069700;
      goto LABEL_20;
    case 3:
      v4 = xmmword_2980696F0;
      goto LABEL_20;
    case 4:
      v4 = xmmword_2980696E0;
      goto LABEL_20;
    case 5:
      v4 = xmmword_2980696D0;
      goto LABEL_20;
    case 6:
      *a1 = xmmword_2980696D0;
      v7 = 0x1A00000010;
      goto LABEL_29;
    case 7:
      v8 = xmmword_2980696D0;
      goto LABEL_22;
    case 8:
      *a1 = xmmword_2980696C0;
      v7 = 0x1A0000000CLL;
      goto LABEL_29;
    case 9:
      v8 = xmmword_2980696C0;
LABEL_22:
      *a1 = v8;
      v7 = 0x1A00000008;
      goto LABEL_29;
    case 10:
      v6 = xmmword_2980696B0;
      goto LABEL_28;
    case 11:
      v6 = xmmword_2980696A0;
      goto LABEL_28;
    case 12:
      v6 = xmmword_298069690;
      goto LABEL_28;
    case 13:
      v5 = xmmword_298069680;
      goto LABEL_11;
    case 14:
      v5 = xmmword_298069670;
      goto LABEL_11;
    case 15:
      v6 = xmmword_298069660;
      goto LABEL_28;
    case 16:
      v6 = xmmword_298069650;
      goto LABEL_28;
    case 17:
      v6 = xmmword_298069640;
LABEL_28:
      *a1 = v6;
      v7 = 24;
      goto LABEL_29;
    case 18:
      v5 = xmmword_298069640;
LABEL_11:
      *a1 = v5;
      v7 = 16;
      goto LABEL_29;
    case 19:
      *a1 = xmmword_298069640;
      v7 = 8;
      goto LABEL_29;
    case 20:
      *a1 = 1;
      *v25 = 0;
      *(a1 + 12) = 0;
      *(a1 + 20) = 0;
      goto LABEL_30;
    case 21:
      *a1 = xmmword_2980696D0;
      v7 = 0x1800000010;
      goto LABEL_29;
    default:
      v4 = xmmword_298069710;
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

uint64_t GetBXDiffMaxMemoryUsage(unint64_t a1, unint64_t a2, int a3, int a4)
{
  DefaultNThreads = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (!a3)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 6;
  }

  if (a2 >= 0x4B000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 20;
  }

  if ((getProfile(&v19, v9) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "GetBXDiffMaxMemoryUsage", 1190, 92, "loading profile: %d", v10, v11, v12, v9);
    return 0;
  }

  else
  {
    v13 = 8 * a2;
    if (SHIDWORD(v19) <= 0)
    {
      v13 = 0;
    }

    if (v19 < 1)
    {
      v16 = 19;
      do
      {
        v17 = v16 + 1;
        if (v16 + 1 >= SHIDWORD(v21))
        {
          break;
        }

        v18 = (1 << (v20 + v16++ + 1));
      }

      while (v18 < a1);
      v14 = 6 << v17 << (DefaultNThreads != 1);
    }

    else
    {
      v14 = 4 * a1;
    }

    return v14 + v13;
  }
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

AAByteStream AACompressionOutputStreamOpen(AAByteStream compressed_stream, AACompressionAlgorithm compression_algorithm, size_t block_size, AAFlagSet flags, int n_threads)
{
  v37 = *MEMORY[0x29EDCA608];
  v9 = calloc(1uLL, 0x68uLL);
  if (!v9)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 254, 19, *v16, "malloc", v17, v18, v33);
    v10 = 0;
LABEL_37:
    free(v9);
    aaCompressionOutputStreamClose(v10, v24, v25, v26, v27, v28, v29, v30);
    v9 = 0;
    goto LABEL_38;
  }

  v10 = calloc(1uLL, 0x30uLL);
  if (!v10)
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 256;
LABEL_36:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", v21, 19, v19, v20, v13, v14, v33);
    goto LABEL_37;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v10 + 2) = n_threads;
  v11 = calloc(n_threads, 8uLL);
  v10[2] = v11;
  if (*(v10 + 2))
  {
    v12 = 0;
    while (1)
    {
      *(v10[2] + 8 * v12) = CompressionWorkerDataCreate(block_size, compression_algorithm);
      v15 = v10[2];
      if (!*(v15 + 8 * v12))
      {
        break;
      }

      ++v12;
      v11 = *(v10 + 2);
      if (v12 >= v11)
      {
        goto LABEL_13;
      }
    }

    v20 = "Worker data allocation";
    v21 = 264;
    goto LABEL_35;
  }

  v15 = v11;
  LODWORD(v11) = 0;
LABEL_13:
  v22 = ThreadPipelineCreate(v11, v15, CompressionWorkerProc, v10, CompressionConsumerProc, 0);
  *v10 = v22;
  if (!v22)
  {
    v20 = "Thread allocation";
    v21 = 267;
LABEL_35:
    v19 = 0;
    goto LABEL_36;
  }

  v10[3] = compressed_stream;
  qmemcpy(buf, "pbz", sizeof(buf));
  v23 = 122;
  if (compression_algorithm <= 1284)
  {
    if (compression_algorithm)
    {
      if (compression_algorithm != 256)
      {
        if (compression_algorithm == 774)
        {
          v23 = 120;
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v23 = 52;
    }

    else
    {
      v23 = 45;
    }
  }

  else
  {
    if (compression_algorithm <= 2048)
    {
      if (compression_algorithm == 1285)
      {
        goto LABEL_32;
      }

      if (compression_algorithm == 1794)
      {
        v23 = 98;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (compression_algorithm != 2049)
    {
      if (compression_algorithm == 2304)
      {
        v23 = 102;
        goto LABEL_32;
      }

LABEL_29:
      v20 = "Invalid compression algorithm";
      v21 = 274;
      goto LABEL_35;
    }

    v23 = 101;
  }

LABEL_32:
  v35 = v23;
  v36 = bswap64(block_size);
  if (AAByteStreamWrite(compressed_stream, buf, 0xCuLL) != 12)
  {
    v20 = "writing stream magic";
    v21 = 277;
    goto LABEL_35;
  }

  v9[3] = aaCompressionOutputStreamWrite;
  v9[7] = aaCompressionOutputStreamAbort;
  *v9 = v10;
  v9[1] = aaCompressionOutputStreamClose;
  v9[9] = aaCompressionOutputStreamFlush;
LABEL_38:
  v31 = *MEMORY[0x29EDCA608];
  return v9;
}

void **CompressionWorkerDataCreate(size_t a1, compression_algorithm a2)
{
  v4 = 56;
  v5 = calloc(1uLL, 0x38uLL);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v5[1] = 0;
  v5[2] = 0;
  *v5 = a1;
  if (a1 >= 0x2000000001)
  {
    *__error() = 12;
    v6[3] = 0;
    v4 = 62;
    v7 = 4;
LABEL_4:
    *__error() = 12;
    v6[v7] = 0;
LABEL_5:
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionWorkerDataCreate", v4, 19, *v8, "malloc", v9, v10, v16);
    CompressionWorkerDataDestroy(v6);
    return 0;
  }

  v12 = malloc(a1);
  v6[3] = v12;
  v13 = malloc(a1);
  v6[4] = v13;
  v4 = 62;
  if (!v12 || !v13)
  {
    goto LABEL_5;
  }

  *(v6 + 10) = a2;
  if (a2)
  {
    if (a2 != COMPRESSION_LZMA)
    {
      v14 = compression_encode_scratch_buffer_size(a2);
      if (v14)
      {
        if (v14 <= 0x2000000000)
        {
          v15 = malloc(v14);
          v6[6] = v15;
          if (v15)
          {
            return v6;
          }

          v4 = 68;
          goto LABEL_5;
        }

        v4 = 68;
        v7 = 6;
        goto LABEL_4;
      }
    }
  }

  return v6;
}

uint64_t CompressionWorkerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (!v3 || (v3 != COMPRESSION_LZMA ? (v5 = compression_encode_buffer(*(a1 + 32), *a1, *(a1 + 24), v2, *(a1 + 48), v3)) : (v4 = PCompressLZMA6Encode(*(a1 + 32), *a1, *(a1 + 24), v2), v5 = v4 & ~(v4 >> 63)), v5 ? (v6 = v5 + (v2 >> 4) >= v2) : (v6 = 1), v6))
  {
    memcpy(*(a1 + 32), *(a1 + 24), v2);
    v5 = v2;
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t CompressionConsumerProc(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 40))
  {
    goto LABEL_8;
  }

  v9 = vrev64q_s8(*(a2 + 8));
  if (AAByteStreamWrite(*(a1 + 24), &v9, 0x10uLL) != 16)
  {
    v7 = 115;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionConsumerProc", v7, 19, 0, "Stream write failed", v4, v5, v9.i8[0]);
    *(a1 + 40) = 1;
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (AAByteStreamWrite(*(a1 + 24), *(a2 + 32), *(a2 + 16)) != *(a2 + 16))
  {
    v7 = 119;
    goto LABEL_7;
  }

  result = 0;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaCompressionOutputStreamWrite(uint64_t a1, uint64_t __src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  v9 = __src;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = v12[1];
      goto LABEL_7;
    }

    Worker = ThreadPipelineGetWorker(*a1, __src, a3, a4, a5, a6, a7, a8);
    *(a1 + 32) = Worker;
    if (!Worker)
    {
      break;
    }

    v12 = Worker;
    v13 = 0;
    *(Worker + 8) = 0;
    *(Worker + 16) = 0;
LABEL_7:
    if (*v12 - v13 >= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = *v12 - v13;
    }

    memcpy((v12[3] + v13), v9, v15);
    v16 = *v12;
    v17 = v12[1] + v15;
    v12[1] = v17;
    if (v17 == v16)
    {
      if ((ThreadPipelineRunWorker(*a1, *(a1 + 32), a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        v18 = "running worker";
        v19 = 186;
        goto LABEL_18;
      }

      *(a1 + 32) = 0;
    }

    v9 += v15;
    v11 += v15;
    v8 -= v15;
    if (!v8)
    {
      return v11;
    }
  }

  v18 = "getting next worker";
  v19 = 168;
LABEL_18:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", v19, 19, 0, v18, a7, a8, v21);
  *(a1 + 40) = 1;
  return -1;
}

uint64_t *aaCompressionOutputStreamClose(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = result[4];
    if (v9)
    {
      if ((ThreadPipelineRunWorker(*result, v9, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 133, 19, 0, "RunWorker", v10, v11, v20);
        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v8[4] = 0;
    }

    else
    {
      v12 = 1;
    }

    if ((ThreadPipelineDestroy(*v8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 138, 19, 0, "Thread shutdown", v13, v14, v20);
      v12 = 0;
    }

    v15 = v8[2];
    if (v15)
    {
      if (*(v8 + 2))
      {
        v16 = 0;
        do
        {
          CompressionWorkerDataDestroy(*(v8[2] + 8 * v16++));
        }

        while (v16 < *(v8 + 2));
        v15 = v8[2];
      }

      free(v15);
    }

    if (*(v8 + 11) && (AAByteStreamSeek(v8[3], 0, 1) < 0 || (AAByteStreamTruncate(v8[3]) & 0x80000000) != 0))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 151, 19, "Truncate on compressed stream failed", v17, v18, v19, v20);
    }

    free(v8);
    if (v12)
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

uint64_t aaCompressionOutputStreamFlush(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v1;
  if ((ThreadPipelineFlush(*a1) & 0x80000000) != 0)
  {
    v11 = "ThreadPipelineFlush";
    v12 = 209;
    goto LABEL_16;
  }

  if (*(a1 + 32))
  {
    v6 = AAByteStreamSeek(*(a1 + 24), 0, 1);
    if (v6 < 0)
    {
      v11 = "AAByteStreamSeek";
      v12 = 216;
    }

    else
    {
      v7 = v6;
      CompressionWorkerProc(*(a1 + 32));
      if ((CompressionConsumerProc(a1, *(a1 + 32)) & 0x80000000) != 0)
      {
        v11 = "CompressionConsumerProc";
        v12 = 220;
      }

      else
      {
        if (v7 == AAByteStreamSeek(*(a1 + 24), v7, 0))
        {
          *(a1 + 44) = 1;
          goto LABEL_9;
        }

        v11 = "AAByteStreamSeek";
        v12 = 223;
      }
    }

LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", v12, 19, 0, v11, v4, v5, v13);
    *(a1 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  if ((AAByteStreamFlush(*(a1 + 24)) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 230, 19, "Flush on underlying stream failed", v8, v9, v10, v13);
  }

  return 0;
}

void CompressionWorkerDataDestroy(void **a1)
{
  if (a1)
  {
    free(a1[3]);
    free(a1[4]);
    free(a1[6]);

    free(a1);
  }
}

uint64_t generateBOM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v137 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v100);
  bzero(__fd, 0x4D8uLL);
  v110[0] = *a1;
  v110[1] = v8;
  v111 = *(a1 + 48);
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  DefaultNThreads = *(a1 + 16);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v102[0] = 0;
  v102[1] = DefaultNThreads;
  v15 = *(a1 + 40);
  v103 = *(a1 + 24);
  v108 = v110;
  *(&v104 + 1) = v15;
  *&v105 = bomBeginProc;
  if (storeBlock(v110, 0, 0, __buf, v10, v11, v12, v13))
  {
    v23 = "alloc first block";
    v24 = 929;
LABEL_70:
    v80 = 0;
    goto LABEL_71;
  }

  v25 = ParallelArchiveRead(v102, v16, v17, v18, v19, v20, v21, v22);
  if (v25 | v126)
  {
    v23 = "ParallelArchiveRead";
    v24 = 934;
    goto LABEL_70;
  }

  qsort(v114, *v113, 0x30uLL, BOMEntryCompareProc);
  if (createTree(v110, *v113, getPathsPK, v110, 0x1000uLL, &v122, v26, v27))
  {
    v23 = "path_tree";
    v24 = 940;
    goto LABEL_70;
  }

  if (!__count)
  {
    v63 = createTree(v110, 0, 0, 0, 0x1000uLL, &v123, v21, v22);
    goto LABEL_62;
  }

  v28 = calloc(2 * __count, 4uLL);
  if (!v28)
  {
    v64 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", 499, 52, *v64, "malloc", v65, v66, v101);
    v34 = 0;
    goto LABEL_60;
  }

  v29 = calloc(__count, 8uLL);
  v34 = v29;
  if (!v29)
  {
    v67 = *__error();
    v68 = "malloc";
    v69 = 501;
    goto LABEL_59;
  }

  v35 = *v113;
  if (!*v113)
  {
    if (!__count)
    {
LABEL_47:
      v57 = 0;
LABEL_48:
      if (v110[0] >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "%zu clusters in main hlinks tree\n", v57);
      }

      if (createTree(v110, v57, getTablePK, v28, 0x1000uLL, &v123, v32, v33))
      {
        v68 = "hlink_tree";
        v69 = 577;
        goto LABEL_58;
      }

      v63 = 0;
      goto LABEL_61;
    }

LABEL_45:
    v68 = "mismatch in hlink entry count";
    v69 = 511;
    goto LABEL_58;
  }

  v36 = 0;
  v37 = 0;
  v38 = (v114 + 36);
  do
  {
    v39 = *v38;
    v38 += 12;
    if (v39 != -1)
    {
      if (v36 >= __count)
      {
        v68 = "mismatch in hlink entry count";
        v69 = 508;
        goto LABEL_58;
      }

      v29[v36++] = v37;
      v35 = *v113;
    }

    ++v37;
  }

  while (v37 < v35);
  if (v36 != __count)
  {
    goto LABEL_45;
  }

  if (!v36)
  {
    goto LABEL_47;
  }

  for (i = 0; i != v36; ++i)
  {
    v41 = v114 + 48 * v34[i];
    if (*(v41 + 9) != -1)
    {
      bzero(__buf + 2, 0x462uLL);
      LOWORD(__buf[0]) = 12078;
      v43 = *v41;
      v42 = *(v41 + 1);
      __memcpy_chk();
      v44 = *(v41 + 1);
      *(__buf + v44 + 2) = 0;
      if (storeBlock(v110, __buf, v44 + 3, v41 + 10, v45, v46, v47, v48))
      {
        v68 = "hlink_path";
        v69 = 525;
        goto LABEL_58;
      }
    }
  }

  for (j = 0; j != v36; ++j)
  {
    v50 = v114;
    v51 = v114 + 48 * v34[j];
    if (v51[9] == v51[4])
    {
      v52 = 0;
      for (k = 0; k != v36; ++k)
      {
        v54 = &v50[48 * v34[k]];
        if (*(v54 + 9) == v51[4])
        {
          v55 = &v28[8 * v52];
          *v55 = 0;
          *(v55 + 1) = *(v54 + 10);
          ++v52;
        }
      }

      if (v110[0] > 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "%zu entries in hlinks cluster %zu\n", v52, j);
      }

      if (createTree(v110, v52, getTablePK, v28, 0x40uLL, v51 + 11, v32, v33))
      {
        v68 = "hlink_cluster_tree";
        v69 = 551;
        goto LABEL_58;
      }
    }
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v58 = v114 + 48 * v34[v56];
    if (v58[9] == v58[4])
    {
      break;
    }

LABEL_39:
    if (v36 == ++v56)
    {
      goto LABEL_48;
    }
  }

  v109 = 0;
  __buf[0] = bswap32(v58[11]);
  if (storeBlock(v110, __buf, 4uLL, &v109 + 1, v30, v31, v32, v33))
  {
    v69 = 567;
    goto LABEL_57;
  }

  __buf[0] = bswap32(v58[7]);
  if (!storeBlock(v110, __buf, 4uLL, &v109, v59, v60, v32, v33))
  {
    v61 = v109;
    v62 = &v28[8 * v57];
    *v62 = HIDWORD(v109);
    *(v62 + 1) = v61;
    ++v57;
    goto LABEL_39;
  }

  v69 = 569;
LABEL_57:
  v68 = "storeBlock";
LABEL_58:
  v67 = 0;
LABEL_59:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createHLinks", v69, 52, v67, v68, v32, v33, v101);
LABEL_60:
  v63 = -1;
LABEL_61:
  free(v34);
  free(v28);
LABEL_62:
  if (v63)
  {
    v23 = "hlinks";
    v24 = 943;
    goto LABEL_70;
  }

  if (createTree(v110, *v115, getSize64PK, v110, 0x80uLL, v124, v21, v22))
  {
    v23 = "size64_tree";
    v24 = 946;
    goto LABEL_70;
  }

  if (createBomInfo(v110, v70, v71, v72, v73, v74, v21, v22))
  {
    v23 = "bom_info";
    v24 = 949;
    goto LABEL_70;
  }

  if (createVIndex(v110, v75, v76, v77, v78, v79, v21, v22))
  {
    v23 = "vindex";
    v24 = 952;
    goto LABEL_70;
  }

  if (v110[0] >= 1)
  {
    v84 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries in BOM\n", *v113);
    fprintf(*v84, "%12zu hard link entries\n", __count);
    fprintf(*v84, "%12zu hard link clusters\n", v118);
    fprintf(*v84, "%12zu blocks allocated\n", v119);
    fprintf(*v84, "%12zu B in state blob storage\n", v125[1]);
  }

  v121 = calloc(v119, 8uLL);
  if (!v121)
  {
    v80 = *__error();
    v23 = "malloc";
    v24 = 967;
    goto LABEL_71;
  }

  v85 = *(a1 + 8);
  if (!v85)
  {
    v23 = "No output_file given";
    v24 = 970;
    goto LABEL_70;
  }

  v101 = -92;
  __fd[0] = open(v85, 1537);
  if (__fd[0] < 0)
  {
    v80 = *__error();
    v23 = *(a1 + 8);
    v24 = 972;
    goto LABEL_71;
  }

  v86 = 0;
  v133.i64[0] = 512;
  v131 = 83886080;
  v87 = 516;
  v132 = 516;
  do
  {
    if (v86 <= 1)
    {
      if (v86)
      {
        v88 = v122;
        v89 = "Paths";
      }

      else
      {
        v88 = v124[2];
        v89 = "BomInfo";
      }
    }

    else if (v86 == 2)
    {
      v88 = v123;
      v89 = "HLIndex";
    }

    else if (v86 == 3)
    {
      v88 = v124[0];
      v89 = "Size64";
    }

    else
    {
      v88 = v124[3];
      v89 = "VIndex";
    }

    v90 = strlen(v89);
    *(&v127 + v87) = bswap32(v88);
    v132 += 4;
    *(&v127 + v132++) = v90 + 1;
    memcpy(&v127 + v132, v89, v90);
    v132 += v90;
    *(&v127 + v132) = 0;
    v87 = ++v132;
    ++v86;
  }

  while (v86 != 5);
  v133.i64[1] = v87 - v133.i64[0];
  if (v110[0] >= 1)
  {
    v91 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for header\n", v133.u64[0]);
    fprintf(*v91, "%12zu B written for TOC\n", v133.u64[1]);
    v87 = v132;
  }

  v92 = write(__fd[0], &v127, v87);
  if (v92 != v132)
  {
    v80 = *__error();
    v23 = "write";
    v24 = 1008;
    goto LABEL_71;
  }

  v93 = v119;
  if (v119)
  {
    v94 = 0;
    for (m = 0; m < v93; ++m)
    {
      v96 = *(v120 + v94 + 1);
      if (v96)
      {
        if ((v92 | v96) >> 32)
        {
          v23 = "overflow in offset,size";
          v24 = 1016;
          goto LABEL_70;
        }

        if (write(__fd[0], (v125[2] + *(v120 + v94)), v96) != v96)
        {
          v80 = *__error();
          v23 = "write";
          v24 = 1018;
          goto LABEL_71;
        }

        v97 = (4 * v94) & 0x3FFFFFFF8;
        *(v121 + v97) = bswap32(v132);
        *(v121 + v97 + 4) = bswap32(v96);
        v93 = v119;
        v92 = v132 + v96;
        v132 += v96;
        v135 += v96;
      }

      v94 += 2;
    }
  }

  if (v110[0] >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for blocks\n", v135);
    v93 = v119;
    v92 = v132;
  }

  v134.i64[0] = v92;
  __buf[0] = bswap32(v93);
  if (write(__fd[0], __buf, 4uLL) != 4)
  {
    v80 = *__error();
    v23 = "write";
    v24 = 1033;
    goto LABEL_71;
  }

  v132 += 4;
  if (write(__fd[0], v121, 8 * v93) != 8 * v93)
  {
    v80 = *__error();
    v23 = "write";
    v24 = 1036;
LABEL_71:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "generateBOM", v24, 52, v80, v23, v21, v22, v101);
    v81 = -1;
    goto LABEL_72;
  }

  v132 += 8 * v93;
  __buf[0] = 0;
  if (write(__fd[0], __buf, 4uLL) != 4)
  {
    v80 = *__error();
    v23 = "write";
    v24 = 1040;
    goto LABEL_71;
  }

  v132 += 4;
  v134.i64[1] = v132 - v134.i64[0];
  if (HIDWORD(v134.i64[0]) || (v132 - v134.i64[0]) >> 32)
  {
    v23 = "overflow in offset,size";
    v24 = 1045;
    goto LABEL_70;
  }

  if (v110[0] < 1)
  {
    v99.i64[0] = v134.i64[0];
    v99.i64[1] = v132 - v134.i64[0];
  }

  else
  {
    v98 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu B written for blocks table\n", v132 - v134.i64[0]);
    fprintf(*v98, "%12zu B final BOM size\n", v132);
    v99 = v134;
  }

  v127 = 0x65726F74534D4F42;
  v128 = 0x1000000;
  v129 = bswap32(v119);
  v130 = vrev32q_s8(vuzp1q_s32(v99, v133));
  if (pwrite(__fd[0], &v127, 0x200uLL, 0) != 512)
  {
    v80 = *__error();
    v23 = "write";
    v24 = 1064;
    goto LABEL_71;
  }

  v81 = 0;
LABEL_72:
  BlobBufferFree(v125);
  free(v114);
  free(v116);
  free(v120);
  free(v121);
  if ((__fd[0] & 0x80000000) == 0)
  {
    close(__fd[0]);
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v81;
  }

  else
  {
    result = result;
  }

  v83 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t bomBeginProc(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x29EDCA608];
  v8 = a2[1] - 77;
  v9 = v8 > 6;
  v10 = (1 << v8) & 0x49;
  v11 = v9 || v10 == 0;
  if (!v11)
  {
    goto LABEL_45;
  }

  v13 = result;
  if ((*(a2 + 1) & 0x80) == 0)
  {
    v14 = "missing PAT field";
    v15 = 622;
LABEL_43:
    v43 = 0;
LABEL_44:
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "bomBeginProc", v15, 52, v43, v14, a7, a8, v90);
    ++*(v13 + 184);
    goto LABEL_45;
  }

  __strlcpy_chk();
  v16 = *(v13 + 8);
  if (v16)
  {
    result = v16(*(v13 + 16), __s, a2[1]);
    if (result < 1)
    {
      goto LABEL_45;
    }
  }

  v17 = a2[1];
  if (v17 == 68 && !__s[0])
  {
    strcpy(__s, ".");
  }

  v18 = __s;
  v19 = strlen(__s);
  v20 = v19;
  if (!v19)
  {
    v23 = 0;
LABEL_25:
    v25 = *(v13 + 40);
    v28 = v25 != 0;
    goto LABEL_26;
  }

  v21 = 0;
  v22 = __s;
  while (v22[v19] != 47)
  {
    ++v21;
    --v22;
    if (v19 == v21)
    {
      v18 = __s;
      v23 = v19;
      goto LABEL_25;
    }
  }

  v24 = &v22[v19];
  v18 = v24 + 1;
  v23 = v21 - 1;
  v25 = *(v13 + 40);
  if (!v25)
  {
    goto LABEL_25;
  }

  v91 = v24 + 1;
  v26 = *(v13 + 48) + 48 * v25 - 48;
  v27 = *(v13 + 40);
  while (v20 - *(v26 + 8) != v21 || memcmp((*(v13 + 176) + *v26), __s, v20 - v21))
  {
    v26 -= 48;
    if (!--v27)
    {
      v23 = v21 - 1;
      v18 = v91;
      goto LABEL_25;
    }
  }

  v28 = *(v26 + 16);
  v23 = v21 - 1;
  v18 = v91;
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v17 != 72)
  {
    v33 = -1;
    v35 = -1;
    goto LABEL_33;
  }

  v92 = v18;
  v29 = v23;
  v30 = strlen(a2 + 1168);
  if (!v25)
  {
    goto LABEL_31;
  }

  v31 = v30;
  v32 = cmpBOMPath(v13, a2 + 292, v30, 0);
  if (v32 < 0)
  {
    goto LABEL_31;
  }

  if (v32)
  {
    v33 = v25 - 1;
    v34 = cmpBOMPath(v13, a2 + 292, v31, v25 - 1);
    if (v34 <= 0)
    {
      if (v34)
      {
        v55 = 0;
        while (v55 + 1 < v33)
        {
          v56 = v55 + ((v33 - v55) >> 1);
          v57 = cmpBOMPath(v13, a2 + 292, v31, v56);
          if (v57 < 0)
          {
            v33 = v55 + ((v33 - v55) >> 1);
          }

          else
          {
            v55 += (v33 - v55) >> 1;
          }

          if (!v57)
          {
            v33 = v56;
            goto LABEL_64;
          }
        }

        goto LABEL_31;
      }

LABEL_64:
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_31:
    v90 = __s;
    v14 = "missing hard link target entry: %s";
    v15 = 666;
    goto LABEL_43;
  }

  v33 = 0;
LABEL_65:
  v58 = *(v13 + 48) + 48 * v33;
  v60 = *(v58 + 36);
  v59 = (v58 + 36);
  v35 = *(v59 - 5);
  v61 = *(v13 + 88);
  *(v13 + 88) = v61 + 1;
  if (v60 == -1)
  {
    *v59 = v35;
    v62 = v61 + 2;
    v63 = *(v13 + 96) + 1;
    *(v13 + 88) = v62;
    *(v13 + 96) = v63;
  }

  v23 = v29;
  v18 = v92;
LABEL_33:
  v36 = *(v13 + 32);
  if (v25 >= v36)
  {
    v38 = v36 + (v36 >> 1);
    v11 = v36 == 0;
    v39 = 0x4000;
    if (!v11)
    {
      v39 = v38;
    }

    *(v13 + 32) = v39;
    v37 = reallocf(*(v13 + 48), 48 * v39);
    *(v13 + 48) = v37;
    if (!v37)
    {
      v43 = *__error();
      v14 = "malloc";
      v15 = 688;
      goto LABEL_44;
    }

    v25 = *(v13 + 40);
  }

  else
  {
    v37 = *(v13 + 48);
  }

  v40 = *(v13 + 56);
  if (v40 == -1)
  {
    v14 = "too many entries";
    v15 = 695;
    goto LABEL_43;
  }

  v41 = v40 + 1;
  *(v13 + 56) = v41;
  v42 = &v37[48 * v25];
  *(v42 + 4) = v41;
  *(v42 + 5) = v28;
  *(v42 + 9) = v35;
  if (BlobBufferStore(v13 + 160, __s, v20, v42))
  {
    v14 = "path_blob";
    v15 = 703;
    goto LABEL_43;
  }

  v45 = a2[1];
  if (v45 == 72)
  {
    *(v42 + 7) = *(*(v13 + 48) + 48 * v33 + 28);
    goto LABEL_48;
  }

  bzero(v95, 0x44DuLL);
  v54 = *a2;
  if ((*a2 & 0x10) == 0)
  {
    v90 = __s;
    v14 = "missing MOD field: %s";
    v15 = 720;
    goto LABEL_43;
  }

  if ((v54 & 2) == 0)
  {
    v90 = __s;
    v14 = "missing UID field: %s";
    v15 = 721;
    goto LABEL_43;
  }

  if ((v54 & 4) == 0)
  {
    v90 = __s;
    v14 = "missing GID field: %s";
    v15 = 722;
    goto LABEL_43;
  }

  if ((v54 & 0x100) == 0)
  {
    v90 = __s;
    v14 = "missing MTM field: %s";
    v15 = 723;
    goto LABEL_43;
  }

  v70 = a2[5];
  if (v45 <= 67)
  {
    if (v45 == 66)
    {
      if ((v54 & 0x20) == 0)
      {
        v90 = __s;
        v14 = "missing DEV field: %s";
        v15 = 749;
        goto LABEL_43;
      }

      v75 = v23;
      v76 = v70 | 0x6000;
    }

    else
    {
      if (v45 != 67)
      {
        goto LABEL_106;
      }

      if ((v54 & 0x20) == 0)
      {
        v90 = __s;
        v14 = "missing DEV field: %s";
        v15 = 756;
        goto LABEL_43;
      }

      v75 = v23;
      v76 = v70 | 0x2000;
    }

    v77 = *(v13 + 4) == 0;
    if (*(v13 + 4))
    {
      v78 = 17;
    }

    else
    {
      v78 = 1;
    }

    v79 = 4;
  }

  else
  {
    switch(v45)
    {
      case 'D':
        v75 = v23;
        v76 = v70 | 0x4000;
        v77 = *(v13 + 4) == 0;
        if (*(v13 + 4))
        {
          v78 = 17;
        }

        else
        {
          v78 = 1;
        }

        v79 = 2;
        break;
      case 'L':
        if ((v54 & 0x10000) == 0)
        {
          v90 = __s;
          v14 = "missing LNK field: %s";
          v15 = 742;
          goto LABEL_43;
        }

        v75 = v23;
        v76 = v70 | 0xFFFFA000;
        v77 = *(v13 + 4) == 0;
        v79 = 3;
        if (*(v13 + 4))
        {
          v78 = 19;
        }

        else
        {
          v78 = 3;
        }

        break;
      case 'F':
        if ((v54 & 0x80) == 0)
        {
          v90 = __s;
          v14 = "missing SIZ field: %s";
          v15 = 727;
          goto LABEL_43;
        }

        if ((v54 & 0x1000) == 0)
        {
          v90 = __s;
          v14 = "missing CKS field: %s";
          v15 = 728;
          goto LABEL_43;
        }

        if ((v54 & 8) == 0)
        {
          v90 = __s;
          v14 = "missing FLG field: %s";
          v15 = 729;
          goto LABEL_43;
        }

        v75 = v23;
        v76 = v70 | 0xFFFF8000;
        v77 = *(v13 + 4) == 0;
        if (*(v13 + 4))
        {
          v78 = 19;
        }

        else
        {
          v78 = 3;
        }

        v79 = 1;
        break;
      default:
LABEL_106:
        v90 = __s;
        v14 = "invalid entry type: %s";
        v15 = 763;
        goto LABEL_43;
    }
  }

  v93[0] = v79;
  v93[1] = 1;
  *&v93[2] = v78 << 8;
  v80.i64[0] = *(a2 + 1);
  v81 = vmovn_s64(*(a2 + 10));
  v80.i64[1] = __PAIR64__(v81.u32[0], v81.u32[1]);
  *&v93[4] = bswap32(v76) >> 16;
  *&v93[6] = vrev32q_s8(v80);
  v94 = 1;
  if ((v78 & 2) != 0)
  {
    if ((v54 & 0x1000) != 0)
    {
      v83 = a2[22];
    }

    else
    {
      v83 = 0;
    }

    v95[0] = bswap32(v83);
    v82 = 27;
  }

  else
  {
    v82 = 23;
  }

  if (v45 == 76)
  {
    v84 = strlen(a2 + 1168);
    *&v93[v82] = bswap32(v84 + 1);
    v85 = v82 + 4;
    memcpy(&v93[v85], a2 + 292, v84);
    v86 = v84 + v85;
    v82 = v84 + v85 + 1;
    v93[v86] = 0;
  }

  else if ((v45 & 0xFFFFFFFE) == 0x42)
  {
    *&v93[v82] = bswap32(a2[6]);
    v82 += 4;
  }

  if (!v77)
  {
    *&v93[v82] = 0x8000000;
    IsCompressed = statIsCompressed(a2[4]);
    v88 = strstr(__s, "/usr/standalone/update");
    v89 = (IsCompressed << 32) | 0xF1;
    if (v88)
    {
      v89 = 0x1000000F1;
    }

    *&v93[v82 + 4] = v89;
    v82 += 12;
  }

  if (storeBlock(v13, v93, v82, v42 + 7, v52, v53, a7, a8))
  {
    v14 = "attr";
    v15 = 830;
    goto LABEL_43;
  }

  v23 = v75;
LABEL_48:
  bzero(&v93[4], 0x460uLL);
  *v93 = bswap32(*(v42 + 5));
  __memcpy_chk();
  v93[v23 + 4] = 0;
  if (storeBlock(v13, v93, v23 + 5, v42 + 6, v46, v47, v48, v49))
  {
    v14 = "name";
    v15 = 846;
    goto LABEL_43;
  }

  *v93 = bswap32(*(v42 + 4));
  *&v93[4] = bswap32(*(v42 + 7));
  result = storeBlock(v13, v93, 8uLL, v42 + 8, v50, v51, a7, a8);
  if (result)
  {
    v14 = "tree_ptr";
    v15 = 856;
    goto LABEL_43;
  }

  v66 = *(a2 + 5);
  if (HIDWORD(v66))
  {
    v68 = *(v13 + 64);
    v67 = *(v13 + 72);
    if (v67 >= v68)
    {
      v71 = v68 + (v68 >> 1);
      if (!v68)
      {
        v71 = 0x4000;
      }

      *(v13 + 64) = v71;
      v69 = reallocf(*(v13 + 80), 8 * v71);
      *(v13 + 80) = v69;
      if (!v69)
      {
        v43 = *__error();
        v14 = "malloc";
        v15 = 868;
        goto LABEL_44;
      }

      v67 = *(v13 + 72);
      v66 = *(a2 + 5);
    }

    else
    {
      v69 = *(v13 + 80);
    }

    v72 = &v69[8 * v67];
    *v93 = bswap64(v66);
    if (storeBlock(v13, v93, 8uLL, v72, v64, v65, a7, a8))
    {
      v14 = "size";
      v15 = 877;
      goto LABEL_43;
    }

    *v93 = bswap32(*(v42 + 7));
    result = storeBlock(v13, v93, 4uLL, v72 + 1, v73, v74, a7, a8);
    if (result)
    {
      v14 = "attr";
      v15 = 881;
      goto LABEL_43;
    }

    ++*(v13 + 72);
  }

  if (*v13 >= 2)
  {
    result = fprintf(*MEMORY[0x29EDCA610], "entry_id=%u parent_id=%u %s\n", *(v42 + 4), *(v42 + 5), v18);
  }

  ++*(v13 + 40);
LABEL_45:
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t storeBlock(uint64_t a1, const void *a2, size_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 112);
  if (v8 >= 0xFFFFFFFF)
  {
    v9 = "too many blocks";
    v10 = 168;
LABEL_13:
    v18 = 0;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "storeBlock", v10, 52, v18, v9, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(a3))
  {
    v21 = a3;
    v9 = "block is too large: %zu B";
    v10 = 169;
    goto LABEL_13;
  }

  v15 = *(a1 + 104);
  if (v8 >= v15)
  {
    v16 = v15 + (v15 >> 1);
    if (!v15)
    {
      v16 = 4096;
    }

    *(a1 + 104) = v16;
    v17 = reallocf(*(a1 + 120), 16 * v16);
    *(a1 + 120) = v17;
    if (!v17)
    {
      v18 = *__error();
      v9 = "malloc";
      v10 = 177;
      goto LABEL_14;
    }

    v8 = *(a1 + 112);
  }

  *a4 = v8;
  if (a3)
  {
    if (BlobBufferStore(a1 + 160, a2, a3, (*(a1 + 120) + 16 * v8)))
    {
      v9 = "blob store";
      v10 = 187;
      goto LABEL_13;
    }

    v8 = *(a1 + 112);
  }

  else
  {
    v20 = (*(a1 + 120) + 16 * v8);
    *v20 = 0;
    v20[1] = 0;
  }

  result = 0;
  *(a1 + 112) = v8 + 1;
  return result;
}

uint64_t BOMEntryCompareProc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t createTree(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t, int8x8_t *), uint64_t a4, size_t __size, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a2 < 0xFFFFFFFF)
  {
    v14 = malloc(__size);
    v90 = v14;
    if (!v14)
    {
      v21 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 273, 52, *v21, "malloc", v22, v23, v82);
      v24 = 0;
      v25 = 0;
      goto LABEL_68;
    }

    v15 = v14;
    v16 = (__size - 16) >> 3;
    v17 = a2;
    if (a2 < 2)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v18)
        {
          v20 = v16 + 1;
        }

        else
        {
          v20 = (__size - 16) >> 3;
        }

        v17 = (v17 + v20 - 1) / v20;
        v19 += v17;
        --v18;
      }

      while (v17 > 1);
    }

    if (v19 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v19;
    }

    v25 = calloc(v26, 4uLL);
    if (!v25)
    {
      v68 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 287, 52, *v68, "malloc", v69, v70, v82);
      v24 = 0;
      goto LABEL_68;
    }

    v86 = v16 + 1;
    v27 = calloc(v26, 4uLL);
    v24 = v27;
    if (!v27)
    {
      v71 = *__error();
      v72 = "malloc";
      v73 = 289;
      goto LABEL_67;
    }

    v89 = a1;
    if (!a2)
    {
      bzero(v15, __size);
      *v15 = 256;
      if (!storeBlock(a1, v15, __size, v25, v74, v75, v76, v77))
      {
        v84 = a6;
        v85 = v26;
        LODWORD(v94) = __size;
        v67 = 0;
        v29 = 1;
        LODWORD(a6) = 0;
        goto LABEL_61;
      }

      v72 = "storing page";
      v73 = 301;
      goto LABEL_66;
    }

    v84 = a6;
    v85 = v26;
    v94 = __size;
    v87 = v25;
    v88 = v27;
    v28 = 0;
    v29 = 0;
    v30 = v15 + 3;
    v31 = 1;
    a6 = a2;
    while (1)
    {
      v91 = v31;
      bzero(v15, v94);
      v36 = v28 + v16;
      v37 = v28 + v16 <= a6 ? v16 : a6 - v28;
      v95 = 0;
      if (v37)
      {
        v38 = 0;
        v39 = 6;
        do
        {
          a3(a4, v28 + v38, &v95);
          v40 = v95.i32[1];
          *&v30[2 * v38] = vrev32_s8(v95);
          v39 += 4;
          ++v38;
        }

        while (v38 < v37);
        v41 = v40;
        a1 = v89;
      }

      else
      {
        v41 = 0;
        v39 = 6;
      }

      v25 = v87;
      v88[v29] = v41;
      *&v90[v39] = 0;
      v15 = v90;
      *v90 = 256;
      v90[1] = bswap32(v37) >> 16;
      if (storeBlock(a1, v90, v94, &v87[v29], v32, v33, v34, v35))
      {
        break;
      }

      ++v29;
      a6 = a2;
      v31 = v91 + 1;
      v28 = v36;
      if (v36 >= a2)
      {
        v25 = v87;
        v24 = v88;
        if (v29)
        {
          v46 = 0;
          v47 = v87;
          while (1)
          {
            v48 = v46 + 1;
            if (v46 + 1 < v29)
            {
              break;
            }

            v49 = 0;
            if (v46)
            {
              goto LABEL_36;
            }

LABEL_37:
            v50 = *v47++;
            v51 = *(a1 + 176) + *(*(a1 + 120) + 16 * v50);
            *(v51 + 4) = bswap32(v49);
            *(v51 + 8) = bswap32(v46);
            v46 = v48;
            if (v91 == v48)
            {
              goto LABEL_38;
            }
          }

          v49 = v47[1];
          if (!v46)
          {
            goto LABEL_37;
          }

LABEL_36:
          LODWORD(v46) = *(v47 - 1);
          goto LABEL_37;
        }

LABEL_38:
        if (v29 < 2)
        {
          v67 = 0;
        }

        else
        {
          v52 = 0;
          v53 = 4 * v16 + 4;
          v54 = v29;
          while (2)
          {
            v55 = 0;
            v83 = v29;
            v56 = &v87[v52];
            v92 = v52;
            v57 = &v88[v52];
            do
            {
              bzero(v90, v94);
              v62 = v55 + v86;
              v63 = v54 - v55;
              if (v55 + v86 <= v54)
              {
                v63 = v86;
              }

              if (v63)
              {
                v64 = v88[v55 + v92];
                *(v90 + 3) = bswap32(v87[v55 + v92]);
                if (v63 != 1)
                {
                  v65 = v90 + 10;
                  for (i = 1; i < v63; ++i)
                  {
                    *(v65 - 1) = bswap32(v64);
                    v64 = *&v57[4 * i];
                    *v65 = bswap32(v56[i]);
                    v65 += 2;
                  }
                }
              }

              else
              {
                v64 = 0;
              }

              v88[v29] = v64;
              *v90 = 0;
              v90[1] = bswap32(v63 - 1) >> 16;
              if (storeBlock(v89, v90, v94, &v87[v29], v58, v59, v60, v61))
              {
                v72 = "storing page";
                v73 = 388;
                goto LABEL_66;
              }

              ++v29;
              v56 = (v56 + v53);
              v57 += v53;
              v55 += v86;
            }

            while (v62 < v54);
            v67 = v83;
            v54 = v29 - v83;
            v52 = v83;
            LODWORD(a6) = a2;
            if (v29 - v83 >= 2)
            {
              continue;
            }

            break;
          }
        }

LABEL_61:
        if (v29 == v85)
        {
          v95 = 0x100000065657274;
          v96 = bswap32(v25[v67]);
          v97 = bswap32(v94);
          v98 = bswap32(a6);
          v99 = 0;
          if (storeBlock(v89, &v95, 0x15uLL, v84, v42, v43, v44, v45))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 413, 52, 0, "storing base block", v78, v79, v82);
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_69;
        }

        v82 = v29;
        v72 = "mismatch in number of tree pages: i_page=%zu n_pages=%zu";
        v73 = 399;
LABEL_66:
        v71 = 0;
LABEL_67:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", v73, 52, v71, v72, v44, v45, v82);
LABEL_68:
        v8 = 0xFFFFFFFFLL;
LABEL_69:
        free(v90);
        free(v25);
        free(v24);
        goto LABEL_70;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 337, 52, 0, "storing page", v44, v45, v82);
    v8 = 0xFFFFFFFFLL;
    v24 = v88;
    goto LABEL_69;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createTree", 259, 52, 0, "too many entries in tree", a7, a8, v82);
  v8 = 0xFFFFFFFFLL;
LABEL_70:
  v80 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t getPathsPK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(result + 48) + 48 * a2;
  *a3 = *(v3 + 32);
  a3[1] = *(v3 + 24);
  return result;
}

uint64_t getSize64PK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = (*(result + 80) + 8 * a2);
  *a3 = *v3;
  a3[1] = v3[1];
  return result;
}

uint64_t createBomInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = bswap32(*(a1 + 56) + 1);
  v13[0] = 0x1000000;
  v13[1] = v8;
  v13[2] = 0;
  result = storeBlock(a1, v13, 0xCuLL, (a1 + 152), a5, a6, a7, a8);
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createBomInfo", 458, 52, 0, "storing bom_info block", v10, v11, v13[0]);
    result = 0xFFFFFFFFLL;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t createVIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x29EDCA608];
  if (createTree(a1, 0, 0, 0, 0x80uLL, (a1 + 148), a7, a8))
  {
    v13 = "vindex_tree";
    v14 = 466;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/GenerateBOM.c", "createVIndex", v14, 52, 0, v13, v11, v12, v18[0]);
    result = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v15 = bswap32(*(a1 + 148));
  v18[0] = 0x1000000;
  v18[1] = v15;
  v18[2] = 0;
  v19 = 0;
  result = storeBlock(a1, v18, 0xDuLL, (a1 + 156), v9, v10, v11, v12);
  if (result)
  {
    v13 = "storing vindex block";
    v14 = 477;
    goto LABEL_5;
  }

LABEL_6:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cmpBOMPath(uint64_t a1, void *__s1, size_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = *(*(a1 + 48) + 48 * a4 + 8);
  if (v5 < a3)
  {
    a3 = *(*(a1 + 48) + 48 * a4 + 8);
  }

  LODWORD(result) = memcmp(__s1, (*(a1 + 176) + *(*(a1 + 48) + 48 * a4)), a3);
  if (v5 <= v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 >= v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
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

uint64_t getTablePK(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = (result + 8 * a2);
  *a3 = *v3;
  a3[1] = v3[1];
  return result;
}

uint64_t ParallelArchiveExtractClones()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v42 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(v0, v1, v2, v3, v4, v5, v6, v7, v29);
  bzero(&v37, 0xED0uLL);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  v37 = *v0;
  if (realpath_DARWIN_EXTSN(*(v0 + 16), v38))
  {
    v13 = *(v0 + 48);
    if (v13)
    {
      v39 = ParallelArchiveDBSetCreate(v13, *(v0 + 56), 0, v8, v9, v10, v11, v12);
      if (v39)
      {
        v40 = 0;
        v19 = *v0;
        if (*v0 >= 1)
        {
          memset(&v36, 0, 512);
          if (!statfs(v38, &v36))
          {
            v20 = MEMORY[0x29EDCA610];
            fprintf(*MEMORY[0x29EDCA610], "%12llu initial free blocks\n", v36.f_bfree);
            fprintf(*v20, "%12llu initial available blocks\n", v36.f_bavail);
            fprintf(*v20, "%12llu initial blocks\n", v36.f_blocks);
          }

          v19 = *v0;
        }

        *&v31[0] = __PAIR64__(*(v0 + 4), v19);
        v21 = *(v0 + 40);
        *(v31 + 8) = *(v0 + 24);
        v35 = &v37;
        *(&v31[1] + 1) = v21;
        *&v32 = extractClonesBegin;
        *&v34 = extractClonesEnd;
        *(&v32 + 1) = extractClonesBlob;
        *&v33 = extractClonesData;
        if ((ParallelArchiveRead(v31, v14, v15, v16, v17, v18, v11, v12) & 0x80000000) == 0)
        {
          v22 = 0;
          goto LABEL_16;
        }

        v24 = "reading archive";
        v25 = 189;
      }

      else
      {
        v24 = "connecting to database";
        v25 = 162;
      }
    }

    else
    {
      v24 = "No database provided";
      v25 = 160;
    }

    v23 = 0;
  }

  else
  {
    v23 = *__error();
    v24 = *(v0 + 16);
    v25 = 159;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "ParallelArchiveExtractClones", v25, 71, v23, v24, v11, v12, v30);
  v22 = 1;
LABEL_16:
  ParallelArchiveDBSetDestroy(v39);
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if ((v22 & 1) == 0 && *v0 >= 1)
    {
      v27 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "%12llu entries extracted\n", v41);
      memset(&v36, 0, 512);
      if (!statfs(v38, &v36))
      {
        fprintf(*v27, "%12llu final free blocks\n", v36.f_bfree);
        fprintf(*v27, "%12llu final available blocks\n", v36.f_bavail);
        fprintf(*v27, "%12llu final blocks\n", v36.f_blocks);
      }
    }

    result = (v22 << 31 >> 31);
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

size_t extractClonesBegin(uint64_t a1, int *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  result = memcpy((a1 + 1048), a2, 0x890uLL);
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0u;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3352) = 0u;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3416) = 0u;
  *(a1 + 3432) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0u;
  *(a1 + 3496) = 0;
  *(a1 + 3504) = 0;
  *(a1 + 3732) = 0u;
  *(a1 + 3748) = 0u;
  *(a1 + 3700) = 0u;
  *(a1 + 3716) = 0u;
  *(a1 + 3668) = 0u;
  *(a1 + 3684) = 0u;
  *(a1 + 3636) = 0u;
  *(a1 + 3652) = 0u;
  *(a1 + 3604) = 0u;
  *(a1 + 3620) = 0u;
  *(a1 + 3572) = 0u;
  *(a1 + 3588) = 0u;
  *(a1 + 3540) = 0u;
  *(a1 + 3556) = 0u;
  *(a1 + 3508) = 0u;
  *(a1 + 3524) = 0u;
  *(a1 + 3768) = 0;
  *(a1 + 3776) = 0;
  if (*(a1 + 1052) == 68)
  {
    bzero(__s, 0x800uLL);
    if (concatPath(__s, 0x800uLL, (a1 + 4), (a1 + 1192)))
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesBegin", 49, 71, 0, "concatPath", v5, v6, v12);
      goto LABEL_11;
    }

    v7 = strlen(__s);
    makePath(__s, v7);
    result = mkdir(__s, 0x1EDu);
    v8 = *a2;
    if ((*a2 & 2) != 0)
    {
      v9 = a2[2];
      if ((v8 & 4) == 0)
      {
        v10 = -1;
LABEL_10:
        result = chown(__s, v9, v10);
        goto LABEL_11;
      }
    }

    else
    {
      if ((v8 & 4) == 0)
      {
        goto LABEL_11;
      }

      v9 = -1;
    }

    v10 = a2[3];
    goto LABEL_10;
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

size_t extractClonesEnd(size_t result)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(result + 1052) != 77)
  {
    v1 = result;
    bzero(__s, 0x800uLL);
    if (concatPath(__s, 0x800uLL, (v1 + 4), (v1 + 1192)))
    {
      v4 = "concatPath";
      v5 = 67;
LABEL_4:
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", v5, 71, 0, v4, v2, v3, v15);
      goto LABEL_5;
    }

    v7 = *(v1 + 1052);
    if (v7 != 68)
    {
      if (v7 == 76)
      {
        v11 = strlen(__s);
        makePath(__s, v11);
        unlink(__s);
        if (symlink((v1 + 2216), __s))
        {
          v12 = *__error();
          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractClones.c", "extractClonesEnd", 82, 71, v12, "%s", v13, v14, __s);
          goto LABEL_5;
        }
      }

      else
      {
        if (v7 != 70)
        {
          LOBYTE(v15) = *(v1 + 1052);
          v4 = "Unsupported file type [%c] %s";
          v5 = 85;
          goto LABEL_4;
        }

        v8 = strlen(__s);
        makePath(__s, v8);
        unlink(__s);
        if ((ParallelArchiveDBCloneWithSet(*(v1 + 1032), (v1 + 3508), __s, v1 + 3240, *(v1 + 3496), 0, v9, v10) & 0x80000000) != 0)
        {
          v15 = __s;
          v4 = "cloning file: %s";
          v5 = 77;
          goto LABEL_4;
        }
      }
    }

    result = yaa_setEntryAttributes(__s, (v1 + 1048), 0, *(v1 + 1040));
    if ((result & 0x80000000) != 0)
    {
      v15 = __s;
      v4 = "setting attributes: %s";
      v5 = 92;
      goto LABEL_4;
    }

    ++*(v1 + 3784);
    if (*v1 >= 2)
    {
      result = fprintf(*MEMORY[0x29EDCA610], "%s\n", __s);
    }
  }

LABEL_5:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *extractClonesBlob(_DWORD *result, _DWORD *a2)
{
  if (result[263] != 77)
  {
    result[944] = 0;
    result[876] = 0;
    v2 = *a2 & 0xDFDFDF;
    if (v2 == 4932697)
    {
      v3 = result + 876;
      v4 = 874;
    }

    else
    {
      if (v2 != 4277337)
      {
        return result;
      }

      v3 = result + 944;
      v4 = 942;
    }

    *v3 = 1;
    *&result[v4] = 0;
  }

  return result;
}

char *extractClonesData(char *result, void *__src, unint64_t a3)
{
  if (*(result + 263) != 77)
  {
    v3 = a3;
    v5 = result;
    if (*(result + 876))
    {
      v6 = *(result + 437);
      if (256 - v6 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = 256 - v6;
      }

      result = memcpy(&result[v6 + 3240], __src, v7);
      v5[437] += v7;
    }

    if (*(v5 + 944))
    {
      v8 = v5[471];
      if (256 - v8 < v3)
      {
        v3 = 256 - v8;
      }

      result = memcpy(v5 + v8 + 3508, __src, v3);
      v5[471] += v3;
    }
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
                  v22 = asc_298069778[(((v19 - 98) >> 1) | ((v19 - 98) << 7))];
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

uint64_t ParallelArchiveConvert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  bzero(v36, 0xC10uLL);
  v35[0] = a1;
  v35[1] = a2;
  v10 = MemBufferCreate(0x100000uLL);
  v37 = v10;
  v11 = MemBufferCreate(0x100000uLL);
  v43 = v11;
  if (!v10 || !v11)
  {
    v20 = "allocating state buffers";
    v21 = 769;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "ParallelArchiveConvert", v21, 62, 0, v20, v17, v18, v28);
    v19 = 1;
    goto LABEL_10;
  }

  *&v29[0] = 0;
  DWORD1(v29[0]) = *(a2 + 4);
  *(v29 + 8) = *(a2 + 24);
  *(&v29[1] + 1) = *(a2 + 40);
  *&v30 = convertBegin;
  *&v32 = convertEnd;
  *(&v30 + 1) = convertBlob;
  *&v31 = convertPayload;
  *(&v31 + 1) = convertPadding;
  *(&v32 + 1) = convertPadding;
  v33 = v35;
  if ((ParallelArchiveRead(v29, v12, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    v20 = "Archive read";
    v21 = 787;
    goto LABEL_9;
  }

  if (*a2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu bytes read\n", v39);
  }

  v19 = 0;
LABEL_10:
  MemBufferDestroy(v43);
  MemBufferDestroy(v37);
  if (v42)
  {
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v34 = 0;
    ParallelArchiveDBRequestCloseAndGetKey(v42);
  }

  if (v41)
  {
    ParallelArchiveDBRequestClose(v41);
  }

  ParallelArchiveDBSetDestroy(v36[0]);
  ParallelArchiveDBSessionDestroy(v36[1]);
  free(v40);
  v22 = v38;
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 << 31 >> 31;
  if (result >= 0)
  {
    result = v25;
  }

  else
  {
    result = result;
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t convertBegin(uint64_t result, _DWORD *a2, const void *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v70 = *MEMORY[0x29EDCA608];
  if (*(result + 56))
  {
    goto LABEL_2;
  }

  v12 = result;
  v13 = *(result + 64);
  *(result + 2296) = 0;
  *(result + 64) = v13 + a6;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  MemBufferClear(*(result + 2856));
  bzero((v12 + 96), 0x890uLL);
  if ((reserveExtraFields(v12, a4) & 0x80000000) != 0)
  {
    v25 = "allocating extraFields";
    v26 = 424;
  }

  else
  {
    memcpy((v12 + 96), a2, 0x890uLL);
    result = memcpy(*(v12 + 2304), a3, 1032 * a4);
    *(v12 + 2296) = a4;
    v36 = a2[1] == 77;
    *(v12 + 72) = v36;
    if (v36)
    {
      goto LABEL_2;
    }

    if (*(v12 + 60))
    {
LABEL_6:
      v23 = *(v12 + 8);
      v24 = *(v23 + 48);
      if (v24)
      {
        result = v24(*(v23 + 56), a2 + 36, a2[1]);
        *(v12 + 76) = result < 1;
        if (result >= 1)
        {
          goto LABEL_29;
        }
      }

      else if (!*(v12 + 76))
      {
LABEL_29:
        v37 = *(v12 + 96);
        if (!*(v12 + 2296))
        {
          v45 = 0;
          LOWORD(v41) = 0;
          v40 = 0;
LABEL_42:
          v46 = 0;
          *(v12 + 2296) = v40;
          v47 = *(v12 + 48);
          *(v12 + 96) = v47 & v37;
          v48 = v47 & 0x2000;
          if ((v37 & 0x2200) != 0x200)
          {
            v48 = 512;
          }

          if ((v37 & 0x4200) == 0x200)
          {
            v49 = v47 & 0x4000;
          }

          else
          {
            v49 = 512;
          }

          if ((v37 & 0x1200) == 0x200)
          {
            v50 = v47 & 0x1000;
          }

          else
          {
            v50 = 512;
          }

          v51 = (v37 >> 7) & 1;
          if ((v37 & 0x200) == 0)
          {
            v51 = 1;
          }

          v36 = v51 == 0;
          v52 = v47 & 0x80;
          if (!v36)
          {
            v52 = 0;
          }

          if ((v45 & 8) == 0 && (v37 & 0x200) != 0)
          {
            v46 = *(v12 + 52) & 8;
          }

          v53 = 0;
          v54 = *(v12 + 84) & 0xFFFF8D7F | v48;
          v55 = v49 | v50;
          v56 = *(v12 + 88) & 0xFFE7 | v46;
          if ((v45 & 0x10) == 0 && (v37 & 0x200) != 0)
          {
            v53 = *(v12 + 52) & 0x10;
          }

          v57 = v54 | v55;
          v58 = v53 | v56;
          if ((v45 & 0x100) != 0 || (v37 & 0x200) == 0)
          {
            v61 = (v45 & 0x10) == 0;
            v60 = (v37 >> 9) & 1;
            LOWORD(v58) = v58 & 0xFEFF;
            if ((v37 & 0x80) == 0)
            {
              v61 = 1;
            }

            v59 = v47 & 0x200;
            if (v61 | ((v37 & 0x200) >> 9))
            {
              v59 = 0;
            }
          }

          else
          {
            v59 = 0;
            v58 = v58 & 0xFFFFFEFF | ((HIBYTE(*(v12 + 52)) & 1) << 8);
            LOBYTE(v60) = 1;
          }

          *(v12 + 88) = v58;
          *(v12 + 84) = v59 | v57 & 0xFFFFFD7F | v52;
          if (**(v12 + 8) >= 3)
          {
            bzero(v69, 0x400uLL);
            bzero(v68, 0x400uLL);
            yaa_serializeFields(v69, 0x400uLL, v37, v41 | v45);
            yaa_serializeFields(v68, 0x400uLL, *(v12 + 84), *(v12 + 88));
            result = fprintf(*MEMORY[0x29EDCA610], "%s: generating %s -> %s\n", (v12 + 240), v69, v68);
          }

          if ((v45 & 2) == 0 && (*(v12 + 52) & 2) != 0 && (result = insertUINTField(v12, v13), (result & 0x80000000) != 0))
          {
            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", 544, 62, 0, "inserting IDX", v62, v63, v67);
            if (!*(v12 + 56))
            {
              *(v12 + 56) = 1;
              v65 = *(v12 + 8);
              v66 = *(v65 + 32);
              if (v66)
              {
                result = v66(*(v65 + 40));
              }
            }
          }

          else
          {
            if ((*(v12 + 40) & 0x80) != 0)
            {
              v64 = v60;
            }

            else
            {
              v64 = 1;
            }

            if ((v64 & 1) == 0)
            {
              *(v12 + 160) = *(v12 + 136);
            }
          }

          goto LABEL_2;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        LOWORD(v42) = 0;
        while (1)
        {
          v43 = *(v12 + 2304);
          *v69 = 0;
          result = yaa_parseFields((v43 + v38), 0, v69);
          v44 = *v69;
          if (*v69)
          {
            if ((*(v12 + 52) & *v69) != 0)
            {
              goto LABEL_35;
            }
          }

          else if (*(*(v12 + 8) + 20))
          {
LABEL_35:
            if (v39 != v40)
            {
              result = memcpy((*(v12 + 2304) + 1032 * v40), (*(v12 + 2304) + v38), 0x408uLL);
            }

            ++v40;
          }

          v42 = v44 | v41 | v42;
          v41 = v42 & 0xFFFF0000;
          ++v39;
          v38 += 1032;
          if (v39 >= *(v12 + 2296))
          {
            v45 = v42;
            goto LABEL_42;
          }
        }
      }

LABEL_2:
      v6 = *MEMORY[0x29EDCA608];
      return result;
    }

    v31 = 99103;
    if (a6 >= 8)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = v33;
        v33 = *(a5 + v32++) & 7 | (8 * v33);
      }

      while (v32 != 8);
      v35 = ((8 * v34) >> 6) & 0x3FFFF;
      v36 = v35 == 29121 || v35 == 29127;
      if (v36)
      {
        v31 = 99191;
      }

      else
      {
        v31 = 99103;
      }
    }

    *(v12 + 40) = v31;
    *(v12 + 44) = 0;
    if ((resolveFields(v12, v16, v17, v18, v19, v20, v21, v22) & 0x80000000) != 0)
    {
      v25 = "resolving output fields";
      v26 = 472;
    }

    else
    {
      result = writeMetadata();
      if ((result & 0x80000000) != 0)
      {
        v25 = "writing metadata";
        v26 = 475;
      }

      else
      {
        if (*(v12 + 60))
        {
          goto LABEL_6;
        }

        v25 = "metadata entry was not written";
        v26 = 482;
      }
    }
  }

  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBegin", v26, 62, 0, v25, v14, v15, v67);
  if (*(v12 + 56))
  {
    goto LABEL_2;
  }

  *(v12 + 56) = 1;
  v27 = *(v12 + 8);
  v28 = *(v27 + 32);
  if (!v28)
  {
    goto LABEL_2;
  }

  v29 = *(v27 + 40);
  v30 = *MEMORY[0x29EDCA608];

  return v28(v29);
}

void convertEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56) || *(a1 + 76))
  {
    return;
  }

  if (*(a1 + 72))
  {
    if ((reserveBlobPayload(a1, 1) & 0x80000000) != 0)
    {
      v17 = "allocating blob buffer";
      v18 = 561;
      goto LABEL_22;
    }

    DataPtr = MemBufferGetDataPtr(*(a1 + 2856));
    DataPtr[MemBufferGetDataSize(*(a1 + 2856))] = 0;
    if ((yaa_parseFields(DataPtr, (a1 + 40), (a1 + 44)) & 0x80000000) != 0)
    {
      v17 = "parsing YAF blob";
      v18 = 565;
      goto LABEL_22;
    }

    if ((resolveFields(a1, v12, v13, v14, v15, v16, v9, v10) & 0x80000000) != 0)
    {
      v17 = "resolving output fields";
      v18 = 568;
      goto LABEL_22;
    }

    if ((writeMetadata() & 0x80000000) != 0)
    {
      v17 = "writing metadata";
      v18 = 571;
      goto LABEL_22;
    }

    return;
  }

  v19 = *(a1 + 84);
  if ((v19 & 0x200) != 0 && *(a1 + 16))
  {
    v19 &= ~0x200u;
    *(a1 + 84) = v19;
    *(a1 + 96) |= 0x200u;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  if (*(a1 + 80))
  {
    v21 = "writing entry header twice";
    v22 = 368;
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeHeader", v22, 62, 0, v21, a7, a8, v52);
    v17 = "writing entry header";
    v18 = 587;
    goto LABEL_22;
  }

  if (v19 || *(a1 + 88))
  {
    v21 = "writing header before all required fields are updated";
    v22 = 369;
    goto LABEL_20;
  }

  if ((ParallelArchiveWriteEntryHeader(*a1, a1 + 96, *(a1 + 2304), *(a1 + 2296), a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v21 = "writing entry header";
    v22 = 373;
    goto LABEL_20;
  }

  *(a1 + 80) = 1;
  if (v20)
  {
    if (*(a1 + 2584))
    {
      v26 = (a1 + 2328);
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 160);
    v28 = ParallelArchiveDBReadRequestOpenWithSet(*(a1 + 16), v26, a1 + 2592, *(a1 + 2848), 0, v27, 0, a8);
    *(a1 + 2312) = v28;
    if (!v28)
    {
      v17 = "opening read request from database";
      v18 = 597;
      goto LABEL_22;
    }

    v29 = MemBufferTransmit(*(a1 + 32), v27, readFromDBProc, a1, archiveWriterProc, a1, v9, v10);
    if (v29 < 0 || v29 != v27)
    {
      v17 = "readining from database";
      v18 = 600;
      goto LABEL_22;
    }

    ParallelArchiveDBRequestClose(*(a1 + 2312));
    *(a1 + 2312) = 0;
  }

  if (MemBufferGetDataSize(*(a1 + 2856)))
  {
    v33 = MemBufferGetDataPtr(*(a1 + 2856));
    DataSize = MemBufferGetDataSize(*(a1 + 2856));
    if ((ParallelArchiveWriteEntryData(*a1, v33, DataSize, v35, v36, v37, v38, v39) & 0x80000000) != 0)
    {
      v17 = "writing entry data BLOBS";
      v18 = 612;
      goto LABEL_22;
    }
  }

  if (!*(a1 + 2296))
  {
LABEL_55:
    OECCStreamDestroy(*(a1 + 3096));
    *(a1 + 3096) = 0;
    return;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(a1 + 92);
    if ((v42 & 8) != 0 && (*(*(a1 + 2304) + v40) & 0xDFDFDF) == 0x414459)
    {
      v43 = *(a1 + 2584);
      if (v43)
      {
        if ((ParallelArchiveWriteEntryData(*a1, a1 + 2328, v43, v30, v31, v32, v9, v10) & 0x80000000) != 0)
        {
          v17 = "writing entry data YDA";
          v18 = 620;
          goto LABEL_22;
        }

        goto LABEL_54;
      }
    }

    if ((v42 & 0x10) == 0)
    {
      break;
    }

    if ((*(*(a1 + 2304) + v40) & 0xDFDFDF) != 0x4B4459)
    {
      break;
    }

    v44 = *(a1 + 2848);
    if (!v44)
    {
      break;
    }

    if ((ParallelArchiveWriteEntryData(*a1, a1 + 2592, v44, v30, v31, v32, v9, v10) & 0x80000000) != 0)
    {
      v17 = "writing entry data YDK";
      v18 = 625;
      goto LABEL_22;
    }

LABEL_54:
    ++v41;
    v40 += 1032;
    if (v41 >= *(a1 + 2296))
    {
      goto LABEL_55;
    }
  }

  if ((*(a1 + 92) & 0x100) == 0)
  {
    goto LABEL_54;
  }

  if ((*(*(a1 + 2304) + v40) & 0xDFDFDF) != 0x434559)
  {
    goto LABEL_54;
  }

  v45 = OECCStreamGetDataSize(*(a1 + 3096));
  v46 = OECCStreamGetDataPtr(*(a1 + 3096));
  if ((ParallelArchiveWriteEntryData(*a1, v46, v45, v47, v48, v49, v50, v51) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  v17 = "writing entry data YEC";
  v18 = 632;
LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertEnd", v18, 62, 0, v17, v9, v10, v52);
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 1;
    v23 = *(a1 + 8);
    v24 = *(v23 + 32);
    if (v24)
    {
      v25 = *(v23 + 40);

      v24(v25);
    }
  }
}

uint64_t convertBlob(uint64_t result, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 56))
  {
    return result;
  }

  v8 = result;
  if (*(result + 76))
  {
    return result;
  }

  *(result + 2868) = 0;
  v10 = *a2;
  *(result + 2866) = *(a2 + 2);
  *(result + 2864) = v10;
  *(result + 2867) = 0;
  *(result + 2872) = a3;
  v11 = *(result + 2864);
  v12 = v11 & 0xDFDFDF;
  if (*(result + 72))
  {
    if (v12 != 4604249)
    {
      return result;
    }

    result = reserveBlobPayload(result, a3 + 1);
    if ((result & 0x80000000) == 0)
    {
      *(v8 + 2868) = 1;
      return result;
    }

    v17 = "allocating blob buffer";
    v18 = 661;
    goto LABEL_48;
  }

  if (v12 == 4997953)
  {
    v13 = 11;
LABEL_12:
    v14 = *(result + 48) >> v13;
    *(result + 2868) = v14 & 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v12 == 5521752)
  {
    v13 = 10;
    goto LABEL_12;
  }

  v15 = *(result + 2296);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = *(result + 2304);
  while (((*v16 ^ v11) & 0xDFDFDF) != 0)
  {
    v16 += 258;
    if (!--v15)
    {
      goto LABEL_23;
    }
  }

  *(result + 2868) = 1;
LABEL_21:
  result = reserveBlobPayload(result, a3);
  if ((result & 0x80000000) != 0)
  {
    v17 = "allocating blob buffer";
    v18 = 683;
LABEL_48:
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertBlob", v18, 62, 0, v17, a7, a8, v29);
    if (!*(v8 + 56))
    {
      *(v8 + 56) = 1;
      v26 = *(v8 + 8);
      v27 = *(v26 + 32);
      if (v27)
      {
        v28 = *(v26 + 40);

        return v27(v28);
      }
    }

    return result;
  }

  v11 = *(v8 + 2864);
LABEL_23:
  v19 = v11 & 0xDFDFDF;
  switch(v19)
  {
    case 5521732:
      v20 = *(v8 + 84);
      if ((v20 & 0x80) != 0)
      {
        *(v8 + 96) |= 0x80u;
        *(v8 + 136) = a3;
      }

      LOWORD(v21) = v20 & 0xFF7F;
      *(v8 + 84) = v20 & 0xFFFFFF7F;
      if ((v20 & 0x2000) != 0)
      {
        result = CC_SHA1_Deprecated_Init((v8 + 2880));
        v21 = *(v8 + 84);
        if ((v21 & 0x4000) == 0)
        {
LABEL_32:
          if ((v21 & 0x1000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else if ((v20 & 0x4000) == 0)
      {
        goto LABEL_32;
      }

      result = CC_SHA256_Init((v8 + 2976));
      if ((*(v8 + 84) & 0x1000) == 0)
      {
LABEL_34:
        v22 = *(v8 + 88);
        if ((v22 & 0x100) != 0)
        {
          result = OECCStreamCreate(1, 0x4000u, a3);
          *(v8 + 3096) = result;
          if (!result)
          {
            v24 = "creating ECC context to get YEC";
            v25 = 228;
LABEL_47:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATBegin", v25, 62, 0, v24, a7, a8, v29);
            v17 = "processing DAT begin";
            v18 = 693;
            goto LABEL_48;
          }

          v22 = *(v8 + 88);
        }

        if ((v22 & 0x18) == 0)
        {
          return result;
        }

        v23 = *(v8 + 24);
        if (v23)
        {
          result = ParallelArchiveDBRequestOpenForWriting(v23, *(v8 + 160), 0);
          *(v8 + 2320) = result;
          if (result)
          {
            return result;
          }

          v24 = "creating database write request";
          v25 = 236;
        }

        else
        {
          v24 = "can't connect to database to get YDA YDK";
          v25 = 234;
        }

        goto LABEL_47;
      }

LABEL_33:
      result = CC_CKSUM_Init(v8 + 3080);
      goto LABEL_34;
    case 4932697:
      *(v8 + 2848) = 0;
      break;
    case 4277337:
      *(v8 + 2584) = 0;
      break;
  }

  return result;
}

uint64_t convertPayload(uint64_t result, void *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 56))
  {
    return result;
  }

  v9 = result;
  *(result + 64) += __n;
  if (*(result + 76))
  {
    return result;
  }

  *(result + 2872) -= __n;
  if (*(result + 2868) && (result = MemBufferFillFromBuffer(*(result + 2856), __n, __src), result < 0))
  {
    v15 = "storing blob data";
    v16 = 710;
  }

  else
  {
    if (*(v9 + 72))
    {
      return result;
    }

    v11 = *(v9 + 2864) & 0xDFDFDF;
    switch(v11)
    {
      case 4277337:
        v21 = *(v9 + 2584);
        if (__n + v21 - 256 > 0xFFFFFFFFFFFFFEFELL)
        {
          result = memcpy((v9 + 2328 + v21), __src, __n);
          v22 = *(v9 + 2584) + __n;
          *(v9 + 2584) = v22;
          *(v9 + 2328 + v22) = 0;
          goto LABEL_30;
        }

        v15 = "YDA payload is too large";
        v16 = 727;
        break;
      case 4932697:
        v20 = *(v9 + 2848);
        if (v20 + __n < 0x101)
        {
          result = memcpy((v9 + v20 + 2592), __src, __n);
          *(v9 + 2848) += __n;
          goto LABEL_30;
        }

        v15 = "YDK payload is too large";
        v16 = 734;
        break;
      case 5521732:
        result = *(v9 + 2320);
        if (result)
        {
          result = ParallelArchiveDBRequestWrite(result);
          if (result < 0)
          {
            v13 = "writing data to database request";
            v14 = 248;
            goto LABEL_38;
          }
        }

        v12 = *(v9 + 84);
        if ((v12 & 0x2000) != 0)
        {
          result = CC_SHA1_Deprecated_Update((v9 + 2880), __src, __n);
          v12 = *(v9 + 84);
          if ((v12 & 0x4000) == 0)
          {
LABEL_13:
            if ((v12 & 0x1000) == 0)
            {
LABEL_15:
              if ((*(v9 + 88) & 0x100) != 0)
              {
                result = OECCStreamWrite(*(v9 + 3096), __src, __n, a4, a5, a6, a7, a8);
                if (result < 0)
                {
                  v13 = "writing data to ECC stream";
                  v14 = 258;
LABEL_38:
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATPayload", v14, 62, 0, v13, a7, a8, v23);
                  v15 = "processing DAT payload";
                  v16 = 723;
                  break;
                }
              }

LABEL_30:
              if ((*(v9 + 2864) & 0xDFDFDF) != 0x544144)
              {
                return result;
              }

              if (*(v9 + 2872))
              {
                return result;
              }

              result = processDATEnd(v9);
              if ((result & 0x80000000) == 0)
              {
                return result;
              }

              v15 = "processing DAT end";
              v16 = 742;
              break;
            }

LABEL_14:
            result = CC_CKSUM_Update(v9 + 3080, __src, __n);
            goto LABEL_15;
          }
        }

        else if ((v12 & 0x4000) == 0)
        {
          goto LABEL_13;
        }

        result = CC_SHA256_Update((v9 + 2976), __src, __n);
        if ((*(v9 + 84) & 0x1000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      default:
        goto LABEL_30;
    }
  }

  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "convertPayload", v16, 62, 0, v15, a7, a8, v23);
  if (!*(v9 + 56))
  {
    *(v9 + 56) = 1;
    v17 = *(v9 + 8);
    v18 = *(v17 + 32);
    if (v18)
    {
      v19 = *(v17 + 40);

      return v18(v19);
    }
  }

  return result;
}

uint64_t convertPadding(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 56))
  {
    *(result + 64) += a3;
  }

  return result;
}

uint64_t reserveExtraFields(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 2288) > a2)
  {
    return 0;
  }

  *(a1 + 2288) = a2 + 8;
  v5 = reallocf(*(a1 + 2304), 1032 * (a2 + 8));
  *(a1 + 2304) = v5;
  if (v5)
  {
    return 0;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveExtraFields", 98, 62, *v6, "malloc", v7, v8, v2);
  return 0xFFFFFFFFLL;
}

uint64_t resolveFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8);
  v10 = *(v9 + 12);
  v11 = *(v9 + 16);
  v12 = *(a1 + 40);
  v13 = *(a1 + 44);
  v14 = v12 & v10;
  v15 = v11 | (*(v9 + 18) << 16);
  *(a1 + 48) = v12 & v10;
  *(a1 + 52) = v13 & v15;
  v16 = v13 & v15 & 0xFFFD | v11 & 2;
  *(a1 + 52) = v16;
  v17 = (v12 >> 9) & 1;
  v18 = (v12 & 0x80) == 0;
  if ((v13 & 0x10) == 0)
  {
    v18 = 1;
  }

  if (!v18)
  {
    v17 = 1;
  }

  v19 = 0;
  if ((v10 & 0x1000) != 0 && (v12 & 0x1000) == 0 && v17)
  {
    v14 |= 0x1000u;
    *(a1 + 48) = v14;
    v19 = 1;
  }

  if ((v10 & 0x2000) != 0 && (v12 & 0x2000) == 0 && v17)
  {
    v14 |= 0x2000u;
    *(a1 + 48) = v14;
    v19 = 1;
  }

  if ((v10 & 0x4000) != 0 && (v12 & 0x4000) == 0 && v17)
  {
    v14 |= 0x4000u;
    *(a1 + 48) = v14;
    v19 = 1;
  }

  if ((v10 & 0x80) != 0 && (v12 & 0x80) == 0 && v17)
  {
    v14 |= 0x80u;
    *(a1 + 48) = v14;
    v19 = 1;
  }

  if ((v11 & 0x10) != 0 && v17 && (v13 & 0x10) == 0)
  {
    v16 |= 0x10u;
    *(a1 + 52) = v16;
    v19 = 1;
  }

  if ((v11 & 0x100) != 0 && v17 && (v13 & 0x100) == 0)
  {
    *(a1 + 52) = v16 | 0x100;
    v19 = 1;
  }

  if ((v10 & 0x200) != 0 && (v12 & 0x200) == 0 && v17)
  {
    v14 |= 0x200u;
    *(a1 + 48) = v14;
  }

  if (v19 && (v14 & 0x200) != 0)
  {
    v22 = "Can't write DAT-based field and DAT itself at the same time";
    v23 = 142;
LABEL_42:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "resolveFields", v23, 62, 0, v22, a7, a8, v32);
    result = 0xFFFFFFFFLL;
    goto LABEL_62;
  }

  if ((v12 & 0x200) == 0 && (v14 & 0x200) != 0)
  {
    if (v18 || (v25 = *(v9 + 64)) == 0)
    {
      *(a1 + 48) = v14 & 0xFFFFFDFF;
    }

    else
    {
      v26 = ParallelArchiveDBSetCreate(v25, *(v9 + 72), 0, a4, a5, a6, a7, a8);
      *(a1 + 16) = v26;
      if (!v26)
      {
        v22 = "connecting to database";
        v23 = 152;
        goto LABEL_42;
      }

      if (**(a1 + 8) >= 1)
      {
        fwrite("Reading DAT blobs from database\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }
    }
  }

  v27 = *(a1 + 52);
  if ((v27 & 0x10) != 0 && (*(a1 + 44) & 0x10) == 0)
  {
    if ((*(a1 + 41) & 2) != 0 && (v28 = *(a1 + 8), *(v28 + 64) == 1))
    {
      v29 = ParallelArchiveDBSessionCreate(**(v28 + 72), (a1 + 2328), 0x100uLL, 0);
      *(a1 + 24) = v29;
      if (!v29)
      {
        v22 = "connecting to database";
        v23 = 164;
        goto LABEL_42;
      }

      *(a1 + 2584) = strlen((a1 + 2328));
      if (**(a1 + 8) >= 1)
      {
        fwrite("Writing DAT blobs to database\n", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }
    }

    else
    {
      *(a1 + 52) = v27 & 0xFFEF;
    }
  }

  *(a1 + 52) = (*(a1 + 52) >> 1) & 8 | *(a1 + 52) & 0xFFF7;
  if (**(a1 + 8) >= 1)
  {
    bzero(v33, 0x400uLL);
    yaa_serializeFields(v33, 0x400uLL, *(a1 + 40), *(a1 + 44));
    v30 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "Input fields:          %s\n", v33);
    yaa_serializeFields(v33, 0x400uLL, v10, v15);
    fprintf(*v30, "Allowed output fields: %s\n", v33);
    yaa_serializeFields(v33, 0x400uLL, *(a1 + 48), *(a1 + 52));
    fprintf(*v30, "Output fields:         %s\n", v33);
  }

  result = 0;
LABEL_62:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t writeMetadata()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v21[273] = *MEMORY[0x29EDCA608];
  if (*(v0 + 60))
  {
    v3 = "writing archive metadata twice";
    v4 = 334;
  }

  else
  {
    v7 = v0;
    bzero(v16, 0x400uLL);
    if ((yaa_serializeFields(v16, 0x400uLL, *(v7 + 48), *(v7 + 52)) & 0x80000000) != 0)
    {
      v3 = "serializing YAF entry";
      v4 = 342;
    }

    else
    {
      v8 = strlen(v16) + 1;
      bzero(v21, 0x888uLL);
      v20 = 0x4D00000001;
      bzero(v18, 0x405uLL);
      qmemcpy(v17, "YAF", sizeof(v17));
      *&v18[1] = 2;
      v19 = v8;
      if ((ParallelArchiveWriteEntryHeader(*v7, &v20, v17, 1, v9, v10, v11, v12) & 0x80000000) != 0)
      {
        v3 = "writing metadata entry header";
        v4 = 356;
      }

      else
      {
        if ((ParallelArchiveWriteEntryData(*v7, v16, v8, v13, v14, v15, v1, v2) & 0x80000000) == 0)
        {
          result = 0;
          *(v7 + 60) = 1;
          goto LABEL_4;
        }

        v3 = "writing metadata entry blob";
        v4 = 357;
      }
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "writeMetadata", v4, 62, 0, v3, v1, v2, v16[0]);
  result = 0xFFFFFFFFLL;
LABEL_4:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t insertUINTField(uint64_t a1, uint64_t a2)
{
  if ((reserveExtraFields(a1, *(a1 + 2296) + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "insertUINTField", 191, 62, 0, "reserving extra fields", v4, v5, v8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = (*(a1 + 2304) + 1032 * *(a1 + 2296));
    bzero(v6, 0x408uLL);
    result = 0;
    *(v6 + 1) = 1;
    *v6 = 17481;
    *(v6 + 2) = 88;
    *(v6 + 1) = a2;
    ++*(a1 + 2296);
  }

  return result;
}

uint64_t reserveBlobPayload(uint64_t a1, uint64_t a2)
{
  DataSize = MemBufferGetDataSize(*(a1 + 2856));
  if (__CFADD__(DataSize, a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveBlobPayload", 106, 62, 0, "invalid blob size: %llu", v5, v6, a2);
  }

  else
  {
    v7 = MemBufferIncreaseCapacity(*(a1 + 2856), DataSize + a2);
    if ((v7 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "reserveBlobPayload", 107, 62, 0, "resize blob buffer", v8, v9, v11);
  }

  return 0xFFFFFFFFLL;
}

unint64_t archiveWriterProc(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(result) = ParallelArchiveWriteEntryData(*a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    return a3;
  }

  else
  {
    return result;
  }
}

uint64_t processDATEnd(uint64_t a1)
{
  v2 = *(a1 + 84);
  if ((v2 & 0x2000) != 0)
  {
    *(a1 + 96) |= 0x2000u;
    CC_SHA1_Deprecated_Final((a1 + 188), (a1 + 2880));
    v2 = *(a1 + 84);
  }

  v3 = v2 & 0xFFFFDFFF;
  *(a1 + 84) = v2 & 0xFFFFDFFF;
  if ((v2 & 0x4000) != 0)
  {
    *(a1 + 96) |= 0x4000u;
    CC_SHA256_Final((a1 + 208), (a1 + 2976));
    v3 = *(a1 + 84);
  }

  v4 = v3 & 0xFFFFBFFF;
  *(a1 + 84) = v3 & 0xFFFFBFFF;
  if ((v3 & 0x1000) != 0)
  {
    *(a1 + 96) |= 0x1000u;
    CC_CKSUM_Final((a1 + 184), a1 + 3080);
    v4 = *(a1 + 84);
  }

  *(a1 + 84) = v4 & 0xFFFFEFFF;
  v5 = *(a1 + 88);
  if ((v5 & 0x100) != 0)
  {
    DataSize = OECCStreamGetDataSize(*(a1 + 3096));
    if ((insertBLOBField(a1, "YEC", DataSize) & 0x80000000) != 0)
    {
      v13 = "inserting YEC";
      v14 = 295;
      goto LABEL_24;
    }

    *(a1 + 92) |= 0x100u;
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5 & 0xFEFF;
  result = *(a1 + 2320);
  if (!result)
  {
    return result;
  }

  if ((ParallelArchiveDBRequestCloseAndGetKey(result) & 0x80000000) != 0)
  {
    v13 = "finalizing database write";
    v14 = 304;
  }

  else
  {
    *(a1 + 2320) = 0;
    v10 = *(a1 + 88);
    if ((v10 & 0x10) != 0)
    {
      if ((insertBLOBField(a1, "YDK", *(a1 + 2848)) & 0x80000000) != 0)
      {
        v13 = "inserting YDK";
        v14 = 312;
        goto LABEL_24;
      }

      *(a1 + 92) |= 0x10u;
      v10 = *(a1 + 88);
    }

    v11 = v10 & 0xFFEF;
    *(a1 + 88) = v10 & 0xFFEF;
    if ((v10 & 8) == 0)
    {
      goto LABEL_19;
    }

    v12 = *(a1 + 2584);
    if (!v12)
    {
      goto LABEL_19;
    }

    if ((insertBLOBField(a1, "YDA", v12) & 0x80000000) == 0)
    {
      *(a1 + 92) |= 8u;
      v11 = *(a1 + 88);
LABEL_19:
      result = 0;
      *(a1 + 88) = v11 & 0xFFF7;
      return result;
    }

    v13 = "inserting YDA";
    v14 = 320;
  }

LABEL_24:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "processDATEnd", v14, 62, 0, v13, v7, v8, v15);
  return 0xFFFFFFFFLL;
}

uint64_t insertBLOBField(uint64_t a1, __int16 *a2, uint64_t a3)
{
  if ((reserveExtraFields(a1, *(a1 + 2296) + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Convert.c", "insertBLOBField", 204, 62, 0, "reserving extra fields", v6, v7, v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = (*(a1 + 2304) + 1032 * *(a1 + 2296));
    bzero(v8, 0x408uLL);
    result = 0;
    *(v8 + 1) = 2;
    v10 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v10;
    *(v8 + 1) = a3;
    ++*(a1 + 2296);
  }

  return result;
}

_DWORD *ParallelCompressionFileOpen(const char *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v109 = *MEMORY[0x29EDCA608];
  if (!a1 || !__s)
  {
    v21 = "invalid args";
    v22 = 149;
    goto LABEL_76;
  }

  v99 = strlen(__s);
  v9 = 0;
  v10 = 0;
  __offseta = 0;
  v96 = 0;
  v103 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xFFFFFFFFLL;
  v14 = MEMORY[0x29EDCA600];
  v15 = -1;
  v101 = -1;
  v92 = -1;
  v95 = -1;
  DefaultNThreads = -1;
  v98 = -1;
LABEL_4:
  v16 = v15 == -1;
LABEL_5:
  v100 = v16;
  while (2)
  {
    while (2)
    {
      v17 = v13;
      while (1)
      {
        v13 = v17;
        v18 = v10 + 3;
        do
        {
          v19 = v18;
          v17 = __s[v18 - 3];
          if ((v17 & 0x80000000) != 0)
          {
            v20 = __maskrune(__s[v18 - 3], 0x4000uLL);
          }

          else
          {
            v20 = *(v14 + 4 * v17 + 60) & 0x4000;
          }

          ++v18;
        }

        while (v20);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }

        if (v17 > 0x72u)
        {
          if (v17 - 115 < 2)
          {
            goto LABEL_22;
          }

          if (v17 == 118)
          {
            ++v103;
          }

          else
          {
            if (v17 != 119)
            {
LABEL_74:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 190, 46, 0, "invalid option in mode: %s (was '%c')", a7, a8, __s);
              goto LABEL_77;
            }

            ++v11;
          }
        }

        else
        {
          if (v17 - 97 < 3 || v17 == 111)
          {
LABEL_22:
            v9 = 1;
            goto LABEL_23;
          }

          if (v17 != 114)
          {
            goto LABEL_74;
          }

          ++v12;
        }

LABEL_23:
        v10 = v19 - 2;
      }

      if (v101 != -1 || !v9)
      {
        if (v100 && v9 != 0)
        {
          if (v13 == 97)
          {
            if (v18 > v99)
            {
              goto LABEL_207;
            }

            v100 = 0;
            v13 = 97;
            v9 = 1;
            v10 = v19 + 1;
            v98 = 1;
            if (strncmp(&__s[v18 - 4], "lzma", 4uLL))
            {
              v100 = 0;
              v98 = 0;
              v13 = 97;
              v10 = v19 + 1;
              if (strncmp(&__s[v18 - 4], "zlib", 4uLL))
              {
LABEL_207:
                v10 = v19 + 2;
                if (v19 + 2 > v99 || (v100 = 0, v98 = 4, v13 = 97, v9 = 1, strncmp(&__s[v18 - 4], "lzfse", 5uLL)))
                {
                  v10 = v19 + 5;
                  if (v19 + 5 > v99 || (v100 = 0, v98 = 5, v13 = 97, v9 = 1, strncmp(&__s[v18 - 4], "lzbitmap", 8uLL)))
                  {
                    if (v19 > v99 || __s[v18 - 4] != 108 || __s[v18 - 3] != 122 || (v100 = 0, v98 = 3, v13 = 97, v9 = 1, v10 = v19, __s[v18 - 2] != 52))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 214, 46, 0, "invalid compression algorithm in mode: %s", a7, a8, __s);
                      goto LABEL_77;
                    }
                  }
                }
              }
            }

            continue;
          }

          *&__endptr.st_dev = 0;
          v15 = strtoull(&__s[v18 - 4], &__endptr, 10);
          if (&__s[v18 - 4] == *&__endptr.st_dev || v15 == -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 223, 46, 0, "invalid argument for '%c' in mode: %s", a7, a8, v13);
            goto LABEL_77;
          }

          v10 = *&__endptr.st_dev - __s;
          if (v13 == 98 && v10 < v99 && **&__endptr.st_dev == 109)
          {
            v15 <<= 20;
            ++v10;
          }

          if (v13 == 98 && v10 < v99 && __s[v10] == 107)
          {
            v15 <<= 10;
            ++v10;
          }

          if (v13 == 98 && v10 < v99)
          {
            if (__s[v10] == 98)
            {
              ++v10;
            }
          }

          else
          {
            if (v13 > 110)
            {
              switch(v13)
              {
                case 'o':
                  __offseta = v15;
                  break;
                case 's':
                  v92 = v15;
                  break;
                case 't':
                  if (v15)
                  {
                    DefaultNThreads = v15;
                  }

                  else
                  {
                    DefaultNThreads = getDefaultNThreads();
                    v15 = 0;
                  }

                  break;
              }

              goto LABEL_60;
            }

            if (v13 != 98)
            {
              if (v13 == 99)
              {
                v95 = v15;
              }

              goto LABEL_60;
            }
          }

          v96 = v15;
LABEL_60:
          v9 = 1;
          goto LABEL_4;
        }

        if (v17 == 44)
        {
          v9 = 0;
          v10 = v19 - 2;
          v13 = 0xFFFFFFFFLL;
          v101 = -1;
          v16 = 1;
          goto LABEL_5;
        }

        if (v17)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 252, 46, 0, "invalid character in mode: %s ('%c')", a7, a8, __s);
          goto LABEL_77;
        }

        if (v12 + v11 != 1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 256, 46, 0, "mode should specify either 'w' or 'r': %s", a7, a8, __s);
          goto LABEL_77;
        }

        if (v12 && ((v98 & 0x80000000) == 0 || v96 || (DefaultNThreads & 0x80000000) == 0))
        {
          v21 = "a,b,t options are invalid in read mode";
          v22 = 257;
          goto LABEL_76;
        }

        if (v11 && (v95 & 0x80000000) == 0)
        {
          v21 = "c option is invalid in write mode";
          v22 = 258;
          goto LABEL_76;
        }

        if (v11 != 0 && v98 < 0)
        {
          v26 = 4;
        }

        else
        {
          v26 = v98;
        }

        if (v11 != 0 && v96 == 0)
        {
          v27 = 0x800000;
        }

        else
        {
          v27 = v96;
        }

        if (v11)
        {
          v28 = a1;
          if (DefaultNThreads <= 0)
          {
            DefaultNThreads = getDefaultNThreads();
          }
        }

        else
        {
          v28 = a1;
        }

        if (v95 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v95;
        }

        if (v12)
        {
          v30 = v29;
        }

        else
        {
          v30 = v95;
        }

        if (v12)
        {
          memset(&__endptr, 0, sizeof(__endptr));
          if (stat(v28, &__endptr))
          {
            v33 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 270, 46, v33, "%s", v34, v35, v28);
            goto LABEL_77;
          }

          if ((__endptr.st_mode & 0xF000) != 0x8000)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 271, 46, 0, "%s must be an existing regular file", v31, v32, v28);
            goto LABEL_77;
          }

          if (__endptr.st_size <= __offseta)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 272, 46, 0, "invalid segment offset: %llu", v31, v32, __offseta);
            goto LABEL_77;
          }

          if (v92 == -1)
          {
            v92 = __endptr.st_size - __offseta;
          }

          else
          {
            if (__CFADD__(__offseta, v92))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 277, 46, 0, "invalid segment size: %llu", v31, v32, v92);
              goto LABEL_77;
            }

            if (__offseta + v92 > __endptr.st_size)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 278, 46, 0, "invalid segment size: %llu", v31, v32, v92);
              goto LABEL_77;
            }
          }

          if (v92 <= 0xB)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 283, 46, 0, "invalid segment size: %llu", v31, v32, v92);
            goto LABEL_77;
          }

          v28 = a1;
        }

        v36 = calloc(1uLL, 0x88uLL);
        v23 = v36;
        if (!v36)
        {
          v49 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 287, 46, *v49, "malloc", v50, v51, v91);
          goto LABEL_78;
        }

        *v36 = v12 == 0;
        v36[1] = -1;
        v36[2] = v103;
        if (v11)
        {
          v37 = open(v28, 1537, 420);
          v23[1] = v37;
          if (v37 < 0)
          {
            v58 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 297, 46, v58, "%s", v59, v60, a1);
          }

          else
          {
            v38 = OFileEncoderStreamCreateWithFD(v37, -1, v27, v26, v27, DefaultNThreads);
            *(v23 + 2) = v38;
            if (v38)
            {
              if (v103 >= 1)
              {
                v46 = MEMORY[0x29EDCA610];
                fprintf(*MEMORY[0x29EDCA610], "filename: %s\n", a1);
                fwrite("mode: w\n", 8uLL, 1uLL, *v46);
                v47 = *v46;
                EncoderDescription = PCompressGetEncoderDescription(v26);
                fprintf(v47, "algorithm: %s\n", EncoderDescription);
                fprintf(*v46, "block size: %zu B\n", v27);
                fprintf(*v46, "n threads: %d\n");
              }

              goto LABEL_78;
            }
          }

          goto LABEL_144;
        }

        v52 = open(v28, 0);
        v23[1] = v52;
        if (v52 < 0)
        {
          v61 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", 316, 46, v61, "%s", v62, v63, a1);
          goto LABEL_144;
        }

        if (pread(v52, &__buf, 0xCuLL, __offseta) != 12)
        {
          v56 = "reading file header";
          v57 = 320;
          goto LABEL_142;
        }

        if (__buf != 25200 || v105 != 122)
        {
          v56 = "invalid file header";
          v57 = 321;
          goto LABEL_142;
        }

        v65 = v106;
        if (v106 <= 0x64u)
        {
          switch(v106)
          {
            case '-':
              v66 = 6;
              goto LABEL_162;
            case '4':
              v66 = 3;
              goto LABEL_162;
            case 'b':
              v66 = 5;
              goto LABEL_162;
          }
        }

        else if (v106 > 0x77u)
        {
          if (v106 == 120)
          {
            v66 = 1;
            goto LABEL_162;
          }

          if (v106 == 122)
          {
            v66 = 0;
            goto LABEL_162;
          }
        }

        else
        {
          if (v106 == 101)
          {
            v66 = 4;
            goto LABEL_162;
          }

          if (v106 == 102)
          {
            v66 = 2;
LABEL_162:
            DecoderFilter = PCompressGetDecoderFilter(v66);
            *(v23 + 3) = DecoderFilter;
            if (DecoderFilter)
            {
              *(v23 + 5) = bswap64(v107);
              v68 = __offseta + 12;
              v69 = v92 + __offseta;
              if (__offseta + 12 < v92 + __offseta)
              {
                v70 = 0;
                while (1)
                {
                  if (v69 - v68 <= 0xF)
                  {
                    v56 = "truncated block header";
                    v57 = 347;
                    goto LABEL_142;
                  }

                  if (pread(v23[1], &__endptr, 0x10uLL, v68) != 16)
                  {
                    v91 = v68;
                    v56 = "reading block header at offset %llu";
                    v57 = 348;
                    goto LABEL_142;
                  }

                  v71 = v68 + 16;
                  v102 = vrev64q_s8(*&__endptr.st_dev);
                  if (v69 - (v68 + 16) < v102.i64[1])
                  {
                    v56 = "truncated block payload";
                    v57 = 352;
                    goto LABEL_142;
                  }

                  if (v102.i64[1] > v102.i64[0] || v102.i64[0] > *(v23 + 5))
                  {
                    v56 = "corrupted file";
                    v57 = 353;
                    goto LABEL_142;
                  }

                  v73 = *(v23 + 6);
                  v74 = *(v23 + 7);
                  v75 = *(v23 + 8);
                  if (v73 >= v74)
                  {
                    v76 = v74 + (v74 >> 1);
                    if (!v74)
                    {
                      v76 = 32;
                    }

                    *(v23 + 7) = v76;
                    v75 = reallocf(v75, 40 * v76);
                    *(v23 + 8) = v75;
                    if (!v75)
                    {
                      v64 = *__error();
                      v56 = "malloc";
                      v57 = 361;
                      goto LABEL_143;
                    }

                    v73 = *(v23 + 6);
                  }

                  v77 = &v75[40 * v73];
                  v77->i64[0] = v70;
                  v77->i64[1] = v71;
                  v77[1] = v102;
                  v77[2].i64[0] = -1;
                  v68 = v102.i64[1] + v71;
                  if (v103 > 1)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "block %zu: compressed:%llu..%llu raw:%llu..%llu\n", v73, v71, v68, v70, v102.i64[0] + v70);
                    v73 = *(v23 + 6);
                  }

                  v70 += v102.i64[0];
                  *(v23 + 6) = v73 + 1;
                  if (v68 >= v69)
                  {
                    goto LABEL_183;
                  }
                }
              }

              v70 = 0;
LABEL_183:
              if (v68 == v69)
              {
                *(v23 + 4) = v70;
                *(v23 + 9) = v30;
                v78 = *(v23 + 5);
                if (is_mul_ok(v30, v78))
                {
                  v79 = malloc(v30 * v78);
                  *(v23 + 10) = v79;
                  if (!v79)
                  {
                    v64 = *__error();
                    v56 = "malloc";
                    v57 = 392;
                    goto LABEL_143;
                  }

                  v80 = calloc(v30, 0x18uLL);
                  *(v23 + 11) = v80;
                  if (v80)
                  {
                    v81 = v80;
                    v82 = *(v23 + 9);
                    v83 = *(v23 + 5);
                    if (v82)
                    {
                      v84 = *(v23 + 10);
                      v85 = v81 + 16;
                      do
                      {
                        *(v85 - 1) = xmmword_298069790;
                        *v85 = v84;
                        v85 += 3;
                        v84 += v83;
                        --v82;
                      }

                      while (v82);
                    }

                    v86 = malloc(v83);
                    *(v23 + 12) = v86;
                    if (v86)
                    {
                      *(v23 + 13) = 0;
                      *(v23 + 14) = 0;
                      if (v103 >= 1)
                      {
                        v87 = MEMORY[0x29EDCA610];
                        fprintf(*MEMORY[0x29EDCA610], "filename: %s\n", a1);
                        fwrite("mode: r\n", 8uLL, 1uLL, *v87);
                        v88 = *v87;
                        DecoderDescription = PCompressGetDecoderDescription(v66);
                        fprintf(v88, "algorithm: %s\n", DecoderDescription);
                        fprintf(*v87, "payload segment: %llu [%llu]\n", __offseta, v92);
                        fprintf(*v87, "raw data size: %llu B\n", *(v23 + 4));
                        fprintf(*v87, "blocks: %zu\n", *(v23 + 6));
                        fprintf(*v87, "block size: %zu B\n", *(v23 + 5));
                        v90 = *(v23 + 5) * v30;
                        fprintf(*v87, "cache size: %zu B (%d blocks)\n");
                      }

                      goto LABEL_78;
                    }

                    v64 = *__error();
                    v56 = "malloc";
                    v57 = 405;
                  }

                  else
                  {
                    v64 = *__error();
                    v56 = "malloc";
                    v57 = 394;
                  }

LABEL_143:
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", v57, 46, v64, v56, v53, v54, v91);
LABEL_144:
                  ParallelCompressionFileClose(v23, v39, v40, v41, v42, v43, v44, v45);
                  goto LABEL_77;
                }

                v56 = "Invalid cache size";
                v57 = 390;
              }

              else
              {
                v56 = "extra bytes found in file";
                v57 = 383;
              }

LABEL_142:
              v64 = 0;
              goto LABEL_143;
            }

            v65 = v106;
LABEL_188:
            v91 = v65;
            v56 = "unsupported decoder in file header: %c";
            v57 = 334;
            goto LABEL_142;
          }
        }

        *(v23 + 3) = 0;
        goto LABEL_188;
      }

      break;
    }

    if (v17 == 61)
    {
      v101 = v19 - 3;
      v10 = v19 - 2;
      v9 = 1;
      continue;
    }

    break;
  }

  v91 = __s;
  v21 = "invalid option in mode: %s (%c requires an arg)";
  v22 = 199;
LABEL_76:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileOpen", v22, 46, 0, v21, a7, a8, v91);
LABEL_77:
  v23 = 0;
LABEL_78:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t ParallelCompressionFileClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*a1 && *(a1 + 2) >= 1)
    {
      v19 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "read: %llu B\n", *(a1 + 15));
      fprintf(*v19, "decoded: %llu B\n", *(a1 + 16));
      v20 = *(a1 + 15);
      if (v20)
      {
        fprintf(*v19, "decoded/read ratio: %.2f\n", *(a1 + 16) / v20);
      }
    }

    v9 = *(a1 + 2);
    if (v9)
    {
      OFileEncoderStreamWrite(v9, 0, 0, a4, a5, a6, a7, a8);
      OFileEncoderStreamDestroy(*(a1 + 2), v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 1);
    if ((v17 & 0x80000000) == 0)
    {
      close(v17);
    }

    free(*(a1 + 8));
    free(*(a1 + 10));
    free(*(a1 + 11));
    free(*(a1 + 12));
    free(a1);
  }

  return 0;
}

uint64_t ParallelCompressionFileSeek(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = 104;
      }

      else
      {
        if (a3 != 2)
        {
          return -1;
        }

        v8 = 32;
      }

      a2 += *(a1 + v8);
    }

    if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 32))
    {
      *(a1 + 104) = a2;
      return a2;
    }

    return -1;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "ParallelCompressionFileSeek", 458, 46, 0, "invalid mode", a7, a8, vars0);
  return -1;
}

uint64_t ParallelCompressionFileWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 != 1)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  result = OFileEncoderStreamWrite(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
  if (result < 0)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelCompressionFileRead(uint64_t a1, char *__dst, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    v9 = a3;
    ++*(a1 + 112);
    if (!a3)
    {
      return 0;
    }

    v11 = *(a1 + 104);
    if (v11 >= *(a1 + 32))
    {
      return 0;
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(a1 + 64);
      if (*(v14 + 16) > v11)
      {
        v15 = 0;
LABEL_20:
        v8 = 0;
        v20 = MEMORY[0x29EDCA610];
        while (1)
        {
          if (v15 >= *(a1 + 48))
          {
            return v8;
          }

          v21 = *(a1 + 64);
          v22 = *(v21 + 40 * v15 + 32);
          if (v22 != -1)
          {
            v23 = *(a1 + 88);
            *(v23 + 24 * v22 + 8) = *(a1 + 112);
            goto LABEL_44;
          }

          v24 = *(a1 + 72);
          v25 = *(a1 + 88);
          if (v24)
          {
            v26 = 0;
            v27 = (v25 + 8);
            v28 = -1;
            while (*(v27 - 1) != -1)
            {
              if (v28 == -1 || *v27 < *(v25 + 24 * v28 + 8))
              {
                v28 = v26;
              }

              ++v26;
              v27 += 3;
              if (v24 == v26)
              {
                goto LABEL_34;
              }
            }

            v28 = v26;
          }

          else
          {
            v28 = -1;
          }

LABEL_34:
          v29 = *(v25 + 24 * v28);
          if (v29 != -1)
          {
            if (*(a1 + 8) >= 2)
            {
              fprintf(*v20, "Block %zu evicted from cache\n", *(v25 + 24 * v28));
              v21 = *(a1 + 64);
              v25 = *(a1 + 88);
              v29 = *(v25 + 24 * v28);
            }

            *(v21 + 40 * v29 + 32) = -1;
            *(v25 + 24 * v28) = -1;
          }

          v30 = (v21 + 40 * v15);
          v31 = v30[3];
          v32 = *(a1 + 4);
          v33 = v30[1];
          if (v31 == v30[2])
          {
            v34 = pread(v32, *(v25 + 24 * v28 + 16), v31, v33);
            if (v34 < 0 || (v21 = *(a1 + 64), v34 != *(v21 + 40 * v15 + 24)))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "loadBlock", 117, 46, 0, "reading uncompressed block %zu", a7, a8, v15);
              return -1;
            }

            v35 = "Block %zu loaded in cache\n";
            if (*(a1 + 8) <= 1)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v46 = pread(v32, *(a1 + 96), v31, v33);
            if (v46 < 0 || v46 != *(*(a1 + 64) + 40 * v15 + 24))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "loadBlock", 125, 46, 0, "reading compressed block %zu", v47, v48, v15);
              return -1;
            }

            v49 = (*(a1 + 24))(*(*(a1 + 88) + 24 * v28 + 16), *(a1 + 40), *(a1 + 96), v46);
            if (v49 < 0 || (v21 = *(a1 + 64), v49 != *(v21 + 40 * v15 + 16)))
            {
              v53 = v15;
              v50 = "loadBlock";
              v51 = "decoding compressed block %zu";
              v52 = 128;
              goto LABEL_60;
            }

            v35 = "Block %zu loaded and decoded in cache\n";
            if (*(a1 + 8) < 2)
            {
              goto LABEL_43;
            }
          }

          fprintf(*v20, v35, v15);
          v21 = *(a1 + 64);
LABEL_43:
          v23 = *(a1 + 88);
          v36 = (v23 + 24 * v28);
          v37 = *(a1 + 112);
          *v36 = v15;
          v36[1] = v37;
          v38 = v21 + 40 * v15;
          *(v38 + 32) = v28;
          *(a1 + 128) += *(v38 + 16);
LABEL_44:
          v39 = (v21 + 40 * v15);
          v40 = v39[4];
          if (v40 >= *(a1 + 72))
          {
            v50 = "ParallelCompressionFileRead";
            v51 = "invalid entry";
            v52 = 506;
LABEL_60:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", v50, v52, 46, 0, v51, a7, a8, v53);
            return -1;
          }

          v41 = *(v23 + 24 * v40 + 16);
          v42 = *(a1 + 104);
          v43 = v42 - *v39;
          v44 = v39[2] + *v39 - v42;
          if (v9 >= v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = v9;
          }

          memcpy(__dst, (v41 + v43), v45);
          __dst += v45;
          *(a1 + 104) += v45;
          *(a1 + 120) += v45;
          v8 += v45;
          ++v15;
          v9 -= v45;
          if (!v9)
          {
            return v8;
          }
        }
      }

      v17 = v13 - 1;
      if (*(v14 + 40 * v17) <= v11)
      {
        v15 = v17;
        goto LABEL_20;
      }

      v18 = 0;
      while (v18 < v17)
      {
        v15 = (v18 + v17) >> 1;
        v19 = (v14 + 40 * v15);
        if (*v19 > v11)
        {
          v17 = (v18 + v17) >> 1;
        }

        else
        {
          v18 = (v18 + v17) >> 1;
          if (v19[2] + *v19 > v11)
          {
            goto LABEL_20;
          }
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/File.c", "locateBlock", 78, 46, 0, "locateBlock failed", a7, a8, v53);
    }

    v15 = -1;
    goto LABEL_20;
  }

  return -1;
}

unsigned __int8 *patchCacheKeyFromSHA1(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = *result++;
    v4 = (a2 + v2);
    *v4 = patchCacheKeyFromSHA1_hex[v3 >> 4];
    v4[1] = patchCacheKeyFromSHA1_hex[v3 & 0xF];
    v5 = v2 >= 0x26;
    v2 += 2;
  }

  while (!v5);
  return result;
}

_BYTE *patchCacheOpenFromURL(const char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v12 = "Invalid patch cache URL (NULL)";
    v13 = 56;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheOpenFromURL", v13, 38, 0, v12, a7, a8, v15);
    return 0;
  }

  if (strncasecmp(a1, "file:", 5uLL))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheOpenFromURL", 66, 38, 0, "Unknown patch cache URL: %s", v10, v11, a1);
    return 0;
  }

  result = filePatchCacheOpen(a1, a2);
  if (!result)
  {
    v12 = "filePatchCacheOpen failed";
    v13 = 61;
    goto LABEL_5;
  }

  *result = 1;
  return result;
}

uint64_t patchCacheClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (*result == 1)
    {
      return filePatchCacheClose(result, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t patchCacheLookup(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v17 = 0;
  __dst = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  do
  {
    if (!*(a2 + v11))
    {
      v15 = "invalid inKey";
      v16 = 142;
LABEL_16:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheLookup", v16, 38, 0, v15, a6, a8, v17);
      return 0xFFFFFFFFLL;
    }

    if (!*(a3 + v11))
    {
      v15 = "invalid outKey";
      v16 = 143;
      goto LABEL_16;
    }

    ++v11;
  }

  while (v11 != 40);
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = filePatchCacheLookup(a1, a2, a3, &__dst, &v17, a5, a6);
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (result)
  {
    v13 = __dst;
    v14 = *(__dst + 1);
    *(a4 + 8) = v14;
    *(a4 + 24) = 0;
    *a4 = 1;
    if (v14)
    {
      if (v17 >= v14 + 32)
      {
        memmove(v13, v13 + 32, v14);
        v13 = 0;
        *(a4 + 24) = __dst;
        __dst = 0;
      }
    }

    free(v13);
    return 1;
  }

  else
  {
    *(a4 + 4) = a5;
  }

  return result;
}

uint64_t patchCacheUpdate(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!*(a4 + 4))
  {
    v19 = "PatchCache update not expected";
    v20 = 183;
LABEL_15:
    v21 = 0;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/PatchCache.c", "patchCacheUpdate", v20, 38, v21, v19, a7, a8, v24);
LABEL_17:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  for (i = 0; i != 40; ++i)
  {
    if (!*(a2 + i))
    {
      v19 = "invalid inKey";
      v20 = 186;
      goto LABEL_15;
    }

    if (!*(a3 + i))
    {
      v19 = "invalid outKey";
      v20 = 187;
      goto LABEL_15;
    }
  }

  *&v25 = 0x5F44414F4C594150;
  v26 = *(a4 + 8);
  *(&v25 + 1) = time(0);
  v13 = *(a4 + 24);
  if (v13)
  {
    v14 = *(a4 + 8);
    if (v14 < *(a4 + 16))
    {
      v15 = malloc(v14 + 32);
      if (v15)
      {
        v16 = v15;
        v17 = v26;
        *v15 = v25;
        v15[1] = v17;
        memcpy(v15 + 2, v13, v14);
        if (*a1 == 1)
        {
          v18 = filePatchCacheUpdate(a1, a2, a3, v16, v14 + 32);
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }

        free(v16);
        if (!v18)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      v21 = *__error();
      v19 = "malloc";
      v20 = 209;
      goto LABEL_16;
    }
  }

  if (*a1 != 1)
  {
    goto LABEL_17;
  }

  v18 = filePatchCacheUpdate(a1, a2, a3, &v25, 0x20uLL);
  if (!v18)
  {
LABEL_25:
    *a4 = 1;
  }

LABEL_18:
  v22 = *MEMORY[0x29EDCA608];
  return v18;
}

void *aaSequentialDecompressionIStreamOpen(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    getDefaultNThreads();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 266;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", v20, 20, v18, v19, v14, v15, v23);
    free(v3);
    aaDecompressionStreamClose(v5);
    v3 = 0;
    goto LABEL_32;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v19 = "allocating buffer";
    v20 = 273;
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (aaDecompressionStreamRefill(v5, 0xCuLL) < 0)
  {
    v19 = "reading magic";
    v20 = 276;
LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  v16 = *(v5 + 8);
  v17 = *(v5 + 24);
  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = aaDecompressionStreamClose;
  v3[2] = aaDecompressionStreamRead;
  v3[7] = aaDecompressionStreamAbort;
LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
  return v3;
}

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