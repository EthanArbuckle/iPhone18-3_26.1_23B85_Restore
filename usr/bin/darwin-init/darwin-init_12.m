uint64_t sub_1001094BC(uint64_t a1)
{
  if ((sub_1000FAA6C((a1 + 168), -2) & 0x80000000) != 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", v5, 87, 0, v4, v2, v3, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100109578(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received", a7, a8, v20);
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", v15, 37, 0, v14, a7, a8, v20);
  v19 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v9 + 112), &v19, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100109788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld", a7, a8, *(a2 + 48));
LABEL_20:
    v13 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 4) != 1)
  {
    v17 = vrev64q_s8(*(a2 + 56));
    v26 = vextq_s8(v17, v17, 8uLL);
    v18 = sub_1001099EC(*(a1 + 56), *(a1 + 72), &v26, 16);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v13 = v18;
      if (v18 == 16)
      {
        v19 = sub_1001099EC(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v19 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload", v20, v21, v25);
          v13 = 16;
        }

        else
        {
          v13 = v19 + 16;
          if (v19 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v20, v21, v19);
        }
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)", v15, v16, v18);
      }

      goto LABEL_22;
    }

    v22 = "writing block header";
    v23 = 345;
    goto LABEL_19;
  }

  v14 = sub_1001099EC(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v14 < 0)
  {
    v22 = "writing block";
    v23 = 334;
LABEL_19:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", v23, 37, 0, v22, v15, v16, v25);
    goto LABEL_20;
  }

  v13 = v14;
  if (v14 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)", v15, v16, v14);
LABEL_22:
  v24 = 0;
  *(a1 + 88) += v13;
  atomic_compare_exchange_strong((a1 + 112), &v24, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1001099EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed", v10, v11, v16);
    return v12;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v13, v14, v16);
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
    v11 = sub_1000F4290();
  }

  a1[2] = v11;
  if (a1[1] == 1)
  {
    if (sub_10010A524(*a2, *(a2 + 16), &v122, 4) != 4)
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
      v15 = sub_100119FE4(v14);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", v17, 37, 0, v16, v12, v13, v111);
LABEL_90:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader", v12, v13, v111);
        goto LABEL_91;
      }
    }

    v123[0] = 0;
    if (sub_10010A524(*a2, *(a2 + 16), v123, 8) != 8)
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
      v23 = sub_10011A01C(v14);
      fprintf(v22, "Decoder: %s\n", v23);
      fprintf(__stderrp, "Blocksize: %llu\n");
    }
  }

  else
  {
    v18 = *(a1 + 2);
    v19 = sub_10011A010(*a1);
    v20 = sub_100119FE4(v19);
    if (v20 == 63)
    {
      goto LABEL_90;
    }

    v122 = 544891504;
    HIBYTE(v122) = v20;
    if (sub_1001099EC(*(a2 + 24), *(a2 + 40), &v122, 4) != 4)
    {
      goto LABEL_90;
    }

    if (a3)
    {
      a3[1] += 4;
    }

    v123[0] = bswap64(v18);
    if (sub_1001099EC(*(a2 + 24), *(a2 + 40), v123, 8) != 8)
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
      sub_100119FC4(*a1);
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
    v27 = sub_10011AE94(v26);
  }

  else
  {
    v27 = sub_10011AE74(v26);
  }

  v120[0] = v27;
  v28 = calloc(a1[2], 0x48uLL);
  v120[1] = v28;
  if (!v28)
  {
    v34 = 468;
LABEL_86:
    v86 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v34, 37, *v86, "malloc", v87, v88, v111);
LABEL_87:
    v89 = "initFilterState";
    v90 = 510;
LABEL_103:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", v90, 37, 0, v89, v42, v43, v111);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v39, "malloc", v40, v41, v111);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", v97, 37, v95, v96, v61, v62, v111);
    goto LABEL_102;
  }

  v47 = v46;
  if (v45 >= 1)
  {
    v48 = v120[1];
    v49 = (v45 + 1) & 0xFFFFFFFE;
    v50 = vdupq_n_s64(v45 - 1);
    v51 = xmmword_1003772E0;
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
  v55 = sub_1001084A4(v45, v46, sub_100109578, &v114, sub_100109788, 0);
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

    v67 = sub_10010928C(v63, v56, v57, v58, v59, v60, v61, v62);
    if (!v67)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline", v68, v69, v111);
      v83 = 0;
LABEL_82:
      v65 = 0;
      goto LABEL_83;
    }

    v70 = v67;
    if (DWORD1(v114) == 1)
    {
      v71 = sub_10010A524(v116, v117, v123, 16);
      if (v71)
      {
        v78 = v71;
        if (v71 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header", v76, v77, v111);
          v78 = 0;
        }

        else if (v71 == 16)
        {
          v79 = v44;
          v80 = bswap64(v123[0]);
          v81 = bswap64(v123[1]);
          if (v81 > v79 || v80 > v79)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v76, v77, v81);
            v78 = 16;
            v44 = v79;
          }

          else
          {
            v82 = sub_10010A524(v116, v117, v70[1], v81);
            if (v82 < 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload", v76, v77, v111);
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

              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v76, v77, v82);
            }

            v44 = v113;
          }
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v76, v77, v71);
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
      v84 = sub_10010A524(v116, v117, *(v67 + 8), v44);
      if (v84 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block", v76, v77, v111);
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
    if ((sub_1001093C0(v63, v70, v72, v73, v74, v75, v76, v77) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker", v61, v62, v111);
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
  if ((sub_100108EA0(v63) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy", v105, v106, v111);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed", v108, v109, v111);
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

uint64_t sub_10010A524(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed", v10, v11, v14);
  return v12;
}

uint64_t sub_10010A5D0(_BYTE *a1, unsigned int a2, int a3)
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
    sub_10010403C(v21);
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

  j__CC_SHA1_Init(&c);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithFD", 44, 102, *v11, "read", v12, v13, v17.count[0]);
    v14 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v9 = v8;
  while (v9)
  {
    v10 = *a1;
    if (*a1)
    {
      sub_10010404C(v21, v6, v9);
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

    j__CC_SHA1_Update(&c, v6, v9);
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
    j__CC_SHA1_Final(a1 + 8, &c);
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

  sub_10010409C(a1 + 1, v21);
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

uint64_t sub_10010A8A4(_BYTE *a1, unsigned int a2, char *a3, const char *a4)
{
  v4 = a4;
  if ((sub_1000F4680(v19, 0x400uLL, a3, a4) & 0x80000000) != 0)
  {
    v14 = "invalid path";
    v15 = 73;
    v16 = 0;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", v15, 102, v16, v14, v7, v8, v18);
    return 0xFFFFFFFFLL;
  }

  v9 = open(v19, 0);
  if (v9 < 0)
  {
    v16 = *__error();
    v18 = v19;
    v14 = "%s";
    v15 = 77;
    goto LABEL_7;
  }

  v10 = v9;
  if ((sub_10010A5D0(a1, a2, v9) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 79, 102, 0, "computing hashes: %s", v11, v12, v4);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  close(v10);
  return v13;
}

uint64_t sub_10010A9F0(int a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4)
{
  result = 0xFFFFFFFFLL;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      *v9.count = 0uLL;
      sub_10010403C(&v9);
      sub_10010404C(&v9, a4, a3);
      sub_10010409C(a2, &v9);
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      memset(&v9, 0, 96);
      j__CC_SHA1_Init(&v9);
      j__CC_SHA1_Update(&v9, a4, a3);
      j__CC_SHA1_Final(a2, &v9);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        memset(&v9, 0, 104);
        CC_SHA256_Init(&v9);
        CC_SHA256_Update(&v9, a4, a3);
        CC_SHA256_Final(a2, &v9);
        break;
      case 4:
        memset(&v9, 0, sizeof(v9));
        CC_SHA384_Init(&v9);
        CC_SHA384_Update(&v9, a4, a3);
        CC_SHA384_Final(a2, &v9);
        break;
      case 5:
        memset(&v9, 0, sizeof(v9));
        CC_SHA512_Init(&v9);
        CC_SHA512_Update(&v9, a4, a3);
        CC_SHA512_Final(a2, &v9);
        break;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t sub_10010AB90(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_10037C6D0[v1 >> 12];
  }
}

uint64_t sub_10010ABC0(char *__s, char *a2, char *a3, AAHeader header)
{
  if (__s)
  {
    memset_s(__s, 0x48uLL, 0, 0x48uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  if (a3)
  {
    memset_s(a3, 0xACuLL, 0, 0xACuLL);
  }

  FieldCount = AAHeaderGetFieldCount(header);
  if (FieldCount)
  {
    v9 = FieldCount;
    v10 = 0;
    value = 0;
    hash_function = 0;
    do
    {
      FieldKey = AAHeaderGetFieldKey(header, v10);
      if (!__s)
      {
        goto LABEL_34;
      }

      v12 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) <= 0x474C45)
      {
        if (v12 == 4475207)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 2u;
            *(__s + 2) = value;
          }
        }

        else if (v12 == 4475221)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 1u;
            *(__s + 1) = value;
          }
        }

        else if (v12 == 4476749 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 8u;
          *(__s + 4) = value;
        }
      }

      else if ((FieldKey.ikey & 0xFFFFFF) > 0x4D5442)
      {
        if (v12 == 5067843)
        {
          if (AAHeaderGetFieldTimespec(header, v10, (__s + 40)) < 0)
          {
            goto LABEL_34;
          }

          v13 = *__s | 0x20;
          goto LABEL_31;
        }

        if (v12 == 5067853 && (AAHeaderGetFieldTimespec(header, v10, (__s + 56)) & 0x80000000) == 0)
        {
          v13 = *__s | 0x40;
          goto LABEL_31;
        }
      }

      else if (v12 == 4672582)
      {
        if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 4u;
          *(__s + 3) = value;
        }
      }

      else if (v12 == 5067842 && (AAHeaderGetFieldTimespec(header, v10, (__s + 24)) & 0x80000000) == 0)
      {
        v13 = *__s | 0x10;
LABEL_31:
        *__s = v13;
      }

LABEL_34:
      if (a3)
      {
        v14 = FieldKey.ikey & 0xFFFFFF;
        if ((FieldKey.ikey & 0xFFFFFF) <= 0x334852)
        {
          if (v14 == 3229779)
          {
            if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 2)
            {
              *a3 |= 2u;
              *(a3 + 8) = *v25;
              *(a3 + 6) = v26;
            }
          }

          else if (v14 == 3295315 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 3)
          {
            *a3 |= 4u;
            v15 = v26;
            *(a3 + 28) = *v25;
            *(a3 + 44) = v15;
          }
        }

        else if (v14 == 3360851)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 4)
          {
            *a3 |= 8u;
            v16 = v26;
            *(a3 + 60) = *v25;
            *(a3 + 76) = v16;
            *(a3 + 92) = v27;
          }
        }

        else if (v14 == 3491923)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 5)
          {
            *a3 |= 0x10u;
            v17 = v26;
            *(a3 + 108) = *v25;
            *(a3 + 124) = v17;
            v18 = v28;
            *(a3 + 140) = v27;
            *(a3 + 156) = v18;
          }
        }

        else if (v14 == 5458755 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 1)
        {
          *a3 |= 1u;
          *(a3 + 1) = *v25;
        }
      }

      if (!a2)
      {
        goto LABEL_84;
      }

      v19 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) > 0x524640)
      {
        if (v19 == 5391937)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *a2 |= 2u;
            *(a2 + 3) = value;
          }
        }

        else if (v19 == 5523009 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 1u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if (v19 != 4411984)
      {
        if (v19 == 4803654 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 4u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
      {
        v20 = *a2;
        *a2 |= 8u;
        if (value > 67)
        {
          switch(value)
          {
            case 'D':
              v21 = 4;
              goto LABEL_83;
            case 'E':
              v21 = 5;
              goto LABEL_83;
            case 'F':
              v21 = 6;
              goto LABEL_83;
          }
        }

        else
        {
          switch(value)
          {
            case 'A':
              v21 = 1;
              goto LABEL_83;
            case 'B':
              v21 = 2;
              goto LABEL_83;
            case 'C':
              v21 = 3;
LABEL_83:
              *(a2 + 1) = v21;
              goto LABEL_84;
          }
        }

        *a2 = v20 & 0xF7;
      }

LABEL_84:
      ++v10;
    }

    while (v9 != v10);
  }

  return 0;
}

uint64_t sub_10010B1BC(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, int a5)
{
  memset(&v23, 0, sizeof(v23));
  if ((fstat(a5, &v23) & 0x80000000) == 0)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v10 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v10;
    if (a4)
    {
      *(a1 + 1) = v23.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_5:
        if ((a4 & 8) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_35;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + 2) = v23.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_6:
      if ((a4 & 4) == 0)
      {
LABEL_8:
        if ((a4 & 0x30) != 0)
        {
          v22[1] = 0;
          v22[2] = 0;
          memset(v24, 0, sizeof(v24));
          v22[0] = 0x220000000005;
          if (!fgetattrlist(a5, v22, v24, 0x40uLL, 1u) && LODWORD(v24[0]) == 36)
          {
            *(a1 + 40) = *(v24 + 4);
            *(a1 + 24) = *(&v24[1] + 4);
          }

          v10 = *a1;
        }

        if ((v10 & 0x40) != 0)
        {
          *(a1 + 56) = v23.st_mtimespec;
        }

LABEL_15:
        if (!a2)
        {
LABEL_28:
          if (!a3 || (v23.st_mode & 0xF000) != 0x8000 || (sub_10010A5D0(a3, a4, a5) & 0x80000000) == 0)
          {
            return 0;
          }

          v18 = "computing file digests";
          v19 = 290;
          goto LABEL_39;
        }

        memset_s(a2, 0x38uLL, 0, 0x38uLL);
        *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
        st_mode = v23.st_mode;
        v12 = v23.st_mode & 0xF000;
        if (v12 == 0x8000)
        {
          if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          *&v24[0] = 0;
          v21 = 0;
          LODWORD(v22[0]) = 0;
          if ((ParallelCompressionAFSCGetMetadataFD(a5, v24, v22, &v21) & 0x80000000) != 0)
          {
            v18 = "querying AFSC metadata";
            v19 = 277;
LABEL_39:
            v17 = 0;
            goto LABEL_40;
          }

          v15 = v21;
          *(a2 + 2) = v22[0];
          *(a2 + 3) = v15;
          st_mode = v23.st_mode;
          v12 = v23.st_mode & 0xF000;
        }

        if (v12 != 0x8000 && v12 != 0x4000)
        {
LABEL_25:
          if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
          {
            *(a2 + 1) = sub_1000F59EC(a5);
          }

          goto LABEL_28;
        }

LABEL_23:
        if ((*a2 & 4) != 0)
        {
          *(a2 + 2) = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
          st_mode = v23.st_mode;
        }

        goto LABEL_25;
      }

LABEL_7:
      *(a1 + 3) = v23.st_flags;
      goto LABEL_8;
    }

LABEL_35:
    *(a1 + 4) = v23.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = *__error();
  v18 = "fstat";
  v19 = 217;
LABEL_40:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", v19, 102, v17, v18, v13, v14, v20);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10010B4C4(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, char *__s, const char *a6)
{
  memset(&v30, 0, sizeof(v30));
  if ((sub_1000F4680(v32, 0x800uLL, __s, a6) & 0x80000000) != 0)
  {
    v21 = "invalid path";
    v22 = 309;
LABEL_36:
    v23 = 0;
LABEL_38:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", v22, 102, v23, v21, v10, v11, v27);
    return 0xFFFFFFFFLL;
  }

  if (lstat(v32, &v30) < 0)
  {
    v23 = *__error();
    v27 = v32;
    v21 = "lstat: %s";
    v22 = 310;
    goto LABEL_38;
  }

  if (a1)
  {
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v12 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v12;
    if (a4)
    {
      *(a1 + 1) = v30.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_6:
        if ((a4 & 8) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_42;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 2) = v30.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_7:
      if ((a4 & 4) == 0)
      {
LABEL_9:
        if ((a4 & 0x30) != 0)
        {
          v29[1] = 0;
          v29[2] = 0;
          memset(v31, 0, sizeof(v31));
          v29[0] = 0x220000000005;
          if (!getattrlist(v32, v29, v31, 0x40uLL, 1u) && LODWORD(v31[0]) == 36)
          {
            *(a1 + 40) = *(v31 + 4);
            *(a1 + 24) = *(&v31[1] + 4);
          }

          v12 = *a1;
        }

        if ((v12 & 0x40) != 0)
        {
          *(a1 + 56) = v30.st_mtimespec;
        }

        goto LABEL_16;
      }

LABEL_8:
      *(a1 + 3) = v30.st_flags;
      goto LABEL_9;
    }

LABEL_42:
    *(a1 + 4) = v30.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  if (!a2)
  {
    goto LABEL_29;
  }

  memset_s(a2, 0x38uLL, 0, 0x38uLL);
  *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
  st_mode = v30.st_mode;
  v14 = v30.st_mode & 0xF000;
  if (v14 == 0x8000)
  {
    if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
    {
LABEL_24:
      if ((*a2 & 4) != 0)
      {
        *(a2 + 2) = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
        st_mode = v30.st_mode;
      }

      goto LABEL_26;
    }

    *&v31[0] = 0;
    v28 = 0;
    LODWORD(v29[0]) = 0;
    if ((ParallelCompressionAFSCGetMetadata(v32, v31, v29, &v28) & 0x80000000) == 0)
    {
      v15 = v28;
      *(a2 + 2) = v29[0];
      *(a2 + 3) = v15;
      st_mode = v30.st_mode;
      v14 = v30.st_mode & 0xF000;
      goto LABEL_22;
    }

    v27 = v32;
    v21 = "querying AFSC metadata: %s";
    v22 = 370;
    goto LABEL_36;
  }

LABEL_22:
  if (v14 == 0x8000 || v14 == 0x4000)
  {
    goto LABEL_24;
  }

LABEL_26:
  if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
  {
    *(a2 + 1) = sub_1000F5FF4(v32);
  }

LABEL_29:
  if (!a3 || (v30.st_mode & 0xF000) != 0x8000)
  {
    return 0;
  }

  v16 = open(v32, 0);
  if (v16 < 0)
  {
    v24 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 384, 102, v24, "open: %s", v25, v26, v32);
  }

  else
  {
    v17 = v16;
    if ((sub_10010A5D0(a3, a4, v16) & 0x80000000) == 0)
    {
      close(v17);
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 385, 102, 0, "computing file digests: %s", v18, v19, v32);
    close(v17);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10010B878(char *a1, char *__s, const char *a3, char a4)
{
  if ((sub_1000F4680(v64, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    v11 = "invalid path";
    v12 = 399;
    v13 = 0;
LABEL_33:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", v12, 102, v13, v11, v6, v7, v60);
    return 0xFFFFFFFFLL;
  }

  v62[1] = 0;
  v62[2] = 0;
  v62[0] = 5;
  memset(v63, 0, sizeof(v63));
  v8 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v63[0] = *(a1 + 40);
    v9 = 512;
    HIDWORD(v62[0]) = 512;
    v10 = 16;
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
  if ((*a1 & 0x40) != 0)
  {
LABEL_7:
    v14 = (v63 + v10);
    v15 = *(a1 + 56);
    *v14 = v15;
    v14[1] = v15;
    v10 |= 0x20u;
    v9 |= 0x1400u;
    HIDWORD(v62[0]) = v9;
  }

LABEL_8:
  if ((v8 & 0x10) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v16 = *(a1 + 1);
    if ((v8 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  *(v63 + v10) = *(a1 + 24);
  v10 += 16;
  HIDWORD(v62[0]) = v9 | 0x2000;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  v16 = -1;
  if ((v8 & 2) != 0)
  {
LABEL_11:
    v17 = *(a1 + 2);
    goto LABEL_15;
  }

LABEL_14:
  v17 = -1;
LABEL_15:
  memset(&v61, 0, sizeof(v61));
  if (lstat(v64, &v61) < 0)
  {
    v23 = __error();
    if ((a4 & 1) != 0 && *v23 == 13)
    {
      return 0;
    }

    v13 = *__error();
    v60 = v64;
    v11 = "%s";
    v12 = 451;
    goto LABEL_33;
  }

  v18 = v61.st_mode & 0xF000;
  if (v18 != 0x4000 && v18 != 40960 && v18 != 0x8000)
  {
    if ((*a1 & 1) != 0 && v16 != v61.st_uid || (v21 = 1, (*a1 & 2) != 0) && v17 != v61.st_gid)
    {
      if (!lchown(v64, v16, v17) || (v25 = __error(), (a4 & 1) != 0) && *v25 == 1)
      {
        v21 = 1;
      }

      else
      {
        v43 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 502, 102, *v43, "%s", v44, v45, v64);
        v21 = 0;
      }
    }

    if ((*a1 & 8) != 0)
    {
      v46 = *(a1 + 4) & 0xFFF;
      if (v46 != (v61.st_mode & 0xFFF))
      {
        if (lchmod(v64, v46))
        {
          v47 = __error();
          if ((a4 & 1) == 0 || *v47 != 1)
          {
            v48 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 507, 102, *v48, "%s", v49, v50, v64);
            v21 = 0;
          }
        }
      }
    }

    if (HIDWORD(v62[0]))
    {
      if (setattrlist(v64, v62, v63, v10, 1u))
      {
        v51 = __error();
        if ((a4 & 1) == 0 || *v51 != 1)
        {
          v52 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 520, 102, *v52, "%s", v53, v54, v64);
          v21 = 0;
        }
      }
    }

    if ((*a1 & 4) != 0)
    {
      v55 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v61.st_flags >> 5) & 1));
      if (v61.st_flags != v55)
      {
        if (lchflags(v64, v55))
        {
          v56 = __error();
          if ((a4 & 1) == 0 || *v56 != 1)
          {
            v57 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 534, 102, *v57, "%s", v58, v59, v64);
            v21 = 0;
          }
        }
      }
    }

    goto LABEL_61;
  }

  v19 = open(v64, 0x200000);
  if (v19 < 0)
  {
    v13 = *__error();
    v60 = v64;
    v11 = "%s";
    v12 = 464;
    goto LABEL_33;
  }

  v20 = v19;
  if ((*a1 & 1) != 0 && v16 != v61.st_uid || (v21 = 1, (*a1 & 2) != 0) && v17 != v61.st_gid)
  {
    if (!fchown(v19, v16, v17) || (v22 = __error(), (a4 & 1) != 0) && *v22 == 1)
    {
      v21 = 1;
    }

    else
    {
      v26 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 468, 102, *v26, "%s", v27, v28, v64);
      v21 = 0;
    }
  }

  if ((*a1 & 8) != 0)
  {
    v29 = *(a1 + 4) & 0xFFF;
    if (v29 != (v61.st_mode & 0xFFF))
    {
      if (fchmod(v20, v29))
      {
        v30 = __error();
        if ((a4 & 1) == 0 || *v30 != 1)
        {
          v31 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 472, 102, *v31, "%s", v32, v33, v64);
          v21 = 0;
        }
      }
    }
  }

  if (HIDWORD(v62[0]))
  {
    if (fsetattrlist(v20, v62, v63, v10, 1u))
    {
      v34 = __error();
      if ((a4 & 1) == 0 || *v34 != 1)
      {
        v35 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 477, 102, *v35, "%s", v36, v37, v64);
        v21 = 0;
      }
    }
  }

  if ((*a1 & 4) != 0)
  {
    v38 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v61.st_flags >> 5) & 1));
    if (v61.st_flags != v38)
    {
      if (fchflags(v20, v38))
      {
        v39 = __error();
        if ((a4 & 1) == 0 || *v39 != 1)
        {
          v40 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 491, 102, *v40, "%s", v41, v42, v64);
          v21 = 0;
        }
      }
    }
  }

  close(v20);
LABEL_61:
  if (v21)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10010BEB4(char *a1, int a2, char a3)
{
  memset(&v50, 0, sizeof(v50));
  if (fstat(a2, &v50) < 0)
  {
    v9 = __error();
    if ((a3 & 1) == 0 || *v9 != 13)
    {
      v10 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 553, 102, *v10, "fstat", v11, v12, v48[0]);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v49[1] = 0;
  v49[2] = 0;
  v49[0] = 5;
  memset(v55, 0, sizeof(v55));
  v48[1] = 0;
  v48[2] = 0;
  v48[0] = 5;
  memset(v54, 0, sizeof(v54));
  v6 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v55[0] = *(a1 + 40);
    v7 = 512;
    HIDWORD(v49[0]) = 512;
    v54[0] = v55[0];
    HIDWORD(v48[0]) = 512;
    v8 = 16;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  if ((*a1 & 0x40) != 0)
  {
LABEL_9:
    v14 = *(a1 + 56);
    *(v55 + v8) = v14;
    v15 = v8 + 16;
    *(v55 + v15) = v14;
    *(v54 + v8) = v14;
    v8 |= 0x20u;
    v7 |= 0x1400u;
    HIDWORD(v49[0]) = v7;
    *(v54 + v15) = v14;
    HIDWORD(v48[0]) = v7;
  }

LABEL_10:
  if ((v6 & 0x10) != 0)
  {
    v16 = *(a1 + 24);
    *(v55 + v8) = v16;
    *(v54 + v8) = v16;
    v8 += 16;
    v7 |= 0x2000u;
    HIDWORD(v49[0]) = v7;
    HIDWORD(v48[0]) = v7;
  }

  v17 = v7;
  v18 = v8;
  if (v6)
  {
    v19 = *(a1 + 1);
    v17 = v7;
    v18 = v8;
    if (v19 != v50.st_uid)
    {
      *(v55 + v8) = v19;
      v18 = v8 + 4;
      v17 = v7 | 0x8000;
      HIDWORD(v49[0]) = v7 | 0x8000;
    }
  }

  if ((v6 & 2) != 0)
  {
    v20 = *(a1 + 2);
    if (v20 != v50.st_gid)
    {
      *(v55 + v18) = v20;
      v18 += 4;
      v17 |= 0x10000u;
      HIDWORD(v49[0]) = v17;
    }
  }

  if ((v6 & 8) != 0)
  {
    v21 = *(a1 + 4) & 0xFFF;
    if (v21 != (v50.st_mode & 0xFFF))
    {
      *(v55 + v18) = v21;
      v18 += 4;
      v17 |= 0x20000u;
      HIDWORD(v49[0]) = v17;
      *(v54 + v8) = v21;
      v8 += 4;
      v7 |= 0x20000u;
      HIDWORD(v48[0]) = v7;
    }
  }

  if ((v6 & 4) != 0)
  {
    v22 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v50.st_flags >> 5) & 1));
    if (v22 != v50.st_flags)
    {
      *(v55 + v18) = v22;
      v18 += 4;
      v17 |= 0x40000u;
      HIDWORD(v49[0]) = v17;
      *(v54 + v8) = v22;
      v8 += 4;
      HIDWORD(v48[0]) = v7 | 0x40000;
    }
  }

  if (!v17)
  {
    return 0;
  }

  result = fsetattrlist(a2, v49, v55, v18, 1u);
  if (result)
  {
    v23 = __error();
    if ((a3 & 1) == 0 || *v23 != 1 || (result = fsetattrlist(a2, v48, v54, v8, 1u), result))
    {
      v24 = __error();
      if ((a3 & 1) != 0 && *v24 == 1)
      {
        return 0;
      }

      if (*a1)
      {
        v25 = *(a1 + 1);
        if ((*a1 & 2) != 0)
        {
LABEL_35:
          v26 = *(a1 + 2);
          if ((*a1 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v25 = -1;
        if ((*a1 & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      v26 = -1;
      if ((*a1 & 1) == 0)
      {
LABEL_40:
        v27 = 1;
        if ((*a1 & 2) == 0 || v26 == v50.st_gid)
        {
LABEL_47:
          if ((*a1 & 8) != 0)
          {
            v32 = *(a1 + 4) & 0xFFF;
            if (v32 != (v50.st_mode & 0xFFF))
            {
              if (fchmod(a2, v32))
              {
                v33 = __error();
                if ((a3 & 1) == 0 || *v33 != 1)
                {
                  v34 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 667, 102, *v34, "fchmod", v35, v36, v48[0]);
                  v27 = 0;
                }
              }
            }
          }

          v37 = *a1;
          if ((*a1 & 0x40) != 0)
          {
            v38 = *(a1 + 8);
            v52 = *(a1 + 7);
            v51.tv_sec = v52;
            v53 = v38 / 1000;
            v51.tv_usec = v38 / 1000;
            if (futimes(a2, &v51))
            {
              v39 = __error();
              if ((a3 & 1) == 0 || *v39 != 1)
              {
                v40 = __error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 675, 102, *v40, "futimes", v41, v42, v48[0]);
                v27 = 0;
              }
            }

            v37 = *a1;
          }

          if ((v37 & 4) != 0)
          {
            v43 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v50.st_flags >> 5) & 1));
            if (v50.st_flags != v43)
            {
              if (fchflags(a2, v43))
              {
                v44 = __error();
                if ((a3 & 1) == 0 || *v44 != 1)
                {
                  v45 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 689, 102, *v45, "fchflags", v46, v47, v48[0]);
                  v27 = 0;
                }
              }
            }
          }

          if (v27)
          {
            return 0;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

LABEL_42:
        if (!fchown(a2, v25, v26) || (v28 = __error(), (a3 & 1) != 0) && *v28 == 1)
        {
          v27 = 1;
        }

        else
        {
          v29 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 663, 102, *v29, "fchown", v30, v31, v48[0]);
          v27 = 0;
        }

        goto LABEL_47;
      }

LABEL_39:
      if (v25 != v50.st_uid)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }
  }

  return result;
}

uint64_t sub_10010C43C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 & 1) != 0 && (*a1)
  {
    v3 = *(a1 + 4) != *(a2 + 4);
    if ((a3 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 2) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    v3 |= 2u;
  }

LABEL_9:
  if ((a3 & 8) != 0 && (*a1 & 8) != 0 && *(a1 + 16) != *(a2 + 16))
  {
    v3 |= 8u;
  }

  if ((a3 & 4) != 0 && (*a1 & 4) != 0 && *(a1 + 12) != *(a2 + 12))
  {
    v3 |= 4u;
  }

  if ((a3 & 0x40) != 0 && (*a1 & 0x40) != 0)
  {
    v4 = *(a1 + 56) - *(a2 + 56);
    if ((v4 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 64) + 1000000000 * v4 - *(a2 + 64) + 2000) >= 0xFA1)
    {
      v3 |= 0x40u;
    }
  }

  if ((a3 & 0x10) != 0 && (*a1 & 0x10) != 0)
  {
    v5 = *(a1 + 24) - *(a2 + 24);
    if ((v5 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 32) + 1000000000 * v5 - *(a2 + 32) + 2000) >= 0xFA1)
    {
      v3 |= 0x10u;
    }
  }

  if ((a3 & 0x20) != 0 && (*a1 & 0x20) != 0)
  {
    v6 = *(a1 + 40) - *(a2 + 40);
    if ((v6 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 48) + 1000000000 * v6 - *(a2 + 48) + 2000) >= 0xFA1)
    {
      v3 |= 0x20u;
    }
  }

  return v3;
}

uint64_t sub_10010C5B0(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0 && (*a1 & 2) != 0)
  {
    v3 = (*(a1 + 12) != *(a2 + 12)) << 8;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 1) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    v3 |= 0x80u;
  }

LABEL_9:
  if ((a3 & 0x200) != 0 && (*a1 & 4) != 0 && *(a1 + 16) != *(a2 + 16))
  {
    v3 |= 0x200u;
  }

  if ((a3 & 0x400) != 0 && (*a1 & 8) != 0 && *(a1 + 4) != *(a2 + 4))
  {
    v3 |= 0x400u;
  }

  return v3;
}

uint64_t sub_10010C644(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (a3 & 0x800) != 0 && (*a1)
  {
    v6 = (*(a1 + 4) != *(a2 + 4)) << 11;
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 2) != 0 && *(a1 + 8) ^ *(a2 + 8) | *(a1 + 16) ^ *(a2 + 16) | (*(a1 + 24) ^ *(a2 + 24)))
  {
    v6 |= 0x1000u;
  }

LABEL_9:
  if ((a3 & 0x2000) != 0 && (*a1 & 4) != 0 && *(a1 + 28) ^ *(a2 + 28) | *(a1 + 36) ^ *(a2 + 36) | *(a1 + 44) ^ *(a2 + 44) | *(a1 + 52) ^ *(a2 + 52))
  {
    v6 |= 0x2000u;
  }

  if ((a3 & 0x4000) != 0 && (*a1 & 8) != 0 && memcmp((a1 + 60), (a2 + 60), 0x30uLL))
  {
    v6 |= 0x4000u;
  }

  if (a3 < 0 && (*a1 & 0x10) != 0 && memcmp((a1 + 108), (a2 + 108), 0x40uLL))
  {
    v6 |= 0x8000u;
  }

  return v6;
}

uint64_t sub_10010C798(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6, char *__s, const char *a8, uint64_t a9)
{
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  memset(v112, 0, 172);
  if ((sub_1000F4680(v111, 0x800uLL, __s, a8) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 781, 102, 0, "invalid path: %s", v17, v18, a8);
    v27 = 0;
    v40 = 0;
    v64 = 0;
    v75 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v95 = a6;
  v96 = a3;
  v99 = a1;
  v19 = *a1;
  v101 = a2;
  v20 = *a2;
  v21 = *a3;
  v22 = *a4;
  v23 = AAEntryXATBlobCreate();
  v24 = AAEntryACLBlobCreate();
  v26 = v24;
  xat = v23;
  if (!v23 || !v24)
  {
    v76 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 808, 102, *v76, "malloc", v77, v78, v94);
    v27 = 0;
    v75 = 0xFFFFFFFFLL;
    a6 = v95;
    v40 = v26;
LABEL_83:
    v64 = xat;
    goto LABEL_84;
  }

  v27 = 0;
  v28 = 0;
  v25.i16[0] = v22;
  v25.i16[1] = v20;
  v29 = vmovl_u16((*&vshl_u16(vzip1_s16(v25, vdup_lane_s16(v25, 1)), 0xFFFDFFFEFFFFFFFELL) & 0xFF01FF01FF01FF01));
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31.i64[0] = 255;
  v31.i64[1] = 255;
  v32 = vandq_s8(v30, v31);
  v30.i64[0] = v29.u32[2];
  v30.i64[1] = v29.u32[3];
  v33 = vshlq_u64(vandq_s8(v30, v31), xmmword_10037C6B0);
  *v31.i8 = vdup_n_s32(v21);
  v34 = vshl_u32(*v31.i8, 0xFFFFFFFCFFFFFFFELL);
  v35 = vorrq_s8(vshlq_u64(v32, xmmword_10037C6C0), v33);
  v36 = *&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | (((v22 >> 1) & 1) << 17);
  v31.i32[0] &= 0xFFFFFF01;
  v31.i32[1] = (v21 >> 3) & 0xFFFFFF01;
  *v35.i8 = vorr_s8(vshl_u32(*v31.i8, 0xE0000000BLL), vshl_u32((*&v34 & 0xFFFFFF01FFFFFF01), 0xF0000000DLL));
  v37 = (v19 & 0x7F | ((v20 & 1) << 7) | (((v21 >> 1) & 1) << 12) & 0xFFFFFFFFFFFEFFFFLL | ((v22 & 1) << 16) | (v35.i16[0] | v35.i16[2]) & 0xF800 | v36 | 0x80000) & a5;
  if (v37 >= 0x80000)
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 & 0x607FF;
  }

  v39 = 1;
  v40 = v24;
  *v97 = v24;
  while (1)
  {
    v41 = v28;
    if ((v38 & 0x20000) != 0 && (sub_10010E2A0(xat, __s, a8) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 813, 102, 0, "loading file XAT: %s", v42, v43, a8);
      goto LABEL_76;
    }

    if ((v38 & 0x40000) != 0 && (sub_100111C50(v40, __s, a8, a9) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 814, 102, 0, "loading file ACL: %s", v44, v45, a8);
LABEL_76:
      v75 = 0xFFFFFFFFLL;
LABEL_77:
      a6 = v95;
      goto LABEL_83;
    }

    if ((sub_10010B4C4(v109, v107, v112, v38, __s, a8) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 815, 102, 0, "loading file attributes: %s", v46, v47, a8);
      goto LABEL_76;
    }

    v98 = sub_10010C43C(v109, v99, v38);
    v48 = sub_10010C5B0(v107, v101, v38) | v98;
    v27 = sub_10010C644(v112, v96, v38) ? v48 | 0x80000 : v48;
    if ((v38 & 0x20000) != 0)
    {
      if (*(a4 + 4))
      {
        if (AAEntryXATBlobGetEncodedSize(xat) == *(a4 + 4))
        {
          EncodedData = AAEntryXATBlobGetEncodedData(xat);
          v55 = (memcmp(EncodedData, *(a4 + 3), *(a4 + 4)) != 0) << 17;
        }

        else
        {
          v55 = 0x20000;
        }

        v27 = v55 | v27 & 0xFFFDFFFF;
        if ((v38 & 0x40000) == 0)
        {
LABEL_18:
          if ((v38 & 0x10000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v27 = v27 & 0xFFFDFFFF | ((AAEntryXATBlobGetEntryCount(xat) != 0) << 17);
        if ((v38 & 0x40000) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if ((v38 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    if (*(a4 + 6))
    {
      if (AAEntryACLBlobGetEncodedSize(v40) == *(a4 + 6))
      {
        v56 = AAEntryACLBlobGetEncodedData(v40);
        v57 = (memcmp(v56, *(a4 + 5), *(a4 + 6)) != 0) << 18;
      }

      else
      {
        v57 = 0x40000;
      }

      v27 = v57 | v27 & 0xFFFBFFFF;
      if ((v38 & 0x10000) == 0)
      {
LABEL_38:
        if (v27)
        {
          goto LABEL_39;
        }

        v75 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v27 = v27 & 0xFFFBFFFF | ((AAEntryACLBlobGetEntryCount(v40) != 0) << 18);
      if ((v38 & 0x10000) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    memset(&v106, 0, sizeof(v106));
    v58 = open(v111, 0);
    if (v58 < 0)
    {
      v79 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 838, 102, v79, "open: %s", v80, v81, v111);
LABEL_81:
      v75 = 0xFFFFFFFFLL;
LABEL_82:
      a6 = v95;
      v40 = *v97;
      goto LABEL_83;
    }

    v59 = v58;
    if (fstat(v58, &v106) < 0)
    {
      v82 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 839, 102, *v82, "fstat: %s", v83, v84, v111);
      close(v59);
      goto LABEL_81;
    }

    v63 = ParallelArchiveECCVerifyFileSegment(v59, 0, v106.st_size, *(a4 + 1), *(a4 + 2), v60, v61, v62);
    close(v59);
    if (v63 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 842, 102, 0, "verifying data: %s", v52, v53, v111);
      goto LABEL_81;
    }

    if (v63)
    {
      goto LABEL_38;
    }

    v27 |= 0x80000u;
LABEL_39:
    v40 = *v97;
    if (v41 & 1 | ((a9 & 0x20000000000000) == 0) & v39)
    {
      v75 = 0;
      goto LABEL_77;
    }

    v64 = xat;
    if ((v38 & 0x10000) == 0 || (v27 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    v105 = 0;
    v103 = 0;
    v104 = -1;
    if ((ParallelCompressionAFSCGetMetadata(v111, &v105, &v104, &v103) & 0x80000000) != 0)
    {
      v86 = "get AFSC attributes";
      v87 = 861;
      goto LABEL_89;
    }

    memset(&v106, 0, sizeof(v106));
    v67 = open(v111, 2);
    if (v67 < 0)
    {
      v88 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 866, 102, v88, "open: %s", v89, v90, v111);
      goto LABEL_90;
    }

    v68 = v67;
    if (fstat(v67, &v106) < 0)
    {
      break;
    }

    memset(v102, 0, sizeof(v102));
    v69 = ParallelArchiveECCFixFileSegment(v68, 0, v106.st_size, *(a4 + 1), *(a4 + 2), v102);
    close(v68);
    if (v69 >= 1)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 871, 102, "Fixed data using ECC: %s", v70, v71, v72, a8);
    }

    ParallelCompressionAFSCFixupMetadata(v111, v104, v103);
    v40 = *v97;
LABEL_48:
    if ((v27 & 0x184) != 0)
    {
      if ((*v99 & 4) != 0)
      {
        v73 = ((*(v99 + 12) >> 5) & 1) - 1;
      }

      else
      {
        v73 = -1;
      }

      if (*v101)
      {
        v73 = *(v101 + 8);
      }

      if ((*v101 & 2) != 0)
      {
        v74 = *(v101 + 12);
      }

      else
      {
        v74 = 0;
      }

      ParallelCompressionAFSCFixupMetadata(v111, v73, v74);
    }

    if ((v27 & 0x200) != 0)
    {
      sub_1000F5A94(v111, *(v101 + 16));
    }

    if ((v27 & 0x20000) != 0)
    {
      if ((sub_10010DEF4(xat, *(a4 + 3), *(a4 + 4), v49, v50, v51, v52, v53) & 0x80000000) != 0)
      {
        v86 = "invalid XAT blob in manifest";
        v87 = 902;
        goto LABEL_89;
      }

      AAEntryXATBlobApplyToPath(xat, __s, a8, a9 | 8);
    }

    if ((v27 & 0x40000) != 0)
    {
      if ((sub_1001117B8(v40, *(a4 + 5), *(a4 + 6), v49, v50, v51, v52, v53) & 0x80000000) == 0)
      {
        AAEntryACLBlobApplyToPath(v40, __s, a8, a9 | 8);
        goto LABEL_66;
      }

      v86 = "invalid ACL blob in manifest";
      v87 = 909;
LABEL_89:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", v87, 102, 0, v86, v65, v66, v94);
      goto LABEL_90;
    }

LABEL_66:
    v39 = 0;
    v28 = 1;
    if (v98)
    {
      sub_10010B878(v99, __s, a8, a9);
      v39 = 0;
      v28 = 1;
    }
  }

  v91 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 867, 102, *v91, "fstat: %s", v92, v93, v111);
  close(v68);
LABEL_90:
  v75 = 0xFFFFFFFFLL;
  a6 = v95;
LABEL_84:
  *a6 = v27;
  a6[1] = 0;
  AAEntryXATBlobDestroy(v64);
  AAEntryACLBlobDestroy(v40);
  return v75;
}

uint64_t sub_10010D058(const char *a1, const char *a2, char a3)
{
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  *v65 = 0u;
  memset(&v64, 0, sizeof(v64));
  v6 = open(a1, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (fstat(v6, &v64) < 0)
    {
      v34 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 948, 102, v34, "stat: %s", v35, v36, a1);
    }

    else if ((v64.st_mode & 0xF000) == 0x8000)
    {
      if ((sub_10010B1BC(v69, v65, 0, 0xFFFFFFFF, v7) & 0x80000000) == 0)
      {
        v12 = AAEntryXATBlobCreate();
        v15 = v12;
        if (v12 && (sub_10010E3F0(v12, v7) & 0x80000000) == 0)
        {
          v16 = AAEntryACLBlobCreate();
          v19 = v16;
          if (!v16 || (sub_100111DB0(v16, v7, 0) & 0x80000000) != 0)
          {
            v39 = "get ACL";
            v40 = 954;
            v41 = 0;
          }

          else if (clonefile(a1, a2, 0))
          {
            if ((v65[0] & 8) != 0 && v65[1] >= 1 && (v63 = -92, v20 = open_dprotected_np(a2, 1537, v65[1], 0), (v20 & 0x80000000) == 0) || (v20 = open(a2, 1537, 420), (v20 & 0x80000000) == 0))
            {
              v21 = v20;
              if (v64.st_size)
              {
                v22 = malloc(0x40000uLL);
                if (!v22)
                {
                  v23 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 980, 102, *v23, "malloc", v24, v25, v63);
                }

                if (sub_1000F5A84(v64.st_flags))
                {
                  v26 = fgetxattr(v7, "com.apple.decmpfs", v22, 0x40000uLL, 0, 32);
                  if ((v26 & 0x8000000000000000) != 0)
                  {
                    v29 = "Missing decmpfs xattr";
                    v30 = 988;
                    goto LABEL_64;
                  }

                  if (v26 > 0x40000)
                  {
                    v29 = "invalid decmpfs xattr size";
                    v30 = 989;
LABEL_64:
                    v56 = 0;
LABEL_65:
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v30, 102, v56, v29, v27, v28, v63);
                    close(v7);
                    close(v21);
LABEL_66:
                    unlink(a2);
                    goto LABEL_29;
                  }

                  if (fsetxattr(v21, "com.apple.decmpfs", v22, v26, 0, 0) < 0)
                  {
                    v56 = *__error();
                    v29 = "fsetxattr decmpfs";
                    v30 = 990;
                    goto LABEL_65;
                  }

                  v57 = fgetxattr(v7, "com.apple.ResourceFork", 0, 0, 0, 32);
                  if (v57 >= 1)
                  {
                    v58 = v57;
                    v59 = 0;
                    while (1)
                    {
                      if (v58 - v59 >= 0x40000)
                      {
                        v60 = 0x40000;
                      }

                      else
                      {
                        v60 = v58 - v59;
                      }

                      v61 = fgetxattr(v7, "com.apple.ResourceFork", v22, v60, v59, 32);
                      if (v61 < 0)
                      {
                        v49 = "read resource fork";
                        v50 = 1000;
                        goto LABEL_46;
                      }

                      if (v61 != v60)
                      {
                        v49 = "truncated read resource fork";
                        v50 = 1001;
                        goto LABEL_46;
                      }

                      if (fsetxattr(v21, "com.apple.ResourceFork", v22, v60, v59, 0) < 0)
                      {
                        break;
                      }

                      v59 += v60;
                      if (v59 >= v58)
                      {
                        goto LABEL_77;
                      }
                    }

                    v51 = *__error();
                    v49 = "write resource fork";
                    v50 = 1002;
                    goto LABEL_47;
                  }

LABEL_77:
                  if (fchflags(v21, 0x20u) < 0)
                  {
                    v49 = "set UF_COMPRESSED";
                    v50 = 1008;
                    goto LABEL_46;
                  }
                }

                else
                {
                  st_size = v64.st_size;
                  if (v64.st_size >= 1)
                  {
                    while (1)
                    {
                      if (st_size >= 0x40000)
                      {
                        v53 = 0x40000;
                      }

                      else
                      {
                        v53 = st_size;
                      }

                      v54 = read(v7, v22, v53);
                      if (v54 < 0)
                      {
                        v51 = *__error();
                        v49 = "read";
                        v50 = 1034;
                        goto LABEL_47;
                      }

                      if (v54 != v53)
                      {
                        v49 = "truncated read";
                        v50 = 1035;
                        goto LABEL_46;
                      }

                      v55 = write(v21, v22, v53);
                      if (v55 < 0)
                      {
                        v51 = *__error();
                        v49 = "write";
                        v50 = 1037;
                        goto LABEL_47;
                      }

                      if (v55 != v53)
                      {
                        break;
                      }

                      st_size -= v53;
                      if (st_size < 1)
                      {
                        goto LABEL_38;
                      }
                    }

                    v49 = "truncated write";
                    v50 = 1038;
                    goto LABEL_46;
                  }
                }

LABEL_38:
                if ((sub_10010BEB4(v69, v21, a3) & 0x80000000) == 0 && (sub_10010EABC(v15, v21, a3, v43, v44, v45, v46, v47) & 0x80000000) == 0 && (sub_1001126B4(v19, v21, a3) & 0x80000000) == 0)
                {
                  v48 = 0;
                  v37 = 1;
                  if ((v65[0] & 4) != 0 && v66)
                  {
                    if ((sub_1000F5A94(v21, v66) & 0x80000000) != 0)
                    {
                      v49 = "setting internal attributes";
                      v50 = 1055;
                      goto LABEL_46;
                    }

                    v48 = 0;
                  }

LABEL_48:
                  close(v7);
                  if ((v21 & 0x80000000) != 0)
                  {
                    goto LABEL_30;
                  }

                  close(v21);
                  if (!v48)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_66;
                }

                v49 = "setting attributes";
                v50 = 1050;
LABEL_46:
                v51 = 0;
LABEL_47:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v50, 102, v51, v49, v46, v47, v63);
                v37 = 0;
                v48 = 1;
                goto LABEL_48;
              }

LABEL_37:
              v22 = 0;
              goto LABEL_38;
            }

            v41 = *__error();
            v62 = a2;
            v39 = "open: %s";
            v40 = 972;
          }

          else
          {
            v63 = -92;
            v42 = open(a2, 0);
            if ((v42 & 0x80000000) == 0)
            {
              v21 = v42;
              goto LABEL_37;
            }

            v41 = *__error();
            v62 = a2;
            v39 = "open: %s";
            v40 = 961;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v40, 102, v41, v39, v17, v18, v62);
          goto LABEL_28;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 952, 102, 0, "get XAT", v13, v14, v62);
LABEL_27:
        v19 = 0;
LABEL_28:
        close(v7);
        v22 = 0;
        goto LABEL_29;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 950, 102, 0, "get attributes", v10, v11, v62);
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 949, 102, 0, "not a regular file: %s", v8, v9, a1);
    }

    v15 = 0;
    goto LABEL_27;
  }

  v31 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 947, 102, *v31, "open: %s", v32, v33, a1);
  v22 = 0;
  v19 = 0;
  v15 = 0;
LABEL_29:
  v37 = 0;
LABEL_30:
  AAEntryXATBlobDestroy(v15);
  AAEntryACLBlobDestroy(v19);
  free(v22);
  if (v37)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_10010D7B4(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v8 = malloc(0x38uLL);
  v9 = v8;
  if (!v8)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "aaAsyncByteStreamAlloc", 191, 97, *v13, "malloc", v14, v15, SLOBYTE(a5));
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
      v26 = sub_1000F4248();
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
          if (*(v29 + 24) < v26)
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 159, 97, 0, "Async stream range timed out (FAIL): %zu bytes at %llu", v24, v25, *v29);
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          v41 = *v29;
          v42 = *(v29 + 8);
          *(v29 + 24) = v26 + *(v9 + 100) + vcvtd_n_f64_u64(*v29, 0x14uLL) * *(v9 + 104);
          *(v29 + 16) = v40 - 1;
          *a2 = v41;
          *a3 = v42;
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 170, 97, "Async stream range timed out (retry): %zu bytes at %llu", v23, v24, v25, v41);
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", v39, 97, v35, v38, v36, v37, v55);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", v34, 97, v30, v33, v31, v32, v55);
    return v8;
  }

  v15 = *(v9 + 80);
  if (!v10)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 68, 97, "Async stream returning EOF, but we still have ranges in flight", v12, v13, v14, v55);
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
      *(v20 + 24) = sub_1000F4248() + v22;
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 84, 97, *v52, "malloc", v53, v54, v55);
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
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 128, 97, "Async stream receiving an unknown segment", v9, v10, v11, v27);
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

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", v23, 97, v19, v22, v20, v21, v27);
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

uint64_t sub_10010DEDC(void *a1)
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

uint64_t sub_10010DEF4(unint64_t *a1, char *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[3] = 0;
  v8 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v15 = 0;
  v16 = 1;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = *&__src[v18];
      if (v19 < 4)
      {
        goto LABEL_3;
      }

      v20 = __CFADD__(v19, v18);
      v21 = v19 + v18;
      if (v20 || v21 > __smax)
      {
        goto LABEL_3;
      }

      if (v15)
      {
        v22 = a1[2];
        v23 = (*a1)++;
        *(v22 + 8 * v23) = v18;
        if (v21 >= __smax)
        {
          goto LABEL_42;
        }

        ++v17;
        goto LABEL_14;
      }

      ++v17;
      if (v21 >= __smax)
      {
        break;
      }

LABEL_14:
      v18 = v21;
      if (v21 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      if (v17 <= 0xFFFFFFFE)
      {
        v24 = a1[1];
        if (v24 >= v17)
        {
          goto LABEL_28;
        }

        v25 = a1[1];
        do
        {
          if (v25)
          {
            v25 *= 2;
          }

          else
          {
            v25 = 16;
          }
        }

        while (v25 < v17);
        if (v25 <= v24)
        {
LABEL_28:
          if ((__smax & 0x8000000000000000) == 0)
          {
            v28 = a1[4];
            if (v28 >= __smax)
            {
              goto LABEL_40;
            }

            do
            {
              while (!v28)
              {
                v28 = 0x4000;
                v30 = 0x4000;
                if (__smax <= 0x4000)
                {
                  goto LABEL_38;
                }
              }

              v29 = v28 >> 1;
              if ((v28 & (v28 >> 1)) != 0)
              {
                v29 = v28 & (v28 >> 1);
              }

              v28 += v29;
            }

            while (v28 < __smax);
            v30 = v28;
            if (v28 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_38:
              v31 = a1[5];
              v32 = realloc(v31, v30);
              if (v32)
              {
                a1[4] = v30;
                a1[5] = v32;
LABEL_40:
                v16 = 0;
                v15 = 1;
                if (__smax < 4)
                {
                  goto LABEL_3;
                }

                continue;
              }

              free(v31);
            }

            *v8 = 0;
            v8[1] = 0;
            v8[2] = 0;
          }
        }

        else
        {
          a1[1] = v25;
          if (8 * v25 >= 0x2000000001)
          {
            *__error() = 12;
          }

          else
          {
            v26 = a1[2];
            v27 = realloc(v26, 8 * v25);
            if (v27)
            {
              a1[2] = v27;
              goto LABEL_28;
            }

            free(v26);
          }

          a1[2] = 0;
        }
      }

LABEL_3:
      *a1 = 0;
      a1[3] = 0;
      v11 = "invalid XAT blob";
      v12 = 72;
      goto LABEL_4;
    }

    break;
  }

LABEL_42:
  *v8 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
    goto LABEL_3;
  }

  v33 = a1[4];
  if (v33 < __smax)
  {
    v34 = 0x4000;
    do
    {
      while (!v33)
      {
        v33 = 0x4000;
        if (__smax <= 0x4000)
        {
          goto LABEL_54;
        }
      }

      v35 = v33 >> 1;
      if ((v33 & (v33 >> 1)) != 0)
      {
        v35 = v33 & (v33 >> 1);
      }

      v33 += v35;
    }

    while (v33 < __smax);
    v34 = v33;
    if (v33 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_75:
      a1[4] = 0;
      a1[5] = 0;
      goto LABEL_3;
    }

LABEL_54:
    v36 = a1[5];
    v37 = realloc(v36, v34);
    if (!v37)
    {
      free(v36);
      goto LABEL_75;
    }

    a1[4] = v34;
    a1[5] = v37;
  }

  v38 = a1[5];
  if (__src)
  {
    memcpy((v38 + *v8), __src, __smax);
  }

  else if (v38)
  {
    memset_s((v38 + *v8), __smax, 0, __smax);
  }

  a1[3] += __smax;
  v39 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v40 = 0;
  while (v39 <= v40)
  {
    v41 = 0;
    v42 = 0xFFFFFFFFLL;
LABEL_66:
    v43 = (v41 + 1);
    v44 = v42 - 4;
    while (*v43++)
    {
      if (!--v44)
      {
        goto LABEL_73;
      }
    }

    result = 0;
    if (++v40 == v39)
    {
      return result;
    }
  }

  v41 = (a1[5] + *(a1[2] + 8 * v40));
  v42 = *v41;
  if (v42 >= 5)
  {
    goto LABEL_66;
  }

LABEL_73:
  v11 = "invalid XAT key";
  v12 = 84;
LABEL_4:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", v12, 104, 0, v11, a7, a8, v46);
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10010E2A0(AAEntryXATBlob_impl *a1, char *__s, const char *a3)
{
  v3 = __s;
  if ((sub_1000F4680(v16, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 99, 104, 0, "invalid path %s/%s", v5, v6, v3);
    return 0xFFFFFFFFLL;
  }

  v7 = open(v16, 0x200000);
  if (v7 < 0)
  {
    v12 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 110, 104, v12, "open: %s", v13, v14, v16);
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if ((sub_10010E3F0(a1, v7) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 112, 104, 0, "aaEntryXATBlobInitWithFD failed: %s", v9, v10, v16);
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
  }

  close(v8);
  return v11;
}

uint64_t sub_10010E3F0(AAEntryXATBlob_impl *a1, int fd)
{
  *a1 = 0;
  *(a1 + 3) = 0;
  v4 = flistxattr(fd, 0, 0, 0);
  if (v4 < 1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    free(v6);
    free(v7);
    return 0;
  }

  v5 = v4;
  if (v4 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_26:
    v21 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 144, 104, *v21, "malloc", v22, v23, v36);
    v6 = 0;
    v7 = 0;
    goto LABEL_27;
  }

  v9 = malloc(v4);
  if (!v9)
  {
    goto LABEL_26;
  }

  v7 = v9;
  v10 = flistxattr(fd, v9, v5, 0);
  if (v10 < 1)
  {
    v24 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 153, 104, *v24, "listxattr", v25, v26, v36);
    v6 = 0;
    goto LABEL_27;
  }

  v37 = v10;
  v11 = 0;
  v6 = 0;
  v12 = 0;
  v13 = v7;
  while (v7[v11])
  {
LABEL_24:
    if (++v11 == v10)
    {
      goto LABEL_5;
    }
  }

  v14 = fgetxattr(fd, v13, 0, 0, 0, 0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v27 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 167, 104, v27, "getxattr failed for name=%s", v28, v29, v13);
    goto LABEL_27;
  }

  v17 = v14;
  if (v14 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 169, 104, 0, "attribute data is too large name=%s", v15, v16, v13);
    goto LABEL_27;
  }

  if (v14 <= v12)
  {
    v18 = v6;
    goto LABEL_21;
  }

  do
  {
    if (v12)
    {
      v12 += v12 >> 1;
    }

    else
    {
      v12 = 256;
    }
  }

  while (v14 > v12);
  if (v12 < 0x2000000001)
  {
    v18 = realloc(v6, v12);
    if (!v18)
    {
      free(v6);
      goto LABEL_35;
    }

LABEL_21:
    if (fgetxattr(fd, v13, v18, v12, 0, 0) < 0)
    {
      v30 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 187, 104, v30, "getxattr failed for name=%s", v31, v32, v13);
    }

    else
    {
      if ((AAEntryXATBlobAppendEntry(a1, v13, v18, v17) & 0x80000000) == 0)
      {
        v13 = &v7[v11 + 1];
        v6 = v18;
        v10 = v37;
        goto LABEL_24;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 190, 104, 0, "inserting XAT entry", v19, v20, v36);
    }

    v6 = v18;
    goto LABEL_27;
  }

  *__error() = 12;
LABEL_35:
  v33 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 178, 104, *v33, "malloc", v34, v35, v36);
  v6 = 0;
LABEL_27:
  free(v6);
  free(v7);
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryXATBlobAppendEntry(AAEntryXATBlob xat, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v11 = v8 + 1;
  v12 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v15 = data_size + v12, __CFADD__(data_size, v12)) || v15 >= 0xFFFFFFFF)
  {
    v13 = "invalid attribute size";
    v14 = 377;
LABEL_49:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", v14, 104, 0, v13, v9, v10, v43);
    return -1;
  }

  if (v15 < 4)
  {
    goto LABEL_48;
  }

  v16 = (xat + 24);
  v17 = *(xat + 3);
  v18 = v17 + v15;
  if (__CFADD__(v17, v15))
  {
    goto LABEL_48;
  }

  v20 = *xat;
  v19 = *(xat + 1);
  v21 = *xat + 1;
  if (v19 < v21)
  {
    v22 = *(xat + 1);
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

    while (v22 < v21);
    if (v22 > v19)
    {
      v24 = (xat + 16);
      v23 = *(xat + 2);
      *(xat + 1) = v22;
      if (8 * v22 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *xat = 0;
        *v24 = 0;
        *(xat + 3) = 0;
        goto LABEL_48;
      }

      v43 = v23;
      v44 = v20;
      v25 = realloc(v23, 8 * v22);
      if (!v25)
      {
        free(v43);
        goto LABEL_47;
      }

      *v24 = v25;
      v20 = v44;
    }
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v26 = *(xat + 4);
  if (v26 < v18)
  {
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (v18 <= 0x4000)
        {
          v26 = 0x4000;
          goto LABEL_29;
        }
      }

      v27 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v27 = v26 & (v26 >> 1);
      }

      v26 += v27;
    }

    while (v26 < v18);
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_42;
    }

LABEL_29:
    v45 = v20;
    v28 = *(xat + 5);
    v29 = realloc(v28, v26);
    if (v29)
    {
      *(xat + 4) = v26;
      *(xat + 5) = v29;
      v20 = v45;
      goto LABEL_31;
    }

    free(v28);
LABEL_42:
    *(xat + 4) = 0;
    *(xat + 5) = 0;
LABEL_43:
    *xat = 0;
    *(xat + 3) = 0;
    goto LABEL_48;
  }

LABEL_31:
  v30 = *v16;
  v31 = *v16 + v15;
  if (__CFADD__(*v16, v15) || (v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v26 < v31)
  {
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (v31 <= 0x4000)
        {
          v46 = v20;
          v33 = (xat + 40);
          v26 = 0x4000;
          goto LABEL_53;
        }
      }

      v32 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v32 = v26 & (v26 >> 1);
      }

      v26 += v32;
    }

    while (v26 < v31);
    v33 = (xat + 40);
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_61;
    }

    v46 = v20;
LABEL_53:
    v43 = v33;
    v37 = *v33;
    v34 = realloc(v37, v26);
    if (v34)
    {
      *(xat + 5) = v34;
      v35 = (xat + 40);
      *(xat + 4) = v26;
      v30 = *(xat + 3);
      goto LABEL_55;
    }

    free(v37);
    v33 = v43;
LABEL_61:
    *v33 = 0;
    *v16 = 0;
    *(xat + 4) = 0;
    goto LABEL_48;
  }

  v46 = v20;
  v35 = (xat + 40);
  v34 = *(xat + 5);
  if (v34)
  {
LABEL_55:
    memset_s(&v34[v30], v15, 0, v15);
    v30 = *v16;
  }

  *(xat + 3) = v30 + v15;
  v38 = *(xat + 2);
  v39 = (*xat)++;
  *(v38 + 8 * v39) = v17;
  if (v17 >= 0xFFFFFFFFFFFFFFFCLL || v17 + 4 > *v16 || (*(*v35 + v17) = v15, v46 < 0))
  {
LABEL_48:
    v13 = "alloc XAT entry";
    v14 = 381;
    goto LABEL_49;
  }

  v40 = *(xat + 5);
  v41 = *(*(xat + 2) + 8 * v46);
  *(v40 + v41) = v15;
  v42 = (v40 + v41 + 4);
  memcpy(v42, key, v11);
  memcpy(&v42[v11], data, data_size);
  return 0;
}

uint64_t sub_10010EABC(void *a1, int fd, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 8) != 0)
  {
    v11 = flistxattr(fd, 0, 0, 0);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v13 = *__error();
      v16 = "listxattr";
      v17 = 28;
LABEL_39:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", v17, 104, v13, v16, v14, v15, v45);
      v18 = 0;
      goto LABEL_40;
    }

    v12 = v11;
    if (v11)
    {
      if (v11 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_38:
        v13 = *__error();
        v16 = "malloc";
        v17 = 34;
        goto LABEL_39;
      }

      v32 = malloc(v11);
      if (!v32)
      {
        goto LABEL_38;
      }

      v18 = v32;
      v33 = flistxattr(fd, v32, v12, 0);
      if (v33 < 0)
      {
        v40 = *__error();
        v43 = "listxattr";
        v44 = 43;
        goto LABEL_46;
      }

      v34 = v33;
      if (v33)
      {
        v35 = v18 + 1;
        v36 = v18;
        do
        {
          if (*(v35 - 1))
          {
            v37 = v36;
          }

          else
          {
            v38 = fremovexattr(fd, v36, 0);
            v37 = v35;
            if (v38 < 0)
            {
              v40 = *__error();
              v45 = v36;
              v43 = "removexattr failed for name=%s";
              v44 = 57;
LABEL_46:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", v44, 104, v40, v43, v41, v42, v45);
LABEL_40:
              free(v18);
              v30 = "clearing extended attributes";
              v31 = 212;
LABEL_41:
              v39 = 0;
LABEL_42:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", v31, 104, v39, v30, a7, a8, v45);
              return 0xFFFFFFFFLL;
            }
          }

          ++v35;
          v36 = v37;
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  if (*a1)
  {
    v19 = 0;
    while (1)
    {
      v20 = (a1[5] + *(a1[2] + 8 * v19));
      v23 = *v20;
      v21 = (v20 + 1);
      v22 = v23;
      if (v23 < 5)
      {
        LOBYTE(v24) = 0;
LABEL_28:
        v45 = v24;
        v30 = "invalid XAT entry key %zu";
        v31 = 225;
        goto LABEL_41;
      }

      v24 = 0;
      v25 = (a1[5] + *(a1[2] + 8 * v19) + v22);
      while (v21[v24])
      {
        v26 = &v21[++v24];
        if (&v21[v24] >= v25)
        {
          if (!v24)
          {
            goto LABEL_28;
          }

          goto LABEL_18;
        }
      }

      v26 = &v21[v24];
      if (!v24)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (v26 == v25)
      {
        goto LABEL_28;
      }

      v27 = v25 == v26 + 1 ? 0 : v26 + 1;
      if (fsetxattr(fd, v21, v27, v25 - (v26 + 1), 0, 0) < 0)
      {
        v28 = __error();
        if ((a3 & 1) == 0 || *v28 != 1)
        {
          break;
        }
      }

      if (++v19 >= *a1)
      {
        return 0;
      }
    }

    v39 = *__error();
    v30 = "setxattr";
    v31 = 238;
    goto LABEL_42;
  }

  return 0;
}

AAEntryXATBlob AAEntryXATBlobCreate(void)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobCreate", 251, 104, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AAEntryXATBlobDestroy(AAEntryXATBlob xat)
{
  if (xat)
  {
    free(*(xat + 2));
    free(*(xat + 5));
    memset_s(xat + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(xat, 0x30uLL, 0, 0x30uLL);

    free(xat);
  }
}

AAEntryXATBlob AAEntryXATBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryXATBlobCreate();
  v10 = v4;
  if (v4 && (sub_10010DEF4(v4, data, data_size, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v10);
    return 0;
  }

  return v10;
}

AAEntryXATBlob AAEntryXATBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v5 = AAEntryXATBlobCreate();
  v6 = v5;
  if (v5 && (sub_10010E2A0(v5, dir, path) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v6);
    return 0;
  }

  return v6;
}

int AAEntryXATBlobClear(AAEntryXATBlob xat)
{
  *xat = 0;
  *(xat + 3) = 0;
  return 0;
}

int AAEntryXATBlobApplyToPath(AAEntryXATBlob xat, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  v5 = dir;
  if ((sub_1000F4680(v23, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 299, 104, 0, "invalid path %s/%s", v7, v8, v5);
    return -1;
  }

  v9 = open(v23, 0x200000);
  if (v9 < 0)
  {
    v19 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 304, 104, v19, "open: %s", v20, v21, v23);
    return -1;
  }

  v15 = v9;
  if ((sub_10010EABC(xat, v9, v4, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 306, 104, 0, "applying XAT blob: %s", v16, v17, v23);
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  close(v15);
  return v18;
}

int AAEntryXATBlobGetEntry(AAEntryXATBlob xat, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*xat <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 328, 104, 0, "invalid XAT index %u", data, data_size, i);
    return -1;
  }

  v8 = (*(xat + 5) + *(*(xat + 2) + 8 * i));
  v9 = v8 + 1;
  v10 = *v8;
  if (v10 < 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  while (v9[v14])
  {
    if (++v14 + 4 >= v10)
    {
      goto LABEL_15;
    }
  }

  v15 = v10 - 5 - v14;
  if (v15 >= v10)
  {
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 338, 104, 0, "invalid XAT blob", data, data_size, v17);
    return -1;
  }

  if (key_length)
  {
    *key_length = v14;
  }

  if (data_size)
  {
    *data_size = v15;
  }

  if (v14 >= key_capacity)
  {
    if (key_capacity)
    {
      return -1;
    }
  }

  else
  {
    memcpy(key, v9, v14);
    key[v14] = 0;
  }

  if (v15 > data_capacity)
  {
    if (!data_capacity)
    {
      return 0;
    }

    return -1;
  }

  memcpy(data, v8 + v10 - v15, v15);
  return 0;
}

int AAEntryXATBlobSetEntry(AAEntryXATBlob xat, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*xat <= i)
  {
    v15 = "invalid XAT index";
    v16 = 401;
    goto LABEL_5;
  }

  v12 = strlen(key);
  v13 = v12 + 1;
  v14 = v12 + 5;
  if (v12 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v18 = data_size + v14, __CFADD__(data_size, v14)) || v18 >= 0xFFFFFFFF)
  {
    v15 = "invalid attribute size";
    v16 = 409;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", v16, 104, 0, v15, v5, v6, v46);
    return -1;
  }

  if (v18 < 4)
  {
    goto LABEL_11;
  }

  v19 = i;
  v20 = *(*(xat + 2) + 8 * i);
  v21 = *(xat + 5);
  v22 = *&v21[v20];
  v23 = v20 + v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_11;
  }

  v24 = *(xat + 3);
  v25 = v24 - v23;
  if (v24 < v23)
  {
    goto LABEL_11;
  }

  v26 = v18 - v22;
  if (v18 > v22)
  {
    v27 = v24 + v26;
    if ((v24 + v26) < 0)
    {
LABEL_11:
      v15 = "alloc XAT entry";
      v16 = 412;
      goto LABEL_5;
    }

    v28 = *(xat + 4);
    if (v28 < v27)
    {
      v29 = 0x4000;
      do
      {
        while (!v28)
        {
          v28 = 0x4000;
          if (v27 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v30 = v28 >> 1;
        if ((v28 & (v28 >> 1)) != 0)
        {
          v30 = v28 & (v28 >> 1);
        }

        v28 += v30;
      }

      while (v28 < v27);
      v29 = v28;
      if (v28 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v47 = v26;
      v48 = v19;
      v46 = v29;
      v36 = realloc(v21, v29);
      if (v36)
      {
        v26 = v47;
        *(xat + 4) = v46;
        *(xat + 5) = v36;
        v21 = v36;
        v25 = v24 - v23;
        v19 = v48;
        goto LABEL_31;
      }

      free(v21);
LABEL_44:
      *(xat + 3) = 0;
      *(xat + 4) = 0;
      *(xat + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v24 != v23)
    {
      v37 = &v21[v23];
      v38 = &v21[v23 + v26];
      v39 = v19;
      v40 = v26;
      memmove(v38, v37, v25);
      v26 = v40;
      v19 = v39;
    }

    v24 = *(xat + 3) + v26;
    goto LABEL_34;
  }

  if (v18 < v22)
  {
    v31 = v22 - v18;
    if (v24 != v23)
    {
      v32 = &v21[v23];
      v33 = &v21[v23 - v31];
      v34 = v19;
      v35 = v31;
      memmove(v33, v32, v25);
      v31 = v35;
      v19 = v34;
      v23 = *(xat + 3);
    }

    v24 = v23 - v31;
LABEL_34:
    *(xat + 3) = v24;
  }

  if (v20 >= 0xFFFFFFFFFFFFFFFCLL || v20 + 4 > v24)
  {
    goto LABEL_11;
  }

  *(*(xat + 5) + v20) = v18;
  if (*xat > v19)
  {
    v41 = v19;
    while (v20 < 0xFFFFFFFFFFFFFFFCLL && v20 + 4 <= *(xat + 3))
    {
      v42 = *(*(xat + 5) + v20);
      *(*(xat + 2) + 8 * v41) = v20;
      v20 += v42;
      if (++v41 >= *xat)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v43 = *(xat + 5);
  v44 = *(*(xat + 2) + 8 * v19);
  *(v43 + v44) = v18;
  v45 = (v43 + v44 + 4);
  memcpy(v45, key, v13);
  memcpy(&v45[v13], data, data_size);
  return 0;
}

int AAEntryXATBlobRemoveEntry(AAEntryXATBlob xat, uint32_t i)
{
  v4 = *xat;
  if (*xat <= i || (v6 = i, v7 = *(*(xat + 2) + 8 * i), v8 = *(xat + 5), v9 = *(v8 + v7), v10 = __CFADD__(v7, v9), v11 = v7 + v9, v10) || (v12 = *(xat + 3), v12 < v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobRemoveEntry", 426, 104, 0, "invalid XAT index %u", v2, v3, i);
    return -1;
  }

  else
  {
    if (v9)
    {
      if (v12 != v11)
      {
        memmove((v8 + v11 - v9), (v8 + v11), v12 - v11);
        v11 = *(xat + 3);
        v4 = *xat;
      }

      *(xat + 3) = v11 - v9;
    }

    v14 = v4 - 1;
    *xat = v14;
    if (v14 > v6)
    {
      v15 = *(xat + 2);
      do
      {
        *(v15 + 8 * v6) = *(v15 + 8 * v6 + 8) - v9;
        ++v6;
      }

      while (v6 < *xat);
    }

    return 0;
  }
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
    v7 = sub_1000FF498(a1, a2);
    if (v7)
    {
      DWORD2(v20) = a3;
      LODWORD(v20) = 0;
      DWORD1(v20) = sub_1000F4290();
      *&v21 = 0x200000;
      *(&v21 + 1) = sub_1000FF510;
      *(&v22 + 1) = v7;
      *&v23 = sub_10010F724;
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", v16, 39, 0, v15, v5, v6, v18);
    v3 = -1;
LABEL_9:
    j__free(v7);
  }

  return v3;
}

uint64_t sub_10010F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionDecode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t sub_10010F780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v18 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v19 = sub_1000F9EEC(a4, v11, v12, v13, v14, v15, v16, v17);
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
    *(v18 + 32) = sub_1000FAB94;
    *(v18 + 40) = sub_1000FA760;
    *(v18 + 48) = v19;
    if (sub_1000E766C((v18 + 56), sub_10010F738, v18, 0))
    {
      v22 = *__error();
      v23 = "failed to start decoder thread";
      v24 = 125;
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", v24, 39, v22, v23, v20, v21, v29);
      sub_10010F8CC(v18);
      return 0;
    }
  }

  else
  {
    v25 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v25, "malloc", v26, v27, v29);
  }

  return v18;
}

void sub_10010F8CC(void *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = sub_1000FAC38(a1[8], v10, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer", v3, v4, v9);
    }

LABEL_7:
    v5 = a1[7];
    if (v5)
    {
      if (sub_1000E79CC(v5))
      {
        v6 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v6, "failed to join decoder thread", v7, v8, v9);
      }
    }

    sub_1000FA398(a1[8]);
    free(a1);
  }
}

uint64_t sub_10010F9BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return sub_1000FAC38(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

size_t sub_10010F9D0(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return sub_1000FA760(*(result + 64), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_10010F9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionEncode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t sub_10010FA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
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
    v23 = sub_1000F9EEC(a4, v15, v16, v17, v18, v19, v20, v21);
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
    *(v22 + 24) = sub_1000FAC38;
    *(v22 + 32) = sub_1000FA760;
    *(v22 + 40) = v23;
    *(v22 + 48) = a1;
    *(v22 + 56) = a2;
    *(v22 + 64) = a3;
    if (sub_1000E766C((v22 + 80), sub_10010F9E0, v22, 0))
    {
      v26 = *__error();
      v27 = "failed to start encoder thread";
      v28 = 219;
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", v28, 39, v26, v27, v24, v25, v40);
      sub_10010FB94(v22, v32, v33, v34, v35, v36, v37, v38);
      return 0;
    }
  }

  else
  {
    v29 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v29, "malloc", v30, v31, v40);
  }

  return v22;
}

void sub_10010FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      sub_1000FAB94(*(a1 + 88), 0, 0, a4, a5, a6, a7, a8);
    }

    v9 = *(a1 + 80);
    if (v9 && sub_1000E79CC(v9))
    {
      v10 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v10, "failed to join encoder thread", v11, v12, v13);
    }

    sub_1000FA398(*(a1 + 88));

    free(a1);
  }
}

uint64_t sub_10010FC2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent", a7, a8, vars0);
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

  return sub_1000FAB94(v11, a2, a3, a4, a5, a6, a7, a8);
}

size_t sub_10010FCB0(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return sub_1000FA760(*(result + 88), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t *sub_10010FCC0(int a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_1000FE0F8(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_10010F780(sub_1000FE21C, sub_1000FE584, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_10010FDA4(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFD", 285, 39, *v14, "malloc", v15, v16, v18);
  }

  return v11;
}

void sub_10010FDA4(uint64_t a1)
{
  if (a1)
  {
    sub_10010F8CC(*(a1 + 8));
    sub_1000FE0A0(*a1);

    free(a1);
  }
}

uint64_t *sub_10010FDF0(const char *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_1000FDD20(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_10010F780(sub_1000FE21C, sub_1000FE584, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_10010FDA4(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFilename", 304, 39, *v14, "malloc", v15, v16, v18);
  }

  return v11;
}

uint64_t sub_10010FED4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0)
  {
    return sub_1000FAC38(*(v3 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t *sub_10010FEF0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    result = sub_1000FE584(*result);
    v17 = v9[1];
    if (v17)
    {
      v18 = *(v17 + 64);

      return sub_1000FA760(v18, v10, v11, v12, v13, v14, v15, v16, a9);
    }
  }

  return result;
}

void *sub_10010FF44(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_1000FE674(a1, a2);
    *v13 = v14;
    if (!v14 || (v22 = sub_10010FA28(sub_1000FE740, sub_1000FE900, v14, a3, a4, a5, a6), (v13[1] = v22) == 0))
    {
      sub_100110038(v13, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v23 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v23, "malloc", v24, v25, v27);
  }

  return v13;
}

void sub_100110038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_10010FB94(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
    sub_1000FE6F0(*a1);

    free(a1);
  }
}

int **sub_100110084(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_1000FE594(a1, a2);
    *v13 = v14;
    if (!v14 || (v22 = sub_10010FA28(sub_1000FE740, sub_1000FE900, v14, a3, a4, a5, a6), (v13[1] = v22) == 0))
    {
      sub_100110038(v13, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v23 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFilename", 374, 39, *v23, "malloc", v24, v25, v27);
  }

  return v13;
}

uint64_t *sub_100110180(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    result = sub_1000FE900(*result);
    v17 = v9[1];
    if (v17)
    {
      v18 = *(v17 + 88);

      return sub_1000FA760(v18, v10, v11, v12, v13, v14, v15, v16, a9);
    }
  }

  return result;
}

uint64_t sub_1001101D4(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
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
    v10 = sub_100120834(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_100120834(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_27;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (sub_100120D44(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      v19 = "couldn't read enough header bytes from compressed file";
      v20 = 465;
      goto LABEL_26;
    }

    v14 = sub_1001209F0(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v15 = v14;
      if (*v14 == 25200 && *(v14 + 2) == 122)
      {
        v25 = 0;
        while (1)
        {
          v26 = v15[3];
          if (v26 == sub_100119FE4(v25))
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
        *(v9 + 48) = sub_10011AE94(v25);
        sub_100120A4C(*(v9 + 56), 0xCuLL, v36, v37, v38, v39, v40, v41);
        if ((sub_1001208C8(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          v19 = "MemBufferIncreaseCapacity in";
          v20 = 487;
        }

        else
        {
          if ((sub_1001208C8(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", v20, 39, 0, v19, v12, v13, v47);
LABEL_27:
          sub_100110758(v9);
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
            sub_100120A4C(*(v9 + 56), 2uLL, v42, v43, v44, v45, v12, v13);
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
        if (sub_100120D44(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) < 0)
        {
          v19 = "reading gzip header data";
          v20 = 525;
          goto LABEL_26;
        }

        v28 = sub_1001209DC(*(v9 + 56));
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

        sub_100120A4C(*(v9 + 56), v35, v29, v30, v31, v32, v12, v13);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v21, "malloc", v22, v23, v47);
  }

  return v9;
}

void sub_100110758(uint64_t a1)
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

    sub_100120944(*(a1 + 56));
    sub_100120944(*(a1 + 64));
    j__free(*(a1 + 24));

    free(a1);
  }
}

uint64_t sub_1001107E8(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = sub_1000FF498(a1, a2);
  if (v4)
  {
    v7 = v4;
    result = sub_1001101D4(sub_1000FF510, sub_1000FF584, v4, a3);
    if (result)
    {
      *(result + 24) = v7;
      return result;
    }

    j__free(v7);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed", v5, v6, v9);
  }

  return 0;
}

uint64_t sub_100110884(uint64_t a1, char *a2, size_t a3)
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

      v8 = sub_1001209DC(*(a1 + 64));
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

        v10 = sub_1001209F0(*(a1 + 64));
        memcpy(a2, v10, v9);
        sub_100120A4C(*(a1 + 64), v9, v11, v12, v13, v14, v15, v16);
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
        v43 = sub_1001209DC(v17);
        v44 = v43;
        if (v43 <= 0xF)
        {
          if (sub_100120D44(*(a1 + 56), 16 - v43, *a1, *(a1 + 16)) < 0)
          {
            v107 = "reading block header failed";
            v108 = 645;
            goto LABEL_78;
          }

          v45 = sub_1001209DC(*(a1 + 56));
          if (!v45)
          {
            *(a1 + 208) = 1;
            return v7;
          }

          v44 = v45;
        }

        v46 = sub_1001209F0(*(a1 + 56));
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

        sub_100120A4C(*(a1 + 56), 0x10uLL, v47, v48, v49, v50, v18, v19);
        v57 = v54 >= v44 - 16;
        v58 = v54 - (v44 - 16);
        if (v58 != 0 && v57)
        {
          if (sub_100120D44(*(a1 + 56), v58, *a1, *(a1 + 16)) != v58)
          {
            v107 = "reading block payload failed";
            v108 = 665;
            goto LABEL_78;
          }

          sub_1001209DC(*(a1 + 56));
        }

        if (v52 == v51)
        {
          v59 = sub_100120A00(*(a1 + 64));
          v60 = sub_1001209F0(*(a1 + 56));
          memcpy(v59, v60, v53);
        }

        else
        {
          v97 = *(a1 + 48);
          v98 = sub_100120A00(*(a1 + 64));
          v99 = sub_1001209F0(*(a1 + 56));
          if (v97(v98, v53, v99, v54) != v53)
          {
            v107 = "decoding block payload failed";
            v108 = 677;
            goto LABEL_78;
          }
        }

        sub_100120A4C(*(a1 + 56), v54, v61, v62, v63, v64, v18, v19);
        sub_100120AD4(*(a1 + 64), v53, v100, v101, v102, v103, v104, v105);
        goto LABEL_64;
      }

      if (sub_100120D44(v17, 0xFFFFFFFFFFFFFFFFLL, *a1, *(a1 + 16)) < 0)
      {
        v107 = "reading payload failed";
        v108 = 687;
        goto LABEL_78;
      }

      v20 = sub_1001209F0(*(a1 + 56));
      v21 = sub_1001209DC(*(a1 + 56));
      v22 = sub_100120A00(*(a1 + 64));
      v23 = sub_1001209E4(*(a1 + 64));
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload", v85, v86, v110);
            v106 = 1;
            goto LABEL_62;
          }

          v88 = *(a1 + 72);
          v89 = *(a1 + 96);
          sub_100120A4C(*(a1 + 56), v88 - v20, v81, v82, v83, v84, v85, v86);
          if (v89 == v22 && v88 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(*(a1 + 64), v89 - v22, v90, v91, v92, v93, v94, v95);
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
          sub_100120A4C(*(a1 + 56), v71 - v20, v66, v67, v68, v69, v18, v19);
          if (v72 == v22 && v71 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(*(a1 + 64), v72 - v22, v73, v74, v75, v76, v77, v78);
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
          sub_100120A4C(*(a1 + 56), v21 - v34, v29, v30, v31, v32, v18, v19);
          if (v26 == v35 && v21 == v34)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(*(a1 + 64), v26 - v35, v36, v37, v38, v39, v40, v41);
          if (v33 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d", v24, v25, *(a1 + 32));
          return -1;
      }

      *(a1 + 208) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        v107 = "Truncated stream";
        v108 = 753;
LABEL_78:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", v108, 39, 0, v107, v18, v19, v110);
        return -1;
      }

      v106 = 0;
    }

    while (!v106);
  }

  return -1;
}

uint64_t sub_100110D7C(uint64_t result)
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

    return sub_1000FF584(v3);
  }

  return result;
}

void *sub_100110DC8(int a1, unint64_t st_size, unint64_t a3, unsigned int a4)
{
  v8 = calloc(1uLL, 0x70uLL);
  if (!v8)
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", 889, 39, *v14, "malloc", v15, v16, v44);
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
  v22 = sub_10011AE94(v21);
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", v13, 39, v9, v12, v10, v11, v44);
          sub_1001112C8(v8);
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
    v39 = xmmword_1003772E0;
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

void sub_1001112C8(void **a1)
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

uint64_t sub_100111324(uint64_t a1, char *__dst, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "loadBlock", v39, 39, v40, v38, a7, a8, v42);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", v37, 39, 0, v36, a7, a8, v42);
    return -1;
  }

  v12 = 0;
LABEL_38:
  *(a1 + 104) += v12;
  return v12;
}

uint64_t sub_100111728(uint64_t result)
{
  if (result)
  {
    *(result + 4) = 1;
  }

  return result;
}

size_t sub_100111738(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t sub_100111778(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

uint64_t sub_1001117B8(uint64_t *a1, char *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[3] = 0;
  v8 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v14 = 0;
  v15 = 1;
  while (2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *&__src[v17];
      if (v18 < 4)
      {
        goto LABEL_3;
      }

      v19 = __CFADD__(v18, v17);
      v20 = v18 + v17;
      if (v19 || v20 > __smax)
      {
        goto LABEL_3;
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      v21 = a1[2];
      v22 = (*a1)++;
      *(v21 + 8 * v22) = v17;
      if (v20 >= __smax)
      {
        goto LABEL_43;
      }

      ++v16;
LABEL_15:
      v17 = v20;
      if (v20 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    ++v16;
    if (v20 < __smax)
    {
      goto LABEL_15;
    }

    if ((v15 & 1) == 0)
    {
LABEL_43:
      *v8 = 0;
      if ((__smax & 0x8000000000000000) != 0)
      {
        break;
      }

      v32 = a1[4];
      if (v32 < __smax)
      {
        v33 = 0x4000;
        do
        {
          while (!v32)
          {
            v32 = 0x4000;
            if (__smax <= 0x4000)
            {
              goto LABEL_55;
            }
          }

          v34 = v32 >> 1;
          if ((v32 & (v32 >> 1)) != 0)
          {
            v34 = v32 & (v32 >> 1);
          }

          v32 += v34;
        }

        while (v32 < __smax);
        v33 = v32;
        if (v32 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_80;
        }

LABEL_55:
        v35 = a1[5];
        v36 = realloc(v35, v33);
        if (v36)
        {
          a1[4] = v33;
          a1[5] = v36;
          goto LABEL_57;
        }

        free(v35);
LABEL_80:
        a1[4] = 0;
        a1[5] = 0;
        break;
      }

LABEL_57:
      v37 = a1[5];
      if (__src)
      {
        memcpy((v37 + *v8), __src, __smax);
      }

      else if (v37)
      {
        memset_s((v37 + *v8), __smax, 0, __smax);
      }

      a1[3] += __smax;
      v38 = *a1;
      if (*a1)
      {
        v39 = 0;
        while (1)
        {
          if (v38 == v39 || (v40 = a1[5] + *(a1[2] + 8 * v39), (*v40 + 1) <= 0x16))
          {
            v11 = 179;
            goto LABEL_4;
          }

          v41 = *(v40 + 4);
          if ((v41 - 65) > 0x14 || ((1 << (v41 - 65)) & 0x100809) == 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 188, 100, 0, "invalid ACL entry type %c", a7, a8, v41);
            goto LABEL_5;
          }

          HIDWORD(v44) = *(v40 + 21) - 71;
          LODWORD(v44) = HIDWORD(v44);
          v43 = v44 >> 1;
          v45 = v43 > 7;
          v46 = (1 << v43) & 0xC3;
          if (v45 || v46 == 0)
          {
            break;
          }

          if ((*(v40 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 199, 100, 0, "invalid ACL flags 0x%llx", a7, a8, *(v40 + 5));
            goto LABEL_5;
          }

          v48 = *(v40 + 13);
          if ((v48 & 0xFFFFFFFFFFEFC001) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 200, 100, 0, "invalid ACL perms 0x%llx", a7, a8, v48);
            goto LABEL_5;
          }

          result = 0;
          if (v38 == ++v39)
          {
            return result;
          }
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 197, 100, 0, "invalid ACL qualifier type %c", a7, a8, *(v40 + 21));
        goto LABEL_5;
      }

      return 0;
    }

    if (v16 > 0xFFFFFFFE)
    {
      break;
    }

    v23 = a1[1];
    if (v23 >= v16)
    {
      goto LABEL_29;
    }

    v24 = a1[1];
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
      goto LABEL_29;
    }

    a1[1] = v24;
    if (8 * v24 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_90:
      a1[2] = 0;
      break;
    }

    v25 = a1[2];
    v26 = realloc(v25, 8 * v24);
    if (!v26)
    {
      free(v25);
      goto LABEL_90;
    }

    a1[2] = v26;
LABEL_29:
    if ((__smax & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = a1[4];
    if (v27 >= __smax)
    {
LABEL_41:
      v15 = 0;
      v14 = 1;
      if (__smax >= 4)
      {
        continue;
      }
    }

    else
    {
      do
      {
        while (!v27)
        {
          v27 = 0x4000;
          v29 = 0x4000;
          if (__smax <= 0x4000)
          {
            goto LABEL_39;
          }
        }

        v28 = v27 >> 1;
        if ((v27 & (v27 >> 1)) != 0)
        {
          v28 = v27 & (v27 >> 1);
        }

        v27 += v28;
      }

      while (v27 < __smax);
      v29 = v27;
      if (v27 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_87;
      }

LABEL_39:
      v30 = a1[5];
      v31 = realloc(v30, v29);
      if (v31)
      {
        a1[4] = v29;
        a1[5] = v31;
        goto LABEL_41;
      }

      free(v30);
LABEL_87:
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    break;
  }

LABEL_3:
  *a1 = 0;
  a1[3] = 0;
  v11 = 169;
LABEL_4:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", v11, 100, 0, "invalid ACL blob", a7, a8, v49);
LABEL_5:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_100111C50(AAEntryACLBlob_impl *a1, char *__s, const char *a3, char a4)
{
  v5 = __s;
  if ((sub_1000F4680(v18, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 215, 100, 0, "invalid path %s/%s", v7, v8, v5);
    return 0xFFFFFFFFLL;
  }

  v9 = open(v18, 0x200000);
  if (v9 < 0)
  {
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 219, 100, v14, "open: %s", v15, v16, v18);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if ((sub_100111DB0(a1, v9, a4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 221, 100, 0, "initializing ACL blob: %s", v11, v12, v18);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  close(v10);
  return v13;
}

uint64_t sub_100111DB0(AAEntryACLBlob_impl *a1, int a2, char a3)
{
  v6 = sysconf(71);
  v7 = sysconf(70);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= 4096)
  {
    v9 = 4096;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 243, 100, *v15, "malloc", v16, v17, v33);
    goto LABEL_15;
  }

  v10 = malloc(v9);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  *a1 = 0;
  *(a1 + 3) = 0;
  fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
  if (!fd_np)
  {
LABEL_13:
    free(v11);
    return 0;
  }

  v13 = fd_np;
  entry_p = 0;
  if (acl_get_entry(fd_np, 0, &entry_p))
  {
LABEL_12:
    acl_free(v13);
    goto LABEL_13;
  }

  while (1)
  {
    tag_type_p = ACL_UNDEFINED_TAG;
    flagset_p = 0;
    mask_p = 0;
    *id_type = 0;
    memset(&sid, 0, sizeof(sid));
    memset(&ace, 0, sizeof(ace));
    memset(out, 0, 256);
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v28 = *__error();
      v31 = "acl_get_tag_type";
      v32 = 272;
LABEL_66:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", v32, 100, v28, v31, v29, v30, v33);
      goto LABEL_67;
    }

    if (tag_type_p - 1 <= 1)
    {
      break;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 274, 100, "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", v18, v19, v20, tag_type_p);
LABEL_60:
    if (acl_get_entry(v13, -1, &entry_p))
    {
      goto LABEL_12;
    }
  }

  ace.tag = tag_type_p;
  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v28 = *__error();
    v31 = "acl_get_flagset_np";
    v32 = 278;
    goto LABEL_66;
  }

  if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
  {
    ace.flags = 0x20000;
    v21 = 0x20000;
  }

  else
  {
    v21 = 0;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
  {
    v21 |= 0x10uLL;
    ace.flags = v21;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
  {
    v21 |= 0x20uLL;
    ace.flags = v21;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
  {
    v21 |= 0x40uLL;
    ace.flags = v21;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
  {
    v21 |= 0x80uLL;
    ace.flags = v21;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
  {
    ace.flags = v21 | 0x100;
  }

  if (acl_get_permset_mask_np(entry_p, &mask_p))
  {
    v28 = *__error();
    v31 = "acl_get_permset_mask_np";
    v32 = 289;
    goto LABEL_66;
  }

  ace.perms = mask_p & 0x103FFE;
  qualifier = acl_get_qualifier(entry_p);
  if (!qualifier)
  {
    v28 = *__error();
    v31 = "acl_get_qualifier";
    v32 = 294;
    goto LABEL_66;
  }

  v23 = qualifier;
  if ((a3 & 4) != 0)
  {
    goto LABEL_57;
  }

  if (mbr_uuid_to_id(qualifier, &id_type[1], id_type))
  {
    goto LABEL_53;
  }

  if (id_type[0] == 1)
  {
    memset(&v35, 0, 32);
    v34 = 0;
    v24 = 0;
    if (!getgrgid_r(id_type[1], &v35, v11, v9, &v34) && v34 && v35.pw_name)
    {
      if (strlen(v35.pw_name) > 0xFF)
      {
        goto LABEL_51;
      }

      v24 = 71;
LABEL_50:
      ace.qualifier_type = v24;
      __strlcpy_chk();
    }
  }

  else
  {
    if (id_type[0])
    {
      goto LABEL_53;
    }

    memset(&v35, 0, sizeof(v35));
    v34 = 0;
    v24 = 0;
    if (!getpwuid_r(id_type[1], &v35, v11, v9, &v34) && v34 && v35.pw_name)
    {
      if (strlen(v35.pw_name) <= 0xFF)
      {
        v24 = 85;
        goto LABEL_50;
      }

LABEL_51:
      v24 = 0;
    }
  }

  if (!v24)
  {
LABEL_53:
    if (!mbr_uuid_to_sid(v23, &sid) && !mbr_sid_to_string(&sid, v11) && strlen(v11) <= 0xFF)
    {
      ace.qualifier_type = 83;
      __strlcpy_chk();
      goto LABEL_58;
    }

LABEL_57:
    ace.qualifier_type = 73;
    uuid_unparse_upper(v23, out);
  }

LABEL_58:
  v25 = strlen(out);
  if ((AAEntryACLBlobAppendEntry(a1, &ace, out, v25) & 0x80000000) == 0)
  {
    acl_free(v23);
    goto LABEL_60;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 340, 100, 0, "encoding entry", v26, v27, v33);
  acl_free(v23);
LABEL_67:
  acl_free(v13);
  free(v11);
LABEL_15:
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobAppendEntry(AAEntryACLBlob acl, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((sub_100113138(ace, ace, qualifier_value, qualifier_size, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v24 = "invalid ACL entry";
    v25 = 618;
LABEL_50:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", v25, 100, 0, v24, v12, v13, v44);
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v14 = (qualifier_size + 22), qualifier_size == -23))
  {
    v24 = "ACL entry size out of range";
    v25 = 622;
    goto LABEL_50;
  }

  if (v14 < 4)
  {
    goto LABEL_49;
  }

  v15 = (acl + 24);
  v16 = *(acl + 3);
  v17 = v16 + v14;
  if (__CFADD__(v16, v14))
  {
    goto LABEL_49;
  }

  v19 = *acl;
  v18 = *(acl + 1);
  v20 = *acl + 1;
  if (v18 < v20)
  {
    v21 = *(acl + 1);
    do
    {
      if (v21)
      {
        v21 *= 2;
      }

      else
      {
        v21 = 16;
      }
    }

    while (v21 < v20);
    if (v21 > v18)
    {
      v45 = *acl;
      v23 = (acl + 16);
      v22 = *(acl + 2);
      *(acl + 1) = v21;
      if (8 * v21 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_48:
        *acl = 0;
        *v23 = 0;
        *(acl + 3) = 0;
        goto LABEL_49;
      }

      v26 = realloc(v22, 8 * v21);
      if (!v26)
      {
        free(v22);
        goto LABEL_48;
      }

      *v23 = v26;
      v19 = v45;
    }
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v27 = *(acl + 4);
  if (v27 < v17)
  {
    do
    {
      while (!v27)
      {
        v27 = 0x4000;
        if (v17 <= 0x4000)
        {
          v27 = 0x4000;
          goto LABEL_30;
        }
      }

      v28 = v27 >> 1;
      if ((v27 & (v27 >> 1)) != 0)
      {
        v28 = v27 & (v27 >> 1);
      }

      v27 += v28;
    }

    while (v27 < v17);
    if (v27 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_43;
    }

LABEL_30:
    v29 = *(acl + 5);
    v30 = realloc(v29, v27);
    if (v30)
    {
      *(acl + 4) = v27;
      *(acl + 5) = v30;
      goto LABEL_32;
    }

    free(v29);
LABEL_43:
    *(acl + 4) = 0;
    *(acl + 5) = 0;
LABEL_44:
    *acl = 0;
    *(acl + 3) = 0;
    goto LABEL_49;
  }

LABEL_32:
  v31 = *v15;
  v32 = *v15 + v14;
  if (__CFADD__(*v15, v14) || (v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  if (v27 < v32)
  {
    do
    {
      while (!v27)
      {
        v27 = 0x4000;
        if (v32 <= 0x4000)
        {
          v34 = (acl + 40);
          v27 = 0x4000;
          goto LABEL_53;
        }
      }

      v33 = v27 >> 1;
      if ((v27 & (v27 >> 1)) != 0)
      {
        v33 = v27 & (v27 >> 1);
      }

      v27 += v33;
    }

    while (v27 < v32);
    v34 = (acl + 40);
    if (v27 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_69;
    }

LABEL_53:
    v46 = v34;
    v38 = *v34;
    v35 = realloc(v38, v27);
    if (v35)
    {
      *(acl + 5) = v35;
      v36 = (acl + 40);
      *(acl + 4) = v27;
      v31 = *(acl + 3);
      goto LABEL_55;
    }

    free(v38);
    v34 = v46;
LABEL_69:
    *v34 = 0;
    *v15 = 0;
    *(acl + 4) = 0;
    goto LABEL_49;
  }

  v36 = (acl + 40);
  v35 = *(acl + 5);
  if (v35)
  {
LABEL_55:
    memset_s(&v35[v31], (qualifier_size + 22), 0, (qualifier_size + 22));
    v31 = *v15;
  }

  *(acl + 3) = v31 + v14;
  v39 = *(acl + 2);
  v40 = (*acl)++;
  *(v39 + 8 * v40) = v16;
  if (v16 >= 0xFFFFFFFFFFFFFFFCLL || v16 + 4 > *v15 || (*(*v36 + v16) = v14, v19 < 0))
  {
LABEL_49:
    v24 = "alloc ACL entry";
    v25 = 626;
    goto LABEL_50;
  }

  v41 = *(acl + 5) + *(*(acl + 2) + 8 * v19);
  *v41 = v14;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v42 = 68;
  }

  else
  {
    v42 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v43 = 65;
  }

  else
  {
    v43 = v42;
  }

  *(v41 + 4) = v43;
  *(v41 + 5) = ace->flags;
  *(v41 + 13) = ace->perms;
  *(v41 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v41 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

uint64_t sub_1001126B4(unint64_t *a1, int a2, char a3)
{
  memset(&v52, 0, sizeof(v52));
  if (fstat(a2, &v52))
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 370, 100, *v6, "fstat", v7, v8, v46);
    return 0xFFFFFFFFLL;
  }

  v10 = v52.st_mode & 0xF000;
  if (v10 != 0x8000 && v10 != 0x4000)
  {
    return 0;
  }

  v11 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v12 = 0;
  v13 = a1[2];
  do
  {
    v14 = *v13++;
    v15 = *(a1[5] + 4 + v14);
    if (v15 == 68 || v15 == 65)
    {
      ++v12;
    }

    --v11;
  }

  while (v11);
  if (!v12)
  {
    return 0;
  }

  acl_p = 0;
  v16 = sysconf(71);
  v17 = sysconf(70);
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v18 <= 4096)
  {
    v19 = 4096;
  }

  else
  {
    v19 = v18;
  }

  if (v18 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_24:
    v25 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 403, 100, *v25, "malloc", v26, v27, v46);
    v23 = 0;
    goto LABEL_83;
  }

  v20 = malloc(v19);
  if (!v20)
  {
    goto LABEL_24;
  }

  v23 = v20;
  if ((a3 & 8) != 0)
  {
    fd_np = acl_p;
  }

  else
  {
    fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
    acl_p = fd_np;
  }

  if (!fd_np)
  {
    fd_np = acl_init(v12);
    acl_p = fd_np;
    if (!fd_np)
    {
      v42 = *__error();
      v43 = "acl_init";
      v44 = 415;
      goto LABEL_82;
    }
  }

  v28 = *a1;
  if (!*a1)
  {
LABEL_64:
    if (acl_set_fd(a2, fd_np) < 0)
    {
      v41 = __error();
      if ((a3 & 1) == 0 || *v41 != 1)
      {
        v42 = *__error();
        v43 = "acl_set_fd";
        v44 = 499;
        goto LABEL_82;
      }
    }

    v9 = 0;
    goto LABEL_84;
  }

  v29 = 0;
  while (1)
  {
    v30 = (a1[5] + *(a1[2] + 8 * v29));
    flagset_p = 0;
    entry_p = 0;
    memset(uu, 0, sizeof(uu));
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *in = 0u;
    v54 = 0u;
    v31 = *v30;
    v32 = *(v30 + 4);
    if (v32 == 65)
    {
      v33 = ACL_EXTENDED_ALLOW;
    }

    else
    {
      if (v32 != 68)
      {
        goto LABEL_62;
      }

      v33 = ACL_EXTENDED_DENY;
    }

    if ((*(v30 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
    {
      v46 = *(v30 + 5);
      v43 = "invalid ACE flags: 0x%016llx";
      v44 = 444;
      goto LABEL_81;
    }

    if ((*(v30 + 13) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v46 = *(v30 + 13);
      v43 = "invalid ACE perms: 0x%016llx";
      v44 = 445;
      goto LABEL_81;
    }

    if ((v31 - 278) <= 0xFFFFFEFE)
    {
      v43 = "qualifier too long";
      v44 = 448;
      goto LABEL_81;
    }

    v34 = v31 - 22;
    __memcpy_chk();
    in[v34] = 0;
    HIDWORD(v36) = *(v30 + 21) - 71;
    LODWORD(v36) = HIDWORD(v36);
    v35 = v36 >> 1;
    if (v35 <= 5)
    {
      if (v35)
      {
        if (v35 != 1)
        {
          break;
        }

        if (uuid_parse(in, uu))
        {
LABEL_73:
          LOBYTE(v46) = *(v30 + 21);
          v43 = "could not resolve qualifier (type %c): %s";
          v44 = 486;
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      memset(&v48, 0, 32);
      v47 = 0;
      v40 = getgrnam_r(in, &v48, v23, v19, &v47);
      v38 = 0;
      if (!v40 && v47)
      {
        v39 = mbr_gid_to_uuid(v48.pw_uid, uu);
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v35 == 6)
    {
      memset(&v48, 0, sizeof(v48));
      if (mbr_string_to_sid(in, &v48))
      {
        v38 = 0;
        goto LABEL_54;
      }

      v39 = mbr_sid_to_uuid(&v48, uu);
      goto LABEL_53;
    }

    if (v35 != 7)
    {
      break;
    }

    memset(&v48, 0, sizeof(v48));
    v47 = 0;
    v37 = getpwnam_r(in, &v48, v23, v19, &v47);
    v38 = 0;
    if (!v37 && v47)
    {
      v39 = mbr_uid_to_uuid(v48.pw_uid, uu);
LABEL_53:
      v38 = v39 == 0;
    }

LABEL_54:
    if (!v38)
    {
      goto LABEL_73;
    }

LABEL_55:
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v42 = *__error();
      v43 = "acl_create_entry";
      v44 = 489;
      goto LABEL_82;
    }

    if (acl_set_tag_type(entry_p, v33))
    {
      v42 = *__error();
      v43 = "acl_set_tag_type";
      v44 = 490;
      goto LABEL_82;
    }

    if (acl_set_permset_mask_np(entry_p, *(v30 + 13)))
    {
      v42 = *__error();
      v43 = "acl_set_permset_mask_np";
      v44 = 491;
      goto LABEL_82;
    }

    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v42 = *__error();
      v43 = "acl_get_flagset_np";
      v44 = 492;
      goto LABEL_82;
    }

    if (acl_add_flag_np(flagset_p, *(v30 + 5)))
    {
      v42 = *__error();
      v43 = "acl_add_flag_np";
      v44 = 493;
      goto LABEL_82;
    }

    if (acl_set_qualifier(entry_p, uu))
    {
      v42 = *__error();
      v43 = "acl_set_qualifier";
      v44 = 494;
      goto LABEL_82;
    }

    v28 = *a1;
LABEL_62:
    if (++v29 >= v28)
    {
      fd_np = acl_p;
      goto LABEL_64;
    }
  }

  LOBYTE(v46) = *(v30 + 21);
  v43 = "invalid qualifier type: %d";
  v44 = 483;
LABEL_81:
  v42 = 0;
LABEL_82:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", v44, 100, v42, v43, v21, v22, v46);
LABEL_83:
  v9 = 0xFFFFFFFFLL;
LABEL_84:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v23);
  return v9;
}

AAEntryACLBlob AAEntryACLBlobCreate(void)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobCreate", 521, 100, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AAEntryACLBlobDestroy(AAEntryACLBlob acl)
{
  if (acl)
  {
    free(*(acl + 2));
    free(*(acl + 5));
    memset_s(acl + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(acl, 0x30uLL, 0, 0x30uLL);

    free(acl);
  }
}

AAEntryACLBlob AAEntryACLBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryACLBlobCreate();
  v10 = v4;
  if (v4 && (sub_1001117B8(v4, data, data_size, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v10);
    return 0;
  }

  return v10;
}

AAEntryACLBlob AAEntryACLBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v3 = flags;
  v6 = AAEntryACLBlobCreate();
  v7 = v6;
  if (v6 && (sub_100111C50(v6, dir, path, v3) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v7);
    return 0;
  }

  return v7;
}

int AAEntryACLBlobClear(AAEntryACLBlob acl)
{
  *acl = 0;
  *(acl + 3) = 0;
  return 0;
}

int AAEntryACLBlobApplyToPath(AAEntryACLBlob acl, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  v5 = dir;
  if ((sub_1000F4680(v18, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 569, 100, 0, "invalid path %s/%s", v7, v8, v5);
    return -1;
  }

  v9 = open(v18, 0x200000);
  if (v9 < 0)
  {
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 571, 100, v14, "open: %s", v15, v16, v18);
    return -1;
  }

  v10 = v9;
  if ((sub_1001126B4(acl, v9, v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 573, 100, 0, "applying ACL blob: %s", v11, v12, v18);
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  close(v10);
  return v13;
}

int AAEntryACLBlobGetEntry(AAEntryACLBlob acl, uint32_t i, AAAccessControlEntry *ace, size_t qualifier_capacity, uint8_t *qualifier_value, size_t *qualifier_size)
{
  if (*acl <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobGetEntry", 593, 100, 0, "invalid ACL index %u", v6, v7, i);
  }

  else
  {
    v9 = *(acl + 5) + *(*(acl + 2) + 8 * i);
    v10 = (*v9 - 22);
    v11 = *(v9 + 4);
    if (v11 == 65)
    {
      v12 = ACL_EXTENDED_ALLOW;
    }

    else
    {
      v12 = 2 * (v11 == 68);
    }

    ace->tag = v12;
    ace->qualifier_type = *(v9 + 21);
    ace->flags = *(v9 + 5);
    ace->perms = *(v9 + 13);
    if (qualifier_size)
    {
      *qualifier_size = v10;
    }

    if (!qualifier_capacity)
    {
      return 0;
    }

    if (v10 <= qualifier_capacity)
    {
      memcpy(qualifier_value, (v9 + 22), v10);
      return 0;
    }
  }

  return -1;
}

uint64_t sub_100113138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 - 3) > 0xFFFFFFFD)
  {
    v8 = *(a1 + 24);
    HIDWORD(v10) = v8 - 71;
    LODWORD(v10) = v8 - 71;
    v9 = v10 >> 1;
    v11 = v9 > 7;
    v12 = (1 << v9) & 0xC3;
    if (v11 || v12 == 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 156, 100, 0, "invalid ACL qualifier type %c", a7, a8, v8);
    }

    else if ((*(a1 + 16) & 0xFFFFFFFFFCFDFE0FLL) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 158, 100, 0, "invalid ACL flags 0x%llx", a7, a8, *(a1 + 16));
    }

    else
    {
      if ((*(a1 + 8) & 0xFFFFFFFFFFEFC001) == 0)
      {
        return 0;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 159, 100, 0, "invalid ACL perms 0x%llx", a7, a8, *(a1 + 8));
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 148, 100, 0, "invalid ACL entry tag %c", a7, a8, *a1);
  }

  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobSetEntry(AAEntryACLBlob acl, uint32_t i, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((sub_100113138(ace, *&i, ace, qualifier_value, qualifier_size, v5, v6, v7) & 0x80000000) != 0)
  {
    v23 = "invalid ACL entry";
    v24 = 648;
    goto LABEL_11;
  }

  if (*acl <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 649, 100, 0, "invalid ACL index %u", v13, v14, i);
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v15 = (qualifier_size + 22), qualifier_size == -23))
  {
    v23 = "ACL entry size out of range";
    v24 = 653;
    goto LABEL_11;
  }

  v16 = i;
  v17 = *(*(acl + 2) + 8 * i);
  v18 = *(acl + 5);
  v19 = *&v18[v17];
  v20 = v17 + v19;
  if (__CFADD__(v17, v19) || (v21 = *(acl + 3), v22 = v21 - v20, v21 < v20))
  {
LABEL_7:
    v23 = "alloc ACL entry";
    v24 = 656;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", v24, 100, 0, v23, v13, v14, v42);
    return -1;
  }

  if (v15 > v19)
  {
    v26 = v15 - v19;
    v27 = v21 + v15 - v19;
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_7;
    }

    v28 = *(acl + 4);
    if (v28 < v27)
    {
      v29 = 0x4000;
      do
      {
        while (!v28)
        {
          v28 = 0x4000;
          if (v27 <= 0x4000)
          {
            goto LABEL_30;
          }
        }

        v30 = v28 >> 1;
        if ((v28 & (v28 >> 1)) != 0)
        {
          v30 = v28 & (v28 >> 1);
        }

        v28 += v30;
      }

      while (v28 < v27);
      v29 = v28;
      if (v28 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_55;
      }

LABEL_30:
      v44 = v26;
      v43 = v29;
      v33 = realloc(v18, v29);
      if (v33)
      {
        v26 = v44;
        *(acl + 4) = v43;
        *(acl + 5) = v33;
        v18 = v33;
        v22 = v21 - v20;
        goto LABEL_32;
      }

      free(v18);
LABEL_55:
      *(acl + 3) = 0;
      *(acl + 4) = 0;
      *(acl + 5) = 0;
      goto LABEL_7;
    }

LABEL_32:
    if (v21 != v20)
    {
      v34 = v26;
      memmove(&v18[v20 + v26], &v18[v20], v22);
      v26 = v34;
    }

    v21 = *(acl + 3) + v26;
    goto LABEL_35;
  }

  if (v15 < v19)
  {
    v31 = v19 - v15;
    if (v21 != v20)
    {
      v32 = v31;
      memmove(&v18[v20 - v31], &v18[v20], v22);
      v31 = v32;
      v20 = *(acl + 3);
    }

    v21 = v20 - v31;
LABEL_35:
    *(acl + 3) = v21;
  }

  if (v17 >= 0xFFFFFFFFFFFFFFFCLL || v17 + 4 > v21)
  {
    goto LABEL_7;
  }

  *(*(acl + 5) + v17) = v15;
  if (*acl > v16)
  {
    v35 = v16;
    while (v17 < 0xFFFFFFFFFFFFFFFCLL && v17 + 4 <= *(acl + 3))
    {
      v36 = *(acl + 5);
      v37 = *(v36 + v17);
      v38 = *(acl + 2);
      *(v38 + 8 * v35) = v17;
      v17 += v37;
      if (++v35 >= *acl)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_7;
  }

  v36 = *(acl + 5);
  v38 = *(acl + 2);
LABEL_45:
  v39 = v36 + *(v38 + 8 * v16);
  *v39 = v15;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v40 = 68;
  }

  else
  {
    v40 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v41 = 65;
  }

  else
  {
    v41 = v40;
  }

  *(v39 + 4) = v41;
  *(v39 + 5) = ace->flags;
  *(v39 + 13) = ace->perms;
  *(v39 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v39 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

int AAEntryACLBlobRemoveEntry(AAEntryACLBlob acl, uint32_t i)
{
  v4 = *acl;
  if (*acl <= i || (v6 = i, v7 = *(*(acl + 2) + 8 * i), v8 = *(acl + 5), v9 = *(v8 + v7), v10 = __CFADD__(v7, v9), v11 = v7 + v9, v10) || (v12 = *(acl + 3), v12 < v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobRemoveEntry", 673, 100, 0, "invalid ACL index %u", v2, v3, i);
    return -1;
  }

  else
  {
    if (v9)
    {
      if (v12 != v11)
      {
        memmove((v8 + v11 - v9), (v8 + v11), v12 - v11);
        v11 = *(acl + 3);
        v4 = *acl;
      }

      *(acl + 3) = v11 - v9;
    }

    v14 = v4 - 1;
    *acl = v14;
    if (v14 > v6)
    {
      v15 = *(acl + 2);
      do
      {
        *(v15 + 8 * v6) = *(v15 + 8 * v6 + 8) - v9;
        ++v6;
      }

      while (v6 < *acl);
    }

    return 0;
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", v14, 58, 0, v13, v11, v12, v19);
    free(v5);
  }

  else
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 18, 58, *v15, "malloc", v16, v17, v19);
  }

  return -1;
}

void *AEADecryptAsyncStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a6;
  if (!a6)
  {
    v6 = sub_1000F4290();
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "AEADecryptAsyncStreamOpen", v17, 114, v18, v16, v14, v15, v29);
    sub_1001143DC(v13);
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
  *(v13 + 1160) = v6;
  v20 = calloc(v6, 8uLL);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAlloc", 129, 114, *v24, "malloc", v25, v26, v29);
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
  v28 = sub_1001021B4(v20, v27, sub_100113B20);
  *(v13 + 1176) = v28;
  if (!v28)
  {
    v16 = "creating worker pool";
    v17 = 906;
    goto LABEL_6;
  }

  *(v13 + 52) = 0;
  if (sub_100114298(v13, 12))
  {
    v16 = "add range";
    v17 = 910;
    goto LABEL_6;
  }

  *(v13 + 1128) = 0;
  result = sub_10010D7B4(v13, sub_1001143DC, ~(a5 >> 55) & 4, 20.0, 1.0);
  if (!result)
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 921;
    goto LABEL_8;
  }

  result[2] = sub_1001145BC;
  result[3] = sub_100114710;
  result[4] = sub_100114948;
  result[5] = sub_10011495C;
  return result;
}

uint64_t sub_100113B20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *result;
  v8 = *(result + 8);
  if (v8 >= *(*result + 1120))
  {
    v25 = "Invalid range index";
    v26 = 183;
  }

  else
  {
    v10 = *(v9 + 1136) + 32 * v8;
    v11 = *(v10 + 24);
    if (*(v9 + 1096) <= v11)
    {
      v25 = "Invalid segment index";
      v26 = 191;
    }

    else
    {
      v12 = *(v9 + 784);
      if (v12 >= 0x101)
      {
        goto LABEL_62;
      }

      v13 = result;
      v47 = *(v9 + 1136) + 32 * v8;
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
      result = sub_1000FB3BC(*(v9 + 160));
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
LABEL_29:
            result = 0;
            *(v47 + 28) = 4;
            return result;
          }

          v24 = v23(*v9, v18, v16, *(v9 + 148), __s2, *(v13 + 608));
          if ((v24 & 0x80000000) == 0)
          {
            if (v24)
            {
              *(v47 + 28) = 6;
              atomic_fetch_add((v9 + 120), 1u);
              if (*(v9 + 32) >= 3u)
              {
                fprintf(__stderrp, "Segment %u skipped, offset=%jd, payload=%u, raw=%u\n");
              }

              return 0;
            }

            goto LABEL_29;
          }

          v25 = "Client selection callback reported an error";
          v26 = 220;
        }

        else
        {
          v25 = "Invalid segment state";
          v26 = 207;
        }

        goto LABEL_48;
      }

      if (v14 == 2)
      {
        if (*(v13 + 32) == v17)
        {
          v45 = v18;
          v27 = *(v9 + 324);
          if (v27 >= 0x101)
          {
            goto LABEL_62;
          }

          memcpy((v13 + 352), v19 + *(v9 + 784), *(v9 + 324));
          *(v13 + 348) = v27;
          memset_s((v13 + 352 + v27), 256 - v27, 0, 256 - v27);
          v28 = *(v9 + 156);
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          memset(&__s[8], 0, 252);
          memset(v50, 0, 260);
          *&__s[8] = 19267;
          *__s = 0x5F41454100000006;
          memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
          *&__s[*__s + 4] = v11 / v28;
          *__s = 10;
          memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
          v29 = *(v9 + 384);
          if (v29 && *(v9 + 520))
          {
            v30 = v29(v48, *(v9 + 312));
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
          memset(v50 + 8, 0, 224);
          memset(&v50[14] + 8, 0, 28);
          WORD4(v50[0]) = 19283;
          *&v50[0] = 0x5F41454100000006;
          result = memset_s(v50 + 10, 0xFAuLL, 0, 0xFAuLL);
          v32 = LODWORD(v50[0]);
          if (LODWORD(v50[0]) < 0xFD)
          {
            *(v50 + LODWORD(v50[0]) + 4) = v11 % v28;
            LODWORD(v50[0]) = v32 + 4;
            memset_s(v50 + v32 + 8, 252 - v32, 0, 252 - v32);
            memset(__s, 0, sizeof(__s));
            v33 = *(v9 + 384);
            if (v33 && LODWORD(v48[0]))
            {
              v34 = v33(v13 + 88, *(v9 + 316), v48, v50, __s);
              memset_s(v50, 0x104uLL, 0, 0x104uLL);
              if ((v34 & 0x80000000) == 0)
              {
                memset_s(v48, 0x104uLL, 0, 0x104uLL);
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

                    if (v39 == v45 && (v41 = *v36, (sub_1000FB1CC(v13 + 868, *(v9 + 148), v41, v39, v37, v38, a7, a8) & 0x80000000) == 0) && (v42 = *(v13 + 868), *(v9 + 784) == v42) && v42 == *(v13 + 608) && !memcmp((v13 + 872), __s2, v42))
                    {
                      v43 = *(v9 + 24);
                      if (!v43 || (v43(*v9, v39, v16, v41) & 0x80000000) == 0)
                      {
                        *(v47 + 28) = 5;
                        atomic_fetch_add((v9 + 120), 1u);
                        if (*(v9 + 32) >= 3u)
                        {
                          fprintf(__stderrp, "Segment %u processed, offset=%jd, payload=%u, raw=%u\n");
                        }

                        return 0;
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

                goto LABEL_45;
              }
            }

            else
            {
              memset_s(v50, 0x104uLL, 0, 0x104uLL);
            }

            memset_s(v48, 0x104uLL, 0, 0x104uLL);
LABEL_45:
            v25 = "derive segment encryption key";
            v26 = 252;
            goto LABEL_48;
          }

LABEL_62:
          __break(1u);
          return result;
        }

        v25 = "Segment payload size mismatch";
        v26 = 242;
      }

      else
      {
        v25 = "Invalid segment state";
        v26 = 239;
      }
    }
  }

LABEL_48:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", v26, 114, 0, v25, a7, a8, v44);
  v40 = 0;
  atomic_compare_exchange_strong((v9 + 48), &v40, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100114298(void *a1, uint64_t a2)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushRange", 346, 114, *v15, "malloc", v16, v17, v19);
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

uint64_t sub_1001143DC(uint64_t a1)
{
  v2 = atomic_load((a1 + 48));
  v3 = v2 == 0;
  if ((sub_100102638(*(a1 + 1176)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncClose", 850, 114, 0, "ThreadPoolDestroy", v4, v5, v18);
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

uint64_t sub_1001145BC(uint64_t a1, void *a2, void *a3)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", v10, 114, 0, v9, v7, v8, v21);
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

uint64_t sub_100114710(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4)
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
  v13 = bsearch(__key, *(a1 + 1136), *(a1 + 1120), 0x20uLL, sub_100115A80);
  if (!v13)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 800, 114, 0, "Invalid offset received: %jd\n", v17, v18, a4);
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

          v20 = sub_100114AA0(a1, a2, a3);
        }

        else
        {
          v20 = sub_100114968(a1, a2, a3, v14, v15, v16, v17, v18);
        }
      }

      else
      {
        switch(v19)
        {
          case 2:
            v20 = sub_100114E84(a1, a2, a3, v14, v15, v16, v17, v18);
            break;
          case 3:
            v20 = sub_10011560C(a1, a2, a3);
            break;
          case 4:
            v20 = sub_100115938(a1, (v13 - *(a1 + 1136)) >> 5, a2, a3, v15, v16, v17, v18);
            break;
          default:
LABEL_22:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 822, 114, 0, "Invalid archive", v17, v18, v24);
            goto LABEL_23;
        }
      }

      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 808, 114, 0, "Invalid size received: %zu\n", v17, v18, a3);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", v12, 114, 0, v11, v9, v10, v24);
LABEL_27:
  v22 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v22, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100114968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Magic received: %zu B\n", a3);
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
    if ((sub_1000FADA8(v19, &v21, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0 && (sub_1000DB560((a1 + 312), v19) & 0x80000000) == 0 && (sub_1000FB160(v15, v19, (a1 + 312)) & 0x80000000) == 0)
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", v13, 114, 0, v12, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100114AA0(void *a1, _DWORD *a2, size_t a3)
{
  if (*(a1 + 8) >= 3u)
  {
    fprintf(__stderrp, "Prologue received: %zu B\n", a3);
  }

  v6 = sub_100116CE4(a2, a3);
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

  if ((sub_100115E00(v9, (a1 + 17), a1 + 130, 0, 1, 0) & 0x80000000) != 0)
  {
    v12 = "Archive unlock";
    v13 = 521;
    goto LABEL_29;
  }

  v11 = sub_1000FAD8C(*(a1 + 37));
  a1[98] = v11;
  if (v11 <= 0x1F)
  {
    v12 = "Invalid checksum mode for decrypt to file, at least 256 bits are required";
    v13 = 525;
LABEL_29:
    v25 = 0;
LABEL_30:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", v13, 114, v25, v12, v7, v8, v35);
    return 0xFFFFFFFFLL;
  }

  result = sub_1000FB160((a1 + 26), a1 + 34, a1 + 78);
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

      v33 = sub_100114298(a1, a1[38]);
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
      v26 = sub_100115A98(a1);
      if (v26 < 0)
      {
        v12 = "inserting padding range";
        v13 = 556;
        goto LABEL_29;
      }

      if (!v26 && (sub_100115B40(a1, v27, v28, v29, v30, v31, v7, v8) & 0x80000000) != 0)
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

uint64_t sub_100114E84(uint64_t a1, void *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Cluster header received: %zu B\n", __n);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", v18, 114, v50, v17, a7, a8, v52);
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
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  memset(&__s[8], 0, 252);
  memset(v57, 0, 260);
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

  v15 = v14(v55, *(a1 + 312));
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v16 = 0;
  if (v15 < 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  memset(v57 + 12, 0, 248);
  *(v57 + 4) = 0x4B4548435F414541;
  LODWORD(v57[0]) = 8;
  memset_s(v57 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(__s, 0, sizeof(__s));
  v19 = *(a1 + 384);
  if (!v19 || !LODWORD(v55[0]))
  {
    memset_s(v57, 0x104uLL, 0, 0x104uLL);
    goto LABEL_51;
  }

  v20 = v19(v53, *(a1 + 316), v55, v57, __s);
  memset_s(v57, 0x104uLL, 0, 0x104uLL);
  if (v20 < 0)
  {
LABEL_51:
    memset_s(v55, 0x104uLL, 0, 0x104uLL);
    goto LABEL_52;
  }

  memset_s(v55, 0x104uLL, 0, 0x104uLL);
  if (v16)
  {
LABEL_52:
    v17 = "Cluster header encryption key derivation";
    v18 = 611;
    goto LABEL_53;
  }

  v21 = *(a1 + 408);
  if (!v21 || *(a1 + 816) != *(a1 + 324) || (result = v21(*(a1 + 808), *(a1 + 288), a1 + 816, v53, *(a1 + 808) + *(a1 + 288), *(a1 + 304) - *(a1 + 288)), (result & 0x80000000) != 0))
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
        v52 = v31[1];
        v17 = "Invalid segment sizes: payload=%u raw=%u";
        v18 = 651;
        goto LABEL_53;
      }

      ++*(a1 + 1096);
      *(a1 + 1080) = v35;
      result = sub_100114298(a1, v34);
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushSegmentRange", 386, 114, 0, "inserting segment range", a7, a8, v52);
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
      v43 = sub_100115A98(a1);
      if (v43 < 0)
      {
        v17 = "inserting padding range";
        v18 = 669;
      }

      else
      {
        if (v43 || (sub_100115B40(a1, v44, v45, v46, v47, v48, a7, a8) & 0x80000000) == 0)
        {
          v49 = 0;
LABEL_55:
          memset_s(v53, 0x104uLL, 0, 0x104uLL);
          return v49;
        }

        v17 = "Streaming data setup";
        v18 = 672;
      }
    }

    else
    {
      v51 = sub_100114298(a1, *(a1 + 304));
      if ((v51 & 0x8000000000000000) == 0)
      {
        v49 = 0;
        *(a1 + 1128) = v51;
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

uint64_t sub_10011560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Padding received: %zu B\n", a3);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  __s = 0u;
  v28 = 0u;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (*(a1 + 488) && (*(v25 + 7) = 1262571615, *&v25[0] = 0x5F41454100000007, memset_s((v25 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v6 = *(a1 + 384)) != 0) && *(a1 + 520) && (v6(&__s, *(a1 + 312)) & 0x80000000) == 0)
  {
    v7 = (*(a1 + 488))(&__s);
  }

  else
  {
    v7 = 0;
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v25, 0x104uLL, 0, 0x104uLL);
  if (!v7)
  {
    v16 = "authenticating padding";
    v17 = 699;
    goto LABEL_25;
  }

  v10 = *(a1 + 496);
  v11 = !v10 || (v10(v7, a2, a3) & 0x80000000) != 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  __s = 0u;
  v28 = 0u;
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

  if ((sub_100115B40(a1, v19, v20, v21, v22, v23, v8, v9) & 0x80000000) == 0)
  {
    return 0;
  }

  v16 = "Streaming data setup";
  v17 = 705;
LABEL_25:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", v17, 114, 0, v16, v8, v9, v24);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100115938(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Segment received: %zu B\n", a4);
  }

  v12 = sub_100102924(*(a1 + 1176), a2, a3, a4, a5, a6, a7, a8);
  if (!v12)
  {
    v23 = "ThreadPoolGetWorker";
    v24 = 720;
    goto LABEL_9;
  }

  v15 = v12;
  v16 = 1;
  if (*(v12 + 24) < v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 723, 114, 0, "Invalid segment size", v13, v14, v26);
    v16 = 0;
    v8 = 0;
  }

  memcpy(*(v15 + 40), a3, v8);
  *(v15 + 32) = v8;
  *(v15 + 16) = 1;
  *(v15 + 8) = a2;
  if ((sub_100102A58(*(a1 + 1176), v15, v17, v18, v19, v20, v21, v22) & 0x80000000) != 0)
  {
    v23 = "ThreadPoolRunWorker";
    v24 = 728;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", v24, 114, 0, v23, v13, v14, v26);
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

uint64_t sub_100115A80(uint64_t a1, uint64_t a2)
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

uint64_t sub_100115A98(uint64_t a1)
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
    v5 = sub_100114298(a1, v3 - v2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(a1 + 52) = 3;
      *(a1 + 1128) = v5;
      return 1;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushPaddingRange", 375, 114, 0, "inserting padding range", v6, v7, v8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100115B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
          v23 = sub_100102924(*(a1 + 1176), a2, a3, a4, a5, a6, a7, a8);
          if (!v23)
          {
            v36 = "ThreadPoolGetWorker";
            v37 = 449;
            goto LABEL_45;
          }

          *(v23 + 16) = 0;
          *(v23 + 8) = v21;
          if ((sub_100102A58(*(a1 + 1176), v23, v24, v25, v26, v27, a7, a8) & 0x80000000) != 0)
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

    if ((sub_100102B28(*(a1 + 1176)) & 0x80000000) != 0)
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
    v14 = sub_1000FB3BC(*(v11 + 160));
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAllocBuffers", v38, 114, *v39, "malloc", v40, v41, v42);
  v36 = "Worker buffer allocation";
  v37 = 440;
LABEL_45:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", v37, 114, 0, v36, a7, a8, v42);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100115E00(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5, int a6)
{
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  memset(v65, 0, sizeof(v65));
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  *v108 = 0u;
  v107 = 0;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  *__n = 0u;
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v86 = 0;
  memset(v85, 0, sizeof(v85));
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v12 = *(a1 + 1372);
  *a2 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *(a2 + 16) = v13;
  if ((sub_1000DB560(v65, a2) & 0x80000000) != 0)
  {
    v22 = "initializing crypto params";
    v23 = 33;
    goto LABEL_74;
  }

  if ((sub_1000FB160(v60, a2, v65) & 0x80000000) != 0)
  {
    v22 = "deriving container offsets";
    v23 = 34;
    goto LABEL_74;
  }

  v18 = DWORD2(v65[0]);
  if (DWORD2(v65[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  v59 = a4;
  __memcpy_chk();
  LODWORD(v108[0]) = v18;
  memset_s(v108 + v18 + 4, 256 - v18, 0, 256 - v18);
  v19 = v67;
  if (v67 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v87[0]) = v19;
  memset_s(v87 + v19 + 4, 256 - v19, 0, 256 - v19);
  if (*a2 <= 4u && ((1 << *a2) & 0x15) != 0)
  {
    v20 = *(a1 + 332);
    if (v20)
    {
      if (v20 >= 0x101)
      {
        goto LABEL_78;
      }

      __memcpy_chk();
      LODWORD(v89[0]) = v20;
      memset_s(v89 + v20 + 4, 256 - v20, 0, 256 - v20);
    }

    else if (*(a1 + 592))
    {
      if (!*(&v74 + 1) || (v46 = (*(&v74 + 1))(v89, a1 + 592), LODWORD(v89[0]) != v66) || v46 < 0)
      {
        v22 = "deriving signing public key";
        v23 = 47;
        goto LABEL_74;
      }
    }
  }

  if (!a6 || !v12)
  {
    if ((sub_1000FB3CC(v65, a2, __n, (a1 + 72), (a1 + 2152), v87, v89, (a1 + 852), (a1 + 1112), v108, *(a1 + 2432), *(a1 + 2440)) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v22 = "Main key derivation";
    v23 = 70;
LABEL_74:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", v23, 57, 0, v22, v16, v17, v58);
    v33 = 0;
    goto LABEL_75;
  }

  v21 = *(a1 + 1372);
  if (v21 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(__n[0]) = v21;
  memset_s(__n + v21 + 4, 256 - v21, 0, 256 - v21);
LABEL_17:
  if (!a5)
  {
    goto LABEL_20;
  }

  if (*a2 > 5u)
  {
    v22 = "Unsupported signature mode";
    v23 = 102;
    goto LABEL_74;
  }

  v24 = 1 << *a2;
  if ((v24 & 0x2A) != 0)
  {
    goto LABEL_20;
  }

  if ((v24 & 0x14) == 0)
  {
    v55 = *(a1 + 2448);
    if (v55 >= 0x101)
    {
      goto LABEL_78;
    }

    __memcpy_chk();
    LODWORD(v83[0]) = v55;
    memset_s(v83 + v55 + 4, 256 - v55, 0, 256 - v55);
    goto LABEL_62;
  }

  memset(&v133[8], 0, 252);
  memset(__s, 0, 260);
  *&v133[7] = 1262834527;
  *v133 = 0x5F41454100000007;
  memset_s(&v133[11], 0xF9uLL, 0, 0xF9uLL);
  if (!*(&v68 + 1) || !LODWORD(__n[0]))
  {
    memset_s(v133, 0x104uLL, 0, 0x104uLL);
    goto LABEL_69;
  }

  v47 = (*(&v68 + 1))(v85, LODWORD(v65[0]), __n, v133, __s);
  memset_s(v133, 0x104uLL, 0, 0x104uLL);
  if (v47 < 0)
  {
LABEL_69:
    v22 = "deriving signature encryption key";
    v23 = 89;
    goto LABEL_74;
  }

  if (!*(&v73 + 1))
  {
LABEL_73:
    v22 = "decrypting signature";
    v23 = 90;
    goto LABEL_74;
  }

  memset(__s, 0, 260);
  v131 = 0;
  memset(v130, 0, sizeof(v130));
  v129 = 0;
  memset(v128, 0, sizeof(v128));
  if (*(a1 + 2448) != HIDWORD(v66))
  {
    goto LABEL_72;
  }

  if (LODWORD(v85[0]) != LODWORD(v65[0]))
  {
    goto LABEL_72;
  }

  *(v130 + 4) = 0x324B45535F414541;
  LODWORD(v130[0]) = 8;
  memset_s((v130 | 0xC), 0xF8uLL, 0, 0xF8uLL);
  memset(v133, 0, sizeof(v133));
  if (!*(&v68 + 1) || !LODWORD(v85[0]) || ((*(&v68 + 1))(__s, DWORD1(v65[0]), v85, v130, v133) & 0x80000000) != 0)
  {
    goto LABEL_72;
  }

  v48 = DWORD2(v66);
  if (DWORD2(v66) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v83[0]) = v48;
  memset_s(v83 + v48 + 4, 256 - v48, 0, 256 - v48);
  v49 = HIDWORD(v65[0]);
  if (HIDWORD(v65[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v128[0]) = v49;
  memset_s(v128 + v49 + 4, 256 - v49, 0, 256 - v49);
  if (((*(&v73 + 1))(v83 + 4, LODWORD(v83[0]), v128, __s, 0, 0) & 0x80000000) != 0)
  {
LABEL_72:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v128, 0x104uLL, 0, 0x104uLL);
    memset_s(v130, 0x104uLL, 0, 0x104uLL);
    goto LABEL_73;
  }

  v50 = v83[0];
  v51 = DWORD2(v66);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v128, 0x104uLL, 0, 0x104uLL);
  memset_s(v130, 0x104uLL, 0, 0x104uLL);
  if (v50 != v51)
  {
    goto LABEL_73;
  }

LABEL_62:
  if (!*(&v71 + 1) || (v56 = (*(&v71 + 1))(v81, *(a1 + 2720), *(a1 + 2728)), LODWORD(v81[0]) != DWORD1(v66)) || v56 < 0)
  {
    v22 = "digesting prologue";
    v23 = 94;
    goto LABEL_74;
  }

  if (!*(&v72 + 1) || ((*(&v72 + 1))(v83, v89, v81) & 0x80000000) != 0)
  {
    v22 = "verifying signature";
    v23 = 97;
    goto LABEL_74;
  }

LABEL_20:
  v25 = HIDWORD(v65[0]);
  if (HIDWORD(v65[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v79[0]) = v25;
  memset_s(v79 + v25 + 4, 256 - v25, 0, 256 - v25);
  v26 = *(a1 + 2720);
  v28 = *(v26 + v61 + 16);
  v27 = *(v26 + v61 + 32);
  v125 = *(v26 + v61);
  v126 = v28;
  v127 = v27;
  v29 = HIDWORD(v65[0]);
  v30 = *(a2 + 4);
  v31 = (v30 + HIDWORD(v65[0]));
  v32 = malloc(v31);
  v33 = v32;
  if (!v32)
  {
    v52 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 113, 57, *v52, "malloc", v53, v54, v58);
LABEL_75:
    v43 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

  memcpy(v32, (v26 + *(&v61 + 1)), v29);
  memcpy(&v33[v29], (v26 + *(&v60[0] + 1)), v30);
  memset(__s + 12, 0, 248);
  *(__s + 4) = 0x4B4548525F414541;
  LODWORD(__s[0]) = 8;
  memset_s(__s + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v133, 0, sizeof(v133));
  if (!*(&v68 + 1) || !LODWORD(__n[0]))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_58:
    v43 = 0xFFFFFFFFLL;
    goto LABEL_59;
  }

  v34 = (*(&v68 + 1))(v77, DWORD1(v65[0]), __n, __s, v133);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v34 < 0 || !v70 || LODWORD(v79[0]) != HIDWORD(v65[0]) || ((v70)(&v125, 48, v79, v77, v33, v31) & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  if ((sub_1000FAE84(a2, &v125, v35, v36, v37, v38, v39, v40) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 126, 57, 0, "Invalid root header", v41, v42, v58);
    goto LABEL_58;
  }

  v43 = v59;
  if (a3)
  {
    v44 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101)
    {
      goto LABEL_78;
    }

    memcpy(a3 + 1, __n + 4, LODWORD(__n[0]));
    *a3 = v44;
    memset_s(a3 + v44 + 4, 256 - v44, 0, 256 - v44);
  }

  if (v59)
  {
    v45 = LODWORD(v108[0]);
    if (LODWORD(v108[0]) < 0x101)
    {
      memcpy(v59 + 1, v108 + 4, LODWORD(v108[0]));
      *v59 = v45;
      memset_s(v59 + v45 + 4, 256 - v45, 0, 256 - v45);
      v43 = 0;
      goto LABEL_59;
    }

LABEL_78:
    __break(1u);
  }

LABEL_59:
  memset_s(v33, v31, 0, v31);
LABEL_76:
  free(v33);
  memset_s(v65, 0xD0uLL, 0, 0xD0uLL);
  memset_s(v60, 0x68uLL, 0, 0x68uLL);
  memset_s(&v125, 0x30uLL, 0, 0x30uLL);
  memset_s(v87, 0x104uLL, 0, 0x104uLL);
  memset_s(v85, 0x104uLL, 0, 0x104uLL);
  memset_s(v83, 0x104uLL, 0, 0x104uLL);
  memset_s(v81, 0x104uLL, 0, 0x104uLL);
  memset_s(v108, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v79, 0x104uLL, 0, 0x104uLL);
  memset_s(v77, 0x104uLL, 0, 0x104uLL);
  memset_s(v89, 0x104uLL, 0, 0x104uLL);
  return v43;
}