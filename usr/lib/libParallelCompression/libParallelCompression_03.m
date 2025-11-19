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

uint64_t fullReplacementBXPatch5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v12 = *(a1 + 32);
  if (a5 >= 1)
  {
    fwrite("Full replacement patch\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (v12 + 60 <= a2)
  {
    if (v12 + 60 < a2)
    {
      fwrite("Extra bytes in patch (ignored)", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    v14 = malloc(0x20000uLL);
    if (v14)
    {
      v17 = ILowMemoryDecoderStreamCreateWithBuffer(a1 + 60, v12, 0x20000uLL);
      if (v17)
      {
        v18 = OSHA1StreamCreate(a3, 0, a4);
        if (v18)
        {
          v19 = v18;
          v20 = *(a1 + 16);
          if (v20)
          {
            v21 = 0;
            while (1)
            {
              v22 = v20 - v21;
              if (v22 >= 0x20000)
              {
                v23 = 0x20000;
              }

              else
              {
                v23 = v22;
              }

              if (ILowMemoryDecoderStreamRead(v17, v14, v23) != v23)
              {
                v26 = "reading from payload stream";
                v27 = 62;
                goto LABEL_32;
              }

              if (OSHA1StreamWrite(v19, v14, v23) != v23)
              {
                break;
              }

              v21 += v23;
              v20 = *(a1 + 16);
              if (v21 >= v20)
              {
                goto LABEL_18;
              }
            }

            v26 = "writing to digest stream";
            v27 = 64;
          }

          else
          {
LABEL_18:
            OSHA1StreamDestroy(v19, &v33);
            if (v33 == *(a1 + 40) && v34 == *(a1 + 48) && v35 == *(a1 + 56))
            {
              v13 = 0;
LABEL_34:
              free(v14);
              ILowMemoryDecoderStreamDestroy(v17);
              goto LABEL_35;
            }

            v26 = "Invalid output digest after patch application";
            v27 = 71;
          }
        }

        else
        {
          v26 = "Digest stream init";
          v27 = 52;
        }
      }

      else
      {
        v26 = "Payload stream init";
        v27 = 51;
      }

LABEL_32:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", v27, 42, 0, v26, v15, v16, v33);
    }

    else
    {
      v28 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 50, 42, *v28, "malloc", v29, v30, v33);
      v17 = 0;
    }

    v13 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 45, 42, 0, "Missing bytes in patch", a7, a8, v33);
  v13 = 0xFFFFFFFFLL;
LABEL_35:
  v31 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t BXDiff5GetPatchInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0xFFFFFFFFLL;
  if (a2 >= 0x3C && *a1 == 0x3035464649445842)
  {
    result = 0;
    *a3 = *(a1 + 16);
    v5 = *(a1 + 12) & 1;
    *(a3 + 8) = *(a1 + 8) == 0;
    *(a3 + 12) = v5;
  }

  return result;
}

uint64_t BXPatch5(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t), uint64_t a6, int a7)
{
  v8[0] = a1;
  v8[1] = a2;
  return BXPatch5StreamWithFlags(BXPatch5WithFlagsBufferStreamPRead, v8, a2, a3, a4, a5, a6, a7 > 0);
}

uint64_t BXPatch5WithFlags(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t), uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v8[1] = a2;
  return BXPatch5StreamWithFlags(BXPatch5WithFlagsBufferStreamPRead, v8, a2, a3, a4, a5, a6, a7);
}

uint64_t BXPatch5StreamWithFlags(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t), uint64_t a7, uint64_t a8)
{
  v154 = *MEMORY[0x29EDCA608];
  if (a5 <= 0x3B)
  {
    v8 = "Invalid patch size";
    v9 = 264;
    goto LABEL_50;
  }

  if (*a4 != 0x3035464649445842)
  {
    v8 = "Invalid patch header";
    v9 = 265;
    goto LABEL_50;
  }

  v12 = *(a4 + 8);
  v13 = 28 * v12 + 60;
  if (v13 > a5)
  {
    v8 = "Invalid patch size";
    v9 = 269;
    goto LABEL_50;
  }

  v16 = a8 & 1;
  v17 = *(a4 + 24);
  v18 = __CFADD__(v13, v17);
  v19 = v13 + v17;
  if (v18)
  {
    v19 = -1;
  }

  if (v12)
  {
    v23 = *(a4 + 8);
    v24 = (a4 + 60);
    do
    {
      v25 = *v24;
      v24 = (v24 + 28);
      v18 = __CFADD__(v19, v25);
      v19 += v25;
      if (v18)
      {
        v19 = -1;
      }

      --v23;
    }

    while (v23);
    v26 = *(a4 + 32);
    v18 = __CFADD__(v19, v26);
    v27 = v19 + v26;
    if (v18)
    {
      v27 = -1;
    }

    if (v27 <= a5)
    {
      v148 = (a4 + 60);
      *md = 0;
      v152 = 0;
      v153 = 0;
      memset(&c, 0, sizeof(c));
      v28 = malloc(0x40000uLL);
      if (!v28)
      {
        v43 = *__error();
        v44 = "malloc";
        v45 = 156;
LABEL_48:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "getStreamSHA1Digest", v45, 42, v43, v44, v32, v33, v128);
        free(v28);
        goto LABEL_49;
      }

      v146 = v16;
      CC_SHA1_Deprecated_Init(&c);
      v29 = 0;
      if (a3)
      {
        while (1)
        {
          v30 = v29 + 0x40000 <= a3 ? 0x40000 : a3 - v29;
          v31 = a1(a2, v28, v30, v29);
          if (v31 <= 0)
          {
            break;
          }

          v34 = v31;
          CC_SHA1_Deprecated_Update(&c, v28, v31);
          v29 += v34;
          if (v29 >= a3)
          {
            goto LABEL_27;
          }
        }

        v44 = "inProc read";
        v45 = 165;
        v43 = 0;
        goto LABEL_48;
      }

LABEL_27:
      CC_SHA1_Deprecated_Final(md, &c);
      free(v28);
      if (v29 != a3)
      {
LABEL_49:
        v8 = "Input digest failed";
        v9 = 285;
        goto LABEL_50;
      }

      if (v146)
      {
        v47 = MEMORY[0x29EDCA610];
        fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a4 + 8));
        v36 = a4 + 40;
        if (*md != *(a4 + 40) || v152 != *(a4 + 48) || v153 != *(a4 + 56))
        {
LABEL_59:
          v50 = *(a4 + 8);
          if (!v50)
          {
LABEL_69:
            v8 = "Input doesn't match any of the expected patch inputs";
            v9 = 310;
            goto LABEL_50;
          }

          v51 = 0;
          v52 = *(a4 + 8);
          v53 = a4 + 68;
          while (1)
          {
            v54 = *md == *v53 && v152 == *(v53 + 8);
            if (v54 && v153 == *(v53 + 16))
            {
              break;
            }

            ++v51;
            v53 += 28;
            if (v50 == v51)
            {
              goto LABEL_69;
            }
          }

          v143 = v51;
          if (v146)
          {
            fprintf(*MEMORY[0x29EDCA610], "Patch matching entry %u\n", v51);
            v51 = v143;
            v52 = *(a4 + 8);
            LODWORD(v50) = *(a4 + 8);
          }

          v132 = v36;
          v56 = v148;
          v139 = v148 + 28 * v52;
          v141 = *(a4 + 24);
          v57 = v139 + v141;
          v58 = 0;
          if (v50)
          {
            v59 = v51;
            do
            {
              if (!v59)
              {
                v58 = v57;
              }

              v60 = *v56;
              v56 = (v56 + 28);
              v57 += v60;
              --v59;
              --v52;
            }

            while (v52);
          }

          v135 = *(a4 + 32);
          v137 = *(v53 - 8);
          if (v57 + v135 - a4 != a5)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 331, 42, "Warning: extra bytes in patch (ignored)\n", v35, a7, a8, v128);
            LODWORD(v50) = *(a4 + 8);
          }

          v134 = *(a4 + 16);
          v61 = 8 * (v50 + 2);
          v147 = malloc(0x20000uLL);
          v62 = malloc(0x20000uLL);
          v133 = v61;
          v63 = v61;
          v64 = v147;
          v149 = malloc(v63);
          enterThreadErrorContext(v149, v65, v66, v67, v68, v69, v70, v71, v128);
          v145 = v62;
          if (v62 && v147 && v149)
          {
            v142 = ILowMemoryDecoderStreamCreateWithBuffer(v139, v141, 0x20000uLL);
            if (v142)
            {
              v76 = ILowMemoryDecoderStreamCreateWithBuffer(v58, v137, 0x20000uLL);
              if (v76)
              {
                v140 = ILowMemoryDecoderStreamCreateWithBuffer(v57, v135, 0x20000uLL);
                if (v140)
                {
                  v77 = OSHA1StreamCreate(a6, 0, a7);
                  if (v77)
                  {
                    v136 = v76;
                    v131 = v77;
                    v138 = OBufferedStreamCreate(OSHA1StreamWrite, OSHA1StreamAbort, v77, 0x20000uLL);
                    if (!v138)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 356, 42, 0, "OBufferedStreamCreate", v85, v86, v129);
                      v110 = 0;
                      v111 = -1;
                      v64 = v147;
                      v115 = v140;
                      v116 = v142;
LABEL_158:
                      v109 = v131;
LABEL_159:
                      free(v149);
                      free(v64);
                      free(v145);
                      OBufferedStreamDestroy(v110, v121, v122, v123, v124, v125, v126, v127);
                      OSHA1StreamDestroy(v109, md);
                      ILowMemoryDecoderStreamDestroy(v116);
                      ILowMemoryDecoderStreamDestroy(v76);
                      ILowMemoryDecoderStreamDestroy(v115);
                      LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                      if (result >= 0)
                      {
                        result = v111;
                      }

                      else
                      {
                        result = result;
                      }

                      goto LABEL_51;
                    }

                    if (v134)
                    {
                      v87 = 0;
                      v88 = 0;
                      v144 = v143 + 2;
                      while (1)
                      {
                        if (ILowMemoryDecoderStreamRead(v142, v149, v133) != v133)
                        {
                          v119 = "reading from control stream";
                          v120 = 362;
                          goto LABEL_156;
                        }

                        v89 = v149[1];
                        if (*v149 >= 0)
                        {
                          v90 = *v149;
                        }

                        else
                        {
                          v90 = 0x8000000000000000 - *v149;
                        }

                        if (v89 >= 0)
                        {
                          v91 = v149[1];
                        }

                        else
                        {
                          v91 = 0x8000000000000000 - v89;
                        }

                        v92 = v149[v144];
                        if (v92 < 0)
                        {
                          v92 = 0x8000000000000000 - v92;
                        }

                        v130 = v92;
                        if (v87 < 0 || v90 + v87 > a3)
                        {
                          v119 = "Invalid in segment in patch";
                          v120 = 369;
                          goto LABEL_156;
                        }

                        if (v90 + v88 + v91 > *(a4 + 16))
                        {
                          v119 = "Invalid out segment in patch";
                          v120 = 370;
                          goto LABEL_156;
                        }

                        if (v90)
                        {
                          break;
                        }

LABEL_116:
                        if (v91)
                        {
                          v99 = 0;
                          v100 = v91;
                          while (1)
                          {
                            v101 = v100 - v99;
                            if (v101 >= 0x20000)
                            {
                              v102 = 0x20000;
                            }

                            else
                            {
                              v102 = v101;
                            }

                            v64 = v147;
                            if (ILowMemoryDecoderStreamRead(v140, v147, v102) != v102)
                            {
                              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 405, 42, 0, "reading from archive stream", v103, v104, v129);
                              v111 = -1;
                              goto LABEL_157;
                            }

                            if (OBufferedStreamWrite(v138, v147, v102) != v102)
                            {
                              break;
                            }

                            v99 += v102;
                            v88 += v102;
                            v100 = v91;
                            if (v99 >= v91)
                            {
                              goto LABEL_124;
                            }
                          }

                          v119 = "writing to digest stream";
                          v120 = 407;
                          goto LABEL_156;
                        }

LABEL_124:
                        v87 += v130;
                        if (v88 >= v134)
                        {
                          goto LABEL_125;
                        }
                      }

                      v93 = 0;
                      while (1)
                      {
                        if (v90 - v93 >= 0x20000)
                        {
                          v94 = 0x20000;
                        }

                        else
                        {
                          v94 = v90 - v93;
                        }

                        if (ILowMemoryDecoderStreamRead(v136, v147, v94) != v94)
                        {
                          v119 = "reading from diff stream";
                          v120 = 379;
                          goto LABEL_156;
                        }

                        if (a1(a2, v145, v94, v87) != v94)
                        {
                          v119 = "reading from input stream";
                          v120 = 381;
                          goto LABEL_156;
                        }

                        if (v90 != v93)
                        {
                          if (v94 <= 1)
                          {
                            v95 = 1;
                          }

                          else
                          {
                            v95 = v94;
                          }

                          v96 = v145;
                          v97 = v147;
                          do
                          {
                            v98 = *v96++;
                            *v97++ += v98;
                            --v95;
                          }

                          while (v95);
                        }

                        if (OBufferedStreamWrite(v138, v147, v94) != v94)
                        {
                          break;
                        }

                        v93 += v94;
                        v87 += v94;
                        v88 += v94;
                        if (v93 >= v90)
                        {
                          goto LABEL_116;
                        }
                      }

                      v119 = "writing to digest stream";
                      v120 = 390;
LABEL_156:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v120, 42, 0, v119, v85, v86, v129);
                      v111 = -1;
                      v64 = v147;
LABEL_157:
                      v115 = v140;
                      v116 = v142;
                      v76 = v136;
                      v110 = v138;
                      goto LABEL_158;
                    }

LABEL_125:
                    OBufferedStreamDestroy(v138, v80, v81, v82, v83, v84, v85, v86);
                    OSHA1StreamDestroy(v131, md);
                    if (*md == *v132 && v152 == *(v132 + 8) && v153 == *(v132 + 16))
                    {
                      v111 = 0;
                      v109 = 0;
                      v110 = 0;
                    }

                    else
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 421, 42, 0, "Invalid output digest after patch application", v105, v106, v129);
                      v109 = 0;
                      v110 = 0;
                      v111 = -1;
                    }

                    v64 = v147;
                    v116 = v142;
                    v76 = v136;
                  }

                  else
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 355, 42, 0, "Digest stream init", v78, v79, v129);
                    v109 = 0;
                    v110 = 0;
                    v111 = -1;
                    v116 = v142;
                  }

                  v115 = v140;
                  goto LABEL_159;
                }

                v117 = "Archive stream init";
                v118 = 354;
              }

              else
              {
                v117 = "Diff stream init";
                v118 = 353;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v118, 42, 0, v117, v74, v75, v129);
              v109 = 0;
              v110 = 0;
              v115 = 0;
              v111 = -1;
              v116 = v142;
              goto LABEL_159;
            }

            v113 = "Control stream init";
            v114 = 352;
            v112 = 0;
          }

          else
          {
            v112 = *__error();
            v113 = "malloc";
            v114 = 351;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v114, 42, v112, v113, v72, v73, v129);
          v109 = 0;
          v110 = 0;
          v115 = 0;
          v76 = 0;
          v116 = 0;
          v111 = -1;
          goto LABEL_159;
        }

        fwrite("No-op patch matching, writing input\n", 0x24uLL, 1uLL, *v47);
      }

      else
      {
        v36 = a4 + 40;
        if (*md != *(a4 + 40) || v152 != *(a4 + 48) || v153 != *(a4 + 56))
        {
          goto LABEL_59;
        }
      }

      if ((copyStream(a1, a2, a3, a6, a7) & 0x80000000) == 0)
      {
        result = 0;
        goto LABEL_51;
      }

      v8 = "Output copy failed\n";
      v9 = 293;
LABEL_50:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v9, 42, 0, v8, a7, a8, v128);
      result = 0xFFFFFFFFLL;
LABEL_51:
      v46 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_42:
    v8 = "Invalid patch size";
    v9 = 278;
    goto LABEL_50;
  }

  v39 = *(a4 + 32);
  v18 = __CFADD__(v19, v39);
  v40 = v19 + v39;
  if (v18)
  {
    v40 = -1;
  }

  if (v40 > a5)
  {
    goto LABEL_42;
  }

  v41 = *MEMORY[0x29EDCA608];

  return fullReplacementBXPatch5(a4, a5, a6, a7, a8 & 1, a6, a7, a8);
}

uint64_t BXPatch5WithFlagsBufferStreamPRead(void *a1, void *__dst, size_t __n, uint64_t a4)
{
  if (!__n)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, __n) && a4 + __n <= a1[1])
  {
    memcpy(__dst, (*a1 + a4), __n);
    return __n;
  }

  return result;
}

uint64_t BXPatch5FileWithFlags(const char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = a1;
  st_size = 0;
  memset(&v22, 0, sizeof(v22));
  v12 = open(a1, 0);
  v23 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 235, 42, *v18, "open: %s", v19, v20, v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
    if (fstat(v12, &v22))
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 236, 42, *v14, "fstat: %s", v15, v16, v11);
      v17 = 0xFFFFFFFFLL;
LABEL_6:
      close(v13);
      return v17;
    }

    st_size = v22.st_size;
    v17 = BXPatch5StreamWithFlags(BXPatch5WithFlagsFileStreamPRead, &v23, v22.st_size, a2, a3, a4, a5, a6);
    v13 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  return v17;
}

ssize_t BXPatch5WithFlagsFileStreamPRead(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, a3) && a4 + a3 <= *(a1 + 8))
  {
    return pread(*a1, a2, a3, a4);
  }

  return result;
}

uint64_t copyStream(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5)
{
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 188;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", v20, 42, v18, v19, v14, v15, v22);
    v17 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = 0;
  if (a3)
  {
    while (1)
    {
      if (v11 + 0x40000 <= a3)
      {
        v12 = 0x40000;
      }

      else
      {
        v12 = a3 - v11;
      }

      v13 = a1(a2, v10, v12, v11);
      if (v13 <= 0)
      {
        v19 = "inProc read";
        v20 = 196;
        goto LABEL_15;
      }

      v16 = a4(a5, v10, v13);
      if (v16 <= 0)
      {
        break;
      }

      v11 += v16;
      if (v11 >= a3)
      {
        goto LABEL_9;
      }
    }

    v19 = "outProc write";
    v20 = 198;
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

LABEL_9:
  if (v11 == a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

LABEL_17:
  free(v10);
  return v17;
}

uint64_t BXPatch5InPlace(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v155 = *MEMORY[0x29EDCA608];
  if (a3 <= 0x3B)
  {
    v8 = "Invalid patch size";
    v9 = 441;
LABEL_29:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v9, 42, 0, v8, a7, a8, v128);
    result = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if (*a2 != 0x3035464649445842)
  {
    v8 = "Invalid patch header";
    v9 = 442;
    goto LABEL_29;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    v8 = "Patch can't be applied in-place";
    v9 = 445;
    goto LABEL_29;
  }

  if (a4 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a2 + 8));
  }

  v152 = 0;
  v153 = 0;
  v154 = 0;
  FileSHA1Digest = getFileSHA1Digest(a1, &v152);
  if (FileSHA1Digest)
  {
    v8 = "computing file digest";
    v9 = 450;
    goto LABEL_29;
  }

  if (v152 != *(a2 + 40) || v153 != *(a2 + 48) || v154 != *(a2 + 56))
  {
    v22 = *(a2 + 8);
    if (!v22)
    {
LABEL_28:
      v8 = "Input doesn't match any of the expected patch inputs (in-place)";
      v9 = 467;
      goto LABEL_29;
    }

    v23 = 0;
    v24 = (a2 + 60);
    v25 = *(a2 + 8);
    v26 = a2 + 68;
    while (1)
    {
      v27 = v152 == *v26 && v153 == *(v26 + 8);
      if (v27 && v154 == *(v26 + 16))
      {
        break;
      }

      ++v23;
      v26 += 28;
      if (v22 == v23)
      {
        goto LABEL_28;
      }
    }

    if (a4 >= 1)
    {
      FileSHA1Digest = fprintf(*MEMORY[0x29EDCA610], "In-place patch matching entry %u\n", v23);
      v25 = *(a2 + 8);
      LODWORD(v22) = *(a2 + 8);
    }

    v150 = *(a2 + 24);
    v146 = v24 + 28 * v25;
    v31 = v146 + v150;
    v32 = 0;
    if (v22)
    {
      v33 = v23;
      do
      {
        if (!v33)
        {
          v32 = v31;
        }

        v34 = *v24;
        v24 = (v24 + 28);
        v31 += v34;
        --v33;
        --v25;
      }

      while (v25);
    }

    v35 = *(v26 - 8);
    v132 = *(a2 + 32);
    if (v31 + v132 - a2 != a3)
    {
      FileSHA1Digest = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 489, 42, "Warning: extra bytes in patch (ignored)\n", v19, a7, a8, v128);
      LODWORD(v22) = *(a2 + 8);
    }

    enterThreadErrorContext(FileSHA1Digest, v15, v16, v17, v18, v19, a7, a8, v128);
    v138 = malloc(0x1000uLL);
    if (v138)
    {
      v36 = malloc(0x1000uLL);
      if (v36)
      {
        v134 = v36;
        v139 = (v22 + 2);
        v140 = 8 * v139;
        v137 = malloc(8 * v139);
        v37 = ILowMemoryDecoderStreamCreateWithBuffer(v146, v150, 0x1000uLL);
        if (v37)
        {
          v130 = v35;
          v142 = v37;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = v137;
          v45 = 8 * (v22 + 2);
          while (1)
          {
            v147 = v40;
            v151 = v42;
            if (v42 == v41)
            {
              v46 = v41 + (v41 >> 1);
              if (v41 >> 5 <= 0xC34)
              {
                v46 = 2 * v41;
              }

              if (!v41)
              {
                v46 = 2000;
              }

              v143 = v46;
              v47 = reallocf(v43, v45 * v46);
              v45 = 8 * (v22 + 2);
              v44 = v137;
              v43 = v47;
              if (!v47)
              {
                v88 = v137;
                v89 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 527, 42, v89, "malloc", v90, v91, v129);
                goto LABEL_92;
              }
            }

            else
            {
              v143 = v41;
            }

            v48 = ILowMemoryDecoderStreamRead(v142, v44, v45);
            if (!v48)
            {
              break;
            }

            v51 = v44;
            v52 = v147;
            v53 = (v22 + 2);
            if (v48 != v45)
            {
              v88 = v44;
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 533, 42, 0, "reading from control stream S=%lld", v49, v50, v48);
LABEL_92:
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v61 = v134;
LABEL_94:
              v65 = v142;
              goto LABEL_95;
            }

            do
            {
              v55 = *v51++;
              v54 = v55;
              v56 = 0x8000000000000000 - v55;
              if (v55 < 0)
              {
                v54 = v56;
              }

              *&v43[v52] = v54;
              v52 += 8;
              --v53;
            }

            while (v53);
            v42 = v151 + 1;
            v40 = v147 + v45;
            v41 = v143;
          }

          if (a4 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "%zu controls in patch (%zu B allocated)\n", v151, v140 * v143);
          }

          v66 = PagedFileCreate(a1, *(a2 + 16), 0x2800000uLL, a4);
          if (!v66)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v61 = v134;
            v88 = v137;
            goto LABEL_94;
          }

          v67 = v66;
          if (v151)
          {
            v68 = 0;
            v69 = v43;
            v70 = v151;
            do
            {
              v135 = *v69;
              v144 = v68;
              v148 = v69[(v23 + 2)];
              PagedFileRetainIn(v67, v68, *v69, v94, v95, v96, v97, v98);
              v68 = v144 + v135 + v148;
              v69 = (v69 + v140);
              --v70;
            }

            while (v70);
          }

          PagedFileReleaseAllIn(v67, v92, v93, v94, v95, v96, v97, v98);
          v62 = v67;
          if (a4 > 1)
          {
            PagedFileDump(v67, "Input retained");
          }

          v65 = v142;
          v141 = ILowMemoryDecoderStreamCreateWithBuffer(v32, v130, 0x1000uLL);
          if (v141)
          {
            v145 = v62;
            if (v151)
            {
              v73 = 0;
              v149 = 0;
              v74 = 0;
              v75 = v23 + 2;
              v76 = v134;
              v131 = v23 + 2;
              while (1)
              {
                v77 = &v43[8 * v73 * v139];
                v78 = *v77;
                v79 = v77[1];
                v136 = v77[v75];
                if (a4 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "DIFF STREAM: I=%zu OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu IDELTA=%lld\n", v73, v74, v149, v78, v79, v136);
                  PagedFileDump(v145, "Before applying control");
                  v76 = v134;
                }

                v133 = v79;
                if (v78)
                {
                  break;
                }

LABEL_89:
                v149 += v136;
                v74 += v133;
                ++v73;
                v75 = v131;
                if (v73 == v151)
                {
                  goto LABEL_105;
                }
              }

              while (1)
              {
                if (v78 >= 0x1000)
                {
                  v80 = 4096;
                }

                else
                {
                  v80 = v78;
                }

                if (ILowMemoryDecoderStreamRead(v141, v76, v80) != v80)
                {
                  v122 = "reading from diff stream";
                  v123 = 584;
                  goto LABEL_130;
                }

                if (PagedFileReadAndReleaseIn(v145, v149, v80, v138, v81, v82, v83, v84))
                {
                  v122 = "reading from input stream";
                  v123 = 587;
                  goto LABEL_130;
                }

                for (i = 0; i != v80; ++i)
                {
                  v134[i] += v138[i];
                }

                if (PagedFileRetainAndWriteOut(v145, v74, v80, v134, v85, v86, v83, v84))
                {
                  break;
                }

                v149 += v80;
                v74 += v80;
                v78 -= v80;
                v76 = v134;
                if (!v78)
                {
                  goto LABEL_89;
                }
              }

              v122 = "writing output";
              v123 = 593;
LABEL_130:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v123, 42, 0, v122, v83, v84, v129);
              v63 = 0;
            }

            else
            {
              v149 = 0;
LABEL_105:
              v62 = v145;
              if (a4 >= 2)
              {
                PagedFileDump(v145, "Diff stream applied");
              }

              if (!PagedFileHasNoIn(v145))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 608, 42, 0, "some input bytes are still mapped after diff expansion", v101, v102, v129);
                v63 = 0;
                v61 = v134;
                v88 = v137;
                v65 = v142;
LABEL_139:
                v64 = v141;
                goto LABEL_95;
              }

              v63 = ILowMemoryDecoderStreamCreateWithBuffer(v31, v132, 0x1000uLL);
              if (v63)
              {
                if (v151)
                {
                  v105 = 0;
                  v106 = 0;
                  while (1)
                  {
                    v107 = &v43[8 * v105 * v139];
                    v109 = *v107;
                    v108 = *(v107 + 1);
                    if (a4 >= 3)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE STREAM: OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu\n", v106, v149, *v107, v108);
                    }

                    v106 += v109;
                    if (v108)
                    {
                      break;
                    }

LABEL_121:
                    if (++v105 == v151)
                    {
                      goto LABEL_122;
                    }
                  }

                  v61 = v134;
                  while (1)
                  {
                    if (v108 >= 0x1000)
                    {
                      v110 = 4096;
                    }

                    else
                    {
                      v110 = v108;
                    }

                    if (ILowMemoryDecoderStreamRead(v63, v61, v110) != v110)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 630, 42, 0, "reading from archive stream", v113, v114, v129);
                      goto LABEL_138;
                    }

                    if (PagedFileRetainAndWriteOut(v145, v106, v110, v61, v111, v112, v113, v114))
                    {
                      break;
                    }

                    v106 += v110;
                    v108 -= v110;
                    v61 = v134;
                    if (!v108)
                    {
                      goto LABEL_121;
                    }
                  }

                  v124 = "writing output";
                  v125 = 633;
                }

                else
                {
LABEL_122:
                  if (a4 >= 2)
                  {
                    PagedFileDump(v145, "Archive stream applied");
                  }

                  if (PagedFileHasAllOut(v145))
                  {
                    PagedFileDestroy(v145, v115, v116, v117, v118, v119, v103, v104);
                    free(v43);
                    free(v137);
                    free(v138);
                    free(v134);
                    ILowMemoryDecoderStreamDestroy(v142);
                    ILowMemoryDecoderStreamDestroy(v141);
                    ILowMemoryDecoderStreamDestroy(v63);
                    if (getFileSHA1Digest(a1, &v152))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 658, 42, 0, "computing file digest", v120, v121, v129);
                      v99 = 0;
                    }

                    else
                    {
                      v99 = 1;
                    }

                    if (v152 == *(a2 + 40) && v153 == *(a2 + 48) && v154 == *(a2 + 56))
                    {
                      goto LABEL_97;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 659, 42, 0, "Invalid output digest", v120, v121, v129);
LABEL_96:
                    v99 = 0;
LABEL_97:
                    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                    if (v99)
                    {
                      v100 = 0;
                    }

                    else
                    {
                      v100 = -1;
                    }

                    if (result >= 0)
                    {
                      result = v100;
                    }

                    else
                    {
                      result = result;
                    }

                    goto LABEL_30;
                  }

                  v124 = "some output bytes are missing or referenced more than once after archive expansion";
                  v125 = 643;
                }
              }

              else
              {
                v124 = "Archive stream init";
                v125 = 611;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v125, 42, 0, v124, v103, v104, v129);
            }

            v61 = v134;
LABEL_138:
            v88 = v137;
            v65 = v142;
            v62 = v145;
            goto LABEL_139;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 563, 42, 0, "Diff stream init", v71, v72, v129);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 517, 42, 0, "Control stream init", v38, v39, v129);
          v43 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
        }

        v61 = v134;
        v88 = v137;
LABEL_95:
        PagedFileDestroy(v62, v92, v93, v94, v95, v96, v97, v98);
        free(v43);
        free(v88);
        free(v138);
        free(v61);
        ILowMemoryDecoderStreamDestroy(v65);
        ILowMemoryDecoderStreamDestroy(v64);
        ILowMemoryDecoderStreamDestroy(v63);
        goto LABEL_96;
      }

      v57 = *__error();
      v60 = 513;
    }

    else
    {
      v57 = *__error();
      v60 = 511;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v60, 42, v57, "malloc", v58, v59, v129);
    v43 = 0;
    v88 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_95;
  }

  if (a4 >= 1)
  {
    fwrite("No-op patch matching, do nothing\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  result = 0;
LABEL_30:
  v30 = *MEMORY[0x29EDCA608];
  return result;
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
        if ((SharedArrayEnqueue(v1 + 42, -1) & 0x80000000) != 0)
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
  if ((SharedArrayEnqueue((a1 + 168), v8) & 0x80000000) != 0)
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
  if ((SharedArrayEnqueue((a1 + 168), -2) & 0x80000000) != 0)
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
    v52 = xmmword_2980690E0;
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

uint64_t clusterLookup(uint64_t a1, unint64_t a2, char *__source, char *__dst, size_t __size, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (HIDWORD(a2))
  {
    v8 = "cluster id out of range";
    v9 = 213;
    v10 = 0;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", v9, 2, v10, v8, a7, a8, v21);
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

uint64_t setEntryAttributes(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(*a1 + 24);
  bzero(path, 0x800uLL);
  v6 = MEMORY[0x29EDCA610];
  if (*v4 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%7d] set attributes: %s\n", *(a2 + 2296), (a2 + 144));
  }

  if ((concatExtractPath(path, 0x800uLL, (a1 + 12), (a2 + 144)) & 0x80000000) != 0)
  {
    LOBYTE(v25) = a2 - 112;
    v10 = "invalid path: %s";
    v9 = 257;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v9, 2, 0, v10, v7, v8, v25);
    v20 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (*(a2 + 4) == 68 && (clearEntryXAT(path) & 0x80000000) != 0)
  {
    v25 = path;
    v10 = "clear XAT: %s";
    v9 = 262;
    goto LABEL_21;
  }

  if ((v5 & 0x40000) == 0 && yaa_setEntryAttributes(path, a2, a2 + 2192, v5 & 1))
  {
    v9 = 266;
LABEL_19:
    v10 = "setEntryAttributes";
    goto LABEL_21;
  }

  v11 = *(a2 + 2280);
  if (v11)
  {
    DataSize = MemBufferGetDataSize(v11);
    DataPtr = MemBufferGetDataPtr(*(a2 + 2280));
    if (yaa_setEntryXAT(path, a2, v5 & 1, DataSize, DataPtr, v14, v15, v16))
    {
      v10 = "setEntryXAT";
      v9 = 272;
      goto LABEL_21;
    }
  }

  v17 = *(a2 + 2288);
  if (v17)
  {
    v18 = MemBufferGetDataSize(v17) / 0x120uLL;
    v19 = MemBufferGetDataPtr(*(a2 + 2288));
    if (yaa_setEntryACL(path, a2, v5 & 1, v18, v19))
    {
      v10 = "setEntryACL";
      v9 = 278;
      goto LABEL_21;
    }
  }

  if ((v5 & 0x40000) != 0 && yaa_setEntryAttributes(path, a2, a2 + 2192, v5 & 1))
  {
    v9 = 282;
    goto LABEL_19;
  }

  v20 = 0;
LABEL_22:
  v21 = *a1;
  v22 = *(*a1 + 96);
  if (v22)
  {
    v22(*(v21 + 18), a2);
    v21 = *a1;
  }

  atomic_fetch_add_explicit((a1 + 1528), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (*v21 >= 3)
  {
    fprintf(*v6, "[%7d] end: %s\n", *(a2 + 2296), (a2 + 144));
  }

  v23 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t inFlightQueueEntry(void *a1, int a2)
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

uint64_t writeToThread(uint64_t a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    FreeSize = MemBufferGetFreeSize(*(a1 + 16));
    if (FreeSize)
    {
      if (FreeSize >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = FreeSize;
      }

      MemBufferFillFromBuffer(*(a1 + 16), v7, a2);
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

    if (!MemBufferGetFreeSize(*(a1 + 16)))
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
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", v14, 2, 0, v13, v8, v9, v15);
  return 0xFFFFFFFFLL;
}

uint64_t SemRelease(uint64_t a1)
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

uint64_t SemAcquire(uint64_t a1)
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
  v0 = MEMORY[0x2A1C7C4A8]();
  v159 = *MEMORY[0x29EDCA608];
  if (!v0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_75;
  }

  v8 = v0;
  enterThreadErrorContext(v0, v1, v2, v3, v4, v5, v6, v7, v104);
  bzero(&v119, 0x628uLL);
  v118 = v8;
  DefaultNThreads = *(v8 + 20);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  LODWORD(__count) = DefaultNThreads;
  v132 = -1;
  v10 = *(v8 + 40);
  v119 = (*(v8 + 24) >> 1) & 1;
  v121 = v10;
  pthread_mutex_init(&v130, 0);
  pthread_mutex_init(&v131, 0);
  v106 = v8;
  if (!realpath_DARWIN_EXTSN(*(v8 + 8), v120))
  {
    v17 = *__error();
    v20 = *(v8 + 8);
    v21 = 1908;
    goto LABEL_15;
  }

  v122 = 0;
  v123 = __count;
  v124 = calloc(__count, 4uLL);
  if (!v124)
  {
    v14 = "SharedArrayInit: malloc failed\n";
    v15 = 55;
    goto LABEL_13;
  }

  if (pthread_mutex_init(&v125, 0))
  {
    v14 = "SharedArrayInit: pthread_mutex_init failed\n";
    v15 = 56;
LABEL_13:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", v15, 0, v14, v11, v12, v13, v105);
    v20 = "SharedArrayInit";
    v21 = 1911;
    goto LABEL_14;
  }

  if (pthread_cond_init(&v126, 0))
  {
    v14 = "SharedArrayInit: pthread_cond_init failed\n";
    v15 = 57;
    goto LABEL_13;
  }

  v128 = calloc(__count, 0x130uLL);
  if (!v128)
  {
    v17 = *__error();
    v20 = "malloc";
    v21 = 1915;
    goto LABEL_15;
  }

  if (__count)
  {
    v80 = 0;
    v81 = 216;
    while (1)
    {
      v82 = v128;
      v83 = v128 + v81;
      v84 = v128 + v81;
      *(v84 - 27) = &v118;
      v85 = (v84 - 216);
      v86 = MemBufferCreate(0x100000uLL);
      *(v85 + 16) = v86;
      if (!v86)
      {
        break;
      }

      *(v83 - 48) = 0;
      if (pthread_mutex_init((v83 - 184), 0) || (v87 = &v82[v81], pthread_cond_init(&v82[v81 - 120], 0)))
      {
        v20 = "SemInit";
        v21 = 1922;
        goto LABEL_14;
      }

      *(v87 - 18) = 0;
      if (pthread_mutex_init(v87 - 1, 0) || (v88 = &v82[v81], pthread_cond_init(v88, 0)))
      {
        v20 = "SemInit";
        v21 = 1923;
        goto LABEL_14;
      }

      if (createThread(&v88[-5].__opaque[24], extractThreadProc, v85, 0))
      {
        v17 = *__error();
        v20 = "createThread";
        v21 = 1924;
        goto LABEL_15;
      }

      ++v80;
      v81 += 304;
      if (v80 >= __count)
      {
        goto LABEL_86;
      }
    }

    v20 = "MemBufferCreate";
    v21 = 1921;
LABEL_14:
    v17 = 0;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", v21, 2, v17, v20, v18, v19, v105);
    v22 = 0;
    v23 = 0.0;
    goto LABEL_16;
  }

LABEL_86:
  v109 = 0;
  v89 = *(v106 + 16);
  if (!v89)
  {
    v89 = getDefaultNThreads();
  }

  v107[0] = 0;
  v107[1] = v89;
  v90 = *(v106 + 64);
  v108 = *(v106 + 48);
  v110 = v90;
  v111 = extractBeginProc;
  v112 = extractBlobProc;
  v113 = extractPayloadProc;
  v115 = extractEndProc;
  v114 = extractPaddingProc;
  v116 = extractPaddingProc;
  v117 = &v118;
  RealTime = getRealTime();
  v99 = ParallelArchiveRead(v107, v92, v93, v94, v95, v96, v97, v98);
  v102 = getRealTime();
  v22 = 1;
  if (v99 | v129)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1948, 2, 0, "ParallelArchiveRead failed", v100, v101, v105);
    v129 = 1;
    v22 = 0;
  }

  v23 = v102 - RealTime;
  if (v132 != -1 && v133)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1956, 2, 0, "aborting current receiving thread", v100, v101, v105);
    v129 = 1;
    v103 = v128 + 304 * v132;
    if (!v133)
    {
      SemAcquire((v103 + 144));
      v133 = 1;
    }

    MemBufferClear(*(v103 + 2));
    v133 = 0;
    SemRelease((v103 + 24));
  }

  while (1)
  {
LABEL_16:
    if (v128)
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
        v26 = v128 + 304 * v25;
        if (*(v26 + 1))
        {
          LODWORD(v152[0]) = 0;
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
          MemBufferFillFromBuffer(*(v26 + 2), 4uLL, v152);
          if (!pthread_mutex_lock((v26 + 32)))
          {
            v28 = *(v26 + 6);
            *(v26 + 6) = v28 + 1;
            if (v28 || !pthread_cond_broadcast(v26 + 2))
            {
              pthread_mutex_unlock((v26 + 32));
            }
          }

          if (joinThread(*(v26 + 1)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1989, 2, 0, "joinThread", v29, v30, v105);
            v22 = 0;
          }
        }

        MemBufferDestroy(*(v26 + 2));
        if (!pthread_mutex_destroy((v26 + 32)))
        {
          pthread_cond_destroy(v26 + 2);
        }

        if (!pthread_mutex_destroy((v26 + 152)))
        {
          pthread_cond_destroy((v26 + 216));
        }

        atomic_fetch_add(&v147, *(v26 + 36));
        atomic_fetch_add(&v151, *(v26 + 37));
        ++v25;
      }

      while (v25 < __count);
    }

    if (pthread_mutex_lock(&v130))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 701, 2, 0, "pthread_mutex_lock", v31, v32, v105);
      goto LABEL_51;
    }

    v35 = v138;
    if (!v138)
    {
      break;
    }

    v36 = 1;
    do
    {
      memset(v154, 0, 368);
      memset(v153, 0, sizeof(v153));
      v138 = v35 - 1;
      v37 = v139 + 16 * v35 - 16;
      pc_zero_coder_decode(v153, 2320, *v37, *(v37 + 1));
      if (v158 != 6 || v153[1] != 68)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 711, 2, 0, "Invalid entry state", v38, v39, v105);
        v36 = 0;
      }

      saveThreadErrorContext(v152);
      if (*v118 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "[%7d] processing deferred Dir: %s\n", v157, v154);
      }

      if ((setEntryAttributes(&v118, v153) & 0x80000000) != 0)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 720, 2, "Failed to set dir attributes", v40, v41, v42, v105);
        restoreThreadErrorContext(v152);
        v158 = 7;
        ++v140;
      }

      MemBufferDestroy(v155);
      MemBufferDestroy(v156);
      free(*v37);
      *v37 = 0;
      v35 = v138;
    }

    while (v138);
    pthread_mutex_unlock(&v130);
    if (v36)
    {
      goto LABEL_53;
    }

LABEL_51:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2002, 2, 0, "Processing deferred entries", v33, v34, v105);
    v22 = 0;
  }

  pthread_mutex_unlock(&v130);
LABEL_53:
  v43 = MEMORY[0x29EDCA610];
  if (v22)
  {
    if (*v106 >= 1)
    {
      v44 = atomic_load(&v147);
      v45 = atomic_load(&v151);
      v46 = v45 + v44;
      v47 = atomic_load(&v148);
      v48 = atomic_load(&v149);
      v49 = v46 + v47 + v48;
      v50 = atomic_load(&v150);
      v51 = v49 + v50;
      v52 = *MEMORY[0x29EDCA610];
      v53 = atomic_load(&v144);
      fprintf(v52, "%12lld entries in archive\n", v53);
      v54 = *v43;
      v55 = atomic_load(&v145);
      fprintf(v54, "%12lld entries extracted\n", v55);
      fprintf(*v43, "%12llu entries failed to extract\n", v140);
      fprintf(*v43, "%12lld max entries in flight\n", v136);
      v56 = *v43;
      v57 = atomic_load(v146);
      fprintf(v56, "%12lld deferred directories\n", v57);
      fprintf(*v43, "%12llu bytes in archive\n", v134);
      fprintf(*v43, "%12lld bytes received in regular files\n", v51);
      v58 = *v43;
      v59 = atomic_load(&v147);
      fprintf(v58, "%12lld bytes stored in regular files\n", v59);
      v60 = *v43;
      v61 = atomic_load(&v151);
      fprintf(v60, "%12lld bytes not stored in holes\n", v61);
      v62 = *v43;
      v63 = atomic_load(&v148);
      fprintf(v62, "%12lld bytes not stored in hard links\n", v63);
      v64 = *v43;
      v65 = atomic_load(&v149);
      fprintf(v64, "%12lld bytes not stored in clones\n", v65);
      v66 = *v43;
      v67 = atomic_load(&v150);
      fprintf(v66, "%12lld bytes not stored in same data files\n", v67);
      fprintf(*v43, "%12.0f MB/s\n", v51 / v23 * 0.000000953674316);
      if (*v106 >= 3)
      {
        if (__count)
        {
          v68 = 0;
          v69 = 264;
          do
          {
            v70 = v128;
            fprintf(*v43, "-- thread %d:\n", v68);
            v71 = &v70[v69];
            fprintf(*v43, "%12lld entries stored\n", *(v71 + 1));
            fprintf(*v43, "%12lld bytes received\n", *(v71 + 2));
            fprintf(*v43, "%12lld bytes stored\n", *(v71 + 3));
            fprintf(*v43, "%12lld buffers exchanged\n", *v71);
            ++v68;
            v69 += 304;
          }

          while (v68 < __count);
        }
      }
    }
  }

  free(v128);
  if (!pthread_mutex_destroy(&v125) && !pthread_cond_destroy(&v126))
  {
    free(v124);
  }

  pthread_mutex_destroy(&v130);
  pthread_mutex_destroy(&v131);
  if (v135)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2043, 2, 0, "Destroying state with non-empty in-flight queue", v72, v73, v105);
  }

  free(v137);
  if (v138)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2045, 2, 0, "Destroying state with non-empty deferred queue", v74, v75, v105);
  }

  free(v139);
  free(v141);
  free(v142);
  free(v143);
  if (v140 && (*(v106 + 24) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2054, 2, 0, "%llu entries failed to extract", v76, v77, v140);
    v22 = 0;
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v22)
  {
    v78 = 0;
  }

  else
  {
    v78 = -1;
  }

  if (result >= 0)
  {
    result = v78;
  }

  else
  {
    result = result;
  }

LABEL_75:
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t extractThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v266 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = **v0;
  v227 = *v2;
  v3 = 678152731 * ((v0 - *(*v0 + 1176)) >> 4);
  __dst = -1;
  memset(v264, 0, 368);
  v263 = 0u;
  v262 = 0u;
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v258 = 0u;
  v257 = 0u;
  *v256 = 0u;
  v255 = 0u;
  v244 = 0;
  v243 = 0u;
  memset(v242, 0, sizeof(v242));
  bzero(v254, 0x800uLL);
  v238 = -1;
  v4 = *(v2 + 96);
  v230 = *(v2 + 88);
  v228 = *(v2 + 104);
  v229 = *(v2 + 144);
  v5 = *(v2 + 24);
  v6 = MemBufferCreate(0x10000uLL);
  v7 = MemBufferCreate(0x10000uLL);
  v10 = v7;
  v235 = v6;
  if (!v6 || !v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 830, 2, 0, "MemBufferCreate", v8, v9, v222);
  }

  v239 = 0;
  v240 = 0;
  v241 = 0;
  if (*(*v1 + 32) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(*v1 + 32);
  }

  v237 = v11;
  v236 = calloc(v11, 0x120uLL);
  if (!v236)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 835, 2, 0, "malloc ACE", v12, v13, v222);
  }

  if (SharedArrayPush_0(v1 + 260, v3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 838, 2, 0, "SharedArrayPush", v14, v15, v222);
  }

  v231 = v5;
  if (pthread_mutex_lock((v0 + 152)) || (v18 = *(v0 + 144), *(v0 + 144) = v18 + 1, !v18) && pthread_cond_broadcast((v0 + 216)) || pthread_mutex_unlock((v0 + 152)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 847, 2, 0, "SemRelease", v16, v17, v222);
  }

  v233 = 0;
  v234 = 0;
  v19 = 0;
  v20 = 0;
  v21 = " (MSU)";
  if ((v231 & 0x10000) == 0)
  {
    v21 = "";
  }

  v226 = v21;
  v232 = 7;
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
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 859, 2, 0, "SemAcquire", v24, v25, v222);
      }

      ++*(v0 + 264);
    }

    if (!MemBufferGetDataSize(*(v0 + 16)) && v1[296])
    {
      goto LABEL_55;
    }

    if (v20 > 3)
    {
      if (v20 > 5)
      {
LABEL_55:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1425, 2, 0, "aborting entry", v29, v30, v222);
        v238 = -1;
        MemBufferClear(v235);
        MemBufferClear(v10);
        if (!SharedArrayPush_0(v1 + 260, v3))
        {
          v20 = 0;
LABEL_58:
          v234 = 0;
          goto LABEL_108;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1440, 2, 0, "SharedArrayPush", v50, v51, v222);
        v234 = 0;
        v20 = 7;
LABEL_108:
        if (pthread_mutex_lock((v0 + 152)) || (v108 = *(v0 + 144), *(v0 + 144) = v108 + 1, !v108) && pthread_cond_broadcast((v0 + 216)) || (v109 = pthread_mutex_unlock((v0 + 152)), v22 = 1, v109))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1462, 2, 0, "SemRelease", v106, v107, v222);
          goto LABEL_20;
        }
      }

      else
      {
        if (v20 == 4)
        {
          *&__s[0] = 0;
          if (MemBufferGetDataSize(*(v0 + 16)) < 8)
          {
            v20 = 4;
            goto LABEL_108;
          }

          if (MemBufferFlushToBuffer(*(v0 + 16), 8uLL, __s, v36, v37, v38, v39, v40) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1295, 2, 0, "MemBufferFlushToBuffer", v83, v84, v222);
            v20 = 4;
            goto LABEL_157;
          }

          *(v0 + 280) += 8;
          v85 = v238;
          v86 = *&__s[0];
          if (pthread_mutex_lock((v1 + 298)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 424, 2, 0, "pthread_mutex_lock", v87, v88, v222);
            goto LABEL_92;
          }

          v146 = inFlightQueueEntry(v1, v85);
          if (v146)
          {
            *(v146 + 2312) = v86;
            pthread_mutex_unlock((v1 + 298));
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 428, 2, 0, "couldn't locate entry [%d] in queue", v147, v148, v85);
            pthread_mutex_unlock((v1 + 298));
LABEL_92:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1297, 2, 0, "store entryEnd", v89, v90, v223);
          }

          v20 = 5;
          goto LABEL_157;
        }

        if (v19)
        {
          *&__s[0] = 0;
          *v252 = 0;
          OArchiveFileStreamDestroyEx(v19, 0, __s, v252, v27, v28, v29, v30);
          v52 = *(v0 + 296) + *v252;
          *(v0 + 288) += *&__s[0];
          *(v0 + 296) = v52;
          if ((v255 & 8) != 0 && statIsCompressed(v256[0]) && v259 && (v242[0] & 0x20) != 0 && (v242[0] & 0x40) != 0 && DWORD1(v243) && (ParallelCompressionAFSCFixupMetadata(v254, v243, DWORD1(v243)) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1322, 2, "ParallelCompressionAFSCFixupMetadata failed: %s (aft=%d afr=%u)", v101, v102, v103, v254);
          }
        }

        v53 = v232;
        if (v232 == 2)
        {
          v53 = 3;
        }

        if (v53 == 7)
        {
LABEL_142:
          v232 = v53;
          if (inFlightQueueRetire())
          {
            v136 = 1399;
            v137 = "retiring entry from in-flight state";
          }

          else
          {
            if (!MemBufferGetDataSize(*(v0 + 16)))
            {
              v238 = -1;
              MemBufferClear(v235);
              MemBufferClear(v10);
              if (SharedArrayPush_0(v1 + 260, v3))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1417, 2, 0, "SharedArrayPush", v149, v150, v222);
                v19 = 0;
                v234 = 0;
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

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v136, 2, 0, v137, v134, v135, v222);
          v19 = 0;
          v22 = 0;
          v20 = 5;
        }

        else
        {
          if (v53 == 3)
          {
            saveThreadErrorContext(__s);
            if ((v231 & 0x40000) != 0 || !yaa_setEntryAttributes(v254, &v255, v242, v231 & 1))
            {
              v57 = 3;
            }

            else
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1341, 2, "setEntryAttributes: %s", v54, v55, v56, v254);
              v57 = 7;
            }

            if ((BYTE1(v255) & 4) != 0)
            {
              DataSize = MemBufferGetDataSize(v235);
              DataPtr = MemBufferGetDataPtr(v235);
              if (yaa_setEntryXAT(v254, &v255, v231 & 1, DataSize, DataPtr, v112, v113, v114))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1350, 2, 0, "setEntryXAT: %s", v115, v116, v254);
                v57 = 7;
              }
            }

            if ((BYTE1(v255) & 8) != 0 && yaa_setEntryACL(v254, &v255, v231 & 1, v234, v236))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1360, 2, 0, "setEntryACL: %s", v117, v118, v254);
              v57 = 7;
            }

            if ((v231 & 0x40000) != 0 && yaa_setEntryAttributes(v254, &v255, v242, v231 & 1))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1368, 2, "setEntryAttributes: %s", v119, v120, v121, v254);
              v57 = 7;
            }

            if (v4)
            {
              v4(*(*v1 + 144), &v255);
            }

            atomic_fetch_add_explicit(v1 + 191, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            if (v57 == 7)
            {
              restoreThreadErrorContext(__s);
              v53 = 7;
            }

            else
            {
              v53 = 4;
            }

            goto LABEL_142;
          }

          v232 = v53;
          v91 = v10;
          v225 = v4;
          v92 = v3;
          v93 = v238;
          v94 = MemBufferGetDataSize(v235);
          v95 = MemBufferGetDataPtr(v235);
          v96 = v236;
          if (pthread_mutex_lock((v1 + 298)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 445, 2, 0, "pthread_mutex_lock", v97, v98, v222);
            v3 = v92;
            v10 = v91;
          }

          else
          {
            v138 = inFlightQueueEntry(v1, v93);
            if (v138)
            {
              v141 = v138;
              if (v94 && (v142 = MemBufferCreateWithData(v94, v95), (*(v141 + 2280) = v142) == 0))
              {
                v152 = 454;
                v153 = "allocating XAT blob";
              }

              else
              {
                if (!v234 || (v145 = MemBufferCreateWithData(288 * v234, v96), (*(v141 + 2288) = v145) != 0))
                {
                  pthread_mutex_unlock((v1 + 298));
                  v3 = v92;
                  v4 = v225;
                  v10 = v91;
                  v53 = v232;
                  goto LABEL_142;
                }

                v152 = 459;
                v153 = "allocating ACL blob";
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", v152, 2, 0, v153, v143, v144, v222);
            }

            else
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 449, 2, 0, "couldn't locate entry [%d] in queue", v139, v140, v93);
            }

            v3 = v92;
            v10 = v91;
            pthread_mutex_unlock((v1 + 298));
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1391, 2, 0, "store XAT and ACL blobs in entry", v99, v100, v224);
          v19 = 0;
          v22 = 0;
          v20 = 5;
          v4 = v225;
        }
      }
    }

    else if (v20 > 1)
    {
      if (v20 == 2)
      {
        goto LABEL_44;
      }

      v58 = MemBufferGetDataSize(*(v0 + 16));
      v59 = MemBufferGetDataPtr(*(v0 + 16));
      if (v58 >= v233)
      {
        v58 = v233;
      }

      *(v0 + 280) += v58;
      switch(__dst)
      {
        case 4:
          if (MemBufferFillFromBuffer(v10, v58, v59) < 0)
          {
            v104 = 1251;
            v105 = "storing ACL blob contents";
            goto LABEL_161;
          }

LABEL_106:
          MemBufferDecreaseSize(*(v0 + 16), v58, v65, v66, v67, v62, v63, v64);
          v233 -= v58;
          if (v233)
          {
            v20 = 3;
            goto LABEL_108;
          }

          v233 = 0;
          v22 = 0;
          v20 = 2;
          if (__dst == 4)
          {
            v22 = 0;
            v233 = 0;
            if ((BYTE1(v255) & 8) != 0)
            {
              if (v260)
              {
                v122 = MemBufferGetDataSize(v10);
                v123 = MemBufferGetDataPtr(v10);
                v129 = yaa_decodeACL(&v255, &v237, &v236, v122, v123, v124, v125, v126);
                if (v129 < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1267, 2, 0, "decodeEntryACL", v127, v128, v222);
                }

                v130 = v129 & ~(v129 >> 63);
                if (v228)
                {
                  v130 = v228(v229, &v255, v130, v237, v236);
                  if (v130 > v237)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1274, 2, 0, "invalid user ACL callback return value", v131, v132, v222);
                    v130 = 0;
                  }
                }

                v234 = v130;
                MemBufferClear(v10);
                v233 = 0;
                goto LABEL_138;
              }
            }
          }

          break;
        case 3:
          if (MemBufferFillFromBuffer(v235, v58, v59) < 0)
          {
            v104 = 1246;
            v105 = "storing XAT blob contents";
            goto LABEL_161;
          }

          goto LABEL_106;
        case 2:
          if (!v19 || OArchiveFileStreamWrite(v19, v59, v58, v60, v61, v62, v63, v64) != v58)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1239, 2, "OArchiveFileStreamWrite", v62, v63, v64, v222);
            v232 = 7;
          }

          goto LABEL_106;
        default:
          v104 = 1253;
          v105 = "invalid op in BLOB PAYLOAD";
LABEL_161:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v104, 2, 0, v105, v63, v64, v222);
          v22 = 0;
          v20 = 3;
          break;
      }
    }

    else if (v20)
    {
      if (MemBufferGetDataSize(*(v0 + 16)) < 0x8EC)
      {
        v20 = 1;
        goto LABEL_108;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 0x890uLL, &v255, v31, v32, v33, v34, v35) < 0)
      {
        v133 = 926;
LABEL_167:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v133, 2, 0, "MemBufferFlushToBuffer", v71, v72, v222);
        goto LABEL_234;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 0x58uLL, v242, v68, v69, v70, v71, v72) < 0)
      {
        v133 = 927;
        goto LABEL_167;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 4uLL, &v238, v73, v74, v75, v71, v72) < 0)
      {
        v133 = 928;
        goto LABEL_167;
      }

      *(v0 + 272) = vaddq_s64(*(v0 + 272), xmmword_2980695C0);
      if (!v230)
      {
        goto LABEL_197;
      }

      v239 = 0;
      v240 = 0;
      v241 = 0;
      v230(v229, &v255, &v239);
      if (v239)
      {
        LODWORD(v255) = v255 | 2;
        DWORD2(v255) = HIDWORD(v239);
        if ((v239 & 2) == 0)
        {
LABEL_82:
          if ((v239 & 8) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_178;
        }
      }

      else if ((v239 & 2) == 0)
      {
        goto LABEL_82;
      }

      LODWORD(v255) = v255 | 4;
      HIDWORD(v255) = v240;
      if ((v239 & 8) == 0)
      {
LABEL_83:
        if ((v239 & 4) == 0)
        {
          goto LABEL_85;
        }

LABEL_84:
        LODWORD(v255) = v255 | 8;
        v256[0] = HIDWORD(v240);
        goto LABEL_85;
      }

LABEL_178:
      LODWORD(v255) = v255 | 0x10;
      v256[1] = v241;
      if ((v239 & 4) != 0)
      {
        goto LABEL_84;
      }

LABEL_85:
      if ((v239 & 0xF) != 0)
      {
        v76 = v238;
        if (pthread_mutex_lock((v1 + 298)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 401, 2, 0, "pthread_mutex_lock", v77, v78, v222);
LABEL_88:
          v81 = 949;
          v82 = "override attributes";
LABEL_232:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v81, 2, 0, v82, v79, v80, v222);
          goto LABEL_233;
        }

        v154 = inFlightQueueEntry(v1, v76);
        if (!v154)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 405, 2, 0, "couldn't locate entry [%d] in queue", v155, v156, v76);
          pthread_mutex_unlock((v1 + 298));
          goto LABEL_88;
        }

        v157 = v239;
        if (v239)
        {
          *v154 |= 2u;
          v154[2] = HIDWORD(v239);
          v157 = v239;
        }

        if ((v157 & 2) != 0)
        {
          *v154 |= 4u;
          v154[3] = v240;
          v157 = v239;
          if ((v239 & 8) != 0)
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
          v154[5] = v241;
          if ((v239 & 4) == 0)
          {
            goto LABEL_196;
          }
        }

        *v154 |= 8u;
        v154[4] = HIDWORD(v240);
        goto LABEL_196;
      }

LABEL_197:
      atomic_fetch_add_explicit(v1 + 191, 1uLL, memory_order_relaxed);
      if (**v1 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "[%7d] begin: %s\n", v238, v264);
      }

      if ((concatExtractPath(v254, 0x800uLL, v1 + 12, v264) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 955, 2, 0, "invalid path: %s", v158, v159, v264);
LABEL_233:
        v232 = 0;
LABEL_234:
        v22 = 0;
        v20 = 1;
      }

      else
      {
        v160 = v255;
        if ((v255 & 0x400) != 0)
        {
          if ((MemBufferIncreaseCapacity(v235, *(&v259 + 1)) & 0x8000000000000000) != 0)
          {
            v81 = 960;
            v82 = "allocate XAT blob";
            goto LABEL_232;
          }

          v160 = v255;
        }

        if ((v160 & 0x800) != 0 && (MemBufferIncreaseCapacity(v10, v260) & 0x8000000000000000) != 0)
        {
          v81 = 964;
          v82 = "allocate ACL blob";
          goto LABEL_232;
        }

        if (!MemBufferIsEmpty(v235) || !MemBufferIsEmpty(v10))
        {
          v81 = 968;
          v82 = "XAT/ACL blob is not empty";
          goto LABEL_232;
        }

        if (SDWORD1(v255) > 75)
        {
          if (SDWORD1(v255) > 119)
          {
            if ((DWORD1(v255) - 120) >= 2)
            {
              goto LABEL_278;
            }

            v22 = 0;
            v20 = 2;
            v232 = 1;
            if (v227 >= 3)
            {
              fprintf(*MEMORY[0x29EDCA610], "[%7d] HLINK/CLONE deferred: %s\n");
              goto LABEL_263;
            }
          }

          else
          {
            switch(DWORD1(v255))
            {
              case 'L':
                if (v227 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] SLINK: %s -> %s\n", v238, v264, v265);
                }

                unlink(v254);
                v183 = symlink(v265, v254);
                v22 = 0;
                v20 = 2;
                v232 = 3;
                if (v183)
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1086, 2, "symlink %s -> %s", v184, v185, v186, v254);
                  goto LABEL_277;
                }

                break;
              case 'P':
                if (v227 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] FIFO: %s\n", v238, v264);
                }

                unlink(v254);
                if ((v255 & 0x10) != 0)
                {
                  v187 = LOWORD(v256[1]) | 0x1000;
                }

                else
                {
                  v187 = 4516;
                }

                v188 = mkfifo(v254, v187);
                v22 = 0;
                v20 = 2;
                v232 = 3;
                if (v188)
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1108, 2, "mkfifo %s", v189, v190, v191, v254);
LABEL_277:
                  v22 = 0;
                  v232 = 7;
                }

                break;
              case 'S':
                if (v227 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] SOCKET: %s\n", v238, v264);
                }

                unlink(v254);
                bzero(__s, 0x400uLL);
                bzero(v252, 0x400uLL);
                v250 = 0u;
                memset(v251, 0, sizeof(v251));
                v248 = 0u;
                v249 = 0u;
                v246 = 0;
                v247 = 0u;
                __strlcpy_chk();
                v168 = strrchr(__s, 47);
                if (!v168)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1137, 2, 0, "could not determine parent directory: %s", v169, v170, v254);
LABEL_283:
                  v232 = 3;
                  goto LABEL_138;
                }

                *v168 = 0;
                v250 = 0u;
                memset(v251, 0, sizeof(v251));
                v248 = 0u;
                v249 = 0u;
                v246 = 0;
                v247 = 0u;
                __strlcpy_chk();
                v246.sa_len = strlen(v246.sa_data) + 3;
                v246.sa_family = 1;
                v171 = socket(1, 1, 0);
                if (v171 < 0)
                {
                  v192 = *__error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1162, 2, v192, "socket failed: %s", v193, v194, v254);
                  goto LABEL_283;
                }

                v172 = v171;
                if (pthread_mutex_lock((v1 + 314)) < 0)
                {
                  v173 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1169, 2, *v173, "locking chdir_mutex failed: %s", v174, v175, v254);
                }

                if (getcwd(v252, 0x400uLL))
                {
                  if (chdir(__s) < 0 || bind(v172, &v246, 0x6Au) < 0)
                  {
                    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1176, 2, "chdir+bind failed: %s/%s", v176, v177, v178, __s);
                    v179 = 7;
                  }

                  else
                  {
                    v179 = 3;
                  }

                  v232 = v179;
                  if (chdir(v252) < 0)
                  {
                    v204 = __error();
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1180, 2, *v204, "chdir failed: %s", v205, v206, v252);
                  }
                }

                else
                {
                  v207 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1182, 2, *v207, "getcwd failed: %s", v208, v209, v254);
                  v232 = 3;
                }

                if (pthread_mutex_unlock((v1 + 314)) < 0)
                {
                  v210 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1183, 2, *v210, "unlocking chdir_mutex failed: %s", v211, v212, v254);
                }

                close(v172);
LABEL_138:
                v22 = 0;
                v20 = 2;
                break;
              default:
LABEL_278:
                v20 = 2;
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1217, 2, 0, "unsupported entry type", v79, v80, v222);
                v232 = 0;
LABEL_157:
                v22 = 0;
                break;
            }
          }
        }

        else if (SDWORD1(v255) > 69)
        {
          if (DWORD1(v255) == 70)
          {
            v180 = v1[259];
            if ((v255 & 8) != 0)
            {
              v182 = v231;
              if (statIsCompressed(v256[0]))
              {
                v181 = v259 != 0;
              }

              else
              {
                v181 = 0;
              }
            }

            else
            {
              v181 = 0;
              v182 = v231;
            }

            if (v227 >= 3)
            {
              v195 = "";
              if (v181)
              {
                v195 = " (C)";
              }

              fprintf(*MEMORY[0x29EDCA610], "[%7d] FILE writing %s%s: %s\n", v238, v195, v226, v264);
            }

            if (v181)
            {
              if (v242[0] & 0x20) != 0 && (v196 = v243 - 3, (v243 - 3) <= 0xB) && ((0xFF3u >> v196))
              {
                v197 = dword_2980695E0[v196];
                v180 = dword_298069610[v196];
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

            v198 = v197 | (16 * v231) & 0x40;
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
              if ((v242[0] & 0x80) != 0)
              {
                v200 = DWORD2(v243);
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

            removeFile(v254);
            saveThreadErrorContext(__s);
            v19 = OArchiveFileStreamCreate(v254, v259, v199 | 0x100u, v200, v180);
            if (!v19)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1062, 2, "OArchiveFileStreamCreate: %s", v201, v202, v203, v254);
              restoreThreadErrorContext(__s);
            }

            v22 = 0;
            v232 = 2;
            v20 = 2;
          }

          else
          {
            if (DWORD1(v255) != 72)
            {
              goto LABEL_278;
            }

            v22 = 0;
            v20 = 2;
            v232 = 1;
            if (v227 >= 3)
            {
              fprintf(*MEMORY[0x29EDCA610], "[%7d] HLINK (legacy) deferred: %s\n");
              goto LABEL_263;
            }
          }
        }

        else if ((DWORD1(v255) - 66) >= 2)
        {
          if (DWORD1(v255) != 68)
          {
            goto LABEL_278;
          }

          v22 = 0;
          v20 = 2;
          v232 = 1;
          if (v227 >= 3)
          {
            fprintf(*MEMORY[0x29EDCA610], "[%7d] DIR deferred: %s\n");
LABEL_263:
            v22 = 0;
            v232 = 1;
          }
        }

        else
        {
          if (v227 >= 3)
          {
            v161 = "CHAR";
            if (DWORD1(v255) == 66)
            {
              v161 = "BLOCK";
            }

            fprintf(*MEMORY[0x29EDCA610], "[%7d] %s SPECIAL: %s\n", v238, v161, v254);
          }

          if ((v255 & 0x20) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1195, 2, 0, "DEV field is not set for a block/char special entry", v79, v80, v222);
          }

          unlink(v254);
          v162 = v256[1];
          if ((v255 & 0x10) == 0)
          {
            v162 = 420;
          }

          if (DWORD1(v255) == 66)
          {
            v163 = 24576;
          }

          else
          {
            v163 = 0x2000;
          }

          v164 = mknod(v254, v163 | v162, v256[2]);
          v22 = 0;
          v20 = 2;
          v232 = 3;
          if (v164)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1209, 2, "mknod %s", v165, v166, v167, v254);
            goto LABEL_277;
          }
        }
      }
    }

    else
    {
LABEL_44:
      if (MemBufferGetDataSize(*(v0 + 16)) < 4)
      {
        goto LABEL_108;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 4uLL, &__dst, v41, v42, v43, v44, v45) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 882, 2, 0, "MemBufferFlushToBuffer", v46, v47, v222);
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
              if ((BYTE1(v255) & 2) == 0)
              {
                v20 = 2;
                v48 = 894;
                v49 = "unexpected DAT blob";
LABEL_174:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v48, 2, 0, v49, v46, v47, v222);
                goto LABEL_157;
              }

              v22 = 0;
              v20 = 3;
              v233 = v259;
            }

            else if (v23 == 2 && __dst == 3)
            {
              if ((BYTE1(v255) & 4) == 0)
              {
                v20 = 2;
                v48 = 901;
                v49 = "unexpected XAT blob";
                goto LABEL_174;
              }

              v22 = 0;
              v20 = 3;
              v233 = *(&v259 + 1);
            }

            else if (v23 == 2 && __dst == 4)
            {
              if ((BYTE1(v255) & 8) == 0)
              {
                v20 = 2;
                v48 = 908;
                v49 = "unexpected ACL blob";
                goto LABEL_174;
              }

              v22 = 0;
              v20 = 3;
              v233 = v260;
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

  MemBufferDestroy(v235);
  MemBufferDestroy(v10);
  OArchiveFileStreamDestroy(v19, v213, v214, v215, v216, v217, v218, v219);
  free(v236);
  v220 = *MEMORY[0x29EDCA608];
  return 0;
}

void extractBeginProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v103 = *MEMORY[0x29EDCA608];
  bzero(v102, 0x800uLL);
  v100 = 0;
  *v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  bzero(__dst, 0x890uLL);
  v12 = (v11 + 1320);
  *(v11 + 1320) = xmmword_2980695D0;
  v13 = *(v11 + 1368);
  *(v11 + 1352) = v13;
  *(v11 + 1368) = v13 + v2;
  *(v11 + 1336) = 0xFFFFFFFF00000000;
  if (*(v11 + 1184))
  {
    goto LABEL_76;
  }

  if (v10[1] != 77)
  {
    memcpy(__dst, v10, sizeof(__dst));
    v20 = 1;
    atomic_fetch_add_explicit((v11 + 1504), 1uLL, memory_order_relaxed);
    *(v11 + 1324) = 0;
    v21 = *v11;
    v22 = *(*v11 + 72);
    if (v22)
    {
      if ((*(v21 + 26) & 2) != 0)
      {
        LODWORD(__dst[0]) |= 0x40u;
        __dst[4] = v13;
      }

      v23 = v22(*(v21 + 144), __dst);
      v20 = v23 != 0;
      *(v11 + 1324) = v23 == 0;
    }

    v24 = 0;
    if (v6)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = (v8 + 8);
      v33 = 0uLL;
      v17 = 4410440;
      v18 = 4410451;
      v19 = 4411984;
      v34 = 0uLL;
      do
      {
        v35 = *(v32 - 1) & 0xDFDFDF;
        if (v35 <= 0x494C45)
        {
          if ((*(v32 - 1) & 0xDFDFDFu) > 0x434C52)
          {
            if (v35 == 4410451)
            {
              v31 |= 0x10u;
              v26 = *v32;
            }

            else if (v35 == 4411984)
            {
              v31 |= 0x80u;
              v36 = *v32;
              v29 = -1;
              if (*v32 > 67)
              {
                switch(v36)
                {
                  case 'D':
                    v29 = 4;
                    break;
                  case 'E':
                    v29 = 5;
                    break;
                  case 'F':
                    v29 = 6;
                    break;
                }
              }

              else
              {
                switch(v36)
                {
                  case 'A':
                    v29 = 1;
                    break;
                  case 'B':
                    v29 = 2;
                    break;
                  case 'C':
                    v29 = 3;
                    break;
                }
              }
            }
          }

          else if (v35 == 4410435)
          {
            v31 |= 8u;
            v25 = *v32;
          }

          else if (v35 == 4410440)
          {
            v31 |= 4u;
            v24 = *v32;
          }
        }

        else if ((*(v32 - 1) & 0xDFDFDFu) <= 0x4D5442)
        {
          if (v35 == 4803654)
          {
            v31 |= 0x100u;
            v30 = *v32;
          }

          else if (v35 == 5067842)
          {
            v31 |= 2u;
            v34 = *v32;
          }
        }

        else
        {
          switch(v35)
          {
            case 0x544641u:
              v31 |= 0x20u;
              v27 = *v32;
              break;
            case 0x524641u:
              v31 |= 0x40u;
              v28 = *v32;
              break;
            case 0x4D5443u:
              v31 |= 1u;
              v33 = *v32;
              break;
          }
        }

        v32 += 129;
        --v6;
      }

      while (v6);
      v100 = v30;
      DWORD2(v99) = v29;
      *&v99 = __PAIR64__(v28, v27);
      *v98 = v25;
      *&v98[2] = v26;
      *(&v97[2] + 1) = v24;
      *(&v97[1] + 8) = v34;
      *(v97 + 8) = v33;
    }

    else
    {
      LOWORD(v31) = 0;
    }

    LOWORD(v97[0]) = v31;
    if (v20 && HIDWORD(__dst[0]) == 70)
    {
      if ((v31 & 4) != 0 && v24 != -1)
      {
        v37 = clusterLookup(v11 + 1456, v24, &__dst[18], &__dst[146], 0x400uLL, v17, v18, v19);
        if (v37 < 0)
        {
          v47 = *__error();
          v45 = "looking up cluster";
          v46 = 1608;
          goto LABEL_74;
        }

        if (v37)
        {
          HIDWORD(__dst[0]) = 120;
          *(v11 + 1336) = 1;
          atomic_fetch_add((v11 + 1552), __dst[8]);
        }
      }

      if (HIDWORD(__dst[0]) == 70)
      {
        if ((v97[0] & 8) != 0 && *v98 != -1)
        {
          v38 = clusterLookup(v11 + 1472, *v98, &__dst[18], &__dst[146], 0x400uLL, v17, v18, v19);
          if (v38 < 0)
          {
            v47 = *__error();
            v45 = "looking up cluster";
            v46 = 1630;
            goto LABEL_74;
          }

          if (v38)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1560), __dst[8]);
          }
        }

        if (HIDWORD(__dst[0]) == 70 && (v97[0] & 0x10) != 0 && *&v98[2] != -1 && *(v11 + 8))
        {
          v39 = clusterLookup(v11 + 1488, *&v98[2], &__dst[18], &__dst[146], 0x400uLL, v17, v18, v19);
          if (v39 < 0)
          {
            v47 = *__error();
            v45 = "looking up cluster";
            v46 = 1652;
            goto LABEL_74;
          }

          if (v39)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1568), __dst[8]);
          }
        }
      }
    }

    v40 = *(v11 + 1352);
    if (pthread_mutex_lock((v11 + 1192)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 325, 2, 0, "pthread_mutex_lock", v41, v42, v95);
LABEL_71:
      *v12 = -1;
      goto LABEL_72;
    }

    v49 = *(v11 + 1392);
    v50 = *(v11 + 1384);
    if (v49 >= v50)
    {
      if (v50)
      {
        v50 += v50 >> 1;
      }

      else
      {
        v50 = 128;
      }

      v51 = calloc(v50, 0x910uLL);
      if (!v51)
      {
        v83 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 336, 2, *v83, "malloc", v84, v85, v95);
        pthread_mutex_unlock((v11 + 1192));
        goto LABEL_71;
      }

      v52 = v51;
      if (*(v11 + 1392))
      {
        v53 = 0;
        v54 = *(v11 + 1400);
        v55 = v51;
        do
        {
          memcpy(v55, (*(v11 + 1416) + 2320 * v54), 0x910uLL);
          v56 = *(v11 + 1384);
          if (v54 + 1 < v56)
          {
            v56 = 0;
          }

          v54 = v54 + 1 - v56;
          ++v53;
          v55 += 2320;
        }

        while (v53 < *(v11 + 1392));
      }

      free(*(v11 + 1416));
      *(v11 + 1416) = v52;
      *(v11 + 1384) = v50;
      *(v11 + 1400) = 0;
      v49 = *(v11 + 1392);
    }

    if (v49)
    {
      v57 = *(v11 + 1400);
    }

    else
    {
      v57 = 0;
      *(v11 + 1400) = 0;
    }

    v58 = v57 + v49;
    if (v58 >= v50)
    {
      v59 = v50;
    }

    else
    {
      v59 = 0;
    }

    v60 = *(v11 + 1416) + 2320 * (v58 - v59);
    v61 = *(v11 + 1376);
    *(v11 + 1376) = v61 + 1;
    bzero(v60, 0x910uLL);
    memcpy(v60, __dst, 0x890uLL);
    v62 = v97[0];
    *(v60 + 2208) = v97[1];
    *(v60 + 2192) = v62;
    v63 = v97[2];
    v64 = *v98;
    v65 = v99;
    *(v60 + 2272) = v100;
    *(v60 + 2256) = v65;
    *(v60 + 2240) = v64;
    *(v60 + 2224) = v63;
    *(v60 + 2296) = v61;
    *(v60 + 2312) = v40;
    *(v60 + 2304) = v40;
    *(v60 + 2300) = 0;
    v66 = *(v11 + 1392) + 1;
    *(v11 + 1392) = v66;
    if (v66 > *(v11 + 1408))
    {
      *(v11 + 1408) = v66;
    }

    if (**v11 >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "[%7d] inserted: %s\n", v61, &__dst[18]);
    }

    pthread_mutex_unlock((v11 + 1192));
    *v12 = v61;
    if ((v61 & 0x80000000) == 0)
    {
      if (*(v11 + 1324))
      {
        goto LABEL_76;
      }

      v67 = 1;
      atomic_fetch_add_explicit((v11 + 1512), 1uLL, memory_order_relaxed);
      if ((concatExtractPath(v102, 0x800uLL, (v11 + 12), &__dst[18]) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1690, 2, 0, "invalid path: %s", v68, v69, &__dst[18]);
        v67 = 0;
      }

      v70 = HIDWORD(__dst[0]);
      if (HIDWORD(__dst[0]) == 68)
      {
        if (**v11 >= 3)
        {
          fprintf(*MEMORY[0x29EDCA610], "[%7d] DIR mkdir: %s\n", *v12, &__dst[18]);
        }

        memset(&v96, 0, sizeof(v96));
        if (!lstat(v102, &v96) && (v96.st_mode & 0xF000) != 0x4000)
        {
          unlink(v102);
        }

        if (mkdir(v102, 0x1EDu) && *__error() != 17)
        {
          v71 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1706, 2, *v71, "%s", v72, v73, v102);
          v67 = 0;
        }

        if ((__dst[0] & 6) != 0)
        {
          if ((__dst[0] & 4) != 0)
          {
            v74 = HIDWORD(__dst[1]);
          }

          else
          {
            v74 = -1;
          }

          if ((__dst[0] & 2) != 0)
          {
            v75 = __dst[1];
          }

          else
          {
            v75 = -1;
          }

          chown(v102, v75, v74);
        }

        v70 = HIDWORD(__dst[0]);
      }

      if (v70 == 70 && (__dst[0] & 0x200) == 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1720, 2, 0, "Regular file is missing DAT blob: %s", v68, v69, &__dst[18]);
        v67 = 0;
      }

      if (pthread_mutex_lock((v11 + 1056)))
      {
        v79 = "SharedArrayPop: pthread_mutex_lock failed\n";
        v80 = 91;
LABEL_133:
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", v80, 0, v79, v76, v77, v78, v95);
        v45 = "SharedArrayPop";
        v46 = 1729;
      }

      else
      {
        while (1)
        {
          v81 = *(v11 + 1040);
          if (v81)
          {
            break;
          }

          if (pthread_cond_wait((v11 + 1120), (v11 + 1056)))
          {
            v79 = "SharedArrayPop: pthread_cond_wait failed\n";
            v80 = 94;
            goto LABEL_133;
          }
        }

        v82 = v81 - 1;
        *(v11 + 1040) = v82;
        *(v11 + 1340) = *(*(v11 + 1048) + 4 * v82);
        if (pthread_mutex_unlock((v11 + 1056)))
        {
          v79 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v80 = 98;
          goto LABEL_133;
        }

        v86 = *(v11 + 1176) + 304 * *(v11 + 1340);
        if (SemAcquire(v86 + 144))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1740, 2, 0, "SemAcquire", v87, v88, v95);
          v67 = 0;
        }

        *(v11 + 1344) = 1;
        v96.st_dev = 1;
        if (writeToThread(v86, &v96, 4uLL))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1748, 2, 0, "writeToThread", v89, v90, v95);
          v67 = 0;
        }

        if (writeToThread(v86, __dst, 0x890uLL))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1749, 2, 0, "writeToThread", v91, v92, v95);
          v67 = 0;
        }

        if (writeToThread(v86, v97, 0x58uLL))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1750, 2, 0, "writeToThread", v93, v94, v95);
          if (!writeToThread(v86, (v11 + 1320), 4uLL))
          {
            goto LABEL_75;
          }
        }

        else if (!writeToThread(v86, (v11 + 1320), 4uLL))
        {
          if (v67)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v45 = "writeToThread";
        v46 = 1751;
      }

      goto LABEL_73;
    }

LABEL_72:
    v95 = &__dst[18];
    v45 = "extractInsertEntry: %s";
    v46 = 1676;
LABEL_73:
    v47 = 0;
LABEL_74:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", v46, 2, v47, v45, v43, v44, v95);
LABEL_75:
    *(v11 + 1184) = 1;
    goto LABEL_76;
  }

  *(v11 + 1332) = 1;
  v14 = *(*v11 + 112);
  if (!v14)
  {
LABEL_76:
    v48 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = *(*v11 + 144);
  v16 = *MEMORY[0x29EDCA608];

  v14(v15, v10, v8, v6, v4, v2);
}

_DWORD *extractBlobProc(_DWORD *result, _DWORD *a2)
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
    result = writeToThread(v5 + 304 * v6, &v13, 4uLL);
    if (!result)
    {
      return result;
    }

    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBlobProc", 1790, 2, 0, "writeToThread", v10, v11, v12);
    v8 = v3 + 296;
    goto LABEL_15;
  }

  return result;
}

uint64_t extractPayloadProc(uint64_t result, char *a2, size_t a3)
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
    result = writeToThread(*(v5 + 1176) + 304 * *(v5 + 1340), a2, a3);
    if (result)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractPayloadProc", 1819, 2, 0, "extractWriteToThread", v7, v8, v9);
      *(v5 + 1184) = 1;
    }
  }

  return result;
}

uint64_t extractEndProc(uint64_t result)
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
      result = inFlightQueueRetire();
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
      if (writeToThread(v5, &v10, 4uLL))
      {
        v6 = "extractWriteToThread";
        v7 = 1859;
      }

      else if (writeToThread(v5, (v1 + 1360), 8uLL))
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

    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", v7, 2, 0, v6, v3, v4, v9);
    *(v1 + 1184) = 1;
  }

  return result;
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

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t inFlightQueueRetire()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v64 = *MEMORY[0x29EDCA608];
  if (pthread_mutex_lock((v0 + 1192)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 476, 2, 0, "pthread_mutex_lock", v6, v7, v61);
    v8 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v9 = inFlightQueueEntry(v5, v4);
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 480, 2, 0, "couldn't locate entry [%d] in queue", v10, v11, v4);
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
    v61 = v4;
    v15 = "Invalid entry state [%d] %s: %s";
    v16 = 485;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", v16, 2, 0, v15, v10, v11, v61);
    goto LABEL_18;
  }

  v13 = MEMORY[0x29EDCA610];
  if (**v5 >= 3)
  {
    if (v12 > 7)
    {
      v14 = "???";
    }

    else
    {
      v14 = (&off_29EE89A48)[v12];
    }

    fprintf(*MEMORY[0x29EDCA610], "[%7d] retiring %s: %s\n", v4, v14, (v9 + 144));
  }

  if (!*(v5 + 1392))
  {
    v8 = 0;
    goto LABEL_19;
  }

  v19 = *(v5 + 1400);
  v20 = 1;
  do
  {
    v21 = *(v5 + 1416) + 2320 * v19;
    v22 = *(v21 + 2300);
    if (v22 != 1)
    {
      if (!*(v21 + 2300))
      {
        break;
      }

      goto LABEL_27;
    }

    v26 = *(v21 + 4);
    if (v26 != 72)
    {
      if (v26 == 120)
      {
        bzero(__src, 0x800uLL);
        bzero(v63, 0x800uLL);
        if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v21 + 144)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 533, 2, 0, "invalid path: %s", v31, v32, v21 - 112);
          goto LABEL_18;
        }

        if (concatPath(v63, 0x800uLL, (v5 + 12), (v21 + 1168)))
        {
          v15 = "concatPath";
          v16 = 534;
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(*v13, "[%7d] HLINK %s -> %s\n", *(v21 + 2296), (v21 + 144), (v21 + 1168));
        }

        unlink(__src);
        if (link(v63, __src))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 548, 2, "%s", v33, v10, v11, __src);
          LODWORD(v22) = 7;
        }

        else
        {
          LODWORD(v22) = 3;
        }

        *(v21 + 2300) = v22;
        v22 = v22;
        goto LABEL_27;
      }

      v34 = *(v21 + 4);
      if (v34 == 121)
      {
        bzero(__src, 0x800uLL);
        bzero(v63, 0x800uLL);
        if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v21 + 144)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 560, 2, 0, "invalid path: %s", v35, v36, v21 - 112);
          goto LABEL_18;
        }

        if (concatPath(v63, 0x800uLL, (v5 + 12), (v21 + 1168)))
        {
          v15 = "concatPath";
          v16 = 561;
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(*v13, "[%7d] CLONE %s -> %s\n", *(v21 + 2296), (v21 + 144), (v21 + 1168));
        }

        unlink(__src);
        if (clonefile(v63, __src, 0) && (copyFileSegment(v63, 0, 0xFFFFFFFFFFFFFFFFLL, __src) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 572, 2, 0, "cloning file, falling back to copy, failed: %s", v10, v11, __src);
          v20 = 0;
        }

        *(v21 + 2300) = 3;
        v22 = 3;
        goto LABEL_27;
      }

      if (v34 != 68)
      {
        goto LABEL_65;
      }

      v37 = (*v21 & 8) != 0 && *(v21 + 16) != 0;
      if ((*v21 & 0x10) != 0 && (~*(v21 + 20) & 0x1ED) != 0)
      {
        v37 = 1;
      }

      if (*(v21 + 2288))
      {
        v38 = 0;
      }

      else
      {
        v38 = (*v21 & 0x100) == 0;
      }

      if (v38 && *(v21 + 2280) == 0 && !v37)
      {
        *(v21 + 2300) = 3;
LABEL_28:
        if ((setEntryAttributes(v5, v21) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 599, 2, 0, "setEntryAttributes failed", v23, v24, v61);
          v25 = 1;
          v22 = 7;
        }

        else
        {
          v25 = 1;
          v22 = 4;
        }
      }

      else
      {
        v25 = 0;
        v22 = 6;
      }

      *(v21 + 2300) = v22;
LABEL_82:
      v41 = *v5;
      if (*(*v5 + 80))
      {
        v42 = *(v41 + 24);
        if ((v42 & 8) != 0)
        {
          *v21 |= 0x20u;
          *(v21 + 24) = v22 == 7;
          v41 = *v5;
          v42 = *(*v5 + 24);
        }

        if ((v42 & 0x20000) != 0)
        {
          *v21 |= 0x40u;
          *(v21 + 32) = *(v21 + 2312);
          v41 = *v5;
        }

        (*(v41 + 80))(*(v41 + 144), v21);
        v22 = *(v21 + 2300);
      }

      if (v22 == 7)
      {
        ++*(v5 + 1448);
      }

      if (**v5 < 2 || v22 == 5)
      {
        if (v25)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v22 == 7)
        {
          fprintf(*v13, "%s (with errors)\n");
        }

        else
        {
          fprintf(*v13, "%s\n");
        }

        if (v25)
        {
LABEL_96:
          MemBufferDestroy(*(v21 + 2280));
          MemBufferDestroy(*(v21 + 2288));
          goto LABEL_114;
        }
      }

      v44 = *(v5 + 1432);
      v45 = *(v5 + 1424);
      v46 = *(v5 + 1440);
      if (v44 >= v45)
      {
        v47 = v45 + (v45 >> 1);
        v38 = v45 == 0;
        v48 = 16;
        if (!v38)
        {
          v48 = v47;
        }

        *(v5 + 1424) = v48;
        v49 = reallocf(v46, 16 * v48);
        *(v5 + 1440) = v49;
        if (!v49)
        {
          v57 = *__error();
          v56 = 646;
          v58 = "Allocating deferred stack";
LABEL_112:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", v56, 2, v57, v58, v52, v53, v61);
          goto LABEL_113;
        }

        v46 = v49;
        v44 = *(v5 + 1432);
        bzero(&v49[16 * v44], 16 * (*(v5 + 1424) - v44));
      }

      v50 = &v46[16 * v44];
      v51 = pc_zero_coder_encode(__src, 2610, v21, 2320);
      *(v50 + 1) = v51;
      if (v51)
      {
        v54 = v51;
        v55 = malloc(v51);
        *v50 = v55;
        if (v55)
        {
          memcpy(v55, __src, v54);
          ++*(v5 + 1432);
          atomic_fetch_add_explicit((v5 + 1520), 1uLL, memory_order_relaxed);
          goto LABEL_114;
        }

        v57 = *__error();
        v56 = 661;
        v58 = "Allocating deferred entry";
      }

      else
      {
        v56 = 657;
        v57 = 0;
        v58 = "zero_coder_encode";
      }

      goto LABEL_112;
    }

    bzero(__src, 0x800uLL);
    bzero(v63, 0x800uLL);
    if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v21 + 144)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 506, 2, 0, "invalid path: %s", v27, v28, v21 - 112);
      goto LABEL_18;
    }

    if (concatPath(v63, 0x800uLL, (v5 + 12), (v21 + 1168)))
    {
      v15 = "concatPath";
      v16 = 507;
      goto LABEL_17;
    }

    if (**v5 >= 3)
    {
      fprintf(*v13, "[%7d] HLINK (legacy) %s -> %s\n", *(v21 + 2296), (v21 + 144), v63);
    }

    unlink(__src);
    if (link(v63, __src))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 521, 2, "%s", v29, v10, v11, __src);
      LODWORD(v22) = 7;
    }

    else
    {
      LODWORD(v22) = 3;
    }

    *(v21 + 2300) = v22;
    v22 = v22;
LABEL_27:
    if (v22 == 3)
    {
      goto LABEL_28;
    }

    if ((v22 & 0xFFFFFFFC) == 4)
    {
      v25 = 1;
      goto LABEL_82;
    }

    if (v22 <= 3)
    {
      v30 = (&off_29EE89A88)[v22];
    }

LABEL_65:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 608, 2, 0, "Invalid entry state [%d] %s: %s", v10, v11, v4);
LABEL_113:
    v20 = 0;
LABEL_114:
    bzero(v21, 0x910uLL);
    v59 = *(v5 + 1400);
    if (v59 + 1 == *(v5 + 1384))
    {
      v19 = 0;
    }

    else
    {
      v19 = v59 + 1;
    }

    *(v5 + 1400) = v19;
    v60 = *(v5 + 1392) - 1;
    *(v5 + 1392) = v60;
  }

  while (v60);
  if (v20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

LABEL_19:
  pthread_mutex_unlock((v5 + 1192));
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return v8;
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

uint64_t RawImageGetPatchInfo(__int128 *a1, unint64_t a2, void *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x2D)
  {
    v8 = "invalid patch size";
    v9 = 488;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImageGetPatchInfo", v9, 135, 0, v8, a7, a8, v16);
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v16 = *a1;
  v17 = *(a1 + 30);
  v10 = *(a1 + 1);
  v12 = *a1 != 0x3031464649444952 || v10 == 0 || (a1[1] >> 16) == 0;
  if (v12 || v17 < 0x2F || v17 >= *(&v17 + 1))
  {
    v8 = "bad header";
    v9 = 497;
    goto LABEL_12;
  }

  if (__s)
  {
    memset_s(__s, 0x10uLL, 0, 0x10uLL);
  }

  *(__s + 2) = v10 == 1;
  result = 0;
  if (BYTE10(v16))
  {
    *(__s + 3) = 1;
  }

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RawImagePatchInternal(uint64_t a1, AAByteStream_impl *a2)
{
  v5 = *(a1 + 40);
  DefaultNThreads = *(a1 + 44);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
    *(a1 + 44) = DefaultNThreads;
  }

  if (DefaultNThreads >= 3)
  {
    *(a1 + 44) = 2;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v6 = a2;
  if (!a2)
  {
    v18 = AAFileStreamOpenWithPath(*(a1 + 32), 0, 0);
    v6 = v18;
    if (!v18)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 542, 135, 0, "AAFileStreamOpenWithPath", v19, v20, v262);
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v28 = 0;
      v27 = 0;
      goto LABEL_30;
    }

    if ((v5 & 1) != 0 && (io_set_nocache(v18) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 543, 135, "io_set_nocache %s", v21, v22, v23, *(a1 + 32));
    }
  }

  v7 = malloc(0x2EuLL);
  v10 = v7;
  if (!v7)
  {
    v17 = *__error();
    v15 = "aaMalloc";
    v16 = 108;
    goto LABEL_24;
  }

  if (!*(v6 + 2))
  {
    goto LABEL_17;
  }

  v11 = 0;
  v12 = 46;
  v13 = v7;
  do
  {
    v14 = (*(v6 + 2))(*v6, v13, v12);
    if (v14 < 0)
    {
      goto LABEL_17;
    }

    if (!v14)
    {
      break;
    }

    v13 = (v13 + v14);
    v11 += v14;
    v12 -= v14;
  }

  while (v12);
  if (v11 != 46)
  {
LABEL_17:
    v15 = "aaByteStreamReadExpected";
    v16 = 110;
    goto LABEL_18;
  }

  if (*v10 != 0x3031464649444952 || !*(v10 + 4) || !*(v10 + 18) || (v35 = *(v10 + 30), v35 < 0x2F) || v35 >= *(v10 + 38))
  {
    v15 = "bad header";
    v16 = 118;
LABEL_18:
    v17 = 0;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v16, 135, v17, v15, v8, v9, v262);
LABEL_25:
    free(v10);
    v24 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 548, 135, *v24, "patch_read_header", v25, v26, v263);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  if (v35 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_50:
    v45 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 122, 135, *v45, "aaReallocf", v46, v47, v262);
    v10 = 0;
    goto LABEL_25;
  }

  v36 = realloc(v10, v35);
  if (!v36)
  {
    free(v10);
    goto LABEL_50;
  }

  v30 = v36;
  v39 = *(v36 + 30) - 46;
  v40 = v36 + 46;
  if (*(v6 + 2))
  {
    if (*(v36 + 30) == 46)
    {
      goto LABEL_54;
    }

    v41 = 0;
    v42 = v36 + 46;
    v43 = *(v36 + 30) - 46;
    while (1)
    {
      v44 = (*(v6 + 2))(*v6, v42, v43);
      if (v44 < 0)
      {
        break;
      }

      if (v44)
      {
        v42 += v44;
        v41 += v44;
        v43 -= v44;
        if (v43)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    v41 = v44;
  }

  else
  {
    v41 = -1;
  }

LABEL_53:
  if (v39 != v41)
  {
    v55 = "aaByteStreamReadExpected";
    v56 = 124;
LABEL_62:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v56, 135, 0, v55, v37, v38, v262);
    v10 = v30;
    goto LABEL_25;
  }

LABEL_54:
  v48 = *(v30 + 38);
  v49 = *(v30 + 4);
  v50 = v49 + 1;
  v51 = 46;
  do
  {
    v52 = *&v30[v51];
    if (v48 >= v52)
    {
      v55 = "bad header";
      v56 = 130;
      goto LABEL_62;
    }

    v51 += 8;
    v48 = v52;
    --v50;
  }

  while (v50);
  v303 = v40;
  if (*(a1 + 48) >= 1)
  {
    v53 = MEMORY[0x29EDCA610];
    if (v49 == 1)
    {
      v54 = "*full replacement*";
    }

    else
    {
      v54 = *(a1 + 16);
    }

    v57 = "(stream based)";
    if (*(a1 + 32))
    {
      v57 = *(a1 + 32);
    }

    v58 = *(a1 + 40);
    if (v58)
    {
      v59 = "no";
    }

    else
    {
      v59 = "yes";
    }

    if ((v58 & 2) != 0)
    {
      v60 = "yes";
    }

    else
    {
      v60 = "no";
    }

    fprintf(*MEMORY[0x29EDCA610], "ImagePatch\n  Input:        %s\n  Output:       %s\n  Patch:        %s\n  CryptexCache: %s\n  StaticContent: %s\n", v54, *(a1 + 24), v57, v59, v60);
    if (*(a1 + 48) >= 2)
    {
      fprintf(*v53, "  - Variants:   %d\n  - Flags:      %llx\n  - # controls: %llu\n  - Patch size: %llu bytes\n    - Metadata: %llu bytes\n    - Controls: %llu bytes\n", *(v30 + 4), *(v30 + 10), *(v30 + 18), *&v40[8 * *(v30 + 4)], *(v30 + 38) - *(v30 + 30), *(v30 + 46) - *(v30 + 38));
      if (*(v30 + 4))
      {
        v61 = 0;
        v62 = v30 + 54;
        do
        {
          if (v61)
          {
            v63 = "Diff";
          }

          else
          {
            v63 = "Literal";
          }

          ++v61;
          fprintf(*v53, "    - %s stream: %llu bytes\n", v63, *v62 - *(v62 - 1));
          ++v62;
        }

        while (v61 < *(v30 + 4));
      }
    }
  }

  v64 = aaIntervalInputStreamOpen(v6, *(v30 + 30), *(v30 + 38));
  v67 = v64;
  if (!v64)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 187, 135, 0, "aaIntervalInputStreamOpen", v65, v66, v262);
    v29 = 0;
    v72 = 0;
    goto LABEL_95;
  }

  v68 = *(a1 + 48);
  if (v68 <= 3)
  {
    v69 = v68 << 62;
  }

  else
  {
    v69 = 0xC000000000000000;
  }

  v72 = AADecompressionInputStreamOpen(v64, v69, *(a1 + 44));
  if (!v72)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 189, 135, 0, "AADecompressionInputStreamOpen", v70, v71, v262);
    v29 = 0;
    goto LABEL_95;
  }

  v29 = calloc(*(v30 + 4), 8uLL);
  if (!v29)
  {
    v78 = "aaCalloc";
    v79 = 193;
    goto LABEL_94;
  }

  if (*(v30 + 4))
  {
    v75 = 0;
    while (1)
    {
      v76 = rawimg_create_with_stream(v72, v75 == 0);
      v29[v75] = v76;
      if (!v76)
      {
        break;
      }

      if (++v75 >= *(v30 + 4))
      {
        goto LABEL_89;
      }
    }

    v78 = "rawimg_create_with_stream";
    v79 = 199;
LABEL_94:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", v79, 135, 0, v78, v73, v74, v262);
LABEL_95:
    free(v29);
    v77 = 1;
  }

  else
  {
LABEL_89:
    v77 = 0;
  }

  v80 = AAByteStreamClose(v72);
  v81 = AAByteStreamClose(v67);
  if (!v29 || (v77 & 1) != 0 || v81 < 0 || v80 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 552, 135, 0, "patch_read_variants", v82, v83, v262);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_26;
  }

  v84 = calloc(*(v30 + 4), 0x20uLL);
  v31 = v84;
  if (!v84)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 556, 135, 0, "aaCalloc", v85, v86, v262);
    v28 = 0;
    goto LABEL_381;
  }

  if (*(v30 + 4))
  {
    v87 = 0;
    v88 = v84;
    do
    {
      v89 = *(v29[v87] + 2104);
      *v88 = *(v29[v87] + 2088);
      v88[1] = v89;
      v88 += 2;
      ++v87;
      v90 = *(v30 + 4);
    }

    while (v87 < v90);
    *(*v29 + 2048) = *(a1 + 24);
    if (v90 == 1)
    {
      v28 = 0;
      v281 = 0;
      v287 = 0;
      s = 0;
      v299 = 0;
      compressed_stream = 0;
      v290 = 0;
      v91 = *v29;
      v92 = *(a1 + 40);
      v93 = v92 & 1;
      goto LABEL_106;
    }
  }

  else
  {
    *(*v29 + 2048) = *(a1 + 24);
  }

  v109 = malloc(0x2000uLL);
  v28 = v109;
  if (!v109)
  {
    v124 = "aaMalloc";
    v125 = 568;
    goto LABEL_380;
  }

  saveThreadErrorContext(v109);
  v112 = *(v30 + 4);
  if (!*(v30 + 4))
  {
LABEL_138:
    restoreThreadErrorContext(v28);
    goto LABEL_139;
  }

  v113 = &v31[4 * v112 - 4];
  v114 = (v29 - 1);
  while (1)
  {
    v305 = v112;
    v115 = v112 - 1;
    *(*&v114[8 * v112] + 2048) = *(a1 + 16);
    if (!rawimg_get_digests(*&v114[8 * v112], 4u, 1, 1))
    {
      v116 = *&v114[8 * v305];
      v117 = v116[261];
      v118 = v116[262];
      v119 = v116[263];
      v120 = v116[264];
      v121 = *v113 == v117 && v113[1] == v118;
      v122 = v121 && v113[2] == v119;
      if (v122 && v113[3] == v120)
      {
        break;
      }
    }

    v113 -= 4;
    v112 = v115;
    if (!v115)
    {
      goto LABEL_138;
    }
  }

  restoreThreadErrorContext(v28);
  v281 = v115;
  if ((v115 & 0x80000000) != 0)
  {
LABEL_139:
    v124 = "ImagePatch: No variant found";
    v125 = 586;
    goto LABEL_380;
  }

  if (v305 != 1)
  {
    v296 = v115 & 0x7FFFFFFF;
    v193 = &v31[4 * v296];
    v194 = *v193;
    v195 = v193[1];
    v197 = v193[2];
    v196 = v193[3];
    if (*v31 != v194 || v31[1] != v195 || v31[2] != v197 || v31[3] != v196)
    {
      rawimg_show(v29[v296], 0, *(a1 + 48));
      v92 = *(a1 + 40);
      v93 = v92 & 1;
      v297 = *v29;
      v300 = v29[v296];
      v201 = v300[256];
      v294 = strcmp(v201, *(*v29 + 2048));
      if (v294)
      {
        if (*(v30 + 4) > 1u)
        {
          v287 = AAFileStreamOpenWithPath(v201, 0, 0);
          if (v287)
          {
            if ((v92 & 1) == 0)
            {
              goto LABEL_283;
            }

            if ((io_set_nocache(v287) & 0x80000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 284, 135, "io_set_nocache %s", v207, v208, v209, v300[256]);
            }

            v210 = *(a1 + 48);
            v211 = v210 <= 3 ? v210 << 62 : 0xC000000000000000;
            v93 = 1;
            v287 = aaCacheStreamOpen(v287, 0x1000000uLL, 14, 1, v211);
            if (v287)
            {
LABEL_283:
              v301 = 0;
              goto LABEL_337;
            }

            v252 = "aaCacheStreamOpen";
            v253 = 286;
          }

          else
          {
            v252 = "AAFileStreamOpenWithPath";
            v253 = 281;
          }

LABEL_359:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v253, 135, 0, v252, v205, v206, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          v301 = 0;
          s = 0;
          v287 = 0;
LABEL_360:
          v288 = 0;
          if (v287 == v301)
          {
            v256 = 0;
          }

          else
          {
            v256 = v287;
          }

          goto LABEL_363;
        }

        v287 = 0;
        s = 0;
        v299 = 0;
        compressed_stream = 0;
        v290 = 0;
LABEL_319:
        v91 = v297;
LABEL_106:
        v297 = v91;
        v301 = AAFileStreamOpenWithPath(*(v91 + 2048), 1538, 0x1A4u);
        if (!v301)
        {
          v107 = "AAFileStreamOpenWithPath";
          v108 = 305;
          goto LABEL_142;
        }

        if ((v92 & 2) != 0 && (io_hint_static_content(v301) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 308, 135, "ImagePatch: Static content hint failed.", v96, v97, v98, v262);
        }

        if ((io_preallocate(v301, *(v297 + 2120)) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 311, 135, "ImagePatch: Preallocation failed.", v99, v100, v101, v262);
        }

        if (v93)
        {
          if ((io_set_nocache(v301) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 316, 135, "io_set_nocache %s", v102, v103, v104, *(v297 + 2048));
          }

          v105 = *(a1 + 48);
          if (v105 <= 3)
          {
            v106 = v105 << 62;
          }

          else
          {
            v106 = 0xC000000000000000;
          }

          v280 = 1;
          v301 = aaCacheStreamOpen(v301, 0x100000uLL, 14, 1, v106);
          if (!v301)
          {
            v107 = "aaCacheStreamOpen";
            v108 = 318;
LABEL_142:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v108, 135, 0, v107, v94, v95, v262);
            v291 = 0;
            v293 = 0;
            v295 = 0;
            v304 = 0;
            v306 = 0;
            v301 = 0;
            goto LABEL_360;
          }
        }

        else
        {
          v280 = 1;
        }

LABEL_144:
        v126 = aaSegmentStreamOpen(v301, v297);
LABEL_145:
        v304 = v126;
        if (v126)
        {
          v306 = aaForkOutputStreamOpen(v126, v297);
          if (!v306)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 324, 135, 0, "aaForkOutputStreamOpen", v129, v130, v262);
            v291 = 0;
            v293 = 0;
            v295 = 0;
            v306 = 0;
            goto LABEL_360;
          }

          v293 = aaIntervalInputStreamOpen(v6, *(v30 + 46), *(v30 + 54));
          if (v293)
          {
            v133 = *(a1 + 48);
            if (v133 <= 3)
            {
              v134 = v133 << 62;
            }

            else
            {
              v134 = 0xC000000000000000;
            }

            v295 = AADecompressionInputStreamOpen(v293, v134, *(a1 + 44));
            if (v295)
            {
              v291 = calloc(1uLL, 0x10040uLL);
              if (!v291)
              {
                v212 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_create", 36, 135, *v212, "aaCalloc", v213, v214, v262);
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 338, 135, 0, "control_reader_create", v215, v216, v264);
                v291 = 0;
                goto LABEL_360;
              }

              *(v291 + 0x2000) = v6;
              *(v291 + 8195) = v30;
              *(v291 + 8196) = a1;
              v143 = *(v30 + 4) + 1;
              *(v291 + 8197) = 0x2000 / v143 * v143;
              *(v291 + 8198) = -1;
              v144 = *(v30 + 18);
              *(v291 + 8199) = v144 * v143;
              v145 = v280;
              if (!v144)
              {
                v145 = 1;
              }

              if (v145)
              {
LABEL_156:
                v288 = calloc(1uLL, 0x20000uLL);
                if (v288)
                {
                  v273 = 0;
                  v270 = 0;
                  v266 = v281;
                  v152 = *(v30 + 18);
                  v267 = 1;
                  while (!v152)
                  {
LABEL_256:
                    v191 = v280;
                    if (v267 > 1)
                    {
                      v191 = 1;
                    }

                    ++v267;
                    if (v191 == 1)
                    {
                      v192 = *(v297 + 2120);
                      if ((AAByteStreamTruncate(v301) & 0x80000000) == 0)
                      {
                        v298 = 0;
                        goto LABEL_398;
                      }

                      v254 = "AAByteStreamTruncate";
                      v255 = 457;
LABEL_397:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v255, 135, 0, v254, v150, v151, v262);
                      v298 = 1;
LABEL_398:
                      if (v287 == v301)
                      {
                        v256 = 0;
                      }

                      else
                      {
                        v256 = v287;
                      }

                      goto LABEL_364;
                    }
                  }

                  v268 = 0;
                  v269 = 0;
                  v278 = 0;
                  while (2)
                  {
                    v153 = ctrl_reader_get(v291, v268, v146, v147, v148, v149, v150, v151);
                    if (!v153)
                    {
                      v254 = "ctrl_reader_get";
                      v255 = 387;
                      goto LABEL_397;
                    }

                    v154 = *v153;
                    v155 = v153[1];
                    if ((*v153 & 0x8000000000000000) != 0)
                    {
                      v154 = 0x8000000000000000 - *v153;
                    }

                    v274 = v154;
                    v156 = 0x8000000000000000 - v155;
                    if (v155 >= 0)
                    {
                      v156 = v153[1];
                    }

                    v272 = v156;
                    v157 = v153[v266 + 1];
                    if (v157 < 0)
                    {
                      v157 = 0x8000000000000000 - v157;
                    }

                    v265 = v157;
                    if (v267 == 2)
                    {
                      v278 += v274;
                      if ((v280 & 1) == 0 && v278 < *(v297 + 2056))
                      {
                        goto LABEL_170;
                      }

LABEL_223:
                      if (v272)
                      {
                        v275 = 0;
                        while (1)
                        {
                          v178 = v272 - v275;
                          if (v272 - v275 >= 0x10000)
                          {
                            v178 = 0x10000;
                          }

                          v277 = v178;
                          if (!*(v295 + 2))
                          {
                            goto LABEL_349;
                          }

                          if (v272 == v275)
                          {
                            v179 = 0;
                          }

                          else
                          {
                            v179 = 0;
                            v180 = v288;
                            v181 = v178;
                            while (1)
                            {
                              v182 = (*(v295 + 2))(*v295, v180, v181);
                              if (v182 < 0)
                              {
                                break;
                              }

                              if (v182)
                              {
                                v180 += v182;
                                v179 += v182;
                                v181 -= v182;
                                if (v181)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_236;
                            }

                            v179 = v182;
                          }

LABEL_236:
                          if (v277 != v179)
                          {
LABEL_349:
                            v254 = "aaByteStreamReadExpected";
                            v255 = 439;
                            goto LABEL_397;
                          }

                          if (!*(v306 + 5))
                          {
                            goto LABEL_350;
                          }

                          if (v272 == v275)
                          {
                            v284 = 0;
                          }

                          else
                          {
                            v284 = 0;
                            v183 = v288;
                            v185 = v277;
                            v184 = v278;
                            while (1)
                            {
                              v186 = (*(v306 + 5))(*v306, v183, v185, v184);
                              if (v186 < 1)
                              {
                                break;
                              }

                              v183 += v186;
                              v284 += v186;
                              v184 += v186;
                              v185 -= v186;
                              if (!v185)
                              {
                                goto LABEL_245;
                              }
                            }

                            v284 = v186;
                          }

LABEL_245:
                          if (v277 != v284)
                          {
LABEL_350:
                            v254 = "aaByteStreamWriteExpected";
                            v255 = 440;
                            goto LABEL_397;
                          }

                          v187 = v277 + v273;
                          v273 += v277;
                          if (*a1)
                          {
                            v188 = v187 > v270;
                          }

                          else
                          {
                            v188 = 0;
                          }

                          if (v188)
                          {
                            v189 = *(v297 + 2080);
                            if (v273 < v189)
                            {
                              v190 = ((v189 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                              if (((*a1)(*(a1 + 8), v273 / (v189 / 0x64 + 1)) & 0x80000000) != 0)
                              {
                                v261 = 450;
                                goto LABEL_403;
                              }

                              v270 = v273 + (v190 >> 2);
                            }
                          }

                          v278 += v277;
                          v275 += v277;
                          if (v275 >= v272)
                          {
                            goto LABEL_255;
                          }
                        }
                      }

                      goto LABEL_255;
                    }

                    if (!v274)
                    {
LABEL_220:
                      v269 += v265;
                      if ((v280 & 1) != 0 || v267 != 1 || v278 < *(v297 + 2056))
                      {
                        goto LABEL_223;
                      }

LABEL_170:
                      v278 += v272;
LABEL_255:
                      v152 = *(v30 + 18);
                      if (++v268 >= v152)
                      {
                        goto LABEL_256;
                      }

                      continue;
                    }

                    break;
                  }

                  v271 = 0;
                  while (2)
                  {
                    v158 = v274 - v271;
                    if (v274 - v271 >= 0x10000)
                    {
                      v158 = 0x10000;
                    }

                    v276 = v158;
                    if (!v299[4])
                    {
                      goto LABEL_353;
                    }

                    if (v274 == v271)
                    {
                      v282 = 0;
                    }

                    else
                    {
                      v282 = 0;
                      v159 = v288;
                      v160 = v269;
                      v161 = v158;
                      while (1)
                      {
                        v162 = (v299[4])(*v299, v159, v161, v160);
                        if (v162 < 0)
                        {
                          break;
                        }

                        if (v162)
                        {
                          v159 += v162;
                          v282 += v162;
                          v160 += v162;
                          v161 -= v162;
                          if (v161)
                          {
                            continue;
                          }
                        }

                        goto LABEL_184;
                      }

                      v282 = v162;
                    }

LABEL_184:
                    if (v276 != v282)
                    {
LABEL_353:
                      v254 = "aaByteStreamPReadExpected";
                      v255 = 400;
                      goto LABEL_397;
                    }

                    v163 = *(v297 + 2072);
                    if (v278 < v163)
                    {
                      if (v276 + v278 > v163)
                      {
                        v254 = "bad controls";
                        v255 = 406;
                        goto LABEL_397;
                      }

                      if (!*(v290 + 2))
                      {
                        goto LABEL_394;
                      }

                      if (v274 == v271)
                      {
                        if (!*(v306 + 5))
                        {
                          goto LABEL_354;
                        }

                        goto LABEL_204;
                      }

                      v164 = 0;
                      v165 = v288 + 0x10000;
                      v166 = v276;
                      while (1)
                      {
                        v167 = (*(v290 + 2))(*v290, v165, v166);
                        if (v167 < 0)
                        {
                          break;
                        }

                        if (v167)
                        {
                          v165 += v167;
                          v164 += v167;
                          v166 -= v167;
                          if (v166)
                          {
                            continue;
                          }
                        }

                        goto LABEL_197;
                      }

                      v164 = v167;
LABEL_197:
                      if (v276 != v164)
                      {
LABEL_394:
                        v254 = "aaByteStreamReadExpected";
                        v255 = 407;
                        goto LABEL_397;
                      }

                      v168 = v276;
                      if (v276 <= 1)
                      {
                        v168 = 1;
                      }

                      v169 = v288;
                      do
                      {
                        *v169 += v169[0x10000];
                        ++v169;
                        --v168;
                      }

                      while (v168);
                    }

                    if (!*(v306 + 5))
                    {
                      goto LABEL_354;
                    }

                    if (v274 == v271)
                    {
LABEL_204:
                      v283 = 0;
                    }

                    else
                    {
                      v283 = 0;
                      v170 = v288;
                      v172 = v276;
                      v171 = v278;
                      while (1)
                      {
                        v173 = (*(v306 + 5))(*v306, v170, v172, v171);
                        if (v173 < 1)
                        {
                          break;
                        }

                        v170 += v173;
                        v283 += v173;
                        v171 += v173;
                        v172 -= v173;
                        if (!v172)
                        {
                          goto LABEL_210;
                        }
                      }

                      v283 = v173;
                    }

LABEL_210:
                    if (v276 != v283)
                    {
LABEL_354:
                      v254 = "aaByteStreamWriteExpected";
                      v255 = 412;
                      goto LABEL_397;
                    }

                    v174 = v273 + v276;
                    v273 += v276;
                    if (*a1)
                    {
                      v175 = v174 > v270;
                    }

                    else
                    {
                      v175 = 0;
                    }

                    if (v175)
                    {
                      v176 = *(v297 + 2080);
                      if (v273 < v176)
                      {
                        v177 = ((v176 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                        if (((*a1)(*(a1 + 8), v273 / (v176 / 0x64 + 1)) & 0x80000000) != 0)
                        {
                          v261 = 422;
LABEL_403:
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v261, 135, 0, "callback signaled abort", v150, v151, v262);
                          if (v287 == v301)
                          {
                            v256 = 0;
                          }

                          else
                          {
                            v256 = v287;
                          }

                          if (v290)
                          {
                            AAByteStreamCancel(v290);
                          }

                          AAByteStreamCancel(v295);
LABEL_363:
                          v298 = 1;
LABEL_364:
                          if (v291)
                          {
                            AAByteStreamClose(*(v291 + 8194));
                            AAByteStreamClose(*(v291 + 8193));
                            free(v291);
                          }

                          free(v288);
                          AAByteStreamClose(v299);
                          AAByteStreamClose(s);
                          AAByteStreamClose(v256);
                          AAByteStreamClose(v306);
                          AAByteStreamClose(v304);
                          AAByteStreamClose(v301);
                          AAByteStreamClose(v290);
                          AAByteStreamClose(compressed_stream);
                          AAByteStreamClose(v295);
                          AAByteStreamClose(v293);
                          if (v298)
                          {
                            v124 = "patch_apply";
                            v125 = 621;
                            goto LABEL_380;
                          }

                          if (rawimg_get_digests(*v29, 4u, 0, 1) || (*v31 == *(*v29 + 2088) ? (v257 = v31[1] == *(*v29 + 2096)) : (v257 = 0), v257 ? (v258 = v31[2] == *(*v29 + 2104)) : (v258 = 0), v258 ? (v259 = v31[3] == *(*v29 + 2112)) : (v259 = 0), !v259))
                          {
                            v124 = "digest mismatch";
                            v125 = 630;
                            goto LABEL_380;
                          }

                          if (*(a1 + 48) >= 2)
                          {
                            v222 = *MEMORY[0x29EDCA610];
                            v223 = "ImagePatch: Digest match. Output reconstructed.\n";
                            v224 = 48;
LABEL_388:
                            fwrite(v223, v224, 1uLL, v222);
                          }

                          goto LABEL_389;
                        }

                        v270 = v273 + (v177 >> 2);
                      }
                    }

                    v269 += v276;
                    v278 += v276;
                    v271 += v276;
                    if (v271 >= v274)
                    {
                      goto LABEL_220;
                    }

                    continue;
                  }
                }

                v232 = *__error();
                v230 = "aaCalloc";
                v231 = 371;
              }

              else
              {
                v225 = 0;
                v289 = 0;
                while (1)
                {
                  v226 = ctrl_reader_get(v291, v289, v137, v138, v139, v140, v141, v142);
                  if (!v226)
                  {
                    v230 = "ctrl_reader_get";
                    v231 = 349;
                    goto LABEL_315;
                  }

                  if ((*v226 & 0x8000000000000000) == 0)
                  {
                    v227 = *v226;
                  }

                  else
                  {
                    v227 = 0x8000000000000000 - *v226;
                  }

                  v228 = v226[v281 + 1];
                  if (v228 < 0)
                  {
                    v228 = 0x8000000000000000 - v228;
                  }

                  v279 = v228;
                  if (v227)
                  {
                    break;
                  }

LABEL_312:
                  v225 += v279;
                  if (++v289 >= *(v30 + 18))
                  {
                    goto LABEL_156;
                  }
                }

                while (1)
                {
                  v229 = v227 >= 0x10000 ? 0x10000 : v227;
                  if (v229 != aaByteStreamSimulate(v299))
                  {
                    break;
                  }

                  v225 += v229;
                  v227 -= v229;
                  if (!v227)
                  {
                    goto LABEL_312;
                  }
                }

                v230 = "aaByteStreamSimulate";
                v231 = 358;
LABEL_315:
                v232 = 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v231, 135, v232, v230, v141, v142, v262);
              goto LABEL_360;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 330, 135, 0, "AADecompressionInputStreamOpen", v135, v136, v262);
            v291 = 0;
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 328, 135, 0, "aaIntervalInputStreamOpen", v131, v132, v262);
            v291 = 0;
            v293 = 0;
          }

          v295 = 0;
          goto LABEL_360;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 322, 135, 0, "aaSegmentStreamOpen", v127, v128, v262);
        v291 = 0;
        v293 = 0;
        v295 = 0;
      }

      else
      {
        if (v30[10])
        {
          if (*(a1 + 48))
          {
            fprintf(*MEMORY[0x29EDCA610], "ImagePatch: Patching with excess space <= %d bytes.\n", *(v30 + 26));
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 245, 135, "ImagePatch: Patch not created with in place. No bound on needed excess space.", v202, v203, v204, v262);
        }

        v233 = v300[265];
        if (*(v297 + 2120) > v233)
        {
          v233 = *(v297 + 2120);
        }

        v292 = v233;
        v302 = AAFileStreamOpenWithPath(*(v297 + 2048), 2, 0x1A4u);
        if (!v302)
        {
          v252 = "AAFileStreamOpenWithPath";
          v253 = 252;
          goto LABEL_359;
        }

        if (v92)
        {
          if ((io_set_nocache(v302) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 257, 135, "io_set_nocache %s", v234, v235, v236, *(v297 + 2048));
          }

          v237 = *(a1 + 48);
          v238 = v237 <= 3 ? v237 << 62 : 0xC000000000000000;
          v302 = aaCacheStreamOpen(v302, 0x1000000uLL, 14, 1, v238);
          if (!v302)
          {
            v252 = "aaCacheStreamOpen";
            v253 = 259;
            goto LABEL_359;
          }
        }

        v287 = aaInSituStreamOpen(v302, v292, *(v30 + 26), *(a1 + 48), 1);
        if (!v287)
        {
          v252 = "aaInSituStreamOpen";
          v253 = 264;
          goto LABEL_359;
        }

        if (*(v30 + 4) <= 1u)
        {
          s = 0;
          v299 = 0;
          compressed_stream = 0;
          v290 = 0;
          v280 = 0;
          v301 = v287;
          v126 = aaSegmentStreamOpen(v287, v297);
          goto LABEL_145;
        }

        v301 = v287;
LABEL_337:
        s = aaSegmentStreamOpen(v287, v300);
        if (!s)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 290, 135, 0, "aaSegmentStreamOpen", v242, v243, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          s = 0;
          goto LABEL_360;
        }

        v299 = aaForkInputStreamOpen(s, v300, 0, v239, v240, v241, v242, v243);
        if (!v299)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 292, 135, 0, "aaForkInputStreamOpen", v244, v245, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          goto LABEL_360;
        }

        compressed_stream = aaIntervalInputStreamOpen(v6, *&v303[8 * v296], *&v303[8 * v305]);
        if (compressed_stream)
        {
          v248 = *(a1 + 48);
          if (v248 <= 3)
          {
            v249 = v248 << 62;
          }

          else
          {
            v249 = 0xC000000000000000;
          }

          v290 = AADecompressionInputStreamOpen(compressed_stream, v249, *(a1 + 44));
          if (v290)
          {
            if (v294)
            {
              goto LABEL_319;
            }

            v280 = 0;
            goto LABEL_144;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 298, 135, 0, "AADecompressionInputStreamOpen", v250, v251, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 296, 135, 0, "aaIntervalInputStreamOpen", v246, v247, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
        }
      }

      v304 = 0;
      v306 = 0;
      goto LABEL_360;
    }

    *(*v29 + 2048) = *(a1 + 16);
  }

  v217 = *v29;
  v218 = *(*v29 + 2048);
  v219 = *(a1 + 24);
  v220 = strcmp(v218, v219);
  v221 = *(a1 + 48);
  if (v220)
  {
    if (v221 >= 2)
    {
      fwrite("ImagePatch: Digest match. Copy input to output.\n", 0x30uLL, 1uLL, *MEMORY[0x29EDCA610]);
      v217 = *v29;
    }

    if ((copyFileSegment(v218, 0, *(v217 + 2120), v219) & 0x80000000) != 0)
    {
      v124 = "copyFileSegment";
      v125 = 607;
      goto LABEL_380;
    }
  }

  else if (v221 >= 2)
  {
    v222 = *MEMORY[0x29EDCA610];
    v223 = "ImagePatch: Digest match. Output already correct.\n";
    v224 = 50;
    goto LABEL_388;
  }

LABEL_389:
  v27 = 1;
  rawimg_show(*v29, 1, *(a1 + 48));
  if (*a1 && ((*a1)(*(a1 + 8), 100) & 0x80000000) != 0)
  {
    v124 = "callback signaled abort";
    v125 = 641;
LABEL_380:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", v125, 135, 0, v124, v110, v111, v262);
LABEL_381:
    v27 = 0;
  }

  if (*(v30 + 4))
  {
    v260 = 0;
    do
    {
      rawimg_destroy(v29[v260++]);
    }

    while (v260 < *(v30 + 4));
  }

LABEL_27:
  if (!a2)
  {
LABEL_30:
    if (AAByteStreamClose(v6) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 649, 135, 0, "AAByteStreamClose", v32, v33, v262);
      v27 = 0;
    }
  }

  free(v31);
  free(v30);
  free(v29);
  free(v28);
  if (v27)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ctrl_reader_get(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 + 0x10000;
  v9 = *(a1 + 65560);
  if (*(v9 + 18) <= a2)
  {
    return 0;
  }

  v11 = a2 + a2 * *(v9 + 8);
  if (v11 >= *(a1 + 65584))
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 65568);
  *(a1 + 65584) = -*(a1 + 65576);
  AAByteStreamClose(*(a1 + 65552));
  *(v8 + 16) = 0;
  AAByteStreamClose(*(v8 + 8));
  *(v8 + 8) = 0;
  v13 = aaIntervalInputStreamOpen(*v8, *(v9 + 38), *(v9 + 46));
  *(v8 + 8) = v13;
  if (!v13)
  {
    v27 = "aaIntervalInputStreamOpen";
    v28 = 81;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", v28, 135, 0, v27, a7, a8, v30);
    return 0;
  }

  v14 = *(v12 + 48);
  if (v14 <= 3)
  {
    v15 = v14 << 62;
  }

  else
  {
    v15 = 0xC000000000000000;
  }

  v16 = AADecompressionInputStreamOpen(v13, v15, *(v12 + 44));
  *(v8 + 16) = v16;
  if (!v16)
  {
    v27 = "AADecompressionInputStreamOpen";
    v28 = 83;
    goto LABEL_24;
  }

LABEL_8:
  while (1)
  {
    v17 = *(v8 + 40);
    v18 = *(v8 + 48);
    v19 = v17 + v18;
    if (v11 < v17 + v18)
    {
      return a1 + 8 * (v11 - v18);
    }

    *(v8 + 48) = v19;
    v20 = *(v8 + 56) - v19;
    if (v20 < v17)
    {
      v17 = v20;
    }

    v21 = *(v8 + 16);
    if (*(v21 + 16))
    {
      v22 = 0;
      v23 = 8 * v17;
      if (8 * v17)
      {
        v24 = a1;
        v25 = 8 * v17;
        while (1)
        {
          v26 = (*(v21 + 16))(*v21, v24, v25);
          if (v26 < 0)
          {
            break;
          }

          if (v26)
          {
            v24 += v26;
            v22 += v26;
            v25 -= v26;
            if (v25)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        v22 = v26;
      }

LABEL_19:
      if (v23 == v22)
      {
        continue;
      }
    }

    v27 = "aaByteStreamReadExpected";
    v28 = 91;
    goto LABEL_24;
  }
}

uint64_t ParallelArchiveCheckAndFix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v53);
  bzero(v62, 0x458uLL);
  v61 = a1;
  DefaultNThreads = *(a1 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v66 = DefaultNThreads;
  v10 = calloc(DefaultNThreads, 0x8B0uLL);
  v64 = v10;
  v11 = malloc(8 * DefaultNThreads);
  v65 = v11;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = *__error();
    v16 = "malloc";
    v17 = 365;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", v17, 13, v13, v16, v14, v15, v54);
    goto LABEL_18;
  }

  if (!realpath_DARWIN_EXTSN(*(a1 + 16), v62))
  {
    v13 = *__error();
    v16 = *(a1 + 16);
    v17 = 366;
    goto LABEL_17;
  }

  v18 = v66;
  if (v66)
  {
    v19 = 0;
    do
    {
      v20 = (v64 + 2224 * v19);
      *v20 = &v61;
      *(v65 + v19++) = v20;
    }

    while (v19 != v18);
  }

  v63 = ThreadPoolCreate(v18, v65, checkAndFixThreadProc);
  if (!v63)
  {
    v16 = "ThreadPoolCreate";
    v17 = 375;
    v13 = 0;
    goto LABEL_17;
  }

  v55 = 0u;
  v56 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  DWORD1(v55) = *(a1 + 4);
  v26 = *(a1 + 40);
  *(&v55 + 1) = *(a1 + 24);
  *(&v56 + 1) = v26;
  *&v57 = checkAndFixBeginEntry;
  *&v59 = checkAndFixEndEntry;
  *(&v57 + 1) = checkAndFixBlob;
  *&v58 = checkAndFixPayload;
  v60 = &v61;
  if (ParallelArchiveRead(&v55, v21, v22, v23, v24, v25, v14, v15))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 390, 13, 0, "reading manifest", v27, v28, v54);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  if ((ThreadPoolDestroy(v63) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 393, 13, 0, "ThreadPoolDestroy failed", v39, v40, v54);
    v29 = 0;
    v63 = 0;
    goto LABEL_19;
  }

  v63 = 0;
  v41 = atomic_load(v72);
  if (v41 > 0)
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  if (*a1 >= 1)
  {
    v42 = MEMORY[0x29EDCA610];
    v43 = *MEMORY[0x29EDCA610];
    v44 = atomic_load(&v67);
    fprintf(v43, "%12lld entries in manifest\n", v44);
    v45 = *v42;
    v46 = atomic_load(&v68);
    fprintf(v45, "%12lld entries valid\n", v46);
    v47 = *v42;
    v48 = atomic_load(&v69);
    fprintf(v47, "%12lld entries fixed\n", v48);
    v49 = *v42;
    v50 = atomic_load(&v70);
    fprintf(v49, "%12lld entries invalid\n", v50);
    v51 = *v42;
    v52 = atomic_load(&v71);
    fprintf(v51, "%12lld entries missing\n", v52);
  }

LABEL_19:
  if ((ThreadPoolDestroy(v63) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 409, 13, 0, "ThreadPoolDestroy", v30, v31, v54);
    v29 = 0;
  }

  v32 = v64;
  if (v64)
  {
    if (v66)
    {
      v33 = 0;
      v34 = 2216;
      do
      {
        free(*(v64 + v34));
        ++v33;
        v34 += 2224;
      }

      while (v33 < v66);
      v32 = v64;
    }

    free(v32);
  }

  free(v65);
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if (v29)
    {
      if (atomic_load(&v70))
      {
        result = 0;
      }

      else
      {
        v37 = atomic_load(&v71);
        result = v37 == 0;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t checkAndFixThreadProc(uint64_t **a1)
{
  v64 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 19);
  v3 = *a1;
  v5 = (*a1 + 1);
  v4 = **a1;
  v6 = *v4;
  v8 = *(v4 + 48);
  v7 = *(v4 + 56);
  v9 = *(v4 + 12);
  bzero(v63, 0x800uLL);
  memset(&v57, 0, sizeof(v57));
  atomic_fetch_add_explicit(v3 + 134, 1uLL, memory_order_relaxed);
  if (concatPath(v63, 0x800uLL, v5, v2))
  {
    LOBYTE(v54) = v2;
    v12 = "building full path: %s";
    v13 = 80;
LABEL_3:
    v14 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", v13, 13, v14, v12, v10, v11, v54);
    atomic_fetch_add_explicit(v3 + 139, 1uLL, memory_order_relaxed);
LABEL_5:
    v15 = 2;
    v16 = 137;
    goto LABEL_10;
  }

  if (v6 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "> %s %zu\n", v63, a1[276]);
  }

  if (lstat(v63, &v57))
  {
    goto LABEL_9;
  }

  if (*(a1 + 3) == 72)
  {
    v19 = 70;
  }

  else
  {
    v19 = *(a1 + 3);
  }

  if (v19 != getAAEntryType(v57.st_mode))
  {
    goto LABEL_5;
  }

  v20 = *(a1 + 3) == 70 && statIsCompressed(v57.st_flags) != 0;
  v21 = *(a1 + 2);
  if ((v21 & 8) != 0)
  {
    if (statIsCompressed(*(a1 + 6)))
    {
      v20 = 1;
    }

    v21 = *(a1 + 2);
  }

  v22 = *(*v3 + 8) & v21;
  v23 = *(a1 + 3);
  if (v23 == 70)
  {
    v61 = 0;
    v60 = 0;
    v62 = 0;
    __s2 = 0u;
    v59 = 0u;
    v56 = 0;
    if ((v22 & 0x2000) != 0)
    {
      v24 = &v60;
    }

    else
    {
      v24 = 0;
    }

    if ((v22 & 0x4000) != 0)
    {
      p_s2 = &__s2;
    }

    else
    {
      p_s2 = 0;
    }

    if ((v22 & 0x1000) != 0)
    {
      v26 = &v56;
    }

    else
    {
      v26 = 0;
    }

    if ((getFileDigests(v63, v24, p_s2, v26) & 0x80000000) != 0)
    {
      v54 = v63;
      v12 = "computing file digests: %s";
      v13 = 120;
      goto LABEL_3;
    }

    v27 = (v22 & 0x2000) != 0 && (*(a1 + 100) != v60 || *(a1 + 108) != v61 || *(a1 + 29) != v62);
    if ((v22 & 0x4000) != 0 && a1[15] ^ __s2 | a1[16] ^ *(&__s2 + 1) | a1[17] ^ v59 | a1[18] ^ *(&v59 + 1))
    {
      v27 = 1;
    }

    if ((v22 & 0x1000) != 0 && *(a1 + 24) != v56)
    {
      v27 = 1;
    }

    v30 = !v27;
    v33 = *(a1 + 3);
    if (v33 != 76 || (v22 & 0x10000) == 0)
    {
      if (v27)
      {
        goto LABEL_62;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    if (v23 != 76 || (v22 & 0x10000) == 0)
    {
      goto LABEL_73;
    }

    v30 = 1;
  }

  bzero(&__s2, 0x400uLL);
  if (readlink(v63, &__s2, 0x400uLL) < 0)
  {
    v14 = *__error();
    v54 = v63;
    v12 = "reading link: %s";
    v13 = 136;
    goto LABEL_4;
  }

  if (strncmp(a1 + 1176, &__s2, 0x400uLL) != 0 || !v30)
  {
    v33 = *(a1 + 3);
LABEL_62:
    if (v33 == 70)
    {
      v28 = 1;
      if (a1[276])
      {
        v29 = 1;
        if ((v9 & 1) == 0)
        {
          __s2 = 0uLL;
          *&v59 = 0;
          v34 = open(v63, 2);
          if (v34 < 0)
          {
            v14 = *__error();
            v54 = v63;
            v12 = "%s";
            v13 = 154;
            goto LABEL_4;
          }

          v35 = v34;
          v36 = ParallelArchiveECCFixFileSegment(v34, 0, v57.st_size, a1[277], a1[276], &__s2);
          close(v35);
          if (v36 < 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 163, 13, "Data not fixed with ECC (diag 0x%08x): %s", v37, v38, v39, SBYTE4(v59));
            v29 = 1;
          }

          else
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 169, 13, "Data fixed with ECC (diag 0x%08x): %s", v37, v38, v39, SBYTE4(v59));
            v29 = 0;
          }

          ParallelCompressionUpdateWarning(DWORD1(v59) | 0xFF000000, "");
          if (lstat(v63, &v57))
          {
            goto LABEL_9;
          }

          v28 = 1;
          if ((v22 & 2) != 0)
          {
            goto LABEL_79;
          }

LABEL_74:
          v40 = 0;
          goto LABEL_80;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = 1;
LABEL_73:
    if ((v22 & 2) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_79;
  }

LABEL_68:
  v28 = 0;
  v29 = 0;
  if ((v22 & 2) == 0)
  {
    goto LABEL_74;
  }

LABEL_79:
  v40 = v57.st_uid != *(a1 + 4);
LABEL_80:
  if ((v22 & 4) != 0)
  {
    if (v57.st_gid != *(a1 + 5))
    {
      v40 = 1;
    }

    if ((v22 & 0x10) == 0)
    {
LABEL_82:
      if ((v22 & 8) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }
  }

  else if ((v22 & 0x10) == 0)
  {
    goto LABEL_82;
  }

  if ((*(a1 + 7) & 0xFFF) != (v57.st_mode & 0xFFF))
  {
    v40 = 1;
  }

  if ((v22 & 8) != 0)
  {
LABEL_83:
    if (v57.st_flags != *(a1 + 6))
    {
      v40 = 1;
    }
  }

LABEL_85:
  if (*(a1 + 3) != 70)
  {
    goto LABEL_102;
  }

  IsCompressed = statIsCompressed(v57.st_flags);
  if (v20)
  {
    if (IsCompressed)
    {
      goto LABEL_102;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 200, 13, "Compressing the file: %s\n", v42, v43, v44, v63);
    if ((ParallelCompressionAFSCCompress(v63, 1) & 0x80000000) != 0)
    {
      v48 = "Error compressing file";
      v49 = 201;
LABEL_100:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", v49, 13, v48, v45, v46, v47, v55);
    }
  }

  else
  {
    if (!IsCompressed)
    {
      goto LABEL_102;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 212, 13, "Decompressing the file: %s\n", v42, v43, v44, v63);
    if ((ParallelCompressionAFSCCompress(v63, 0) & 0x80000000) != 0)
    {
      v48 = "Error decompressing file";
      v49 = 213;
      goto LABEL_100;
    }
  }

  if (lstat(v63, &v57))
  {
LABEL_9:
    v15 = 3;
    v16 = 138;
    goto LABEL_10;
  }

LABEL_102:
  v50 = v40;
  if (v40)
  {
    v50 = v40;
    if ((v9 & 2) == 0)
    {
      if ((yaa_setEntryAttributes(v63, a1 + 2, 0, 0) & 0x80000000) != 0)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 234, 13, "Attr not fixed: %s", v51, v52, v53, v63);
        v50 = 1;
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 238, 13, "Attr fixed: %s", v51, v52, v53, v63);
        v50 = 0;
      }
    }
  }

  if (v50 | v29)
  {
    goto LABEL_5;
  }

  v15 = v40 | v28;
  v16 = 135;
  if (v15)
  {
    v16 = 136;
  }

LABEL_10:
  atomic_fetch_add_explicit(&v3[v16], 1uLL, memory_order_relaxed);
  if (v8)
  {
    v8(v7, v15, a1 + 1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

void *checkAndFixBeginEntry(void *result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1] != 77)
  {
    v9 = result;
    Worker = ThreadPoolGetWorker(result[129], a2, a3, a4, a5, a6, a7, a8);
    v9[130] = Worker;
    if (Worker)
    {
      *(Worker + 2208) = 0;
      v13 = (Worker + 8);

      return memcpy(v13, a2, 0x890uLL);
    }

    else
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixBeginEntry", 291, 13, 0, "ThreadPoolGetWorker failed", v11, v12, v14);
      atomic_fetch_add_explicit(v9 + 139, 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

size_t checkAndFixEndEntry(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 1040);
  if (v8)
  {
    v9 = result;
    result = ThreadPoolRunWorker(*(result + 1032), v8, a3, a4, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixEndEntry", 305, 13, 0, "ThreadPoolRunWorker failed", v10, v11, v12);
      atomic_fetch_add_explicit((v9 + 1112), 1uLL, memory_order_relaxed);
    }

    *(v9 + 1040) = 0;
  }

  return result;
}

uint64_t checkAndFixBlob(uint64_t result, _DWORD *a2, size_t __size)
{
  v3 = *(result + 1040);
  if (v3)
  {
    v4 = result;
    v5 = (*a2 & 0xDFDFDF) == 4408665;
    *(result + 1068) = (*a2 & 0xDFDFDF) == 4408665;
    if (v5 && *(v3 + 2200) < __size)
    {
      *(v3 + 2200) = __size;
      result = reallocf(*(v3 + 2216), __size);
      *(v3 + 2216) = result;
      if (!result)
      {
        v6 = __error();
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixBlob", 327, 13, *v6, "malloc", v7, v8, v9);
        atomic_fetch_add_explicit((v4 + 1112), 1uLL, memory_order_relaxed);
      }
    }
  }

  return result;
}

uint64_t checkAndFixPayload(uint64_t result, const void *a2, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 1040);
  if (v8)
  {
    v9 = result;
    if (*(result + 1068))
    {
      v11 = v8[276];
      if (v11 + __n <= v8[275])
      {
        result = memcpy((v8[277] + v11), a2, __n);
        v8[276] += __n;
      }

      else
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixPayload", 342, 13, 0, "Invalid YEC blob size", a7, a8, v12);
        atomic_fetch_add_explicit((v9 + 1112), 1uLL, memory_order_relaxed);
      }
    }
  }

  return result;
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
    v7 = IMemStreamCreate(a1, a2);
    if (v7)
    {
      DWORD2(v20) = a3;
      LODWORD(v20) = 0;
      DWORD1(v20) = getDefaultNThreads();
      *&v21 = 0x200000;
      *(&v21 + 1) = IMemStreamRead;
      *(&v22 + 1) = v7;
      *&v23 = getCompressedSizeCounterProc;
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

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", v16, 39, 0, v15, v5, v6, v18);
    v3 = -1;
LABEL_9:
    IMagicStreamDestroy(v7);
  }

  return v3;
}

uint64_t IDecoderStreamThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionDecode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t IDecoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v18 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v19 = SharedBufferCreate(a4, v11, v12, v13, v14, v15, v16, v17);
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
    *(v18 + 32) = SharedBufferWrite;
    *(v18 + 40) = SharedBufferAbort;
    *(v18 + 48) = v19;
    if (createThread((v18 + 56), IDecoderStreamThreadProc, v18, 0))
    {
      v22 = *__error();
      v23 = "failed to start decoder thread";
      v24 = 125;
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", v24, 39, v22, v23, v20, v21, v29);
      IDecoderStreamDestroy(v18);
      return 0;
    }
  }

  else
  {
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v25, "malloc", v26, v27, v29);
  }

  return v18;
}

void IDecoderStreamDestroy(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = SharedBufferRead(a1[8], v11, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer", v3, v4, v10);
    }

LABEL_7:
    v5 = a1[7];
    if (v5 && joinThread(v5))
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v6, "failed to join decoder thread", v7, v8, v10);
    }

    SharedBufferDestroy(a1[8]);
    free(a1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t IDecoderStreamRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return SharedBufferRead(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

size_t IDecoderStreamAbort(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 64), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t OEncoderStreamThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionEncode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t OEncoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
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
    v23 = SharedBufferCreate(a4, v15, v16, v17, v18, v19, v20, v21);
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
    *(v22 + 24) = SharedBufferRead;
    *(v22 + 32) = SharedBufferAbort;
    *(v22 + 40) = v23;
    *(v22 + 48) = a1;
    *(v22 + 56) = a2;
    *(v22 + 64) = a3;
    if (createThread((v22 + 80), OEncoderStreamThreadProc, v22, 0))
    {
      v26 = *__error();
      v27 = "failed to start encoder thread";
      v28 = 219;
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", v28, 39, v26, v27, v24, v25, v40);
      OEncoderStreamDestroy(v22, v32, v33, v34, v35, v36, v37, v38);
      return 0;
    }
  }

  else
  {
    v29 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v29, "malloc", v30, v31, v40);
  }

  return v22;
}