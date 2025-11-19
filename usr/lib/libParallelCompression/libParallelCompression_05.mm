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

uint64_t LargeFileWorker()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v71 = *MEMORY[0x29EDCA608];
  *(v0 + 8) = 0;
  if (atomic_load((*v0 + 104)))
  {
    goto LABEL_78;
  }

  v2 = v0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *v0;
  v7 = *(v0 + 32);
  v69 = 0;
  v8 = *(v6 + 56) - (v7 << 21);
  if (v8 >= 0x200000)
  {
    v9 = 0x200000;
  }

  else
  {
    v9 = *(v6 + 56) - (v7 << 21);
  }

  if (v8 >= 0x11)
  {
    v4 = malloc(0x1000000uLL);
    v3 = malloc(v9);
    v13 = malloc(0x40000uLL);
    v5 = v13;
    if (!v4 || (v3 ? (v14 = v13 == 0) : (v14 = 1), v14))
    {
      v22 = *__error();
      v23 = "aaMalloc";
      v24 = 496;
LABEL_72:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", v24, 112, v22, v23, v15, v16, v62);
      v12 = 0;
      goto LABEL_73;
    }

    memset(__b, 255, sizeof(__b));
    v17 = *(v6 + 24);
    if (!v17[4])
    {
      goto LABEL_70;
    }

    v18 = 0;
    v64 = v7;
    v65 = v9;
    v19 = v7 << 21;
    v20 = v3;
    while (1)
    {
      v21 = (v17[4])(*v17, v20, v9, v19);
      if (v21 < 0)
      {
        break;
      }

      if (v21)
      {
        v20 += v21;
        v18 += v21;
        v19 += v21;
        v9 -= v21;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v18 = v21;
LABEL_25:
    LODWORD(v7) = v64;
    v9 = v65;
    if (v65 == v18)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v26 = -1640531535 * (v26 + v3[v25++]);
      }

      while (v25 != 16);
      v66 = v4;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = *(v6 + 76);
      v32 = 17;
      if (v65 > 0x11)
      {
        v32 = v65;
      }

      v33 = v32 - 17;
      do
      {
        if (v27 >= v29 || (*(v6 + 68) & ~v26) == 0)
        {
          v29 = v27 + (2 * *(v6 + 72));
          if (v27 >= v28)
          {
            v34 = *(*(v6 + 40) + 4 * (v26 >> -*(v6 + 64)));
            if (v34 != -1)
            {
              v35 = __ROR8__(__ROR8__(2654435761 * *&v3[v27], 41) + 2654435761 * *&v3[v27 + 8], 41);
              v36 = HIDWORD(v35) ^ v35;
              while (1)
              {
                v37 = *(v6 + 32) + 16 * v34;
                if (*(v37 + 8) == v36)
                {
                  break;
                }

                v34 = *(v37 + 12);
                if (v34 == -1)
                {
                  goto LABEL_46;
                }
              }

              v38 = *v37;
              v39 = v38 >> 20;
              v40 = v38 & 0xFFFFFFFFFFF00000;
              v41 = __b[v39];
              v42 = v41;
              if (v41 == -1)
              {
LABEL_42:
                if (v30 != 0x4000)
                {
                  v44 = &v5[16 * v30];
                  *v44 = v40;
                  *(v44 + 2) = v41;
                  *(v44 + 3) = 1;
                  __b[v39] = v30++;
                }
              }

              else
              {
                while (1)
                {
                  v43 = &v5[16 * v42];
                  if (*v43 == v40)
                  {
                    break;
                  }

                  v42 = *(v43 + 2);
                  if (v42 == -1)
                  {
                    goto LABEL_42;
                  }
                }

                ++*(v43 + 3);
              }

              v28 = v27 + 16;
            }
          }
        }

LABEL_46:
        v26 = -1640531535 * (v26 + v3[v27 + 16]) - v31 * v3[v27];
        v14 = v27++ == v33;
      }

      while (!v14);
      if (!v30)
      {
        goto LABEL_6;
      }

      v63 = v3;
      qsort(v5, v30, 0x10uLL, chunk_compare_by_rating);
      if (v30 >= 0x10)
      {
        v45 = 16;
      }

      else
      {
        v45 = v30;
      }

      v67 = v45;
      qsort(v5, v45, 0x10uLL, chunk_compare_by_position);
      v48 = 0;
      LODWORD(v11) = 0;
      v68 = v5;
      do
      {
        v49 = *&v5[16 * v48];
        v50 = *(v6 + 48);
        if ((v50 - v49) >= 0x100000)
        {
          v51 = 0x100000;
        }

        else
        {
          v51 = v50 - v49;
        }

        v52 = *(v6 + 16);
        if (!v52[4])
        {
          goto LABEL_81;
        }

        if (v50 == v49)
        {
          v53 = 0;
        }

        else
        {
          v53 = 0;
          v54 = v66 + v11;
          v55 = v51;
          while (1)
          {
            v56 = (v52[4])(*v52, v54, v55, v49);
            if (v56 < 0)
            {
              break;
            }

            if (v56)
            {
              v54 += v56;
              v53 += v56;
              v49 += v56;
              v55 -= v56;
              if (v55)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v53 = v56;
        }

LABEL_65:
        v5 = v68;
        if (v51 != v53)
        {
LABEL_81:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", 546, 112, 0, "aaByteStreamPReadExpected", v46, v47, v62);
          v12 = 0;
          v4 = v66;
          v3 = v63;
          goto LABEL_73;
        }

        v11 = (v11 + v51);
        ++v48;
      }

      while (v48 != v67);
      v4 = v66;
      v3 = v63;
      if ((getBXDiffControls(v66, v11, v63, v65, &v69, (v2 + 2), v6, v47) & 0x80000000) != 0)
      {
        v23 = "generic controls";
        v24 = 550;
      }

      else
      {
        v69 = convert_block_controls(v2 + 2, v69, v2[2], v68, v57, v58, v15, v16);
        if (v69)
        {
          LODWORD(v7) = v64;
          goto LABEL_8;
        }

        v23 = "convert_block_controls";
        v24 = 552;
      }
    }

    else
    {
LABEL_70:
      v23 = "aaByteStreamPReadExpected";
      v24 = 501;
    }

    v22 = 0;
    goto LABEL_72;
  }

LABEL_6:
  v10 = malloc(0x18uLL);
  v69 = v10;
  if (!v10)
  {
    v22 = *__error();
    v23 = "aaMalloc";
    v24 = 534;
    goto LABEL_72;
  }

  LODWORD(v11) = 0;
  *v10 = 0;
  v10[1] = v9;
  v10[2] = 0;
  v2[2] = 1;
LABEL_8:
  if (*(v6 + 4) >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], " LargeFile: Block = %5u, %5u K cache, %6zu controls\n", v7, v11 >> 10, v2[2]);
  }

  v12 = 1;
LABEL_73:
  free(v4);
  free(v3);
  free(v5);
  if ((v12 & 1) == 0)
  {
    free(v69);
  }

  v59 = v69;
  if (!v12)
  {
    v59 = 0;
  }

  v2[1] = v59;
  if (!v59)
  {
    atomic_compare_exchange_strong((*v2 + 104), &v59, 1u);
    result = 0xFFFFFFFFLL;
    goto LABEL_79;
  }

LABEL_78:
  result = 0;
LABEL_79:
  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LargeFileConsumer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((*a2 + 104)))
  {
    return 0;
  }

  result = a2[1];
  if (result)
  {
    if (a2[2])
    {
      v12 = 0;
      v13 = 0;
      v14 = *a1;
      do
      {
        v14 = add_control(v14, (a1 + 8), (a1 + 16), *(a2[1] + v12), *(a2[1] + v12 + 8), *(a2[1] + v12 + 16), a7, a8);
        *a1 = v14;
        if (!v14)
        {
          break;
        }

        ++v13;
        v12 += 24;
      }

      while (v13 < a2[2]);
      result = a2[1];
    }

    free(result);
    if (!*a1)
    {
      v15 = *a1;
      atomic_compare_exchange_strong((*a2 + 104), &v15, 1u);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return result;
}

unint64_t GetLargeFileMaxMemoryUsage(unint64_t a1, uint64_t a2, int DefaultNThreads)
{
  v4 = __clz((a1 + 15) >> 4);
  if (1 << ~v4 >= (a1 + 15) >> 4)
  {
    v5 = 63 - v4;
  }

  else
  {
    v5 = 64 - v4;
  }

  v6 = 16;
  if (v5 >= 0x1E)
  {
    do
    {
      --v5;
      v6 = (2 * v6);
    }

    while (v5 > 0x1D);
    LOBYTE(v5) = 29;
  }

  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  return (4 << v5) + 16 * ((5 * (a1 / v6)) >> 2) + (GetBXDiffMaxMemoryUsage(0x1000000uLL, 0x200000uLL, 1, 21) + 19136512) * DefaultNThreads;
}

uint64_t GetLargeFileControlsWithStreams(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  RealTime = getRealTime();
  DefaultNThreads = *(a7 + 2);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *v112 = 0;
  v110 = 0u;
  *v111 = 0u;
  *v108 = 0u;
  v109 = 0u;
  v105 = 0;
  v101 = 0;
  v102 = 0;
  v106 = a1;
  v107 = a3;
  v16 = *a7;
  v103 = 0;
  v104[1] = HIDWORD(v16);
  LODWORD(v16) = __clz((a2 + 15) >> 4);
  v104[0] = 21;
  v17 = 63 - v16;
  LODWORD(v105) = 1;
  v18 = 1 << ~v16;
  v19 = 16;
  v108[1] = a2;
  *&v109 = a4;
  if (v18 >= (a2 + 15) >> 4)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 1;
  }

  LODWORD(v110) = 16;
  if (v20 < 0x1E)
  {
    v21 = 15;
  }

  else
  {
    do
    {
      --v20;
      v19 *= 2;
    }

    while (v20 > 0x1D);
    LODWORD(v110) = v19;
    v21 = v19 - 1;
    v20 = 29;
  }

  *(&v109 + 1) = __PAIR64__(v21, v20);
  DWORD1(v110) = 840293553;
  if (DefaultNThreads < 0xCCCCCCCD)
  {
    v22 = calloc(DefaultNThreads, 0x28uLL);
  }

  else
  {
    v22 = 0;
    *__error() = 12;
  }

  v111[0] = v22;
  v23 = calloc(DefaultNThreads, 8uLL);
  v111[1] = v23;
  if (!v22 || !v23)
  {
    v51 = *__error();
    v52 = "aaCalloc";
    v53 = 672;
LABEL_36:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", v53, 112, v51, v52, v24, v25, v98);
    goto LABEL_37;
  }

  *(&v107 + 1) = pc_array_init(16, (5 * (a2 / v110)) >> 2);
  if (!*(&v107 + 1))
  {
    v52 = "pc_array_init";
    v53 = 678;
LABEL_35:
    v51 = 0;
    goto LABEL_36;
  }

  v26 = malloc(4 << SBYTE8(v109));
  v108[0] = v26;
  if (!v26)
  {
    v51 = *__error();
    v52 = "malloc";
    v53 = 683;
    goto LABEL_36;
  }

  memset(v26, 255, 4 << SBYTE8(v109));
  v27 = calloc(DefaultNThreads, 0x20uLL);
  v28 = calloc(DefaultNThreads, 8uLL);
  v29 = v28;
  if (!v27 || !v28)
  {
    v56 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 433, 112, *v56, "aaCalloc", v57, v58, v98);
    v41 = 0;
LABEL_50:
    v50 = 0;
    goto LABEL_51;
  }

  if (DefaultNThreads)
  {
    v30 = v27;
    v31 = v28;
    v32 = DefaultNThreads;
    v33 = v27;
    do
    {
      *v33 = v104;
      v33 += 4;
      *v31++ = v30;
      v30 = v33;
      --v32;
    }

    while (v32);
  }

  v41 = ThreadPipelineCreate(DefaultNThreads, v28, fingerprint_worker, v104, fingerprint_consumer, 0);
  if (!v41)
  {
    v59 = "ThreadPipelineCreate";
    v60 = 444;
LABEL_49:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", v60, 112, 0, v59, v39, v40, v98);
    goto LABEL_50;
  }

  v100 = a6;
  if (!v108[1])
  {
LABEL_30:
    a6 = v100;
    if ((ThreadPipelineFlush(v41) & 0x80000000) != 0)
    {
      v59 = "ThreadPipelineFlush";
      v60 = 461;
    }

    else
    {
      *(&v107 + 1) = pc_array_compact(*(&v107 + 1));
      if (*(&v107 + 1))
      {
        v50 = 1;
        goto LABEL_51;
      }

      v59 = "pc_array_compact";
      v60 = 465;
    }

    goto LABEL_49;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    Worker = ThreadPipelineGetWorker(v41, v34, v35, v36, v37, v38, v39, v40);
    if (!Worker)
    {
      v61 = "ThreadPipelineGetWorker";
      v62 = 451;
      goto LABEL_47;
    }

    Worker[1] = 0;
    Worker[2] = v43;
    v49 = v108[1] + v42;
    if (v108[1] + v42 >= 0x200000)
    {
      v49 = 0x200000;
    }

    Worker[3] = v49;
    if ((ThreadPipelineRunWorker(v41, Worker, v45, v46, v47, v48, v39, v40) & 0x80000000) != 0)
    {
      break;
    }

    v43 += 0x200000;
    v42 -= 0x200000;
    if (v43 >= v108[1])
    {
      goto LABEL_30;
    }
  }

  v61 = "ThreadPipelineRunWorker";
  v62 = 457;
LABEL_47:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", v62, 112, 0, v61, v39, v40, v98);
  v50 = 0;
  a6 = v100;
LABEL_51:
  if ((ThreadPipelineDestroy(v41) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 468, 112, 0, "ThreadPipelineDestroy", v63, v64, v98);
    v50 = 0;
  }

  free(v27);
  free(v29);
  if (!v50)
  {
    goto LABEL_37;
  }

  if (*(a7 + 1) >= 3)
  {
    v67 = *MEMORY[0x29EDCA610];
    v68 = (4 << SBYTE8(v109)) >> 20;
    v69 = a5;
    v70 = (*(*(&v107 + 1) - 64) >> 16) & 0xFFFFFFFFFFFLL;
    v71 = v108[1] >> 20;
    v72 = getRealTime();
    v99 = v70;
    a5 = v69;
    fprintf(v67, " LargeFile: Using %zu M for hashing.\n LargeFile: Using %zu M for fingerprints.\n LargeFile: Parsed %zu M in %0.2f (s). Added %zu/%zu fingerprints.\n", v68, v99, v71, v72 - RealTime, *(*(&v107 + 1) - 64), v108[1] / v110);
  }

  v101 = add_control(0, &v102, &v103, 0, 0, 0, v65, v66);
  if (!v101)
  {
    goto LABEL_37;
  }

  if (DefaultNThreads)
  {
    for (i = 0; i != DefaultNThreads; v74[i++] = v75)
    {
      v74 = v111[1];
      v75 = v111[0] + 40 * i;
      *v75 = v104;
    }
  }

  v76 = ThreadPipelineCreate(DefaultNThreads, v111[1], LargeFileWorker, &v101, LargeFileConsumer, 0);
  *(&v110 + 1) = v76;
  if (!v76)
  {
    v52 = "creating pipeline";
    v53 = 711;
    goto LABEL_35;
  }

  if (!a4)
  {
LABEL_68:
    if ((ThreadPipelineDestroy(v76) & 0x80000000) == 0)
    {
      *(&v110 + 1) = 0;
      v102 = sanitize_internal_controls(v101, v102);
      convert_internal_controls(&v101);
      if (*(a7 + 1) >= 2)
      {
        v92 = *MEMORY[0x29EDCA610];
        v93 = v102;
        v94 = getRealTime();
        fprintf(v92, "LargeFile: Constructed %zu controls in %0.2f (s).\n", v93, v94 - RealTime);
      }

      v54 = 0;
      v95 = v102;
      *a5 = v101;
      *a6 = v95;
      goto LABEL_38;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 725, 112, 0, "ThreadPipelineDestroy failed", v90, v91, v98);
    *(&v110 + 1) = 0;
LABEL_37:
    v54 = 1;
    goto LABEL_38;
  }

  v82 = 1;
  while (1)
  {
    v83 = ThreadPipelineGetWorker(*(&v110 + 1), v77, v78, v79, v80, v81, v24, v25);
    if (!v83)
    {
      break;
    }

    *(v83 + 32) = v82 - 1;
    if ((ThreadPipelineRunWorker(*(&v110 + 1), v83, v84, v85, v86, v87, v24, v25) & 0x80000000) != 0 || (v88 = atomic_load(v112)) != 0)
    {
      v96 = "RunWorker";
      v97 = 723;
      goto LABEL_76;
    }

    v89 = v82++;
    if (a4 <= v89 << 21)
    {
      v76 = *(&v110 + 1);
      goto LABEL_68;
    }
  }

  v96 = "getting worker from pipeline";
  v97 = 718;
LABEL_76:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", v97, 112, 0, v96, v24, v25, v98);
  v54 = 1;
LABEL_38:
  ThreadPipelineDestroy(*(&v110 + 1));
  free(v111[0]);
  free(v111[1]);
  free(v108[0]);
  pc_array_free(*(&v107 + 1));
  if (v54)
  {
    free(v101);
    *a5 = 0;
    *a6 = 0;
  }

  return (v54 << 31 >> 31);
}

char *add_control(char *__ptr, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __ptr;
  v13 = *a2;
  if (*a2 < *a3)
  {
    goto LABEL_2;
  }

  v15 = v13 + (v13 >> 1) + 1;
  *a3 = v15;
  if (*a2 >= v15)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 213, 112, 0, "too many controls", a7, a8, v21);
    free(v12);
    return 0;
  }

  if (24 * v15 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_10:
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 215, 112, *v17, "aaReallocf", v18, v19, v21);
    return 0;
  }

  v16 = realloc(__ptr, 24 * v15);
  if (!v16)
  {
    free(v12);
    goto LABEL_10;
  }

  v13 = *a2;
  v12 = v16;
LABEL_2:
  *a2 = v13 + 1;
  v14 = &v12[24 * v13];
  *v14 = a4;
  *(v14 + 1) = a5;
  *(v14 + 2) = a6;
  return v12;
}

uint64_t sanitize_internal_controls(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2 >= 2)
  {
    v3 = &a1[3 * a2];
    v4 = a1 + 3;
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = v5;
      while (1)
      {
        v5 = v4;
        v8 = *v4;
        if (!v8)
        {
          v9 = *(v6 + 1) + v7[4];
          goto LABEL_9;
        }

        if (*(v6 + 1) || *v6 + *(v6 + 2) != v7[5])
        {
          break;
        }

        *v6 += v8;
        v9 = v7[4];
LABEL_9:
        *(v6 + 1) = v9;
        v4 = v5 + 3;
        v7 = v5;
        if ((v5 + 3) >= v3)
        {
          v2 = v6;
          return -1431655765 * ((v2 - a1) >> 3) + 1;
        }
      }

      v2 = v6 + 24;
      v10 = *v5;
      *(v6 + 5) = v5[2];
      *(v6 + 24) = v10;
      v4 = v5 + 3;
      v6 += 24;
    }

    while ((v5 + 3) < v3);
  }

  return -1431655765 * ((v2 - a1) >> 3) + 1;
}

uint64_t convert_internal_controls(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = 1;
    v4 = *(result + 8);
    do
    {
      v5 = *v2;
      v6 = v2[2] + *v2;
      if (v3 < v1)
      {
        v6 = v2[5];
      }

      if (v5 < 0)
      {
        v5 = 0x8000000000000000 - v5;
      }

      v7 = v2[1];
      if (v7 < 0)
      {
        v7 = 0x8000000000000000 - v7;
      }

      v8 = v6 - (v2[2] + *v2);
      if (v8 < 0)
      {
        v8 = 0x8000000000000000 - v8;
      }

      *v2 = v5;
      v2[1] = v7;
      v2[2] = v8;
      ++v3;
      v2 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t GetLargeFileControls(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v14 = AAMemoryInputStreamOpen(a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = AAMemoryInputStreamOpen(a3, a4, v15, v16, v17, v18, v19, v20);
  v24 = v21;
  if (!v14 || !v21)
  {
    v26 = "AAMemoryInputStreamOpen";
    v27 = 758;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControls", v27, 112, 0, v26, v22, v23, v29);
    v25 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if ((GetLargeFileControlsWithStreams(v14, a2, v21, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v26 = "GetLargeFileControlsWithStreams";
    v27 = 761;
    goto LABEL_7;
  }

  v25 = 0;
LABEL_8:
  AAByteStreamClose(v14);
  AAByteStreamClose(v24);
  return v25;
}

uint64_t chunk_compare_by_position(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

char *convert_block_controls(unint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a2;
  v26 = 0;
  *a1 = 0;
  if (a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = &v25[24 * v11];
      if (*v14 >= 0)
      {
        v15 = *v14;
      }

      else
      {
        v15 = 0x8000000000000000 - *v14;
      }

      while (1)
      {
        v16 = v12 & 0xFFFFF;
        v17 = 0x100000 - (v12 & 0xFFFFF);
        if (v17 >= v15)
        {
          break;
        }

        v18 = add_control(v13, a1, &v26, 0x100000 - (v12 & 0xFFFFF), 0, *(a4 + 16 * (v12 >> 20)) + v16, a7, a8);
        if (!v18)
        {
          v23 = 251;
LABEL_18:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "convert_block_controls", v23, 112, 0, "add_control", a7, a8, v25);
          goto LABEL_19;
        }

        v13 = v18;
        v15 -= v17;
        v12 += v17;
      }

      v19 = v14[1];
      if (v19 >= 0)
      {
        v20 = v14[1];
      }

      else
      {
        v20 = 0x8000000000000000 - v19;
      }

      v21 = add_control(v13, a1, &v26, v15, v20, *(a4 + 16 * (v12 >> 20)) + v16, a7, a8);
      if (!v21)
      {
        v23 = 255;
        goto LABEL_18;
      }

      v13 = v21;
      v22 = v14[2];
      if (v22 < 0)
      {
        v22 = 0x8000000000000000 - v22;
      }

      v12 += v15 + v22;
      ++v11;
    }

    while (v11 != a3);
  }

  else
  {
LABEL_19:
    v13 = 0;
  }

  free(v25);
  return v13;
}

uint64_t fingerprint_worker(uint64_t *a1)
{
  v2 = a1[3];
  if (v2 < 0x11)
  {
    return 0;
  }

  if (v2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 325, 112, 0, "aaMalloc", v4, v5, v40);
    v8 = 0;
    v15 = 0;
    goto LABEL_32;
  }

  v6 = *a1;
  v7 = malloc(v2);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v15 = pc_array_init(16);
  if (!v15)
  {
    v23 = "pc_array_init";
    v24 = 329;
    goto LABEL_31;
  }

  v16 = a1[3];
  v17 = *(v6 + 16);
  if (!v17[4])
  {
    v18 = -1;
LABEL_18:
    if (v16 != v18)
    {
      v23 = "aaByteStreamPReadExpected";
      v24 = 333;
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v16)
  {
    v18 = 0;
    v19 = a1[2];
    v20 = v8;
    v21 = a1[3];
    while (1)
    {
      v22 = (v17[4])(*v17, v20, v21, v19);
      if (v22 < 0)
      {
        break;
      }

      if (v22)
      {
        v20 += v22;
        v18 += v22;
        v19 += v22;
        v21 -= v22;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v18 = v22;
    goto LABEL_18;
  }

LABEL_19:
  v25 = 0;
  v26 = 0;
  do
  {
    v26 = -1640531535 * (v26 + v8[v25++]);
  }

  while (v25 != 16);
  v27 = a1[3];
  if (v27 < 0x11)
  {
LABEL_29:
    v3 = 0;
    a1[1] = v15;
    v15 = 0;
    goto LABEL_33;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = *(v6 + 72) << 8;
  while (1)
  {
    if (v31 < v30 || v31 < v29 && (*(v6 + 68) & ~v26) != 0)
    {
      goto LABEL_28;
    }

    v33 = *(v6 + 72);
    v40 = v31 + a1[2];
    v34 = __ROR8__(__ROR8__(2654435761 * *&v8[v31], 41) + 2654435761 * *&v8[v31 + 8], 41);
    v35 = v26 >> -*(v6 + 64);
    v41 = HIDWORD(v34) ^ v34;
    v42 = v35;
    v15 = pc_array_append(v15, &v40, v9, v10, v11, v12, v13, v14);
    if (!v15)
    {
      break;
    }

    v29 = v31 + (2 * v33);
    v36 = v28 + (v32 >> 8);
    v37 = v32 + v31;
    v32 = v31 + v32 - v36;
    v30 = v31 + v33 - ((v37 - v36) >> 8);
    v27 = a1[3];
    v28 = v31;
LABEL_28:
    v26 = -1640531535 * (v26 + v8[v31 + 16]) - *(v6 + 76) * v8[v31];
    v38 = v31 + 17;
    ++v31;
    if (v38 >= v27)
    {
      goto LABEL_29;
    }
  }

  v23 = "pc_array_append";
  v24 = 361;
LABEL_31:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", v24, 112, 0, v23, v13, v14, v40);
LABEL_32:
  v3 = 0xFFFFFFFFLL;
LABEL_33:
  free(v8);
  pc_array_free(v15);
  return v3;
}

uint64_t fingerprint_consumer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 - 64);
  if (!v9)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = (v8 + 16 * v11);
    v14 = *(a1 + 40);
    v15 = v13[3];
    v16 = *(v14 + 4 * v15);
    if (v16 != -1)
    {
      v17 = *(v14 + 4 * v15);
      while (1)
      {
        v18 = *(a1 + 32) + 16 * v17;
        if (v13[2] == *(v18 + 8))
        {
          break;
        }

        v17 = *(v18 + 12);
        if (v17 == -1)
        {
          goto LABEL_8;
        }
      }

      if (*v18 < *v13)
      {
        *v18 = *v13;
      }

      goto LABEL_9;
    }

LABEL_8:
    v13[3] = v16;
    v19 = *(a1 + 32);
    *(v14 + 4 * v15) = *(v19 - 64);
    v20 = pc_array_append(v19, v13, a3, a4, a5, a6, a7, a8);
    *(a1 + 32) = v20;
    if (!v20)
    {
      break;
    }

LABEL_9:
    v12 = ++v11 < v9;
    if (v11 == v9)
    {
      goto LABEL_13;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_consumer", 413, 112, 0, "pc_array_append", a7, a8, v23);
  v21 = (v12 << 31 >> 31);
LABEL_16:
  pc_array_free(v8);
  return v21;
}

uint64_t ParallelCompressionEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v8 = *(a1 + 4);
  LODWORD(v15) = *a1;
  v14 = *(a1 + 16);
  v12[1] = 0;
  v13 = v8;
  v12[0] = *(a1 + 8);
  v9 = *(a1 + 40);
  v11[0] = *(a1 + 24);
  v11[1] = v9;
  v11[2] = *(a1 + 56);
  return PCompressFilter(v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t ParallelCompressionDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0u;
  v13 = 0u;
  v8 = *(a1 + 4);
  DWORD2(v13) = *a1;
  DWORD1(v12) = 1;
  DWORD2(v12) = v8;
  v9 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v9;
  v11[2] = *(a1 + 40);
  return PCompressFilter(&v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t (*PCompressGetEncoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1E9B3C0[a1];
  }
}

uint64_t (*PCompressGetDecoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1E9B3F8[a1];
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
    return (&off_29EE89AA8)[a1];
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
    return (&off_29EE89AE0)[a1];
  }
}

void *aaCacheStreamOpen(AAByteStream_impl *a1, unint64_t a2, int a3, int a4, unint64_t a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x70uLL);
  v14 = v11;
  if (!v10 || !v11)
  {
    v18 = *__error();
    v16 = "aaCalloc";
    v17 = 472;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", v17, 146, v18, v16, v12, v13, v35);
    free(v10);
    aaCacheStreamClose(v14, v27, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  *v11 = a1;
  v11[26] = a4;
  v11[27] = a5 >> 62;
  v15 = ((1 << a3) - 1);
  v11[23] = 1 << a3;
  v11[24] = v15;
  v11[21] = (v15 | a2) >> a3;
  v11[22] = a3;
  if (a2 - 1073741825 <= 0xFFFFFFFFBFFFFFFFLL)
  {
    v16 = "cache too big";
    v17 = 484;
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v19 = AAByteStreamSeek(a1, 0, 2);
  *(v14 + 24) = v19;
  *(v14 + 32) = v19;
  if (v19 < 0)
  {
    v16 = "AAByteStreamSeek";
    v17 = 488;
    goto LABEL_17;
  }

  v20 = *(v14 + 84);
  if (v20 >= 0xCCCCCCCD)
  {
    *__error() = 12;
    *(v14 + 72) = 0;
LABEL_16:
    v16 = "aaCalloc";
    v17 = 492;
    goto LABEL_17;
  }

  v21 = calloc(v20, 0x28uLL);
  *(v14 + 72) = v21;
  if (!v21)
  {
    goto LABEL_16;
  }

  if (*(v14 + 84))
  {
    v22 = 0;
    v23 = 0;
    v24 = *(v14 + 92);
    while (1)
    {
      v25 = calloc(1uLL, v24);
      v26 = *(v14 + 72) + v22;
      *(v26 + 16) = v25;
      if (!v25)
      {
        break;
      }

      bzero(v25, *(v14 + 92));
      *v26 = -1;
      v24 = *(v14 + 92);
      *(v26 + 28) = 0;
      *(v26 + 32) = 0;
      *(v26 + 24) = v24;
      ++v23;
      v22 += 40;
      if (v23 >= *(v14 + 84))
      {
        goto LABEL_15;
      }
    }

    v16 = "aaCalloc";
    v17 = 498;
    goto LABEL_17;
  }

LABEL_15:
  AACustomByteStreamSetData(v10, v14);
  AACustomByteStreamSetSeekProc(v10, aaCacheStreamSeek);
  AACustomByteStreamSetPReadProc(v10, aaCacheStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, aaCacheStreamPWrite);
  AACustomByteStreamSetReadProc(v10, aaCacheStreamRead);
  AACustomByteStreamSetWriteProc(v10, aaCacheStreamWrite);
  AACustomByteStreamSetCancelProc(v10, aaCacheStreamCancel);
  AACustomByteStreamSetCloseProc(v10, aaCacheStreamClose);
  v10[8] = aaCacheStreamTruncate;
  return v10;
}

uint64_t aaCacheStreamSeek(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 100))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 16;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_11;
        }

        v9 = 24;
      }

      a2 += *(a1 + v9);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a1 + 16) = a2;
      return a2;
    }

LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamSeek", 392, 146, 0, "bad seek", a7, a8, v8);
    return -1;
  }

  return -1;
}

uint64_t aaCacheStreamPRead(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v9 = a4;
  v11 = *(a1 + 24);
  v12 = v11 <= a4;
  v13 = v11 - a4;
  if (v12)
  {
    return 0;
  }

  if (v13 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    v8 = 0;
    while (1)
    {
      v16 = *(a1 + 96);
      if (*(a1 + 92) - (v9 & v16) >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(a1 + 92) - (v9 & v16);
      }

      v18 = cachePageGet(a1, v9 & ~v16, a3, a4, a5, a6, a7, a8);
      if (!v18)
      {
        v29 = "cachePageGet";
        v30 = 224;
        goto LABEL_25;
      }

      v25 = v18;
      v26 = v16 & v9;
      if ((v26 < *(v18 + 24) || (v26 + v17) > *(v18 + 28)) && (cachePageReadFromDisk(a1, v18, v19, v20, v21, v22, v23, v24) & 0x80000000) != 0)
      {
        break;
      }

      memcpy(a2, (*(v25 + 16) + v26), v17);
      ++*(a1 + 40);
      v27 = *(a1 + 8) + 1;
      *(a1 + 8) = v27;
      *(v25 + 8) = v27;
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v8 += v17;
      a2 += v17;
      v9 += v17;
      v14 -= v17;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    v29 = "cachePageReadFromDisk";
    v30 = 229;
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", v30, 146, 0, v29, v23, v24, v31);
LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPRead", 313, 146, 0, "cacheRead", a7, a8, v31);
    return -1;
  }

  v8 = 0;
LABEL_21:
  *(a1 + 16) = v9;
  return v8;
}

uint64_t aaCacheStreamPWrite(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v8 = a4;
  v9 = a3;
  if (a3)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 96);
      if (*(a1 + 92) - (v8 & v13) >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = *(a1 + 92) - (v8 & v13);
      }

      v15 = cachePageGet(a1, v8 & ~v13, a3, a4, a5, a6, a7, a8);
      if (!v15)
      {
        v30 = "cachePageGet";
        v31 = 254;
        goto LABEL_27;
      }

      v22 = v15;
      v23 = v13 & v8;
      v24 = v23 + v14;
      v25 = *(v15 + 24);
      v26 = *(v15 + 28);
      if (v25 < v26)
      {
        v27 = v24 < v25 || v23 > v26;
        if (v27 && (cachePageReadFromDisk(a1, v15, v16, v17, v18, v19, v20, v21) & 0x80000000) != 0)
        {
          break;
        }
      }

      memcpy((*(v22 + 16) + v23), a2, v14);
      ++*(a1 + 48);
      if (v23 < *(v22 + 24))
      {
        *(v22 + 24) = v23;
      }

      if (v24 > *(v22 + 28))
      {
        *(v22 + 28) = v24;
      }

      v28 = *(a1 + 8) + 1;
      *(a1 + 8) = v28;
      *(v22 + 8) = v28;
      *(v22 + 32) = 1;
      v29 = v8 + v14;
      if (*(a1 + 24) < v29)
      {
        *(a1 + 24) = v29;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v12 += v14;
      a2 += v14;
      v8 += v14;
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    v30 = "cachePageReadFromDisk";
    v31 = 262;
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", v31, 146, 0, v30, v20, v21, v33);
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPWrite", 346, 146, 0, "cacheWrite", a7, a8, v33);
    return -1;
  }

  v12 = 0;
LABEL_25:
  *(a1 + 16) = v8;
  return v12;
}

uint64_t aaCacheStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 72))
    {
      if ((cacheFlush(result, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 440, 146, 0, "cacheFlush", v9, v10, v18);
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      if (*(v8 + 84))
      {
        v12 = 0;
        v13 = 16;
        do
        {
          free(*(*(v8 + 72) + v13));
          ++v12;
          v13 += 40;
        }

        while (v12 < *(v8 + 84));
      }

      free(*(v8 + 72));
    }

    else
    {
      v11 = 1;
    }

    if (*(v8 + 104) && AAByteStreamClose(*v8) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 446, 146, 0, "AAByteStreamClose", v14, v15, v18);
      v11 = 0;
    }

    if (*(v8 + 108) >= 1)
    {
      v16 = *(v8 + 56);
      v17 = *(v8 + 64);
      fprintf(*MEMORY[0x29EDCA610], "CacheStream: read ops %zu/%zu, write ops %zu/%zu\n", v16, *(v8 + 40), v17, *(v8 + 48));
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

uint64_t aaCacheStreamTruncate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v8;
  if ((cacheFlush(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v14 = "cacheFlush";
    v15 = 411;
  }

  else
  {
    if ((AAByteStreamTruncate(*a1) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 24) = a2;
      *(a1 + 32) = a2;
      return result;
    }

    v14 = "AAByteStreamTruncate";
    v15 = 412;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", v15, 146, 0, v14, v12, v13, v16);
  return 0xFFFFFFFFLL;
}

uint64_t cachePageGet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 72);
  v9 = *(a1 + 84) - 1;
  v10 = v9 & ((0x16069317E428CA9 * a2) >> 32);
  v11 = v8 + 40 * v10;
  if (*v11 != a2)
  {
    v14 = v10 & 0xFFFFFC00;
    v15 = v10 | 0x3FF;
    if (v15 >= v9)
    {
      v15 = *(a1 + 84) - 1;
    }

    if (v14 <= v15)
    {
      v16 = v14;
      while (1)
      {
        v17 = (v8 + 40 * v14);
        if (*v17 == a2)
        {
          break;
        }

        if (v17[1] < *(v8 + 40 * v16 + 8))
        {
          v16 = v14;
        }

        if (++v14 > v15)
        {
          goto LABEL_11;
        }
      }
    }

    v16 = v14;
LABEL_11:
    v18 = *(v11 + 32);
    v20 = *v11;
    v19 = *(v11 + 16);
    v21 = v8 + 40 * v16;
    v22 = *(v21 + 32);
    v23 = *(v21 + 16);
    *v11 = *v21;
    *(v11 + 16) = v23;
    *(v11 + 32) = v22;
    v24 = *(a1 + 72) + 40 * v16;
    *v24 = v20;
    *(v24 + 16) = v19;
    *(v24 + 32) = v18;
    if (*v11 != a2)
    {
      if ((cachePageEvict(a1, v11, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageGet", 162, 146, 0, "cachePageEvict", v25, v26, v29);
        return 0;
      }

      else
      {
        bzero(*(v11 + 16), *(a1 + 92));
        v27 = *(a1 + 92);
        *(v11 + 28) = 0;
        *(v11 + 32) = 0;
        *(v11 + 24) = v27;
        *v11 = a2;
      }
    }
  }

  return v11;
}

uint64_t cachePageReadFromDisk(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 6);
  v10 = *(a2 + 7);
  if (v10 >= v11)
  {
    v12 = v10 - v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 8);
  if (v10 <= v11 || v13 == 0)
  {
    v15 = 0;
  }

  else
  {
    v16 = malloc(v12);
    v15 = v16;
    if (!v16)
    {
      v24 = "aaMalloc";
      v25 = 184;
LABEL_33:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", v25, 146, 0, v24, a7, a8, v30);
      v27 = 0xFFFFFFFFLL;
      goto LABEL_34;
    }

    memcpy(v16, (a2[2] + v11), v12);
  }

  v17 = *a2;
  if (a1[4] - *a2 >= *(a1 + 23))
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[4] - *a2;
  }

  if (v18 < 1)
  {
    goto LABEL_26;
  }

  v19 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_32;
  }

  v31 = v10;
  v32 = v12;
  v20 = 0;
  v21 = a2[2];
  v22 = v18;
  while (1)
  {
    v23 = (*(v19 + 32))(*v19, v21, v22, v17);
    if (v23 < 0)
    {
      break;
    }

    if (v23)
    {
      v21 += v23;
      v20 += v23;
      v17 += v23;
      v22 -= v23;
      if (v22)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  v20 = v23;
LABEL_24:
  v12 = v32;
  v10 = v31;
  if (v18 != v20)
  {
LABEL_32:
    v24 = "AAByteStreamPRead";
    v25 = 193;
    goto LABEL_33;
  }

  ++a1[7];
  v13 = *(a2 + 8);
LABEL_26:
  if (v10 > v11 && v13 != 0)
  {
    memcpy((a2[2] + *(a2 + 6)), v15, v12);
  }

  v27 = 0;
  v28 = *(a1 + 23);
  *(a2 + 6) = 0;
  *(a2 + 7) = v28;
LABEL_34:
  free(v15);
  return v27;
}

uint64_t cachePageEvict(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 25))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 28);
  if (v11 <= v10)
  {
    return 0;
  }

  v24 = v8;
  v13 = *a2 + v10;
  v14 = v11 - v10;
  if (v14 >= a1[3] - v13)
  {
    v15 = a1[3] - v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0)
  {
    v22 = "bad page";
    v23 = 87;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", v23, 146, 0, v22, a7, a8, v24);
    return 0xFFFFFFFFLL;
  }

  v16 = *a1;
  if (!*(*a1 + 40))
  {
    goto LABEL_20;
  }

  v17 = 0;
  v18 = *(a2 + 16) + v10;
  v19 = *a2 + v10;
  v20 = v15;
  while (1)
  {
    v21 = (*(v16 + 40))(*v16, v18, v20, v19);
    if (v21 < 1)
    {
      break;
    }

    v18 += v21;
    v17 += v21;
    v19 += v21;
    v20 -= v21;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  v17 = v21;
LABEL_17:
  if (v15 != v17)
  {
LABEL_20:
    v22 = "aaByteStreamPWriteExpected";
    v23 = 90;
    goto LABEL_21;
  }

  ++a1[8];
  result = 0;
  if (a1[4] < v15 + v13)
  {
    a1[4] = v15 + v13;
  }

  return result;
}

uint64_t cacheFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 84))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while ((cachePageEvict(a1, *(a1 + 72) + v11, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    v15 = *(a1 + 72) + v11;
    bzero(*(v15 + 16), *(a1 + 92));
    *v15 = -1;
    v16 = *(a1 + 92);
    *(v15 + 28) = 0;
    *(v15 + 32) = 0;
    *(v15 + 24) = v16;
    ++v12;
    v11 += 40;
    if (v12 >= *(a1 + 84))
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheFlush", 115, 146, 0, "cachePageEvict", v13, v14, v8);
  return 0xFFFFFFFFLL;
}

size_t PCompressLZVNEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZVNDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t getOLDEntryType(unsigned __int16 a1)
{
  v1 = (((a1 & 0xF000) - 4096) >> 12) - 3;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2980697E8[v1];
  }
}

uint64_t getAAEntryType(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return *&patchCacheKeyFromSHA1_hex[4 * (v1 >> 12) + 16];
  }
}

void setAAHeaderFromHeader_v10(_DWORD *a1, uint64_t a2)
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

void *setAAHeaderFromHeader_ODC(int *a1, uint64_t a2)
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
  result = getAAEntryType(v16);
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

void *setAAHeaderFromHeader_NEWC(int *a1, uint64_t a2)
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
  result = getAAEntryType(v13);
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

uint64_t setHeaderFromValues_v10(uint64_t result, char a2, unint64_t a3, unint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int16 a9)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *result = 16;
  *(result + 1) = a2;
  *(result + 2) = bswap64(a3);
  *(result + 10) = bswap64(a4);
  *(result + 18) = bswap32(a5);
  *(result + 22) = __rev16(a6);
  *(result + 24) = __rev16(a7);
  *(result + 26) = __rev16(a8);
  *(result + 28) = __rev16(a9);
  return result;
}

uint64_t yaa_parseFields(const char *a1, _DWORD *a2, _WORD *a3)
{
  v6 = strlen(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x29EDCA600];
    while (1)
    {
      v12 = *&a1[v8] & 0xDFDFDF;
      if (v12 <= 0x4B4E4B)
      {
        if ((*&a1[v8] & 0xDFDFDFu) > 0x444946)
        {
          if ((*&a1[v8] & 0xDFDFDFu) > 0x464158)
          {
            switch(v12)
            {
              case 0x464159u:
                v10 |= 4u;
                goto LABEL_70;
              case 0x474C46u:
                v9 |= 8u;
                goto LABEL_70;
              case 0x4B4459u:
                v10 |= 0x10u;
                goto LABEL_70;
            }
          }

          else
          {
            switch(v12)
            {
              case 0x444947u:
                v9 |= 4u;
                goto LABEL_70;
              case 0x444955u:
                v9 |= 2u;
                goto LABEL_70;
              case 0x444F4Du:
                v9 |= 0x10u;
                goto LABEL_70;
            }
          }
        }

        else if ((*&a1[v8] & 0xDFDFDFu) > 0x124857)
        {
          switch(v12)
          {
            case 0x124858u:
              v10 |= 0x40u;
              goto LABEL_70;
            case 0x414459u:
              v10 |= 8u;
              goto LABEL_70;
            case 0x434559u:
              v10 |= 0x100u;
              goto LABEL_70;
          }
        }

        else
        {
          switch(v12)
          {
            case 0x114853u:
              v9 |= 0x2000u;
              goto LABEL_70;
            case 0x114858u:
              v10 |= 0x20u;
              goto LABEL_70;
            case 0x124853u:
              v9 |= 0x4000u;
              goto LABEL_70;
          }
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) <= 0x544143)
      {
        if ((*&a1[v8] & 0xDFDFDFu) > 0x505841)
        {
          switch(v12)
          {
            case 0x505842u:
              v10 |= 0x80u;
              goto LABEL_70;
            case 0x505954u:
              v9 |= 1u;
              goto LABEL_70;
            case 0x534B43u:
              v9 |= 0x1000u;
              goto LABEL_70;
          }
        }

        else
        {
          switch(v12)
          {
            case 0x4B4E4Cu:
              v9 |= 0x10000u;
              goto LABEL_70;
            case 0x4C4341u:
              v9 |= 0x800u;
              goto LABEL_70;
            case 0x4D544Du:
              v9 |= 0x100u;
              goto LABEL_70;
          }
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) <= 0x564543)
      {
        switch(v12)
        {
          case 0x544144u:
            v9 |= 0x200u;
            goto LABEL_70;
          case 0x544150u:
            v9 |= 0x8000u;
            goto LABEL_70;
          case 0x544158u:
            v9 |= 0x400u;
            goto LABEL_70;
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) > 0x5A4952)
      {
        if (v12 == 5917011)
        {
          v9 |= 0x80u;
          goto LABEL_70;
        }

        if (v12 == 5920068)
        {
          v10 |= 1u;
          goto LABEL_70;
        }
      }

      else
      {
        if (v12 == 5653828)
        {
          v9 |= 0x20u;
          goto LABEL_70;
        }

        if (v12 == 5784649)
        {
          v10 |= 2u;
          goto LABEL_70;
        }
      }

      if (v8 + 3 < v7)
      {
        v13 = 3;
        do
        {
          v14 = a1[v8 + v13];
          if ((v14 & 0x80000000) != 0)
          {
            if (!__maskrune(v14, 0x500uLL))
            {
              goto LABEL_71;
            }
          }

          else if ((*(v11 + 4 * v14 + 60) & 0x500) == 0)
          {
            goto LABEL_71;
          }

          ++v13;
        }

        while (v7 - v8 != v13);
        v13 = v7 - v8;
        goto LABEL_71;
      }

LABEL_70:
      v13 = 3;
LABEL_71:
      v8 += v13;
      v15 = a1[v8];
      if (v15 == 32 || v15 == 44)
      {
        ++v8;
      }

      else if (!a1[v8])
      {
        goto LABEL_77;
      }

      if (v8 >= v7)
      {
LABEL_77:
        if (a2)
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      }
    }
  }

  LOWORD(v10) = 0;
  v9 = 0;
  if (a2)
  {
LABEL_78:
    *a2 = v9;
  }

LABEL_79:
  if (a3)
  {
    *a3 = v10;
    a3[1] = 0;
  }

  return 0;
}

uint64_t yaa_serializeFields(_BYTE *a1, unint64_t a2, int a3, __int16 a4)
{
  if (a3)
  {
    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 80;
    *a1 = 22868;
    a1 += 3;
    v5 = 1;
    if ((a3 & 0x8000) == 0)
    {
LABEL_5:
      if ((a3 & 0x10000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v5 = 0;
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((a3 & 1) != 0 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16720;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x10000) == 0)
  {
LABEL_6:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_38:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 75;
  *a1 = 20044;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x20) == 0)
  {
LABEL_7:
    if ((a3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_45:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 86;
  *a1 = 17732;
  a1 += 3;
  v5 = 1;
  if ((a3 & 2) == 0)
  {
LABEL_8:
    if ((a3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_52:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 18773;
  a1 += 3;
  v5 = 1;
  if ((a3 & 4) == 0)
  {
LABEL_9:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_59:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 18759;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x10) == 0)
  {
LABEL_10:
    if ((a3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_66:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 20301;
  a1 += 3;
  v5 = 1;
  if ((a3 & 8) == 0)
  {
LABEL_11:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_80;
  }

LABEL_73:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 71;
  *a1 = 19526;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x100) == 0)
  {
LABEL_12:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }

LABEL_80:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 77;
  *a1 = 21581;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x200) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_87:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16708;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_101;
  }

LABEL_94:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 83;
  *a1 = 19267;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_108;
  }

LABEL_101:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 49;
  *a1 = 18515;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_115;
  }

LABEL_108:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 50;
  *a1 = 18515;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x400) == 0)
  {
LABEL_17:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_122:
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 76;
    *a1 = 17217;
    a1 += 3;
    v5 = 1;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_129;
  }

LABEL_115:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16728;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x800) != 0)
  {
    goto LABEL_122;
  }

LABEL_18:
  if ((a3 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_129:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 90;
  *a1 = 18771;
  a1 += 3;
  v5 = 1;
LABEL_19:
  if ((a4 & 0x80) != 0)
  {
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 80;
    *a1 = 22594;
    a1 += 3;
    v5 = 1;
    if ((a4 & 1) == 0)
    {
LABEL_21:
      if ((a4 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_150;
    }
  }

  else if ((a4 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 90;
  *a1 = 21828;
  a1 += 3;
  v5 = 1;
  if ((a4 & 2) == 0)
  {
LABEL_22:
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_157;
  }

LABEL_150:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 88;
  *a1 = 17481;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x20) == 0)
  {
LABEL_23:
    if ((a4 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_164;
  }

LABEL_157:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 49;
  *a1 = 18520;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x40) == 0)
  {
LABEL_24:
    if ((a4 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_171;
  }

LABEL_164:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 50;
  *a1 = 18520;
  a1 += 3;
  v5 = 1;
  if ((a4 & 4) == 0)
  {
LABEL_25:
    if ((a4 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_171:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 70;
  *a1 = 16729;
  a1 += 3;
  v5 = 1;
  if ((a4 & 8) == 0)
  {
LABEL_26:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_185;
  }

LABEL_178:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 65;
  *a1 = 17497;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x10) == 0)
  {
LABEL_27:
    if ((a4 & 0x100) == 0)
    {
      goto LABEL_28;
    }

LABEL_192:
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    v7 = a2 - 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 67;
    *a1 = 17753;
    a1 += 3;
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_29;
  }

LABEL_185:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 75;
  *a1 = 17497;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x100) != 0)
  {
    goto LABEL_192;
  }

LABEL_28:
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  v6 = 0;
  *a1 = 0;
  return v6;
}

uint64_t ECCGenerateThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc(*(a1 + 28));
    if (!v9)
    {
      v10 = "creating workBuffer";
      v11 = 66;
LABEL_25:
      v21 = 0;
LABEL_26:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", v11, 64, v21, v10, a7, a8, v23);
      goto LABEL_27;
    }
  }

  for (i = *(a1 + 8); i < *(a1 + 16); ++i)
  {
    v13 = *(a1 + 28);
    v14 = i * v13;
    v15 = *(a1 + 64);
    if (v15 < i * v13)
    {
      v10 = "Invalid block index";
      v11 = 74;
      goto LABEL_25;
    }

    if (v14 + v13 <= v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = (v15 - v14);
    }

    v17 = *(a1 + 40);
    if (v17 < 0)
    {
      v19 = *(a1 + 48) + v14;
    }

    else
    {
      v18 = pread(v17, v9, v16, *(a1 + 56) + v14);
      if (v18 < 0)
      {
        v21 = *__error();
        v10 = "reading data segment";
        v11 = 82;
        goto LABEL_26;
      }

      v19 = v9;
      if (v16 != v18)
      {
        v24 = *(a1 + 40);
        LOBYTE(v23) = v18;
        v10 = "Truncated read n=%zd pos=%llu read=%llu %s";
        v11 = 83;
        goto LABEL_25;
      }
    }

    v20 = *(a1 + 32);
    if (i * v20 + v20 > *(a1 + 80))
    {
      v10 = "Parity buffer out of range";
      v11 = 94;
      goto LABEL_25;
    }

    if (*(a1 + 24) != 1)
    {
      v23 = *(a1 + 24);
      v10 = "invalid variant %u";
      v11 = 101;
      goto LABEL_25;
    }

    if (ECC65537GetParity(v16, v19, *(a1 + 72) + i * v20))
    {
      LOBYTE(v23) = i;
      v10 = "generating parity block %llu\n";
      v11 = 99;
      goto LABEL_25;
    }
  }

LABEL_27:
  free(v9);
  return 0;
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

unint64_t ParallelArchiveECCGenerateCommon(int a1, char *a2, off_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v84 = *MEMORY[0x29EDCA608];
  DefaultNThreads = a7[1];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v15 = a7[4];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x4000;
  }

  v17 = *a7;
  v82 = 0uLL;
  v83 = 0;
  v80 = 0uLL;
  v81 = 0;
  RealTime = getRealTime();
  enterThreadErrorContext(v19, v20, v21, v22, v23, v24, v25, v26, v69);
  if (a7[3] != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 262, 64, 0, "Invalid ECC variant: %u", v27, v28, a7[3]);
    goto LABEL_10;
  }

  if (v16 >= 0x1FFE1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 258, 64, 0, "Invalid blockSize: %u", v27, v28, v16);
LABEL_10:
    v29 = 0;
LABEL_11:
    v30 = 0;
LABEL_12:
    v31 = 1;
    goto LABEL_13;
  }

  v77 = a2;
  v78 = a3;
  v38 = (a4 + v16 - 1) / v16;
  v29 = 34 * v38 + 48;
  if (!a5 && !a6)
  {
    v31 = 0;
    v30 = 0;
    goto LABEL_13;
  }

  if (v29 > a6)
  {
    v70 = 34 * v38 + 48;
    v39 = "Output buffer too small, %zu B required, %zu B provided";
    v40 = 273;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", v40, 64, 0, v39, v27, v28, v70);
    goto LABEL_11;
  }

  if (v38 >= DefaultNThreads)
  {
    v41 = DefaultNThreads;
  }

  else
  {
    v41 = (a4 + v16 - 1) / v16;
  }

  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  if (a1 < 0)
  {
    if ((getBufferSHA1Digest(v77, a4, &v82) & 0x80000000) != 0)
    {
      v39 = "computing buffer digest";
      v40 = 287;
      goto LABEL_31;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(a1, v78, a4, &v82) & 0x80000000) != 0)
  {
    v39 = "computing file digest";
    v40 = 283;
    goto LABEL_31;
  }

  v43 = (v38 + v42 - 1) / v42;
  v73 = v17;
  v72 = v42;
  if (v17 >= 1)
  {
    memset(v79, 0, sizeof(v79));
    sha1ToString(v79, &v82);
    v44 = MEMORY[0x29EDCA610];
    fwrite("ParallelArchiveECCGenerateCommon:\n", 0x22uLL, 1uLL, *MEMORY[0x29EDCA610]);
    fprintf(*v44, "  Input data SHA1: %s\n", v79);
    fwrite("  ECC variant: ", 0xFuLL, 1uLL, *v44);
    if (a7[3] == 1)
    {
      fwrite("RS65537\n", 8uLL, 1uLL, *v44);
    }

    fprintf(*v44, "%12llu data size\n", a4);
    fprintf(*v44, "%12u block size\n", v16);
    fprintf(*v44, "%12u ECC parity size per block\n", 34);
    fprintf(*v44, "%11.2f%% parity/data ratio\n", 3400.0 / v16);
    fprintf(*v44, "%12zu block count\n", (a4 + v16 - 1) / v16);
    fprintf(*v44, "%12zu ECC buffer size\n", 34 * v38 + 48);
    fprintf(*v44, "%12u worker threads\n", v72);
    v45 = *v44;
    v42 = v72;
    fprintf(v45, "%12zu blocks per thread\n", v43);
  }

  v46 = calloc(v42, 0x58uLL);
  v47 = v42;
  v30 = v46;
  if (!v46)
  {
    v62 = v47;
    v63 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 313, 64, *v63, "malloc %u threads", v64, v65, v62);
    goto LABEL_12;
  }

  v48 = 0;
  v49 = a5;
  v50 = 0;
  v71 = v49;
  v75 = v49 + 48;
  v76 = a4;
  v51 = 88 * v47;
  v74 = 1;
  do
  {
    v52 = v43 * v50;
    if (v43 * v50 < v38)
    {
      v53 = v52 + v43;
      if (v52 + v43 >= v38)
      {
        v53 = v38;
      }

      v54 = &v30[v48];
      *(v54 + 1) = v52;
      *(v54 + 2) = v53;
      *(v54 + 10) = a1;
      *(v54 + 6) = v77;
      *(v54 + 7) = v78;
      *(v54 + 8) = v76;
      *(v54 + 9) = v75;
      *(v54 + 10) = 34 * v38;
      *(v54 + 6) = a7[3];
      *(v54 + 7) = v16;
      *(v54 + 4) = 34;
      if (createThread(&v30[v48], ECCGenerateThreadProc, &v30[v48], 0))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 336, 64, 0, "createThread", v55, v56, v70);
        v74 = 0;
      }
    }

    ++v50;
    v48 += 88;
  }

  while (v51 != v48);
  v57 = 0;
  LOBYTE(v31) = v74 == 0;
  while (2)
  {
    v58 = 88 * v57++;
    while (1)
    {
      v59 = *&v30[v58];
      if (v59)
      {
        if (joinThread(v59))
        {
          break;
        }
      }

      ++v57;
      v58 += 88;
      if (v57 - v72 == 1)
      {
        v17 = v73;
        if (v31)
        {
          v31 = 1;
          a4 = v76;
          a5 = v71;
        }

        else
        {
          v31 = 0;
          v66 = v82;
          v80 = v82;
          v67 = v83;
          v81 = v83;
          v68 = a7[3];
          a5 = v71;
          a4 = v76;
          *v71 = 0x3031304343455842;
          *(v71 + 8) = v76;
          *(v71 + 16) = v66;
          *(v71 + 32) = v67;
          *(v71 + 36) = v68;
          *(v71 + 40) = v16;
          *(v71 + 44) = 0;
        }

        goto LABEL_13;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 343, 64, 0, "joinThread", v60, v61, v70);
    v31 = 1;
    if (v57 != v72)
    {
      continue;
    }

    break;
  }

  a4 = v76;
  a5 = v71;
  v17 = v73;
LABEL_13:
  free(v30);
  v32 = leaveThreadErrorContext(0, 0, 0);
  if (v32 < 0)
  {
    v29 = v32;
  }

  else
  {
    v33 = v17;
    if (v31)
    {
      v34 = -1;
    }

    else
    {
      v34 = v32;
    }

    if (a5 && v31 != 1 && v33 >= 1)
    {
      v35 = getRealTime();
      fprintf(*MEMORY[0x29EDCA610], "Total time %.2fs, %.2f MB/s\n", v35 - RealTime, vcvtd_n_f64_u64(a4, 0x14uLL) / (v35 - RealTime));
      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v31)
    {
LABEL_24:
      v29 = v34;
    }
  }

LABEL_25:
  v36 = *MEMORY[0x29EDCA608];
  return v29;
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

uint64_t ParallelCompressionOStreamCreate(uint64_t a1)
{
  v3 = OEncoderStreamCreate(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 8), *(a1 + 4), *(a1 + 16), *a1);
  if (!v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionOStreamCreate", 20, 45, 0, "creating encoder failed", v1, v2, v5);
  }

  return v3;
}

uint64_t *ParallelCompressionIStreamCreate(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v14 = ILowMemoryDecoderStreamCreate(v4, v5, v6, v7);
      v3[1] = v14;
      if (!v14)
      {
LABEL_7:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionIStreamCreate", 63, 45, 0, "creating decoder failed", v9, v10, v16);
        free(v3);
        return 0;
      }
    }

    else
    {
      v8 = IDecoderStreamCreate(v4, v5, v6, v7, *a1);
      *v3 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionIStreamCreate", 51, 45, *v11, "malloc", v12, v13, v16);
  }

  return v3;
}

uint64_t ParallelCompressionIStreamRead(uint64_t *a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return -1;
  }

  if (a1[1])
  {
    return ILowMemoryDecoderStreamRead(a1[1], a2, a3);
  }

  return IDecoderStreamRead(*a1, a2, a3);
}

size_t ParallelCompressionIStreamAbort(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    if (*(result + 8))
    {
      return ILowMemoryDecoderStreamAbort(*(result + 8));
    }

    else
    {
      return IDecoderStreamAbort(*result, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }

  return result;
}

void ParallelCompressionIStreamDestroy(void **a1)
{
  if (a1)
  {
    ILowMemoryDecoderStreamDestroy(a1[1]);
    IDecoderStreamDestroy(*a1);

    free(a1);
  }
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

void **MemBufferCreateWithData(size_t a1, const void *a2)
{
  v4 = MemBufferCreate(a1);
  v5 = v4;
  if (v4)
  {
    memcpy(v4[4], a2, a1);
    v5[1] = a1;
    v5[2] = 0;
    v5[3] = a1;
  }

  return v5;
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

void *MemBufferClear(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
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

uint64_t MemBufferFillFromBufferWithCapacityIncrease(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = a1[1] + a2;
  if (v6 > *a1 && (MemBufferIncreaseCapacity(a1, v6) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  return MemBufferFillFromBuffer(a1, a2, a3);
}

uint64_t MemBufferFlushToBuffer(void *a1, size_t __n, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] >= __n)
  {
    memcpy(__dst, (a1[4] + a1[2]), __n);

    return MemBufferDecreaseSize(a1, __n, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToBuffer", 183, 36, 0, "MemBufferFlushToBuffer n is too large: %zu", a7, a8, __n);
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

void *MappedBufferCreateWithFilename(const char *a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v24, 0, sizeof(v24));
    v8 = getpagesize();
    *(v7 + 1) = 1;
    v9 = open(a1, 0);
    *v7 = v9;
    if (v9 < 0)
    {
      v13 = *__error();
      v23 = a1;
      v14 = "%s";
      v15 = 344;
      goto LABEL_7;
    }

    v10 = v9;
    if (fstat(v9, &v24))
    {
      v13 = *__error();
      v23 = a1;
      v14 = "%s";
      v15 = 347;
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", v15, 36, v13, v14, v11, v12, v23);
      MappedBufferDestroy(v7);
      return 0;
    }

    if (v24.st_size > a2)
    {
      if (a3 == -1)
      {
        a3 = v24.st_size - a2;
      }

      else if (a3 + a2 > v24.st_size)
      {
        v23 = a2;
        v14 = "invalid offset=%llu, size=%llu in file %s";
        v15 = 352;
LABEL_19:
        v13 = 0;
        goto LABEL_7;
      }

      if (a3)
      {
        v7[4] = a3;
        v20 = a2 / v8 * v8;
        v21 = a2 % v8;
        v7[2] = v21 + a3;
        v22 = mmap(0, v21 + a3, 1, 2, v10, v20);
        v7[1] = v22;
        if (v22 != -1)
        {
          v7[3] = &v22[v21];
          return v7;
        }

        v13 = *__error();
        v14 = "mmap file segment";
        v15 = 364;
        goto LABEL_7;
      }

      v23 = 0;
      v14 = "invalid size=%llu";
      v15 = 354;
      goto LABEL_19;
    }

    v23 = a2;
    v14 = "invalid offset=%llu in file %s";
    v15 = 348;
    goto LABEL_19;
  }

  v16 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", 329, 36, *v16, "malloc", v17, v18, v23);
  return v7;
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

uint64_t verifyDirThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v45 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  bzero(v44, 0x800uLL);
  bzero(v43, 0x800uLL);
  memset(&v38, 0, sizeof(v38));
  v3 = *(*v1 + 64);
  v2 = *(*v1 + 72);
  atomic_fetch_add_explicit((v1 + 2136), 1uLL, memory_order_relaxed);
  if (!concatPath(v44, 0x800uLL, (v1 + 8), (v0 + 152)))
  {
    if (lstat(v44, &v38))
    {
      v8 = *__error();
      v36 = v44;
      v6 = "%s";
      v7 = 81;
      goto LABEL_6;
    }

    v11 = *(v0 + 8);
    AAEntryType = getAAEntryType(v38.st_mode);
    v13 = *(v0 + 12);
    if (v13 == 72)
    {
      if (concatPath(v43, 0x800uLL, (v1 + 8), (v0 + 1176)))
      {
        LOBYTE(v36) = v0 - 104;
        v6 = "building full link path: %s";
        v7 = 93;
        goto LABEL_3;
      }

      memset(&v39, 0, sizeof(v39));
      if (lstat(v43, &v39))
      {
        v8 = *__error();
        v36 = v44;
        v6 = "%s";
        v7 = 97;
        goto LABEL_6;
      }

      if (v39.st_ino != v38.st_ino)
      {
        v14 = 64;
        goto LABEL_115;
      }

LABEL_117:
      v35 = 0;
      v34 = 0;
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_116;
    }

    if (AAEntryType != v13)
    {
      v14 = 1;
      goto LABEL_115;
    }

    if ((v11 & 2) != 0)
    {
      v14 = 2 * (*(v0 + 16) != v38.st_uid);
    }

    else
    {
      v14 = 0;
    }

    if ((v11 & 4) != 0)
    {
      if (*(v0 + 20) != v38.st_gid)
      {
        v14 |= 4u;
      }

      if ((v11 & 8) == 0)
      {
LABEL_20:
        if ((v11 & 0x10) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }
    }

    else if ((v11 & 8) == 0)
    {
      goto LABEL_20;
    }

    if (*(v0 + 24) != v38.st_flags)
    {
      v14 |= 8u;
    }

    if ((v11 & 0x10) == 0)
    {
LABEL_21:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (*(v0 + 28) != (v38.st_mode & 0xFFF))
    {
      v14 |= 0x10u;
    }

    if ((v11 & 0x80) == 0)
    {
LABEL_22:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_33:
    if (*(v0 + 48) != v38.st_size)
    {
      v14 |= 0x80u;
    }

    if ((v11 & 0x100) == 0)
    {
LABEL_40:
      if ((v11 & 0x10000) != 0 && AAEntryType == 76)
      {
        bzero(&v39, 0x400uLL);
        if (readlink(v44, &v39, 0x3FFuLL) < 0)
        {
          v8 = *__error();
          v36 = v44;
          v6 = "%s";
          v7 = 129;
          goto LABEL_6;
        }

        if (strcmp(&v39, (v0 + 1176)))
        {
          v14 |= 0x10000u;
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      if (AAEntryType != 70)
      {
        goto LABEL_114;
      }

      if ((v11 & 0x1000) != 0)
      {
        v15 = &v37;
      }

      else
      {
        if ((v11 & 0x6000) == 0)
        {
          goto LABEL_114;
        }

        v15 = 0;
      }

      v37 = 0;
      v41 = 0;
      v40 = 0;
      v42 = 0;
      memset(&v39, 0, 32);
      if ((v11 & 0x2000) != 0)
      {
        v16 = &v40;
      }

      else
      {
        v16 = 0;
      }

      if ((v11 & 0x4000) != 0)
      {
        v17 = &v39;
      }

      else
      {
        v17 = 0;
      }

      if ((getFileDigests(v44, v16, v17, v15) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirThreadProc", 141, 43, 0, "verification failed: %s", v18, v19, v44);
        atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
        if ((v11 & 0x1000) == 0)
        {
LABEL_61:
          if ((v11 & 0x2000) == 0)
          {
            goto LABEL_87;
          }

LABEL_67:
          if (v40 != *(v0 + 100) || v41 != *(v0 + 108) || v42 != *(v0 + 116))
          {
            v22 = *(v0 + 2200);
            if (v22)
            {
              v23 = *(v0 + 2216) + 8;
              while (1)
              {
                if (*(v23 - 4) == 5 && (*(v23 - 8) & 0xDFDFDF) == 0x114858)
                {
                  v24 = v40 == *v23 && v41 == *(v23 + 8);
                  if (v24 && v42 == *(v23 + 16))
                  {
                    break;
                  }
                }

                v23 += 1032;
                if (!--v22)
                {
                  goto LABEL_86;
                }
              }
            }

            else
            {
LABEL_86:
              v14 |= 0x2000u;
            }
          }

LABEL_87:
          if ((v11 & 0x4000) != 0)
          {
            v26 = *&v39.st_dev == *(v0 + 120) && v39.st_ino == *(v0 + 128);
            v27 = v26 && *&v39.st_uid == *(v0 + 136);
            if (!v27 || *&v39.st_rdev != *(v0 + 144))
            {
              v29 = *(v0 + 2200);
              if (!v29)
              {
LABEL_113:
                v14 |= 0x4000u;
                goto LABEL_115;
              }

              v30 = (*(v0 + 2216) + 8);
              while (1)
              {
                if (*(v30 - 1) == 6 && (*(v30 - 1) & 0xDFDFDF) == 0x124858)
                {
                  v31 = *&v39.st_dev == *v30 && v39.st_ino == v30[1];
                  v32 = v31 && *&v39.st_uid == v30[2];
                  if (v32 && *&v39.st_rdev == v30[3])
                  {
                    break;
                  }
                }

                v30 += 129;
                if (!--v29)
                {
                  goto LABEL_113;
                }
              }
            }
          }

LABEL_114:
          if (!v14)
          {
            goto LABEL_117;
          }

LABEL_115:
          atomic_fetch_add_explicit((v1 + 2160), 1uLL, memory_order_relaxed);
          v34 = v14;
          v35 = 3;
          if (!v3)
          {
            goto LABEL_7;
          }

LABEL_116:
          v3(v2, v35, v34, v0 + 8, *(v0 + 2216), *(v0 + 2200));
          goto LABEL_7;
        }
      }

      else if ((v11 & 0x1000) == 0)
      {
        goto LABEL_61;
      }

      if (v37 != *(v0 + 96))
      {
        v14 |= 0x1000u;
      }

      if ((v11 & 0x2000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_67;
    }

LABEL_36:
    if (AAEntryType != 68 && (*(v0 + 56) != v38.st_mtimespec.tv_sec || *(v0 + 64) / 0x3E8uLL != v38.st_mtimespec.tv_nsec / 0x3E8uLL))
    {
      v14 |= 0x100u;
    }

    goto LABEL_40;
  }

  LOBYTE(v36) = v0 - 104;
  v6 = "building full path: %s";
  v7 = 78;
LABEL_3:
  v8 = 0;
LABEL_6:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirThreadProc", v7, 43, v8, v6, v4, v5, v36);
  atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
LABEL_7:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t ParallelArchiveVerifyDir(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v59);
  bzero(v68, 0x880uLL);
  v67 = a1;
  DefaultNThreads = *(a1 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  LODWORD(__count) = DefaultNThreads;
  if (!realpath_DARWIN_EXTSN(*(a1 + 16), v68))
  {
    v25 = *__error();
    v26 = *(a1 + 16);
    v27 = 350;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", v27, 43, v25, v26, v11, v12, v60);
    goto LABEL_19;
  }

  v71 = calloc(__count, 0x8B0uLL);
  v10 = calloc(__count, 8uLL);
  v72 = v10;
  if (!v71 || !v10)
  {
    v25 = *__error();
    v26 = "malloc";
    v27 = 353;
    goto LABEL_18;
  }

  v69 = ArchiveTreeCreateFromDirectory(*(a1 + 16), 0, *(a1 + 48), *(a1 + 56), *(a1 + 4), *a1);
  if (!v69)
  {
    v26 = "creating directory tree";
    v27 = 357;
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v13 = __count;
  if (__count)
  {
    v14 = 0;
    do
    {
      v15 = (v71 + 2224 * v14);
      *v15 = &v67;
      *(v72 + v14++) = v15;
    }

    while (v14 != v13);
  }

  v73 = ThreadPoolCreate(v13, v72, verifyDirThreadProc);
  if (!v73)
  {
    v26 = "ThreadPoolCreate";
    v27 = 366;
    goto LABEL_17;
  }

  v61 = 0u;
  v62 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  DWORD1(v61) = *(a1 + 4);
  v21 = *(a1 + 40);
  *(&v61 + 1) = *(a1 + 24);
  *(&v62 + 1) = v21;
  *&v63 = verifyDirBeginEntry;
  *&v65 = verifyDirEndEntry;
  *(&v63 + 1) = verifyDirBlob;
  *&v64 = verifyDirPayload;
  v66 = &v67;
  if (ParallelArchiveRead(&v61, v16, v17, v18, v19, v20, v11, v12))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 379, 43, 0, "reading manifest", v22, v23, v60);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  if ((ThreadPoolDestroy(v73) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 382, 43, 0, "ThreadPoolDestroy failed", v38, v39, v60);
    v24 = 0;
    v73 = 0;
    goto LABEL_20;
  }

  v73 = 0;
  v40 = atomic_load(v81);
  if (v40 > 0)
  {
LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  if (*a1 >= 1)
  {
    v41 = MEMORY[0x29EDCA610];
    v42 = *MEMORY[0x29EDCA610];
    v43 = atomic_load(&v74);
    fprintf(v42, "%12lld entries in manifest\n", v43);
    v44 = *v41;
    v45 = atomic_load(&v75);
    fprintf(v44, "%12lld entries selected\n", v45);
    v46 = *v41;
    v47 = atomic_load(&v78);
    fprintf(v46, "%12lld entries added\n", v47);
    v48 = *v41;
    v49 = atomic_load(&v77);
    fprintf(v48, "%12lld entries removed\n", v49);
    v50 = *v41;
    v51 = atomic_load(&v76);
    fprintf(v50, "%12lld entries compared\n", v51);
    v52 = *v41;
    v53 = atomic_load(&v79);
    fprintf(v52, "%12lld entries compared -> modified\n", v53);
    v54 = *v41;
    v55 = atomic_load(&v76);
    v56 = atomic_load(&v79);
    fprintf(v54, "%12lld entries compared -> verified\n", v55 - v56);
    v57 = *v41;
    v58 = atomic_load(&v80);
    fprintf(v57, "%12lld bytes hashed\n", v58);
  }

LABEL_20:
  ArchiveTreeDestroy(v69);
  if ((ThreadPoolDestroy(v73) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 403, 43, 0, "ThreadPoolDestroy", v28, v29, v60);
    v24 = 0;
  }

  free(v72);
  v30 = v71;
  if (v71)
  {
    if (__count)
    {
      v31 = 0;
      v32 = 2216;
      do
      {
        free(*(v71 + v32));
        ++v31;
        v32 += 2224;
      }

      while (v31 < __count);
      v30 = v71;
    }

    free(v30);
  }

  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if (v24)
    {
      v34 = atomic_load(&v79);
      if (v34 || (v35 = atomic_load(&v78)) != 0)
      {
        result = 0;
      }

      else
      {
        v37 = atomic_load(&v77);
        result = v37 == 0;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verifyDirBeginEntry()
{
  result = MEMORY[0x2A1C7C4A8]();
  v40 = *MEMORY[0x29EDCA608];
  v5 = *(*result + 64);
  v4 = *(*result + 72);
  v6 = *(v1 + 4) == 77;
  *(result + 1084) = v6;
  if (!v6)
  {
    v7 = v3;
    v8 = v2;
    v9 = v1;
    v10 = result;
    atomic_fetch_add((result + 2120), 1uLL);
    v11 = *(*result + 48);
    if (!v11 || (result = v11(*(*result + 56), v1 + 144, *(v1 + 4)), result >= 1))
    {
      atomic_fetch_add((v10 + 2128), 1uLL);
      v12 = *(v10 + 1072);
      result = ArchiveTreeSize(*(v10 + 1032));
      if (v12 < result)
      {
        while (1)
        {
          if (ArchiveTreeNodePath(*(v10 + 1032), *(v10 + 1072), __s1, 0x800uLL) < 0)
          {
            v23 = "getting node path";
            v24 = 220;
            goto LABEL_27;
          }

          result = strcmp(__s1, v9 + 144);
          if ((result & 0x80000000) == 0)
          {
            break;
          }

          if (__s1[0])
          {
            atomic_fetch_add((v10 + 2152), 1uLL);
            if (v5)
            {
              bzero(v37, 0x890uLL);
              __strlcpy_chk();
              v38 = ArchiveTreeNodeEntryType(*(v10 + 1032), *(v10 + 1072));
              v5(v4, 2, 0, v37, 0, 0);
            }
          }

          v22 = *(v10 + 1072) + 1;
          *(v10 + 1072) = v22;
          if (v22 >= ArchiveTreeSize(*(v10 + 1032)))
          {
            goto LABEL_16;
          }
        }

        if (result)
        {
          goto LABEL_14;
        }

LABEL_16:
        Worker = ThreadPoolGetWorker(*(v10 + 1064), v15, v16, v17, v18, v19, v20, v21);
        if (Worker)
        {
          v26 = Worker;
          memcpy((Worker + 8), v9, 0x890uLL);
          if (*(v26 + 2208) >= v7)
          {
            v28 = *(v26 + 2216);
          }

          else
          {
            v27 = 16;
            if (v7 > 0x10)
            {
              v27 = v7;
            }

            *(v26 + 2208) = v27;
            v28 = reallocf(*(v26 + 2216), 1032 * v27);
            *(v26 + 2216) = v28;
            if (!v28)
            {
              v23 = "malloc";
              v24 = 272;
LABEL_27:
              result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirBeginEntry", v24, 43, 0, v23, v13, v14, v36);
              atomic_fetch_add_explicit((v10 + 2176), 1uLL, memory_order_relaxed);
              goto LABEL_28;
            }
          }

          memcpy(v28, v8, 1032 * v7);
          *(v26 + 2200) = v7;
          *(v26 + 8) &= *(*v10 + 8);
          result = ThreadPoolRunWorker(*(v10 + 1064), v26, v29, v30, v31, v32, v33, v34);
          if ((result & 0x80000000) == 0)
          {
            ++*(v10 + 1072);
            goto LABEL_28;
          }

          v23 = "ThreadPoolRunWorker failed";
          v24 = 281;
          goto LABEL_27;
        }

        v23 = "ThreadPoolGetWorker failed";
        v24 = 262;
        goto LABEL_27;
      }

LABEL_14:
      atomic_fetch_add((v10 + 2144), 1uLL);
      if (v5)
      {
        result = v5(v4, 1, 0, v9, v8, v7);
      }
    }
  }

LABEL_28:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

size_t verifyDirEndEntry(size_t result)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(result + 1084))
  {
    v1 = result;
    v2 = *(result + 2112);
    if ((v2 + 1) <= 0x3FF)
    {
      *(result + 1088 + v2) = 0;
      v11 = 0;
      result = yaa_parseFields((result + 1088), &v11, 0);
      if (result)
      {
        v5 = "parsing YAF metadata field";
        v6 = 296;
LABEL_5:
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirEndEntry", v6, 43, 0, v5, v3, v4, v10);
        atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
        goto LABEL_6;
      }

      v8 = *(*v1 + 8) & v11;
      v9 = MEMORY[0x29EDCA610];
      if (**v1 >= 1)
      {
        bzero(v12, 0x400uLL);
        fprintf(*v9, "Manifest fields: %s\n", (v1 + 1088));
        if (yaa_serializeFields(v12, 0x400uLL, v8, 0))
        {
          v5 = "serializing fields";
          v6 = 307;
          goto LABEL_5;
        }

        result = fprintf(*v9, "Comparison fields: %s\n", v12);
      }

      if ((v8 & 0x400) != 0)
      {
        result = fwrite("Warning: XAT field verification is not implemented\n", 0x33uLL, 1uLL, *v9);
      }

      if ((v8 & 0x800) != 0)
      {
        result = fwrite("Warning: ACL field verification is not implemented\n", 0x33uLL, 1uLL, *v9);
      }
    }
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verifyDirBlob(uint64_t result, char *a2)
{
  v2 = result;
  v3 = *(result + 1084);
  if (v3)
  {
    result = strncasecmp(a2, "YAF", 3uLL);
    v3 = result == 0;
  }

  *(v2 + 1080) = v3;
  return result;
}

char *verifyDirPayload(char *result, const void *a2, size_t __n)
{
  if (*(result + 270))
  {
    v4 = result;
    v5 = *(result + 264);
    if (v5 + __n <= 0x3FF)
    {
      result = memcpy(&result[v5 + 1088], a2, __n);
      v4[264] += __n;
    }
  }

  return result;
}

_OWORD *ParallelArchiveDBSessionCreate(char *a1, void *a2, size_t a3, uint64_t a4)
{
  v8 = calloc(1uLL, 0x58uLL);
  if (v8)
  {
    v9 = strchr(a1, 61);
    if (v9)
    {
      v10 = v9 - a1;
      v11 = v9 + 1;
      if (!isValidAliasOrEngine(a1, v9 - a1))
      {
        v25 = v11;
        v16 = "invalid session URL: %s (invalid alias chars)";
        v17 = 68;
        goto LABEL_15;
      }

      v14 = a1;
      a1 = v11;
    }

    else
    {
      v14 = 0;
      v10 = 0;
    }

    v18 = strchr(a1, 58);
    if (v18)
    {
      v19 = v18 - a1;
      v20 = v18 + 1;
      if (!isValidAliasOrEngine(a1, v18 - a1))
      {
        v25 = v20;
        v16 = "invalid session URL: %s (invalid engine chars)";
        v17 = 78;
        goto LABEL_15;
      }

      if (v19 == 4 && *a1 == 1701603686)
      {
        v22 = *&off_2A1E9B398;
        v8[2] = xmmword_2A1E9B388;
        v8[3] = v22;
        v8[4] = xmmword_2A1E9B3A8;
        *(v8 + 10) = qword_2A1E9B3B8;
        v23 = *&off_2A1E9B378;
        *v8 = ParallelArchiveDBSession_FILE;
        v8[1] = v23;
        v24 = (*v8)(v20, a4);
        *(v8 + 10) = v24;
        if (v24)
        {
          if (!a2)
          {
            return v8;
          }

          bzero(a2, a3);
          if (v10 + 1 <= a3)
          {
            memcpy(a2, v14, v10);
            *(a2 + v10) = 0;
            return v8;
          }

          v16 = "invalid aliasCapacity";
          v17 = 98;
        }

        else
        {
          v25 = v20;
          v16 = "create session: %s";
          v17 = 91;
        }

        goto LABEL_15;
      }

      LOBYTE(a1) = v20;
    }

    v25 = a1;
    v16 = "Invalid session URL: %s (unknown engine)";
    v17 = 87;
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v15 = *__error();
  v16 = "malloc";
  v17 = 52;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSessionCreate", v17, 11, v15, v16, v12, v13, v25);
  free(v8);
  return 0;
}

uint64_t isValidAliasOrEngine(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = *(a1 + v5);
      if ((v7 & 0x80000000) != 0)
      {
        if (__maskrune(*(a1 + v5), 0x500uLL))
        {
          goto LABEL_9;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x500) != 0)
      {
        goto LABEL_9;
      }

      if (v7 != 95 && v7 != 45)
      {
        return v4;
      }

LABEL_9:
      v4 = ++v5 >= a2;
      if (a2 == v5)
      {
        return v4;
      }
    }
  }

  return 1;
}

uint64_t ParallelArchiveDBSessionDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (*(result + 8))(*(result + 80));
    free(v1);
    return v2;
  }

  return result;
}

void *ParallelArchiveDBRequestOpenForWriting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x10uLL);
  v7 = v6;
  if (!v6)
  {
    v13 = *__error();
    v11 = "malloc";
    v12 = 122;
    goto LABEL_5;
  }

  *v6 = a1;
  v8 = (*(a1 + 16))(*(a1 + 80), a2, a3);
  v7[1] = v8;
  if (!v8)
  {
    v11 = "Request creation";
    v12 = 126;
    v13 = 0;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForWriting", v12, 11, v13, v11, v9, v10, v15);
    free(v7);
    return 0;
  }

  return v7;
}

uint64_t ParallelArchiveDBRequestCloseAndGetKey(void *a1)
{
  v2 = (*(*a1 + 32))(a1[1]);
  free(a1);
  return v2;
}

void *ParallelArchiveDBRequestOpenForReading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = calloc(1uLL, 0x10uLL);
  v13 = v12;
  if (!v12)
  {
    v19 = *__error();
    v17 = "malloc";
    v18 = 151;
    goto LABEL_5;
  }

  *v12 = a1;
  v14 = (*(a1 + 40))(*(a1 + 80), a2, a3, a4, a5, a6);
  v13[1] = v14;
  if (!v14)
  {
    v17 = "Request creation";
    v18 = 155;
    v19 = 0;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForReading", v18, 11, v19, v17, v15, v16, v21);
    free(v13);
    return 0;
  }

  return v13;
}

uint64_t ParallelArchiveDBRequestClose(void *a1)
{
  v2 = (*(*a1 + 64))(a1[1]);
  free(a1);
  return v2;
}

unint64_t *ParallelArchiveDBSetCreate(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", 191, 11, 0, "nDB is not expected to be 0\n", a7, a8, v25);
    v12 = 0;
    goto LABEL_20;
  }

  v11 = calloc(1uLL, 0x18uLL);
  v12 = v11;
  if (!v11)
  {
    v16 = *__error();
    v19 = "malloc";
    v20 = 195;
    goto LABEL_19;
  }

  *v11 = a1;
  v11[1] = calloc(a1, 8uLL);
  v13 = calloc(a1, 8uLL);
  v12[2] = v13;
  v14 = v12[1];
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
    v16 = *__error();
    v19 = "malloc";
    v20 = 200;
    goto LABEL_19;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    *(v14 + 8 * v21) = malloc(0x100uLL);
    v23 = *(v12[1] + 8 * v21);
    if (!v23)
    {
      v16 = *__error();
      v19 = "malloc";
      v20 = 205;
      goto LABEL_19;
    }

    *(v12[2] + 8 * v21) = ParallelArchiveDBSessionCreate(*(a2 + 8 * v21), v23, 0x100uLL, a3);
    if (!*(v12[2] + 8 * v21))
    {
      v25 = *(a2 + 8 * v21);
      v19 = "creating session for: %s";
      v20 = 207;
      goto LABEL_24;
    }

    v14 = v12[1];
    if (!**(v14 + 8 * v21))
    {
      break;
    }

LABEL_16:
    if (a1 == ++v21)
    {
      return v12;
    }
  }

  if (!v22)
  {
    v22 = 1;
    goto LABEL_16;
  }

  v19 = "Only one default database is allowed";
  v20 = 212;
LABEL_24:
  v16 = 0;
LABEL_19:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", v20, 11, v16, v19, v17, v18, v25);
LABEL_20:
  ParallelArchiveDBSetDestroy(v12);
  return 0;
}

uint64_t ParallelArchiveDBSetDestroy(unint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2)
  {
    if (*a1)
    {
      v3 = 0;
      do
      {
        free(*(a1[1] + 8 * v3++));
      }

      while (v3 < *a1);
      v2 = a1[1];
    }

    free(v2);
  }

  v4 = a1[2];
  if (v4)
  {
    if (*a1)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = *(a1[2] + 8 * v5);
        if (v7)
        {
          v8 = (*(v7 + 8))(*(v7 + 80));
          free(v7);
          if (v8 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetDestroy", 239, 11, 0, "destroying session", v9, v10, v13);
            v6 = 0;
          }
        }

        ++v5;
      }

      while (v5 < *a1);
      v4 = a1[2];
      if (v6)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v11 = 0;
    }

    free(v4);
  }

  else
  {
    v11 = 0;
  }

  free(a1);
  return v11;
}

void *ParallelArchiveDBReadRequestOpenWithSet(uint64_t *a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v15 = 0;
  v16 = a1[1];
  v17 = -1;
  while (1)
  {
    v18 = *(v16 + 8 * v15);
    v19 = v15;
    if (v18)
    {
      v19 = *v18 ? v17 : v15;
      if (*v18 && __s2 != 0)
      {
        v21 = strcmp(v18, __s2);
        v19 = v17;
        if (!v21)
        {
          break;
        }
      }
    }

    ++v15;
    v17 = v19;
    if (v9 == v15)
    {
      goto LABEL_15;
    }
  }

  v19 = v15;
LABEL_15:
  if (v19 == -1)
  {
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBReadRequestOpenWithSet", 261, 11, 0, "No database in set matches alias %s", a7, a8, __s2);
    return 0;
  }

  else
  {
    v22 = *(a1[2] + 8 * v19);

    return ParallelArchiveDBRequestOpenForReading(v22, a3, a4, a5, a6, a7);
  }
}

uint64_t ParallelArchiveDBCloneWithSet(uint64_t *a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v15 = 0;
  v16 = a1[1];
  v17 = -1;
  while (1)
  {
    v18 = *(v16 + 8 * v15);
    v19 = v15;
    if (v18)
    {
      v19 = *v18 ? v17 : v15;
      if (*v18 && __s2 != 0)
      {
        v21 = strcmp(v18, __s2);
        v19 = v17;
        if (!v21)
        {
          break;
        }
      }
    }

    ++v15;
    v17 = v19;
    if (v9 == v15)
    {
      goto LABEL_15;
    }
  }

  v19 = v15;
LABEL_15:
  if (v19 == -1)
  {
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBCloneWithSet", 281, 11, 0, "No database in set matches alias %s", a7, a8, __s2);
    return 0;
  }

  else
  {
    v22 = *(a1[2] + 8 * v19);
    v24 = *(v22 + 72);
    v23 = *(v22 + 80);

    return v24(v23, a3, a4, a5, a6);
  }
}

uint64_t ParallelArchiveSort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v113[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v94);
  v9 = *a1;
  if (*a1 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "ParallelArchiveSort:\n  input archive: %s\n", *(a1 + 8));
  }

  v112 = 0;
  v113[0] = 0;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  *__buf = 0u;
  memset(&v106, 0, sizeof(v106));
  *__base = 0u;
  *v104 = 0u;
  v102[1] = a1;
  v102[0] = 1;
  __buf[0] = malloc(0x100000uLL);
  if (!__buf[0])
  {
    v10 = *__error();
    v13 = "malloc";
    v14 = 116;
    goto LABEL_10;
  }

  if (stat(*(a1 + 8), &v106))
  {
    v10 = *__error();
    v13 = *(a1 + 8);
    v14 = 119;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Sort.c", "ParallelArchiveSort", v14, 49, v10, v13, v11, v12, v95);
    LODWORD(v102[0]) = 0;
    goto LABEL_11;
  }

  st_size = v106.st_size;
  if (loadFileSegment(*(a1 + 8), v113, 6uLL, 0))
  {
    v13 = "Reading input file magic failed";
    v14 = 123;
    goto LABEL_9;
  }

  v19 = LODWORD(v113[0]) ^ 0x37303730 | WORD2(v113[0]) ^ 0x3130;
  if (v19)
  {
    v20 = LODWORD(v113[0]) == 925906736 && WORD2(v113[0]) == 14128;
    if (!v20)
    {
      v95 = v113;
      v13 = "Invalid input file: 'odc' or 'newc' raw cpio archive expected: %s";
      v14 = 125;
      goto LABEL_9;
    }

    v21 = 0;
  }

  else
  {
    v21 = "07070100000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000b00000000TRAILER!!!";
  }

  v22 = LODWORD(v113[0]) ^ 0x37303730 | WORD2(v113[0]) ^ 0x3730;
  v20 = v22 == 0;
  v23 = v22 != 0;
  if (v20)
  {
    v24 = "0707070000000000000000000000000000000000010000000000000000000001300000000000TRAILER!!!";
  }

  else
  {
    v24 = v21;
  }

  if (v19)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = IFileStreamCreateWithFilename(*(a1 + 8), 0, -1);
  if (!v26)
  {
    v13 = "Reading input file failed";
    v14 = 134;
    goto LABEL_9;
  }

  v32 = v26;
  *&v107 = 0x100000000;
  *&v108 = 0;
  v109 = 0u;
  v111 = 0u;
  *(&v107 + 1) = IFileStreamRead;
  *(&v108 + 1) = v26;
  *&v109 = indexBeginProc;
  *&v110 = indexPayloadAndPaddingProc;
  *(&v110 + 1) = indexPayloadAndPaddingProc;
  v112 = v102;
  if (ParallelArchiveRead(&v107, v27, v28, v29, v30, v31, v11, v12))
  {
    v13 = "Indexing failed";
    v14 = 145;
    goto LABEL_9;
  }

  IFileStreamDestroy(v32);
  v33 = SLODWORD(__base[0]);
  v104[0] = malloc(4 * SLODWORD(__base[0]));
  if (!v104[0])
  {
    v10 = *__error();
    v13 = "malloc";
    v14 = 148;
    goto LABEL_10;
  }

  v34 = MEMORY[0x29EDCA610];
  v98 = v25;
  if (v9 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  %llu B, %d entries\n", __buf[1], v33);
    v33 = SLODWORD(__base[0]);
  }

  qsort(__base[1], v33, 0x8A8uLL, cmpINode);
  v35 = LODWORD(__base[0]);
  if (SLODWORD(__base[0]) >= 1)
  {
    v36 = 0;
    v37 = __base[1];
    v38 = __base[1] - 2184;
    v39 = 3;
    do
    {
      v40 = &v37[554 * v36];
      v41 = *(v40 + 4);
      v42 = *(v40 + 548);
      *(v40 + 549) = v42;
      if (v36)
      {
        v43 = v36;
        while (*&v38[2216 * v43] == v41)
        {
          v44 = __OFSUB__(v43--, 1);
          if ((v43 < 0) ^ v44 | (v43 == 0))
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_48:
        v43 = 0;
      }

      if (v36 != v43)
      {
        v45 = v37[554 * v43 + 549];
        if (v45 >= v42)
        {
          v46 = v43;
          if (v36 > v43)
          {
            v47 = 0;
            v48 = vdupq_n_s64(~v46 + v36);
            v49 = (v39 - v46) & 0xFFFFFFFFFFFFFFFCLL;
            v50 = &v37[554 * v46];
            do
            {
              v51 = vdupq_n_s64(v47);
              v52 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(v51, xmmword_2980690E0)));
              if (vuzp1_s16(v52, 2).u8[0])
              {
                v50[549] = v42;
              }

              if (vuzp1_s16(v52, 2).i8[2])
              {
                v50[1103] = v42;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v48, vorrq_s8(v51, xmmword_2980690D0)))).i32[1])
              {
                v50[1657] = v42;
                v50[2211] = v42;
              }

              v47 += 4;
              v50 += 2216;
            }

            while (v49 != v47);
          }
        }

        else
        {
          v37[554 * v36 + 549] = v45;
        }
      }

      ++v36;
      ++v39;
    }

    while (v36 != v35);
  }

  v53 = v35;
  if (v9 > 1)
  {
    qsort(__base[1], v35, 0x8A8uLL, cmpIndex);
    v53 = __base[0];
    if (SLODWORD(__base[0]) >= 1)
    {
      v99 = v24;
      v54 = v34;
      v55 = 0;
      v56 = 2208;
      do
      {
        v57 = *v54;
        v58 = *(__base[1] + v56 - 2176);
        v59 = *(__base[1] + v56);
        if (v55 == *(__base[1] + v56 - 12))
        {
          v96 = *(__base[1] + v56);
          fprintf(v57, "%d ino=%llu size=%llu -- %s\n");
        }

        else
        {
          v97 = *(__base[1] + v56 - 2176);
          fprintf(v57, "%d HLINK(%d) ino=%llu size=%llu -- %s = %s\n");
        }

        ++v55;
        v53 = __base[0];
        v56 += 2216;
      }

      while (v55 < SLODWORD(__base[0]));
      v34 = v54;
      v24 = v99;
    }
  }

  qsort(__base[1], v53, 0x8A8uLL, cmpSortPath);
  v60 = __base[0];
  if (v9 >= 1)
  {
    if (SLODWORD(__base[0]) < 1)
    {
      goto LABEL_79;
    }

    v61 = 0;
    v62 = (__base[1] + 2192);
    do
    {
      v63 = v61;
      v64 = *v62;
      ++v61;
      v62 += 554;
    }

    while (v63 == v64 && v61 < LODWORD(__base[0]));
    if (v63 == v64)
    {
LABEL_79:
      fwrite("Input archive is already sorted\n", 0x20uLL, 1uLL, *v34);
      v60 = __base[0];
    }
  }

  if (v60 >= 1)
  {
    v66 = 0;
    v67 = __base[1];
    v68 = v104[0];
    do
    {
      v67[4] = -1;
      v68[*(v67 + 548)] = v66++;
      v69 = SLODWORD(__base[0]);
      v67 += 277;
    }

    while (v66 < SLODWORD(__base[0]));
    if (SLODWORD(__base[0]) >= 1)
    {
      v70 = 0;
      v71 = __base[1];
      v72 = v104[0];
      v73 = __base[1];
      do
      {
        v74 = &v71[2216 * v72[*(v73 + 549)]];
        v77 = *(v74 + 4);
        v76 = v74 + 32;
        v75 = v77;
        if (v77 == -1)
        {
          *v76 = v70;
          v75 = v70++;
        }

        v73[4] = v75;
        v73 += 277;
        --v69;
      }

      while (v69);
    }
  }

  LODWORD(v104[1]) = open(*(a1 + 8), 0);
  if ((v104[1] & 0x80000000) != 0)
  {
    v10 = *__error();
    v13 = *(a1 + 8);
    v14 = 225;
    goto LABEL_10;
  }

  if (SLODWORD(__base[0]) < 1)
  {
    v79 = 0;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v100 = v24;
    do
    {
      v101 = v78;
      v80 = __base[1] + 2216 * v78;
      v81 = *(v80 + 276);
      v82 = *(v80 + 275);
      if (v9 >= 2)
      {
        fprintf(*v34, "%d (old=%d) ino=%llu size=%llu -- %s\n", v78, *(v80 + 548), *(v80 + 4), *(v80 + 276), v80 + 144);
      }

      if (v81)
      {
        v83 = 0;
        do
        {
          if (v81 >= 0x100000)
          {
            v84 = 0x100000;
          }

          else
          {
            v84 = v81;
          }

          v85 = pread(v104[1], __buf[0], v84, v82);
          if (v85 < 0)
          {
            v10 = *__error();
            v13 = "read";
            v14 = 247;
            goto LABEL_10;
          }

          if (v85 != v84)
          {
            v13 = "truncated read";
            v14 = 248;
            goto LABEL_9;
          }

          if ((v83 & 1) == 0)
          {
            if (v81 <= 5)
            {
              v13 = "truncated header";
              v14 = 254;
              goto LABEL_9;
            }

            v86 = *(v80 + 4);
            if (*__buf[0] == 925906736 && *(__buf[0] + 2) == 14128)
            {
              if (v86 >= 0x40000)
              {
                v13 = "inode index is too large";
                v14 = 257;
                goto LABEL_9;
              }

              if (v81 <= 0x4B)
              {
                v13 = "truncated header";
                v14 = 258;
                goto LABEL_9;
              }

              toOctal6(__buf[0] + 12, v86);
            }

            else
            {
              if (*__buf[0] != 925906736 || *(__buf[0] + 2) != 12592)
              {
                v13 = "invalid header";
                v14 = 269;
                goto LABEL_9;
              }

              if (HIDWORD(v86))
              {
                v13 = "inode index is too large";
                v14 = 264;
                goto LABEL_9;
              }

              if (v81 <= 0x6D)
              {
                v13 = "truncated header";
                v14 = 265;
                goto LABEL_9;
              }

              toHex8(__buf[0] + 6, v86);
            }
          }

          v89 = (*(a1 + 16))(*(a1 + 24), __buf[0], v84);
          if (v89 < 0)
          {
            v13 = "write error";
            v14 = 275;
            goto LABEL_9;
          }

          if (v89 != v84)
          {
            v13 = "truncated write";
            v14 = 276;
            goto LABEL_9;
          }

          v82 += v84;
          v79 += v84;
          v83 = 1;
          v81 -= v84;
        }

        while (v81);
      }

      v24 = v100;
      v78 = v101 + 1;
      v34 = MEMORY[0x29EDCA610];
    }

    while (v101 + 1 < SLODWORD(__base[0]));
  }

  if (!v98)
  {
    v90 = strlen(v24);
    v91 = (*(a1 + 16))(*(a1 + 24), v24, v90);
    if (v91 < 0)
    {
      v13 = "write error";
      v14 = 290;
      goto LABEL_9;
    }

    if (v91 != v90)
    {
      v13 = "truncated write";
      v14 = 291;
      goto LABEL_9;
    }

    v79 += v90;
  }

  if (v79 < st_size)
  {
    bzero(__buf[0], 0x100000uLL);
    while (1)
    {
      if (st_size - v79 >= 0x100000)
      {
        v92 = 0x100000;
      }

      else
      {
        v92 = st_size - v79;
      }

      v93 = (*(a1 + 16))(*(a1 + 24), __buf[0], v92);
      if (v93 < 0)
      {
        v13 = "write error";
        v14 = 305;
        goto LABEL_9;
      }

      if (v93 != v92)
      {
        break;
      }

      v79 += v92;
      if (v79 >= st_size)
      {
        goto LABEL_11;
      }
    }

    v13 = "truncated write";
    v14 = 306;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if ((v104[1] & 0x80000000) == 0)
  {
    close(v104[1]);
  }

  free(__base[1]);
  free(v104[0]);
  free(__buf[0]);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (LODWORD(v102[0]))
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (result >= 0)
  {
    result = v17;
  }

  else
  {
    result = result;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t indexBeginProc(uint64_t a1, void *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (v9 < v10)
  {
    v11 = *(a1 + 24);
LABEL_5:
    *(a1 + 16) = v9 + 1;
    v12 = &v11[2216 * v9];
    result = memcpy(v12, __src, 0x890uLL);
    *(v12 + 548) = *(a1 + 16) - 1;
    v14 = *(a1 + 56);
    *(v12 + 275) = v14;
    *(v12 + 276) = a6;
    *(a1 + 56) = v14 + a6;
    return result;
  }

  *(a1 + 20) = v10 + 10000;
  v11 = reallocf(*(a1 + 24), 2216 * (v10 + 10000));
  *(a1 + 24) = v11;
  if (v11)
  {
    v9 = *(a1 + 16);
    goto LABEL_5;
  }

  v15 = __error();
  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Sort.c", "indexBeginProc", 67, 49, *v15, "malloc", v16, v17, v18);
  *a1 = 0;
  return result;
}

uint64_t indexPayloadAndPaddingProc(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24) + 2216 * *(result + 16);
  *(v3 - 8) += a3;
  *(result + 56) += a3;
  return result;
}

uint64_t cmpINode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v2;
  }
}

uint64_t cmpIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2192);
  v3 = *(a2 + 2192);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v2;
  }
}

_BYTE *toOctal6(_BYTE *result, unint64_t a2)
{
  *result = toOctal6_oct[(a2 >> 15) & 7];
  result[1] = toOctal6_oct[(a2 >> 12) & 7];
  result[2] = toOctal6_oct[(a2 >> 9) & 7];
  result[3] = toOctal6_oct[(a2 >> 6) & 7];
  result[4] = toOctal6_oct[(a2 >> 3) & 7];
  result[5] = toOctal6_oct[a2 & 7];
  return result;
}

_BYTE *toHex8(_BYTE *result, unint64_t a2)
{
  *result = toHex8_hex[a2 >> 28];
  result[1] = toHex8_hex[(a2 >> 24) & 0xF];
  result[2] = toHex8_hex[(a2 >> 20) & 0xF];
  result[3] = toHex8_hex[(a2 >> 16) & 0xF];
  result[4] = toHex8_hex[a2 >> 12];
  result[5] = toHex8_hex[(a2 >> 8) & 0xF];
  result[6] = toHex8_hex[a2 >> 4];
  result[7] = toHex8_hex[a2 & 0xF];
  return result;
}

char *ParallelArchiveOLDWriterCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  v9 = calloc(1uLL, 0x608uLL);
  v10 = v9;
  if (!v9)
  {
    v17 = *__error();
    v15 = "malloc";
    v16 = 122;
    goto LABEL_12;
  }

  *(v9 + 258) = *(a1 + 8);
  v11 = strlen(*a1);
  *v10 = v11;
  if (v11 - 1024 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    __strlcpy_chk();
    *(v10 + 168) = 0x40000;
    v12 = malloc(0x40000uLL);
    *(v10 + 171) = v12;
    if (v12)
    {
      if (pthread_mutex_init((v10 + 1464), 0))
      {
        v15 = "pthread_mutex_init";
        v16 = 138;
      }

      else
      {
        *(v10 + 260) = 0;
        if (pthread_mutex_init((v10 + 1048), 0) || pthread_cond_init((v10 + 1112), 0))
        {
          v15 = "SemInit";
          v16 = 141;
        }

        else
        {
          *(v10 + 290) = 0;
          if (pthread_mutex_init((v10 + 1168), 0) || pthread_cond_init((v10 + 1232), 0))
          {
            v15 = "SemInit";
            v16 = 142;
          }

          else if (pthread_mutex_init(v10 + 20, 0))
          {
            v15 = "pthread_mutex_init";
            v16 = 143;
          }

          else
          {
            if (!writerReleaseSem(v10))
            {
              *(v10 + 346) = 0;
              *(v10 + 348) = *(a1 + 12);
              *(v10 + 176) = writerReceiveData;
              *(v10 + 178) = v10;
              *(v10 + 179) = *(a1 + 32);
              *(v10 + 181) = *(a1 + 48);
              DefaultNThreads = *(a1 + 16);
              if (!DefaultNThreads)
              {
                DefaultNThreads = getDefaultNThreads();
              }

              *(v10 + 347) = DefaultNThreads;
              *(v10 + 175) = *(a1 + 24);
              if (!createThread(v10 + 182, ParallelArchiveEncoderProc, (v10 + 1384), 0))
              {
                if ((leaveThreadErrorContext(0, 0, 0) & 0x80000000) == 0)
                {
                  return v10;
                }

                goto LABEL_14;
              }

              v17 = *__error();
              v15 = "compressor thread";
              v16 = 155;
              goto LABEL_12;
            }

            v15 = "writerReleaseSem";
            v16 = 144;
          }
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = *__error();
      v15 = "malloc";
      v16 = 135;
    }

LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", v16, 47, v17, v15, v13, v14, v21);
  }

  leaveThreadErrorContext(0, 0, 0);
LABEL_14:
  free(*(v10 + 171));
  free(v10);
  return 0;
}

uint64_t writerReleaseSem(uint64_t a1)
{
  v2 = *(a1 + 1032);
  v3 = *(a1 + 1360) - *(a1 + 1352);
  if (v3)
  {
    if (v2 >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "Release bufferReady, buffer size: %zu\n", v3);
    }

    v4 = (a1 + 1168);
    if (pthread_mutex_lock((a1 + 1168)))
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 1160);
    *(a1 + 1160) = v7 + 1;
    if (v7)
    {
      goto LABEL_14;
    }

    v6 = (a1 + 1232);
    goto LABEL_12;
  }

  if (v2 >= 3)
  {
    fwrite("Release bufferEmpty\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v4 = (a1 + 1048);
  if (pthread_mutex_lock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 1040);
  *(a1 + 1040) = v5 + 1;
  if (!v5)
  {
    v6 = (a1 + 1112);
LABEL_12:
    if (pthread_cond_broadcast(v6))
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_14:
  if (pthread_mutex_unlock(v4))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t writerReceiveData(uint64_t a1, void *a2, size_t a3)
{
  v3 = *(a1 + 1032);
  if (*(a1 + 1376))
  {
    if (v3 >= 3)
    {
      fwrite("writerReceiveData: ZERO (end of stream)\n", 0x28uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    return 0;
  }

  else
  {
    v4 = a3;
    if (v3 >= 3)
    {
      fwrite("Acquire bufferReady\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    if (pthread_mutex_lock((a1 + 1168)))
    {
      return -1;
    }

    while (1)
    {
      v8 = *(a1 + 1160);
      if (v8 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 1232), (a1 + 1168)))
      {
        return -1;
      }
    }

    *(a1 + 1160) = v8 - 1;
    if (pthread_mutex_unlock((a1 + 1168)))
    {
      return -1;
    }

    v9 = *(a1 + 1352);
    if (*(a1 + 1360) - v9 < v4)
    {
      v4 = *(a1 + 1360) - v9;
    }

    if (v4)
    {
      memcpy(a2, (*(a1 + 1368) + v9), v4);
      *(a1 + 1352) += v4;
    }

    else
    {
      if (*(a1 + 1032) >= 3)
      {
        fwrite("end of stream\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      *(a1 + 1376) = 1;
    }

    if (writerReleaseSem(a1))
    {
      return -1;
    }

    else if (*(a1 + 1032) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "writerReceiveData: %zu\n", v4);
    }
  }

  return v4;
}

uint64_t ParallelArchiveOLDWriterAddEntry(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v57);
  memset(&v60, 0, sizeof(v60));
  bzero(v63, 0x400uLL);
  bzero(__s, 0x400uLL);
  if (!a1 || !a2)
  {
    v17 = "invalid args";
    v18 = 179;
LABEL_10:
    v19 = 0;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", v18, 47, v19, v17, v10, v11, st_mode);
    goto LABEL_12;
  }

  v12 = strlen(a2);
  if (*a2 == 47 || (v13 = v12, v12 >= 0x400))
  {
    st_mode = a2;
    v17 = "invalid path: %s";
    v18 = 185;
    goto LABEL_10;
  }

  if (concatPath(v63, 0x400uLL, (a1 + 8), a2))
  {
LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  if (lstat(v63, &v60))
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 191, 47, v14, "%s", v15, v16, v63);
    goto LABEL_12;
  }

  v20 = 0;
  if (HIWORD(v60.st_uid) || HIWORD(v60.st_gid))
  {
    goto LABEL_13;
  }

  v24 = v60.st_mode & 0xF000;
  if (v24 == 0x4000)
  {
    v27 = 0;
    st_size = 0;
    v28 = -1;
    v29 = 2;
    goto LABEL_49;
  }

  if (v24 == 0x8000)
  {
    st_size = v60.st_size;
    if (v60.st_nlink >= 2u)
    {
      if (pthread_mutex_lock((a1 + 1464)))
      {
        goto LABEL_12;
      }

      v30 = *(a1 + 1532);
      if (v30 < 1)
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = 0;
        v32 = *(a1 + 1536);
        while (*v32 != v60.st_ino)
        {
          v32 += 129;
          if (v30 == ++v31)
          {
            goto LABEL_39;
          }
        }
      }

      if (v31 != v30)
      {
        v38 = *(a1 + 1536) + 1032 * v31;
        __strlcpy_chk();
        st_size = strlen(__s);
        pthread_mutex_unlock((a1 + 1464));
        v27 = 0;
        v28 = -1;
        v29 = 4;
        goto LABEL_49;
      }

LABEL_39:
      if (v30 == *(a1 + 1528))
      {
        v36 = 2 * v30;
        if (!v30)
        {
          v36 = 16;
        }

        *(a1 + 1528) = v36;
        v37 = reallocf(*(a1 + 1536), 1032 * v36);
        *(a1 + 1536) = v37;
        if (!v37)
        {
          *(a1 + 1528) = 0;
          pthread_mutex_unlock((a1 + 1464));
          v19 = *__error();
          v17 = "malloc";
          v18 = 226;
          goto LABEL_11;
        }
      }

      else
      {
        v37 = *(a1 + 1536);
      }

      v39 = 129 * v30;
      bzero(&v37[8 * v39], 0x408uLL);
      v40 = (*(a1 + 1536) + 8 * v39);
      *v40 = v60.st_ino;
      memcpy(v40 + 1, a2, v13);
      ++*(a1 + 1532);
      pthread_mutex_unlock((a1 + 1464));
    }

    v41 = open(v63, 0);
    if (v41 < 0)
    {
      v50 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 261, 47, v50, "%s", v51, v52, v63);
      goto LABEL_12;
    }

    v28 = v41;
    v27 = 1;
    v29 = 1;
    goto LABEL_49;
  }

  if (v24 != 40960)
  {
    st_mode = v60.st_mode;
    v17 = "unsupported entry type %d";
    v18 = 199;
    goto LABEL_10;
  }

  v25 = readlink(v63, __s, 0x3FFuLL);
  if (v25 < 1)
  {
    v33 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 252, 47, v33, "%s", v34, v35, v63);
    goto LABEL_12;
  }

  st_size = v25;
  v27 = 0;
  __s[v25] = 0;
  v28 = -1;
  v29 = 3;
LABEL_49:
  *v61 = 0;
  *&v61[8] = 0;
  *&v61[22] = 0;
  *&v61[16] = 0;
  setHeaderFromValues_v10(v61, v29, st_size, v60.st_mtimespec.tv_sec, v60.st_flags, v13, LOWORD(v60.st_uid), LOWORD(v60.st_gid), v60.st_mode);
  if (pthread_mutex_lock((a1 + 1280)))
  {
    v42 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 295, 47, *v42, "pthread_mutex_lock", v43, v44, v59);
    v20 = 0;
  }

  else
  {
    if (!writerAcquireEmpty(a1))
    {
      *(a1 + 1352) = 0u;
      v46 = *(a1 + 1368);
      v47 = *v61;
      *(v46 + 14) = *&v61[14];
      *v46 = v47;
      v48 = *(a1 + 1360) + 30;
      *(a1 + 1360) = v48;
      memcpy((*(a1 + 1368) + v48), a2, v13);
      v49 = *(a1 + 1360) + v13;
      *(a1 + 1360) = v49;
      if ((v29 - 3) > 1)
      {
        if (v27)
        {
          if (*(a1 + 1344) - v49 >= st_size)
          {
            v53 = st_size;
          }

          else
          {
            v53 = *(a1 + 1344) - v49;
          }

          v54 = read(v28, (*(a1 + 1368) + v49), v53);
          if (v54 < 0)
          {
            goto LABEL_68;
          }

          *(a1 + 1360) += v54;
          st_size -= v54;
        }

        v45 = 1;
      }

      else
      {
        memcpy((*(a1 + 1368) + v49), __s, st_size);
        *(a1 + 1360) += st_size;
        v45 = 1;
        st_size = 0;
      }

      while (!writerReleaseSem(a1))
      {
        if (!st_size)
        {
          goto LABEL_53;
        }

        if (writerAcquireEmpty(a1))
        {
          break;
        }

        *(a1 + 1352) = 0;
        *(a1 + 1360) = 0;
        if (*(a1 + 1344) >= st_size)
        {
          v55 = st_size;
        }

        else
        {
          v55 = *(a1 + 1344);
        }

        v56 = read(v28, *(a1 + 1368), v55);
        if (v56 < 0)
        {
LABEL_68:
          v45 = 0;
        }

        else
        {
          *(a1 + 1360) += v56;
          st_size -= v56;
        }
      }
    }

    v45 = 0;
LABEL_53:
    if (pthread_mutex_unlock((a1 + 1280)))
    {
      v20 = 0;
    }

    else
    {
      v20 = v45;
    }
  }

  if ((v28 & 0x80000000) == 0)
  {
    close(v28);
  }

LABEL_13:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  if (result >= 0)
  {
    result = v22;
  }

  else
  {
    result = result;
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t writerAcquireEmpty(uint64_t a1)
{
  if (*(a1 + 1032) >= 3)
  {
    fwrite("Acquire bufferEmpty\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (pthread_mutex_lock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v3 = *(a1 + 1040);
    if (v3 > 0)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1112), (a1 + 1048)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(a1 + 1040) = v3 - 1;
  if (pthread_mutex_unlock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ParallelArchiveOLDWriterDestroy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    enterThreadErrorContext(result, a2, a3, a4, a5, a6, a7, a8, v14);
    if (pthread_mutex_lock((v8 + 1048)))
    {
LABEL_3:
      v9 = 1;
    }

    else
    {
      while (1)
      {
        v10 = *(v8 + 1040);
        if (v10 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v8 + 1112), (v8 + 1048)))
        {
          goto LABEL_3;
        }
      }

      *(v8 + 1040) = v10 - 1;
      v9 = pthread_mutex_unlock((v8 + 1048)) != 0;
    }

    if (pthread_mutex_lock((v8 + 1168)) || (v11 = *(v8 + 1160), *(v8 + 1160) = v11 + 1, !v11) && pthread_cond_broadcast((v8 + 1232)))
    {
      v9 = 1;
    }

    else if (pthread_mutex_unlock((v8 + 1168)))
    {
      v9 = 1;
    }

    if (pthread_mutex_lock((v8 + 1048)))
    {
LABEL_13:
      v9 = 1;
    }

    else
    {
      while (1)
      {
        v12 = *(v8 + 1040);
        if (v12 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v8 + 1112), (v8 + 1048)))
        {
          goto LABEL_13;
        }
      }

      *(v8 + 1040) = v12 - 1;
      if (pthread_mutex_unlock((v8 + 1048)))
      {
        v9 = 1;
      }
    }

    joinThread(*(v8 + 1456));
    if (pthread_mutex_destroy((v8 + 1048)))
    {
      v9 = 1;
    }

    else if (pthread_cond_destroy((v8 + 1112)))
    {
      v9 = 1;
    }

    if (pthread_mutex_destroy((v8 + 1168)))
    {
      v13 = -1;
    }

    else
    {
      v13 = (pthread_cond_destroy((v8 + 1232)) != 0 || v9) << 31 >> 31;
    }

    pthread_mutex_destroy((v8 + 1464));
    pthread_mutex_destroy((v8 + 1280));
    free(*(v8 + 1536));
    free(*(v8 + 1368));
    free(v8);
    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
    if (result >= 0)
    {
      return v13;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t forceInPlaceControls(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a1 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = ((v8 + 4095) >> 12) + 16;
  if (a5 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "Post-processing ctrl for in-place patching, %u pages\n", v9);
  }

  v10 = calloc(v9, 4uLL);
  v11 = calloc(v9, 4uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a4)
    {
      v19 = 0;
      v20 = 0;
      v21 = v9;
      do
      {
        v22 = (a3 + 24 * v20);
        v23 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          v23 = 0x8000000000000000 - *v22;
        }

        v24 = v22[2];
        if (v24 < 0)
        {
          v24 = 0x8000000000000000 - v24;
        }

        v25 = v19 >> 12;
        if (v23)
        {
          v26 = ((v19 + v23 - 1) >> 12) - (v19 >> 12) + 1;
        }

        else
        {
          v26 = 0;
        }

        v27 = (v26 + v25);
        if (v27 > v25)
        {
          v28 = &v10[v25];
          v29 = v27 - v25;
          do
          {
            v21 = (__PAIR64__(v21, (*v28++)++) - 1) >> 32;
            --v29;
          }

          while (v29);
        }

        v19 += v23 + v24;
        ++v20;
      }

      while (v20 != a4);
    }

    else
    {
      v21 = v9;
    }

    if (a5 > 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "After input pages retained, %u free pages\n", v21);
    }

    if (a4)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v21;
      do
      {
        v34 = (a3 + 24 * v32);
        v35 = v34[1];
        v36 = 0x8000000000000000 - *v34;
        if ((*v34 & 0x8000000000000000) == 0)
        {
          v36 = *v34;
        }

        v37 = 0x8000000000000000 - v35;
        if (v35 >= 0)
        {
          v37 = v34[1];
        }

        v38 = v34[2];
        if (v38 < 0)
        {
          v38 = 0x8000000000000000 - v38;
        }

        if (v36)
        {
          v39 = v36 + v30;
          do
          {
            v40 = (v30 & 0xFFFFFFFFFFFFF000) + 4096;
            if (v40 >= v39)
            {
              v40 = v39;
            }

            v41 = v31 >> 12;
            v42 = v40 - v30;
            if (v40 == v30)
            {
              v43 = 0;
            }

            else
            {
              v43 = ((v31 + v42 - 1) >> 12) - v41 + 1;
            }

            v44 = v30 >> 12;
            v45 = v10[v44] - 1;
            v10[v44] = v45;
            if (!v45)
            {
              ++v21;
            }

            v46 = (v43 + v41);
            if (v46 > v41)
            {
              v47 = &v12[4 * v41];
              v48 = v46 - v41;
              do
              {
                v21 = (__PAIR64__(v21, (*v47)++) - 1) >> 32;
                v47 += 4;
                --v48;
              }

              while (v48);
            }

            v31 += v42;
            if (v21 < v33)
            {
              v33 = v21;
            }

            v30 = v40;
            v36 -= v42;
          }

          while (v36);
        }

        else
        {
          v40 = v30;
        }

        v30 = v40 + v38;
        v31 += v37;
        ++v32;
      }

      while (v32 != a4);
    }

    else
    {
      v33 = v21;
    }

    if (a5 > 2)
    {
      v49 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "Free pages after diff controls: %u\n", v21);
      fprintf(*v49, "Min free pages reached: %d\n", v33);
    }

    bzero(v10, 4 * v9);
    if (a4)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = (a3 + 24 * v51);
        v53 = *v52;
        if ((*v52 & 0x8000000000000000) != 0)
        {
          v53 = 0x8000000000000000 - *v52;
        }

        v54 = v52[2];
        if (v54 < 0)
        {
          v54 = 0x8000000000000000 - v54;
        }

        v55 = v50 >> 12;
        if (v53)
        {
          v56 = ((v50 + v53 - 1) >> 12) - (v50 >> 12) + 1;
        }

        else
        {
          v56 = 0;
        }

        v57 = (v56 + v55);
        if (v57 > v55)
        {
          v58 = &v10[v55];
          v59 = v57 - v55;
          do
          {
            ++*v58++;
            --v59;
          }

          while (v59);
        }

        v50 += v53 + v54;
        ++v51;
      }

      while (v51 != a4);
      v82 = v12;
      v60 = v33 < 4;
      if (v33 <= 3)
      {
        v83 = a3;
        v84 = a4;
        v61 = 0;
        v62 = 0;
        v63 = vnegq_f64(0);
        v64 = MEMORY[0x29EDCA610];
        v85 = v63;
        do
        {
          v65 = (v83 + 24 * v61);
          v66 = vbslq_s8(vcltzq_s64(*v65), vsubq_s64(v63, *v65), *v65);
          v67 = v65[1].i64[0];
          if (v67 >= 0)
          {
            v68 = v65[1].i64[0];
          }

          else
          {
            v68 = 0x8000000000000000 - v67;
          }

          if (a5 >= 3)
          {
            v88 = v66;
            fprintf(*v64, "ctrl[%zu]: ndiff=%llu nlit=%llu\n", v61, v66.i64[0], v66.i64[1]);
            v66 = v88;
            v63 = v85;
          }

          v69 = v66.i64[0];
          if (v66.i64[0])
          {
            do
            {
              v70 = v66.i64[0] + v62;
              v71 = (v66.i64[0] + v62 - 1) & 0xFFFFFFFFFFFFF000;
              if (v71 <= v62)
              {
                v71 = v62;
              }

              v72 = v10[(v71 >> 12)] - 1;
              v10[(v71 >> 12)] = v72;
              if (!v72)
              {
                ++v33;
              }

              v73 = v70 - v71;
              v74 = vdupq_n_s64(v70 - v71);
              v75 = vsubq_s64(v66, v74).u64[0];
              if (a5 >= 3)
              {
                v89 = v66;
                v86 = v74;
                v87 = v75;
                fprintf(*v64, "ctrl[%zu]: moving %llu bytes from diff to lit (minFree=%d, ndiff=%llu)\n", v61, v70 - v71, v33, v75);
                v74 = v86;
                v75 = v87;
                v66 = v89;
                v63 = v85;
              }

              v76 = vaddq_s64(v66, v74);
              v66.i64[0] = v75;
              v66.i64[1] = v76.i64[1];
              v68 += v73;
              *v65 = vbslq_s8(vcltzq_s64(v66), vsubq_s64(v63, v66), v66);
              v77 = 0x8000000000000000 - v68;
              if (v68 >= 0)
              {
                v77 = v68;
              }

              v65[1].i64[0] = v77;
              v69 = v75;
            }

            while (v33 <= 3 && v75 != 0);
          }

          ++v61;
          v60 = v33 < 4;
          if (v61 >= v84)
          {
            break;
          }

          v62 += v69 + v68;
        }

        while (v33 <= 3);
      }

      v12 = v82;
      if (v60)
      {
        goto LABEL_96;
      }
    }

    else if (v33 < 4)
    {
LABEL_96:
      v81 = 4;
      v17 = "Could not reduce minFree to %d, something is wrong";
      v18 = 264;
      v14 = 0;
      goto LABEL_97;
    }

    v79 = 0;
    goto LABEL_100;
  }

  v14 = *__error();
  v17 = "malloc";
  v18 = 139;
LABEL_97:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "forceInPlaceControls", v18, 53, v14, v17, v15, v16, v81);
  v79 = 0xFFFFFFFFLL;
LABEL_100:
  free(v10);
  free(v12);
  return v79;
}

void *initDiffSegmentVector(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t reserveDiffSegmentVector(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) >= a2)
  {
    return 0;
  }

  *(a1 + 8) = a2;
  v4 = reallocf(*(a1 + 16), 24 * a2);
  *(a1 + 16) = v4;
  if (v4)
  {
    return 0;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "reserveDiffSegmentVector", 327, 53, *v6, "reallocf", v7, v8, v2);
  return 0xFFFFFFFFLL;
}

__n128 pushDiffSegment(unint64_t *a1, __n128 *a2)
{
  if (!a2[1].n128_u64[0])
  {
    return result;
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 < v5)
  {
LABEL_10:
    v8 = a1[2];
    *a1 = v4 + 1;
    v9 = (v8 + 24 * v4);
    result = *a2;
    v9[1].n128_u64[0] = a2[1].n128_u64[0];
    *v9 = result;
    return result;
  }

  if (v5)
  {
    v6 = v5 + (v5 >> 1);
  }

  else
  {
    v6 = 64;
  }

  if (!reserveDiffSegmentVector(a1, v6))
  {
    v4 = *a1;
    goto LABEL_10;
  }

  return result;
}

uint64_t pushControls(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v8 = (a2 + 16);
  v9 = 1;
  v10 = a3;
  v11 = 1;
  do
  {
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    if (v12 >= 0)
    {
      v14 = *(v8 - 2);
    }

    else
    {
      v14 = 0x8000000000000000 - v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v8 - 1);
    }

    else
    {
      v15 = 0x8000000000000000 - v13;
    }

    if ((*v8 & 0x8000000000000000) == 0)
    {
      v16 = *v8;
    }

    else
    {
      v16 = 0x8000000000000000 - *v8;
    }

    v22.n128_u64[0] = a5;
    v22.n128_u64[1] = a4;
    v23 = v14;
    pushDiffSegment(a1, &v22);
    if (v17)
    {
      break;
    }

    v18 = v14 + a5;
    v22.n128_u64[0] = v18;
    v22.n128_u64[1] = -1;
    v23 = v15;
    pushDiffSegment(a1, &v22);
    if (v19)
    {
      break;
    }

    v8 += 3;
    a4 += v14 + v16;
    a5 = v18 + v15;
    v11 = v9++ < a3;
    --v10;
  }

  while (v10);
  return (v11 << 31 >> 31);
}

uint64_t mergeDiffSegmentVectors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v61 = 0uLL;
  v62 = 0;
  do
  {
    v14 = &a2[3 * v13];
    v15 = *v14;
    if (!*v14)
    {
      v43 = "empty segment vector";
      v44 = 429;
LABEL_41:
      v42 = 0;
      goto LABEL_34;
    }

    v16 = (v14[2] + 16);
    do
    {
      if (v10 + 4 > v11)
      {
        v11 += 0x4000;
        v12 = reallocf(v12, 16 * v11);
        if (!v12)
        {
          v42 = *__error();
          v43 = "malloc";
          v44 = 437;
LABEL_34:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "mergeDiffSegmentVectors", v44, 53, v42, v43, a7, a8, v56);
          goto LABEL_35;
        }
      }

      v17 = *(v16 - 2);
      if (*(v16 - 1) == -1)
      {
        v21 = *v16;
        v22 = &v12[16 * v10];
        *v22 = v17;
        v17 += v21;
        v20 = v10 + 1;
        *(v22 + 1) = 1;
        v18 = -1;
        v19 = 2;
      }

      else
      {
        v18 = 0;
        v19 = 1;
        v20 = v10;
      }

      v23 = &v12[16 * v20];
      *v23 = v17;
      v10 += v19;
      *(v23 + 2) = v18;
      *(v23 + 3) = 0;
      v16 += 3;
      --v15;
    }

    while (v15);
    ++v13;
  }

  while (v13 != a1);
  v24 = a2[2] + 24 * *a2;
  v25 = v10 + 1;
  v26 = &v12[16 * v10];
  *v26 = *(v24 - 8) + *(v24 - 24);
  *(v26 + 1) = 0;
  qsort(v12, v10 + 1, 0x10uLL, mergeDiffSegmentEventCompareProc);
  if (v10 != -1)
  {
    v46 = 0;
    v27 = 0;
    v47 = 0;
    while (1)
    {
      v48 = 0;
      v49 = *&v12[16 * v46];
      if (v25 <= v46 + 1)
      {
        v50 = v46 + 1;
      }

      else
      {
        v50 = v25;
      }

      v51 = &v12[16 * v46 + 8];
      while (*(v51 - 1) == v49)
      {
        v52 = *v51;
        v51 += 16;
        v48 += v52;
        if (v50 == ++v46)
        {
          v46 = v50;
          break;
        }
      }

      if (v48 | v47)
      {
        if (!v48)
        {
          goto LABEL_57;
        }

        if (!v47)
        {
          v55 = &v12[16 * v27];
          *v55 = v49;
          *(v55 + 2) = 1;
          ++v27;
        }

        v47 += v48;
        if (v47)
        {
          goto LABEL_57;
        }

        v53 = -1;
      }

      else
      {
        v53 = 0;
      }

      v47 = 0;
      v54 = &v12[16 * v27];
      *v54 = v49;
      *(v54 + 2) = v53;
      ++v27;
LABEL_57:
      if (v46 >= v25)
      {
        goto LABEL_14;
      }
    }
  }

  v27 = 0;
LABEL_14:
  v28 = 0;
  while (1)
  {
    v29 = &a2[3 * v28];
    v30 = *v29;
    v58 = v29[2];
    if (reserveDiffSegmentVector(&v61, v27))
    {
      break;
    }

    v57 = v28;
    if (v27)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v35 = &v12[16 * v31];
        v36 = *v35;
        if (v34 < v30)
        {
          v37 = (v58 + 16 + 24 * v34);
          while (*v37 + *(v37 - 2) < v36)
          {
            v37 += 3;
            if (v30 == ++v34)
            {
              goto LABEL_40;
            }
          }
        }

        if (v34 == v30)
        {
          break;
        }

        if (v31)
        {
          if (v33)
          {
            v38 = -1;
          }

          else
          {
            v38 = *(v58 + 24 * v34 + 8) + v32 - *(v58 + 24 * v34);
          }

          v59.n128_u64[0] = v32;
          v59.n128_u64[1] = v38;
          v60 = v36 - v32;
          pushDiffSegment(&v61, &v59);
          v32 = *v35;
        }

        else
        {
          v32 = *v35;
        }

        v33 += *(v35 + 2);
        if (++v31 == v27)
        {
          goto LABEL_31;
        }
      }

LABEL_40:
      v43 = "no overlapping segment found";
      v44 = 539;
      goto LABEL_41;
    }

LABEL_31:
    v39 = v61;
    v40 = reallocToFit(v62, 24 * v61);
    *(&v61 + 1) = v39;
    v62 = v40;
    free(v29[2]);
    *v29 = v61;
    v29[2] = v62;
    v62 = 0;
    v61 = 0uLL;
    v28 = v57 + 1;
    if (v57 + 1 == a1)
    {
      v41 = 0;
      goto LABEL_36;
    }
  }

LABEL_35:
  v41 = 0xFFFFFFFFLL;
LABEL_36:
  free(v12);
  free(v62);
  return v41;
}

uint64_t mergeDiffSegmentEventCompareProc(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 >= *a1)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return 1;
}

uint64_t getComboControlsFromMergedDiffSegmentVectors(char *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (!a1)
  {
    v16 = 0;
LABEL_39:
    v39 = 0;
    goto LABEL_40;
  }

  v7 = a1;
  v8 = *a2;
  v9 = a1 + 2;
  v10 = calloc(&v9[v9 * *a2], 8uLL);
  if (v10)
  {
    v11 = calloc(v7, 8uLL);
    if (v11)
    {
      if (v8)
      {
        v12 = 0;
        v15 = a2[2];
        v14 = a2 + 2;
        v13 = v15;
        v16 = 1;
        while (1)
        {
          v17 = &v10[8 * v16 * v9];
          v18 = &v10[8 * (v16 - 1) * v9];
          v19 = *(v13 + 24 * v12 + 16);
          if (*(v13 + 24 * v12 + 8) == -1)
          {
            if (v19 < 0)
            {
              v19 = 0x8000000000000000 - v19;
            }

            if (!v18[1])
            {
              v18[1] = v19;
              goto LABEL_25;
            }

            v17[1] = v19;
          }

          else
          {
            v20 = (v18 + 2);
            v21 = 1;
            v22 = v14;
            v23 = v11;
            v24 = v7;
            do
            {
              v25 = *v22;
              v22 += 3;
              v26 = *(v25 + 24 * v12 + 8);
              v27 = v26 - *v23;
              if (v26 != *v23)
              {
                v21 = 0;
              }

              *v23++ = v26 + v19;
              v28 = 0x8000000000000000 - v27;
              if (v27 >= 0)
              {
                v28 = v27;
              }

              *v20++ = v28;
              --v24;
            }

            while (v24);
            if (v21)
            {
              v29 = v18[1];
              if (v29 < 0)
              {
                v29 = 0x8000000000000000 - v29;
              }

              if (!v29)
              {
                v31 = *v18;
                if ((*v18 & 0x8000000000000000) != 0)
                {
                  v31 = 0x8000000000000000 - *v18;
                }

                v32 = __OFADD__(v31, v19);
                v33 = v31 + v19;
                if (v33 < 0 != v32)
                {
                  v33 = 0x8000000000000000 - v33;
                }

                *v18 = v33;
                goto LABEL_25;
              }
            }

            v30 = 0x8000000000000000 - v19;
            if (v19 >= 0)
            {
              v30 = v19;
            }

            *v17 = v30;
          }

          ++v16;
LABEL_25:
          if (++v12 == v8)
          {
            goto LABEL_38;
          }
        }
      }

      v16 = 1;
LABEL_38:
      free(v11);
      a1 = reallocToFit(v10, 8 * v9 * v16);
      goto LABEL_39;
    }

    v34 = *__error();
    v37 = "calloc ipos";
    v38 = 600;
  }

  else
  {
    v34 = *__error();
    v37 = "calloc controls";
    v38 = 596;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "getComboControlsFromMergedDiffSegmentVectors", v38, 53, v34, v37, v35, v36, v41);
  free(v10);
  a1 = 0;
  v16 = 0;
  v39 = 0xFFFFFFFFLL;
LABEL_40:
  *a3 = a1;
  *a4 = v16;
  return v39;
}

uint64_t rawimg_force_in_place(void *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 2120) <= a3[265])
  {
    v12 = a3[265];
  }

  else
  {
    v12 = *(a4 + 2120);
  }

  v15 = AAFileStreamOpenWithPath(*(a4 + 2048), 0, 0);
  if (!v15)
  {
    v23 = "AAFileStreamOpenWithPath";
    v24 = 234;
LABEL_123:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v24, 141, 0, v23, v13, v14, v133);
    v48 = 0;
    v45 = 0;
    v38 = 0;
    v35 = 0;
    v17 = 0;
LABEL_124:
    v115 = 0;
    goto LABEL_125;
  }

  v16 = (a5 + 0x3FFF) >> 14;
  v17 = calloc(1uLL, 0x68uLL);
  v18 = calloc(1uLL, 0x28uLL);
  v21 = v18;
  if ((v16 & 0x80000000) != 0)
  {
    v25 = "too little excess";
    v26 = 184;
LABEL_122:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "aaSimStreamOpen", v26, 141, 0, v25, v19, v20, v133);
    free(v17);
    SimStreamClose(v21, v108, v109, v110, v111, v112, v113, v114);
    v23 = "aaSimStreamOpen";
    v24 = 236;
    goto LABEL_123;
  }

  if (!v17 || !v18)
  {
    v25 = "aaCalloc";
    v26 = 185;
    goto LABEL_122;
  }

  *v18 = v15;
  *(v18 + 4) = (v12 + 0x3FFF) >> 14;
  *(v18 + 8) = v16;
  *(v18 + 9) = a6;
  v22 = ((v12 + 0x3FFF) >> 14);
  if (v22 >= 0x3333333333333334)
  {
    *__error() = 12;
    v21[1] = 0;
LABEL_121:
    v25 = "aaCalloc";
    v26 = 195;
    goto LABEL_122;
  }

  v27 = calloc(v22, 5uLL);
  v21[1] = v27;
  if (!v27)
  {
    goto LABEL_121;
  }

  AACustomByteStreamSetData(v17, v21);
  AACustomByteStreamSetCloseProc(v17, SimStreamClose);
  AACustomByteStreamSetPReadProc(v17, SimStreamPRead);
  AACustomByteStreamSetPWriteProc(v17, SimStreamPWrite);
  v17[11] = SimStreamSimulate;
  v28 = *v17;
  v29 = aaSegmentStreamOpen(v17, a3);
  v35 = v29;
  if (!v29)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 241, 141, 0, "aaSegmentStreamOpen", v33, v34, v133);
    v48 = 0;
    v45 = 0;
    v38 = 0;
    goto LABEL_124;
  }

  v38 = aaForkInputStreamOpen(v29, a3, 0, v30, v31, v32, v33, v34);
  if (!v38)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 243, 141, 0, "aaForkInputStreamOpen", v36, v37, v133);
    v48 = 0;
    v45 = 0;
    goto LABEL_124;
  }

  v39 = aaSegmentStreamOpen(v17, a4);
  v45 = v39;
  if (!v39)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 247, 141, 0, "aaSegmentStreamOpen", v43, v44, v133);
    v48 = 0;
    goto LABEL_124;
  }

  v153 = v28;
  v48 = aaForkInputStreamOpen(v39, a4, 0, v40, v41, v42, v43, v44);
  if (!v48)
  {
    v106 = "aaForkOutputStreamOpen";
    v107 = 249;
LABEL_144:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v107, 141, 0, v106, v46, v47, v133);
    goto LABEL_124;
  }

  v143 = 0;
  v142 = vnegq_f64(0);
  v141 = 1;
  v152 = v45;
  v151 = a6;
  v158 = a2;
  v159 = a1;
LABEL_19:
  bzero(*(v153 + 8), 5 * *(v153 + 16));
  v49 = *(v153 + 16);
  *(v153 + 24) = 0;
  *(v153 + 20) = v49;
  v50 = *a2;
  if (*a2)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = (*a1 + 24 * v52);
      if ((*v53 & 0x8000000000000000) == 0)
      {
        v54 = *v53;
      }

      else
      {
        v54 = 0x8000000000000000 - *v53;
      }

      v55 = v53[2];
      v56 = 0x8000000000000000 - v55;
      if (v55 >= 0)
      {
        v56 = v55;
      }

      if (v54)
      {
        v148 = v56;
        v154 = v52;
        for (i = 0; i < v54; i += v58)
        {
          if (v54 - i >= 0x10000)
          {
            v58 = 0x10000;
          }

          else
          {
            v58 = v54 - i;
          }

          if (v58 != aaByteStreamSimulate(v38))
          {
            v129 = "aaByteStreamSimulate";
            v130 = 270;
            goto LABEL_146;
          }
        }

        a1 = v159;
        v50 = *v158;
        a6 = v151;
        v52 = v154;
        v56 = v148;
      }

      v51 += v54 + v56;
      ++v52;
    }

    while (v52 < v50);
  }

  v59 = 1;
  v60 = v50;
  v61 = v158;
  v145 = v35;
LABEL_36:
  if (!v60)
  {
    goto LABEL_63;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v139 = v59;
  while (1)
  {
    v65 = &(*v159)[3 * v64];
    v66 = v65[1];
    v67 = 0x8000000000000000 - *v65;
    if ((*v65 & 0x8000000000000000) == 0)
    {
      v67 = *v65;
    }

    if (v66 >= 0)
    {
      v68 = v65[1];
    }

    else
    {
      v68 = 0x8000000000000000 - v66;
    }

    v69 = v65[2];
    if (v69 < 0)
    {
      v69 = 0x8000000000000000 - v69;
    }

    v155 = v64;
    if (v59 == 2)
    {
      v63 += v67;
      if (v63 >= *(a4 + 2056))
      {
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    v146 = v68;
    v149 = v69;
    if (v67)
    {
      break;
    }

LABEL_56:
    v62 += v149;
    v59 = v139;
    if (v139 != 1)
    {
      v35 = v145;
      v68 = v146;
LABEL_60:
      v73 = aaByteStreamSimulate(v48);
      v61 = v158;
      v64 = v155;
      if (v68 != v73)
      {
        v129 = "aaByteStreamSimulate";
        v130 = 310;
        goto LABEL_146;
      }

      goto LABEL_61;
    }

    v61 = v158;
    v64 = v155;
    v35 = v145;
    v68 = v146;
    if (v63 < *(a4 + 2056))
    {
      goto LABEL_60;
    }

LABEL_61:
    v63 += v68;
    ++v64;
    v50 = *v61;
    if (v64 >= *v61)
    {
      v60 = *v61;
      a6 = v151;
LABEL_63:
      if (++v59 != 3)
      {
        goto LABEL_36;
      }

      v74 = *(v153 + 28);
      if (a6 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "ForceInPlace %d: excess_pages=%d/%d, converted bytes=%llu, %zu controls\n", v141, v74, *(v153 + 32), v143, v50);
        v74 = *(v153 + 28);
      }

      v75 = *(v153 + 32);
      v76 = __OFSUB__(v74, v75);
      v77 = v74 - v75;
      if ((v77 < 0) ^ v76 | (v77 == 0))
      {
        v132 = merge_controls(*v159, v158, a4);
        *v159 = v132;
        if (v132)
        {
          if (v151 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "ForceInPlace: %zu controls. Dropped %llu bytes to stay within budget.\n", *v158, v143);
          }

          v115 = 1;
        }

        else
        {
          v129 = "merge_controls";
          v130 = 447;
LABEL_146:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v130, 141, 0, v129, v46, v47, v133);
          v115 = 0;
        }

        v45 = v152;
        goto LABEL_125;
      }

      v78 = v77 + 1;
      v79 = (v78 >> 1) << 14;
      if (v78 < 2)
      {
        v80 = 1;
        a2 = v158;
        a1 = v159;
        v81 = v143;
        goto LABEL_118;
      }

      v137 = 0;
      v134 = -1;
      v82 = 1;
      a2 = v158;
      a1 = v159;
      v81 = v143;
      v83 = v142;
      while (2)
      {
        v84 = *(a4 + 2080);
        v85 = *a2;
        if (*a2)
        {
          v86 = 0;
          v135 = v82 - 1;
          v136 = v82;
          v87 = 24 * v85;
          while (1)
          {
            v88 = *a1 + v87;
            v89 = (v88 - 24);
            v90 = *(v88 - 24);
            v91 = vbslq_s8(vcltzq_s64(v90), vsubq_s64(v83, v90), v90);
            v92 = *(v88 - 8);
            v93 = 0x8000000000000000 - v92;
            if (v92 >= 0)
            {
              v93 = *(v88 - 8);
            }

            v84 -= vaddvq_s64(v91);
            if (!v79)
            {
              goto LABEL_97;
            }

            v94 = v91.i64[0];
            if (!v91.i64[0])
            {
              goto LABEL_97;
            }

            if (v82 == 1)
            {
              break;
            }

            if (v82 != 2)
            {
              if (v82 != 3)
              {
                goto LABEL_97;
              }

              v95 = *(a4 + 2056);
              goto LABEL_89;
            }

            if (v84 >= *(a4 + 2072))
            {
              if (v91.i64[0] > v79)
              {
                v96 = v134;
                v97 = v137;
                if (v134 > v91.i64[0])
                {
                  v97 = v88 - 24;
                }

                v137 = v97;
                if (v134 >= v91.i64[0])
                {
                  v96 = v91.i64[0];
                }

                v134 = v96;
                goto LABEL_97;
              }

              goto LABEL_92;
            }

LABEL_97:
            v87 -= 24;
            --v85;
            a1 = v159;
            if (!v85)
            {
              v80 = v86 == 0;
              a2 = v158;
              goto LABEL_100;
            }
          }

          if (v84 < *(a4 + 2056))
          {
            goto LABEL_97;
          }

          v95 = *(a4 + 2072);
LABEL_89:
          if (v84 < v95)
          {
            if (v91.i64[0] >= v79)
            {
              v94 = v79;
            }

LABEL_92:
            if (v151 >= 4)
            {
              v98 = v79;
              v144 = v81;
              v156 = v84;
              v147 = v94;
              v150 = v88;
              v140 = v93;
              v138 = v91;
              fprintf(*MEMORY[0x29EDCA610], "Dropping %llu bytes at %llu, needed=%llu bytes, type %s\n", v94, v84, v79, (&rawimg_force_in_place_pass_name)[v135]);
              v91 = v138;
              v93 = v140;
              v94 = v147;
              v88 = v150;
              v84 = v156;
              v82 = v136;
              v81 = v144;
              v79 = v98;
              v83 = v142;
            }

            v90.i64[0] = v94;
            v99.i64[0] = vsubq_s64(v91, v90).u64[0];
            v99.i64[1] = vaddq_s64(v91, vdupq_n_s64(v94)).i64[1];
            *v89 = vbslq_s8(vcltzq_s64(v99), vsubq_s64(v83, v99), v99);
            v100 = v94 + v93;
            if ((v94 + v93) < 0)
            {
              v100 = 0x8000000000000000 - (v94 + v93);
            }

            *(v88 - 8) = v100;
            v81 += v94;
            v79 -= v94;
            v86 = 1;
            goto LABEL_97;
          }

          goto LABEL_97;
        }

        v80 = 1;
LABEL_100:
        if (v84)
        {
          v129 = "control sequence broken";
          v130 = 411;
          goto LABEL_146;
        }

        if (v79)
        {
          v101 = v80;
        }

        else
        {
          v101 = 0;
        }

        if (v82 != 3 || !v101 || !v137)
        {
          v102 = !v80;
          if (v82 > 2)
          {
            v102 = 1;
          }

          if (v102)
          {
            goto LABEL_118;
          }

          ++v82;
          if (!v79)
          {
            goto LABEL_118;
          }

          continue;
        }

        break;
      }

      v103 = v81;
      if (*v137 >= 0)
      {
        v104 = *v137;
      }

      else
      {
        v104 = 0x8000000000000000 - *v137;
      }

      v157 = *(v137 + 8);
      if (v151 >= 4)
      {
        fprintf(*MEMORY[0x29EDCA610], "Dropping copy fork with %llu bytes, needed=%llu bytesx\n", v104, v79);
      }

      v79 = 0;
      v80 = 0;
      *v137 = 0;
      v105 = vaddq_s64(vbslq_s8(vcltzq_s64(v157), vsubq_s64(v142, v157), v157), vdupq_n_s64(v104));
      *(v137 + 8) = vbslq_s8(vcltzq_s64(v105), vsubq_s64(v142, v105), v105);
      v81 = v104 + v103;
      a2 = v158;
      a1 = v159;
LABEL_118:
      v143 = v81;
      ++v141;
      v45 = v152;
      a6 = v151;
      if (v80 && v79)
      {
        v106 = "no possible conversions";
        v107 = 441;
        goto LABEL_144;
      }

      goto LABEL_19;
    }
  }

  v70 = 0;
  while (1)
  {
    v71 = v67;
    if (v67 - v70 >= 0x10000)
    {
      v72 = 0x10000;
    }

    else
    {
      v72 = v67 - v70;
    }

    if (v72 != aaByteStreamSimulate(v38))
    {
      v131 = 298;
      goto LABEL_150;
    }

    if (v72 != aaByteStreamSimulate(v48))
    {
      break;
    }

    v62 += v72;
    v63 += v72;
    v70 += v72;
    v67 = v71;
    if (v70 >= v71)
    {
      goto LABEL_56;
    }
  }

  v131 = 299;
LABEL_150:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v131, 141, 0, "aaByteStreamSimulate", v46, v47, v133);
  v115 = 0;
  v45 = v152;
  v35 = v145;
LABEL_125:
  if (AAByteStreamClose(v38) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 458, 141, 0, "AAByteStreamClose", v116, v117, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v35) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 459, 141, 0, "AAByteStreamClose", v118, v119, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v48) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 460, 141, 0, "AAByteStreamClose", v120, v121, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v45) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 461, 141, 0, "AAByteStreamClose", v122, v123, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v17) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 462, 141, 0, "AAByteStreamClose", v124, v125, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v15) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 463, 141, 0, "AAByteStreamClose", v126, v127, v133);
    v115 = 0;
  }

  if (v115)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}