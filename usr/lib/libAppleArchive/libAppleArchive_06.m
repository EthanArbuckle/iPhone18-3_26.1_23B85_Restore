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
  v23 = BXDiffMatchesOBuf(v19);
  OMemStreamDestroy(v10);
  OMemStreamDestroy(v19);
  if (v22)
  {
    return -1;
  }

  else
  {
    return v23;
  }
}

void *aaInSituStreamOpen(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x140uLL);
  v14 = v11;
  if (!v10 || !v11)
  {
    v24 = "aaCalloc";
    v25 = 336;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", v25, 140, 0, v24, v12, v13, v34);
    free(v10);
    InSituStreamClose(v14, v26, v27, v28, v29, v30, v31, v32);
    return 0;
  }

  *v11 = a1;
  v11[78] = a5;
  v15 = (a2 + 0x3FFF) >> 14;
  v11[72] = v15;
  LODWORD(v15) = v15 + ((a3 + 0x3FFF) >> 14) + (v15 >> 2);
  v11[79] = a4;
  v16 = (v15 + 256);
  *(v14 + 292) = v16;
  if (v15 + 256 < 0)
  {
    *__error() = 12;
    *(v14 + 8) = 0;
    goto LABEL_14;
  }

  v17 = calloc(v16, 0xDuLL);
  *(v14 + 8) = v17;
  if (!v17)
  {
LABEL_14:
    v24 = "aaCalloc";
    v25 = 347;
    goto LABEL_15;
  }

  *&v18 = -1;
  *(&v18 + 1) = -1;
  *(v14 + 240) = v18;
  *(v14 + 256) = v18;
  *(v14 + 208) = v18;
  *(v14 + 224) = v18;
  *(v14 + 176) = v18;
  *(v14 + 192) = v18;
  *(v14 + 144) = v18;
  *(v14 + 160) = v18;
  *(v14 + 112) = v18;
  *(v14 + 128) = v18;
  *(v14 + 80) = v18;
  *(v14 + 96) = v18;
  *(v14 + 48) = v18;
  *(v14 + 64) = v18;
  *(v14 + 16) = v18;
  *(v14 + 32) = v18;
  v19 = *(v14 + 292);
  if (v19 >= 1)
  {
    v20 = 0;
    for (i = 0; i < v19; ++i)
    {
      v22 = *(v14 + 8) + v20;
      *(v22 + 1) = i;
      *(v22 + 5) = 0xFFFFFFFF00000000;
      if (i < *(v14 + 288))
      {
        free_page(v14, i);
        v19 = *(v14 + 292);
      }

      v20 += 13;
    }
  }

  v23 = *(v14 + 288);
  if ((AAByteStreamTruncate(a1) & 0x80000000) != 0)
  {
    v24 = "AAByteStreamTruncate";
    v25 = 362;
    goto LABEL_15;
  }

  AACustomByteStreamSetData(v10, v14);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  AACustomByteStreamSetPReadProc(v10, InSituStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, InSituStreamPWrite);
  AACustomByteStreamSetCancelProc(v10, InSituStreamCancel);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  v10[8] = InSituTruncate;
  v10[11] = InSituStreamSimulate;
  return v10;
}

uint64_t free_page(uint64_t result, int a2)
{
  v3 = result;
  while (1)
  {
    v4 = (*(result + 8) + 13 * a2);
    v5 = *v4;
    if (v5 != 2)
    {
      break;
    }

    a2 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    *v4 = 0;
    *(v4 + 5) = 0;
  }

  ++*(result + 296);
  if ((*(v4 + 9) & 0x80000000) != 0)
  {
    v6 = *(result + 276);
    *(result + 276) = v6 - 1;
    if (v6 >= 2)
    {
      v7 = *(result + 272);
    }

    else
    {
      *(result + 276) = 32;
      result = rand();
      v7 = result & 0x3F;
      *(v3 + 272) = v7;
    }

    v8 = v3 + 4 * v7;
    *(v4 + 9) = *(v8 + 16);
    *(v8 + 16) = a2;
  }

  return result;
}

uint64_t InSituStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 292);
    if (v9 < 1)
    {
      goto LABEL_7;
    }

    v10 = 0;
    v11 = (*(result + 8) + 5);
    do
    {
      v12 = *v11;
      v11 = (v11 + 13);
      v10 += v12;
      --v9;
    }

    while (v9);
    if (v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 298, 140, 0, "%i dangling reads", a7, a8, v10);
      v13 = 0;
    }

    else
    {
LABEL_7:
      v13 = 1;
    }

    v14 = *(v8 + 288);
    v15 = *(v8 + 308);
    if (*(v8 + 300) + v14 != *(v8 + 296) + v15)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 301, 140, "file + excess != written + free", a6, a7, a8, v18);
      v14 = *(v8 + 288);
      v15 = *(v8 + 308);
    }

    if (v14 < v15)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 302, 140, "file < written", a6, a7, a8, v18);
    }

    if (*(v8 + 316))
    {
      fprintf(*MEMORY[0x29EDCA610], "InSituStream: pages: %i file, %i written, %i remapped, %i free, %i excess (%iK)\n", *(v8 + 288), *(v8 + 308), *(v8 + 304), *(v8 + 296), *(v8 + 300), 16 * *(v8 + 300));
    }

    free(*(v8 + 8));
    if (*(v8 + 312) && AAByteStreamClose(*v8) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 319, 140, 0, "AAByteStreamClose", v16, v17, v18);
      v13 = 0;
    }

    free(v8);
    if (v13)
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

uint64_t InSituStreamPRead(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = a1[1] + 13 * ((v11 + a4) >> 14);
    v13 = (v11 + a4) & 0x3FFF;
    v14 = a3 - v11 >= 0x4000 - v13 ? 0x4000 - v13 : a3 - v11;
    if (!*(v12 + 5))
    {
      break;
    }

    v15 = *a1;
    if (!*(*a1 + 32))
    {
      goto LABEL_20;
    }

    if (a3 == v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v13 | (*(v12 + 1) << 14);
      v18 = a2 + v11;
      v19 = v14;
      while (1)
      {
        v20 = (*(v15 + 32))(*v15, v18, v19, v17);
        if (v20 < 0)
        {
          break;
        }

        if (v20)
        {
          v18 += v20;
          v16 += v20;
          v17 += v20;
          v19 -= v20;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v16 = v20;
    }

LABEL_16:
    if (v14 != v16)
    {
LABEL_20:
      v21 = "aaByteStreamPReadExpected";
      v22 = 238;
      goto LABEL_22;
    }

    v11 += v14;
    if (v11 >= a3)
    {
      return v11;
    }
  }

  v21 = "data not locked";
  v22 = 235;
LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPRead", v22, 140, 0, v21, a7, a8, v24);
  return -1;
}

uint64_t InSituStreamPWrite(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = v11 + a4;
    v13 = (v11 + a4) >> 14;
    v14 = (a1[1] + 13 * v13);
    if (a3 - v11 >= 0x4000 - ((v11 + a4) & 0x3FFF))
    {
      v15 = 0x4000 - ((v11 + a4) & 0x3FFF);
    }

    else
    {
      v15 = a3 - v11;
    }

    if (*v14 == 2)
    {
      goto LABEL_9;
    }

    if ((remap_page(a1, v13) & 0x80000000) != 0)
    {
      break;
    }

    *v14 = 2;
    --*(a1 + 74);
    ++*(a1 + 77);
LABEL_9:
    v16 = *a1;
    if (!*(*a1 + 40))
    {
      goto LABEL_21;
    }

    if (a3 == v11)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = a2 + v11;
      v19 = v15;
      while (1)
      {
        v20 = (*(v16 + 40))(*v16, v18, v19, v12);
        if (v20 < 1)
        {
          break;
        }

        v18 += v20;
        v17 += v20;
        v12 += v20;
        v19 -= v20;
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      v17 = v20;
    }

LABEL_17:
    if (v15 != v17)
    {
LABEL_21:
      v21 = "aaByteStreamPWriteExpected";
      v22 = 268;
      goto LABEL_23;
    }

    v11 += v15;
    if (v11 >= a3)
    {
      return v11;
    }
  }

  v21 = "remap_page";
  v22 = 261;
LABEL_23:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPWrite", v22, 140, 0, v21, a7, a8, v24);
  return -1;
}

uint64_t InSituStreamSimulate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  if (a2 == 3)
  {
    v11 = *a1;
    if (!*(*a1 + 32))
    {
      return -1;
    }

    if (!a4)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      v14 = (*(v11 + 32))(*v11, a3, v9, v8);
      if (v14 < 0)
      {
        break;
      }

      if (v14)
      {
        a3 += v14;
        v13 += v14;
        v8 += v14;
        v9 -= v14;
        if (v9)
        {
          continue;
        }
      }

      return v13;
    }

    return v14;
  }

  if (a4 < 1)
  {
    return v9;
  }

  if (a2 > 1)
  {
    v23 = "not implemented";
    v24 = 197;
    goto LABEL_24;
  }

  v16 = a5 + a4;
  while (1)
  {
    v17 = *(a1 + 8) + 13 * (v8 >> 14);
    v20 = *(v17 + 5);
    v18 = (v17 + 5);
    v19 = v20;
    if (!a2)
    {
      break;
    }

    if (v19 <= 0)
    {
      v23 = "data not locked";
      v24 = 209;
      goto LABEL_24;
    }

    v21 = v19 - 1;
    *v18 = v21;
    if (!v21)
    {
      free_page(a1, v8 >> 14);
    }

LABEL_18:
    v8 = (v8 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (v8 >= v16)
    {
      return v9;
    }
  }

  *v18 = v19 + 1;
  if (v19)
  {
    goto LABEL_18;
  }

  v22 = *(a1 + 296);
  *(a1 + 296) = v22 - 1;
  if (v22)
  {
    goto LABEL_18;
  }

  v23 = "no free pages";
  v24 = 204;
LABEL_24:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", v24, 140, 0, v23, a7, a8, v26);
  return -1;
}

uint64_t remap_page(_DWORD *a1, int a2)
{
  v2 = *(a1 + 1);
  v3 = v2 + 13 * a2;
  if (*(v3 + 5))
  {
    if (*v3 == 1)
    {
      result = remap_page(a1, *(v3 + 1));
      *(v3 + 5) = 0;
      return result;
    }

    v8 = malloc(0x4000uLL);
    v11 = v8;
    if (v8)
    {
      v12 = a1[74];
      if (v12 <= 0)
      {
        v23 = a1[72];
        v24 = a1[75];
        a1[75] = v24 + 1;
        v16 = v24 + v23;
        if (v24 + v23 >= a1[73])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "allocate_page", 97, 140, 0, "too many excess pages", v9, v10, v38);
        }

        else if ((v16 & 0x80000000) == 0)
        {
LABEL_20:
          v25 = *a1;
          if (*(*a1 + 32))
          {
            v26 = 0;
            v27 = *(v3 + 1) << 14;
            v28 = 0x4000;
            v29 = v8;
            while (1)
            {
              v30 = (*(v25 + 32))(*v25, v29, v28, v27);
              if (v30 < 0)
              {
                break;
              }

              if (v30)
              {
                v29 += v30;
                v26 += v30;
                v27 += v30;
                v28 -= v30;
                if (v28)
                {
                  continue;
                }
              }

              if (v26 != 0x4000)
              {
                break;
              }

              v31 = *a1;
              if (*(*a1 + 40))
              {
                v32 = 0;
                v33 = v16 << 14;
                v34 = 0x4000;
                v35 = v11;
                while (1)
                {
                  v36 = (*(v31 + 40))(*v31, v35, v34, v33);
                  if (v36 < 1)
                  {
                    break;
                  }

                  v35 += v36;
                  v32 += v36;
                  v33 += v36;
                  v34 -= v36;
                  if (!v34)
                  {
                    if (v32 != 0x4000)
                    {
                      break;
                    }

                    v6 = 0;
                    *(v3 + 1) = v16;
                    v37 = *(a1 + 1) + 13 * v16;
                    *v37 = 1;
                    *(v37 + 1) = a2;
                    *(v37 + 5) = 0x7FFFFFFF;
                    ++a1[76];
                    ++a1[74];
                    goto LABEL_35;
                  }
                }
              }

              v21 = "aaByteStreamPWriteExpected";
              v22 = 158;
              goto LABEL_34;
            }
          }

          v21 = "aaByteStreamPReadExpected";
          v22 = 157;
          goto LABEL_34;
        }
      }

      else
      {
        v13 = a1[70];
        a1[74] = v12 - 1;
        v14 = a1[73];
        if (v14)
        {
          v15 = &a1[(v13 & 0x3F) + 4];
          do
          {
            v16 = *v15;
            if ((*v15 & 0x80000000) != 0 || (v17 = a1[71], v18 = __OFSUB__(v17, 1), --v17, a1[71] = v17, (v17 < 0) ^ v18 | (v17 == 0)))
            {
              a1[71] = 32;
              v19 = a1[70] + 1;
              a1[70] = v19;
              v15 = &a1[(v19 & 0x3F) + 4];
            }

            else
            {
              v20 = v2 + 13 * v16;
              *v15 = *(v20 + 9);
              *(v20 + 9) = -1;
              if (!*(v20 + 5) && !*v20)
              {
                goto LABEL_20;
              }
            }

            --v14;
          }

          while (v14);
        }
      }

      v21 = "allocate_page";
      v22 = 153;
    }

    else
    {
      v21 = "aaMalloc";
      v22 = 149;
    }

LABEL_34:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", v22, 140, 0, v21, v9, v10, v38);
    v6 = 0xFFFFFFFFLL;
LABEL_35:
    free(v11);
    return v6;
  }

  return 0;
}

uint64_t aeaContextUnlock(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5, int a6)
{
  v141 = *MEMORY[0x29EDCA608];
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
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  memset(v67, 0, sizeof(v67));
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0;
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
  *v115 = 0u;
  v114 = 0;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  *__n = 0u;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v12 = *(a1 + 1372);
  *a2 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *(a2 + 16) = v13;
  if ((aeaCryptoInit(v72, a2) & 0x80000000) != 0)
  {
    v26 = "initializing crypto params";
    v27 = 33;
    goto LABEL_74;
  }

  if ((aeaContainerOffsetsInit(v67, a2, v72) & 0x80000000) != 0)
  {
    v26 = "deriving container offsets";
    v27 = 34;
    goto LABEL_74;
  }

  v18 = DWORD2(v72[0]);
  if (DWORD2(v72[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  v66 = a4;
  v19 = *(a1 + 2720);
  __memcpy_chk();
  LODWORD(v115[0]) = v18;
  memset_s(v115 + v18 + 4, 256 - v18, 0, 256 - v18);
  v20 = v74;
  if (v74 >= 0x101)
  {
    goto LABEL_78;
  }

  v21 = *(a1 + 2720);
  __memcpy_chk();
  LODWORD(v94[0]) = v20;
  memset_s(v94 + v20 + 4, 256 - v20, 0, 256 - v20);
  if (*a2 <= 4u && ((1 << *a2) & 0x15) != 0)
  {
    v22 = *(a1 + 332);
    if (v22)
    {
      if (v22 >= 0x101)
      {
        goto LABEL_78;
      }

      v23 = *(a1 + 332);
      __memcpy_chk();
      LODWORD(v96[0]) = v22;
      memset_s(v96 + v22 + 4, 256 - v22, 0, 256 - v22);
    }

    else if (*(a1 + 592))
    {
      if (!*(&v81 + 1) || (v51 = (*(&v81 + 1))(v96, a1 + 592), LODWORD(v96[0]) != v73) || v51 < 0)
      {
        v26 = "deriving signing public key";
        v27 = 47;
        goto LABEL_74;
      }
    }
  }

  if (!a6 || !v12)
  {
    if ((aeaDeriveMainKeyExisting(v72, a2, __n, (a1 + 72), (a1 + 2152), v94, v96, (a1 + 852), (a1 + 1112), v115, *(a1 + 2432), *(a1 + 2440)) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v26 = "Main key derivation";
    v27 = 70;
LABEL_74:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", v27, 57, 0, v26, v16, v17, v65);
    v38 = 0;
    goto LABEL_75;
  }

  v24 = *(a1 + 1372);
  if (v24 >= 0x101)
  {
    goto LABEL_78;
  }

  v25 = *(a1 + 1372);
  __memcpy_chk();
  LODWORD(__n[0]) = v24;
  memset_s(__n + v24 + 4, 256 - v24, 0, 256 - v24);
LABEL_17:
  if (!a5)
  {
    goto LABEL_20;
  }

  if (*a2 > 5u)
  {
    v26 = "Unsupported signature mode";
    v27 = 102;
    goto LABEL_74;
  }

  v28 = 1 << *a2;
  if ((v28 & 0x2A) != 0)
  {
    goto LABEL_20;
  }

  if ((v28 & 0x14) == 0)
  {
    v60 = *(a1 + 2448);
    if (v60 >= 0x101)
    {
      goto LABEL_78;
    }

    v61 = *(a1 + 2448);
    __memcpy_chk();
    LODWORD(v90[0]) = v60;
    memset_s(v90 + v60 + 4, 256 - v60, 0, 256 - v60);
    goto LABEL_62;
  }

  memset(&v140[8], 0, 252);
  memset(__s, 0, 260);
  *&v140[7] = 1262834527;
  *v140 = 0x5F41454100000007;
  memset_s(&v140[11], 0xF9uLL, 0, 0xF9uLL);
  if (!*(&v75 + 1) || !LODWORD(__n[0]))
  {
    memset_s(v140, 0x104uLL, 0, 0x104uLL);
    goto LABEL_69;
  }

  v52 = (*(&v75 + 1))(v92, LODWORD(v72[0]), __n, v140, __s);
  memset_s(v140, 0x104uLL, 0, 0x104uLL);
  if (v52 < 0)
  {
LABEL_69:
    v26 = "deriving signature encryption key";
    v27 = 89;
    goto LABEL_74;
  }

  if (!*(&v80 + 1))
  {
LABEL_73:
    v26 = "decrypting signature";
    v27 = 90;
    goto LABEL_74;
  }

  memset(__s, 0, 260);
  v138 = 0;
  memset(v137, 0, sizeof(v137));
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  if (*(a1 + 2448) != HIDWORD(v73))
  {
    goto LABEL_72;
  }

  if (LODWORD(v92[0]) != LODWORD(v72[0]))
  {
    goto LABEL_72;
  }

  *(v137 + 4) = 0x324B45535F414541;
  LODWORD(v137[0]) = 8;
  memset_s((v137 | 0xC), 0xF8uLL, 0, 0xF8uLL);
  memset(v140, 0, sizeof(v140));
  if (!*(&v75 + 1) || !LODWORD(v92[0]) || ((*(&v75 + 1))(__s, DWORD1(v72[0]), v92, v137, v140) & 0x80000000) != 0)
  {
    goto LABEL_72;
  }

  v53 = DWORD2(v73);
  if (DWORD2(v73) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v90[0]) = v53;
  memset_s(v90 + v53 + 4, 256 - v53, 0, 256 - v53);
  v54 = HIDWORD(v72[0]);
  if (HIDWORD(v72[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v135[0]) = v54;
  memset_s(v135 + v54 + 4, 256 - v54, 0, 256 - v54);
  if (((*(&v80 + 1))(v90 + 4, LODWORD(v90[0]), v135, __s, 0, 0) & 0x80000000) != 0)
  {
LABEL_72:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v135, 0x104uLL, 0, 0x104uLL);
    memset_s(v137, 0x104uLL, 0, 0x104uLL);
    goto LABEL_73;
  }

  v55 = v90[0];
  v56 = DWORD2(v73);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v135, 0x104uLL, 0, 0x104uLL);
  memset_s(v137, 0x104uLL, 0, 0x104uLL);
  if (v55 != v56)
  {
    goto LABEL_73;
  }

LABEL_62:
  if (!*(&v78 + 1) || (v62 = (*(&v78 + 1))(v88, *(a1 + 2720), *(a1 + 2728)), LODWORD(v88[0]) != DWORD1(v73)) || v62 < 0)
  {
    v26 = "digesting prologue";
    v27 = 94;
    goto LABEL_74;
  }

  if (!*(&v79 + 1) || ((*(&v79 + 1))(v90, v96, v88) & 0x80000000) != 0)
  {
    v26 = "verifying signature";
    v27 = 97;
    goto LABEL_74;
  }

LABEL_20:
  v29 = HIDWORD(v72[0]);
  if (HIDWORD(v72[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  v30 = *(a1 + 2720);
  __memcpy_chk();
  LODWORD(v86[0]) = v29;
  memset_s(v86 + v29 + 4, 256 - v29, 0, 256 - v29);
  v31 = *(a1 + 2720);
  v33 = *(v31 + v68 + 16);
  v32 = *(v31 + v68 + 32);
  v132 = *(v31 + v68);
  v133 = v33;
  v134 = v32;
  v34 = HIDWORD(v72[0]);
  v35 = *(a2 + 4);
  v36 = (v35 + HIDWORD(v72[0]));
  v37 = malloc(v36);
  v38 = v37;
  if (!v37)
  {
    v57 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 113, 57, *v57, "malloc", v58, v59, v65);
LABEL_75:
    v48 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

  memcpy(v37, (v31 + *(&v68 + 1)), v34);
  memcpy(&v38[v34], (v31 + *(&v67[0] + 1)), v35);
  memset(__s + 12, 0, 248);
  *(__s + 4) = 0x4B4548525F414541;
  LODWORD(__s[0]) = 8;
  memset_s(__s + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v140, 0, sizeof(v140));
  if (!*(&v75 + 1) || !LODWORD(__n[0]))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_58:
    v48 = 0xFFFFFFFFLL;
    goto LABEL_59;
  }

  v39 = (*(&v75 + 1))(v84, DWORD1(v72[0]), __n, __s, v140);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v39 < 0 || !v77 || LODWORD(v86[0]) != HIDWORD(v72[0]) || ((v77)(&v132, 48, v86, v84, v38, v36) & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  if ((aeaContainerParamsInitWithRootHeader(a2, &v132, v40, v41, v42, v43, v44, v45) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 126, 57, 0, "Invalid root header", v46, v47, v65);
    goto LABEL_58;
  }

  v48 = v66;
  if (a3)
  {
    v49 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101)
    {
      goto LABEL_78;
    }

    memcpy(a3 + 1, __n + 4, LODWORD(__n[0]));
    *a3 = v49;
    memset_s(a3 + v49 + 4, 256 - v49, 0, 256 - v49);
  }

  if (v66)
  {
    v50 = LODWORD(v115[0]);
    if (LODWORD(v115[0]) < 0x101)
    {
      memcpy(v66 + 1, v115 + 4, LODWORD(v115[0]));
      *v66 = v50;
      memset_s(v66 + v50 + 4, 256 - v50, 0, 256 - v50);
      v48 = 0;
      goto LABEL_59;
    }

LABEL_78:
    __break(1u);
  }

LABEL_59:
  memset_s(v38, v36, 0, v36);
LABEL_76:
  free(v38);
  memset_s(v72, 0xD0uLL, 0, 0xD0uLL);
  memset_s(v67, 0x68uLL, 0, 0x68uLL);
  memset_s(&v132, 0x30uLL, 0, 0x30uLL);
  memset_s(v94, 0x104uLL, 0, 0x104uLL);
  memset_s(v92, 0x104uLL, 0, 0x104uLL);
  memset_s(v90, 0x104uLL, 0, 0x104uLL);
  memset_s(v88, 0x104uLL, 0, 0x104uLL);
  memset_s(v115, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v86, 0x104uLL, 0, 0x104uLL);
  memset_s(v84, 0x104uLL, 0, 0x104uLL);
  memset_s(v96, 0x104uLL, 0, 0x104uLL);
  v63 = *MEMORY[0x29EDCA608];
  return v48;
}

uint64_t aeaContextCreateWithPrologue(_DWORD *a1, size_t a2)
{
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
  v31 = 0u;
  memset(__s, 0, sizeof(__s));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = malloc(0xAB8uLL);
  v5 = v4;
  if (!v4)
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 161;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextCreateWithPrologue", v13, 57, v14, v12, v10, v11, v23);
    AEAContextDestroy(v5);
    return 0;
  }

  memset_s(v4, 0xAB8uLL, 0, 0xAB8uLL);
  *(v5 + 684) = 1;
  if (a2 <= 0xB)
  {
    v12 = "Invalid prologue";
    v13 = 167;
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if ((aeaContainerParamsInitWithMagic(v5, a1, v6, v7, v8, v9, v10, v11) & 0x80000000) != 0)
  {
    v12 = "Invalid magic";
    v13 = 168;
    goto LABEL_15;
  }

  if ((aeaCryptoInit(__s, v5) & 0x80000000) != 0)
  {
    v12 = "Invalid container";
    v13 = 169;
    goto LABEL_15;
  }

  if ((aeaContainerOffsetsInit(&v23, v5, __s) & 0x80000000) != 0)
  {
    v12 = "deriving container offsets";
    v13 = 170;
    goto LABEL_15;
  }

  if (v27 != a2)
  {
    v12 = "Prologue size mismatch";
    v13 = 171;
    goto LABEL_15;
  }

  *(v5 + 341) = a2;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    *(v5 + 340) = 0;
LABEL_28:
    v14 = *__error();
    v12 = "malloc";
    v13 = 176;
    goto LABEL_16;
  }

  v16 = malloc(a2);
  *(v5 + 340) = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  memcpy(v16, a1, a2);
  v18 = *(v5 + 1);
  if (v18)
  {
    v19 = malloc(*(v5 + 1));
    *(v5 + 339) = v19;
    if (!v19)
    {
      v14 = *__error();
      v12 = "malloc";
      v13 = 184;
      goto LABEL_16;
    }

    memcpy(v19, &v17[*(&v23 + 1)], v18);
  }

  if (!*(&v41 + 1) || (result = (*(&v41 + 1))(v5 + 1892, v17, a2), *(v5 + 473) != DWORD1(v32)) || (result & 0x80000000) != 0)
  {
    v12 = "digesting prologue";
    v13 = 189;
    goto LABEL_15;
  }

  v20 = HIDWORD(v31);
  if (HIDWORD(v31) < 0x101)
  {
    v21 = *(v5 + 340);
    v22 = v24;
    __memcpy_chk();
    *(v5 + 612) = v20;
    memset_s(v5 + v20 + 2452, 256 - v20, 0, 256 - v20);
    if (v21)
    {
      memset_s((v21 + v22), v20, 0, v20);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void AEAContextDestroy(AEAContext context)
{
  if (context)
  {
    v2 = *(context + 339);
    if (v2)
    {
      memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
    }

    free(v2);
    v3 = *(context + 340);
    if (v3)
    {
      memset_s(*(context + 340), *(context + 341), 0, *(context + 341));
    }

    free(v3);
    memset_s(context, 0xAB8uLL, 0, 0xAB8uLL);

    free(context);
  }
}

AEAContext AEAContextCreateWithProfile(AEAProfile profile)
{
  v2 = malloc(0xAB8uLL);
  v3 = v2;
  if (!v2)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 237, 57, v12, "malloc", v13, v14, v16);
    goto LABEL_5;
  }

  memset_s(v2, 0xAB8uLL, 0, 0xAB8uLL);
  *(v3 + 684) = 0;
  if ((aeaContainerParamsInitWithProfile(v3, profile, v4, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 243, 57, 0, "Invalid profile: %u", v10, v11, profile);
LABEL_5:
    AEAContextDestroy(v3);
    return 0;
  }

  return v3;
}

AEAContext AEAContextCreateWithEncryptedStream(AAByteStream encrypted_stream)
{
  memset(__s, 0, sizeof(__s));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  *__size = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  v29 = 0;
  if (*(encrypted_stream + 2))
  {
    v4 = 0;
    v5 = &v29;
    v6 = 12;
    do
    {
      v7 = (*(encrypted_stream + 2))(*encrypted_stream, v5, v6);
      if (v7 < 0)
      {
        goto LABEL_12;
      }

      if (!v7)
      {
        break;
      }

      v5 = (v5 + v7);
      v4 += v7;
      v6 -= v7;
    }

    while (v6);
    if (v4 != 12)
    {
      goto LABEL_12;
    }

    if ((aeaContainerParamsInitWithMagic(v35, &v29, v8, v9, v10, v11, v1, v2) & 0x80000000) != 0)
    {
      v13 = "Invalid magic";
      v14 = 264;
      goto LABEL_13;
    }

    if ((aeaCryptoInit(__s, v35) & 0x80000000) != 0)
    {
      v13 = "Invalid container";
      v14 = 265;
      goto LABEL_13;
    }

    if ((aeaContainerOffsetsInit(v31, v35, __s) & 0x80000000) != 0)
    {
      v13 = "deriving container offsets";
      v14 = 266;
      goto LABEL_13;
    }

    v12 = __size[0];
    if (__size[0] >= 0x2000000001)
    {
      *__error() = 12;
LABEL_28:
      v15 = *__error();
      v13 = "malloc";
      v14 = 271;
      goto LABEL_14;
    }

    v19 = malloc(__size[0]);
    if (!v19)
    {
      goto LABEL_28;
    }

    v16 = v19;
    *v19 = v29;
    v19[2] = v30;
    if (*(encrypted_stream + 2))
    {
      v22 = 0;
      if (v12 != 12)
      {
        v23 = (v19 + 3);
        v24 = v12 - 12;
        while (1)
        {
          v25 = (*(encrypted_stream + 2))(*encrypted_stream, v23, v24);
          if (v25 < 0)
          {
            break;
          }

          if (v25)
          {
            v23 += v25;
            v22 += v25;
            v24 -= v25;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_31;
        }

        v22 = v25;
      }
    }

    else
    {
      v22 = -1;
    }

LABEL_31:
    if (v22 == v12 - 12)
    {
      v26 = aeaContextCreateWithPrologue(v16, v12);
      if (v26)
      {
        v17 = v26;
        free(v16);
        return v17;
      }

      v27 = "Context creation";
      v28 = 280;
    }

    else
    {
      v27 = "reading prologue";
      v28 = 276;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", v28, 57, 0, v27, v20, v21, v29);
  }

  else
  {
LABEL_12:
    v13 = "reading magic";
    v14 = 263;
LABEL_13:
    v15 = 0;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", v14, 57, v15, v13, v1, v2, v29);
    v16 = 0;
  }

  free(v16);
  AEAContextDestroy(0);
  return 0;
}

uint64_t AEAContextGetFieldUInt(AEAContext context, AEAContextField field)
{
  if (field > 3)
  {
    if (field > 13)
    {
      if (field == 14)
      {
        return *(context + 5);
      }

      if (field == 17)
      {
        return *(context + 5);
      }
    }

    else
    {
      if (field == 4)
      {
        return *(context + 4);
      }

      if (field == 13)
      {
        return *(context + 4);
      }
    }

    goto LABEL_19;
  }

  if (field <= 1)
  {
    if (!field)
    {
      return *context;
    }

    if (field == 1)
    {
      return *(context + 7);
    }

LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldUInt", 314, 57, 0, "Invalid field", v2, v3, v4);
    return -1;
  }

  if (field == 2)
  {
    return *(context + 3);
  }

  else
  {
    return *(context + 6);
  }
}

int AEAContextGetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, size_t buf_capacity, uint8_t *buf, size_t *buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << field) & 0xC1260) != 0)
  {
    if (representation)
    {
      v8 = "Invalid representation";
      v9 = 337;
LABEL_38:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", v9, 57, 0, v8, v6, v7, vars0);
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_18:
    v8 = "Invalid field";
    v9 = 346;
    goto LABEL_38;
  }

  if (representation != 1)
  {
    v8 = "Invalid representation";
    v9 = 343;
    goto LABEL_38;
  }

LABEL_7:
  if (field > 9)
  {
    if (field <= 11)
    {
      if (field == 10)
      {
        v10 = (context + 852);
      }

      else
      {
        v10 = (context + 1112);
      }

LABEL_34:

      return getFieldBlob(v10, buf_capacity, buf, buf_size, buf, buf_size, v6, v7);
    }

    switch(field)
    {
      case 0xCu:
        v10 = (context + 1632);
        goto LABEL_34;
      case 0x12u:
        v10 = (context + 1892);
        goto LABEL_34;
      case 0x13u:
        v10 = (context + 2152);
        goto LABEL_34;
    }

LABEL_37:
    v8 = "Invalid field";
    v9 = 375;
    goto LABEL_38;
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v10 = (context + 332);
    }

    else if (field == 8)
    {
      v10 = (context + 592);
    }

    else
    {
      v10 = (context + 72);
    }

    goto LABEL_34;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v10 = (context + 1372);
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (buf_size)
  {
    *buf_size = *(context + 1);
  }

  if (buf_capacity)
  {
    v11 = *(context + 1);
    if (v11 > buf_capacity)
    {
      v8 = "buf_capacity is too small";
      v9 = 358;
      goto LABEL_38;
    }

    memcpy(buf, *(context + 339), v11);
  }

  return 0;
}

uint64_t getFieldBlob(unsigned int *a1, size_t a2, void *__dst, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *a1;
  if (v8 <= a2)
  {
    memcpy(__dst, a1 + 1, v8);
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "getFieldBlob", 212, 57, 0, "buf_capacity is too small", a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }
}

int AEAContextSetFieldUInt(AEAContext context, AEAContextField field, uint64_t value)
{
  if (field != 1 && *(context + 684))
  {
    v6 = "Context can't be modified";
    v7 = 384;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", v7, 57, 0, v6, v3, v4, v12);
    return -1;
  }

  if (field <= 2)
  {
    if (field == 1)
    {
      if (value - 16 >= 0xFFFFFFFFFFFFFFF2)
      {
        v6 = "Invalid padding size";
        v7 = 415;
        goto LABEL_4;
      }

      result = 0;
      *(context + 7) = value;
      return result;
    }

    if (field == 2)
    {
      if (value > 2)
      {
        v6 = "Invalid checksum mode";
        v7 = 429;
        goto LABEL_4;
      }

      *(context + 3) = value;
      v9 = aeaChecksumSize(value);
      result = 0;
      *(context + 12) = v9;
      return result;
    }

LABEL_30:
    v6 = "Invalid field";
    v7 = 439;
    goto LABEL_4;
  }

  if (field == 17)
  {
    result = 0;
    v10 = 32;
    if (value > 0x20)
    {
      v10 = value;
    }

    if (v10 >= 0x40000)
    {
      LODWORD(v10) = 0x40000;
    }

    *(context + 5) = v10;
    return result;
  }

  if (field == 4)
  {
    result = 0;
    v11 = 0x4000;
    if (value > 0x4000)
    {
      v11 = value;
    }

    if (v11 >= 0x10000000)
    {
      LODWORD(v11) = 0x10000000;
    }

    *(context + 4) = v11;
    return result;
  }

  if (field != 3)
  {
    goto LABEL_30;
  }

  if (value <= 1284)
  {
    if (value && value != 256 && value != 774)
    {
      goto LABEL_40;
    }
  }

  else if (value > 2048)
  {
    if (value != 2304 && value != 2049)
    {
      goto LABEL_40;
    }
  }

  else if (value != 1285 && value != 1794)
  {
LABEL_40:
    v6 = "Invalid compression algorithm";
    v7 = 398;
    goto LABEL_4;
  }

  result = 0;
  *(context + 6) = value;
  return result;
}

int AEAContextSetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, const uint8_t *buf, size_t buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_21;
  }

  if (((1 << field) & 0x81260) != 0)
  {
    if (representation)
    {
      v11 = "Invalid representation";
      v12 = 458;
LABEL_36:
      v15 = 0;
LABEL_37:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", v12, 57, v15, v11, v6, v7, v18);
      return -1;
    }

    if (field == 19 && buf_size <= 0x13)
    {
      v11 = "Password is too short";
      v12 = 471;
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_21:
    v11 = "Invalid field";
    v12 = 467;
    goto LABEL_36;
  }

  if (representation != 1)
  {
    v11 = "Invalid representation";
    v12 = 464;
    goto LABEL_36;
  }

LABEL_7:
  if (field > 8)
  {
    if (field > 10)
    {
      switch(field)
      {
        case 0xBu:
          v13 = context + 1112;
          goto LABEL_32;
        case 0xCu:
          v13 = context + 1632;
          goto LABEL_32;
        case 0x13u:
          v13 = context + 2152;
          goto LABEL_32;
      }

LABEL_35:
      v11 = "Invalid field";
      v12 = 502;
      goto LABEL_36;
    }

    if (field == 9)
    {
      v13 = context + 72;
    }

    else
    {
      v13 = context + 852;
    }

LABEL_32:

    return setFieldBlob(v13, buf, buf_size, buf, buf_size, v5, v6, v7);
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v13 = context + 332;
    }

    else
    {
      v13 = context + 592;
    }

    goto LABEL_32;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v13 = context + 1372;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (*(context + 684))
  {
    v11 = "Context can't be modified";
    v12 = 477;
    goto LABEL_36;
  }

  v16 = *(context + 339);
  if (v16)
  {
    memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
  }

  free(v16);
  *(context + 339) = 0;
  *(context + 1) = 0;
  if (buf_size)
  {
    if (buf_size >= 0x4000001)
    {
      v18 = buf_size;
      v11 = "Invalid auth data size: %zu";
      v12 = 483;
      goto LABEL_36;
    }

    v17 = malloc(buf_size);
    *(context + 339) = v17;
    if (!v17)
    {
      v15 = *__error();
      v11 = "malloc";
      v12 = 486;
      goto LABEL_37;
    }

    *(context + 1) = buf_size;
    memcpy(v17, buf, buf_size);
  }

  return 0;
}

uint64_t setFieldBlob(_DWORD *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0x101)
  {
    v11 = a1 + 1;
    memcpy(a1 + 1, a2, a3);
    *a1 = a3;
    memset_s(v11 + a3, 256 - a3, 0, 256 - a3);
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "setFieldBlob", 223, 57, 0, "Invalid field size", a7, a8, v12);
    return 0xFFFFFFFFLL;
  }
}

int AEAContextGenerateFieldBlob(AEAContext context, AEAContextField field)
{
  v11 = 0;
  if (field == 19)
  {
    v5 = context + 2156;
    result = AEAKeychainGenerateItem(0, 0x63uLL, 0x100uLL, context + 2156, &v11, 0, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      v7 = v11;
      if (v11 < 0x101)
      {
        *(context + 538) = v11;
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    v8 = "generate random field";
    v9 = 527;
  }

  else if (field == 9)
  {
    v5 = context + 76;
    result = AEAKeychainGenerateItem(1, 0x100uLL, 0x100uLL, context + 76, &v11, 0, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      v7 = v11;
      if (v11 < 0x101)
      {
        *(context + 18) = v11;
LABEL_9:
        memset_s(&v5[v7], 256 - v7, 0, 256 - v7);
        return 0;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    v8 = "generate random field";
    v9 = 520;
  }

  else
  {
    v8 = "Invalid field";
    v9 = 532;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", v9, 57, 0, v8, v2, v3, v10);
  return -1;
}

uint64_t AEAContextSetFieldCallback(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 16)
  {
    result = 0;
    a1[305] = a3;
    a1[304] = a4;
  }

  else if (a2 == 15)
  {
    result = 0;
    a1[303] = a3;
    a1[302] = a4;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldCallback", 555, 57, 0, "Invalid field", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t AEAContextGetContainerSizeUpperBound(uint64_t a1, uint64_t a2)
{
  memset(__s, 0, sizeof(__s));
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if ((aeaCryptoInit(__s, a1) & 0x80000000) != 0)
  {
    v13 = "Invalid context";
    v14 = 569;
    goto LABEL_13;
  }

  if ((aeaContainerOffsetsInit(v16, a1, __s) & 0x80000000) != 0)
  {
    v13 = "deriving container offsets";
    v14 = 572;
    goto LABEL_13;
  }

  v10 = v19 * (((a2 + *(a1 + 16) - 1) / *(a1 + 16) + *(a1 + 20) - 1) / *(a1 + 20));
  v11 = __CFADD__(v17, v10);
  v12 = v17 + v10;
  if (v11)
  {
    v13 = "invalid sizes";
    v14 = 580;
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", v14, 57, 0, v13, v4, v5, v16[0]);
    return -1;
  }

  if (__CFADD__(v12, a2))
  {
    v13 = "invalid sizes";
    v14 = 581;
    goto LABEL_13;
  }

  result = aeaPaddedContainerSize(v12 + a2, *(a1 + 56), v6, v7, v8, v9, v4, v5);
  if (result == -1)
  {
    v13 = "Container size is too large to allow padding";
    v14 = 585;
    goto LABEL_13;
  }

  return result;
}

uint64_t LargeFileWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v79 = *MEMORY[0x29EDCA608];
  *(v8 + 8) = 0;
  if (atomic_load((*v8 + 104)))
  {
    goto LABEL_78;
  }

  v10 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v8;
  v15 = *(v8 + 32);
  v77 = 0;
  v16 = *(v14 + 56) - (v15 << 21);
  if (v16 >= 0x200000)
  {
    v17 = 0x200000;
  }

  else
  {
    v17 = *(v14 + 56) - (v15 << 21);
  }

  if (v16 >= 0x11)
  {
    v12 = malloc(0x1000000uLL);
    v11 = malloc(v17);
    v21 = malloc(0x40000uLL);
    v13 = v21;
    if (!v12 || (v11 ? (v22 = v21 == 0) : (v22 = 1), v22))
    {
      v30 = *__error();
      v31 = "aaMalloc";
      v32 = 496;
LABEL_72:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", v32, 112, v30, v31, v23, v24, v70);
      v20 = 0;
      goto LABEL_73;
    }

    memset(__b, 255, sizeof(__b));
    v25 = *(v14 + 24);
    if (!v25[4])
    {
      goto LABEL_70;
    }

    v26 = 0;
    v72 = v15;
    v73 = v17;
    v27 = v15 << 21;
    v28 = v11;
    while (1)
    {
      v29 = (v25[4])(*v25, v28, v17, v27);
      if (v29 < 0)
      {
        break;
      }

      if (v29)
      {
        v28 += v29;
        v26 += v29;
        v27 += v29;
        v17 -= v29;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v26 = v29;
LABEL_25:
    LODWORD(v15) = v72;
    v17 = v73;
    if (v73 == v26)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v34 = -1640531535 * (v34 + v11[v33++]);
      }

      while (v33 != 16);
      v74 = v12;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = *(v14 + 76);
      v40 = 17;
      if (v73 > 0x11)
      {
        v40 = v73;
      }

      v41 = v40 - 17;
      do
      {
        if (v35 >= v37 || (*(v14 + 68) & ~v34) == 0)
        {
          v37 = v35 + (2 * *(v14 + 72));
          if (v35 >= v36)
          {
            v42 = *(*(v14 + 40) + 4 * (v34 >> -*(v14 + 64)));
            if (v42 != -1)
            {
              v43 = __ROR8__(__ROR8__(2654435761 * *&v11[v35], 41) + 2654435761 * *&v11[v35 + 8], 41);
              v44 = HIDWORD(v43) ^ v43;
              while (1)
              {
                v45 = *(v14 + 32) + 16 * v42;
                if (*(v45 + 8) == v44)
                {
                  break;
                }

                v42 = *(v45 + 12);
                if (v42 == -1)
                {
                  goto LABEL_46;
                }
              }

              v46 = *v45;
              v47 = v46 >> 20;
              v48 = v46 & 0xFFFFFFFFFFF00000;
              v49 = __b[v47];
              v50 = v49;
              if (v49 == -1)
              {
LABEL_42:
                if (v38 != 0x4000)
                {
                  v52 = &v13[16 * v38];
                  *v52 = v48;
                  *(v52 + 2) = v49;
                  *(v52 + 3) = 1;
                  __b[v47] = v38++;
                }
              }

              else
              {
                while (1)
                {
                  v51 = &v13[16 * v50];
                  if (*v51 == v48)
                  {
                    break;
                  }

                  v50 = *(v51 + 2);
                  if (v50 == -1)
                  {
                    goto LABEL_42;
                  }
                }

                ++*(v51 + 3);
              }

              v36 = v35 + 16;
            }
          }
        }

LABEL_46:
        v34 = -1640531535 * (v34 + v11[v35 + 16]) - v39 * v11[v35];
        v22 = v35++ == v41;
      }

      while (!v22);
      if (!v38)
      {
        goto LABEL_6;
      }

      v71 = v11;
      qsort(v13, v38, 0x10uLL, chunk_compare_by_rating);
      if (v38 >= 0x10)
      {
        v53 = 16;
      }

      else
      {
        v53 = v38;
      }

      v75 = v53;
      qsort(v13, v53, 0x10uLL, chunk_compare_by_position);
      v56 = 0;
      LODWORD(v19) = 0;
      v76 = v13;
      do
      {
        v57 = *&v13[16 * v56];
        v58 = *(v14 + 48);
        if ((v58 - v57) >= 0x100000)
        {
          v59 = 0x100000;
        }

        else
        {
          v59 = v58 - v57;
        }

        v60 = *(v14 + 16);
        if (!v60[4])
        {
          goto LABEL_81;
        }

        if (v58 == v57)
        {
          v61 = 0;
        }

        else
        {
          v61 = 0;
          v62 = v74 + v19;
          v63 = v59;
          while (1)
          {
            v64 = (v60[4])(*v60, v62, v63, v57);
            if (v64 < 0)
            {
              break;
            }

            if (v64)
            {
              v62 += v64;
              v61 += v64;
              v57 += v64;
              v63 -= v64;
              if (v63)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v61 = v64;
        }

LABEL_65:
        v13 = v76;
        if (v59 != v61)
        {
LABEL_81:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", 546, 112, 0, "aaByteStreamPReadExpected", v54, v55, v70);
          v20 = 0;
          v12 = v74;
          v11 = v71;
          goto LABEL_73;
        }

        v19 = (v19 + v59);
        ++v56;
      }

      while (v56 != v75);
      v12 = v74;
      v11 = v71;
      if ((getBXDiffControls(v74, v19, v71, v73, &v77, (v10 + 2), v14, v55) & 0x80000000) != 0)
      {
        v31 = "generic controls";
        v32 = 550;
      }

      else
      {
        v77 = convert_block_controls(v10 + 2, v77, v10[2], v76, v65, v66, v23, v24);
        if (v77)
        {
          LODWORD(v15) = v72;
          goto LABEL_8;
        }

        v31 = "convert_block_controls";
        v32 = 552;
      }
    }

    else
    {
LABEL_70:
      v31 = "aaByteStreamPReadExpected";
      v32 = 501;
    }

    v30 = 0;
    goto LABEL_72;
  }

LABEL_6:
  v18 = malloc(0x18uLL);
  v77 = v18;
  if (!v18)
  {
    v30 = *__error();
    v31 = "aaMalloc";
    v32 = 534;
    goto LABEL_72;
  }

  LODWORD(v19) = 0;
  *v18 = 0;
  v18[1] = v17;
  v18[2] = 0;
  v10[2] = 1;
LABEL_8:
  if (*(v14 + 4) >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], " LargeFile: Block = %5u, %5u K cache, %6zu controls\n", v15, v19 >> 10, v10[2]);
  }

  v20 = 1;
LABEL_73:
  free(v12);
  free(v11);
  free(v13);
  if ((v20 & 1) == 0)
  {
    free(v77);
  }

  v67 = v77;
  if (!v20)
  {
    v67 = 0;
  }

  v10[1] = v67;
  if (!v67)
  {
    atomic_compare_exchange_strong((*v10 + 104), &v67, 1u);
    result = 0xFFFFFFFFLL;
    goto LABEL_79;
  }

LABEL_78:
  result = 0;
LABEL_79:
  v69 = *MEMORY[0x29EDCA608];
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

size_t pc_log_error(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  v20 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    pc_log_error_cold_1(__str, v15 | 0x80000000);
  }

  result = ParallelCompressionUpdateError((v15 | 0x80000000), __str);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pc_log_warning(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v21 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v17 = v12;
    v18 = 2082;
    v19 = __s;
    _os_log_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  result = ParallelCompressionUpdateWarning(v12, __s);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void pc_log_info(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v12 = strlen(__s);
  vsnprintf(&__s[v12], 1024 - v12, a5, &a9);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v15 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v16 = 2082;
    v17 = __s;
    _os_log_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void *AAChunkOutputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  DefaultNThreads = a4;
  if (!a4)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x108uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x108uLL, 0, 0x108uLL), !v8))
  {
    v19 = *__error();
    v22 = "malloc";
    v23 = 425;
    goto LABEL_15;
  }

  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = DefaultNThreads;
  if (!is_mul_ok(DefaultNThreads, 0x98uLL) || (152 * DefaultNThreads) >= 0x2000000001)
  {
    *__error() = 12;
    *(v10 + 32) = 0;
    goto LABEL_14;
  }

  v11 = calloc(DefaultNThreads, 0x98uLL);
  *(v10 + 32) = v11;
  if (!v11)
  {
LABEL_14:
    v19 = *__error();
    v22 = "malloc";
    v23 = 433;
    goto LABEL_15;
  }

  if ((pthread_mutex_init((v10 + 176), 0) & 0x80000000) == 0)
  {
    v12 = *(v10 + 24);
    *(v10 + 40) = 0;
    *(v10 + 44) = v12;
    v13 = calloc(v12, 4uLL);
    *(v10 + 48) = v13;
    if (v13)
    {
      if (pthread_mutex_init((v10 + 56), 0))
      {
        v17 = "SharedArrayInit: pthread_mutex_init failed\n";
        v18 = 56;
      }

      else
      {
        if (!pthread_cond_init((v10 + 120), 0))
        {
          if (!*(v10 + 24))
          {
LABEL_29:
            *v8 = v10;
            v8[1] = streamClose_0;
            v8[7] = streamAbort_0;
            v8[5] = streamPWrite;
            return v8;
          }

          v25 = 0;
          v26 = 0;
          while (1)
          {
            v27 = *(v10 + 32);
            *(v27 + v25 + 32) = 0;
            if (pthread_mutex_init((v27 + v25 + 40), 0) || pthread_cond_init((v27 + v25 + 104), 0))
            {
              v22 = "SemInit";
              v23 = 441;
              goto LABEL_22;
            }

            *(v27 + v25 + 8) = v10;
            if ((createThread((v27 + v25), writerProc, v27 + v25, 0) & 0x80000000) != 0)
            {
              break;
            }

            ++v26;
            v25 += 152;
            if (v26 >= *(v10 + 24))
            {
              goto LABEL_29;
            }
          }

          v22 = "createThread";
          v23 = 443;
          goto LABEL_22;
        }

        v17 = "SharedArrayInit: pthread_cond_init failed\n";
        v18 = 57;
      }
    }

    else
    {
      v17 = "SharedArrayInit: malloc failed\n";
      v18 = 55;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v18, 0, v17, v14, v15, v16, v28);
    v22 = "SharedArrayInit";
    v23 = 435;
LABEL_22:
    v19 = 0;
    goto LABEL_15;
  }

  v19 = *__error();
  v22 = "pthread_mutex_init";
  v23 = 434;
LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "AAChunkOutputStreamOpen", v23, 59, v19, v22, v20, v21, v28);
  free(v8);
  streamClose_0(v10);
  return 0;
}

uint64_t writerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v40 = 678152731 * ((a1 - *(v2 + 32)) >> 3);
  v3 = "writerProc";
  v4 = "SemAcquire";
  v5 = "chunkWriteToStream";
  v6 = "Write to stream";
  v7 = 1;
  while (1)
  {
    if (!pthread_mutex_lock((v2 + 56)))
    {
      v15 = v3;
      v16 = v4;
      v17 = v6;
      v18 = v5;
      v19 = *(v2 + 40);
      v20 = *(v2 + 44);
      v21 = v19;
      if (v19 < v20)
      {
        *(*(v2 + 48) + 4 * v19) = v40;
        v21 = *(v2 + 40);
      }

      *(v2 + 40) = v21 + 1;
      if (v21 || !pthread_cond_broadcast((v2 + 120)))
      {
        if (!pthread_mutex_unlock((v2 + 56)))
        {
          v35 = v19 >= v20;
          v5 = v18;
          v6 = v17;
          v4 = v16;
          v3 = v15;
          if (!v35)
          {
            goto LABEL_14;
          }

          v11 = 125;
          v12 = "SharedArrayPush: stack is full\n";
          goto LABEL_4;
        }

        v22 = 124;
        v23 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      }

      else
      {
        v22 = 122;
        v23 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v22, 0, v23, v8, v9, v10, v37);
      v5 = v18;
      v6 = v17;
      v4 = v16;
      v3 = v15;
      goto LABEL_13;
    }

    v11 = 117;
    v12 = "SharedArrayPush: pthread_mutex_lock failed\n";
LABEL_4:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v11, 0, v12, v8, v9, v10, v37);
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 210, 59, 0, "SharedArrayPush", v13, v14, v38);
    v7 = 0;
LABEL_14:
    if (pthread_mutex_lock((a1 + 40)))
    {
      goto LABEL_19;
    }

    while (1)
    {
      v26 = *(a1 + 32);
      if (v26 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 104), (a1 + 40)))
      {
        goto LABEL_19;
      }
    }

    *(a1 + 32) = v26 - 1;
    if (pthread_mutex_unlock((a1 + 40)))
    {
LABEL_19:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 212, 59, 0, v4, v24, v25, v37);
      v7 = 0;
    }

    v27 = *(a1 + 16);
    if (!v27)
    {
      return a1;
    }

    if (!atomic_load((v27 + 48)))
    {
      v29 = v5;
      v30 = 186;
      v31 = "Invalid state";
      goto LABEL_29;
    }

    if (*(v27 + 32))
    {
      v29 = v5;
      v30 = 187;
      v31 = "Chunk still has holes";
LABEL_29:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v29, v30, 59, 0, v31, v24, v25, v37);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 214, 59, 0, v6, v32, v33, v39);
LABEL_30:
      v34 = 0;
      v7 = 0;
      atomic_compare_exchange_strong((v2 + 168), &v34, 1u);
      if (!v34)
      {
        AAByteStreamCancel(*v2);
        v7 = 0;
      }
    }

    else
    {
      if (AAByteStreamPWrite(*v2, *v27, *(v27 + 16), *(a1 + 24)) != *(v27 + 16))
      {
        v29 = v5;
        v30 = 189;
        v31 = "Chunk write failed";
        goto LABEL_29;
      }

      free(*v27);
      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      free(*(v27 + 40));
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0;
      if (!v7)
      {
        goto LABEL_30;
      }
    }
  }
}

uint64_t streamClose_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 248);
    if (v2)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = 0;
        v6 = *(*(v1 + 256) + 8 * v3);
        v7 = *(v1 + 8);
        atomic_compare_exchange_strong((v6 + 48), &v5, 1u);
        if (!v5 && (streamEnqueueWriteChunkToStream(v1, v6, v7 * v3) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 336, 59, 0, "enqueue chunk write", v8, v9, v35);
          v4 = 0;
        }

        ++v3;
        v2 = *(v1 + 248);
      }

      while (v3 < v2);
    }

    else
    {
      v4 = 1;
    }

    v10 = *(v1 + 24);
    if (v10)
    {
      v11 = 0;
      v12 = *(v1 + 32);
      do
      {
        v13 = *v12;
        v12 += 19;
        if (v13)
        {
          ++v11;
        }

        --v10;
      }

      while (v10);
      if (v11)
      {
        v14 = 0;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 56)))
          {
            v18 = 91;
            v19 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_22:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v18, 0, v19, v15, v16, v17, v35);
            v23 = -1;
          }

          else
          {
            while (1)
            {
              v20 = *(v1 + 40);
              if (v20)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 120), (v1 + 56)))
              {
                v18 = 94;
                v19 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_22;
              }
            }

            v28 = v20 - 1;
            *(v1 + 40) = v28;
            v23 = *(*(v1 + 48) + 4 * v28);
            if (!pthread_mutex_unlock((v1 + 56)))
            {
              goto LABEL_24;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v29, v30, v31, v35);
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 346, 59, 0, "SharedArrayPop", v21, v22, v36);
          v4 = 0;
LABEL_24:
          v24 = *(v1 + 32) + 152 * v23;
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          if (pthread_mutex_lock((v24 + 40)) || (v27 = *(v24 + 32), *(v24 + 32) = v27 + 1, !v27) && pthread_cond_broadcast((v24 + 104)) || pthread_mutex_unlock((v24 + 40)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 350, 59, 0, "SemRelease", v25, v26, v35);
            v4 = 0;
          }

          if ((joinThread(*v24) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 351, 59, 0, "joinThread", v32, v33, v35);
            v4 = 0;
          }

          if (!pthread_mutex_destroy((v24 + 40)))
          {
            pthread_cond_destroy((v24 + 104));
          }

          if (++v14 == v11)
          {
            v2 = *(v1 + 248);
            break;
          }
        }
      }
    }

    if (v2)
    {
      v34 = 0;
      do
      {
        chunkDestroy(*(*(v1 + 256) + 8 * v34++));
      }

      while (v34 < *(v1 + 248));
    }

    free(*(v1 + 256));
    pthread_mutex_destroy((v1 + 176));
    if (!pthread_mutex_destroy((v1 + 56)) && !pthread_cond_destroy((v1 + 120)))
    {
      free(*(v1 + 48));
    }

    free(*(v1 + 32));
    free(v1);
    if (v4)
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

void streamAbort_0(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 168), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t streamPWrite(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 168)))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a4;
  v9 = a4 + a3;
  if (a4 + a3 <= a4)
  {
    v11 = -1;
    goto LABEL_85;
  }

  v93 = a4 + a3;
  v94 = *(a1 + 8);
  v11 = -1;
  do
  {
    v12 = v7 / v94;
    v13 = v7 / v94 * v94;
    if (v13 <= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v7 / v94 * v94;
    }

    if (v9 >= v13 + v94)
    {
      v15 = v13 + v94;
    }

    else
    {
      v15 = v9;
    }

    if (pthread_mutex_lock((a1 + 176)) < 0)
    {
      v85 = *__error();
      v88 = "pthread_mutex_lock";
      v89 = 262;
      goto LABEL_98;
    }

    __n = v15 - v14;
    v22 = *(a1 + 240);
    if (v22 <= v12)
    {
      do
      {
        if (v22)
        {
          v22 *= 2;
        }

        else
        {
          v22 = 16;
        }
      }

      while (v22 <= v12);
      *(a1 + 240) = v22;
      if (8 * v22 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_43:
        *(a1 + 256) = 0;
        v44 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 272, 59, *v44, "malloc", v45, v46, v91);
        v43 = 0;
        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
        goto LABEL_67;
      }

      v23 = *(a1 + 256);
      v24 = realloc(v23, 8 * v22);
      if (!v24)
      {
        free(v23);
        goto LABEL_43;
      }

      *(a1 + 256) = v24;
    }

    __src = a2;
    v25 = *(a1 + 248);
    while (1)
    {
      if (v25 > v12)
      {
        v37 = v14 - v13;
        v38 = *(*(a1 + 256) + 8 * v12);
        v39 = *(v38 + 16);
        a2 = __src;
        if (v37 > v39)
        {
          if ((chunkAppendHole(*(*(a1 + 256) + 8 * v12), v37 - v39, v16, v17, v18, v19, v20, v21) & 0x80000000) != 0)
          {
            v56 = 301;
            v57 = "Hole append";
LABEL_66:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", v56, 59, 0, v57, v20, v21, v91);
            v43 = 0;
            goto LABEL_67;
          }

          v39 = *(v38 + 16);
        }

        if (v39 == v37)
        {
          if (v15 != v14)
          {
            if (atomic_load((v38 + 48)))
            {
              v41 = 104;
              v42 = "Chunk has already been written";
LABEL_54:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendData", v41, 59, 0, v42, v20, v21, v91);
              v56 = 308;
              v57 = "Data append";
              goto LABEL_66;
            }

            v58 = *(v38 + 16);
            if (v58 + __n > *(v38 + 8))
            {
              v41 = 105;
              v42 = "Invalid data size";
              goto LABEL_54;
            }

            memcpy((*v38 + v58), __src, __n);
            *(v38 + 16) += __n;
          }

LABEL_41:
          v43 = 1;
          goto LABEL_67;
        }

        if (v15 == v14)
        {
          goto LABEL_41;
        }

        if (atomic_load((v38 + 48)))
        {
          v48 = 152;
          v49 = "Chunk has already been written";
        }

        else
        {
          v59 = *(v38 + 32);
          if (v59)
          {
            v60 = 0;
            v61 = 0;
            v62 = *(v38 + 40);
            v63 = __n + v37;
            while (1)
            {
              v64 = *(v62 + v60 + 8);
              if (v64 <= v37)
              {
                v65 = *(v62 + v60) + v64;
                if (v63 <= v65)
                {
                  v66 = v64 == v37 || v63 == v65;
                  if (v66)
                  {
                    break;
                  }
                }
              }

              ++v61;
              v60 += 16;
              if (v59 == v61)
              {
                goto LABEL_64;
              }
            }

            if (v61 < v59)
            {
              memcpy((*v38 + v37), __src, __n);
              v69 = (*(v38 + 40) + v60);
              if (v69[1] == v37)
              {
                v69[1] = v63;
              }

              v66 = *v69 == __n;
              *v69 -= __n;
              if (v66)
              {
                v70 = *(v38 + 32) - 1;
                *(v38 + 32) = v70;
                if (v61 < v70)
                {
                  do
                  {
                    ++v61;
                    *(*(v38 + 40) + v60) = *(*(v38 + 40) + v60 + 16);
                    v60 += 16;
                    v43 = 1;
                  }

                  while (v61 < *(v38 + 32));
                  goto LABEL_67;
                }
              }

              goto LABEL_41;
            }
          }

LABEL_64:
          v48 = 163;
          v49 = "Invalid data write, no matching hole";
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkWriteData", v48, 59, 0, v49, v20, v21, v91);
        v56 = 313;
        v57 = "Hole fill";
        goto LABEL_66;
      }

      v26 = *(a1 + 8);
      if (v25)
      {
        v27 = *(*(a1 + 256) + 8 * v25 - 8);
        v28 = *(v27 + 16);
        if (v26 > v28)
        {
          if ((chunkAppendHole(v27, v26 - v28, v16, v17, v18, v19, v20, v21) & 0x80000000) != 0)
          {
            v54 = 284;
            v55 = "Hole creation";
            goto LABEL_50;
          }

          v26 = *(a1 + 8);
        }
      }

      v31 = malloc(0x38uLL);
      v32 = v31;
      if (!v31)
      {
        v50 = 89;
        goto LABEL_49;
      }

      memset_s(v31, 0x38uLL, 0, 0x38uLL);
      if (v26 >= 0x2000000001)
      {
        break;
      }

      v33 = malloc(v26);
      if (!v33)
      {
        goto LABEL_48;
      }

      v34 = v33;
      memset_s(v33, v26, 0, v26);
      *v32 = v34;
      v32[1] = v26;
      v32[2] = 0;
      v36 = *(a1 + 248);
      v35 = *(a1 + 256);
      v25 = v36 + 1;
      *(a1 + 248) = v36 + 1;
      *(v35 + 8 * v36) = v32;
    }

    *__error() = 12;
LABEL_48:
    *v32 = 0;
    v50 = 91;
LABEL_49:
    v51 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkCreate", v50, 59, *v51, "malloc", v52, v53, v91);
    chunkDestroy(v32);
    v54 = 289;
    v55 = "Chunk creation";
LABEL_50:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", v54, 59, 0, v55, v29, v30, v91);
    v43 = 0;
    a2 = __src;
LABEL_67:
    if (pthread_mutex_unlock((a1 + 176)) < 0)
    {
      v85 = *__error();
      v88 = "pthread_mutex_unlock";
      v89 = 316;
LABEL_98:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", v89, 59, v85, v88, v86, v87, v91);
LABEL_99:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamPWrite", 393, 59, 0, "Writing chunk data failed", v67, v68, v91);
      v90 = 0;
      atomic_compare_exchange_strong((a1 + 168), &v90, 1u);
      if (!v90)
      {
        AAByteStreamCancel(*a1);
      }

      return -1;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_99;
    }

    if (v12 < v11)
    {
      v11 = v7 / v94;
    }

    v7 += __n;
    a2 += __n;
    v9 = v93;
  }

  while (v7 < v93);
LABEL_85:
  if (pthread_mutex_lock((a1 + 176)) < 0)
  {
    v78 = *__error();
    v81 = "pthread_mutex_lock";
    v82 = 239;
LABEL_94:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamCheckAndWriteChunksToStream", v82, 59, v78, v81, v79, v80, v91);
LABEL_95:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamPWrite", 404, 59, 0, "flushing chunks to stream", v83, v84, v91);
    return -1;
  }

  if (v11 + 1 < *(a1 + 248))
  {
    while (1)
    {
      v71 = *(*(a1 + 256) + 8 * v11);
      if (!*(v71 + 40))
      {
        v72 = 0;
        v73 = *(a1 + 8);
        atomic_compare_exchange_strong((v71 + 48), &v72, 1u);
        if (!v72 && (streamEnqueueWriteChunkToStream(a1, v71, v73 * v11) & 0x80000000) != 0)
        {
          break;
        }
      }

      v76 = v11 + 2;
      ++v11;
      if (v76 >= *(a1 + 248))
      {
        goto LABEL_91;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamCheckAndWriteChunksToStream", 249, 59, 0, "enqueue chunk write", v74, v75, v91);
    if (pthread_mutex_unlock((a1 + 176)) < 0)
    {
LABEL_92:
      v78 = *__error();
      v81 = "pthread_mutex_unlock";
      v82 = 254;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

LABEL_91:
  v77 = pthread_mutex_unlock((a1 + 176));
  v5 = a3;
  if (v77 < 0)
  {
    goto LABEL_92;
  }

  return v5;
}

uint64_t streamEnqueueWriteChunkToStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 56)))
  {
    v9 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v10 = 91;
LABEL_8:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v10, 0, v9, v6, v7, v8, v21);
    v16 = "SharedArrayPop";
    v17 = 226;
    goto LABEL_9;
  }

  while (1)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      v9 = "SharedArrayPop: pthread_cond_wait failed\n";
      v10 = 94;
      goto LABEL_8;
    }
  }

  v12 = v11 - 1;
  *(a1 + 40) = v12;
  v13 = *(*(a1 + 48) + 4 * v12);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    v9 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v10 = 98;
    goto LABEL_8;
  }

  v19 = *(a1 + 32) + 152 * v13;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  if (pthread_mutex_lock((v19 + 40)) || (v20 = *(v19 + 32), *(v19 + 32) = v20 + 1, !v20) && pthread_cond_broadcast((v19 + 104)) || (result = pthread_mutex_unlock((v19 + 40)), result))
  {
    v16 = "SemRelease";
    v17 = 230;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamEnqueueWriteChunkToStream", v17, 59, 0, v16, v14, v15, v21);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void chunkDestroy(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[5]);

    free(a1);
  }
}

uint64_t chunkAppendHole(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  if (atomic_load((a1 + 48)))
  {
    v10 = "Chunk has already been written";
    v11 = 115;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendHole", v11, 59, 0, v10, a7, a8, v31);
    return 0xFFFFFFFFLL;
  }

  v14 = *(a1 + 16);
  v15 = v14 + a2;
  if ((v14 + a2) > *(a1 + 8))
  {
    v10 = "Invalid hole size";
    v11 = 116;
    goto LABEL_7;
  }

  v16 = *(a1 + 32);
  if (!v16 || (v17 = *(a1 + 40) + 16 * v16, v18 = *(v17 - 16), v18 + *(v17 - 8) != v14))
  {
    v20 = (a1 + 24);
    v19 = *(a1 + 24);
    if (v16 < v19)
    {
      v21 = *(a1 + 40);
LABEL_20:
      result = 0;
      *(a1 + 32) = v16 + 1;
      v27 = &v21[16 * v16];
      *v27 = a2;
      *(v27 + 1) = v14;
      goto LABEL_21;
    }

    v22 = 2 * v19;
    v23 = v19 == 0;
    v24 = 8;
    if (!v23)
    {
      v24 = v22;
    }

    *(a1 + 24) = v24;
    if ((16 * v24) < 0x2000000001)
    {
      v25 = *(a1 + 40);
      v26 = realloc(v25, 16 * v24);
      if (v26)
      {
        v21 = v26;
        *(a1 + 40) = v26;
        v16 = *(a1 + 32);
        v14 = *(a1 + 16);
        v15 = v14 + a2;
        goto LABEL_20;
      }

      free(v25);
    }

    else
    {
      *__error() = 12;
    }

    *(a1 + 40) = 0;
    v28 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendHole", 135, 59, *v28, "malloc", v29, v30, v31);
    *v20 = 0;
    *(a1 + 32) = 0;
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v17 - 16) = v18 + a2;
LABEL_21:
  *(a1 + 16) = v15;
  return result;
}

uint64_t loadAndDecodeHeader_Cpio(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[8];
  v5 = *v4;
  v6 = *(v4 + 2);
  v8 = v5 != 925906736 || v6 != 12592;
  value.tv_sec = 0;
  value.tv_nsec = 0;
  v9 = *a1;
  if (AAHeaderClear(a1[11]) < 0)
  {
    v22 = "clear header";
    v23 = 67;
LABEL_96:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", v23, 113, 0, v22, v14, v15, v124);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 76;
  }

  else
  {
    v16 = 110;
  }

  if ((decodeStreamLoadHeader(a1, v16, v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v22 = "truncated stream";
    v23 = 73;
    goto LABEL_96;
  }

  v17 = a1[8];
  if (v8)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v19 = *(v17 + 59 + v18++) & 7 | (8 * v19);
    }

    while (v18 != 4);
    for (i = 0; i != 2; ++i)
    {
      v21 = *(v17 + 63 + i) & 7 | (8 * v19);
      v19 = v21;
    }
  }

  else
  {
    v24 = 0;
    v21 = 0;
    do
    {
      v25 = *(v17 + 94 + v24);
      v21 *= 16;
      v26 = v25 - 48;
      if ((v25 - 48) <= 0x36)
      {
        if (((1 << v26) & 0x3FF) != 0)
        {
          v21 = v21 + v25 - 48;
        }

        else if (((1 << v26) & 0x7E0000) != 0)
        {
          v21 = v21 + v25 - 55;
        }

        else if (((1 << v26) & 0x7E000000000000) != 0)
        {
          v21 = v21 + v25 - 87;
        }
      }

      ++v24;
    }

    while (v24 != 8);
  }

  if (v8)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v28 = *(v17 + 65 + v27++) & 7 | (8 * v28);
    }

    while (v27 != 8);
    for (j = 0; j != 3; ++j)
    {
      v30 = *(v17 + 73 + j) & 7 | (8 * v28);
      v28 = v30;
    }
  }

  else
  {
    v31 = 0;
    v30 = 0;
    do
    {
      v32 = *(v17 + 54 + v31);
      v30 *= 16;
      v33 = v32 - 48;
      if ((v32 - 48) <= 0x36)
      {
        if (((1 << v33) & 0x3FF) != 0)
        {
          v30 = v30 + v32 - 48;
        }

        else if (((1 << v33) & 0x7E0000) != 0)
        {
          v30 = v30 + v32 - 55;
        }

        else if (((1 << v33) & 0x7E000000000000) != 0)
        {
          v30 = v30 + v32 - 87;
        }
      }

      ++v31;
    }

    while (v31 != 8);
  }

  if (v8)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v35 = *(v17 + 18 + v34++) & 7 | (8 * v35);
    }

    while (v34 != 4);
    v36 = 0;
    v37 = v17 + 22;
    do
    {
      v38 = *(v37 + v36++) & 7 | (8 * v35);
      v35 = v38;
    }

    while (v36 != 2);
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v40 = v17 + 14;
    do
    {
      v41 = *(v40 + v39);
      v38 *= 16;
      v42 = v41 - 48;
      if ((v41 - 48) <= 0x36)
      {
        if (((1 << v42) & 0x3FF) != 0)
        {
          v38 = v38 + v41 - 48;
        }

        else if (((1 << v42) & 0x7E0000) != 0)
        {
          v38 = v38 + v41 - 55;
        }

        else if (((1 << v42) & 0x7E000000000000) != 0)
        {
          v38 = v38 + v41 - 87;
        }
      }

      ++v39;
    }

    while (v39 != 8);
  }

  v43 = aaEntryTypeFromMode(v38);
  if (v21 >= 0x10000)
  {
    v22 = "invalid c_namesize";
    v23 = 82;
    goto LABEL_96;
  }

  v48 = v43;
  if (v8)
  {
    v49 = v21 + v16;
  }

  else
  {
    v49 = (v21 + v16 + 3) & 0x3FFFC;
  }

  v50 = v49;
  if (v43 == 76)
  {
    if (v30 >= 0x10000)
    {
      v22 = "invalid c_filesize";
      v23 = 89;
      goto LABEL_96;
    }

    if (v8)
    {
      v50 = v30 + v49;
    }

    else
    {
      v50 = (v30 + v49 + 3) & 0xFFFFC;
    }
  }

  if ((decodeStreamLoadHeader(a1, v50, v44, v45, v46, v47, v14, v15) & 0x80000000) != 0)
  {
    v22 = "truncated stream";
    v23 = 95;
    goto LABEL_96;
  }

  if (v48)
  {
    v51 = 0;
  }

  else
  {
    v51 = v30 == 0;
  }

  if (v51 && v21 == 11)
  {
    v61 = (a1[8] + v16);
    v62 = *v61;
    v63 = *(v61 + 3);
    if (v62 == 0x2152454C49415254 && v63 == 0x21212152454C49)
    {
      return 1;
    }

LABEL_95:
    v22 = "invalid cpio header";
    v23 = 101;
    goto LABEL_96;
  }

  if (!v48)
  {
    goto LABEL_95;
  }

  v124 = a1[8];
  v53.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v53, v48) < 0)
  {
    v22 = "creating header";
    v23 = 106;
    goto LABEL_96;
  }

  v54.ikey = 5521744;
  if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v54, (a1[8] + v16), v21) < 0)
  {
    v22 = "creating header";
    v23 = 109;
    goto LABEL_96;
  }

  if (v48 == 76)
  {
    v55.ikey = 4935244;
    if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v55, (a1[8] + v49), v30) < 0)
    {
      v22 = "creating header";
      v23 = 114;
      goto LABEL_96;
    }
  }

  v56.ikey = 4476749;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v56, v38 & 0xFFF) < 0)
  {
    v22 = "creating header";
    v23 = 118;
    goto LABEL_96;
  }

  if (v8)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v58 = *(v124 + 24 + v57++) & 7 | (8 * v58);
    }

    while (v57 != 4);
    for (k = 0; k != 2; ++k)
    {
      v60 = *(v124 + 28 + k) & 7 | (8 * v58);
      v58 = v60;
    }
  }

  else
  {
    v66 = 0;
    v60 = 0;
    do
    {
      v67 = *(v124 + 22 + v66);
      v60 *= 16;
      v68 = v67 - 48;
      if ((v67 - 48) <= 0x36)
      {
        if (((1 << v68) & 0x3FF) != 0)
        {
          v60 = v60 + v67 - 48;
        }

        else if (((1 << v68) & 0x7E0000) != 0)
        {
          v60 = v60 + v67 - 55;
        }

        else if (((1 << v68) & 0x7E000000000000) != 0)
        {
          v60 = v60 + v67 - 87;
        }
      }

      ++v66;
    }

    while (v66 != 8);
  }

  v69.ikey = 4475221;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v69, v60) < 0)
  {
    v22 = "creating header";
    v23 = 122;
    goto LABEL_96;
  }

  v70 = v124 + 30;
  if (v8)
  {
    v71 = 0;
    v72 = 0;
    do
    {
      v72 = *(v70 + v71++) & 7 | (8 * v72);
    }

    while (v71 != 4);
    for (m = 0; m != 2; ++m)
    {
      v74 = *(v124 + 34 + m) & 7 | (8 * v72);
      v72 = v74;
    }
  }

  else
  {
    v75 = 0;
    v74 = 0;
    do
    {
      v76 = *(v70 + v75);
      v74 *= 16;
      v77 = v76 - 48;
      if ((v76 - 48) <= 0x36)
      {
        if (((1 << v77) & 0x3FF) != 0)
        {
          v74 = v74 + v76 - 48;
        }

        else if (((1 << v77) & 0x7E0000) != 0)
        {
          v74 = v74 + v76 - 55;
        }

        else if (((1 << v77) & 0x7E000000000000) != 0)
        {
          v74 = v74 + v76 - 87;
        }
      }

      ++v75;
    }

    while (v75 != 8);
  }

  v78.ikey = 4475207;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v78, v74) < 0)
  {
    v22 = "creating header";
    v23 = 126;
    goto LABEL_96;
  }

  if (v8)
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v80 = *(v124 + 48 + v79++) & 7 | (8 * v80);
    }

    while (v79 != 8);
    for (n = 0; n != 3; ++n)
    {
      v82 = *(v124 + 56 + n) & 7 | (8 * v80);
      v80 = v82;
    }
  }

  else
  {
    v83 = 0;
    v82 = 0;
    do
    {
      v84 = *(v124 + 46 + v83);
      v82 *= 16;
      v85 = v84 - 48;
      if ((v84 - 48) <= 0x36)
      {
        if (((1 << v85) & 0x3FF) != 0)
        {
          v82 = v82 + v84 - 48;
        }

        else if (((1 << v85) & 0x7E0000) != 0)
        {
          v82 = v82 + v84 - 55;
        }

        else if (((1 << v85) & 0x7E000000000000) != 0)
        {
          v82 = v82 + v84 - 87;
        }
      }

      ++v83;
    }

    while (v83 != 8);
  }

  value.tv_sec = v82;
  value.tv_nsec = 0;
  v86.ikey = 5067853;
  if (AAHeaderSetFieldTimespec(a1[11], 0xFFFFFFFF, v86, &value) < 0)
  {
    v22 = "creating header";
    v23 = 131;
    goto LABEL_96;
  }

  if (v8)
  {
    v87 = 0;
    v88 = 0;
    v89 = v124;
    do
    {
      v88 = *(v124 + 12 + v87++) & 7 | (8 * v88);
    }

    while (v87 != 4);
    for (ii = 0; ii != 2; ++ii)
    {
      v91 = *(v124 + 16 + ii) & 7 | (8 * v88);
      v88 = v91;
    }
  }

  else
  {
    v92 = 0;
    v91 = 0;
    v89 = v124;
    do
    {
      v93 = *(v124 + 6 + v92);
      v91 *= 16;
      v94 = v93 - 48;
      if ((v93 - 48) <= 0x36)
      {
        if (((1 << v94) & 0x3FF) != 0)
        {
          v91 = v91 + v93 - 48;
        }

        else if (((1 << v94) & 0x7E0000) != 0)
        {
          v91 = v91 + v93 - 55;
        }

        else if (((1 << v94) & 0x7E000000000000) != 0)
        {
          v91 = v91 + v93 - 87;
        }
      }

      ++v92;
    }

    while (v92 != 8);
  }

  if (v8)
  {
    v95 = 0;
    v96 = 0;
    do
    {
      v96 = *(v89 + 6 + v95++) & 7 | (8 * v96);
    }

    while (v95 != 4);
    for (jj = 0; jj != 2; ++jj)
    {
      v98 = *(v89 + 10 + jj) & 7 | (8 * v96);
      v96 = v98;
    }

    v91 |= v98 << 18;
    v99.ikey = 5197385;
    if ((AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v99, v91) & 0x80000000) == 0)
    {
      v100 = 0;
      v101 = 0;
      do
      {
        v101 = *(v124 + 36 + v100++) & 7 | (8 * v101);
      }

      while (v100 != 4);
      for (kk = 0; kk != 2; ++kk)
      {
        v101 = *(v124 + 40 + kk) & 7 | (8 * v101);
      }

      goto LABEL_183;
    }

LABEL_193:
    v22 = "creating header";
    v23 = 145;
    goto LABEL_96;
  }

  v103.ikey = 5197385;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v103, v91) < 0)
  {
    goto LABEL_193;
  }

  v104 = 0;
  v101 = 0;
  do
  {
    v105 = *(v124 + 38 + v104);
    v101 *= 16;
    v106 = v105 - 48;
    if ((v105 - 48) <= 0x36)
    {
      if (((1 << v106) & 0x3FF) != 0)
      {
        v101 = v101 + v105 - 48;
      }

      else if (((1 << v106) & 0x7E0000) != 0)
      {
        v101 = v101 + v105 - 55;
      }

      else if (((1 << v106) & 0x7E000000000000) != 0)
      {
        v101 = v101 + v105 - 87;
      }
    }

    ++v104;
  }

  while (v104 != 8);
LABEL_183:
  v107.ikey = 4934734;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v107, v101) < 0)
  {
    v22 = "creating header";
    v23 = 149;
    goto LABEL_96;
  }

  if ((v9 & 0x8000000000000) != 0 || v101 < 2 || v48 != 70)
  {
    v112 = 0;
    if (v8 || (v48 & 0xFFFFFFFE) != 0x42)
    {
      goto LABEL_217;
    }

    v113 = 0;
    v114 = 0;
    do
    {
      v115 = *(v124 + 78 + v113);
      v114 *= 16;
      v116 = v115 - 48;
      if ((v115 - 48) <= 0x36)
      {
        if (((1 << v116) & 0x3FF) != 0)
        {
          v114 = v114 + v115 - 48;
        }

        else if (((1 << v116) & 0x7E0000) != 0)
        {
          v114 = v114 + v115 - 55;
        }

        else if (((1 << v116) & 0x7E000000000000) != 0)
        {
          v114 = v114 + v115 - 87;
        }
      }

      ++v113;
    }

    while (v113 != 8);
    v117 = 0;
    v118 = 0;
    do
    {
      v119 = *(v124 + 86 + v117);
      v118 *= 16;
      v120 = v119 - 48;
      if ((v119 - 48) <= 0x36)
      {
        if (((1 << v120) & 0x3FF) != 0)
        {
          v118 = v118 + v119 - 48;
        }

        else if (((1 << v120) & 0x7E0000) != 0)
        {
          v118 = v118 + v119 - 55;
        }

        else if (((1 << v120) & 0x7E000000000000) != 0)
        {
          v118 = v118 + v119 - 87;
        }
      }

      ++v117;
    }

    while (v117 != 8);
    v121.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v121, v118 + (v114 << 24)) < 0)
    {
      v22 = "creating header";
      v23 = 173;
      goto LABEL_96;
    }

LABEL_216:
    v112 = 0;
    goto LABEL_217;
  }

  v125 = 0;
  v110 = decodeStreamHLCFromINO(a1, v91, v101, &v125, v108, v109, v14, v15);
  if (v110 == -1)
  {
    v22 = "too many hard links or inconsistent nlink/ino data in archive";
    v23 = 156;
    goto LABEL_96;
  }

  v111.ikey = 4410440;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v111, v110) < 0)
  {
    v22 = "creating header";
    v23 = 157;
    goto LABEL_96;
  }

  if (v8)
  {
    goto LABEL_216;
  }

  v112 = v125 == 0;
  if (!v125 && v30)
  {
    v22 = "invalid newc encoding for hard links";
    v23 = 162;
    goto LABEL_96;
  }

LABEL_217:
  if (v48 != 70 || v112)
  {
    if (v48 != 70)
    {
      result = 0;
      *a2 = 0;
      return result;
    }
  }

  else
  {
    v122.ikey = 5521732;
    if (AAHeaderSetFieldBlob(a1[11], 0xFFFFFFFF, v122, v30) < 0)
    {
      v22 = "creating header";
      v23 = 179;
      goto LABEL_96;
    }
  }

  result = 0;
  v123 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v8)
  {
    v123 = v30;
  }

  *a2 = v123;
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
  v112 = BXDiffMatchesOBuf(v24);
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

          v40 = (v112 + v37);
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
          v45 -= *(v25 + v31 + v35) == *(v112 + v31);
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
        v54 = *(v25 + v110 + v48) - *(v112 + v111 + v48);
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
      v66 = (v112 - 1 + v31);
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
          v83 = *(v112 + v31 - v64 + v81);
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

uint64_t aaEntryYFPBlobInitWithPath(void *a1, char *a2, const char *a3)
{
  v58 = *MEMORY[0x29EDCA608];
  v56[0] = 0;
  v56[1] = 0;
  v6 = malloc(0x40000uLL);
  if (!v6)
  {
    v26 = *__error();
    v27 = "malloc";
    v28 = 43;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", v28, 124, v26, v27, v7, v8, v53);
    v29 = 0;
    v10 = -1;
LABEL_29:
    v30 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((concatPath(v57, 0x800uLL, a2, a3) & 0x80000000) != 0)
  {
    v53 = a2;
    v27 = "invalid path %s/%s";
    v28 = 46;
    v26 = 0;
    goto LABEL_28;
  }

  v9 = open(v57, 0x200000);
  v10 = v9;
  if (v9 < 0)
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 50, 124, *v33, "open: %s", v34, v35, v57);
    v29 = 0;
    goto LABEL_29;
  }

  v11 = read(v9, v6, 0x40000uLL);
  if (v11 < 0)
  {
    v15 = 0;
LABEL_35:
    v29 = v15;
    v36 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 56, 124, *v36, "read: %s", v37, v38, v57);
    goto LABEL_29;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v55 = v6;
  v54 = v10;
  while (2)
  {
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v19 = v6[i];
        v16 = v19 + 0x202000202008008DLL * v16 + 0x516929CF586FB3BFLL * *(v56 + v17);
        *(v56 + v17) = v19;
        if (v17 == 15)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        if (v16 >> 52)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 == 0;
        }

        if (!v20)
        {
          if (v14 >= v13)
          {
            if (v13)
            {
              v13 *= 2;
            }

            else
            {
              v13 = 256;
            }

            if (4 * v13 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_38:
              v39 = __error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 79, 124, *v39, "malloc", v40, v41, v53);
              v29 = 0;
              v30 = 0xFFFFFFFFLL;
              v10 = v54;
              goto LABEL_30;
            }

            v21 = v15;
            v22 = realloc(v15, 4 * v13);
            if (!v22)
            {
              free(v21);
              v6 = v55;
              goto LABEL_38;
            }

            v15 = v22;
            v6 = v55;
          }

          *(v15 + v14++) = v16;
        }
      }

      v10 = v54;
      v23 = v6;
      v24 = v15;
      v25 = read(v54, v23, 0x40000uLL);
      v15 = v24;
      v6 = v55;
      v12 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v42 = v15;
  qsort(v15, v14, 4uLL, cmp_markers);
  if (v14)
  {
    v45 = 0;
    v46 = 0;
    v29 = v42;
    do
    {
      v47 = *(v42 + v45);
      if (!v46 || v47 != *(v42 + v46 - 1))
      {
        *(v42 + v46++) = v47;
      }

      ++v45;
    }

    while (v14 != v45);
    v14 = 4 * v46;
    *a1 = 0;
    if (4 * v46 < 0)
    {
LABEL_66:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 98, 124, 0, "malloc", v43, v44, v53);
      v30 = 0xFFFFFFFFLL;
      goto LABEL_67;
    }

    v48 = a1[1];
    if (v48 < v14)
    {
      do
      {
        while (!v48)
        {
          v48 = 0x4000;
          if (v14 <= 0x4000)
          {
            v48 = 0x4000;
            goto LABEL_62;
          }
        }

        v49 = v48 >> 1;
        if ((v48 & (v48 >> 1)) != 0)
        {
          v49 = v48 & (v48 >> 1);
        }

        v48 += v49;
      }

      while (v48 < v14);
      if (v48 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_65;
      }

LABEL_62:
      v51 = a1[2];
      v52 = realloc(v51, v48);
      if (v52)
      {
        a1[1] = v48;
        a1[2] = v52;
        goto LABEL_55;
      }

      free(v51);
LABEL_65:
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v29 = v42;
      goto LABEL_66;
    }
  }

  else
  {
    *a1 = 0;
LABEL_55:
    v29 = v42;
    if (!v42)
    {
      v50 = a1[2];
      if (v50)
      {
        memset_s((v50 + *a1), v14, 0, v14);
      }

      goto LABEL_57;
    }
  }

  memcpy((a1[2] + *a1), v29, v14);
LABEL_57:
  v30 = 0;
  *a1 += v14;
  v29 = v42;
LABEL_67:
  v6 = v55;
LABEL_30:
  free(v6);
  free(v29);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t cmp_markers(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

off_t AAByteStreamProcess(AAByteStream istream, AAByteStream ostream)
{
  v4 = malloc(0x40000uLL);
  if (v4)
  {
    v5 = v4;
    v6 = AAByteStreamRead(istream, v4, 0x40000uLL);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      v8 = 0;
      while (2)
      {
        if (!v7)
        {
          free(v5);
          return v8;
        }

        v9 = 0;
        v8 += v7;
        do
        {
          v10 = AAByteStreamWrite(ostream, &v5[v9], v7 - v9);
          if (v10 < 0)
          {
            AAByteStreamCancel(istream);
            v13 = "byte stream write error";
            v14 = 40;
            goto LABEL_14;
          }

          if (!v10)
          {
            v13 = "byte stream truncated write";
            v14 = 42;
            goto LABEL_14;
          }

          v9 += v10;
        }

        while (v9 < v7);
        v7 = AAByteStreamRead(istream, v5, 0x40000uLL);
        if ((v7 & 0x8000000000000000) == 0)
        {
          continue;
        }

        break;
      }
    }

    AAByteStreamCancel(ostream);
    v13 = "byte stream read error";
    v14 = 26;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", v14, 58, 0, v13, v11, v12, v19);
    free(v5);
  }

  else
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 18, 58, *v15, "malloc", v16, v17, v19);
  }

  return -1;
}

void *aaAssetDecryptionStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x518uLL);
  v7 = v6;
  if (!v6)
  {
    v10 = 439;
LABEL_6:
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpen", v10, 108, *v11, "malloc", v12, v13, v15);
    closeProc_2(v7);
    return 0;
  }

  memset_s(v6, 0x518uLL, 0, 0x518uLL);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = malloc(0x38uLL);
  if (!v8)
  {
    v10 = 446;
    goto LABEL_6;
  }

  v9 = v8;
  memset_s(v8, 0x38uLL, 0, 0x38uLL);
  *v9 = v7;
  v9[1] = closeProc_2;
  v9[6] = closeWithStateProc_2;
  v9[3] = writeProc_1;
  v9[2] = cancelProc_2;
  return v9;
}

uint64_t closeProc_2(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 24));
    free(*(result + 1216));
    memset_s(v1 + 150, 0x18uLL, 0, 0x18uLL);
    free(v1[155]);
    memset_s(v1 + 153, 0x18uLL, 0, 0x18uLL);
    free(v1[158]);
    memset_s(v1 + 156, 0x18uLL, 0, 0x18uLL);
    memset_s(v1, 0x518uLL, 0, 0x518uLL);
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

uint64_t closeWithStateProc_2(uint64_t result, void *a2, void *a3)
{
  v48 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5 = result;
    v6 = atomic_load((result + 24));
    v7 = v6 == 0;
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    memset(v45, 0, sizeof(v45));
    aeaMagicInit(v45, (result + 240));
    aeaRootHeaderInit(v45 | 0xC, v5 + 240, v8, v9, v10, v11, v12, v13);
    *(&v45[3] + 12) = *(v5 + 676);
    DWORD1(v45[4]) = *(v5 + 940);
    v16 = (v5 + 1200);
    v17 = (v5 + 1224);
    v18 = *(v5 + 1224);
    *(&v45[4] + 1) = *(v5 + 1200);
    *&v46 = v18;
    v19 = (v5 + 1248);
    *(&v46 + 1) = *(v5 + 1248);
    *&v47[0] = *(v5 + 1272);
    *(v47 + 8) = *(v5 + 1280);
    *(&v47[1] + 1) = *(v5 + 1296);
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v20 = 0;
    v21 = v45;
    v22 = 128;
    while (1)
    {
      v23 = (a2[3])(*a2, v21, v22);
      if (v23 < 1)
      {
        break;
      }

      v21 = (v21 + v23);
      v20 += v23;
      v22 -= v23;
      if (!v22)
      {
        if (v20 < 0)
        {
          goto LABEL_51;
        }

        goto LABEL_9;
      }
    }

    if (v23 < 0)
    {
      goto LABEL_51;
    }

LABEL_9:
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v24 = *(v5 + 680);
    if (v24)
    {
      v25 = 0;
      v26 = v5 + 684;
      while (1)
      {
        v27 = (a2[3])(*a2, v26, v24);
        if (v27 < 1)
        {
          break;
        }

        v26 += v27;
        v25 += v27;
        v24 -= v27;
        if (!v24)
        {
          if (v25 < 0)
          {
            goto LABEL_51;
          }

          goto LABEL_17;
        }
      }

      if (v27 < 0)
      {
        goto LABEL_51;
      }

LABEL_17:
      if (!a2[3])
      {
        goto LABEL_51;
      }
    }

    v28 = *(v5 + 940);
    if (v28)
    {
      v29 = 0;
      v30 = v5 + 944;
      while (1)
      {
        v31 = (a2[3])(*a2, v30, v28);
        if (v31 < 1)
        {
          break;
        }

        v30 += v31;
        v29 += v31;
        v28 -= v31;
        if (!v28)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_51;
        }
      }

      if (v31 < 0)
      {
        goto LABEL_51;
      }
    }

LABEL_25:
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v32 = *v16;
    if (*v16)
    {
      v33 = 0;
      v34 = *(v5 + 1216);
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
          goto LABEL_32;
        }
      }

      v33 = v35;
LABEL_32:
      if (v33 < 0 || !a2[3])
      {
        goto LABEL_51;
      }
    }

    v36 = *v17;
    if (*v17)
    {
      v37 = 0;
      v38 = *(v5 + 1240);
      while (1)
      {
        v39 = (a2[3])(*a2, v38, v36);
        if (v39 < 1)
        {
          break;
        }

        v38 += v39;
        v37 += v39;
        v36 -= v39;
        if (!v36)
        {
          goto LABEL_40;
        }
      }

      v37 = v39;
LABEL_40:
      if (v37 < 0)
      {
        goto LABEL_51;
      }
    }

    if (!a2[3])
    {
      goto LABEL_51;
    }

    v40 = *v19;
    if (!*v19)
    {
      goto LABEL_49;
    }

    v41 = 0;
    v42 = *(v5 + 1264);
    while (1)
    {
      v43 = (a2[3])(*a2, v42, v40);
      if (v43 < 1)
      {
        break;
      }

      v42 += v43;
      v41 += v43;
      v40 -= v43;
      if (!v40)
      {
        goto LABEL_48;
      }
    }

    v41 = v43;
LABEL_48:
    if (v41 < 0)
    {
LABEL_51:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "closeWithStateProc", 411, 108, 0, "write state", v14, v15, v45[0]);
      v7 = 0;
    }

    else
    {
LABEL_49:
      if (a3)
      {
        *a3 = *(v5 + 1296);
      }
    }

    free(*(v5 + 1216));
    memset_s((v5 + 1200), 0x18uLL, 0, 0x18uLL);
    free(*(v5 + 1240));
    memset_s((v5 + 1224), 0x18uLL, 0, 0x18uLL);
    free(*(v5 + 1264));
    memset_s((v5 + 1248), 0x18uLL, 0, 0x18uLL);
    memset_s(v5, 0x518uLL, 0, 0x518uLL);
    free(v5);
    result = (v7 - 1);
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t writeProc_1(uint64_t result, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171 = *MEMORY[0x29EDCA608];
  if (atomic_load((result + 24)))
  {
    v9 = -1;
    goto LABEL_197;
  }

  v10 = result;
  v151 = 0;
  v11 = 0uLL;
  memset(v150, 0, sizeof(v150));
  v149 = 0;
  memset(v148, 0, sizeof(v148));
  v147 = 0;
  memset(v146, 0, sizeof(v146));
  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  *__n = 0u;
  v130 = 0u;
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v126 = 0;
  memset(v125, 0, sizeof(v125));
  v12 = *(result + 676);
  if (v12 == 5)
  {
    v13 = 0;
    v9 = 0;
    goto LABEL_193;
  }

  v14 = a3;
  v9 = 0;
  v13 = 0;
  v16 = (result + 1200);
  __dst = (result + 944);
  v122 = (result + 680);
  v120 = (result + 1248);
  v123 = (result + 416);
  v124 = (result + 1200);
  v117 = (result + 1224);
  while (1)
  {
    v17 = *v16;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
LABEL_169:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 346, 108, 0, "invalid state %d", a7, a8, v12);
LABEL_192:
          v9 = -1;
          goto LABEL_193;
        }

        v22 = v10[47];
        if (v17 >= v22)
        {
          if (v17 != v22)
          {
            v95 = "invalid state";
            v96 = 138;
LABEL_191:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", v96, 108, 0, v95, a7, a8, v113);
            goto LABEL_192;
          }

          v23 = v10[152];
          v13 = aeaContextCreateWithPrologue(v23, *v16);
          if (!v13)
          {
            v95 = "invalid AEA prologue";
            v96 = 140;
            goto LABEL_191;
          }

          v24 = v10[2];
          if (v24 && ((v24)(v10[1], v13) & 0x80000000) != 0)
          {
            v95 = "user callback returned an error";
            v96 = 145;
            goto LABEL_191;
          }

          if ((aeaContextUnlock(v13, (v10 + 30), v122, v150, 1, 0) & 0x80000000) != 0 || (aeaCryptoInit(v10 + 32, v10 + 60) & 0x80000000) != 0 || (result = aeaContainerOffsetsInit((v10 + 39), v10 + 60, v10 + 8), (result & 0x80000000) != 0))
          {
            v95 = "unlocking AEA";
            v96 = 151;
            goto LABEL_191;
          }

          *v13 = *(v10 + 15);
          v25 = *(v10 + 16);
          v26 = *(v10 + 17);
          v27 = *(v10 + 18);
          *(v13 + 64) = v10[38];
          *(v13 + 32) = v26;
          *(v13 + 48) = v27;
          *(v13 + 16) = v25;
          v28 = v10[2];
          if (v28)
          {
            result = (v28)(v10[1], v13);
            if ((result & 0x80000000) != 0)
            {
              v95 = "user callback returned an error";
              v96 = 156;
              goto LABEL_191;
            }
          }

          v29 = *(v10 + 11);
          if (v29 >= 0x101)
          {
            goto LABEL_227;
          }

          memcpy(__dst, v10[46] + v23, *(v10 + 11));
          *(v10 + 235) = v29;
          result = memset_s(&__dst[v29], 256 - v29, 0, 256 - v29);
          v10[161] = ((v10[34] + *(v10 + 64) - 1) / *(v10 + 64));
          v10[160] = 0;
          v10[150] = 0;
          *(v10 + 318) = 0;
          v12 = 2;
LABEL_79:
          *(v10 + 169) = v12;
LABEL_130:
          v11 = 0uLL;
          goto LABEL_131;
        }

        goto LABEL_51;
      }

      if (v17 > 0xB)
      {
        DWORD2(__s[0]) = 0;
        *&__s[0] = 0;
        v50 = v10[152];
        v51 = *(v50 + 2);
        *&__s[0] = *v50;
        DWORD2(__s[0]) = v51;
        if ((aeaContainerParamsInitWithMagic(v10 + 60, __s, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0 || (aeaCryptoInit(v10 + 32, v10 + 60) & 0x80000000) != 0 || (result = aeaContainerOffsetsInit((v10 + 39), v10 + 60, v10 + 8), (result & 0x80000000) != 0))
        {
          v95 = "invalid AEA stream";
          v96 = 125;
          goto LABEL_191;
        }

        v12 = 1;
        goto LABEL_79;
      }

      v21 = 12 - v17;
      goto LABEL_52;
    }

    if (v12 == 2)
    {
      v22 = v10[51];
      if (v17 >= v22)
      {
        if (v17 != v22)
        {
          v95 = "invalid state";
          v96 = 177;
          goto LABEL_191;
        }

        v52 = v14;
        v53 = v10[152];
        v54 = v10[49];
        v55 = *(v10 + 318);
        *(&__s[15] + 4) = v11;
        *(&__s[14] + 8) = v11;
        *(&__s[13] + 8) = v11;
        *(&__s[12] + 8) = v11;
        *(&__s[11] + 8) = v11;
        *(&__s[10] + 8) = v11;
        *(&__s[9] + 8) = v11;
        *(&__s[8] + 8) = v11;
        *(&__s[7] + 8) = v11;
        *(&__s[6] + 8) = v11;
        *(&__s[5] + 8) = v11;
        *(&__s[4] + 8) = v11;
        *(&__s[3] + 8) = v11;
        *(&__s[2] + 8) = v11;
        *(&__s[1] + 8) = v11;
        *(__s + 8) = v11;
        LODWORD(v169[16]) = 0;
        v169[15] = v11;
        v169[14] = v11;
        v169[13] = v11;
        v169[12] = v11;
        v169[11] = v11;
        v169[10] = v11;
        v169[9] = v11;
        v169[8] = v11;
        v169[7] = v11;
        v169[6] = v11;
        v169[5] = v11;
        v169[4] = v11;
        v169[3] = v11;
        v169[2] = v11;
        v169[1] = v11;
        v169[0] = v11;
        WORD4(__s[0]) = 19267;
        *&__s[0] = 0x5F41454100000006;
        result = memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
        v56 = LODWORD(__s[0]);
        if (LODWORD(__s[0]) >= 0xFD)
        {
          goto LABEL_227;
        }

        *(__s + LODWORD(__s[0]) + 4) = v55;
        LODWORD(__s[0]) = v56 + 4;
        memset_s(__s + v56 + 8, 252 - v56, 0, 252 - v56);
        v57 = v10[13];
        if (v57 && *v122)
        {
          v58 = (v57)(v123, *(v10 + 8), v122, __s, v169);
          memset_s(__s, 0x104uLL, 0, 0x104uLL);
          v16 = v124;
          if (v58 < 0)
          {
            goto LABEL_179;
          }

          memset(v169 + 12, 0, 248);
          *(v169 + 4) = 0x4B4548435F414541;
          LODWORD(v169[0]) = 8;
          memset_s(v169 + 12, 0xF8uLL, 0, 0xF8uLL);
          memset(__s, 0, 260);
          v59 = v10[13];
          if (v59 && *v123)
          {
            v60 = (v59)(v148, *(v10 + 9), v123, v169, __s);
            memset_s(v169, 0x104uLL, 0, 0x104uLL);
            if (v60 < 0)
            {
              goto LABEL_179;
            }

            v61 = v10[16];
            if (!v61)
            {
              goto LABEL_179;
            }

            if (*(v10 + 235) != *(v10 + 11))
            {
              goto LABEL_179;
            }

            result = (v61)(v53, v54, v10 + 940, v148, v54 + v53, v17 - v54);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_179;
            }

            *v120 = 0;
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_220;
            }

            v62 = v10[157];
            if (v62 < v17)
            {
              do
              {
                while (!v62)
                {
                  v62 = 0x4000;
                  v64 = 0x4000;
                  if (v17 <= 0x4000)
                  {
                    goto LABEL_122;
                  }
                }

                v63 = v62 >> 1;
                if ((v62 & (v62 >> 1)) != 0)
                {
                  v63 = v62 & (v62 >> 1);
                }

                v62 += v63;
              }

              while (v62 < v17);
              v64 = v62;
              if (v62 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_219;
              }

LABEL_122:
              v78 = v10[158];
              result = realloc(v78, v64);
              if (result)
              {
                v10[158] = result;
                v10[157] = v64;
                goto LABEL_124;
              }

              free(v78);
LABEL_219:
              *v120 = 0;
              v120[1] = 0;
              v120[2] = 0;
LABEL_220:
              v95 = "copy cluster header";
              v96 = 198;
              goto LABEL_191;
            }

LABEL_124:
            v79 = v10[158];
            if (v53)
            {
              result = memcpy(v79 + *v120, v53, v17);
            }

            else if (v79)
            {
              result = memset_s(v79 + *v120, v17, 0, v17);
            }

            v10[156] = (v10[156] + v17);
            v80 = *(v10 + 11);
            if (v80 > 0x100)
            {
LABEL_227:
              __break(1u);
              return result;
            }

            memcpy(__dst, v10[49] + v53, *(v10 + 11));
            *(v10 + 235) = v80;
            result = memset_s(&__dst[v80], 256 - v80, 0, 256 - v80);
            v10[150] = 0;
            *(v10 + 319) = 0;
            v12 = 3;
            *(v10 + 169) = 3;
            v14 = v52;
            goto LABEL_130;
          }

          v101 = v169;
        }

        else
        {
          v101 = __s;
        }

        memset_s(v101, 0x104uLL, 0, 0x104uLL);
LABEL_179:
        v95 = "decrypting cluster header";
        v96 = 195;
        goto LABEL_191;
      }

      goto LABEL_51;
    }

    if (v12 != 3)
    {
      break;
    }

    if (v10[156] != v10[51])
    {
      v95 = "invalid state";
      v96 = 213;
      goto LABEL_191;
    }

    v30 = *(v10 + 319);
    if (v30 >= *(v10 + 65) || (v31 = v10[160], v32 = v10[161], v31 >= v32))
    {
      v95 = "invalid state";
      v96 = 218;
      goto LABEL_191;
    }

    v118 = v13;
    v119 = __src;
    v115 = v14;
    v116 = v9;
    v33 = *(v10 + 72);
    v34 = (v10[48] + v10[158] + (v33 + 8) * v30);
    v35 = *v34;
    v22 = v34[1];
    if (v35)
    {
      v36 = v22 > v35;
    }

    else
    {
      v36 = 1;
    }

    if (v36 || (v37 = v10[50], v38 = *(v10 + 11), v22 < v35) && !*(v10 + 66) || ((v39 = *(v10 + 64), (v31 + 1) != v32) ? (v40 = v35 != v39) : (v40 = 0), v35 <= v39 ? (v41 = !v40) : (v41 = 0), !v41))
    {
      v107 = "invalid segment sizes";
      v108 = 229;
      goto LABEL_164;
    }

    if (v17 < v22)
    {
      v13 = v118;
      __src = v119;
      v9 = v116;
      v14 = v115;
      v16 = v124;
LABEL_51:
      v21 = v22 - v17;
      if (v22 == v17)
      {
        goto LABEL_131;
      }

LABEL_52:
      if (!v14)
      {
        goto LABEL_193;
      }

      if (v21 >= v14)
      {
        v42 = v14;
      }

      else
      {
        v42 = v21;
      }

      v43 = v17 + v42;
      if (__CFADD__(v17, v42) || (v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_190;
      }

      v44 = v10[151];
      if (v44 < v43)
      {
        do
        {
          while (!v44)
          {
            v44 = 0x4000;
            v46 = 0x4000;
            if (v43 <= 0x4000)
            {
              goto LABEL_67;
            }
          }

          v45 = v44 >> 1;
          if ((v44 & (v44 >> 1)) != 0)
          {
            v45 = v44 & (v44 >> 1);
          }

          v44 += v45;
        }

        while (v44 < v43);
        v46 = v44;
        if (v44 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_189;
        }

LABEL_67:
        v47 = __src;
        v48 = v10[152];
        result = realloc(v48, v46);
        if (result)
        {
          v10[152] = result;
          v10[151] = v46;
          __src = v47;
          v16 = v124;
          goto LABEL_69;
        }

        free(v48);
        v16 = v124;
LABEL_189:
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
LABEL_190:
        v95 = "malloc";
        v96 = 356;
        goto LABEL_191;
      }

LABEL_69:
      v49 = v10[152];
      if (__src)
      {
        result = memcpy(v49 + *v16, __src, v42);
      }

      else if (v49)
      {
        result = memset_s(v49 + *v16, v42, 0, v42);
      }

      *v16 += v42;
      v11 = 0uLL;
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_190;
      }

      v14 -= v42;
      __src += v42;
      v9 += v42;
      v10[162] = (v10[162] + v42);
      v12 = *(v10 + 169);
      goto LABEL_131;
    }

    if (v17 != v22)
    {
      v107 = "invalid state";
      v108 = 234;
LABEL_164:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", v108, 108, 0, v107, a7, a8, v113);
      v9 = -1;
      v13 = v118;
      goto LABEL_193;
    }

    if (v33 >= 0x101)
    {
      goto LABEL_227;
    }

    v114 = v10[152];
    __memcpy_chk();
    LODWORD(v146[0]) = v33;
    result = memset_s(v146 + v33 + 4, 256 - v33, 0, 256 - v33);
    v65 = *(v10 + 11);
    if (v65 >= 0x101)
    {
      goto LABEL_227;
    }

    v66 = *(v10 + 11);
    __memcpy_chk();
    LODWORD(v127[0]) = v65;
    memset_s(v127 + v65 + 4, 256 - v65, 0, 256 - v65);
    v67 = *(v10 + 319);
    memset(v169 + 8, 0, 224);
    memset(&v169[14] + 8, 0, 28);
    WORD4(v169[0]) = 19283;
    *&v169[0] = 0x5F41454100000006;
    result = memset_s(v169 + 10, 0xFAuLL, 0, 0xFAuLL);
    v68 = LODWORD(v169[0]);
    if (LODWORD(v169[0]) >= 0xFD)
    {
      goto LABEL_227;
    }

    *(v169 + LODWORD(v169[0]) + 4) = v67;
    LODWORD(v169[0]) = v68 + 4;
    memset_s(v169 + v68 + 8, 252 - v68, 0, 252 - v68);
    memset(__s, 0, 260);
    v69 = v10[13];
    v13 = v118;
    __src = v119;
    v9 = v116;
    if (!v69 || !*v123)
    {
      memset_s(v169, 0x104uLL, 0, 0x104uLL);
LABEL_181:
      v95 = "decrypting segment";
      v96 = 248;
      goto LABEL_191;
    }

    v70 = (v69)(v148, *(v10 + 9), v123, v169, __s);
    memset_s(v169, 0x104uLL, 0, 0x104uLL);
    if (v70 < 0)
    {
      goto LABEL_181;
    }

    v71 = v10[16];
    if (!v71 || LODWORD(v127[0]) != *(v10 + 11) || ((v71)(v114, v17, v127, v148, 0, 0) & 0x80000000) != 0)
    {
      goto LABEL_181;
    }

    v16 = v124;
    v74 = v124;
    if (v22 < v35)
    {
      v75 = v10[154];
      if (v75 < v35)
      {
        do
        {
          while (!v75)
          {
            v75 = 0x4000;
            v77 = 0x4000;
            if (v35 <= 0x4000)
            {
              goto LABEL_135;
            }
          }

          v76 = v75 >> 1;
          if ((v75 & (v75 >> 1)) != 0)
          {
            v76 = v75 & (v75 >> 1);
          }

          v75 += v76;
        }

        while (v75 < v35);
        v77 = v75;
        if (v75 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_223;
        }

LABEL_135:
        v82 = v10[155];
        v83 = realloc(v82, v77);
        if (v83)
        {
          v81 = v83;
          v10[155] = v83;
          v10[154] = v77;
          v75 = v77;
          goto LABEL_137;
        }

        free(v82);
LABEL_223:
        *v117 = 0;
        v117[1] = 0;
        v117[2] = 0;
        v95 = "malloc";
        v96 = 254;
        goto LABEL_191;
      }

      v81 = v10[155];
LABEL_137:
      *v117 = 0;
      if (!v81)
      {
        v95 = "invalid buffer";
        v96 = 258;
        goto LABEL_191;
      }

      v84 = *(v10 + 66);
      if (v84 == 774)
      {
        v85 = PCompressLZMADecode(v81, v75, v114, v17);
        v86 = v85 & ~(v85 >> 63);
      }

      else
      {
        v87 = aeaEffectiveCompressionAlgorithm(v84);
        LODWORD(v86) = compression_decode_buffer(v81, v75, v114, v17, 0, v87);
      }

      __src = v119;
      if (v86)
      {
        v88 = *v117 + v86;
        if (!__CFADD__(*v117, v86) && v88 <= v10[154])
        {
          *v117 = v88;
        }
      }

      v74 = v117;
      if (v35 != v86)
      {
        v95 = "invalid compressed buffer";
        v96 = 271;
        goto LABEL_191;
      }
    }

    if (*v74 != v35)
    {
      v95 = "invalid raw size";
      v96 = 281;
      goto LABEL_191;
    }

    v89 = v74[2];
    v90 = *(v10 + 63);
    if (v90 && ((aeaChecksum(__n, v90, v74[2], v35, v72, v73, a7, a8) & 0x80000000) != 0 || LODWORD(__n[0]) != LODWORD(v146[0]) || memcmp(__n + 4, v146 + 4, LODWORD(__n[0]))))
    {
      v95 = "segment checksum verification";
      v96 = 287;
      goto LABEL_191;
    }

    v91 = 0;
    do
    {
      v92 = (*v10)[3];
      if (!v92 || (result = v92(**v10, v89 + v91, v35 - v91), v11 = 0uLL, result <= 0))
      {
        v95 = "invalid raw stream";
        v96 = 294;
        goto LABEL_191;
      }

      v91 += result;
    }

    while (v91 < v35);
    v10[150] = 0;
    v10[153] = 0;
    v93 = *(v10 + 319) + 1;
    *(v10 + 319) = v93;
    v94 = v10[160] + 1;
    v10[160] = v94;
    *(v10 + 169) = 3;
    if (v94 == v10[161])
    {
      v14 = v115;
      if (v10[162] == v10[35])
      {
        goto LABEL_226;
      }

      v12 = 4;
      goto LABEL_160;
    }

    v14 = v115;
    if (v93 == *(v10 + 65))
    {
      ++*(v10 + 318);
      v12 = 2;
LABEL_160:
      *(v10 + 169) = v12;
      goto LABEL_131;
    }

    v12 = 3;
LABEL_131:
    if (v12 == 5)
    {
      goto LABEL_193;
    }
  }

  if (v12 != 4)
  {
    goto LABEL_169;
  }

  v18 = v10[162];
  v19 = v10[35];
  v20 = v19 >= v18;
  v21 = v19 - v18;
  if (!v20)
  {
    v95 = "invalid padding state";
    v96 = 321;
    goto LABEL_191;
  }

  if (v21)
  {
    goto LABEL_52;
  }

  v97 = v10[152];
  memset(__s, 0, 260);
  memset(v169, 0, 260);
  v168 = 0;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  v160 = 0u;
  v159 = 0u;
  v158 = 0u;
  v157 = 0u;
  v156 = 0u;
  v155 = 0u;
  v154 = 0u;
  v153 = 0u;
  v152 = 0u;
  if (v10[26] && (*(v169 + 7) = 1262571615, *&v169[0] = 0x5F41454100000007, memset_s(v169 + 11, 0xF9uLL, 0, 0xF9uLL), (v98 = v10[13]) != 0) && *v122)
  {
    v99 = __dst;
    if (((v98)(__s, *(v10 + 8)) & 0x80000000) == 0)
    {
      v100 = (v10[26])(__s);
      goto LABEL_184;
    }
  }

  else
  {
    v99 = __dst;
  }

  v100 = 0;
LABEL_184:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v169, 0x104uLL, 0, 0x104uLL);
  if (!v100)
  {
    v95 = "creating padding hash state";
    v96 = 334;
    goto LABEL_191;
  }

  v102 = v10[27];
  v103 = !v102 || ((v102)(v100, v97, v17) & 0x80000000) != 0;
  memset(__s, 0, 260);
  v109 = v10[28];
  if (!v109)
  {
    goto LABEL_209;
  }

  if (*(v10 + 235) != *(v10 + 11))
  {
    goto LABEL_209;
  }

  if (((v109)(v100, __s) & 0x80000000) != 0)
  {
    goto LABEL_209;
  }

  if (LODWORD(__s[0]) != *(v10 + 11))
  {
    goto LABEL_209;
  }

  if (LODWORD(__s[0]) >= 8)
  {
    v110 = 0;
    v111 = 0;
    do
    {
      v111 |= *(__s + v110 + 4) ^ *&v99[v110];
      v112 = v110 + 16;
      v110 += 8;
    }

    while (v112 <= LODWORD(__s[0]));
    if (v111)
    {
LABEL_209:
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      goto LABEL_210;
    }
  }

  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v103)
  {
LABEL_210:
    v95 = "corrupted padding";
    v96 = 337;
    goto LABEL_191;
  }

  v10[150] = 0;
LABEL_226:
  *(v10 + 169) = 5;
LABEL_193:
  memset_s(v150, 0x104uLL, 0, 0x104uLL);
  memset_s(v148, 0x104uLL, 0, 0x104uLL);
  memset_s(v146, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v127, 0x104uLL, 0, 0x104uLL);
  memset_s(v125, 0x104uLL, 0, 0x104uLL);
  AEAContextDestroy(v13);
  if (v9 < 0)
  {
    v104 = 0;
    atomic_compare_exchange_strong(v10 + 6, &v104, 1u);
    if (!v104)
    {
      v105 = (*v10)[2];
      if (v105)
      {
        v105(**v10);
      }
    }
  }

LABEL_197:
  v106 = *MEMORY[0x29EDCA608];
  return v9;
}

atomic_uint *cancelProc_2(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 6, &v1, 1u);
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

void (**aaAssetDecryptionStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  *(&__s[32] + 4) = *MEMORY[0x29EDCA608];
  v5 = aaAssetDecryptionStreamOpen(a1, 0, 0);
  v8 = v5;
  if (!v5)
  {
LABEL_29:
    v31 = *MEMORY[0x29EDCA608];
    return v8;
  }

  v9 = *v5;
  memset(v78, 0, 32);
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  if (!*(a2 + 2))
  {
    goto LABEL_25;
  }

  v10 = 0;
  v11 = v74;
  v12 = 128;
  do
  {
    v13 = (*(a2 + 2))(*a2, v11, v12);
    if (v13 < 0)
    {
      goto LABEL_25;
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
  if (v10 != 128)
  {
LABEL_25:
    v29 = "truncated state";
    v30 = 480;
    goto LABEL_26;
  }

  *(v9 + 169) = HIDWORD(v75);
  *(v9 + 159) = *&v78[0];
  *(v9 + 80) = *(v78 + 8);
  *(v9 + 162) = *(&v78[1] + 1);
  if ((aeaContainerParamsInitWithMagic(v9 + 60, v74, v14, v15, v16, v17, v6, v7) & 0x80000000) != 0 || (aeaContainerParamsInitWithRootHeader(v9 + 240, v74 | 0xC, v18, v19, v20, v21, v6, v7) & 0x80000000) != 0 || (aeaCryptoInit(v9 + 32, v9 + 60) & 0x80000000) != 0 || (aeaContainerOffsetsInit(v9 + 312, v9 + 60, v9 + 8) & 0x80000000) != 0)
  {
    v29 = "invalid state";
    v30 = 493;
    goto LABEL_26;
  }

  if (*(v9 + 169) >= 6u)
  {
    v29 = "invalid state";
    v30 = 505;
    goto LABEL_26;
  }

  v22 = *(v9 + 160);
  if (v22 > *(v9 + 161) || (v23 = *(v9 + 319), v24 = *(v9 + 65), v23 > v24) || v23 + *(v9 + 318) * v24 != v22 || (v25 = v76, v76 > *(v9 + 8)) || DWORD1(v76) > *(v9 + 11) || ((v26 = *(v9 + 64), v27 = *(v9 + 51), v27 <= v26) ? (v28 = *(v9 + 64)) : (v28 = *(v9 + 51)), *(&v76 + 1) > v28 || v77 > v26 || *(&v77 + 1) > v27))
  {
    v29 = "invalid state";
    v30 = 515;
LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", v30, 108, 0, v29, v6, v7, v74[0]);
    if (*v8)
    {
      v8[1]();
    }

    free(v8);
    v8 = 0;
    goto LABEL_29;
  }

  if (!*(a2 + 2))
  {
    goto LABEL_136;
  }

  if (v76)
  {
    v33 = v9 + 684;
    do
    {
      v34 = (*(a2 + 2))(*a2, v33, v25);
      if (v34 < 0)
      {
        goto LABEL_136;
      }

      v33 += v34;
      v25 -= v34;
      if (v34)
      {
        v35 = v25 == 0;
      }

      else
      {
        v35 = 1;
      }
    }

    while (!v35);
    if (!*(a2 + 2))
    {
LABEL_136:
      v29 = "invalid state";
      v30 = 523;
      goto LABEL_26;
    }
  }

  v36 = DWORD1(v76);
  if (DWORD1(v76))
  {
    v37 = v9 + 944;
    do
    {
      v38 = (*(a2 + 2))(*a2, v37, v36);
      if (v38 < 0)
      {
        goto LABEL_136;
      }

      v37 += v38;
      v36 -= v38;
      if (v38)
      {
        v39 = v36 == 0;
      }

      else
      {
        v39 = 1;
      }
    }

    while (!v39);
  }

  v40 = *(&v76 + 1);
  if (*(&v76 + 1))
  {
    v41 = (v9 + 1200);
    v42 = *(v9 + 150);
    v43 = *(v9 + 151);
    while (1)
    {
      if (v42 != v43)
      {
        goto LABEL_63;
      }

      v44 = v43 + 0x40000;
      if ((v43 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v43 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v43)
        {
          v43 = 0x4000;
          v46 = 0x4000;
          if (v44 <= 0x4000)
          {
            goto LABEL_65;
          }
        }

        v45 = v43 >> 1;
        if ((v43 & (v43 >> 1)) != 0)
        {
          v45 = v43 & (v43 >> 1);
        }

        v43 += v45;
      }

      while (v43 < v44);
      v46 = v43;
      if (v43 >= 0x2000000001)
      {
LABEL_134:
        *__error() = 12;
LABEL_135:
        *v41 = 0;
        v41[1] = 0;
        v41[2] = 0;
        goto LABEL_136;
      }

LABEL_65:
      v47 = *(v9 + 152);
      v48 = realloc(v47, v46);
      if (!v48)
      {
LABEL_133:
        free(v47);
        goto LABEL_135;
      }

      *(v9 + 152) = v48;
      *(v9 + 151) = v46;
      v42 = *(v9 + 150);
LABEL_67:
      if (v46 - v42 >= v40)
      {
        v49 = v40;
      }

      else
      {
        v49 = v46 - v42;
      }

      v50 = AAByteStreamRead(a2, (*(v9 + 152) + v42), v49);
      if (v50 < 0)
      {
        goto LABEL_136;
      }

      if (!v50)
      {
        goto LABEL_75;
      }

      v42 = *v41 + v50;
      if (__CFADD__(*v41, v50))
      {
        goto LABEL_136;
      }

      v43 = *(v9 + 151);
      if (v42 > v43)
      {
        goto LABEL_136;
      }

      *v41 = v42;
      v40 -= v50;
      if (!v40)
      {
        goto LABEL_75;
      }
    }

    v42 = v43;
LABEL_63:
    v46 = v43;
    goto LABEL_67;
  }

LABEL_75:
  v51 = v77;
  if (v77)
  {
    v41 = (v9 + 1224);
    v52 = *(v9 + 153);
    v53 = *(v9 + 154);
    while (1)
    {
      if (v52 != v53)
      {
        goto LABEL_88;
      }

      v54 = v53 + 0x40000;
      if ((v53 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v53 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v53)
        {
          v53 = 0x4000;
          v56 = 0x4000;
          if (v54 <= 0x4000)
          {
            goto LABEL_90;
          }
        }

        v55 = v53 >> 1;
        if ((v53 & (v53 >> 1)) != 0)
        {
          v55 = v53 & (v53 >> 1);
        }

        v53 += v55;
      }

      while (v53 < v54);
      v56 = v53;
      if (v53 >= 0x2000000001)
      {
        goto LABEL_134;
      }

LABEL_90:
      v47 = *(v9 + 155);
      v57 = realloc(v47, v56);
      if (!v57)
      {
        goto LABEL_133;
      }

      *(v9 + 155) = v57;
      *(v9 + 154) = v56;
      v52 = *(v9 + 153);
LABEL_92:
      if (v56 - v52 >= v51)
      {
        v58 = v51;
      }

      else
      {
        v58 = v56 - v52;
      }

      v59 = AAByteStreamRead(a2, (*(v9 + 155) + v52), v58);
      if (v59 < 0)
      {
        goto LABEL_136;
      }

      if (!v59)
      {
        goto LABEL_100;
      }

      v52 = *v41 + v59;
      if (__CFADD__(*v41, v59))
      {
        goto LABEL_136;
      }

      v53 = *(v9 + 154);
      if (v52 > v53)
      {
        goto LABEL_136;
      }

      *v41 = v52;
      v51 -= v59;
      if (!v51)
      {
        goto LABEL_100;
      }
    }

    v52 = v53;
LABEL_88:
    v56 = v53;
    goto LABEL_92;
  }

LABEL_100:
  v60 = *(&v77 + 1);
  if (*(&v77 + 1))
  {
    v41 = (v9 + 1248);
    v61 = *(v9 + 156);
    v62 = *(v9 + 157);
    while (1)
    {
      if (v61 != v62)
      {
        goto LABEL_113;
      }

      v63 = v62 + 0x40000;
      if ((v62 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v62 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v62)
        {
          v62 = 0x4000;
          v65 = 0x4000;
          if (v63 <= 0x4000)
          {
            goto LABEL_115;
          }
        }

        v64 = v62 >> 1;
        if ((v62 & (v62 >> 1)) != 0)
        {
          v64 = v62 & (v62 >> 1);
        }

        v62 += v64;
      }

      while (v62 < v63);
      v65 = v62;
      if (v62 >= 0x2000000001)
      {
        goto LABEL_134;
      }

LABEL_115:
      v47 = *(v9 + 158);
      v66 = realloc(v47, v65);
      if (!v66)
      {
        goto LABEL_133;
      }

      *(v9 + 158) = v66;
      *(v9 + 157) = v65;
      v61 = *(v9 + 156);
LABEL_117:
      if (v65 - v61 >= v60)
      {
        v67 = v60;
      }

      else
      {
        v67 = v65 - v61;
      }

      v68 = AAByteStreamRead(a2, (*(v9 + 158) + v61), v67);
      if (v68 < 0)
      {
        goto LABEL_136;
      }

      if (!v68)
      {
        goto LABEL_125;
      }

      v61 = *v41 + v68;
      if (__CFADD__(*v41, v68))
      {
        goto LABEL_136;
      }

      v62 = *(v9 + 157);
      if (v61 > v62)
      {
        goto LABEL_136;
      }

      *v41 = v61;
      v60 -= v68;
      if (!v60)
      {
        goto LABEL_125;
      }
    }

    v61 = v62;
LABEL_113:
    v65 = v62;
    goto LABEL_117;
  }

LABEL_125:
  v69 = DWORD1(v76);
  *(v9 + 170) = v76;
  *(v9 + 235) = v69;
  v70 = *(v9 + 318);
  memset(&__s[1], 0, 252);
  v79 = 0;
  memset(&v78[2], 0, 256);
  LOWORD(__s[1]) = 19267;
  __s[0] = 0x5F41454100000006;
  result = memset_s(&__s[1] + 2, 0xFAuLL, 0, 0xFAuLL);
  v71 = LODWORD(__s[0]);
  if (LODWORD(__s[0]) < 0xFD)
  {
    *(__s + LODWORD(__s[0]) + 4) = v70;
    LODWORD(__s[0]) = v71 + 4;
    memset_s(&__s[1] + v71, 252 - v71, 0, 252 - v71);
    v72 = *(v9 + 13);
    if (v72 && *(v9 + 170))
    {
      v73 = v72(v9 + 416, *(v9 + 8));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      if ((v73 & 0x80000000) == 0)
      {
        if (a3)
        {
          *a3 = *(v9 + 162);
        }

        goto LABEL_29;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v29 = "invalid state";
    v30 = 533;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t *AEADecryptAndExtractAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  memset(&v34, 0, sizeof(v34));
  if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 804, 115, 0, "Invalid/missing directory: %s", v16, v17, a1);
    v21 = 0;
    v19 = 0;
  }

  else
  {
    v18 = malloc(0x9C8uLL);
    v19 = v18;
    if (v18)
    {
      memset_s(v18, 0x9C8uLL, 0, 0x9C8uLL);
      v20 = malloc(0x38uLL);
      v21 = v20;
      if (v20)
      {
        memset_s(v20, 0x38uLL, 0, 0x38uLL);
        *v19 = a3;
        *(v19 + 8) = a4;
        *(v19 + 16) = a6;
        *(v19 + 24) = a5;
        *(v19 + 2128) = a7;
        *(v19 + 2136) = a8;
        *(v19 + 2120) = a7 >> 62;
        if (a2)
        {
          *(v19 + 2296) = AAByteRangeClone(a2);
        }

        if (realpath_DARWIN_EXTSN(a1, (v19 + 72)))
        {
          if ((concatPath((v19 + 1096), 0x400uLL, (v19 + 72), ".tmp_decrypt") & 0x80000000) != 0)
          {
            v33 = v19 + 72;
            v25 = "Path too long: %s";
            v26 = 822;
          }

          else if (stat((v19 + 1096), &v34) || (v34.st_mode & 0xF000) == 0x4000)
          {
            if (pthread_mutex_init((v19 + 2320), 0))
            {
              v24 = *__error();
              v25 = "pthread_mutex_init";
              v26 = 824;
LABEL_24:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", v26, 115, v24, v25, v22, v23, v33);
              goto LABEL_14;
            }

            if (pthread_mutex_init((v19 + 2408), 0))
            {
              v24 = *__error();
              v25 = "pthread_mutex_init";
              v26 = 825;
              goto LABEL_24;
            }

            v31 = AEADecryptAsyncStreamOpen(v19, setupContext_0, verifySegment_0, processSegment_1, a7, a8);
            *(v19 + 48) = v31;
            if (v31)
            {
              v32 = AAExtractArchiveOutputStreamOpen(a1, v19, entryMessage, a7, a8);
              *(v19 + 64) = v32;
              if (v32)
              {
                *v21 = v19;
                v21[1] = extractToDirAsyncClose;
                v21[4] = extractToDirAsyncCancel;
                v21[2] = extractToDirAsyncGetRange;
                v21[3] = extractToDirAsyncProcess;
                return v21;
              }

              v25 = "creating extract stream";
              v26 = 832;
            }

            else
            {
              v25 = "creating decrypt stream";
              v26 = 830;
            }
          }

          else
          {
            v33 = v19 + 72;
            v25 = "Invalid tmp dir: %s";
            v26 = 823;
          }
        }

        else
        {
          v33 = a1;
          v25 = "Invalid directory: %s";
          v26 = 821;
        }

        v24 = 0;
        goto LABEL_24;
      }

      v24 = *__error();
      v25 = "malloc";
      v26 = 810;
      goto LABEL_24;
    }

    v28 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 808, 115, *v28, "malloc", v29, v30, v33);
    v21 = 0;
  }

LABEL_14:
  extractToDirAsyncClose(v19);
  free(v21);
  return 0;
}

uint64_t setupContext_0(uint64_t a1, AEAContext context)
{
  v87 = *MEMORY[0x29EDCA608];
  memset(&v83, 0, sizeof(v83));
  v4 = *(a1 + 8);
  if (v4 && (v4(*a1, context) & 0x80000000) != 0)
  {
    v10 = "Client context callback returned an error";
    v11 = 459;
    goto LABEL_38;
  }

  if (*(a1 + 2140))
  {
    *(a1 + 2144) = AEAContextGetFieldUInt(context, 0xDu);
    FieldUInt = AEAContextGetFieldUInt(context, 4u);
    *(a1 + 2152) = FieldUInt;
    v8 = FieldUInt + *(a1 + 2144) - 1;
    v9 = v8 / FieldUInt;
    if (v8 / FieldUInt >= 0xFFFFFFFF)
    {
      v10 = "Too many segments";
      v11 = 470;
LABEL_38:
      v14 = 0;
      goto LABEL_39;
    }

    *(a1 + 2384) = v9;
    if (FieldUInt > v8)
    {
      goto LABEL_8;
    }

    v15 = calloc(v9, 0x10uLL);
    *(a1 + 2392) = v15;
    if (!v15)
    {
      v14 = *__error();
      v10 = "malloc";
      v11 = 476;
      goto LABEL_39;
    }

    v16 = (*(a1 + 2384) + 1);
    *(a1 + 2160) = 0;
    *(a1 + 2164) = v16;
    v17 = calloc(v16, 4uLL);
    *(a1 + 2168) = v17;
    if (v17)
    {
      if (pthread_mutex_init((a1 + 2176), 0))
      {
        v21 = "SharedArrayInit: pthread_mutex_init failed\n";
        v22 = 56;
      }

      else
      {
        if (!pthread_cond_init((a1 + 2240), 0))
        {
          if (AASharedBufferPipeOpen((a1 + 32), (a1 + 40), *(a1 + 2152)) < 0)
          {
            v10 = "AASharedBufferPipeOpen";
            v11 = 482;
            goto LABEL_38;
          }

          v40 = AADecodeArchiveInputStreamOpen(*(a1 + 40), 0, 0, *(a1 + 2128) | 0x100, *(a1 + 2136));
          *(a1 + 56) = v40;
          if (!v40)
          {
            v10 = "open decoder stream";
            v11 = 486;
            goto LABEL_38;
          }

          if ((createThread((a1 + 2488), loadThread, a1, 0) & 0x80000000) != 0)
          {
            v10 = "createThread";
            v11 = 489;
            goto LABEL_38;
          }

          if ((createThread((a1 + 2496), extractThread, a1, 0) & 0x80000000) != 0)
          {
            v10 = "createThread";
            v11 = 490;
            goto LABEL_38;
          }

LABEL_8:
          if (stat((a1 + 1096), &v83))
          {
            if (mkdir((a1 + 1096), 0x1C0u))
            {
              v14 = *__error();
              LOBYTE(v79) = a1 + 72;
              v10 = "mkdir: %s";
              v11 = 500;
LABEL_39:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", v11, 115, v14, v10, v5, v6, v79);
              v12 = 0;
LABEL_40:
              v13 = 0xFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          else if ((v83.st_mode & 0xF000) != 0x4000)
          {
            LOBYTE(v79) = a1 + 72;
            v10 = "Not a directory: %s";
            v11 = 496;
            goto LABEL_38;
          }

          buf_size = 0;
          memset(&buf, 0, 128);
          memset(__s2, 0, sizeof(__s2));
          if (AEAContextGetFieldBlob(context, 0x12u, 0, 0x80uLL, &buf, &buf_size) < 0)
          {
            v10 = "getting archive identifier";
            v11 = 511;
            goto LABEL_38;
          }

          if ((concatPath(__str, 0x400uLL, (a1 + 1096), "archive_id") & 0x80000000) != 0)
          {
            LOBYTE(v79) = a1 + 72;
            v10 = "Name too long: %s";
            v11 = 513;
            goto LABEL_38;
          }

          if (stat(__str, &v83))
          {
            if ((storeFileContents(__str, &buf, buf_size) & 0x80000000) != 0)
            {
              v79 = __str;
              v10 = "storing archive id: %s";
              v11 = 529;
              goto LABEL_38;
            }
          }

          else
          {
            if ((v83.st_mode & 0xF000) != 0x8000 || v83.st_size != buf_size)
            {
              v10 = "Archive identifier size mismatch when resuming";
              v11 = 517;
              goto LABEL_38;
            }

            v37 = open(__str, 0);
            if (v37 < 0)
            {
              v14 = *__error();
              v79 = __str;
              v10 = "open: %s";
              v11 = 519;
              goto LABEL_39;
            }

            v38 = v37;
            v39 = read(v37, __s2, buf_size);
            close(v38);
            if (v39 != buf_size || memcmp(&buf, __s2, v39))
            {
              v10 = "Archive identifier value mismatch when resuming";
              v11 = 523;
              goto LABEL_38;
            }
          }

          v23 = *(a1 + 2296);
          if (!v23)
          {
            v41 = AAByteRangeCreate();
            *(a1 + 2296) = v41;
            if (!v41)
            {
              v10 = "AAByteRangeCreate";
              v11 = 537;
              goto LABEL_38;
            }

            if ((AAByteRangeAdd(v41, 0, *(a1 + 2144), v42, v43, v44, v5, v6) & 0x80000000) != 0)
            {
              v10 = "AAByteRangeAdd";
              v11 = 538;
              goto LABEL_38;
            }

            v23 = *(a1 + 2296);
          }

          v24 = AAByteRangeSizeAtOffset(v23, 0x7FFFFFFFFFFFFFFFLL);
          *(a1 + 2304) = v24 - AAByteRangeSizeAtOffset(v23, 0x8000000000000000);
          RemainingRange = loadRemainingRange(a1);
          if (RemainingRange)
          {
            v12 = RemainingRange;
            *__str = 0;
            *&buf.st_dev = 0;
            v26 = AAByteRangeFirst(RemainingRange, 0, __str, &buf);
            if ((v26 & 0x8000000000000000) == 0)
            {
              v29 = v26;
              while (1)
              {
                v30 = *__str;
                v31 = *&buf.st_dev;
                if (*__str <= *&buf.st_dev)
                {
                  v33 = *(a1 + 2296);
                  v34 = AAByteRangeSizeAtOffset(v33, *&buf.st_dev);
                  v32 = v34 - AAByteRangeSizeAtOffset(v33, v30);
                  v31 = *&buf.st_dev;
                  v30 = *__str;
                }

                else
                {
                  v32 = -1;
                }

                if (v32 < v31 - v30)
                {
                  break;
                }

                v29 = AAByteRangeNext(v12, v29, __str, &buf);
                if (v29 < 0)
                {
                  goto LABEL_30;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", 553, 115, 0, "Stored remaining range is not a subset of initial range", v27, v28, v79);
              goto LABEL_40;
            }

LABEL_30:
            AAByteRangeDestroy(*(a1 + 2296));
            *(a1 + 2296) = v12;
          }

          else
          {
            v12 = *(a1 + 2296);
          }

          v45 = AAByteRangeClone(v12);
          *(a1 + 2472) = v45;
          if (!v45)
          {
            v10 = "AAByteRangeClone";
            v11 = 564;
            goto LABEL_38;
          }

          *(a1 + 2400) = -1;
          if (!*(a1 + 2384))
          {
            v13 = 0;
            if (!*(a1 + 2120))
            {
              v12 = 0;
              goto LABEL_41;
            }

            v64 = 0;
            v63 = 0;
            v62 = 0;
            v77 = 0;
            LODWORD(v60) = 0;
            goto LABEL_107;
          }

          v49 = 0;
          v50 = 0;
          while (1)
          {
            v51 = *(a1 + 2152);
            v52 = v51 * v50;
            v53 = v51 * v50 + v51;
            v54 = v53 >= *(a1 + 2144) ? *(a1 + 2144) : v53;
            if (v52 > v54)
            {
              break;
            }

            v56 = *(a1 + 2296);
            v57 = AAByteRangeSizeAtOffset(v56, v54);
            v58 = AAByteRangeSizeAtOffset(v56, v52);
            v55 = *(a1 + 2392);
            if (v57 != v58)
            {
              goto LABEL_71;
            }

            *(v55 + v49) = 3;
            unlinkTempSegment(a1, v50, v59, v46, v47, v48, v5, v6);
LABEL_73:
            ++v50;
            v60 = *(a1 + 2384);
            v49 += 16;
            if (v50 >= v60)
            {
              if (*(a1 + 2120))
              {
                if (v60)
                {
                  v61 = 0;
                  v62 = 0;
                  v63 = 0;
                  v81 = 0;
                  LODWORD(v13) = 0;
                  v64 = 0;
                  while (1)
                  {
                    v65 = *(a1 + 2152);
                    v66 = v65 * v61;
                    v67 = v65 * v61 + v65;
                    v68 = v67 >= *(a1 + 2144) ? *(a1 + 2144) : v67;
                    if (v66 > v68)
                    {
                      break;
                    }

                    v80 = v64;
                    v70 = v62;
                    v71 = v63;
                    v72 = *(a1 + 2296);
                    v73 = AAByteRangeSizeAtOffset(v72, v68);
                    v74 = AAByteRangeSizeAtOffset(v72, v66);
                    v69 = v73 - v74;
                    if (v73 != v74)
                    {
                      v63 = v71;
                      v62 = v70;
                      v64 = v80;
LABEL_84:
                      memset(&buf, 0, sizeof(buf));
                      if (getTempSegmentFilename(a1, v61, __str, v46, v47, v48, v5, v6) || stat(__str, &buf))
                      {
                        st_size = 0;
                      }

                      else if ((buf.st_mode & 0xF000) == 0x8000)
                      {
                        st_size = buf.st_size;
                      }

                      else
                      {
                        st_size = 0;
                      }

                      v64 += v69;
                      LODWORD(v13) = v13 + 1;
                      v63 = v63 - v66 + v68;
                      if (st_size)
                      {
                        v76 = v81 + 1;
                      }

                      else
                      {
                        v76 = v81;
                      }

                      v81 = v76;
                      v62 += st_size;
                      goto LABEL_91;
                    }

                    v63 = v71;
                    v62 = v70;
                    v64 = v80;
LABEL_91:
                    ++v61;
                    v60 = *(a1 + 2384);
                    if (v61 >= v60)
                    {
                      v77 = v81;
                      goto LABEL_107;
                    }
                  }

                  v69 = -1;
                  goto LABEL_84;
                }

                v64 = 0;
                LODWORD(v13) = 0;
                v77 = 0;
                v63 = 0;
                v62 = 0;
LABEL_107:
                v78 = MEMORY[0x29EDCA610];
                fprintf(*MEMORY[0x29EDCA610], "%12u segments in archive\n", v60);
                fprintf(*v78, "%12u segments to process\n", v13);
                fprintf(*v78, "%12u segments in cache\n", v77);
                fprintf(*v78, "%12u segments to download\n", v13 - v77);
                fprintf(*v78, "%12llu bytes in archive\n", *(a1 + 2144));
                fprintf(*v78, "%12llu bytes to process\n", v64);
                fprintf(*v78, "%12llu segment bytes in cache\n", v62);
                fprintf(*v78, "%12llu segment bytes to download\n", v63 - v62);
              }

              v12 = 0;
              v13 = 0;
              goto LABEL_41;
            }
          }

          v55 = *(a1 + 2392);
LABEL_71:
          *(v55 + v49) = 0;
          if (*(a1 + 2400) == -1)
          {
            *(a1 + 2400) = v50;
          }

          goto LABEL_73;
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

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v79);
    v10 = "SharedArrayInit";
    v11 = 479;
    goto LABEL_38;
  }

  v12 = 0;
  v13 = 0;
  *(a1 + 2140) = 1;
LABEL_41:
  AAByteRangeDestroy(v12);
  v35 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t verifySegment_0(uint64_t a1, size_t __size, unint64_t a3, int a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x29EDCA608];
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v9 = *(a1 + 2152);
  v10 = a3 / v9;
  if (a3 / v9 * v9 != a3 || v10 >= *(a1 + 2384))
  {
    v35 = a3;
    v14 = "Invalid segment offset: %llu, size: %zu";
    v15 = 639;
    v16 = 0;
    goto LABEL_9;
  }

  if (*(*(a1 + 2392) + 16 * v10) != 3)
  {
    if (__size < 0x2000000001)
    {
      v22 = malloc(__size);
      if (v22)
      {
        v12 = v22;
        if (loadTempSegment(a1, v10, v22, __size, v23, v24, v25, v26) < 1 || aeaChecksum(v36, a4, v12, __size, v29, v30, v31, v32) || LODWORD(v36[0]) != a6 || memcmp(v36 + 4, a5, a6))
        {
          unlinkTempSegment(a1, v10, v27, v28, v29, v30, v31, v32);
          v13 = 0;
          goto LABEL_11;
        }

        atomic_fetch_add((a1 + 2288), 1u);
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: cached\n", v10);
        }

        if ((notifySegmentAvailable(a1, v10, __size) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 664, 115, 0, "pushSegmentData failed", v33, v34, v35);
LABEL_10:
        v13 = 0xFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    else
    {
      *__error() = 12;
    }

    v16 = *__error();
    v14 = "malloc";
    v15 = 652;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", v15, 115, v16, v14, a7, a8, v35);
    v12 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 2120) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment %u: not needed\n", v10);
  }

  v12 = 0;
LABEL_7:
  v13 = 1;
LABEL_11:
  free(v12);
  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t processSegment_1(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 2152);
  v10 = a3 / v9;
  if (a3 / v9 * v9 != a3 || v10 >= *(a1 + 2384))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 686, 115, 0, "Invalid segment offset: %llu, size: %zu", a7, a8, a3);
LABEL_22:
    result = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  memset(&v34, 0, sizeof(v34));
  if ((getTempSegmentFilename(a1, v10, __str, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v24 = "getSegmentFile";
    v25 = 127;
LABEL_18:
    v26 = 0;
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v25, 115, v26, v24, v13, v14, v33);
LABEL_20:
    v27 = "storeTempSegment";
    v28 = 690;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", v28, 115, 0, v27, v21, v22, v33);
    goto LABEL_22;
  }

  if (!stat(__str, &v34))
  {
    v24 = "segment already in cache";
    v25 = 128;
    goto LABEL_18;
  }

  v33 = 0x80;
  v15 = open(__str, 1537);
  if (v15 < 0)
  {
    v26 = *__error();
    v24 = "tmp";
    v25 = 130;
    goto LABEL_19;
  }

  v16 = v15;
  if (a2)
  {
    v17 = 0;
    while (1)
    {
      v18 = write(v16, (a4 + v17), a2 - v17);
      if (v18 < 0)
      {
        v30 = *__error();
        v31 = "write";
        v32 = 135;
        goto LABEL_28;
      }

      if (!v18)
      {
        break;
      }

      v17 += v18;
      if (v17 >= a2)
      {
        goto LABEL_11;
      }
    }

    v31 = "write returned 0";
    v32 = 136;
    v30 = 0;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v32, 115, v30, v31, v19, v20, 128);
    close(v16);
    goto LABEL_20;
  }

LABEL_11:
  close(v16);
  atomic_fetch_add((a1 + 2288), 1u);
  if (*(a1 + 2120) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment %u: stored in cache\n", v10);
  }

  if ((notifySegmentAvailable(a1, v10, a2) & 0x80000000) != 0)
  {
    v27 = "pushSegmentData";
    v28 = 695;
    goto LABEL_21;
  }

  result = 0;
LABEL_23:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t entryMessage(void *a1, uint64_t a2, uint64_t a3, AAHeader header, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  v12 = a1[3];
  if (!v12 || (v13 = v12(*a1, a2, a3, header), !v13))
  {
    switch(v10)
    {
      case 20:
        v39 = -1;
        value = -1;
        v38 = -1;
        v21.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(header, v21);
        v25 = 0;
        if ((KeyIndex & 0x80000000) == 0)
        {
          FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value);
          v24 = FieldUInt <= 1 ? 1 : FieldUInt;
          if (v24 > 0)
          {
            v25 = 1;
          }
        }

        v26.ikey = 5784649;
        v27 = AAHeaderGetKeyIndex(header, v26);
        if ((v27 & 0x80000000) != 0 || ((v28 = AAHeaderGetFieldUInt(header, v27, &v39), v28 <= 1) ? (v29 = 1) : (v29 = v28), v29 <= 0))
        {
          v25 = 0;
        }

        v30.ikey = 5915721;
        v31 = AAHeaderGetKeyIndex(header, v30);
        if ((v31 & 0x80000000) != 0 || ((v32 = AAHeaderGetFieldUInt(header, v31, &v38), v32 <= 1) ? (v33 = 1) : (v33 = v32), !v25 || v33 <= 0))
        {
          v19 = "Missing IDX,IDZ from archive decoder";
          v20 = 419;
        }

        else
        {
          v34 = AAByteRangeOffsetAtSize(a1[287], v39);
          v35 = AAByteRangeOffsetAtSize(a1[287], v38 + v39);
          if (value != 68 || (retireEntryRange(a1, v34, v35) & 0x80000000) == 0)
          {
            return 0;
          }

          v19 = "retire segment";
          v20 = 428;
        }

        break;
      case 21:
        if (header)
        {
          v15 = *header;
          v16 = *(header + 1);
          v17 = AAByteRangeOffsetAtSize(a1[287], *header);
          v18 = AAByteRangeOffsetAtSize(a1[287], v16 + v15);
          if ((retireEntryRange(a1, v17, v18) & 0x80000000) == 0)
          {
            return 0;
          }

          v19 = "retire segment";
          v20 = 441;
        }

        else
        {
          v19 = "data not expected to be NULL";
          v20 = 432;
        }

        break;
      case 22:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 407, 115, 0, "Extraction failed: %s", a7, a8, v9);
LABEL_37:
        v14 = 0xFFFFFFFFLL;
LABEL_38:
        cancelStreams(a1);
        return v14;
      default:
        return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", v20, 115, 0, v19, a7, a8, v37);
    goto LABEL_37;
  }

  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  return v14;
}

uint64_t extractToDirAsyncClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 2292));
    v3 = v2 == 0;
    if (*(result + 2488))
    {
      SharedArrayEnqueue((result + 2160), -1);
      joinThread(*(v1 + 2488));
    }

    AAByteStreamClose(*(v1 + 32));
    v4 = *(v1 + 2496);
    if (v4)
    {
      joinThread(v4);
    }

    AAByteStreamClose(*(v1 + 40));
    if (AAArchiveStreamClose(*(v1 + 64)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 725, 115, 0, "extract stream reported errors", v5, v6, v11.st_dev);
      v3 = 0;
    }

    if (AAArchiveStreamClose(*(v1 + 56)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 726, 115, 0, "decode stream reported errors", v7, v8, v11.st_dev);
      v3 = 0;
    }

    if ((AAAsyncByteStreamClose(*(v1 + 48)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 727, 115, 0, "decrypt stream reported errors", v9, v10, v11.st_dev);
      v3 = 0;
    }

    pthread_mutex_destroy((v1 + 2320));
    pthread_mutex_destroy((v1 + 2408));
    free(*(v1 + 2392));
    if (*(v1 + 2384) && !pthread_mutex_destroy((v1 + 2176)) && !pthread_cond_destroy((v1 + 2240)))
    {
      free(*(v1 + 2168));
    }

    AAByteRangeDestroy(*(v1 + 2296));
    AAByteRangeDestroy(*(v1 + 2472));
    if (v3)
    {
      memset(&v11, 0, sizeof(v11));
      if (!stat((v1 + 1096), &v11) && (v11.st_mode & 0xF000) == 0x4000)
      {
        removeTree((v1 + 1096));
      }
    }

    free(v1);
    if (v3)
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

uint64_t extractToDirAsyncGetRange(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = (a1 + 2312);
  if (atomic_load((a1 + 2312)))
  {
    goto LABEL_2;
  }

  result = AAAsyncByteStreamGetRange(*(a1 + 48), a2, a3);
  if (result >= 1)
  {
    if (result == 1 && *a2)
    {
      return 1;
    }

LABEL_2:
    v8 = 0;
    result = 0;
    atomic_compare_exchange_strong(v6, &v8, 1u);
    if (*(a1 + 2400) < *(a1 + 2384))
    {
      return result;
    }

    *a2 = 0;
    *a3 = 0;
    return 1;
  }

  return result;
}

uint64_t AEADecryptAndExtractChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned int a10)
{
  AsyncStreamOpen = AEADecryptAndExtractAsyncStreamOpen(a1, a2, a3, a4, a5, a6, a9 | 0x200000000000000, a10);
  if (AsyncStreamOpen)
  {

    return aaCompositeChunkAsyncStreamOpen(AsyncStreamOpen, a7, a8, a9, a10);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractChunkAsyncStreamOpen", 868, 115, 0, "AEADecryptAndExtractAsyncStreamOpen", v13, v14, v16);
    return 0;
  }
}

uint64_t loadThread(uint64_t a1)
{
  v2 = *(a1 + 2152);
  if (v2 < 0x2000000001)
  {
    v3 = malloc(v2);
    if (v3)
    {
      v4 = v3;
      while (!pthread_mutex_lock((a1 + 2176)))
      {
        while (1)
        {
          v8 = *(a1 + 2160);
          if (v8)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 2240), (a1 + 2176)))
          {
            v38 = "SharedArrayPop: pthread_cond_wait failed\n";
            v39 = 94;
            goto LABEL_37;
          }
        }

        v9 = v8 - 1;
        *(a1 + 2160) = v9;
        v10 = *(*(a1 + 2168) + 4 * v9);
        if (pthread_mutex_unlock((a1 + 2176)))
        {
          v38 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v39 = 98;
          goto LABEL_37;
        }

        if (v10 == -1)
        {
          goto LABEL_39;
        }

        if (v10 >= *(a1 + 2384))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 338, 115, 0, "Invalid segment index: %u", v6, v7, v10);
          goto LABEL_38;
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: dequeue\n", v10);
        }

        v12 = *(*(a1 + 2392) + 16 * v10 + 8);
        if (loadTempSegment(a1, v10, v4, v12, v11, v5, v6, v7) <= 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 344, 115, 0, "loading segment: %u", v13, v14, v10);
          goto LABEL_38;
        }

        v15 = *(a1 + 2152) * v10;
        v42 = 0;
        v43 = 0;
        v16 = AAByteRangeFirst(*(a1 + 2296), v15, &v43, &v42);
        if (v16 < 0)
        {
          v24 = 0;
        }

        else
        {
          v23 = v16;
          v24 = 0;
          v25 = v15 + v12;
          v26 = 1;
          do
          {
            if (v43 <= v15)
            {
              v27 = v15;
            }

            else
            {
              v27 = v43;
            }

            if (v25 >= v42)
            {
              v28 = v42;
            }

            else
            {
              v28 = v25;
            }

            if (v27 >= v28)
            {
              break;
            }

            while (1)
            {
              v29 = AAByteStreamWrite(*(a1 + 32), &v4[v27 - v15], v28 - v27);
              if (v29 < 0)
              {
                break;
              }

              v27 += v29;
              v24 += v29;
              if (v27 >= v28)
              {
                goto LABEL_28;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 364, 115, 0, "SharedBufferWrite", v30, v31, v40);
            v26 = 0;
LABEL_28:
            v23 = AAByteRangeNext(*(a1 + 2296), v23, &v43, &v42);
          }

          while ((v23 & 0x8000000000000000) == 0);
          if (!v26)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: %zu B processed\n", v10, v24);
        }

        unlinkTempSegment(a1, v10, v17, v18, v19, v20, v21, v22);
        atomic_fetch_add((a1 + 2288), 0xFFFFFFFF);
      }

      v38 = "SharedArrayPop: pthread_mutex_lock failed\n";
      v39 = 91;
LABEL_37:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v39, 0, v38, v5, v6, v7, v40);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 336, 115, 0, "SharedArrayDequeue", v35, v36, v41);
      goto LABEL_38;
    }
  }

  else
  {
    *__error() = 12;
  }

  v32 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 331, 115, *v32, "malloc", v33, v34, v40);
  v4 = 0;
LABEL_38:
  cancelStreams(a1);
LABEL_39:
  free(v4);
  return a1;
}

uint64_t extractThread(uint64_t a1)
{
  if (AAArchiveStreamProcess(*(a1 + 56), *(a1 + 64), 0, 0, *(a1 + 2128), *(a1 + 2136)) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractThread", 389, 115, 0, "AAByteStreamProcess reported an error", v2, v3, v5);
    cancelStreams(a1);
  }

  return a1;
}

void **loadRemainingRange(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  bzero(v20, 0x400uLL);
  if ((concatPath(v20, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 254, 115, 0, "Name too long", v2, v3, v18);
    goto LABEL_9;
  }

  v4 = open(v20, 0);
  if (v4 < 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v8 = AAByteRangeCreate();
  if (v8)
  {
    while (1)
    {
      v9 = read(v5, v19, 0x10uLL);
      if (v9 < 0)
      {
        v15 = *__error();
        v13 = "read";
        v14 = 264;
        goto LABEL_16;
      }

      if (v9 != 16)
      {
        break;
      }

      if ((AAByteRangeAdd(v8, v19[0], v19[1], v10, v11, v12, v6, v7) & 0x80000000) != 0)
      {
        v13 = "AAByteRangeAdd";
        v14 = 267;
        goto LABEL_15;
      }
    }

    if (!v9)
    {
      close(v5);
      goto LABEL_18;
    }

    v13 = "truncated remaining range file";
    v14 = 266;
  }

  else
  {
    v13 = "AAByteRangeCreate";
    v14 = 259;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", v14, 115, v15, v13, v6, v7, v18);
  close(v5);
LABEL_17:
  AAByteRangeDestroy(v8);
  v8 = 0;
LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t unlinkTempSegment(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x29EDCA608];
  result = getTempSegmentFilename(a1, a2, __str, a4, a5, a6, a7, a8);
  if (!result)
  {
    result = unlink(__str);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t loadTempSegment(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x29EDCA608];
  memset(&v18, 0, sizeof(v18));
  if ((getTempSegmentFilename(a1, a2, __str, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = open(__str, 0, *&v18.st_dev, *&v18.st_uid, *&v18.st_atimespec, *&v18.st_mtimespec, *&v18.st_ctimespec, *&v18.st_birthtimespec);
    if (v10 < 0)
    {
      v12 = 0;
    }

    else
    {
      v11 = v10;
      if (fstat(v10, &v18))
      {
        v12 = 0;
      }

      else if (v18.st_size == a4)
      {
        LODWORD(v12) = 0;
        v13 = 0;
        while (a4 > v13)
        {
          v14 = read(v11, (a3 + v13), a4 - v13);
          if (v14)
          {
            v15 = 0;
          }

          else
          {
            v15 = 3;
          }

          if (v14 < 0)
          {
            v12 = 0xFFFFFFFFLL;
          }

          else
          {
            v12 = v12;
          }

          v13 += v14 & ~(v14 >> 63);
          if (v14 < 0)
          {
            v15 = 2;
          }

          if (v15)
          {
            if (v15 == 2)
            {
              goto LABEL_24;
            }

            break;
          }
        }

        if (v13 == a4)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

LABEL_24:
      close(v11);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v12;
}

void cancelStreams(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 2292), &v2, 1u);
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      AAArchiveStreamCancel(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      AAArchiveStreamCancel(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      AAAsyncByteStreamCancel(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      AAByteStreamCancel(v7);
    }

    v8 = *(a1 + 40);
    if (v8)
    {

      AAByteStreamCancel(v8);
    }
  }
}

uint64_t getTempSegmentFilename(uint64_t a1, unsigned int a2, char *__str, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2384) <= a2)
  {
    v11 = a2;
    v8 = "Invalid segment index: %u";
    v9 = 113;
    goto LABEL_5;
  }

  if (snprintf(__str, 0x400uLL, "%s/%08x", (a1 + 1096), a2) >= 0x400)
  {
    v8 = "Segment file name too long";
    v9 = 115;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", v9, 115, 0, v8, a7, a8, v11);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t notifySegmentAvailable(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2320)))
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 88, 115, *v8, "pthread_mutex_lock", v9, v10, v23);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v12 = *(a1 + 2392);
    if (*(v12 + 16 * a2))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 90, 115, 0, "Invalid segment state", v6, v7, v23);
      v13 = 0;
      v12 = *(a1 + 2392);
    }

    else
    {
      v13 = 1;
    }

    v14 = v12 + 16 * a2;
    *v14 = 1;
    *(v14 + 8) = a3;
    v15 = *(a1 + 2400);
    if (v15 < *(a1 + 2384))
    {
      v16 = MEMORY[0x29EDCA610];
      do
      {
        v17 = *(*(a1 + 2392) + 16 * v15);
        if (v17 == 1)
        {
          if (*(a1 + 2120) >= 2u)
          {
            fprintf(*v16, "Segment %u: in queue for processing\n", v15);
            v15 = *(a1 + 2400);
          }

          if ((SharedArrayEnqueue((a1 + 2160), v15) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 101, 115, 0, "SharedArrayEnqueue", v18, v19, v23);
            v13 = 0;
          }
        }

        else if (!v17)
        {
          break;
        }

        v15 = *(a1 + 2400) + 1;
        *(a1 + 2400) = v15;
      }

      while (v15 < *(a1 + 2384));
    }

    if (pthread_mutex_unlock((a1 + 2320)))
    {
      v20 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 106, 115, *v20, "pthread_mutex_unlock", v21, v22, v23);
      v13 = 0;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t retireEntryRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x29EDCA608];
  if (pthread_mutex_lock((a1 + 2408)))
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 290, 115, *v11, "pthread_mutex_lock", v12, v13, v56);
    result = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  if ((AAByteRangeSub(*(a1 + 2472), a2, a3, v6, v7, v8, v9, v10) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 293, 115, 0, "AAByteRangeSub", v15, v16, v56);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  RealTime = getRealTime();
  if (RealTime <= *(a1 + 2480) + 1.0)
  {
    goto LABEL_34;
  }

  v57 = 0;
  v58 = 0;
  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if ((concatPath(&__from, 0x400uLL, (a1 + 1096), "remaining.tmp") & 0x80000000) != 0)
  {
    v34 = 203;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v34, 115, 0, "Name too long", v19, v20, v56);
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  if ((concatPath(&__to, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    v34 = 204;
    goto LABEL_23;
  }

  v56 = 0x80;
  v21 = open(&__from, 1537);
  if (v21 < 0)
  {
    v47 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 207, 115, v47, "open: %s", v48, v49, &__to);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = calloc(0x4000uLL, 8uLL);
  if (!v23)
  {
    v50 = *__error();
    v51 = "malloc";
    v52 = 210;
LABEL_46:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v52, 115, v50, v51, v29, v30, 128);
    close(v22);
    goto LABEL_25;
  }

  v24 = AAByteRangeFirst(*(a1 + 2472), 0, &v58, &v57);
  if (v24 < 0)
  {
    goto LABEL_19;
  }

  v25 = v24;
  v26 = 0;
  do
  {
    v27 = v57;
    v28 = &v23[8 * v26];
    v26 += 2;
    *v28 = v58;
    *(v28 + 1) = v27;
    if (v26 == 0x4000)
    {
      if (write(v22, v23, 0x20000uLL) != 0x20000)
      {
        v51 = "truncated write";
        v52 = 220;
LABEL_45:
        v50 = 0;
        goto LABEL_46;
      }

      v26 = 0;
    }

    v25 = AAByteRangeNext(*(a1 + 2472), v25, &v58, &v57);
  }

  while ((v25 & 0x8000000000000000) == 0);
  if (v26 && write(v22, v23, 8 * v26) != 8 * v26)
  {
    v51 = "truncated write";
    v52 = 229;
    goto LABEL_45;
  }

LABEL_19:
  close(v22);
  rename(&__from, &__to, v31);
  if ((v32 & 0x80000000) == 0)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v53 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 235, 115, *v53, "rename: %s", v54, v55, &__to);
LABEL_25:
  v33 = 1;
LABEL_26:
  if (__from.__pn_.__r_.__value_.__s.__data_[0])
  {
    unlink(&__from);
  }

  free(v23);
  if (v33)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 300, 115, 0, "store remaining range", v35, v36, v56);
    v17 = 0;
  }

  if (*(a1 + 16))
  {
    v37 = *(a1 + 2304);
    v38 = *(a1 + 2472);
    v39 = AAByteRangeSizeAtOffset(v38, 0x7FFFFFFFFFFFFFFFLL);
    v40 = AAByteRangeSizeAtOffset(v38, 0x8000000000000000);
    if (((*(a1 + 16))(*a1, ((v37 - v39 + v40) * 100.0) / v37) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 301, 115, 0, "User cancelled operation", v41, v42, v56);
      v17 = 0;
    }
  }

  *(a1 + 2480) = RealTime;
LABEL_34:
  if (pthread_mutex_unlock((a1 + 2408)))
  {
    v43 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 305, 115, *v43, "pthread_mutex_unlock", v44, v45, v56);
    v17 = 0;
  }

  if (v17)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_39:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaEntryHashesInitWithFD(_BYTE *a1, unsigned int a2, int a3)
{
  v6 = malloc(0x40000uLL);
  if (a1)
  {
    memset_s(a1, 0xACuLL, 0, 0xACuLL);
  }

  if (!((((a2 >> 11) & 1) + ((a2 >> 12) & 1) + ((a2 >> 13) & 1) + ((a2 >> 14) & 1)) | (a2 >> 15) & 1))
  {
    goto LABEL_38;
  }

  v21[0] = 0;
  v21[1] = 0;
  memset(&c, 0, sizeof(c));
  memset(&v19, 0, sizeof(v19));
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  v7 = *a1 & 0xE0 | (a2 >> 11);
  *a1 = *a1 & 0xE0 | (a2 >> 11);
  if ((a2 & 0x800) != 0)
  {
    CC_CKSUM_Init(v21);
    LOBYTE(v7) = *a1;
    if ((*a1 & 2) == 0)
    {
LABEL_6:
      if ((v7 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_6;
  }

  CC_SHA1_Deprecated_Init(&c);
  LOBYTE(v7) = *a1;
  if ((*a1 & 4) == 0)
  {
LABEL_7:
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    CC_SHA384_Init(&v18);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  CC_SHA256_Init(&v19);
  LOBYTE(v7) = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    CC_SHA512_Init(&v17);
  }

LABEL_10:
  v8 = read(a3, v6, 0x40000uLL);
  if (v8 < 0)
  {
LABEL_26:
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithFD", 44, 102, *v11, "read", v12, v13, v17.count[0]);
    v14 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v9 = v8;
  while (v9)
  {
    v10 = *a1;
    if (*a1)
    {
      CC_CKSUM_Update(v21, v6, v9);
      v10 = *a1;
      if ((*a1 & 2) == 0)
      {
LABEL_15:
        if ((v10 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else if ((*a1 & 2) == 0)
    {
      goto LABEL_15;
    }

    CC_SHA1_Deprecated_Update(&c, v6, v9);
    v10 = *a1;
    if ((*a1 & 4) == 0)
    {
LABEL_16:
      if ((v10 & 8) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_23:
    CC_SHA256_Update(&v19, v6, v9);
    v10 = *a1;
    if ((*a1 & 8) != 0)
    {
LABEL_24:
      CC_SHA384_Update(&v18, v6, v9);
      if ((*a1 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      CC_SHA512_Update(&v17, v6, v9);
      goto LABEL_19;
    }

LABEL_17:
    if ((v10 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 = read(a3, v6, 0x40000uLL);
    if (v9 < 0)
    {
      goto LABEL_26;
    }
  }

  v15 = *a1;
  if ((*a1 & 1) == 0)
  {
    if ((*a1 & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_41:
    CC_SHA1_Deprecated_Final(a1 + 8, &c);
    v15 = *a1;
    if ((*a1 & 4) != 0)
    {
      goto LABEL_42;
    }

LABEL_35:
    if ((v15 & 8) == 0)
    {
      goto LABEL_36;
    }

LABEL_43:
    CC_SHA384_Final(a1 + 60, &v18);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:
    CC_SHA512_Final(a1 + 108, &v17);
    goto LABEL_38;
  }

  CC_CKSUM_Final(a1 + 1, v21);
  v15 = *a1;
  if ((*a1 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  if ((v15 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_42:
  CC_SHA256_Final(a1 + 28, &v19);
  v15 = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  if ((v15 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  v14 = 0;
LABEL_39:
  free(v6);
  return v14;
}

uint64_t aaEntryHashesInitWithPath(_BYTE *a1, unsigned int a2, char *a3, const char *a4)
{
  v4 = a4;
  v21 = *MEMORY[0x29EDCA608];
  if ((concatPath(v20, 0x400uLL, a3, a4) & 0x80000000) != 0)
  {
    v14 = "invalid path";
    v15 = 73;
    v16 = 0;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", v15, 102, v16, v14, v7, v8, v19);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = open(v20, 0);
  if (v9 < 0)
  {
    v16 = *__error();
    v19 = v20;
    v14 = "%s";
    v15 = 77;
    goto LABEL_7;
  }

  v10 = v9;
  if ((aaEntryHashesInitWithFD(a1, a2, v9) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 79, 102, 0, "computing hashes: %s", v11, v12, v4);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  close(v10);
LABEL_10:
  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t aaEntryTypeFromMode(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_296AD1F50[v1 >> 12];
  }
}