uint64_t applyEntryAttributes(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = AAEntryACLBlobCreate();
  v10 = AAEntryXATBlobCreate();
  v11 = *(a2 + 2224);
  if (v11 && (aaEntryACLBlobInitWithEncodedData(v4, *(a2 + 2240), v11, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v19 = "invalid ACL blob";
    v20 = 354;
LABEL_22:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v20, 72, 0, v19, v8, v9, v40);
    v30 = 0;
    v16 = 0;
    goto LABEL_32;
  }

  v12 = *(a2 + 2200);
  if (v12 && (aaEntryXATBlobInitWithEncodedData(v10, *(a2 + 2216), v12, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v19 = "invalid XAT blob";
    v20 = 357;
    goto LABEL_22;
  }

  v13 = *(a2 + 2248);
  if (v13)
  {
    v16 = AAEntryYECBlobCreateWithEncodedData(*(a2 + 2264), v13);
    if (!v16)
    {
      v17 = "invalid YEC blob";
      v18 = 361;
LABEL_25:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v18, 72, 0, v17, v14, v15, v40);
LABEL_26:
      v30 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v16 = 0;
  }

  v21 = *(a1 + 1040);
  if (v21)
  {
    v21(*(a1 + 1032), 24, a2, v10);
    (*(a1 + 1040))(*(a1 + 1032), 25, a2, v4);
  }

  if (v16)
  {
    *v41 = 0;
    if ((AAEntryYECBlobApplyToPath(v16, a1, a2, v41, *(a1 + 1024), *(a1 + 1060)) & 0x80000000) != 0)
    {
      v40 = v41[0];
      v17 = "corrupted file data, ECC failed 0x%08x: %s";
      v18 = 377;
      goto LABEL_25;
    }

    if (*v41)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 378, 72, "ECC applied 0x%08x: %s", v22, v14, v15, v41[0]);
    }
  }

  if ((concatExtractPath(v41, 0x800uLL, a1, a2) & 0x80000000) != 0)
  {
    v40 = a1;
    v17 = "invalid path: %s/%s";
    v18 = 391;
    goto LABEL_25;
  }

  v26 = *(a2 + 2296);
  v27 = v26;
  if ((v26 & 0x80000000) != 0)
  {
    v27 = open(v41, 0x200000);
    if ((v27 & 0x80000000) != 0)
    {
      v37 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 400, 72, v37, "open: %s", v38, v39, v41);
      goto LABEL_26;
    }
  }

  if ((aaEntryXATBlobApplyToFD(v10, v27, *(a1 + 1024), v23, v24, v25, v14, v15) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 405, 72, 0, "applying XAT: %s", v28, v29, a2);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  if ((aaEntryACLBlobApplyToFD(v4, v27, *(a1 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 406, 72, 0, "applying ACL: %s", v31, v32, a2);
    v30 = 0;
  }

  if ((aaEntryAttributesApplyToFD((a2 + 2056), v27, *(a1 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 407, 72, 0, "applying ATTR: %s", v33, v34, a2);
    v30 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  close(v27);
LABEL_32:
  AAEntryXATBlobDestroy(v10);
  AAEntryACLBlobDestroy(v4);
  AAEntryYECBlobDestroy(v16);
  if (v30)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t retireThreadEnqueue(uint64_t a1, uint64_t a2)
{
  if (pthread_mutex_lock((a1 + 16)))
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 597, 72, *v4, "pthread_mutex_lock", v5, v6, v20);
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v8 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  else if (v9 >= 0x40)
  {
    memmove(*(a1 + 104), (*(a1 + 104) + 8 * v9), 8 * v10);
    *(a1 + 88) = 0;
    *(a1 + 96) = v10;
    v8 = v10;
  }

  v11 = *(a1 + 80);
  if (v8 < v11)
  {
    goto LABEL_14;
  }

  v12 = 2 * v11;
  if (!v11)
  {
    v12 = 256;
  }

  *(a1 + 80) = v12;
  if ((8 * v12) < 0x2000000001)
  {
    v13 = *(a1 + 104);
    v14 = realloc(v13, 8 * v12);
    if (!v14)
    {
      free(v13);
      goto LABEL_18;
    }

    *(a1 + 104) = v14;
    v8 = *(a1 + 96);
    v11 = *(a1 + 80);
LABEL_14:
    if (v8 < v11)
    {
      v15 = *(a1 + 104);
      *(a1 + 96) = v8 + 1;
      *(v15 + 8 * v8) = a2;
    }

    v16 = 1;
    goto LABEL_19;
  }

  *__error() = 12;
LABEL_18:
  v16 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
LABEL_19:
  if (pthread_mutex_unlock((a1 + 16)))
  {
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 623, 72, *v17, "pthread_mutex_unlock", v18, v19, v20);
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

void extractStreamStateFail(uint64_t a1)
{
  v2 = (a1 + 1632);
  v3 = *(a1 + 1632);
  if (v3)
  {
    v4 = *(a1 + 1632);
    if (*(v3 + 2300) != -1)
    {
      *(v3 + 2300) = -1;
      v5 = *(a1 + 1040);
      v4 = v3;
      if (v5)
      {
        v5(*(a1 + 1032), 22, v3, v3 + 2272);
        v4 = *(a1 + 1632);
      }
    }

    if ((retireThreadEnqueue(a1 + 1200, v4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToRetireThread", 1163, 72, 0, "retireThreadEnqueue failed", v6, v7, v16);
      entryRelease(v3, v8, v9, v10, v11, v12, v13, v14);
    }

    atomic_fetch_add_explicit((a1 + 1604), 1u, memory_order_relaxed);
  }

  else
  {
    v15 = *(a1 + 1640);
    if (v15)
    {
      extractThreadSendCommand(v15, 70, 0, 0);
    }
  }

  *(a1 + 1608) = 1;
  *v2 = 0;
  v2[1] = 0;
}

uint64_t extractThreadSendCommand(uint64_t a1, int a2, size_t a3, const void *a4)
{
  buf = a2;
  v14 = a3;
  if (AAByteStreamWrite(*(a1 + 16), &buf, 0xCuLL) == 12)
  {
    if (!a3 || AAByteStreamWrite(*(a1 + 32), a4, a3) == a3)
    {
      return 0;
    }

    v10 = "sending command payload";
    v11 = 713;
  }

  else
  {
    v10 = "sending command";
    v11 = 708;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", v11, 72, 0, v10, v7, v8, v12);
  return 0xFFFFFFFFLL;
}

uint64_t clusterEntryUpdateDAT(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  if (a3 == -1)
  {
    return 0;
  }

  v8 = a1 + 80 * a2 + 1312;
  if (pthread_mutex_lock(v8) < 0)
  {
    v14 = *__error();
    v17 = "pthread_mutex_lock";
    v18 = 514;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", v18, 72, v14, v17, v15, v16, v29);
    return 0xFFFFFFFFLL;
  }

  v9 = *(v8 + 64);
  if (v9 <= a3)
  {
    v19 = *(v8 + 64);
    do
    {
      if (v19)
      {
        v19 *= 2;
      }

      else
      {
        v19 = 32;
      }
    }

    while (v19 <= a3);
    *(v8 + 64) = v19;
    if (32 * v19 < 0x2000000001)
    {
      v20 = *(v8 + 72);
      v10 = realloc(v20, 32 * v19);
      if (v10)
      {
        *(v8 + 72) = v10;
        v21 = *(v8 + 64);
        v22 = v21 > v9;
        v23 = v21 - v9;
        if (v22)
        {
          v24 = &v10[32 * v9 + 16];
          do
          {
            *(v24 - 2) = 0;
            *(v24 - 1) = 0;
            *v24 = -1;
            *(v24 + 1) = -1;
            v24 += 32;
            --v23;
          }

          while (v23);
        }

        goto LABEL_5;
      }

      free(v20);
    }

    else
    {
      *__error() = 12;
    }

    *(v8 + 72) = 0;
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 523, 72, *v25, "malloc", v26, v27, v29);
    *(v8 + 64) = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v10 = *(v8 + 72);
LABEL_5:
  v11 = 0;
  v12 = &v10[32 * a3];
  v13 = *v12;
  if (a4 && !v13)
  {
    *v12 = a4;
    v11 = 1;
    atomic_fetch_add((a4 + 2304), 1u);
    v13 = *(*(v8 + 72) + 32 * a3);
  }

  *a5 = v13;
LABEL_26:
  if (pthread_mutex_unlock(v8) < 0)
  {
    v14 = *__error();
    v17 = "pthread_mutex_unlock";
    v18 = 547;
    goto LABEL_28;
  }

  return v11;
}

uint64_t extractStreamEntryEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1608))
  {
    return 0;
  }

  v11 = *(a1 + 1632);
  v12 = *(a1 + 1640);
  if (*(a1 + 1632) == 0)
  {
    v13 = "no active entry or active thread";
    v14 = 1202;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", v14, 72, 0, v13, a7, a8, v16);
    extractStreamStateFail(a1);
    return 0xFFFFFFFFLL;
  }

  if (v11)
  {
    if ((extractStreamSendEntryToExtractThread(a1) & 0x80000000) != 0)
    {
      v13 = "send entry to thread";
      v14 = 1207;
      goto LABEL_7;
    }

    v12 = *(a1 + 1640);
  }

  v15 = (a1 + 1632);
  if (v12)
  {
    extractThreadSendCommand(v12, 69, 0, 0);
  }

  result = 0;
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t extractStreamSendEntryToExtractThread(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v6 = 91;
LABEL_8:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v5, v2, v3, v4, v17);
    v12 = "SharedArrayPop failed";
    v13 = 1145;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(a1 + 1072);
    if (v7)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1152), (a1 + 1088)))
    {
      v5 = "SharedArrayPop: pthread_cond_wait failed\n";
      v6 = 94;
      goto LABEL_8;
    }
  }

  v8 = v7 - 1;
  *(a1 + 1072) = v8;
  v9 = *(*(a1 + 1080) + 4 * v8);
  if (pthread_mutex_unlock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v6 = 98;
    goto LABEL_8;
  }

  v15 = *(a1 + 1064) + 176 * v9;
  *(a1 + 1640) = v15;
  *(v15 + 168) = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (pthread_mutex_lock((v15 + 56)) || (v16 = *(v15 + 48), *(v15 + 48) = v16 + 1, !v16) && pthread_cond_broadcast((v15 + 120)) || pthread_mutex_unlock((v15 + 56)))
  {
    v12 = "SemRelease failed";
    v13 = 1150;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", v13, 72, 0, v12, v10, v11, v17);
    return 0xFFFFFFFFLL;
  }

  if ((extractThreadSendCommand(v15, 66, 0, 0) & 0x80000000) != 0)
  {
    v12 = "extract thread BEGIN failed";
    v13 = 1153;
    goto LABEL_9;
  }

  return 0;
}

uint64_t aaHeaderInitWithEncodedData(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  init_blob_with_magic(a1);
  *a1 = 0;
  *(a1 + 40) = 0;
  if (a3 <= 5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 113, 101, 0, "invalid header size: %llu", v6, v7, a3);
    goto LABEL_67;
  }

  if (*a2 != 826360153 && *a2 != 825246017)
  {
    v8 = "invalid header magic";
    v9 = 114;
    goto LABEL_66;
  }

  if (a2[2] != a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 116, 101, 0, "header size mismatch: stored %u, got %llu", v6, v7, a2[2]);
    goto LABEL_67;
  }

  *(a1 + 16) = 0;
  v10 = (a1 + 16);
  v11 = *(a1 + 24);
  if (v11 >= a3)
  {
    v14 = 0;
    v15 = *(a1 + 32);
  }

  else
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (a3 <= 0x4000)
        {
          v13 = (a1 + 32);
          v11 = 0x4000;
          goto LABEL_19;
        }
      }

      v12 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v12 = v11 & (v11 >> 1);
      }

      v11 += v12;
    }

    while (v11 < a3);
    v13 = (a1 + 32);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_64;
    }

LABEL_19:
    v16 = *v13;
    v15 = realloc(*v13, v11);
    if (!v15)
    {
      free(v16);
LABEL_64:
      *v13 = 0;
      *v10 = 0;
      *(a1 + 24) = 0;
LABEL_65:
      v8 = "realloc blob";
      v9 = 121;
      goto LABEL_66;
    }

    *(a1 + 24) = v11;
    *(a1 + 32) = v15;
    v14 = *(a1 + 16);
    if (!a2)
    {
      memset_s(&v15[v14], a3, 0, a3);
      goto LABEL_22;
    }
  }

  memcpy(&v15[v14], a2, a3);
LABEL_22:
  v17 = *v10 + a3;
  *v10 = v17;
  if ((a3 & 0x8000000000000000) != 0 || v17 < 4)
  {
    goto LABEL_65;
  }

  **(a1 + 32) = 825246017;
  if (a3 == 6)
  {
    return 0;
  }

  v19 = 0;
  v20 = 6;
  while (2)
  {
    if ((realloc_fields(a1, *a1 + 1) & 0x80000000) != 0)
    {
      v8 = "realloc_fields";
      v9 = 127;
      goto LABEL_66;
    }

    v21 = *(a1 + 8);
    v22 = (*a1)++;
    if (v20 + 4 > a3)
    {
      v8 = "truncated header";
      v9 = 130;
      goto LABEL_66;
    }

    v23 = v21 + 48 * v22;
    v24 = a2 + v20;
    v25 = *(a2 + v20);
    *v23 = v25;
    v26 = HIBYTE(v25);
    v27 = SHIBYTE(v25);
    *(v23 + 8) = v27;
    *(v23 + 3) = 0;
    switch(v26)
    {
      case '1':
        v28 = 1;
        v29 = 1;
        goto LABEL_51;
      case '2':
        v28 = 1;
        goto LABEL_43;
      case '3':
      case '5':
      case '6':
      case '7':
      case '9':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case '@':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
        goto LABEL_72;
      case '4':
        v28 = 1;
        goto LABEL_41;
      case '8':
        v28 = 1;
        goto LABEL_46;
      case 'A':
        v28 = 5;
LABEL_43:
        v29 = 2;
        goto LABEL_51;
      case 'B':
        v28 = 5;
        goto LABEL_41;
      case 'C':
        v28 = 5;
        goto LABEL_46;
      case 'F':
        v28 = 3;
LABEL_41:
        v29 = 4;
        goto LABEL_51;
      case 'G':
        v28 = 3;
        v29 = 20;
        goto LABEL_51;
      case 'H':
        v28 = 3;
        v29 = 32;
        goto LABEL_51;
      case 'I':
        v28 = 3;
        v29 = 48;
        goto LABEL_51;
      case 'J':
        v28 = 3;
        v29 = 64;
        goto LABEL_51;
      case 'P':
        if (v20 + 6 <= a3)
        {
          v19 = *(v24 + 2);
          v29 = v19 + 2;
          v28 = 2;
LABEL_51:
          *(v23 + 4) = v28;
          if (v20 + 4 + v29 > a3)
          {
            v8 = "truncated header";
            v9 = 161;
            goto LABEL_66;
          }

          v30 = 0;
          *(v23 + 40) = 0;
          v31 = (v23 + 40);
          v32 = v29 + 4;
          *(v23 + 12) = v20;
          *(v23 + 16) = v29 + 4;
          *(v23 + 24) = 0;
          *(v23 + 32) = 0;
          if (v28 > 2)
          {
            if (v28 == 3)
            {
              v30 = 0;
              *v31 = v29;
            }

            else if (v28 == 5)
            {
              memcpy((v23 + 32), v24 + 4, v29);
              *(v23 + 24) = *(a1 + 40);
              v30 = *(v23 + 32);
            }
          }

          else if (v28 == 1)
          {
            memcpy(v31, v24 + 4, v29);
            v30 = 0;
          }

          else if (v28 == 2)
          {
            v30 = 0;
            *v31 = v19;
          }

          result = 0;
          *(a1 + 40) += v30;
          v20 += v32;
          if (v20 >= a3)
          {
            return result;
          }

          continue;
        }

        v8 = "truncated header";
        v9 = 153;
LABEL_66:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", v9, 101, 0, v8, v6, v7, v33);
LABEL_67:
        *a1 = 0;
        *(a1 + 16) = 0;
        result = 0xFFFFFFFFLL;
        *(a1 + 40) = 0;
        return result;
      case 'S':
        v28 = 4;
LABEL_46:
        v29 = 8;
        goto LABEL_51;
      case 'T':
        v28 = 4;
        v29 = 12;
        goto LABEL_51;
      default:
        if (v26 != 42)
        {
LABEL_72:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 159, 101, 0, "invalid field subtype: %d", v6, v7, v27);
          goto LABEL_67;
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_51;
    }
  }
}

uint64_t init_blob_with_magic(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 <= 5)
  {
    while (v2)
    {
      v3 = v2 >> 1;
      if ((v2 & (v2 >> 1)) != 0)
      {
        v3 = v2 & (v2 >> 1);
      }

      v2 += v3;
      if (v2 >= 6)
      {
        goto LABEL_8;
      }
    }

    v2 = 0x4000;
LABEL_8:
    v4 = *(a1 + 32);
    v5 = realloc(v4, v2);
    if (!v5)
    {
      free(v4);
      *a1 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "init_blob_with_magic", 61, 101, 0, "realloc_blob failed", v12, v13, v17);
      return 0xFFFFFFFFLL;
    }

    *(a1 + 24) = v2;
    *(a1 + 32) = v5;
  }

  *(a1 + 16) = 0;
  **(a1 + 32) = 825246017;
  v6 = *(a1 + 16) + 4;
  *(a1 + 16) = v6;
  v7 = v6 + 2;
  if (v6 >= 0xFFFFFFFFFFFFFFFELL || (v7 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (v8 >= v7)
  {
    v14 = *(a1 + 32);
LABEL_28:
    result = 0;
    *&v14[v6] = 6;
    *(a1 + 16) += 2;
  }

  else
  {
    v9 = 0x4000;
    do
    {
      while (!v8)
      {
        v8 = 0x4000;
        if (v7 <= 0x4000)
        {
          goto LABEL_26;
        }
      }

      v10 = v8 >> 1;
      if ((v8 & (v8 >> 1)) != 0)
      {
        v10 = v8 & (v8 >> 1);
      }

      v8 += v10;
    }

    while (v8 < v7);
    v9 = v8;
    if (v8 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_30;
    }

LABEL_26:
    v15 = *(a1 + 32);
    v16 = realloc(v15, v9);
    if (v16)
    {
      v14 = v16;
      *(a1 + 24) = v9;
      *(a1 + 32) = v16;
      v6 = *(a1 + 16);
      goto LABEL_28;
    }

    free(v15);
LABEL_30:
    result = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t realloc_fields(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  do
  {
    if (v4)
    {
      v4 += v4 >> 1;
    }

    else
    {
      v4 = 16;
    }
  }

  while (v4 < a2);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v4 < 0xAAAAAAAB)
  {
    v6 = *(a1 + 8);
    v7 = realloc(v6, 48 * v4);
    if (v7)
    {
      v8 = v7;
      result = 0;
      *(a1 + 8) = v8;
      *(a1 + 4) = v4;
      return result;
    }

    free(v6);
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 8) = 0;
  v9 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "realloc_fields", 35, 101, *v9, "malloc", v10, v11, v12);
  *a1 = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t aaHeaderInitWithPath(AAHeader_impl *a1, AAFieldKeySet_impl *a2, char *a3, const char *a4, unint64_t a5)
{
  v90 = *MEMORY[0x29EDCA608];
  memset(&v87, 0, sizeof(v87));
  init_blob_with_magic(a1);
  *a1 = 0;
  *(a1 + 5) = 0;
  if ((concatPath(v89, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    LOBYTE(v84) = a3;
    v13 = "invalid path %s/%s";
    v14 = 196;
    goto LABEL_7;
  }

  if ((init_blob_with_magic(a1) & 0x80000000) != 0)
  {
    v13 = "init_blob_with_magic";
    v14 = 199;
    goto LABEL_7;
  }

  *a1 = 0;
  *(a1 + 5) = 0;
  if (lstat(v89, &v87))
  {
    v12 = *__error();
    v84 = v89;
    v13 = "lstat %s";
    v14 = 204;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", v14, 101, v12, v13, v10, v11, v84);
    *a1 = 0;
    *(a1 + 2) = 0;
    result = 0xFFFFFFFFLL;
    *(a1 + 5) = 0;
    goto LABEL_9;
  }

  v17 = aaEntryTypeFromMode(v87.st_mode);
  if (!v17)
  {
    v84 = v89;
    v13 = "could not determine entry type: %s";
    v14 = 210;
    goto LABEL_7;
  }

  v18.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v18, v17) < 0)
  {
    v84 = v89;
    v13 = "inserting TYP: %s";
    v14 = 211;
    goto LABEL_7;
  }

  v19 = strlen(a4);
  v20.ikey = 5521744;
  if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v20, a4, v19) < 0)
  {
    v84 = v89;
    v13 = "inserting PAT: %s";
    v14 = 217;
    goto LABEL_7;
  }

  v21 = v87.st_mode & 0xF000;
  if (v21 == 40960)
  {
    v22 = readlink(v89, value, 0x3FFuLL);
    if (v22 < 0)
    {
      v12 = *__error();
      v84 = v89;
      v13 = "readlink: %s";
      v14 = 225;
      goto LABEL_8;
    }

    value[v22] = 0;
    v23.ikey = 4935244;
    if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v23, value, v22) < 0)
    {
      v84 = v89;
      v13 = "inserting LNK: %s";
      v14 = 227;
      goto LABEL_7;
    }

    v21 = v87.st_mode & 0xF000;
  }

  if ((v21 | 0x4000) == 0x6000)
  {
    v24.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v24, v87.st_rdev) < 0)
    {
      v84 = v89;
      v13 = "inserting DEV: %s";
      v14 = 233;
      goto LABEL_7;
    }
  }

  v25.ikey = 4475221;
  if (AAFieldKeySetContainsKey(a2, v25))
  {
    v26.ikey = 4475221;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v26, v87.st_uid) < 0)
    {
      v84 = v89;
      v13 = "inserting UID: %s";
      v14 = 239;
      goto LABEL_7;
    }
  }

  v27.ikey = 4475207;
  if (AAFieldKeySetContainsKey(a2, v27))
  {
    v28.ikey = 4475207;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v28, v87.st_gid) < 0)
    {
      v84 = v89;
      v13 = "inserting GID: %s";
      v14 = 245;
      goto LABEL_7;
    }
  }

  v29.ikey = 4476749;
  if (AAFieldKeySetContainsKey(a2, v29))
  {
    v30.ikey = 4476749;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v30, v87.st_mode & 0xFFF) < 0)
    {
      v84 = v89;
      v13 = "inserting MOD: %s";
      v14 = 251;
      goto LABEL_7;
    }
  }

  v31.ikey = 4672582;
  if (AAFieldKeySetContainsKey(a2, v31))
  {
    v32.ikey = 4672582;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v32, v87.st_flags) < 0)
    {
      v84 = v89;
      v13 = "inserting FLG: %s";
      v14 = 259;
      goto LABEL_7;
    }
  }

  v33.ikey = 5067843;
  if (AAFieldKeySetContainsKey(a2, v33) || (v34.ikey = 5067842, AAFieldKeySetContainsKey(a2, v34)))
  {
    v86[1] = 0;
    v86[2] = 0;
    memset(value, 0, 64);
    v86[0] = 0x220000000005;
    if (!getattrlist(v89, v86, value, 0x40uLL, 1u) && *value == 36)
    {
      v85 = *&value[4];
      v35.ikey = 5067843;
      if (AAFieldKeySetContainsKey(a2, v35))
      {
        if (v85.tv_sec)
        {
          v36.ikey = 5067843;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v36, &v85) < 0)
          {
            v84 = v89;
            v13 = "inserting CTM: %s";
            v14 = 277;
            goto LABEL_7;
          }
        }
      }

      v85 = *&value[20];
      v37.ikey = 5067842;
      if (AAFieldKeySetContainsKey(a2, v37))
      {
        if (v85.tv_sec)
        {
          v38.ikey = 5067842;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v38, &v85) < 0)
          {
            v84 = v89;
            v13 = "inserting BTM: %s";
            v14 = 283;
            goto LABEL_7;
          }
        }
      }
    }
  }

  v39.ikey = 5067853;
  if (AAFieldKeySetContainsKey(a2, v39))
  {
    v40.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v40, &v87.st_mtimespec) < 0)
    {
      v84 = v89;
      v13 = "inserting MTM: %s";
      v14 = 291;
      goto LABEL_7;
    }
  }

  if ((v87.st_mode & 0xF000) == 0x8000)
  {
    v41.ikey = 5523009;
    if (AAFieldKeySetContainsKey(a2, v41) > 0 || (v42.ikey = 5391937, AAFieldKeySetContainsKey(a2, v42) >= 1))
    {
      *value = 0;
      LODWORD(v86[0]) = 0;
      LODWORD(v85.tv_sec) = 0;
      if ((ParallelCompressionAFSCGetMetadata(v89, value, v86, &v85) & 0x80000000) != 0)
      {
        v13 = "querying AFSC metadata";
        v14 = 306;
        goto LABEL_7;
      }

      if (LODWORD(v86[0]) != -1)
      {
        v43.ikey = 5523009;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v43, SLODWORD(v86[0])) < 0)
        {
          v84 = v89;
          v13 = "inserting AFT: %s";
          v14 = 309;
          goto LABEL_7;
        }

        v44.ikey = 5391937;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v44, LODWORD(v85.tv_sec)) < 0)
        {
          v84 = v89;
          v13 = "inserting AFR: %s";
          v14 = 310;
          goto LABEL_7;
        }
      }
    }
  }

  v45 = v87.st_mode & 0xF000;
  if (v45 == 0x8000 || v45 == 0x4000)
  {
    v46.ikey = 4803654;
    if (AAFieldKeySetContainsKey(a2, v46) >= 1)
    {
      FileAPFSInternalFlagsFD = getFileAPFSInternalFlagsFD();
      if (FileAPFSInternalFlagsFD)
      {
        v48.ikey = 4803654;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v48, FileAPFSInternalFlagsFD) < 0)
        {
          v84 = v89;
          v13 = "inserting FLI: %s";
          v14 = 322;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v87.st_mode & 0xF000) == 0x8000)
  {
    v49.ikey = 4411984;
    if (AAFieldKeySetContainsKey(a2, v49) >= 1)
    {
      FileProtectionClass = getFileProtectionClass(v89);
      if ((FileProtectionClass - 1) <= 5)
      {
        v51.ikey = 4411984;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v51, FileProtectionClass | 0x40u) < 0)
        {
          v84 = v89;
          v13 = "inserting PRC: %s";
          v14 = 342;
          goto LABEL_7;
        }
      }
    }
  }

  v52.ikey = 5197385;
  if (AAFieldKeySetContainsKey(a2, v52))
  {
    v53.ikey = 5197385;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v53, v87.st_ino) < 0)
    {
      v84 = v89;
      v13 = "inserting INO: %s";
      v14 = 359;
      goto LABEL_7;
    }
  }

  v54.ikey = 4934734;
  if (AAFieldKeySetContainsKey(a2, v54))
  {
    v55.ikey = 4934734;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v55, v87.st_nlink) < 0)
    {
      v84 = v89;
      v13 = "inserting LNK: %s";
      v14 = 365;
      goto LABEL_7;
    }
  }

  if ((v87.st_mode & 0xF000) == 0x8000)
  {
    v56.ikey = 5917011;
    if (AAFieldKeySetContainsKey(a2, v56))
    {
      v57.ikey = 5917011;
      if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v57, v87.st_size) < 0)
      {
        v84 = v89;
        v13 = "inserting SIZ: %s";
        v14 = 371;
        goto LABEL_7;
      }
    }
  }

  v58 = v87.st_mode & 0xF000;
  if (v58 == 0x4000 || v58 == 40960 || v58 == 0x8000)
  {
    v59.ikey = 5920068;
    if (AAFieldKeySetContainsKey(a2, v59))
    {
      FilesystemBlockSize = getFilesystemBlockSize(a3);
      FileDiskUsageBlocks2 = getFileDiskUsageBlocks2(a3, a4, FilesystemBlockSize);
      if ((FileDiskUsageBlocks2 & 0x8000000000000000) == 0)
      {
        v62.ikey = 5920068;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v62, FileDiskUsageBlocks2) < 0)
        {
          v84 = v89;
          v13 = "inserting DUZ: %s";
          v14 = 381;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v87.st_mode & 0xF000) == 0x8000)
  {
    v63.ikey = 5194573;
    if (AAFieldKeySetContainsKey(a2, v63))
    {
      *value = 0;
      if ((aaEntryMCOStringCreateWithPath(value, v89, a5) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", 389, 101, 0, "fetching Mach-O information: %s", v64, v65, v89);
      }

      if (*value)
      {
        v66 = strlen(*value);
        v67.ikey = 5194573;
        if ((AAHeaderSetFieldString(a1, 0xFFFFFFFF, v67, *value, v66) & 0x80000000) == 0)
        {
          free(*value);
          goto LABEL_75;
        }

        v84 = v89;
        v13 = "inserting MCO: %s";
        v14 = 392;
LABEL_7:
        v12 = 0;
        goto LABEL_8;
      }
    }
  }

LABEL_75:
  v68.ikey = 5458755;
  v69 = AAFieldKeySetContainsKey(a2, v68);
  v70.ikey = 3229779;
  v71 = AAFieldKeySetContainsKey(a2, v70);
  v72.ikey = 3295315;
  v73 = AAFieldKeySetContainsKey(a2, v72);
  v74.ikey = 3360851;
  v75 = AAFieldKeySetContainsKey(a2, v74);
  v76.ikey = 3491923;
  v77 = AAFieldKeySetContainsKey(a2, v76);
  result = 0;
  if ((v87.st_mode & 0xF000) == 0x8000)
  {
    v78 = ((v69 & 1) << 11) & 0xFFF | ((v71 & 1) << 12) & 0x1FFF | ((v73 & 1) << 13) & 0x3FFF | ((v75 & 1) << 14) & 0x7FFF | ((v77 & 1) << 15);
    if (v78)
    {
      memset(value, 0, 172);
      if ((aaEntryHashesInitWithPath(value, v78, a3, a4) & 0x80000000) != 0)
      {
        v84 = v89;
        v13 = "computing file hashes: %s";
        v14 = 407;
      }

      else if ((v69 & 1) != 0 && (v79.ikey = 5458755, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v79, 1u, &value[4]) < 0))
      {
        v84 = v89;
        v13 = "inserting CKS: %s";
        v14 = 409;
      }

      else if ((v71 & 1) != 0 && (v80.ikey = 3229779, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v80, 2u, &value[8]) < 0))
      {
        v84 = v89;
        v13 = "inserting SH1: %s";
        v14 = 411;
      }

      else if ((v73 & 1) != 0 && (v81.ikey = 3295315, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v81, 3u, &value[28]) < 0))
      {
        v84 = v89;
        v13 = "inserting SH2: %s";
        v14 = 413;
      }

      else if ((v75 & 1) != 0 && (v82.ikey = 3360851, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v82, 4u, &value[60]) < 0))
      {
        v84 = v89;
        v13 = "inserting SH3: %s";
        v14 = 415;
      }

      else
      {
        if ((v77 & 1) == 0 || (v83.ikey = 3491923, (AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v83, 5u, &value[108]) & 0x80000000) == 0))
        {
          result = 0;
          goto LABEL_9;
        }

        v84 = v89;
        v13 = "inserting SH5: %s";
        v14 = 417;
      }

      goto LABEL_7;
    }
  }

LABEL_9:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t getFileDiskUsageBlocks2(char *a1, const char *a2, unsigned int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  bzero(v8, 0x800uLL);
  if (concatPath(v8, 0x800uLL, a1, a2))
  {
    result = -1;
  }

  else
  {
    result = getFileDiskUsage(v8);
    if (result >= 0)
    {
      result = (result + a3 - 1) & -a3;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaHeaderAppendEntryAttributes(AAHeader header, char *a2, char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7.ikey = 4475221;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v7, *(a2 + 1)) < 0)
    {
      v22 = "append UID";
      v23 = 428;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 2) != 0)
  {
    v10.ikey = 4475207;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v10, *(a2 + 2)) < 0)
    {
      v22 = "append GID";
      v23 = 429;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 8) != 0)
  {
    v11.ikey = 4476749;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v11, *(a2 + 4)) < 0)
    {
      v22 = "append MOD";
      v23 = 430;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 4) != 0)
  {
    v12.ikey = 4672582;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v12, *(a2 + 3)) < 0)
    {
      v22 = "append FLG";
      v23 = 431;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x40) != 0)
  {
    v13.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v13, (a2 + 56)) < 0)
    {
      v22 = "append MTM";
      v23 = 432;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x20) != 0)
  {
    v14.ikey = 5067843;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v14, (a2 + 40)) < 0)
    {
      v22 = "append CTM";
      v23 = 433;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x10) != 0 && (v15.ikey = 5067842, AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v15, (a2 + 24)) < 0))
  {
    v22 = "append BTM";
    v23 = 434;
  }

  else
  {
    v16 = *a3;
    if (*a3)
    {
      v17.ikey = 5523009;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v17, *(a3 + 2)) < 0)
      {
        v22 = "append AFT";
        v23 = 435;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 2) != 0)
    {
      v18.ikey = 5391937;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v18, *(a3 + 3)) < 0)
      {
        v22 = "append AFR";
        v23 = 436;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 4) != 0)
    {
      v19.ikey = 4803654;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v19, *(a3 + 2)) < 0)
      {
        v22 = "append FLI";
        v23 = 437;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 8) == 0)
    {
      return 0;
    }

    v20.ikey = 4411984;
    if ((AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v20, *(a3 + 1)) & 0x80000000) == 0)
    {
      return 0;
    }

    v22 = "append PRC";
    v23 = 438;
  }

LABEL_44:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", v23, 101, 0, v22, v8, v9, v24);
  return 0xFFFFFFFFLL;
}

uint64_t aaHeaderBlobArrayInitWithHeader(uint64_t a1, AAHeader_impl *a2)
{
  *a1 = 0;
  v4 = *a2;
  if (v4 <= *(a1 + 4))
  {
    if (v4)
    {
      goto LABEL_5;
    }

    v8 = 0;
LABEL_15:
    result = 0;
    *a1 = v8;
  }

  else
  {
    *(a1 + 4) = v4;
    v5 = *(a1 + 8);
    v6 = realloc(v5, 24 * v4);
    if (v6)
    {
      *(a1 + 8) = v6;
LABEL_5:
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (AAHeaderGetFieldType(a2, v7) == 5)
        {
          size = 0;
          if (AAHeaderGetFieldBlob(a2, v7, &size, &v16) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 460, 101, 0, "get field blob failed", v9, v10, v16);
            return 0xFFFFFFFFLL;
          }

          v11 = *(a1 + 8);
          *(v11 + 24 * v8) = AAHeaderGetFieldKey(a2, v7);
          *(*(a1 + 8) + 24 * v8++ + 8) = vdupq_lane_s64(size, 0);
        }

        if (v4 == ++v7)
        {
          goto LABEL_15;
        }
      }
    }

    free(v5);
    *(a1 + 8) = 0;
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 453, 101, *v12, "malloc", v13, v14, v16);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

int AAHeaderGetFieldType(AAHeader header, uint32_t i)
{
  if (*header > i)
  {
    return *(*(header + 1) + 48 * i + 4);
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldType", 592, 101, 0, "invalid field index %u", v2, v3, i);
  return -1;
}

int AAHeaderGetFieldBlob(AAHeader header, uint32_t i, uint64_t *size, uint64_t *offset)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 670, 101, 0, "invalid field index %u", v4, v5, i);
  }

  else
  {
    v6 = *(header + 1) + 48 * i;
    if (*(v6 + 4) == 5)
    {
      result = 0;
      *size = *(v6 + 32);
      *offset = *(v6 + 24);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 672, 101, 0, "invalid type %d, expected BLOB", v4, v5, *(v6 + 4));
  }

  return -1;
}

AAFieldKey AAHeaderGetFieldKey(AAHeader header, uint32_t i)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldKey", 598, 101, 0, "invalid field index %u", v2, v3, i);
    return 0;
  }

  else
  {
    return *(*(header + 1) + 48 * i);
  }
}

uint64_t aaHeaderBlobArrayPayloadSize(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4;
    v4 += 3;
    result += v5;
    --v1;
  }

  while (v1);
  return result;
}

AAHeader AAHeaderCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
    if ((init_blob_with_magic(v1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 485, 101, 0, "init_blob_with_magic", v2, v3, v8);
      AAHeaderDestroy(v1);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 482, 101, *v4, "malloc", v5, v6, v8);
  }

  return v1;
}

void AAHeaderDestroy(AAHeader header)
{
  if (header)
  {
    free(*(header + 1));
    free(*(header + 4));
    memset_s(header + 16, 0x18uLL, 0, 0x18uLL);

    free(header);
  }
}

AAHeader AAHeaderClone(AAHeader header)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    if (AAHeaderAssign(v3, header) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 507, 101, 0, "header copy", v4, v5, v10);
      AAHeaderDestroy(v3);
      return 0;
    }
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 504, 101, *v6, "malloc", v7, v8, v10);
  }

  return v3;
}

int AAHeaderAssign(AAHeader header, AAHeader from_header)
{
  if ((realloc_fields(header, *from_header) & 0x80000000) != 0)
  {
    v12 = "realloc_fields";
    v13 = 519;
  }

  else
  {
    memcpy(*(header + 1), *(from_header + 1), 48 * *from_header);
    *header = *from_header;
    *(header + 2) = 0;
    v6 = (header + 16);
    v7 = *(from_header + 2);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = *(from_header + 4);
      v9 = *(header + 3);
      if (v9 >= v7)
      {
LABEL_16:
        v16 = *(header + 4);
        if (v8)
        {
          memcpy((v16 + *v6), v8, v7);
        }

        else if (v16)
        {
          memset_s((v16 + *v6), v7, 0, v7);
        }

        v17 = *v6 + v7;
        *v6 = v17;
        if (v17 > 3)
        {
          result = 0;
          **(header + 4) = 825246017;
          *(header + 5) = *(from_header + 5);
          return result;
        }
      }

      else
      {
        do
        {
          while (!v9)
          {
            v9 = 0x4000;
            if (v7 <= 0x4000)
            {
              v11 = (header + 32);
              v9 = 0x4000;
              goto LABEL_14;
            }
          }

          v10 = v9 >> 1;
          if ((v9 & (v9 >> 1)) != 0)
          {
            v10 = v9 & (v9 >> 1);
          }

          v9 += v10;
        }

        while (v9 < v7);
        v11 = (header + 32);
        if (v9 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_23;
        }

LABEL_14:
        v14 = *v11;
        v15 = realloc(*v11, v9);
        if (v15)
        {
          *(header + 3) = v9;
          *(header + 4) = v15;
          goto LABEL_16;
        }

        free(v14);
LABEL_23:
        *v11 = 0;
        *v6 = 0;
        *(header + 3) = 0;
      }
    }

    v12 = "realloc blob";
    v13 = 526;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", v13, 101, 0, v12, v4, v5, v19);
  return -1;
}

AAHeader AAHeaderCreateWithEncodedData(size_t data_size, const uint8_t *data)
{
  v4 = AAHeaderCreate();
  v5 = v4;
  if (v4 && (aaHeaderInitWithEncodedData(v4, data, data_size) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v5);
    return 0;
  }

  return v5;
}

AAHeader AAHeaderCreateWithPath(AAFieldKeySet key_set, const char *dir, const char *path, AAFlagSet flags)
{
  v8 = AAHeaderCreate();
  v9 = v8;
  if (v8 && (aaHeaderInitWithPath(v8, key_set, dir, path, flags) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v9);
    return 0;
  }

  return v9;
}

int AAHeaderRemoveField(AAHeader header, uint32_t i)
{
  if ((update_field_sizes(header, i, 0, 0, v2, v3, v4, v5) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderRemoveField", 558, 101, 0, "update_field_sizes failed", v8, v9, v12);
    return -1;
  }

  else
  {
    v10 = *header;
    if (*header + ~i)
    {
      memmove((*(header + 1) + 48 * i), (*(header + 1) + 48 * (i + 1)), 48 * (*header + ~i));
      v10 = *header;
    }

    result = 0;
    *header = v10 - 1;
  }

  return result;
}

uint64_t update_field_sizes(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 <= a2)
  {
    v15 = "invalid field index";
    v16 = 74;
    goto LABEL_5;
  }

  v8 = a2;
  v10 = (a1 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8) + 48 * a2;
  v13 = *(v12 + 16);
  v14 = *(v12 + 12) + v13;
  if (v11 < v14)
  {
LABEL_3:
    v15 = "realloc blob";
    v16 = 78;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", v16, 101, 0, v15, a7, a8, v33);
    return 0xFFFFFFFFLL;
  }

  if (v13 >= a3)
  {
    if (v13 <= a3)
    {
      goto LABEL_29;
    }

    v25 = v13 - a3;
    if (v11 != v14)
    {
      memmove((*(a1 + 32) + v14 - v25), (*(a1 + 32) + v14), v11 - v14);
      v14 = *(a1 + 16);
    }

    v11 = v14 - v25;
  }

  else
  {
    v20 = a3 - v13;
    v21 = v11 + v20;
    if ((v11 + v20) < 0)
    {
      goto LABEL_3;
    }

    v22 = *(a1 + 24);
    if (v22 < v21)
    {
      do
      {
        while (!v22)
        {
          v22 = 0x4000;
          if (v21 <= 0x4000)
          {
            v36 = v20;
            v24 = (a1 + 32);
            v22 = 0x4000;
            goto LABEL_23;
          }
        }

        v23 = v22 >> 1;
        if ((v22 & (v22 >> 1)) != 0)
        {
          v23 = v22 & (v22 >> 1);
        }

        v22 += v23;
      }

      while (v22 < v21);
      v24 = (a1 + 32);
      if (v22 >= 0x2000000001)
      {
        v26 = (a1 + 32);
        *__error() = 12;
        goto LABEL_36;
      }

      v36 = v20;
LABEL_23:
      v34 = v24;
      v35 = *v24;
      v27 = realloc(*v24, v22);
      if (v27)
      {
        *(a1 + 24) = v22;
        *(a1 + 32) = v27;
        v20 = v36;
        goto LABEL_25;
      }

      v26 = v34;
      free(v35);
LABEL_36:
      *v26 = 0;
      *v10 = 0;
      v10[1] = 0;
      goto LABEL_3;
    }

LABEL_25:
    if (v11 != v14)
    {
      v28 = v20;
      memmove((*(a1 + 32) + v14 + v20), (*(a1 + 32) + v14), v11 - v14);
      v20 = v28;
    }

    v11 = *v10 + v20;
  }

  *v10 = v11;
LABEL_29:
  *(a1 + 40) = *(a1 + 40) + a4 - *(v12 + 32);
  if (v11 <= 5)
  {
    v15 = "copy header size";
    v16 = 85;
    goto LABEL_5;
  }

  *(*(a1 + 32) + 4) = v11;
  *(v12 + 16) = a3;
  *(v12 + 32) = a4;
  if (v8 + 1 < *a1)
  {
    v29 = *(a1 + 8);
    v30 = (v29 + 48 * (v8 + 1) + 24);
    v31 = *a1 - 1;
    do
    {
      v32 = v29 + 48 * v8;
      *(v30 - 3) = *(v32 + 16) + *(v32 + 12);
      *v30 = *(v32 + 32) + *(v32 + 24);
      v30 += 6;
      ++v8;
    }

    while (v31 != v8);
  }

  return 0;
}

int AAHeaderClear(AAHeader header)
{
  init_blob_with_magic(header);
  *header = 0;
  *(header + 5) = 0;
  return 0;
}

int AAHeaderGetKeyIndex(AAHeader header, AAFieldKey key)
{
  v2 = *header;
  if (v2)
  {
    v4 = 0;
    v5 = *(header + 1);
    while (1)
    {
      v6 = *v5;
      v5 += 12;
      if (((v6 ^ key.ikey) & 0xFFFFFF) == 0)
      {
        break;
      }

      if (v2 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v4) = -1;
  }

  return v4;
}

int AAHeaderGetFieldUInt(AAHeader header, uint32_t i, uint64_t *value)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 604, 101, 0, "invalid field index %u", v3, v4, i);
  }

  else
  {
    v5 = *(header + 1) + 48 * i;
    if (*(v5 + 4) == 1)
    {
      result = 0;
      *value = *(v5 + 40);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 606, 101, 0, "invalid type %d, expected UINT", v3, v4, *(v5 + 4));
  }

  return -1;
}

int AAHeaderGetFieldString(AAHeader header, uint32_t i, size_t capacity, char *value, size_t *length)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 614, 101, 0, "invalid field index %u", v5, v6, i);
    return -1;
  }

  v7 = (*(header + 1) + 48 * i);
  if (v7[1] != 2)
  {
    v14 = v7[1];
    v11 = "invalid type %d, expected STRING";
    v12 = 616;
    goto LABEL_11;
  }

  v9 = v7[10];
  if (length)
  {
    *length = v9;
  }

  if (!capacity)
  {
    return 0;
  }

  if (v9 >= capacity)
  {
    return -1;
  }

  v10 = (v7[3] + 6);
  if (v9 + v10 > *(header + 2))
  {
    v11 = "invalid blob segment";
    v12 = 624;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", v12, 101, 0, v11, v5, v6, v14);
    return -1;
  }

  memcpy(value, (*(header + 4) + v10), v9);
  result = 0;
  value[v9] = 0;
  return result;
}

int AAHeaderGetFieldHash(AAHeader header, uint32_t i, size_t capacity, AAHashFunction *hash_function, uint8_t *value)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 634, 101, 0, "invalid field index %u", v5, v6, i);
    return -1;
  }

  v7 = (*(header + 1) + 48 * i);
  if (v7[1] != 3)
  {
    v18 = v7[1];
    v10 = "invalid type %d, expected HASH";
    v11 = 636;
    goto LABEL_7;
  }

  v9 = v7[10];
  if (v9 > capacity)
  {
    v10 = "not enough capacity to store HASH";
    v11 = 639;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", v11, 101, 0, v10, v5, v6, v18);
    return -1;
  }

  v13 = (v7[3] + 4);
  if (v9 + v13 > *(header + 2))
  {
    v10 = "invalid blob segment";
    v11 = 640;
    goto LABEL_7;
  }

  memcpy(value, (*(header + 4) + v13), v9);
  result = 0;
  if (hash_function)
  {
    v15 = v7[2];
    v16 = v15 - 70;
    v17 = v15 - 69;
    if (v16 >= 5)
    {
      v17 = -1;
    }

    *hash_function = v17;
  }

  return result;
}

int AAHeaderGetFieldTimespec(AAHeader header, uint32_t i, timespec *value)
{
  if (*header > i)
  {
    v5 = (*(header + 1) + 48 * i);
    if (v5[1] == 4)
    {
      v6 = v5[2];
      if (v6 == 84)
      {
        v11 = v5[3];
        v12 = (v11 + 4);
        v13 = *(header + 2);
        v14 = (v11 + 12);
        if (v12 + 8 > v13 || v14 + 4 > v13)
        {
          v8 = "invalid blob segment";
          v9 = 661;
          goto LABEL_9;
        }

        v16 = *(header + 4);
        v17 = *(v16 + v12);
        v18 = *(v16 + v14);
      }

      else if (v6 == 83)
      {
        v7 = (v5[3] + 4);
        if ((v7 + 8) > *(header + 2))
        {
          v8 = "invalid blob segment";
          v9 = 655;
LABEL_9:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", v9, 101, 0, v8, v3, v4, v19);
          return -1;
        }

        v18 = 0;
        v17 = *(*(header + 4) + v7);
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      result = 0;
      value->tv_sec = v17;
      value->tv_nsec = v18;
      return result;
    }

    v19 = v5[1];
    v8 = "invalid type %d, expected TIMESPEC";
    v9 = 649;
    goto LABEL_9;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 647, 101, 0, "invalid field index %u", v3, v4, i);
  return -1;
}

int AAHeaderSetFieldFlag(AAHeader header, uint32_t i, AAFieldKey key)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_19;
  }

  v10 = *key.skey >> 8;
  if (v10 > 0x7F)
  {
    if (__maskrune(v10, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_19:
    v17 = "invalid key";
    v18 = 681;
    goto LABEL_20;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v10 + 60) & 0x500) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v11 = (key.ikey << 8) >> 24;
  if (v11 > 0x7F)
  {
    v12 = __maskrune(v11, 0x500uLL);
  }

  else
  {
    v12 = *(MEMORY[0x29EDCA600] + 4 * v11 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_19;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, 4u, 0, v3, v4, v5, v6) & 0x80000000) != 0)
  {
    v17 = "update_field_sizes failed";
    v18 = 685;
  }

  else
  {
    v13 = *(header + 1) + 48 * i;
    *v13 = key;
    *(v13 + 4) = 0x2A00000000;
    *(v13 + 40) = 0;
    v22 = 0;
    v23 = 0;
    __src = key;
    __src.skey[3] = 42;
    v16 = v13 + 12;
    v15 = *(v13 + 12);
    v14 = *(v16 + 4);
    if (v15 + v14 <= *(header + 2))
    {
      memcpy((*(header + 4) + v15), &__src, v14);
      return 0;
    }

    v17 = "invalid blob segment";
    v18 = 696;
  }

LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", v18, 101, 0, v17, v5, v6, v20);
  return -1;
}

uint64_t append_field(unsigned int *a1)
{
  v2 = *a1;
  if ((realloc_fields(a1, v2 + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "append_field", 46, 101, 0, "realloc_fields failed", v3, v4, v8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ++*a1;
    v5 = *(a1 + 1);
    v6 = v5 + 48 * v2;
    if (v5)
    {
      memset_s((v5 + 48 * v2), 0x30uLL, 0, 0x30uLL);
    }

    *(v6 + 12) = *(a1 + 2);
    *(v6 + 24) = *(a1 + 5);
  }

  return v2;
}

int AAHeaderSetFieldUInt(AAHeader header, uint32_t i, AAFieldKey key, uint64_t value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    v17 = "invalid key";
    v18 = 703;
    goto LABEL_17;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v12 + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = *(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_16;
  }

  if (value >= 0x100)
  {
    if (value >= 0x10000)
    {
      if (HIDWORD(value))
      {
        v16 = 12;
      }

      else
      {
        v16 = 8;
      }

      if (HIDWORD(value))
      {
        v15 = 56;
      }

      else
      {
        v15 = 52;
      }
    }

    else
    {
      v15 = 50;
      v16 = 6;
    }
  }

  else
  {
    v15 = 49;
    v16 = 5;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v16, 0, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v17 = "update_field_sizes failed";
    v18 = 713;
  }

  else
  {
    v20 = *(header + 1) + 48 * i;
    *v20 = key;
    *(v20 + 4) = 1;
    *(v20 + 8) = v15;
    *(v20 + 40) = value;
    v26 = value;
    v27 = 0;
    __src = key;
    __src.skey[3] = v15;
    v23 = v20 + 12;
    v22 = *(v20 + 12);
    v21 = *(v23 + 4);
    if (v22 + v21 <= *(header + 2))
    {
      memcpy((*(header + 4) + v22), &__src, v21);
      return 0;
    }

    v17 = "invalid blob segment";
    v18 = 725;
  }

LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", v18, 101, 0, v17, v6, v7, v24);
  return -1;
}

int AAHeaderSetFieldString(AAHeader header, uint32_t i, AAFieldKey key, const char *value, size_t length)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v13 = *key.skey >> 8;
  if (v13 > 0x7F)
  {
    if (__maskrune(v13, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    v16 = "invalid key";
    v17 = 732;
    goto LABEL_17;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v14 = (key.ikey << 8) >> 24;
  if (v14 > 0x7F)
  {
    v15 = __maskrune(v14, 0x500uLL);
  }

  else
  {
    v15 = *(MEMORY[0x29EDCA600] + 4 * v14 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v15)
  {
    goto LABEL_16;
  }

  if (length >= 0x10000)
  {
    v16 = "string too long";
    v17 = 733;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", v17, 101, 0, v16, v6, v7, v24);
    return -1;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, length + 6, 0, length, v5, v6, v7) & 0x80000000) != 0)
  {
    v16 = "update_field_sizes failed";
    v17 = 737;
    goto LABEL_17;
  }

  v19 = *(header + 1) + 48 * i;
  *v19 = key;
  *(v19 + 4) = 0x5000000002;
  *(v19 + 40) = length;
  v20 = *(v19 + 12);
  if ((v20 + 6) > *(header + 2) || (v21 = *(header + 4) + v20, *v21 = key.ikey | 0x50000000, *(v21 + 4) = length, v22 = (*(v19 + 12) + 6), v22 + length > *(header + 2)))
  {
    v16 = "invalid blob segment";
    v17 = 750;
    goto LABEL_17;
  }

  v23 = *(header + 4);
  if (value)
  {
    memcpy((v23 + v22), value, length);
  }

  else if (v23)
  {
    memset_s((v23 + v22), length, 0, length);
  }

  return 0;
}

int AAHeaderSetFieldHash(AAHeader header, uint32_t i, AAFieldKey key, AAHashFunction hash_function, const uint8_t *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_21;
  }

  v13 = *key.skey >> 8;
  if (v13 > 0x7F)
  {
    if (__maskrune(v13, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_21:
    v20 = "invalid key";
    v21 = 757;
    goto LABEL_22;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v14 = (key.ikey << 8) >> 24;
  if (v14 > 0x7F)
  {
    v15 = __maskrune(v14, 0x500uLL);
  }

  else
  {
    v15 = *(MEMORY[0x29EDCA600] + 4 * v14 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v15)
  {
    goto LABEL_21;
  }

  if (hash_function - 1 >= 5)
  {
    v22 = -1;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 760, 101, 0, "invalid HASH subtype: %d", v6, v7, -1);
    return v22;
  }

  v16 = dword_296AD1F98[hash_function - 1];
  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v16 + 4, 0, value, v5, v6, v7) & 0x80000000) != 0)
  {
    v20 = "update_field_sizes failed";
    v21 = 764;
    goto LABEL_22;
  }

  v17 = *(header + 1) + 48 * i;
  *v17 = key;
  *(v17 + 4) = 3;
  *(v17 + 8) = hash_function + 69;
  *(v17 + 40) = v16;
  v18 = *(v17 + 12);
  if ((v18 + 4) > *(header + 2) || (*(*(header + 4) + v18) = key.ikey | ((hash_function + 69) << 24), v19 = (*(v17 + 12) + 4), v19 + v16 > *(header + 2)))
  {
    v20 = "invalid blob segment";
    v21 = 776;
LABEL_22:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", v21, 101, 0, v20, v6, v7, v25);
    return -1;
  }

  v24 = *(header + 4);
  if (value)
  {
    memcpy((v24 + v19), value, v16);
  }

  else if (v24)
  {
    memset_s((v24 + v19), v16, 0, v16);
  }

  return 0;
}

int AAHeaderSetFieldTimespec(AAHeader header, uint32_t i, AAFieldKey key, const timespec *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_25;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_25;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_25:
    v22 = "invalid key";
    v23 = 783;
    goto LABEL_26;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v12 + 60) & 0x500) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = *(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_25;
  }

  if (value->tv_nsec)
  {
    v15 = 16;
  }

  else
  {
    v15 = 12;
  }

  if (value->tv_nsec)
  {
    v16 = 84;
  }

  else
  {
    v16 = 83;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v15, 0, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v22 = "update_field_sizes failed";
    v23 = 791;
  }

  else
  {
    v17 = *(header + 1) + 48 * i;
    *v17 = key;
    *(v17 + 4) = 4;
    *(v17 + 8) = v16;
    *(v17 + 40) = 0;
    __src = key;
    __src.skey[3] = v16;
    tv_nsec = value->tv_nsec;
    tv_sec = value->tv_sec;
    v28 = tv_nsec;
    v29 = 0;
    v21 = v17 + 12;
    v20 = *(v17 + 12);
    v19 = *(v21 + 4);
    if (v20 + v19 <= *(header + 2))
    {
      memcpy((*(header + 4) + v20), &__src, v19);
      return 0;
    }

    v22 = "invalid blob segment";
    v23 = 804;
  }

LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", v23, 101, 0, v22, v6, v7, v25);
  return -1;
}

int AAHeaderSetFieldBlob(AAHeader header, uint32_t i, AAFieldKey key, uint64_t size)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_31;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_31;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_31:
    v23 = "invalid key";
    v24 = 811;
    goto LABEL_32;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v12 + 60) & 0x500) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = *(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_31;
  }

  if (HIDWORD(size))
  {
    v15 = 12;
  }

  else
  {
    v15 = 8;
  }

  if (HIDWORD(size))
  {
    v16 = 67;
  }

  else
  {
    v16 = 66;
  }

  if (size >= 0x10000)
  {
    v17 = v15;
  }

  else
  {
    v17 = 6;
  }

  if (size >= 0x10000)
  {
    v18 = v16;
  }

  else
  {
    v18 = 65;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v17, size, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v23 = "update_field_sizes failed";
    v24 = 820;
  }

  else
  {
    v19 = *(header + 1) + 48 * i;
    *v19 = key;
    *(v19 + 4) = 5;
    *(v19 + 8) = v18;
    *(v19 + 40) = 0;
    v28 = size;
    v29 = 0;
    __src = key;
    __src.skey[3] = v18;
    v22 = v19 + 12;
    v21 = *(v19 + 12);
    v20 = *(v22 + 4);
    if (v21 + v20 <= *(header + 2))
    {
      memcpy((*(header + 4) + v21), &__src, v20);
      return 0;
    }

    v23 = "invalid blob segment";
    v24 = 832;
  }

LABEL_32:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", v24, 101, 0, v23, v6, v7, v26);
  return -1;
}

uint64_t aaEntryXATBlobInitWithEncodedData(unint64_t *a1, char *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", v12, 104, 0, v11, a7, a8, v46);
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t aaEntryXATBlobInitWithPath(AAEntryXATBlob_impl *a1, char *__s, const char *a3)
{
  v3 = __s;
  v18 = *MEMORY[0x29EDCA608];
  if ((concatPath(v17, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 99, 104, 0, "invalid path %s/%s", v5, v6, v3);
LABEL_7:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v7 = open(v17, 0x200000);
  if (v7 < 0)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 110, 104, v12, "open: %s", v13, v14, v17);
    goto LABEL_7;
  }

  v8 = v7;
  if ((aaEntryXATBlobInitWithFD(a1, v7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 112, 104, 0, "aaEntryXATBlobInitWithFD failed: %s", v9, v10, v17);
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
  }

  close(v8);
LABEL_10:
  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t aaEntryXATBlobInitWithFD(AAEntryXATBlob_impl *a1, int fd)
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 144, 104, *v21, "malloc", v22, v23, v36);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 153, 104, *v24, "listxattr", v25, v26, v36);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 167, 104, v27, "getxattr failed for name=%s", v28, v29, v13);
    goto LABEL_27;
  }

  v17 = v14;
  if (v14 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 169, 104, 0, "attribute data is too large name=%s", v15, v16, v13);
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 187, 104, v30, "getxattr failed for name=%s", v31, v32, v13);
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

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 190, 104, 0, "inserting XAT entry", v19, v20, v36);
    }

    v6 = v18;
    goto LABEL_27;
  }

  *__error() = 12;
LABEL_35:
  v33 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 178, 104, *v33, "malloc", v34, v35, v36);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", v14, 104, 0, v13, v9, v10, v43);
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

uint64_t aaEntryXATBlobApplyToFD(void *a1, int fd, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", v17, 104, v13, v16, v14, v15, v45);
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
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", v44, 104, v40, v43, v41, v42, v45);
LABEL_40:
              free(v18);
              v30 = "clearing extended attributes";
              v31 = 212;
LABEL_41:
              v39 = 0;
LABEL_42:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", v31, 104, v39, v30, a7, a8, v45);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobCreate", 251, 104, *v2, "malloc", v3, v4, v6);
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
  if (v4 && (aaEntryXATBlobInitWithEncodedData(v4, data, data_size, v5, v6, v7, v8, v9) & 0x80000000) != 0)
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
  if (v5 && (aaEntryXATBlobInitWithPath(v5, dir, path) & 0x80000000) != 0)
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
  v25 = *MEMORY[0x29EDCA608];
  if ((concatPath(v24, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 299, 104, 0, "invalid path %s/%s", v7, v8, v5);
LABEL_7:
    v18 = -1;
    goto LABEL_10;
  }

  v9 = open(v24, 0x200000);
  if (v9 < 0)
  {
    v19 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 304, 104, v19, "open: %s", v20, v21, v24);
    goto LABEL_7;
  }

  v15 = v9;
  if ((aaEntryXATBlobApplyToFD(xat, v9, v4, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 306, 104, 0, "applying XAT blob: %s", v16, v17, v24);
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  close(v15);
LABEL_10:
  v22 = *MEMORY[0x29EDCA608];
  return v18;
}

int AAEntryXATBlobGetEntry(AAEntryXATBlob xat, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*xat <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 328, 104, 0, "invalid XAT index %u", data, data_size, i);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 338, 104, 0, "invalid XAT blob", data, data_size, v17);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", v16, 104, 0, v15, v5, v6, v46);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobRemoveEntry", 426, 104, 0, "invalid XAT index %u", v2, v3, i);
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

uint64_t loadAndDecodeHeader_Ustar(uint64_t a1, uint64_t *a2)
{
  *&v146[1022] = *MEMORY[0x29EDCA608];
  if (AAHeaderAssign(*(a1 + 88), *(a1 + 96)) < 0)
  {
    v16 = "init header";
    v17 = 199;
    goto LABEL_147;
  }

  if ((decodeStreamLoadHeader(a1, 0x200uLL, v4, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v16 = "invalid tar archive";
    v17 = 202;
    goto LABEL_147;
  }

  v10 = *(a1 + 64);
  if (isZero(v10, 512))
  {
    if ((decodeStreamLoadHeader(a1, 0x400uLL, v11, v12, v13, v14, v8, v9) & 0x80000000) != 0)
    {
      v16 = "invalid tar archive";
      v17 = 207;
      goto LABEL_147;
    }

    if (!isZero(*(a1 + 64), 1024))
    {
      v16 = "Invalid EOF record header";
      v17 = 209;
      goto LABEL_147;
    }

    result = 1;
    goto LABEL_149;
  }

  v134 = a2;
  v18 = 70;
  while (1)
  {
    while (1)
    {
      v19 = *(a1 + 72);
      v20 = &v10[v19];
      v21 = &v10[v19 - 356];
      v22 = *v21;
      if (v22 != 120 && v22 != 103)
      {
        break;
      }

      v143 = 0;
      if ((tarParseInt(v20 - 388, 0xCuLL, &v143) & 0x80000000) != 0)
      {
        v16 = "invalid pax header";
        v17 = 229;
        goto LABEL_147;
      }

      v27 = v143;
      if (v22 == 103 && AAHeaderClear(*(a1 + 88)) < 0)
      {
        v16 = "clear header";
        v17 = 233;
        goto LABEL_147;
      }

      if ((decodeStreamLoadHeader(a1, v19 + ((v27 + 511) & 0xFFFFFFFFFFFFFE00) + 512, v23, v24, v25, v26, v8, v9) & 0x80000000) != 0)
      {
        v16 = "truncated stream";
        v17 = 236;
        goto LABEL_147;
      }

      if (v27)
      {
        v28 = 0;
        v29 = *(a1 + 64) + v19;
        v30 = v29 + v27;
        while (1)
        {
          __endptr = 0;
          v31 = strtoll((v29 + v28), &__endptr, 10);
          if (!v31 || ((v28 += v31, v32 = __endptr, v28 <= v27) ? (v33 = __endptr > v30) : (v33 = 1), v33 || (v34 = (v28 - 1), v35 = (v29 + v28 - 1), *v35 != 10)))
          {
            v16 = "invalid xhdr entry";
            v17 = 249;
            goto LABEL_147;
          }

          v34[v29] = 0;
          v36 = &v32[-v29];
          if (&v32[-v29] < v34)
          {
            while (1)
            {
              v37 = *v32++;
              if (v37 != 32)
              {
                break;
              }

              if (++v36 >= v34)
              {
                goto LABEL_145;
              }
            }
          }

          if (v36 >= v34)
          {
LABEL_145:
            v16 = "invalid xhdr entry";
            v17 = 257;
            goto LABEL_147;
          }

          v38 = v29;
          while (v36[v38] != 61)
          {
            --v34;
            ++v38;
            if (v36 == v34)
            {
              goto LABEL_145;
            }
          }

          v133 = v30;
          v36[v38] = 0;
          v39 = &v36[v38 + 1];
          fprintf(*MEMORY[0x29EDCA610], "xhdr %s: %s\n", &v36[v29], v39);
          if (!strcmp(&v36[v29], "size"))
          {
            v42.ikey = 5521732;
            v40 = 5;
LABEL_43:
            v41 = 1;
            goto LABEL_48;
          }

          if (!strcmp(&v36[v29], "path"))
          {
            v41 = 0;
            v40 = 2;
            v42.ikey = 5521744;
            goto LABEL_48;
          }

          if (!strcmp(&v36[v29], "uid"))
          {
            break;
          }

          if (!strcmp(&v36[v29], "gid"))
          {
            v41 = 1;
            v42.ikey = 4475207;
            goto LABEL_47;
          }

          if (!strcmp(&v36[v29], "uname"))
          {
            v42.ikey = 5130581;
            v40 = 2;
            goto LABEL_43;
          }

          if (!strcmp(&v36[v29], "gname"))
          {
            v40 = 2;
            v41 = 1;
            v42.ikey = 5130567;
          }

          else if (!strcmp(&v36[v29], "linkpath"))
          {
            v41 = 0;
            v40 = 2;
            v42.ikey = 4935244;
          }

          else
          {
            if (strcmp(&v36[v29], "mtime"))
            {
              goto LABEL_96;
            }

            v40 = 4;
            v41 = 1;
            v42.ikey = 5067853;
          }

LABEL_48:
          v43 = *v39;
          if (!*v39)
          {
            v47 = *(a1 + 88);
            KeyIndex = AAHeaderGetKeyIndex(v47, v42);
            if ((KeyIndex & 0x80000000) == 0 && AAHeaderRemoveField(v47, KeyIndex) < 0)
            {
              v16 = "removing header field";
              v17 = 278;
              goto LABEL_147;
            }

            goto LABEL_96;
          }

          if (v40 > 3)
          {
            if (v40 == 4)
            {
              v65 = v42;
              value.tv_sec = 0;
              value.tv_nsec = 0;
              value.tv_sec = strtoll(v39, &__endptr, 10);
              v66 = __endptr;
              if (__endptr && *__endptr == 46)
              {
                value.tv_nsec = strtoll(__endptr + 1, &__endptr, 10);
                v66 = __endptr;
              }

              if (v66 != v35)
              {
                v16 = "xhdr value parsing";
                v17 = 317;
                goto LABEL_147;
              }

              v67 = *(a1 + 88);
              v68 = v65;
              v69 = AAHeaderGetKeyIndex(v67, v68);
              if (v69 < 0)
              {
                v70 = -1;
              }

              else
              {
                v70 = v69;
              }

              v71 = v65;
              if (AAHeaderSetFieldTimespec(v67, v70, v71, &value) < 0)
              {
                v16 = "creating header";
                v17 = 318;
                goto LABEL_147;
              }
            }

            else
            {
              v49 = v42;
              v50 = strtoll(v39, &__endptr, 10);
              if (__endptr != v35)
              {
                v16 = "xhdr value parsing";
                v17 = 288;
                goto LABEL_147;
              }

              v51 = v50;
              v52 = *(a1 + 88);
              v53 = v49;
              v54 = AAHeaderGetKeyIndex(v52, v53);
              if (v54 < 0)
              {
                v55 = -1;
              }

              else
              {
                v55 = v54;
              }

              v56 = v49;
              if (AAHeaderSetFieldBlob(v52, v55, v56, v51) < 0)
              {
                v16 = "creating header";
                v17 = 289;
                goto LABEL_147;
              }
            }
          }

          else
          {
            if (v40 != 1)
            {
              key = v42;
              v44 = v41;
              v45 = strlen(&v36[v38 + 1]);
              v46 = v45;
              if (v44)
              {
                goto LABEL_91;
              }

              if (v45 == 1)
              {
                if (v43 == 46)
                {
                  v46 = 0;
                  goto LABEL_91;
                }

                v46 = 1;
              }

              else if (!v45 || v43 == 46 && v36[v38 + 2] == 47 && (v39 = &v36[v38 + 3], v46 = v45 - 2, v45 == 2))
              {
LABEL_91:
                v72 = *(a1 + 88);
                v73 = key;
                v74 = AAHeaderGetKeyIndex(v72, v73);
                if (v74 < 0)
                {
                  v75 = -1;
                }

                else
                {
                  v75 = v74;
                }

                v76 = key;
                if (AAHeaderSetFieldString(v72, v75, v76, v39, v46) < 0)
                {
                  v16 = "creating header";
                  v17 = 309;
                  goto LABEL_147;
                }

                v27 = v143;
                goto LABEL_96;
              }

              if (v39[v46 - 1] == 47)
              {
                --v46;
              }

              goto LABEL_91;
            }

            v57 = v42;
            v58 = strtoll(v39, &__endptr, 10);
            if (__endptr != v35)
            {
              v16 = "xhdr value parsing";
              v17 = 295;
              goto LABEL_147;
            }

            v59 = v58;
            v60 = *(a1 + 88);
            v61 = v57;
            v62 = AAHeaderGetKeyIndex(v60, v61);
            if (v62 < 0)
            {
              v63 = -1;
            }

            else
            {
              v63 = v62;
            }

            v64 = v57;
            if (AAHeaderSetFieldUInt(v60, v63, v64, v59) < 0)
            {
              v16 = "creating header";
              v17 = 296;
              goto LABEL_147;
            }
          }

LABEL_96:
          v30 = v133;
          if (v28 >= v27)
          {
            goto LABEL_97;
          }
        }

        v42.ikey = 4475221;
        v41 = 1;
LABEL_47:
        v40 = 1;
        goto LABEL_48;
      }

LABEL_97:
      if (*v21 == 103 && AAHeaderAssign(*(a1 + 96), *(a1 + 88)) < 0)
      {
        v16 = "update global header";
        v17 = 330;
        goto LABEL_147;
      }

      v10 = *(a1 + 64);
      v18 = 70;
    }

    if ((v77 = *(a1 + 88)) != 0 && (v78.ikey = 5521744, v79 = AAHeaderGetKeyIndex(*(a1 + 88), v78), (v79 & 0x80000000) == 0) && ((FieldString = AAHeaderGetFieldString(v77, v79, 0x400uLL, &__s, 0), FieldString <= 1) ? (v81 = 1) : (v81 = FieldString), v81 < 0 || FieldString < 2))
    {
      if (v81 < 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v82 = 0;
      v83 = v20 - 512;
      do
      {
        if (!v83[v82])
        {
          break;
        }

        ++v82;
      }

      while (v82 != 100);
      for (i = 0; i != 155; ++i)
      {
        if (!v20[i - 167])
        {
          break;
        }
      }

      do
      {
        v85 = v82;
        if (!v82)
        {
          break;
        }

        --v82;
      }

      while (v83[v85 - 1] == 47);
      v86 = i - 1022;
      while (v86 != -1022)
      {
        v87 = v20[v86-- + 854];
        if (v87 != 47)
        {
          if (v85 + v86 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            __memcpy_chk();
            v88 = v86 + 1024;
            v146[v86 + 1021] = 47;
            goto LABEL_122;
          }

LABEL_143:
          v16 = "invalid header";
          v17 = 337;
          goto LABEL_147;
        }
      }

      if (v85 - 1023 < 0xFFFFFFFFFFFFFBFFLL)
      {
        goto LABEL_143;
      }

      v88 = 0;
LABEL_122:
      v89 = &__s + v88;
      memcpy(&__s + v88, v20 - 512, v85);
      v89[v85] = 0;
    }

    v90 = strrchr(&__s, 47);
    v91 = *v21;
    if (v91 != 48)
    {
      break;
    }

    if (v90)
    {
      p_s = v90 + 1;
    }

    else
    {
      p_s = &__s;
    }

    if (*p_s != 46)
    {
      goto LABEL_164;
    }

    v93 = v90 + 2;
    if (!v90)
    {
      v93 = &v145;
    }

    if (*v93 != 95)
    {
LABEL_164:
      v103 = 0;
      v105 = 0;
      v107 = 0;
      v106 = 0;
      v104 = 1;
      goto LABEL_170;
    }

    value.tv_sec = 0;
    if ((tarParseInt(v20 - 388, 0xCuLL, &value) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 346;
      goto LABEL_147;
    }

    tv_sec = value.tv_sec;
    if ((decodeStreamLoadHeader(a1, v19 + ((value.tv_sec + 511) & 0xFFFFFFFFFFFFFE00) + 512, v94, v95, v96, v97, v8, v9) & 0x80000000) != 0)
    {
      v16 = "truncated stream";
      v17 = 350;
      goto LABEL_147;
    }

    if (tv_sec >= 0x18)
    {
      v10 = *(a1 + 64);
      v99 = *&v10[v19] == 0x20007160500 && *&v10[v19 + 8] == 0x5820534F2063614DLL;
      if (v99 && *&v10[v19 + 16] == 0x2020202020202020)
      {
        continue;
      }
    }

    v16 = "invalid ._ entry";
    v17 = 361;
    goto LABEL_147;
  }

  v103 = 0;
  v104 = 1;
  if (*v21 <= 0x32u)
  {
    v105 = 0;
    v107 = 0;
    v106 = 0;
    switch(v91)
    {
      case 0:
        goto LABEL_170;
      case 49:
        v103 = 0;
        v107 = 0;
        v106 = 0;
        v104 = 0;
        v105 = 1;
        v18 = 72;
        goto LABEL_170;
      case 50:
        v105 = 0;
        v107 = 0;
        v106 = 0;
        v104 = 0;
        v103 = 1;
        v18 = 76;
        goto LABEL_170;
    }

LABEL_163:
    v131 = v91;
    v16 = "Non supported entry type %u";
    v17 = 392;
    goto LABEL_147;
  }

  if (*v21 > 0x34u)
  {
    if (v91 == 53)
    {
      v103 = 0;
      v105 = 0;
      v107 = 0;
      v106 = 0;
      v104 = 0;
      v18 = 68;
      goto LABEL_170;
    }

    v105 = 0;
    v107 = 0;
    v106 = 0;
    if (v91 == 55)
    {
      goto LABEL_170;
    }

    goto LABEL_163;
  }

  v103 = 0;
  v105 = 0;
  if (v91 == 51)
  {
    v107 = 0;
    v104 = 0;
    v106 = 1;
    v18 = 67;
  }

  else
  {
    v106 = 0;
    v104 = 0;
    v107 = 1;
    v18 = 66;
  }

LABEL_170:
  v108.ikey = 5265748;
  if (AAHeaderSetFieldUInt(*(a1 + 88), 0xFFFFFFFF, v108, v18) < 0)
  {
    v16 = "creating header";
    v17 = 394;
    goto LABEL_147;
  }

  v109.ikey = 5521744;
  if (AAHeaderGetKeyIndex(*(a1 + 88), v109) < 0)
  {
    v110 = &__s;
    v111 = strlen(&__s);
    v112 = v111;
    if (v111 == 1 && __s == 46)
    {
      v112 = 0;
    }

    else
    {
      v110 = &__s;
      if (v111 >= 2 && __s == 46 && v145 == 47)
      {
        v110 = v146;
        v112 = v111 - 2;
      }
    }

    v113.ikey = 5521744;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v113, v110, v112) < 0)
    {
      v16 = "creating header";
      v17 = 405;
      goto LABEL_147;
    }
  }

  if ((v103 | v105) != 1 || (v114.ikey = 4935244, (AAHeaderGetKeyIndex(*(a1 + 88), v114) & 0x80000000) == 0))
  {
LABEL_196:
    if ((v107 | v106) == 1)
    {
      value.tv_sec = 0;
      v143 = 0;
      if ((tarParseInt(v20 - 183, 8uLL, &value) & 0x80000000) != 0)
      {
        v16 = "invalid header";
        v17 = 424;
        goto LABEL_147;
      }

      if ((tarParseInt(v20 - 175, 8uLL, &v143) & 0x80000000) != 0)
      {
        v16 = "invalid header";
        v17 = 425;
        goto LABEL_147;
      }

      v117.ikey = 5653828;
      if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v117, value.tv_sec) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 426;
        goto LABEL_147;
      }

      v118.ikey = 3294532;
      if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v118, v143) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 427;
        goto LABEL_147;
      }
    }

    size = 0;
    if ((tarParseInt(v20 - 388, 0xCuLL, &size) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 432;
      goto LABEL_147;
    }

    if (v104)
    {
      v119.ikey = 5521732;
      v120 = AAHeaderGetKeyIndex(*(a1 + 88), v119);
      if ((v120 & 0x80000000) != 0)
      {
        v121.ikey = 5521732;
        if (AAHeaderSetFieldBlob(*(a1 + 88), 0xFFFFFFFF, v121, size) < 0)
        {
          v16 = "creating header";
          v17 = 438;
          goto LABEL_147;
        }
      }

      else
      {
        value.tv_sec = 0;
        if (AAHeaderGetFieldBlob(*(a1 + 88), v120, &size, &value) < 0)
        {
          v16 = "looking up header";
          v17 = 443;
          goto LABEL_147;
        }
      }
    }

    v138 = 0;
    v139 = 0;
    v137 = 0;
    if ((tarParseInt(v20 - 412, 8uLL, &v139) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 449;
      goto LABEL_147;
    }

    if ((tarParseInt(v20 - 404, 8uLL, &v138) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 450;
      goto LABEL_147;
    }

    if ((tarParseInt(v20 - 396, 8uLL, &v137) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 451;
      goto LABEL_147;
    }

    v122.ikey = 4476749;
    if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v122, v139) & 0x80000000) != 0)
    {
      v16 = "creating header";
      v17 = 452;
      goto LABEL_147;
    }

    v123.ikey = 4475221;
    if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v123, v138) & 0x80000000) != 0)
    {
      v16 = "creating header";
      v17 = 453;
    }

    else
    {
      v124.ikey = 4475207;
      if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v124, v137) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 454;
      }

      else
      {
        v136.tv_sec = 0;
        v136.tv_nsec = 0;
        v135 = 0;
        if ((tarParseInt(v20 - 376, 0xCuLL, &v135) & 0x80000000) != 0)
        {
          v16 = "invalid header";
          v17 = 459;
        }

        else
        {
          v136.tv_sec = v135;
          if ((appendFieldIfNotDefinedTimespec(*(a1 + 88), &v136) & 0x80000000) != 0)
          {
            v16 = "creating header";
            v17 = 461;
          }

          else
          {
            v125 = 0;
            v126 = v20 - 247;
            while (v126[v125])
            {
              if (++v125 == 32)
              {
                goto LABEL_241;
              }
            }

            if (v125)
            {
LABEL_241:
              v127.ikey = 5130581;
              if ((appendFieldIfNotDefinedString(*(a1 + 88), v127, v126, v125) & 0x80000000) != 0)
              {
                v16 = "creating header";
                v17 = 465;
                goto LABEL_147;
              }
            }

            v128 = 0;
            v129 = v20 - 215;
            while (v129[v128])
            {
              if (++v128 == 32)
              {
                goto LABEL_247;
              }
            }

            if (!v128)
            {
LABEL_248:
              result = 0;
              *v134 = (size + 511) & 0xFFFFFFFFFFFFFE00;
              goto LABEL_149;
            }

LABEL_247:
            v130.ikey = 5130567;
            if ((appendFieldIfNotDefinedString(*(a1 + 88), v130, v129, v128) & 0x80000000) == 0)
            {
              goto LABEL_248;
            }

            v16 = "creating header";
            v17 = 467;
          }
        }
      }
    }

LABEL_147:
    LODWORD(v101) = 0;
    goto LABEL_148;
  }

  v101 = 0;
  v115 = v20 - 355;
  while (v115[v101])
  {
    if (++v101 == 100)
    {
      goto LABEL_192;
    }
  }

  if (v101)
  {
    if (v101 != 1)
    {
LABEL_192:
      if (*v115 == 46 && *(v20 - 354) == 47)
      {
        v115 = v20 - 353;
        v101 -= 2;
      }
    }

    v116.ikey = 4935244;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v116, v115, v101) < 0)
    {
      v16 = "creating header";
      v17 = 417;
      goto LABEL_147;
    }

    goto LABEL_196;
  }

  v16 = "invalid linkname";
  v17 = 412;
LABEL_148:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", v17, 70, v101, v16, v8, v9, v131);
  result = 0xFFFFFFFFLL;
LABEL_149:
  v102 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t isZero(_BYTE *a1, uint64_t a2)
{
  v2 = &a1[a2];
  if (a2 >= 1 && (a1 & 7) != 0)
  {
    v3 = a1 + 1;
    while (!*a1)
    {
      if (++a1 < v2)
      {
        if ((v3++ & 7))
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

  else
  {
LABEL_9:
    while ((a1 + 8) <= v2)
    {
      v5 = *a1;
      a1 += 8;
      if (v5)
      {
        return 0;
      }
    }

    while (a1 < v2)
    {
      if (*a1)
      {
        return 0;
      }

      ++a1;
    }

    return 1;
  }
}

uint64_t tarParseInt(_BYTE *a1, unint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = 0xFFFFFFFFLL;
  if (*a1 && v3 != 128 && v3 != 255)
  {
    v5 = 0;
    if (a2)
    {
      while (a1[v5] == 32)
      {
        if (a2 == ++v5)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 0;
    v8 = 0;
    v9 = -3 * v5 + 3 * a2;
    v10 = &a1[v5];
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0xF8) != 0x30)
      {
        break;
      }

      v7 += 3;
      v8 = v11 & 7 | (8 * v8);
      if (!--v6)
      {
        v7 = v9;
        break;
      }
    }

    if ((v7 - 65) >= 0xFFFFFFFFFFFFFFC0)
    {
      v4 = 0;
      *a3 = v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t appendFieldIfNotDefinedUInt(AAHeader_impl *a1, AAFieldKey key, uint64_t a3)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = key;

  return AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v7, a3);
}

uint64_t appendFieldIfNotDefinedTimespec(AAHeader_impl *a1, const timespec *a2)
{
  v4.ikey = 5067853;
  if ((AAHeaderGetKeyIndex(a1, v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v6.ikey = 5067853;

  return AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v6, a2);
}

uint64_t appendFieldIfNotDefinedString(AAHeader_impl *a1, AAFieldKey key, const char *a3, size_t a4)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = key;

  return AAHeaderSetFieldString(a1, 0xFFFFFFFF, v9, a3, a4);
}

uint64_t aaEntryACLBlobInitWithEncodedData(uint64_t *a1, char *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 188, 100, 0, "invalid ACL entry type %c", a7, a8, v41);
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
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 199, 100, 0, "invalid ACL flags 0x%llx", a7, a8, *(v40 + 5));
            goto LABEL_5;
          }

          v48 = *(v40 + 13);
          if ((v48 & 0xFFFFFFFFFFEFC001) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 200, 100, 0, "invalid ACL perms 0x%llx", a7, a8, v48);
            goto LABEL_5;
          }

          result = 0;
          if (v38 == ++v39)
          {
            return result;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 197, 100, 0, "invalid ACL qualifier type %c", a7, a8, *(v40 + 21));
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
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", v11, 100, 0, "invalid ACL blob", a7, a8, v49);
LABEL_5:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t aaEntryACLBlobInitWithPath(AAEntryACLBlob_impl *a1, char *__s, const char *a3, char a4)
{
  v5 = __s;
  v20 = *MEMORY[0x29EDCA608];
  if ((concatPath(v19, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 215, 100, 0, "invalid path %s/%s", v7, v8, v5);
LABEL_7:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = open(v19, 0x200000);
  if (v9 < 0)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 219, 100, v14, "open: %s", v15, v16, v19);
    goto LABEL_7;
  }

  v10 = v9;
  if ((aaEntryACLBlobInitWithFD(a1, v9, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 221, 100, 0, "initializing ACL blob: %s", v11, v12, v19);
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

uint64_t aaEntryACLBlobInitWithFD(AAEntryACLBlob_impl *a1, int a2, char a3)
{
  v45 = *MEMORY[0x29EDCA608];
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 243, 100, *v15, "malloc", v16, v17, v34);
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
    result = 0;
    goto LABEL_16;
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
      v29 = *__error();
      v32 = "acl_get_tag_type";
      v33 = 272;
LABEL_67:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", v33, 100, v29, v32, v30, v31, v34);
      goto LABEL_68;
    }

    if (tag_type_p - 1 <= 1)
    {
      break;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 274, 100, "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", v19, v20, v21, tag_type_p);
LABEL_61:
    if (acl_get_entry(v13, -1, &entry_p))
    {
      goto LABEL_12;
    }
  }

  ace.tag = tag_type_p;
  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v29 = *__error();
    v32 = "acl_get_flagset_np";
    v33 = 278;
    goto LABEL_67;
  }

  if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
  {
    ace.flags = 0x20000;
    v22 = 0x20000;
  }

  else
  {
    v22 = 0;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
  {
    v22 |= 0x10uLL;
    ace.flags = v22;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
  {
    v22 |= 0x20uLL;
    ace.flags = v22;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
  {
    v22 |= 0x40uLL;
    ace.flags = v22;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
  {
    v22 |= 0x80uLL;
    ace.flags = v22;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
  {
    ace.flags = v22 | 0x100;
  }

  if (acl_get_permset_mask_np(entry_p, &mask_p))
  {
    v29 = *__error();
    v32 = "acl_get_permset_mask_np";
    v33 = 289;
    goto LABEL_67;
  }

  ace.perms = mask_p & 0x103FFE;
  qualifier = acl_get_qualifier(entry_p);
  if (!qualifier)
  {
    v29 = *__error();
    v32 = "acl_get_qualifier";
    v33 = 294;
    goto LABEL_67;
  }

  v24 = qualifier;
  if ((a3 & 4) != 0)
  {
    goto LABEL_58;
  }

  if (mbr_uuid_to_id(qualifier, &id_type[1], id_type))
  {
    goto LABEL_54;
  }

  if (id_type[0] == 1)
  {
    memset(&v36, 0, 32);
    v35 = 0;
    v25 = 0;
    if (!getgrgid_r(id_type[1], &v36, v11, v9, &v35) && v35 && v36.pw_name)
    {
      if (strlen(v36.pw_name) > 0xFF)
      {
        goto LABEL_52;
      }

      v25 = 71;
LABEL_51:
      ace.qualifier_type = v25;
      __strlcpy_chk();
    }
  }

  else
  {
    if (id_type[0])
    {
      goto LABEL_54;
    }

    memset(&v36, 0, sizeof(v36));
    v35 = 0;
    v25 = 0;
    if (!getpwuid_r(id_type[1], &v36, v11, v9, &v35) && v35 && v36.pw_name)
    {
      if (strlen(v36.pw_name) <= 0xFF)
      {
        v25 = 85;
        goto LABEL_51;
      }

LABEL_52:
      v25 = 0;
    }
  }

  if (!v25)
  {
LABEL_54:
    if (!mbr_uuid_to_sid(v24, &sid) && !mbr_sid_to_string(&sid, v11) && strlen(v11) <= 0xFF)
    {
      ace.qualifier_type = 83;
      __strlcpy_chk();
      goto LABEL_59;
    }

LABEL_58:
    ace.qualifier_type = 73;
    uuid_unparse_upper(v24, out);
  }

LABEL_59:
  v26 = strlen(out);
  if ((AAEntryACLBlobAppendEntry(a1, &ace, out, v26) & 0x80000000) == 0)
  {
    acl_free(v24);
    goto LABEL_61;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 340, 100, 0, "encoding entry", v27, v28, v34);
  acl_free(v24);
LABEL_68:
  acl_free(v13);
  free(v11);
LABEL_15:
  *a1 = 0;
  *(a1 + 3) = 0;
  result = 0xFFFFFFFFLL;
LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

int AAEntryACLBlobAppendEntry(AAEntryACLBlob acl, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((ace_check_entry(ace, ace, qualifier_value, qualifier_size, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v24 = "invalid ACL entry";
    v25 = 618;
LABEL_50:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", v25, 100, 0, v24, v12, v13, v44);
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

uint64_t aaEntryACLBlobApplyToFD(unint64_t *a1, uint64_t a2, char a3)
{
  v71 = *MEMORY[0x29EDCA608];
  memset(&v53, 0, sizeof(v53));
  if (fstat(a2, &v53))
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 370, 100, *v6, "fstat", v7, v8, v47);
    v9 = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  v10 = v53.st_mode & 0xF000;
  if (v10 != 0x8000 && v10 != 0x4000)
  {
    goto LABEL_20;
  }

  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_20;
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
LABEL_20:
    v9 = 0;
    goto LABEL_87;
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 403, 100, *v25, "malloc", v26, v27, v47);
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
    if ((MEMORY[0x29C25DDB0](a2, fd_np) & 0x80000000) != 0)
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
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    *in = 0u;
    v55 = 0u;
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
      v47 = *(v30 + 5);
      v43 = "invalid ACE flags: 0x%016llx";
      v44 = 444;
      goto LABEL_81;
    }

    if ((*(v30 + 13) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v47 = *(v30 + 13);
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
          LOBYTE(v47) = *(v30 + 21);
          v43 = "could not resolve qualifier (type %c): %s";
          v44 = 486;
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      memset(&v49, 0, 32);
      v48 = 0;
      v40 = getgrnam_r(in, &v49, v23, v19, &v48);
      v38 = 0;
      if (!v40 && v48)
      {
        v39 = mbr_gid_to_uuid(v49.pw_uid, uu);
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v35 == 6)
    {
      memset(&v49, 0, sizeof(v49));
      if (mbr_string_to_sid(in, &v49))
      {
        v38 = 0;
        goto LABEL_54;
      }

      v39 = mbr_sid_to_uuid(&v49, uu);
      goto LABEL_53;
    }

    if (v35 != 7)
    {
      break;
    }

    memset(&v49, 0, sizeof(v49));
    v48 = 0;
    v37 = getpwnam_r(in, &v49, v23, v19, &v48);
    v38 = 0;
    if (!v37 && v48)
    {
      v39 = mbr_uid_to_uuid(v49.pw_uid, uu);
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

  LOBYTE(v47) = *(v30 + 21);
  v43 = "invalid qualifier type: %d";
  v44 = 483;
LABEL_81:
  v42 = 0;
LABEL_82:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", v44, 100, v42, v43, v21, v22, v47);
LABEL_83:
  v9 = 0xFFFFFFFFLL;
LABEL_84:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v23);
LABEL_87:
  v45 = *MEMORY[0x29EDCA608];
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobCreate", 521, 100, *v2, "malloc", v3, v4, v6);
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
  if (v4 && (aaEntryACLBlobInitWithEncodedData(v4, data, data_size, v5, v6, v7, v8, v9) & 0x80000000) != 0)
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
  if (v6 && (aaEntryACLBlobInitWithPath(v6, dir, path, v3) & 0x80000000) != 0)
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
  v20 = *MEMORY[0x29EDCA608];
  if ((concatPath(v19, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 569, 100, 0, "invalid path %s/%s", v7, v8, v5);
LABEL_7:
    v13 = -1;
    goto LABEL_10;
  }

  v9 = open(v19, 0x200000);
  if ((v9 & 0x80000000) != 0)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 571, 100, v14, "open: %s", v15, v16, v19);
    goto LABEL_7;
  }

  v10 = v9;
  if ((aaEntryACLBlobApplyToFD(acl, v9, v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 573, 100, 0, "applying ACL blob: %s", v11, v12, v19);
    v13 = -1;
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

int AAEntryACLBlobGetEntry(AAEntryACLBlob acl, uint32_t i, AAAccessControlEntry *ace, size_t qualifier_capacity, uint8_t *qualifier_value, size_t *qualifier_size)
{
  if (*acl <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobGetEntry", 593, 100, 0, "invalid ACL index %u", v6, v7, i);
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

uint64_t ace_check_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 156, 100, 0, "invalid ACL qualifier type %c", a7, a8, v8);
    }

    else if ((*(a1 + 16) & 0xFFFFFFFFFCFDFE0FLL) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 158, 100, 0, "invalid ACL flags 0x%llx", a7, a8, *(a1 + 16));
    }

    else
    {
      if ((*(a1 + 8) & 0xFFFFFFFFFFEFC001) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 159, 100, 0, "invalid ACL perms 0x%llx", a7, a8, *(a1 + 8));
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 148, 100, 0, "invalid ACL entry tag %c", a7, a8, *a1);
  }

  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobRemoveEntry(AAEntryACLBlob acl, uint32_t i)
{
  v4 = *acl;
  if (*acl <= i || (v6 = i, v7 = *(*(acl + 2) + 8 * i), v8 = *(acl + 5), v9 = *(v8 + v7), v10 = __CFADD__(v7, v9), v11 = v7 + v9, v10) || (v12 = *(acl + 3), v12 < v11))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobRemoveEntry", 673, 100, 0, "invalid ACL index %u", v2, v3, i);
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

uint64_t AAAssetBuilderGenerate(void *a1, uint64_t a2, int DefaultNThreads, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (!v8 || v8 != a1[1] + 1)
  {
    v132 = "exactly one output, and 0 or more inputs expected";
    v133 = 1557;
LABEL_177:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", v133, 27, 0, v132, a7, a8, v218);
    v13 = 0;
    goto LABEL_178;
  }

  v12 = malloc(0x460uLL);
  v13 = v12;
  if (!v12)
  {
    v134 = *__error();
    v135 = "malloc";
    v136 = 648;
LABEL_172:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", v136, 27, v134, v135, v15, v16, v218);
LABEL_176:
    stateDestroy_0(v13);
    v132 = "stateCreate";
    v133 = 1560;
    goto LABEL_177;
  }

  memset_s(v12, 0x460uLL, 0, 0x460uLL);
  *(v13 + 32) = StringTableCreate();
  v14 = StringTableCreate();
  *(v13 + 40) = v14;
  if (!*(v13 + 32) || !v14)
  {
    v135 = "StringTableCreate";
    v136 = 652;
    v134 = 0;
    goto LABEL_172;
  }

  *v13 = a2;
  *(v13 + 8) = a1;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v17 = *a1;
  v18 = *a1 >> 62;
  *(v13 + 20) = DefaultNThreads;
  *(v13 + 24) = v18;
  *(v13 + 16) = v17 & 1;
  *(v13 + 48) = *(a1 + 1);
  if ((getTempDir((v13 + 92), 0x3F6uLL) & 0x80000000) != 0)
  {
    v137 = "getTempDir";
    v138 = 660;
    v139 = 0;
LABEL_175:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", v138, 27, v139, v137, v19, v20, v218);
    memset_s((v13 + 92), 0x400uLL, 0, 0x400uLL);
    goto LABEL_176;
  }

  __strlcat_chk();
  if (!mkdtemp((v13 + 92)))
  {
    v139 = *__error();
    v137 = "mkdtemp";
    v138 = 662;
    goto LABEL_175;
  }

  v21 = *(v13 + 56);
  v22 = **(v13 + 8);
  if ((v22 & 0x10) != 0)
  {
    v23 = "DAT,YEC";
  }

  else
  {
    v23 = "DAT";
  }

  v26 = AAFieldKeySetCreateWithString(v23);
  if (!v26)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 865, 27, 0, "AAFieldKeySetCreateWithString", v24, v25, v218);
    v38 = 0;
    v31 = 0;
    goto LABEL_181;
  }

  if (!*(v13 + 56))
  {
    goto LABEL_153;
  }

  v27 = 0;
  v28 = v21 - 1;
  v29 = v22 & 0x10;
  v240 = v29;
  v241 = v21 - 1;
  do
  {
    if (*(v13 + 24))
    {
      fprintf(*MEMORY[0x29EDCA610], "Scanning archive for variant %zu...\n", v27);
    }

    AAByteStreamSeek(*(*(v13 + 8) + 8 * v27 + 24), 0, 0);
    v30 = malloc(0x38uLL);
    v31 = v30;
    if (!v30)
    {
      v193 = v26;
      v194 = 377;
LABEL_275:
      v195 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamOpen", v194, 27, *v195, "malloc", v196, v197, v218);
      free(v31);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 876, 27, 0, "collector stream", v198, v199, v219);
      v38 = 0;
      v31 = 0;
      v42 = 0;
      v41 = 0;
      v26 = v193;
      goto LABEL_185;
    }

    memset_s(v30, 0x38uLL, 0, 0x38uLL);
    v32 = malloc(0x40uLL);
    if (!v32)
    {
      v193 = v26;
      v194 = 379;
      goto LABEL_275;
    }

    v33 = v32;
    memset_s(v32, 0x40uLL, 0, 0x40uLL);
    v34 = v27 == v28 && v29 == 0;
    *v33 = v13;
    v33[1] = v27;
    *v31 = v33;
    v31[1] = stateCollectorStreamClose;
    v31[3] = stateCollectorStreamWriteHeader;
    v31[4] = stateCollectorStreamWriteBlob;
    if (v34)
    {
      v35 = "SH2,IDX,IDZ,SIZ,YEC";
    }

    else
    {
      v35 = "SH2,IDX,IDZ,SIZ";
    }

    v38 = AAFieldKeySetCreateWithString(v35);
    if (!v38)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 882, 27, 0, "AAFieldKeySetCreateWithString", v36, v37, v218);
LABEL_181:
      v42 = 0;
      v41 = 0;
      goto LABEL_185;
    }

    v41 = AADecodeArchiveInputStreamOpen(*(*(v13 + 8) + 8 * v27 + 24), 0, 0, 0x100uLL, *(v13 + 20));
    if (!v41)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 884, 27, 0, "AADecodeArchiveInputStreamOpen", v39, v40, v218);
      v42 = 0;
      goto LABEL_185;
    }

    v42 = AAConvertArchiveOutputStreamOpen(v31, v38, v26, 0, 0, 0, *(v13 + 20));
    if (AAArchiveStreamProcess(v41, v42, 0, 0, 0, *(v13 + 20)) < 0)
    {
      v142 = "processing manifest";
      v143 = 887;
LABEL_184:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", v143, 27, 0, v142, v43, v44, v218);
LABEL_185:
      AAArchiveStreamClose(v31);
      AAArchiveStreamClose(v42);
      AAArchiveStreamClose(v41);
      AAFieldKeySetDestroy(v38);
      AAFieldKeySetDestroy(v26);
      v146 = "loading manifests / scanning directories";
      v147 = 1563;
      goto LABEL_186;
    }

    v254 = 0;
    if ((StringTableSort(*(v13 + 32), &v254) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAggregateEntries", 802, 27, 0, "StringTableSort", v45, v46, v218);
      goto LABEL_183;
    }

    v48 = *(v13 + 72);
    v47 = *(v13 + 80);
    if (v48)
    {
      v49 = v254;
      v50 = *(v13 + 80);
      v51 = *(v13 + 72);
      do
      {
        *v50 = v49[*v50];
        v50 += 248;
        --v51;
      }

      while (v51);
    }

    s = v42;
    v250 = v41;
    v245 = v27;
    qsort(v47, v48, 0x3E0uLL, entryVectorCmp);
    if (!*(v13 + 72))
    {
      v55 = 0;
      goto LABEL_152;
    }

    v54 = 0;
    v55 = 0;
    v56 = 272;
    v243 = v38;
    do
    {
      v57 = *(v13 + 80);
      v58 = v57 + 992 * v54;
      if (!v55 || (v59 = v57 + 992 * v55, *(v59 - 992) != *v58))
      {
        if (v54 != v55)
        {
          memcpy((v57 + 992 * v55), (v57 + 992 * v54), 0x3E0uLL);
        }

        ++v55;
        goto LABEL_56;
      }

      v60 = 0;
      v61 = v59 - 720;
      v62 = v57 + v56;
      do
      {
        v63 = v62 + v60;
        if (*(v62 + v60))
        {
          v64 = v61 + v60;
          if (*(v61 + v60))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAggregateEntries", 832, 27, 0, "entry defined multiple times in the same variant", v52, v53, v218);
            v42 = s;
            v41 = v250;
LABEL_183:
            free(v254);
            v142 = "aggregating entries";
            v143 = 890;
            goto LABEL_184;
          }

          *v64 = *v63;
          v65 = *(v63 + 16);
          v66 = *(v63 + 32);
          v67 = *(v63 + 48);
          *(v64 + 64) = *(v63 + 64);
          *(v64 + 32) = v66;
          *(v64 + 48) = v67;
          *(v64 + 16) = v65;
        }

        v60 += 72;
      }

      while (v60 != 720);
      v68 = (v59 - 928);
      if (!*(v59 - 928) && *(v58 + 64))
      {
        *v68 = 0;
        v69 = *(v58 + 64);
        if ((v69 & 0x8000000000000000) == 0)
        {
          v236 = v26;
          v70 = *(v58 + 80);
          v71 = *(v59 - 920);
          if (v71 >= v69)
          {
LABEL_63:
            v76 = *(v59 - 912);
            if (v70)
            {
              memcpy((v76 + *v68), v70, v69);
              v26 = v236;
            }

            else
            {
              v26 = v236;
              if (v76)
              {
                memset_s((v76 + *v68), v69, 0, v69);
              }
            }

            *v68 += v69;
          }

          else
          {
            do
            {
              while (!v71)
              {
                v71 = 0x4000;
                if (v69 <= 0x4000)
                {
                  v224 = (v59 - 920);
                  v228 = *(v58 + 80);
                  v73 = (v59 - 912);
                  v71 = 0x4000;
                  goto LABEL_61;
                }
              }

              v72 = v71 >> 1;
              if ((v71 & (v71 >> 1)) != 0)
              {
                v72 = v71 & (v71 >> 1);
              }

              v71 += v72;
            }

            while (v71 < v69);
            v73 = (v59 - 912);
            if (v71 >= 0x2000000001)
            {
              v74 = (v59 - 912);
              *__error() = 12;
              goto LABEL_69;
            }

            v224 = (v59 - 920);
            v228 = *(v58 + 80);
LABEL_61:
            v232 = v73;
            v220 = *v73;
            v75 = realloc(*v73, v71);
            if (v75)
            {
              v70 = v228;
              *v232 = v75;
              *v224 = v71;
              goto LABEL_63;
            }

            v74 = v232;
            free(v220);
LABEL_69:
            *v74 = 0;
            *v68 = 0;
            *(v59 - 920) = 0;
            v26 = v236;
          }
        }

        free(*(v58 + 80));
        memset_s((v58 + 64), 0x18uLL, 0, 0x18uLL);
        v38 = v243;
      }

      v77 = (v59 - 952);
      if (!*(v59 - 952) && *(v58 + 40))
      {
        *v77 = 0;
        v78 = *(v58 + 40);
        if ((v78 & 0x8000000000000000) == 0)
        {
          v237 = v26;
          v79 = *(v58 + 56);
          v80 = *(v59 - 944);
          if (v80 >= v78)
          {
LABEL_87:
            v85 = *(v59 - 936);
            if (v79)
            {
              memcpy((v85 + *v77), v79, v78);
              v26 = v237;
            }

            else
            {
              v26 = v237;
              if (v85)
              {
                memset_s((v85 + *v77), v78, 0, v78);
              }
            }

            *v77 += v78;
          }

          else
          {
            do
            {
              while (!v80)
              {
                v80 = 0x4000;
                if (v78 <= 0x4000)
                {
                  v225 = (v59 - 944);
                  v229 = *(v58 + 56);
                  v82 = (v59 - 936);
                  v80 = 0x4000;
                  goto LABEL_85;
                }
              }

              v81 = v80 >> 1;
              if ((v80 & (v80 >> 1)) != 0)
              {
                v81 = v80 & (v80 >> 1);
              }

              v80 += v81;
            }

            while (v80 < v78);
            v82 = (v59 - 936);
            if (v80 >= 0x2000000001)
            {
              v83 = (v59 - 936);
              *__error() = 12;
              goto LABEL_93;
            }

            v225 = (v59 - 944);
            v229 = *(v58 + 56);
LABEL_85:
            v233 = v82;
            v221 = *v82;
            v84 = realloc(*v82, v80);
            if (v84)
            {
              v79 = v229;
              *v233 = v84;
              *v225 = v80;
              goto LABEL_87;
            }

            v83 = v233;
            free(v221);
LABEL_93:
            *v83 = 0;
            *v77 = 0;
            *(v59 - 944) = 0;
            v26 = v237;
          }
        }

        free(*(v58 + 56));
        memset_s((v58 + 40), 0x18uLL, 0, 0x18uLL);
        v38 = v243;
      }

      v86 = (v59 - 904);
      if (!*(v59 - 904) && *(v58 + 88))
      {
        *v86 = 0;
        v87 = *(v58 + 88);
        if ((v87 & 0x8000000000000000) == 0)
        {
          v238 = v26;
          v88 = *(v58 + 104);
          v89 = *(v59 - 896);
          if (v89 >= v87)
          {
LABEL_111:
            v94 = *(v59 - 888);
            if (v88)
            {
              memcpy((v94 + *v86), v88, v87);
              v26 = v238;
            }

            else
            {
              v26 = v238;
              if (v94)
              {
                memset_s((v94 + *v86), v87, 0, v87);
              }
            }

            *v86 += v87;
          }

          else
          {
            do
            {
              while (!v89)
              {
                v89 = 0x4000;
                if (v87 <= 0x4000)
                {
                  v226 = (v59 - 896);
                  v230 = *(v58 + 104);
                  v91 = (v59 - 888);
                  v89 = 0x4000;
                  goto LABEL_109;
                }
              }

              v90 = v89 >> 1;
              if ((v89 & (v89 >> 1)) != 0)
              {
                v90 = v89 & (v89 >> 1);
              }

              v89 += v90;
            }

            while (v89 < v87);
            v91 = (v59 - 888);
            if (v89 >= 0x2000000001)
            {
              v92 = (v59 - 888);
              *__error() = 12;
              goto LABEL_117;
            }

            v226 = (v59 - 896);
            v230 = *(v58 + 104);
LABEL_109:
            v234 = v91;
            v222 = *v91;
            v93 = realloc(*v91, v89);
            if (v93)
            {
              v88 = v230;
              *v234 = v93;
              *v226 = v89;
              goto LABEL_111;
            }

            v92 = v234;
            free(v222);
LABEL_117:
            *v92 = 0;
            *v86 = 0;
            *(v59 - 896) = 0;
            v26 = v238;
          }
        }

        free(*(v58 + 104));
        memset_s((v58 + 88), 0x18uLL, 0, 0x18uLL);
        v38 = v243;
      }

      v95 = (v59 - 880);
      if (!*(v59 - 880) && *(v58 + 112))
      {
        *v95 = 0;
        v96 = *(v58 + 112);
        if ((v96 & 0x8000000000000000) == 0)
        {
          v239 = v26;
          v97 = *(v58 + 128);
          v98 = *(v59 - 872);
          if (v98 >= v96)
          {
LABEL_135:
            v103 = *(v59 - 864);
            if (v97)
            {
              memcpy((v103 + *v95), v97, v96);
              v26 = v239;
            }

            else
            {
              v26 = v239;
              if (v103)
              {
                memset_s((v103 + *v95), v96, 0, v96);
              }
            }

            *v95 += v96;
          }

          else
          {
            do
            {
              while (!v98)
              {
                v98 = 0x4000;
                if (v96 <= 0x4000)
                {
                  v227 = (v59 - 872);
                  v231 = *(v58 + 128);
                  v100 = (v59 - 864);
                  v98 = 0x4000;
                  goto LABEL_133;
                }
              }

              v99 = v98 >> 1;
              if ((v98 & (v98 >> 1)) != 0)
              {
                v99 = v98 & (v98 >> 1);
              }

              v98 += v99;
            }

            while (v98 < v96);
            v100 = (v59 - 864);
            if (v98 >= 0x2000000001)
            {
              v101 = (v59 - 864);
              *__error() = 12;
              goto LABEL_141;
            }

            v227 = (v59 - 872);
            v231 = *(v58 + 128);
LABEL_133:
            v235 = v100;
            v223 = *v100;
            v102 = realloc(*v100, v98);
            if (v102)
            {
              v97 = v231;
              *v235 = v102;
              *v227 = v98;
              goto LABEL_135;
            }

            v101 = v235;
            free(v223);
LABEL_141:
            *v101 = 0;
            *v95 = 0;
            *(v59 - 872) = 0;
            v26 = v239;
          }
        }

        free(*(v58 + 128));
        memset_s((v58 + 112), 0x18uLL, 0, 0x18uLL);
        v38 = v243;
      }

      if (!*(v59 - 848) && *(v58 + 144))
      {
        *(v59 - 848) = *(v58 + 144);
        v104 = *(v58 + 160);
        v105 = *(v58 + 176);
        v106 = *(v58 + 192);
        *(v59 - 784) = *(v58 + 208);
        *(v59 - 816) = v105;
        *(v59 - 800) = v106;
        *(v59 - 832) = v104;
      }

      if (!*(v59 - 776) && *(v58 + 216))
      {
        v107 = *(v58 + 216);
        v108 = *(v58 + 232);
        v109 = *(v58 + 248);
        *(v59 - 728) = *(v58 + 264);
        *(v59 - 760) = v108;
        *(v59 - 744) = v109;
        *(v59 - 776) = v107;
      }

      if (*(v59 - 856) == -1)
      {
        *(v59 - 856) = *(v58 + 136);
      }

LABEL_56:
      ++v54;
      v56 += 992;
    }

    while (v54 < *(v13 + 72));
LABEL_152:
    *(v13 + 72) = v55;
    free(v254);
    AAArchiveStreamClose(v31);
    AAArchiveStreamClose(s);
    AAArchiveStreamClose(v250);
    AAFieldKeySetDestroy(v38);
    v27 = v245 + 1;
    v29 = v240;
    v28 = v241;
  }

  while ((v245 + 1) < *(v13 + 56));
LABEL_153:
  AAArchiveStreamClose(0);
  AAArchiveStreamClose(0);
  AAArchiveStreamClose(0);
  AAFieldKeySetDestroy(0);
  AAFieldKeySetDestroy(v26);
  v114 = *(v13 + 72);
  if (v114)
  {
    v115 = *(v13 + 80);
    do
    {
      if (v115[18 * *(v13 + 56) + 50] == 70 && *(v115 + 17) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1572, 27, 0, "HLC field found, not supported: %s", v112, v113, *(*(v13 + 32) + 32) + *(*(*(v13 + 32) + 8) + 16 * *v115));
        goto LABEL_178;
      }

      v115 += 248;
      --v114;
    }

    while (v114);
  }

  v255 = -1;
  *(v13 + 88) = 1;
  if ((StringTableAppend(*(v13 + 40), "main", 4uLL, &v255, v110, v111, v112, v113) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAssignLabels", 915, 27, 0, "string table", v120, v121, v218);
    v146 = "assigning labels";
    v147 = 1578;
    goto LABEL_186;
  }

  v124 = *(v13 + 72);
  if (v124)
  {
    v125 = *(v13 + 80);
    v126 = v255;
    v127 = (v124 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v122 = xmmword_296AD18D0;
    v123 = xmmword_296AD1760;
    v128 = vdupq_n_s64(v124 - 1);
    v129 = vdupq_n_s64(4uLL);
    do
    {
      v130 = vmovn_s64(vcgeq_u64(v128, v123));
      if (vuzp1_s16(v130, *v122.i8).u8[0])
      {
        v125[1] = v126;
      }

      if (vuzp1_s16(v130, *&v122).i8[2])
      {
        v125[249] = v126;
      }

      if (vuzp1_s16(*&v122, vmovn_s64(vcgeq_u64(v128, *&v122))).i32[1])
      {
        v125[497] = v126;
        v125[745] = v126;
      }

      v122 = vaddq_s64(v122, v129);
      v123 = vaddq_s64(v123, v129);
      v125 += 992;
      v127 -= 4;
    }

    while (v127);
    v131 = *(v13 + 72);
  }

  else
  {
    v131 = 0;
  }

  if (*(v13 + 24))
  {
    if (v131)
    {
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = *(v13 + 56) - 1;
      v153 = 272;
      v154 = MEMORY[0x29EDCA610];
      v242 = v152;
      do
      {
        v155 = *(v13 + 80);
        v156 = (v155 + 992 * v148);
        v157 = v156[18 * v152 + 68];
        if (v157)
        {
          ++v150;
        }

        if (v157 == 70)
        {
          v149 = (v149 + 1);
        }

        if (v157 == 68)
        {
          v151 = (v151 + 1);
        }

        if (*(v13 + 24) >= 2u)
        {
          v244 = &v156[18 * v152];
          v246 = v150;
          sa = v149;
          v251 = v151;
          if (!v148)
          {
            fwrite("All entries:\n", 0xDuLL, 1uLL, *v154);
          }

          if (*(v13 + 56))
          {
            v158 = 0;
            v159 = (v155 + v153);
            do
            {
              v161 = *v159;
              v159 += 18;
              LODWORD(v160) = v161;
              if (v161)
              {
                v160 = v160;
              }

              else
              {
                v160 = 45;
              }

              fprintf(*v154, " %c", v160);
              ++v158;
            }

            while (v158 < *(v13 + 56));
          }

          fprintf(*v154, " lbl=%s", (*(*(v13 + 40) + 32) + *(*(*(v13 + 40) + 8) + 16 * v156[1])));
          if (v157 == 70)
          {
            v162 = *(v244 + 36);
            fprintf(*v154, " siz=%llu yec=%zu", v162, *(v156 + 5));
            v151 = v251;
          }

          else
          {
            v151 = v251;
            if (v157 == 76)
            {
              fprintf(*v154, " lnk=%s", *(v156 + 10));
            }
          }

          fprintf(*v154, " pat=%s", (*(*(v13 + 32) + 32) + *(*(*(v13 + 32) + 8) + 16 * *v156)));
          fputc(10, *v154);
          v131 = *(v13 + 72);
          v150 = v246;
          v149 = sa;
          v152 = v242;
        }

        ++v148;
        v153 += 992;
      }

      while (v148 < v131);
    }

    else
    {
      v151 = 0;
      v150 = 0;
      v149 = 0;
    }

    v163 = MEMORY[0x29EDCA610];
    v164 = v149;
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries in output\n", v150);
    fprintf(*v163, "%12zu regular files\n", v164);
    fprintf(*v163, "%12zu directories\n", v151);
    v131 = *(v13 + 72);
  }

  if (!v131)
  {
LABEL_267:
    v192 = 0;
    goto LABEL_268;
  }

  v165 = 0;
  v252 = *(v13 + 56);
  v166 = 272;
  v167 = 312;
  v168 = 288;
  while (2)
  {
    v169 = *(v13 + 80);
    v170 = (v169 + 992 * v165);
    v171 = *(v13 + 32);
    v172 = *(v171 + 32);
    v173 = *(*(v171 + 8) + 16 * *v170);
    v174 = &v170[18 * (v252 - 1)];
    v175 = v174[68];
    if (!v175)
    {
      v185 = *(v13 + 24);
      v186 = 2;
      v187 = "REMOVE (not in output): %s\n";
      goto LABEL_243;
    }

    v176 = *(v13 + 48);
    if (!v176)
    {
      v185 = *(v13 + 24);
      v186 = 3;
      v187 = "ARCHIVE (full replacement): %s\n";
      goto LABEL_243;
    }

    if (v175 != 70)
    {
      v185 = *(v13 + 24);
      v186 = 3;
      v187 = "ARCHIVE (not a regular file): %s\n";
LABEL_243:
      if (v185 <= 1)
      {
        goto LABEL_245;
      }

      goto LABEL_244;
    }

    v177 = (v169 + v166);
    v178 = *(v13 + 48);
    do
    {
      v179 = *v177;
      v177 += 18;
      if (v179 != 70)
      {
        v185 = *(v13 + 24);
        v186 = 3;
        v187 = "ARCHIVE (different type/missing in some inputs): %s\n";
        goto LABEL_243;
      }

      --v178;
    }

    while (v178);
    v180 = (v169 + v167);
    v181 = *(v13 + 48);
    while (1)
    {
      v116 = v180[2];
      v117 = v180[3];
      v118 = *(v174 + 41);
      v119 = *(v174 + 42);
      v182 = *v180 == *(v174 + 39) && v180[1] == *(v174 + 40);
      v183 = v182 && v116 == v118;
      if (!v183 || v117 != v119)
      {
        break;
      }

      v180 += 9;
      if (!--v181)
      {
        v185 = *(v13 + 24);
        v186 = 1;
        v187 = "COPY: %s\n";
        goto LABEL_243;
      }
    }

    v188 = (v169 + v168);
    do
    {
      v189 = *v188;
      v188 += 9;
      if (!v189)
      {
        v185 = *(v13 + 24);
        v186 = 3;
        v187 = "ARCHIVE (empty in some inputs): %s\n";
        goto LABEL_243;
      }

      --v176;
    }

    while (v176);
    if (*(v174 + 36) >= *(*(v13 + 8) + 104))
    {
      v187 = "PATCH: %s\n";
    }

    else
    {
      v187 = "ARCHIVE (too small for patching): %s\n";
    }

    if (*(v174 + 36) < *(*(v13 + 8) + 104))
    {
      v186 = 3;
    }

    else
    {
      v186 = 4;
    }

    if (*(v13 + 24) >= 2u)
    {
LABEL_244:
      fprintf(*MEMORY[0x29EDCA610], v187, v116, v117, v118, v119, *v122.i64, *v123.i64, v172 + v173);
      v131 = *(v13 + 72);
    }

LABEL_245:
    ++v165;
    v170[2] = v186;
    v166 += 992;
    v167 += 992;
    v168 += 992;
    if (v165 < v131)
    {
      continue;
    }

    break;
  }

  if (!v131)
  {
    goto LABEL_267;
  }

  v190 = 0;
  v191 = *(v13 + 80) + 200;
  do
  {
    if (*(v191 + 72 * v252) == 70 && *(v191 - 64) != -1)
    {
      ++v190;
    }

    v191 += 992;
    --v131;
  }

  while (v131);
  if (!v190)
  {
    goto LABEL_267;
  }

  if (v190 > 0x400000000)
  {
    *__error() = 12;
    goto LABEL_302;
  }

  v200 = calloc(v190, 8uLL);
  if (v200)
  {
    v192 = v200;
    v202 = *(v13 + 72);
    v201 = *(v13 + 80);
    if (v202)
    {
      v203 = 0;
      v204 = 0;
      v205 = v201 + 200;
      do
      {
        if (*&v205[72 * v252] == 70 && *(v205 - 8) != -1)
        {
          *(v200 + v203++) = v204;
          v202 = *(v13 + 72);
        }

        ++v204;
        v205 += 992;
      }

      while (v204 < v202);
    }

    qsort_r(v200, v190, 8uLL, v201, entryIndexCmpHLC);
    v206 = 0;
    v207 = -v190;
    sb = (v192 + 8);
    v253 = v192;
    do
    {
      v208 = v206 + 1;
      if (v206 + 1 < v190)
      {
        v209 = 1;
        while (*(*(v13 + 80) + 992 * *(v192 + v206 + v209) + 136) == *(*(v13 + 80) + 992 * *(v192 + v206) + 136))
        {
          ++v209;
          if (!(v207 + v206 + v209))
          {
            v209 = v190 - v206;
            v208 = v190;
            goto LABEL_294;
          }
        }

        v208 = v206 + v209;
LABEL_294:
        if (v209 >= 2)
        {
          v210 = v207;
          v211 = v209 - 1;
          v212 = (sb + 8 * v206);
          do
          {
            v213 = *v212++;
            v214 = (*(v13 + 80) + 992 * v213);
            if (*(v13 + 24) >= 2u)
            {
              fprintf(*MEMORY[0x29EDCA610], "FIXUP (hard linked): %s\n", (*(*(v13 + 32) + 32) + *(*(*(v13 + 32) + 8) + 16 * *v214)));
            }

            v214[2] = 5;
            --v211;
          }

          while (v211);
          v207 = v210;
          v192 = v253;
        }
      }

      v206 = v208;
    }

    while (v208 < v190);
LABEL_268:
    free(v192);
    if ((stateComputePatches(v13) & 0x80000000) != 0)
    {
      v146 = "compute patches";
      v147 = 1611;
    }

    else
    {
      if ((stateGenerateArchive(v13) & 0x80000000) == 0)
      {
        v140 = 0;
        goto LABEL_179;
      }

      v146 = "generate archive";
      v147 = 1612;
    }
  }

  else
  {
LABEL_302:
    v215 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateInitOps", 1031, 27, *v215, "malloc", v216, v217, v218);
    v146 = "init ops";
    v147 = 1610;
  }

LABEL_186:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", v147, 27, 0, v146, v144, v145, v218);
LABEL_178:
  v140 = 0xFFFFFFFFLL;
LABEL_179:
  stateDestroy_0(v13);
  return v140;
}

uint64_t stateComputePatches(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 20);
  if (*(a1 + 24))
  {
    fwrite("Computing patches...\n", 0x15uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v4 = calloc(v3, 8uLL);
  v5 = v4;
  if (!v4)
  {
    v38 = *__error();
    v41 = 1074;
    goto LABEL_28;
  }

  if (v3)
  {
    v6 = v3;
    v7 = v4;
    while (1)
    {
      v8 = malloc(0x10uLL);
      *v7 = v8;
      if (!v8)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    v38 = *__error();
    v41 = 1078;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", v41, 27, v38, "malloc", v39, v40, v49[0]);
    v16 = 0;
    goto LABEL_35;
  }

LABEL_8:
  v16 = ThreadPoolCreate(v3, v5, computePatchesWorkerProc);
  if (!v16)
  {
    v42 = "ThreadPoolCreate";
    v43 = 1083;
    goto LABEL_34;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = 72 * v2 + 216;
    v20 = 8;
    do
    {
      v21 = *(a1 + 80);
      if (*(v21 + v20) == 4 && *(v21 + v19) < *(*(a1 + 8) + 152))
      {
        Worker = ThreadPoolGetWorker(v16, v9, v10, v11, v12, v13, v14, v15);
        if (!Worker)
        {
          v42 = "ThreadPoolGetWorker";
          v43 = 1091;
          goto LABEL_34;
        }

        *Worker = a1;
        Worker[1] = v18;
        if ((ThreadPoolRunWorker(v16, Worker, v23, v24, v25, v26, v14, v15) & 0x80000000) != 0)
        {
          v42 = "ThreadPoolRunWorker";
          v43 = 1095;
          goto LABEL_34;
        }

        v17 = *(a1 + 72);
      }

      ++v18;
      v19 += 992;
      v20 += 992;
    }

    while (v18 < v17);
  }

  if ((ThreadPoolSync(v16) & 0x80000000) != 0)
  {
    v42 = "ThreadPoolSync";
    v43 = 1097;
    goto LABEL_34;
  }

  v32 = *(a1 + 72);
  if (!v32)
  {
LABEL_25:
    v37 = 1;
    goto LABEL_36;
  }

  v33 = 0;
  v34 = 72 * v2 + 216;
  v35 = 8;
  while (1)
  {
    v36 = *(a1 + 80);
    if (*(v36 + v35) != 4 || *(v36 + v34) < *(*(a1 + 8) + 152))
    {
      goto LABEL_24;
    }

    v49[0] = a1;
    v49[1] = v33;
    if ((computePatchesWorkerProc(v49, v27, v28, v29, v30, v31, v14, v15) & 0x80000000) != 0)
    {
      break;
    }

    v32 = *(a1 + 72);
LABEL_24:
    ++v33;
    v34 += 992;
    v35 += 992;
    if (v33 >= v32)
    {
      goto LABEL_25;
    }
  }

  v42 = "compute patch";
  v43 = 1107;
LABEL_34:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", v43, 27, 0, v42, v14, v15, v49[0]);
LABEL_35:
  v37 = 0;
LABEL_36:
  if ((ThreadPoolDestroy(v16) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1111, 27, 0, "ThreadPoolDestroy", v44, v45, v49[0]);
    v37 = 0;
  }

  if (v5)
  {
    if (v3)
    {
      v46 = v5;
      do
      {
        v47 = *v46++;
        free(v47);
        --v3;
      }

      while (v3);
    }

    free(v5);
  }

  if (v37)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t stateGenerateArchive(uint64_t a1)
{
  v276 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  v3 = *(a1 + 8);
  v4 = v3[16];
  v5 = *v3;
  if (*(a1 + 24))
  {
    fwrite("Generating asset...\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *(a1 + 8);
  }

  v8 = AATempStreamOpen(v3[14]);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1161, 27, 0, "AATempStreamOpen", v6, v7, v245);
    v270 = 0;
    v272 = 0;
LABEL_325:
    remove_key_set = 0;
    v21 = 0;
LABEL_326:
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v11 = 0;
    goto LABEL_327;
  }

  v11 = AAHeaderCreate();
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1163, 27, 0, "AAHeaderCreate", v9, v10, v245);
    v270 = 0;
    remove_key_set = 0;
    v272 = 0;
    v21 = 0;
    v207 = 0;
    v208 = 0;
    v206 = 0;
LABEL_327:
    v25 = 0;
    goto LABEL_328;
  }

  v272 = v11;
  v267 = AAFieldKeySetCreateWithString("IDX,IDZ,SIZ");
  if (!v267)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1165, 27, 0, "AAFieldKeySetCreateWithString", v12, v13, v245);
    v270 = 0;
    goto LABEL_325;
  }

  v14 = AAFieldKeySetCreateWithString("DAT,YEC,UID,GID,FLG,AFT,AFR");
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1167, 27, 0, "AAFieldKeySetCreateWithString", v15, v16, v245);
    v270 = 0;
    remove_key_set = 0;
LABEL_334:
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v11 = 0;
    v25 = 0;
    goto LABEL_335;
  }

  remove_key_set = v14;
  v17 = malloc(0x10000uLL);
  if (!v17)
  {
    v217 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1169, 27, *v217, "malloc", v218, v219, v245);
    v270 = 0;
    goto LABEL_334;
  }

  v270 = v17;
  if (!*(a1 + 88))
  {
LABEL_313:
    v25 = subArchiveCreate(*(*(a1 + 8) + 112), 0, 0, 0);
    if (v25)
    {
      v21 = v267;
      if (AAByteStreamSeek(v8, 0, 0) < 0)
      {
        v222 = "seek";
        v223 = 1510;
        goto LABEL_383;
      }

      v205 = v25[4];
      if (!v205)
      {
        v205 = v25[3];
      }

      v206 = AAEncodeArchiveOutputStreamOpen(v205, 0, 0, 0, *(a1 + 20));
      v207 = AAConvertArchiveOutputStreamOpen(v206, v267, remove_key_set, 0, 0, 0, *(a1 + 20));
      v208 = AADecodeArchiveInputStreamOpen(v8, 0, 0, 0x100uLL, *(a1 + 20));
      if (AAArchiveStreamProcess(v208, v207, 0, 0, 0, *(a1 + 20)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1517, 27, 0, "processing manifest", v209, v210, v245);
        goto LABEL_384;
      }

      AAArchiveStreamClose(v208);
      AAArchiveStreamClose(v207);
      AAArchiveStreamClose(v206);
      v211 = *a1;
      AAByteStreamClose(v25[4]);
      v25[4] = 0;
      if ((encodeYOPEntry(v211, 0x4Du, 0, 0, v25[3]) & 0x80000000) == 0)
      {
        subArchiveDestroy(v25);
        v21 = v267;
        if (AAByteStreamSeek(v8, 0, 0) < 0)
        {
          v232 = "seek";
          v233 = 1530;
        }

        else
        {
          if ((AAByteStreamProcess(v8, *a1) & 0x8000000000000000) == 0)
          {
            v207 = 0;
            v208 = 0;
            v206 = 0;
            v11 = 0;
            v25 = 0;
            v214 = 0;
            goto LABEL_329;
          }

          v232 = "writing archive";
          v233 = 1531;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v233, 27, 0, v232, v212, v213, v245);
        goto LABEL_326;
      }

      v220 = "encode entry";
      v221 = 1524;
    }

    else
    {
      v220 = "sub_asset";
      v221 = 1508;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v221, 27, 0, v220, v203, v204, v245);
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v11 = 0;
LABEL_335:
    v214 = 0xFFFFFFFFLL;
    v21 = v267;
    goto LABEL_329;
  }

  v18 = 0;
  v269 = v2 - 1;
  v250 = v4 != 0;
  v251 = v5;
  ostream = v8;
  v260 = v4;
  v255 = v4 != 0;
LABEL_10:
  v19 = 0;
  v20 = *(a1 + 40);
  v247 = v18;
  v252 = *(*(v20 + 8) + 16 * v18);
  v253 = *(v20 + 32);
  v21 = v267;
  while (v19 <= 3 && !*(a1 + 48))
  {
LABEL_311:
    if (++v19 == 10)
    {
      v18 = v247 + 1;
      if (v247 + 1 >= *(a1 + 88))
      {
        goto LABEL_313;
      }

      goto LABEL_10;
    }
  }

  v265 = v19;
  v22 = subArchiveCreate(*(*(a1 + 8) + 112), *(*(a1 + 8) + 136), *(*(a1 + 8) + 144), *(a1 + 20));
  v25 = v22;
  if (!v22)
  {
    v222 = "subArchiveCreate";
    v223 = 1192;
    goto LABEL_383;
  }

  v26 = *(a1 + 72);
  if (!v26)
  {
LABEL_310:
    AAByteStreamClose(v25[4]);
    AAByteStreamClose(v25[3]);
    free(v25);
    v8 = ostream;
    v19 = v265;
    goto LABEL_311;
  }

  v261 = 0;
  v27 = 0;
  v28 = 0;
  v254 = 0;
  v29 = 0;
  v30 = v265;
  v268 = v22;
  while (1)
  {
    v31 = *(a1 + 80);
    v32 = v31 + 992 * v29;
    v33 = v31 + 992 * v26 + 992 * ~v29;
    if (v30 == 7)
    {
      v34 = v33;
    }

    else
    {
      v34 = (v31 + 992 * v29);
    }

    v35 = (*(*(a1 + 32) + 32) + *(*(*(a1 + 32) + 8) + 16 * *v34));
    v36 = v34 + 68;
    v37 = &v34[18 * v269 + 68];
    v38 = *v37;
    if (v30 > 3)
    {
      if (v30 > 5)
      {
        if (v30 != 6)
        {
          if (v30 == 7)
          {
            v27 = 1;
            if (v38 == 68)
            {
              goto LABEL_66;
            }

            v28 = 79;
          }

LABEL_218:
          v25 = v268;
          goto LABEL_282;
        }

        v28 = 79;
        v27 = 1;
        if (!v38 || v38 == 68)
        {
          goto LABEL_218;
        }

LABEL_66:
        sizea = v27;
        valuea = *v37;
        v58 = AAHeaderClear(v11);
        v59.ikey = 5265748;
        v60 = AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v59, valuea);
        v61 = strlen(v35);
        v62.ikey = 5521744;
        v63 = AAHeaderSetFieldString(v11, 0xFFFFFFFF, v62, v35, v61);
        appended = aaHeaderAppendEntryAttributes(v11, v34 + 144, v34 + 216);
        v67 = valuea;
        v68 = (appended | v60 | v58 | v63) >= 0;
        if (valuea == 70)
        {
          v69 = *(v34 + 17);
          v8 = ostream;
          if (v69 != -1)
          {
            v70.ikey = 4410440;
            v71 = AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v70, v69);
            v67 = valuea;
            if (v71 < 0)
            {
              v68 = 0;
            }
          }
        }

        else
        {
          v8 = ostream;
        }

        if ((v251 & 0x10) == 0 && (v67 == 70 ? (v73 = v34[8] == 0) : (v73 = 0), v73))
        {
          v89.ikey = 3295315;
          if (AAHeaderSetFieldHash(v11, 0xFFFFFFFF, v89, 3u, v37 + 40) < 0)
          {
            v68 = 0;
          }
        }

        else if ((v67 | 2) != 0x46)
        {
LABEL_120:
          if (!v68)
          {
            goto LABEL_343;
          }

          EncodedSize = AAHeaderGetEncodedSize(v11);
          EncodedData = AAHeaderGetEncodedData(v11);
          if (sizea)
          {
            v8 = v268[4];
            if (!v8)
            {
              v8 = v268[3];
            }
          }

          if (*(v8 + 3))
          {
            v96 = 0;
            if (EncodedSize)
            {
              v97 = EncodedSize;
              while (1)
              {
                v98 = (*(v8 + 3))(*v8, EncodedData, v97);
                if (v98 < 1)
                {
                  break;
                }

                EncodedData += v98;
                v96 += v98;
                v97 -= v98;
                if (!v97)
                {
                  goto LABEL_170;
                }
              }

              v96 = v98;
            }
          }

          else
          {
            v96 = -1;
          }

LABEL_170:
          if (v96 != EncodedSize)
          {
            v228 = "write header";
            v229 = 1328;
            goto LABEL_356;
          }

          v30 = v265;
          v27 = sizea;
          if ((valuea | 2) == 0x46)
          {
            v127 = *(v34 + 11);
            if (v127)
            {
              if (!*(v8 + 3))
              {
                goto LABEL_350;
              }

              v128 = 0;
              v129 = *(v34 + 13);
              while (1)
              {
                v130 = (*(v8 + 3))(*v8, v129, v127);
                if (v130 < 1)
                {
                  break;
                }

                v129 += v130;
                v128 += v130;
                v127 -= v130;
                if (!v127)
                {
                  goto LABEL_179;
                }
              }

              v128 = v130;
LABEL_179:
              v30 = v265;
              v27 = sizea;
              if (v128 < 0)
              {
LABEL_350:
                v228 = "write XAT";
                v229 = 1332;
                goto LABEL_356;
              }
            }

            v131 = *(v34 + 14);
            if (v131)
            {
              if (!*(v8 + 3))
              {
                goto LABEL_351;
              }

              v132 = 0;
              v133 = *(v34 + 16);
              while (1)
              {
                v134 = (*(v8 + 3))(*v8, v133, v131);
                if (v134 < 1)
                {
                  break;
                }

                v133 += v134;
                v132 += v134;
                v131 -= v134;
                if (!v131)
                {
                  goto LABEL_213;
                }
              }

              v132 = v134;
LABEL_213:
              v30 = v265;
              v27 = sizea;
              if (v132 < 0)
              {
LABEL_351:
                v228 = "write ACL";
                v229 = 1333;
                goto LABEL_356;
              }
            }
          }

          v153 = v261;
          if (v27)
          {
            v153 = v261 + 1;
          }

          v261 = v153;
          v28 = 79;
LABEL_217:
          v21 = v267;
          goto LABEL_218;
        }

        v90 = *(v34 + 11);
        if (v90)
        {
          v91.ikey = 5521752;
          if (AAHeaderSetFieldBlob(v11, 0xFFFFFFFF, v91, v90) < 0)
          {
            v68 = 0;
          }
        }

        v92 = *(v34 + 14);
        if (v92)
        {
          v93.ikey = 4997953;
          if (AAHeaderSetFieldBlob(v11, 0xFFFFFFFF, v93, v92) < 0)
          {
LABEL_343:
            v226 = "setup header";
            v227 = 1322;
LABEL_360:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v227, 27, 0, v226, v65, v66, v245);
            v207 = 0;
            v208 = 0;
            v206 = 0;
            v11 = 0;
            v214 = 0xFFFFFFFFLL;
            goto LABEL_361;
          }
        }

        goto LABEL_120;
      }

      if (v30 == 4)
      {
        v28 = 69;
        if (*(v32 + 8) != 3 || v38 == 70)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v28 = 69;
        if (*(v32 + 8) != 3 || v38 != 70)
        {
LABEL_71:
          v27 = v255;
          goto LABEL_218;
        }
      }

      size = *(v37 + 2);
      v45 = *v37;
      v46 = AAHeaderClear(v11);
      v47.ikey = 5265748;
      v48 = AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v47, v45);
      v49 = strlen(v35);
      v50.ikey = 5521744;
      v53 = (AAHeaderSetFieldString(v11, 0xFFFFFFFF, v50, v35, v49) | v48 | v46) >= 0;
      if (!v260)
      {
        v54 = strlen((v253 + v252));
        v55.ikey = 4997708;
        if (AAHeaderSetFieldString(v11, 0xFFFFFFFF, v55, (v253 + v252), v54) < 0)
        {
          v53 = 0;
        }
      }

      v21 = v267;
      value = v45;
      if (v45 == 70)
      {
        if ((*(v32 + 144) & 4) != 0)
        {
          v74.ikey = 4672582;
          if (AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v74, *(v32 + 156)) < 0)
          {
            v53 = 0;
          }
        }

        v75 = *(v32 + 216);
        if (v75)
        {
          v76.ikey = 5523009;
          if (AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v76, *(v32 + 224)) < 0)
          {
            v53 = 0;
          }

          v75 = *(v32 + 216);
        }

        if ((v75 & 2) != 0)
        {
          v77.ikey = 5391937;
          if (AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v77, *(v32 + 228)) < 0)
          {
            v53 = 0;
          }
        }

        v78.ikey = 5521732;
        if (AAHeaderSetFieldBlob(v11, 0xFFFFFFFF, v78, size) < 0)
        {
          v53 = 0;
        }

        v79 = *(v32 + 40);
        if (v79)
        {
          v80.ikey = 4408665;
          if (AAHeaderSetFieldBlob(v11, 0xFFFFFFFF, v80, v79) < 0)
          {
LABEL_344:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1452, 27, 0, "setup header", v51, v52, v245);
            v207 = 0;
            v208 = 0;
            v206 = 0;
            v11 = 0;
            v214 = 0xFFFFFFFFLL;
            v8 = ostream;
            v25 = v268;
            goto LABEL_329;
          }
        }
      }

      else if (v45 == 76)
      {
        if (*(v32 + 64))
        {
          v56 = strlen(*(v32 + 80));
          v57.ikey = 4935244;
          v21 = v267;
          if (AAHeaderSetFieldString(v11, 0xFFFFFFFF, v57, *(v32 + 80), v56) < 0)
          {
            goto LABEL_344;
          }
        }
      }

      if (!v53)
      {
        goto LABEL_344;
      }

      v81 = AAHeaderGetEncodedSize(v11);
      v84 = AAHeaderGetEncodedData(v11);
      v85 = ostream;
      if (v260)
      {
        v85 = v268[4];
        if (!v85)
        {
          v85 = v268[3];
        }
      }

      if (v85[3])
      {
        v86 = 0;
        if (v81)
        {
          v87 = v81;
          while (1)
          {
            v88 = (v85[3])(*v85, v84, v87);
            if (v88 < 1)
            {
              break;
            }

            v84 += v88;
            v86 += v88;
            v87 -= v88;
            if (!v87)
            {
              goto LABEL_132;
            }
          }

          v86 = v88;
        }
      }

      else
      {
        v86 = -1;
      }

LABEL_132:
      if (v86 != v81)
      {
        v228 = "write header";
        v229 = 1458;
        goto LABEL_356;
      }

      v99 = value;
      v8 = ostream;
      if (value == 70 && size)
      {
        *&offset.st_dev = 0;
        v274 = 0;
        EntryHeader = stateLoadEntryHeader(a1, v269, v29);
        v103 = EntryHeader;
        if (!EntryHeader)
        {
          v230 = "loading entry header";
          v231 = 769;
LABEL_354:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", v231, 27, 0, v230, v101, v102, v245);
          v108 = 0;
LABEL_359:
          AAHeaderDestroy(v103);
          free(v108);
          v226 = "write DAT";
          v227 = 1463;
          goto LABEL_360;
        }

        v104.ikey = 5521732;
        KeyIndex = AAHeaderGetKeyIndex(EntryHeader, v104);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v103, KeyIndex, &v274, &offset), FieldBlob <= 1) ? (v107 = 1) : (v107 = FieldBlob), v107 <= 0))
        {
          v230 = "blob not found";
          v231 = 770;
          goto LABEL_354;
        }

        v108 = malloc(0x40000uLL);
        if (!v108)
        {
          v234 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 773, 27, *v234, "malloc", v235, v236, v245);
          goto LABEL_359;
        }

        v109 = *(*(a1 + 80) + 992 * v29 + 72 * v269 + 296);
        header = v103;
        v110 = AAHeaderGetEncodedSize(v103);
        v111 = v274;
        if (v274)
        {
          v112 = v110 + v109 + *&offset.st_dev;
          while (1)
          {
            if (v111 >= 0x40000)
            {
              v113 = 0x40000;
            }

            else
            {
              v113 = v111;
            }

            v114 = AAByteStreamPRead(*(*(a1 + 8) + 8 * v269 + 24), v108, v113, v112);
            if (v114 < 0)
            {
              v224 = "read blob from archive";
              v225 = 781;
              goto LABEL_341;
            }

            v117 = v114;
            if (!v114)
            {
              goto LABEL_159;
            }

            if (v85[3])
            {
              v118 = 0;
              v119 = v108;
              v120 = v114;
              while (1)
              {
                v121 = (v85[3])(*v85, v119, v120);
                if (v121 < 1)
                {
                  break;
                }

                v119 += v121;
                v118 += v121;
                v120 -= v121;
                if (!v120)
                {
                  goto LABEL_156;
                }
              }

              v118 = v121;
            }

            else
            {
              v118 = -1;
            }

LABEL_156:
            if (v118 != v117)
            {
              break;
            }

            v112 += v117;
            v111 = v274 - v117;
            v44 = v274 == v117;
            v274 -= v117;
            v11 = v272;
            if (v44)
            {
              goto LABEL_159;
            }
          }

          v224 = "write blob to stream";
          v225 = 783;
LABEL_341:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", v225, 27, 0, v224, v115, v116, v245);
          v8 = ostream;
          v103 = header;
          goto LABEL_359;
        }

LABEL_159:
        AAHeaderDestroy(header);
        free(v108);
        v122 = size;
        if (!v260)
        {
          v122 = 0;
        }

        v254 += v122;
        v99 = value;
      }

      v30 = v265;
      if (v99 == 70)
      {
        v123 = *(v34 + 5);
        if (v123)
        {
          if (!v85[3])
          {
            goto LABEL_355;
          }

          v124 = 0;
          v125 = *(v34 + 7);
          while (1)
          {
            v126 = (v85[3])(*v85, v125, v123);
            if (v126 < 1)
            {
              break;
            }

            v125 += v126;
            v124 += v126;
            v123 -= v126;
            if (!v123)
            {
              goto LABEL_222;
            }
          }

          v124 = v126;
LABEL_222:
          v30 = v265;
          if (v124 < 0)
          {
LABEL_355:
            v228 = "write YEC";
            v229 = 1470;
LABEL_356:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v229, 27, 0, v228, v82, v83, v245);
            v207 = 0;
            v208 = 0;
            v206 = 0;
            v11 = 0;
LABEL_357:
            v214 = 0xFFFFFFFFLL;
            v8 = ostream;
LABEL_361:
            v21 = v267;
            v25 = v268;
            goto LABEL_329;
          }
        }
      }

      v154 = v261 + v250;
      v28 = 69;
      v261 += v250;
      if (v260)
      {
        v25 = v268;
        if (!v154)
        {
          v27 = v255;
          v21 = v267;
          goto LABEL_282;
        }

        v21 = v267;
        if (v254 > *(*(a1 + 8) + 128))
        {
          AAByteStreamClose(v268[4]);
          v268[4] = 0;
          v8 = ostream;
          if ((encodeYOPEntry(ostream, 0x45u, 0, (v253 + v252), v268[3]) & 0x80000000) != 0)
          {
            v222 = "encode entry";
            v223 = 1479;
          }

          else
          {
            if ((AAByteStreamTruncate(v268[3]) & 0x80000000) != 0)
            {
              v243 = "AAByteStreamTruncate";
              v244 = 196;
            }

            else if (AAByteStreamSeek(v268[3], 0, 0) < 0)
            {
              v243 = "AAByteStreamSeek";
              v244 = 197;
            }

            else
            {
              AAByteStreamClose(v268[4]);
              v268[4] = 0;
              if (!*v268 || (v157 = AACompressionOutputStreamOpen(v268[3], *v268, v268[1], 0, *(v268 + 4)), (v268[4] = v157) != 0))
              {
                v254 = 0;
                v261 = 0;
                v28 = 69;
                v27 = v255;
                goto LABEL_281;
              }

              v243 = "AACompressionOutputStreamOpen";
              v244 = 202;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveReset", v244, 27, 0, v243, v155, v156, v245);
            v222 = "truncating sub asset";
            v223 = 1482;
          }

LABEL_383:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v223, 27, 0, v222, v23, v24, v245);
          v207 = 0;
          v208 = 0;
          v206 = 0;
LABEL_384:
          v11 = 0;
LABEL_328:
          v214 = 0xFFFFFFFFLL;
          goto LABEL_329;
        }

        goto LABEL_232;
      }

      v27 = v255;
      goto LABEL_217;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        v25 = v268;
        if (*(v32 + 8) == 1)
        {
          if (v260)
          {
            v40 = v268[4];
            if (!v40)
            {
              v40 = v268[3];
            }

            if ((encodeEntry(v40, v38, v35) & 0x80000000) == 0)
            {
              ++v261;
              v28 = 67;
              goto LABEL_78;
            }

            v241 = "encode entry";
            v242 = 1360;
            goto LABEL_387;
          }

          v28 = 67;
          if ((encodeYOPEntry(ostream, 0x43u, v35, (v253 + v252), 0) & 0x80000000) != 0)
          {
            v241 = "encode entry";
            v242 = 1365;
            goto LABEL_387;
          }

LABEL_211:
          v27 = 0;
          goto LABEL_281;
        }

        v28 = 67;
        goto LABEL_232;
      }

      if (*(v32 + 8) != 4)
      {
        goto LABEL_218;
      }

      if (v28 != 79)
      {
        if (v28 == 73)
        {
          goto LABEL_62;
        }

        sizec = v27;
        if (*(v32 + 24))
        {
          v11 = 0;
          valueb = *(v32 + 16);
          goto LABEL_252;
        }

        v25 = v268;
        if (snprintf(__str, 0x400uLL, "%s/0x%08zx", (a1 + 92), v29) >= 0x400)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1379, 27, 0, "patch path: %s", v164, v165, v35);
        }

        else
        {
          memset(&offset, 0, sizeof(offset));
          if ((stat(__str, &offset) & 0x80000000) == 0 && (offset.st_mode & 0xF000) == 0x8000)
          {
            valueb = offset.st_size;
            v168 = AAFileStreamOpenWithPath(__str, 0, 0);
            if (!v168)
            {
              v245 = __str;
              v241 = "open: %s";
              v242 = 1385;
              goto LABEL_387;
            }

            v11 = v168;
LABEL_252:
            headera = AAHeaderClear(v272);
            v169.ikey = 5265748;
            v246 = AAHeaderSetFieldUInt(v272, 0xFFFFFFFF, v169, 0x4DuLL);
            v170.ikey = 5263193;
            v171 = AAHeaderSetFieldUInt(v272, 0xFFFFFFFF, v170, 0x50uLL);
            v172 = strlen(v35);
            v173.ikey = 5521744;
            v174 = AAHeaderSetFieldString(v272, 0xFFFFFFFF, v173, v35, v172);
            v175 = strlen((v253 + v252));
            v176.ikey = 4997708;
            v177 = (AAHeaderSetFieldString(v272, 0xFFFFFFFF, v176, (v253 + v252), v175) | v171 | v246 | headera | v174) >= 0;
            if ((*(v32 + 144) & 4) != 0)
            {
              v178.ikey = 4672582;
              if (AAHeaderSetFieldUInt(v272, 0xFFFFFFFF, v178, *(v32 + 156)) < 0)
              {
                v177 = 0;
              }
            }

            v179 = *(v32 + 216);
            if (v179)
            {
              v180.ikey = 5523009;
              if (AAHeaderSetFieldUInt(v272, 0xFFFFFFFF, v180, *(v32 + 224)) < 0)
              {
                v177 = 0;
              }

              v179 = *(v32 + 216);
            }

            v25 = v268;
            if ((v179 & 2) != 0)
            {
              v181 = v272;
              v182.ikey = 5391937;
              if (AAHeaderSetFieldUInt(v272, 0xFFFFFFFF, v182, *(v32 + 228)) < 0)
              {
                v177 = 0;
              }
            }

            else
            {
              v181 = v272;
            }

            v183.ikey = 5521732;
            if (AAHeaderSetFieldBlob(v181, 0xFFFFFFFF, v183, valueb) < 0)
            {
              v177 = 0;
            }

            v186 = *(v32 + 40);
            if (v186 && (v187.ikey = 4408665, AAHeaderSetFieldBlob(v181, 0xFFFFFFFF, v187, v186) < 0) || !v177)
            {
              v237 = "setup header";
              v238 = 1402;
LABEL_376:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v238, 27, 0, v237, v184, v185, v245);
              v207 = 0;
              v208 = 0;
              v206 = 0;
              goto LABEL_377;
            }

            v188 = AAHeaderGetEncodedSize(v272);
            v189 = AAHeaderGetEncodedData(v272);
            if (*(ostream + 3))
            {
              if (v188)
              {
                v190 = v189;
                v191 = 0;
                v192 = v188;
                while (1)
                {
                  v193 = (*(ostream + 3))(*ostream, v190, v192);
                  if (v193 < 1)
                  {
                    break;
                  }

                  v190 += v193;
                  v191 += v193;
                  v192 -= v193;
                  if (!v192)
                  {
                    goto LABEL_285;
                  }
                }

                v191 = v193;
              }

              else
              {
                v191 = 0;
              }
            }

            else
            {
              v191 = -1;
            }

LABEL_285:
            if (v191 != v188)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1408, 27, 0, "write header", v184, v185, v245);
              v207 = 0;
              v208 = 0;
              v206 = 0;
              goto LABEL_357;
            }

            v195 = *(v32 + 24);
            if (v195)
            {
              v25 = v268;
              if (!*(ostream + 3))
              {
                goto LABEL_366;
              }

              v196 = 0;
              if (!valueb)
              {
                goto LABEL_296;
              }

              v197 = valueb;
              while (1)
              {
                v198 = (*(ostream + 3))(*ostream, v195, v197);
                if (v198 < 1)
                {
                  break;
                }

                v195 += v198;
                v196 += v198;
                v197 -= v198;
                if (!v197)
                {
                  goto LABEL_296;
                }
              }
            }

            else
            {
              v25 = v268;
              if (!v11)
              {
                goto LABEL_366;
              }

              v198 = AAByteStreamProcess(v11, ostream);
            }

            v196 = v198;
LABEL_296:
            if (v196 < 0 || v196 != valueb)
            {
LABEL_366:
              v237 = "write patch payload";
              v238 = 1414;
              goto LABEL_376;
            }

            v199 = *(v32 + 40);
            if (v199)
            {
              if (!*(ostream + 3))
              {
                goto LABEL_373;
              }

              v200 = 0;
              v201 = *(v32 + 56);
              while (1)
              {
                v202 = (*(ostream + 3))(*ostream, v201, v199);
                if (v202 < 1)
                {
                  break;
                }

                v201 += v202;
                v200 += v202;
                v199 -= v202;
                if (!v199)
                {
                  goto LABEL_305;
                }
              }

              v200 = v202;
LABEL_305:
              if (v200 < 0)
              {
LABEL_373:
                v237 = "write YEC";
                v238 = 1419;
                goto LABEL_376;
              }
            }

            AAByteStreamClose(v11);
            v11 = v272;
            v21 = v267;
            v30 = v265;
            v27 = sizec;
            goto LABEL_282;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1381, 27, 0, "invalid patch: %s", v166, v167, __str);
        }

LABEL_388:
        v207 = 0;
        v208 = 0;
        v206 = 0;
        v11 = 0;
        v214 = 0xFFFFFFFFLL;
        v8 = ostream;
        goto LABEL_329;
      }

      goto LABEL_66;
    }

    if (!v30)
    {
      break;
    }

    v25 = v268;
    if (v30 == 1)
    {
      v39 = *(v32 + 8);
      if (v39 == 2 || v39 == 3 && v38 != 68)
      {
        if (v260)
        {
          v72 = v268[4];
          if (!v72)
          {
            v72 = v268[3];
          }

          if ((encodeEntry(v72, v38, v35) & 0x80000000) == 0)
          {
            ++v261;
            v28 = 82;
LABEL_78:
            v27 = 1;
LABEL_281:
            v30 = v265;
            goto LABEL_282;
          }

          v241 = "encode entry";
          v242 = 1346;
LABEL_387:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v242, 27, 0, v241, v41, v42, v245);
          goto LABEL_388;
        }

        v28 = 82;
        if ((encodeYOPEntry(ostream, 0x52u, v35, (v253 + v252), 0) & 0x80000000) != 0)
        {
          v241 = "encode entry";
          v242 = 1351;
          goto LABEL_387;
        }

        goto LABEL_211;
      }

      v28 = 82;
LABEL_232:
      v27 = v255;
    }

LABEL_282:
    ++v29;
    v26 = *(a1 + 72);
    if (v29 >= v26)
    {
      if (!v27)
      {
        goto LABEL_310;
      }

      if (!v261)
      {
        goto LABEL_310;
      }

      AAByteStreamClose(v25[4]);
      v25[4] = 0;
      if ((encodeYOPEntry(ostream, v28, 0, (v253 + v252), v25[3]) & 0x80000000) == 0)
      {
        goto LABEL_310;
      }

      v241 = "encode entry";
      v242 = 1498;
      goto LABEL_387;
    }
  }

  if (v38 != 70)
  {
    v28 = 73;
    v27 = 1;
    goto LABEL_218;
  }

  v43 = *(v32 + 8);
  v27 = 1;
  v44 = v43 == 1 || v43 == 4;
  if (!v44)
  {
LABEL_63:
    v28 = 73;
    goto LABEL_218;
  }

LABEL_62:
  if (*(v32 + 32))
  {
    goto LABEL_63;
  }

  sizeb = v27;
  v135 = *v37;
  v136 = AAHeaderClear(v11);
  v137.ikey = 5265748;
  LODWORD(v135) = AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v137, v135);
  v138 = strlen(v35);
  v139.ikey = 5521744;
  v142 = ((AAHeaderSetFieldString(v11, 0xFFFFFFFF, v139, v35, v138) | v135 | v136) & 0x80000000) == 0;
  v143 = *(a1 + 48);
  if (v143)
  {
    v144 = 0;
    v145 = v34 + 78;
    v25 = v268;
    do
    {
      v146 = &v36[18 * v144];
      if (*v146 == 70)
      {
        if (v144)
        {
          v147 = v145;
          v148 = v144;
          while (1)
          {
            if (*(v147 - 10) == 70)
            {
              v149 = *v147 == *(v146 + 5) && *(v147 + 1) == *(v146 + 6);
              v150 = v149 && *(v147 + 2) == *(v146 + 7);
              if (v150 && *(v147 + 3) == *(v146 + 8))
              {
                break;
              }
            }

            v147 += 18;
            if (!--v148)
            {
              goto LABEL_203;
            }
          }
        }

        else
        {
LABEL_203:
          v152.ikey = 3295315;
          if (AAHeaderSetFieldHash(v11, 0xFFFFFFFF, v152, 3u, v146 + 40) < 0)
          {
            v142 = 0;
          }

          v143 = *(a1 + 48);
        }
      }

      ++v144;
    }

    while (v144 < v143);
  }

  else
  {
    v25 = v268;
  }

  if (!v142)
  {
    v239 = "setup header";
    v240 = 1290;
    goto LABEL_371;
  }

  v158 = AAHeaderGetEncodedSize(v11);
  v159 = AAHeaderGetEncodedData(v11);
  v160 = ostream;
  if (sizeb)
  {
    v160 = v25[4];
    if (!v160)
    {
      v160 = v25[3];
    }
  }

  if (*(v160 + 3))
  {
    v161 = 0;
    if (v158)
    {
      v162 = v158;
      while (1)
      {
        v163 = (*(v160 + 3))(*v160, v159, v162);
        if (v163 < 1)
        {
          break;
        }

        v159 += v163;
        v161 += v163;
        v162 -= v163;
        if (!v162)
        {
          goto LABEL_277;
        }
      }

      v161 = v163;
    }
  }

  else
  {
    v161 = -1;
  }

LABEL_277:
  if (v161 == v158)
  {
    v27 = sizeb;
    v194 = v261;
    if (sizeb)
    {
      v194 = v261 + 1;
    }

    v261 = v194;
    v28 = 73;
    v21 = v267;
    goto LABEL_281;
  }

  v239 = "write header";
  v240 = 1296;
LABEL_371:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", v240, 27, 0, v239, v140, v141, v245);
  v207 = 0;
  v208 = 0;
  v206 = 0;
  v11 = 0;
LABEL_377:
  v214 = 0xFFFFFFFFLL;
  v8 = ostream;
  v21 = v267;
LABEL_329:
  AAArchiveStreamClose(v206);
  AAArchiveStreamClose(v208);
  AAArchiveStreamClose(v207);
  AAByteStreamClose(v8);
  if (v25)
  {
    AAByteStreamClose(v25[4]);
    AAByteStreamClose(v25[3]);
    free(v25);
  }

  AAByteStreamClose(v11);
  AAHeaderDestroy(v272);
  AAFieldKeySetDestroy(v21);
  AAFieldKeySetDestroy(remove_key_set);
  free(v270);
  v215 = *MEMORY[0x29EDCA608];
  return v214;
}

void stateDestroy_0(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 92);
    v2 = (a1 + 92);
    if (v3)
    {
      removeTree(v2);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      if (*(a1 + 72))
      {
        v5 = 0;
        v6 = 128;
        do
        {
          v7 = (*(a1 + 80) + v6);
          free(*(v7 - 13));
          free(*(v7 - 9));
          memset_s(v7 - 11, 0x18uLL, 0, 0x18uLL);
          free(*(v7 - 3));
          memset_s(v7 - 5, 0x18uLL, 0, 0x18uLL);
          free(*v7);
          memset_s(v7 - 2, 0x18uLL, 0, 0x18uLL);
          free(*(v7 - 6));
          memset_s(v7 - 8, 0x18uLL, 0, 0x18uLL);
          ++v5;
          v6 += 992;
        }

        while (v5 < *(a1 + 72));
        v4 = *(a1 + 80);
      }

      free(v4);
    }

    StringTableDestroy(*(a1 + 32));
    StringTableDestroy(*(a1 + 40));

    free(a1);
  }
}