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

uint64_t DirectoryPatch()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v73[4] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(v0, v1, v2, v3, v4, v5, v6, v7, v50);
  DefaultNThreads = *(v0 + 48);
  v9 = *(v0 + 52);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  memset(&v59, 0, sizeof(v59));
  memset(v73, 0, 28);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  bzero(&v60, 0x1510uLL);
  v60 = v9;
  v10 = MemBufferCreate(0x40000uLL);
  v68 = v10;
  v11 = MemBufferCreate(0x100000uLL);
  v69 = v11;
  v14 = (v0 + 24);
  v15 = vld1q_dup_f32(v14);
  v64 = vandq_s8(v15, xmmword_298069050);
  v65 = *(v0 + 28);
  v66 = *(v0 + 44);
  v67 = 0;
  if (!v10 || !v11)
  {
    v17 = "allocation";
    v18 = 332;
    goto LABEL_25;
  }

  if (*v0)
  {
    if (!realpath_DARWIN_EXTSN(*v0, v61))
    {
      v19 = *__error();
      v17 = *v0;
      v18 = 339;
LABEL_27:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", v18, 25, v19, v17, v12, v13, v51);
      v20 = 0;
LABEL_28:
      v21 = -1;
      goto LABEL_29;
    }

    if (stat(*v0, &v59) || (v59.st_mode & 0xF000) != 0x4000)
    {
      v51 = *v0;
      v17 = "inPath is not a directory: %s";
      v18 = 340;
      goto LABEL_25;
    }
  }

  if (stat(*(v0 + 8), &v59))
  {
    mkdir(*(v0 + 8), 0x1EDu);
  }

  if (!realpath_DARWIN_EXTSN(*(v0 + 8), v62))
  {
    v19 = *__error();
    v17 = *(v0 + 8);
    v18 = 350;
    goto LABEL_27;
  }

  if (stat(*(v0 + 8), &v59) || (v59.st_mode & 0xF000) != 0x4000)
  {
    v51 = *(v0 + 8);
    v17 = "outPath is not a directory: %s";
    v18 = 351;
    goto LABEL_25;
  }

  if (*v0 && !strcmp(v61, v62))
  {
    v17 = "inPath == outPath is not supported";
    v18 = 354;
    goto LABEL_25;
  }

  if (!realpath_DARWIN_EXTSN(*(v0 + 16), v63))
  {
    v19 = *__error();
    v17 = *(v0 + 16);
    v18 = 357;
    goto LABEL_27;
  }

  if (stat(*(v0 + 16), &v59) || (v59.st_mode & 0xF000) != 0x8000)
  {
    v51 = *(v0 + 16);
    v17 = "patchFilename is not a regular file: %s";
    v18 = 358;
    goto LABEL_25;
  }

  st_size = v59.st_size;
  if (loadFileSegment(v63, v73, 0x1CuLL, 0))
  {
    v17 = "read patch header";
    v18 = 362;
LABEL_25:
    v19 = 0;
    goto LABEL_27;
  }

  if (v73[0] != 0x3031464649444944)
  {
    v17 = "invalid patch header";
    v18 = 365;
    goto LABEL_25;
  }

  v24 = *(&v73[2] + 4);
  v25 = *(&v73[1] + 4) + 28 + *(&v73[2] + 4);
  if (st_size != *(&v73[1] + 4) + 28 && st_size != v25)
  {
    v17 = "invalid patch size";
    v18 = 368;
    goto LABEL_25;
  }

  if (*(&v73[2] + 4) && st_size != v25 && (*(v0 + 24) & 2) == 0)
  {
    v17 = "patch has been truncated, can't expand archive payload";
    v18 = 369;
    goto LABEL_25;
  }

  v52 = *(&v73[1] + 4) + 28 + *(&v73[2] + 4);
  if (v9 >= 1)
  {
    v26 = MEMORY[0x29EDCA610];
    fwrite("DirectoryPatch:\n", 0x10uLL, 1uLL, *MEMORY[0x29EDCA610]);
    if (*v0)
    {
      fprintf(*v26, "  input directory: %s\n", v61);
    }

    fprintf(*v26, "  output directory: %s\n", v62);
    fprintf(*v26, "  patch file: %s\n", v63);
    fprintf(*v26, "  worker threads: %d\n", DefaultNThreads);
    v27 = *(v0 + 24);
    if (v27)
    {
      if (v27)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      fprintf(*v26, "  skip diff payload: %s\n", v28);
      if ((*(v0 + 24) & 2) != 0)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      fprintf(*v26, "  skip archive payload: %s\n", v29);
      if ((*(v0 + 24) & 4) != 0)
      {
        v30 = "yes";
      }

      else
      {
        v30 = "no";
      }

      fprintf(*v26, "  truncate archive payload: %s\n", v30);
      if ((*(v0 + 24) & 0x200) != 0)
      {
        v31 = "yes";
      }

      else
      {
        v31 = "no";
      }

      fprintf(*v26, "  skip attributes: %s\n", v31);
      v27 = *(v0 + 24);
      if ((v27 & 0x10000) != 0)
      {
        fwrite("  MSU mode: yes\n", 0x10uLL, 1uLL, *v26);
        v27 = *(v0 + 24);
      }

      if ((v27 & 0x200) != 0)
      {
        goto LABEL_72;
      }
    }

    if ((v27 & 0x100) != 0)
    {
      v32 = "yes";
    }

    else
    {
      v32 = "no";
    }

    fprintf(*v26, "  ignore EPERM: %s\n", v32);
    v33 = *(v0 + 28);
    if (v33)
    {
      fprintf(*v26, "  override UID: %u\n", *(v0 + 32));
      v33 = *(v0 + 28);
      if ((v33 & 2) == 0)
      {
LABEL_69:
        if ((v33 & 8) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }
    }

    else if ((*(v0 + 28) & 2) == 0)
    {
      goto LABEL_69;
    }

    fprintf(*v26, "  override GID: %u\n", *(v0 + 36));
    v33 = *(v0 + 28);
    if ((v33 & 8) == 0)
    {
LABEL_70:
      if ((v33 & 4) == 0)
      {
LABEL_72:
        fprintf(*v26, "%12llu diff payload size\n", *(&v73[1] + 4));
        fprintf(*v26, "%12llu archive payload size\n", *(&v73[2] + 4));
        v24 = *(&v73[2] + 4);
        goto LABEL_73;
      }

LABEL_71:
      fprintf(*v26, "  override mode for directories: 0%o\n", *(v0 + 40));
      goto LABEL_72;
    }

LABEL_80:
    fprintf(*v26, "  override mode for regular files: 0%o\n", *(v0 + 44));
    if ((*(v0 + 28) & 4) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_73:
  v53 = 0u;
  v54 = 0u;
  DWORD1(v53) = DefaultNThreads;
  *&v55 = directoryPatchBegin;
  *&v57 = directoryPatchEnd;
  *(&v55 + 1) = directoryPatchBlob;
  *&v56 = directoryPatchPayload;
  *(&v56 + 1) = directoryPatchPadding;
  *(&v57 + 1) = directoryPatchPadding;
  v58 = &v60;
  if (v24 && (*(v0 + 24) & 2) == 0)
  {
    v34 = IFileStreamCreateWithFilename(v63, *(&v73[1] + 4) + 28, v24);
    v20 = v34;
    if (!v34)
    {
      v42 = "create archive payload stream";
      v43 = 418;
      goto LABEL_95;
    }

    v70 = 0;
    *(&v54 + 1) = v34;
    *(&v53 + 1) = IFileStreamRead;
    if (ParallelArchiveRead(&v53, v35, v36, v37, v38, v39, v40, v41))
    {
      v42 = "read archive payload";
      v43 = 423;
LABEL_95:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", v43, 25, 0, v42, v40, v41, v51);
      goto LABEL_28;
    }

    IFileStreamDestroy(v20);
    if (v71)
    {
      LOBYTE(v51) = v71;
      v17 = "DirectoryPatch: %llu errors after processing the archive payload";
      v18 = 432;
      goto LABEL_25;
    }
  }

  if (st_size == v52 && (*(v0 + 24) & 4) != 0 && truncate(v63, *(&v73[1] + 4) + 28))
  {
    v19 = *__error();
    v18 = 441;
    v17 = v63;
    goto LABEL_27;
  }

  if (*(&v73[1] + 4) && (*(v0 + 24) & 1) == 0)
  {
    v44 = IFileStreamCreateWithFilename(v63, 0x1CuLL, *(&v73[1] + 4));
    v20 = v44;
    if (!v44)
    {
      v42 = "create diff payload stream";
      v43 = 448;
      goto LABEL_95;
    }

    v70 = 28;
    *(&v54 + 1) = v44;
    *(&v53 + 1) = IFileStreamRead;
    if (ParallelArchiveRead(&v53, v45, v46, v47, v48, v49, v40, v41))
    {
      v42 = "read diff payload";
      v43 = 453;
      goto LABEL_95;
    }

    IFileStreamDestroy(v20);
    if (v71)
    {
      LOBYTE(v51) = v71;
      v17 = "DirectoryPatch: %llu errors after processing the diff payload";
      v18 = 462;
      goto LABEL_25;
    }
  }

  if (v9 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12lld entries processed\n", v72);
  }

  v20 = 0;
  v21 = 0;
LABEL_29:
  IFileStreamDestroy(v20);
  MemBufferDestroy(v68);
  MemBufferDestroy(v69);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v21;
  }

  else
  {
    result = result;
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void directoryPatchBegin()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v50 = *MEMORY[0x29EDCA608];
  bzero(v49, 0x800uLL);
  bzero(v48, 0x800uLL);
  *(v9 + 5328) += v2;
  v12 = (v9 + 5336);
  *(v9 + 5336) = 0u;
  *(v9 + 5352) = 0u;
  if (*(v9 + 5376))
  {
    goto LABEL_6;
  }

  if ((*v8 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*(v8 + 4) == 77)
  {
    goto LABEL_6;
  }

  if ((~*v8 & 0x8001) != 0)
  {
LABEL_3:
    v13 = "invalid archive entry, PAT/TYP missing";
    v14 = 78;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", v14, 25, 0, v13, v10, v11, v45);
    ++*(v9 + 5376);
LABEL_6:
    *(v9 + 5340) = 1;
    goto LABEL_7;
  }

  if (*(v9 + 5368))
  {
    v13 = "output file stream was not closed";
    v14 = 79;
    goto LABEL_4;
  }

  memset(&v46, 0, sizeof(v46));
  if (concatPath(v49, 0x800uLL, (v9 + 1028), (v8 + 144)))
  {
    v13 = "create output path";
    v14 = 82;
    goto LABEL_4;
  }

  ++*(v9 + 5384);
  memcpy((v9 + 3136), v8, 0x890uLL);
  if (*v9 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "%s\n", (v8 + 144));
  }

  v16 = strlen(v49);
  makePath(v49, v16);
  if (!lstat(v49, &v46) && (v46.st_mode & 0xF000) != 0x4000)
  {
    unlink(v49);
  }

  v19 = *(v8 + 4);
  if (v19 > 71)
  {
    if (v19 == 72)
    {
      if (*(v8 + 2))
      {
        if (concatPath(v48, 0x800uLL, (v9 + 1028), (v8 + 1168)))
        {
          v24 = "create output link path";
          v25 = 123;
          goto LABEL_66;
        }

        if (!link(v48, v49))
        {
          goto LABEL_7;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 124, 25, 0, "hlink %s -> %s", v33, v34, v49);
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 122, 25, 0, "missing LNK field: %s", v17, v18, v8 - 112);
      }
    }

    else
    {
      if (v19 != 76)
      {
        goto LABEL_35;
      }

      if (*(v8 + 2))
      {
        if (!symlink((v8 + 1168), v49))
        {
          goto LABEL_7;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 118, 25, 0, "slink %s -> %s", v31, v32, v49);
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 117, 25, 0, "missing LNK field: %s", v17, v18, v8 - 112);
      }
    }

LABEL_67:
    ++*(v9 + 5376);
    goto LABEL_7;
  }

  if (v19 == 68)
  {
    if (lstat(v49, &v46))
    {
      if (!mkdir(v49, 0x1EDu))
      {
        goto LABEL_7;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 107, 25, 0, "mkdir %s", v28, v29, v49);
    }

    else
    {
      if ((v46.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_7;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 112, 25, 0, "entry expected to be a directory: %s", v26, v27, v49);
    }

    goto LABEL_67;
  }

  if (v19 != 70)
  {
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 179, 25, 0, "unsupported entry type '%c'", v17, v18, v19);
    goto LABEL_67;
  }

  v20 = *(v9 + 3076);
  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *(v9 + 5336) = v21;
  if ((*(v8 + 1) & 2) != 0)
  {
    v30 = 4;
LABEL_51:
    *v12 = v30;
    goto LABEL_52;
  }

  if (v4)
  {
    while ((*v6 & 0xDFDFDF) != 0x505842)
    {
      v6 += 258;
      if (!--v4)
      {
        goto LABEL_28;
      }
    }

    v30 = 3;
    goto LABEL_51;
  }

LABEL_28:
  if (v20)
  {
    goto LABEL_52;
  }

  bzero(v47, 0x800uLL);
  if (concatPath(v47, 0x800uLL, (v9 + 4), (v8 + 144)))
  {
    v24 = "create input path";
    v25 = 141;
LABEL_66:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", v25, 25, 0, v24, v22, v23, v45);
    goto LABEL_67;
  }

  if (link(v47, v49))
  {
    v30 = 2;
    goto LABEL_51;
  }

LABEL_52:
  v35 = 64;
  if ((*v8 & 0x200) == 0)
  {
    v35 = 40;
  }

  v36 = *(v8 + v35);
  if ((*v8 & 8) != 0)
  {
    v37 = 4 * (statIsCompressed(*(v8 + 16)) != 0);
  }

  else
  {
    v37 = 0;
  }

  if ((*v12 - 2) <= 2)
  {
    v38 = *(v9 + 3084) ? v37 | 0x2B : v37;
    v39 = OArchiveFileStreamCreate(v49, v36, v38, -1, *(v9 + 3112));
    *(v9 + 5368) = v39;
    if (!v39)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 160, 25, 0, "create output stream", v40, v41, v45);
      ++*(v9 + 5376);
    }

    if (*v12 == 2)
    {
      bzero(v47, 0x800uLL);
      if (concatPath(v47, 0x800uLL, (v9 + 4), (v8 + 144)))
      {
        v24 = "create input path";
        v25 = 167;
      }

      else
      {
        v42 = IFileStreamCreateWithFilename(v47, 0, -1);
        if (v42)
        {
          v43 = v42;
          v44 = MemBufferTransmit(*(v9 + 3120), v36, IFileStreamRead, v42, OArchiveFileStreamWrite, *(v9 + 5368), v22, v23);
          IFileStreamDestroy(v43);
          if (v44 == v36)
          {
            goto LABEL_7;
          }

          v24 = "copy preserved";
          v25 = 172;
        }

        else
        {
          v24 = "create input stream";
          v25 = 169;
        }
      }

      goto LABEL_66;
    }
  }

LABEL_7:
  v15 = *MEMORY[0x29EDCA608];
}

unsigned int *directoryPatchEnd(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x29EDCA608];
  if (result[1335])
  {
    goto LABEL_43;
  }

  v8 = result;
  if (result[1334] == 3)
  {
    bzero(v37, 0x800uLL);
    if (concatPath(v37, 0x800uLL, v8 + 4, v8 + 3280))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 196, 25, 0, "create input path", v9, v10, v32);
      ++*(v8 + 672);
    }

    v11 = MappedBufferCreateWithFilename(v8 + 2052, *(v8 + 669), *(v8 + 670));
    if (v11)
    {
      v12 = v11;
      NWritten = OMemStreamGetNWritten(v11);
      DataSize = MappedBufferGetDataSize(v12);
      LODWORD(NWritten) = BXPatch5FileWithFlags(v37, NWritten, DataSize, OArchiveFileStreamWrite, *(v8 + 671), 0);
      MappedBufferDestroy(v12);
      if (!NWritten)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MappedBufferDestroy(0);
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 205, 25, 0, "patching file %s", a7, a8, v8 - 48);
    ++*(v8 + 672);
  }

LABEL_10:
  result = *(v8 + 671);
  if (result)
  {
    result = OArchiveFileStreamDestroy(result, a2, a3, a4, a5, a6, a7, a8);
    *(v8 + 671) = 0;
  }

  if ((*(v8 + 3137) & 0x20) != 0)
  {
    v15 = v8[1334];
    if (v15 <= 4 && ((1 << v15) & 0x16) != 0)
    {
      bzero(v37, 0x800uLL);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      if (concatPath(v37, 0x800uLL, v8 + 1028, v8 + 3280))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 223, 25, 0, "create output path", v16, v17, v32);
        ++*(v8 + 672);
      }

      result = getFileSHA1Digest(v37, &v34);
      if (result)
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 224, 25, 0, "hashing output file", v18, v19, v32);
        ++*(v8 + 672);
      }

      if (v34 != *(v8 + 807) || v35 != *(v8 + 809) || v36 != v8[811])
      {
        memset(v33, 0, 41);
        sha1ToString(v33, &v34);
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 229, 25, 0, "invalid output file SHA1 digest %s: %s", v22, v23, v8 - 48);
        ++*(v8 + 672);
      }
    }
  }

  if (!v8[772])
  {
    bzero(v37, 0x800uLL);
    if (concatPath(v37, 0x800uLL, v8 + 1028, v8 + 3280))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 238, 25, 0, "create output path", v24, v25, v32);
      ++*(v8 + 672);
    }

    v26 = *(v8 + 3092);
    if (v26)
    {
      v8[784] |= 2u;
      v8[786] = v8[774];
    }

    if ((v26 & 2) != 0)
    {
      v8[784] |= 4u;
      v8[787] = v8[775];
    }

    v27 = v8[785];
    if (v27 == 68)
    {
      if ((v26 & 4) == 0)
      {
        goto LABEL_41;
      }

      v28 = 776;
    }

    else
    {
      if (v27 != 70 || (v26 & 8) == 0)
      {
LABEL_41:
        result = yaa_setEntryAttributes(v37, v8 + 784, 0, v8[770]);
        if (result)
        {
          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 253, 25, 0, "set output attributes", v29, v30, v32);
          ++*(v8 + 672);
        }

        goto LABEL_43;
      }

      v28 = 777;
    }

    v8[784] |= 0x10u;
    v8[789] = v8[v28];
    goto LABEL_41;
  }

LABEL_43:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t directoryPatchBlob(uint64_t result, _DWORD *a2)
{
  if (!*(result + 5340))
  {
    *(result + 5344) = 0;
    v2 = *a2 & 0xDFDFDF;
    if (v2 == 5265474)
    {
      *(result + 5348) = 1;
      *(result + 5352) = *(result + 5328);
    }

    else if (v2 == 5521732)
    {
      *(result + 5344) = 1;
    }
  }

  return result;
}

size_t directoryPatchPayload(size_t result, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(result + 5328) += a3;
  if (!*(result + 5340))
  {
    v9 = result;
    if (*(result + 5344))
    {
      result = OArchiveFileStreamWrite(*(result + 5368), a2, a3, a4, a5, a6, a7, a8);
      if ((result & 0x8000000000000000) == 0)
      {
        return result;
      }

      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchPayload", 283, 25, 0, "write DAT blob", v10, v11, v8);
      a3 = 1;
      v12 = 5376;
    }

    else
    {
      if (!*(result + 5348))
      {
        return result;
      }

      v12 = 5360;
    }

    *(v9 + v12) += a3;
  }

  return result;
}

uint64_t ECC65537GetParity(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x1FFE0)
  {
    v4 = (a1 & 1) + a1;
    if (v4)
    {
      v5 = 0uLL;
      v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_2980690A0), vceqzq_s32(qword_2980690B0)));
      v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_298069090))));
      v8.i64[0] = 0xFFFF0000FFFFLL;
      v8.i64[1] = 0xFFFF0000FFFFLL;
      v9.i64[0] = 0x1000100010001;
      v9.i64[1] = 0x1000100010001;
      v10.i64[0] = 0x1000100010001;
      v10.i64[1] = 0x1000100010001;
      v11.i64[0] = 0x100000001;
      v11.i64[1] = 0x100000001;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v4 - 2;
        if (v4 <= a1)
        {
          v16 = *(a2 + v15);
        }

        else
        {
          v16 = *(a2 + v15);
        }

        v17 = vextq_s8(v5, v12, 0xCuLL);
        v18 = vextq_s8(v12, v13, 0xCuLL);
        v19 = vextq_s8(v13, v14, 0xCuLL);
        v20 = vdupq_laneq_s32(v14, 3);
        v21 = vextq_s8(qword_2980690B0, v5, 0xCuLL);
        v21.i32[0] = v16;
        v22 = vmulq_laneq_s32(ECC65537_G, v14, 3);
        v23 = vmulq_laneq_s32(unk_298069090, v14, 3);
        v24 = vmulq_laneq_s32(xmmword_2980690A0, v14, 3);
        v25 = vmulq_laneq_s32(qword_2980690B0, v14, 3);
        v26 = vceqzq_s32(v20);
        v27 = vuzp1q_s16(v26, v26);
        v28 = vuzp1q_s16(vceqzq_s32(v24), vceqzq_s32(v25));
        v29 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v22), vceqzq_s32(v23)));
        v30 = vsubq_s32(vandq_s8(v25, v8), vshrq_n_u32(v25, 0x10uLL));
        v31 = vsubq_s32(vandq_s8(v24, v8), vshrq_n_u32(v24, 0x10uLL));
        v32 = vsubq_s32(vandq_s8(v23, v8), vshrq_n_u32(v23, 0x10uLL));
        v33 = vsubq_s32(vandq_s8(v22, v8), vshrq_n_u32(v22, 0x10uLL));
        v34 = vand_s8(vand_s8(v7, v29), vmovn_s16(vmvnq_s8(v27)));
        *v27.i8 = vmovn_s16(vandq_s8(vbicq_s8(v6, v27), v28));
        v35 = vsubq_s32(v19, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v30, vandq_s8(vcgtq_u32(v30, v10), v9))));
        v36 = vsubq_s32(v18, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v31, vandq_s8(vcgtq_u32(v31, v10), v9))));
        v37 = vsubq_s32(v17, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v32, vandq_s8(vcgtq_u32(v32, v10), v9))));
        v38 = vsubq_s32(v21, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v33, vandq_s8(vcgtq_u32(v33, v10), v9))));
        v14 = vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v10), v9));
        v13 = vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v10), v9));
        v12 = vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v10), v9));
        v5 = vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v10), v9));
        v4 = v15;
      }

      while (v15);
    }

    else
    {
      v5 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    v39 = 0;
    v40 = 0;
    v44[0] = v5;
    v44[1] = v12;
    v44[2] = v13;
    v44[3] = v14;
    do
    {
      v41 = *(v44 + v39);
      if (v41)
      {
        v42 = 65537 - v41;
      }

      else
      {
        v42 = 0;
      }

      v40 |= (1 << v39) & (v42 << 15 >> 31);
      *(a3 + 2 * v39++) = v42;
    }

    while (v39 != 16);
    result = 0;
    *(a3 + 32) = v40;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ECC65537CheckAndFix(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v115 = *MEMORY[0x29EDCA608];
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_2980690A0), vceqzq_s32(qword_2980690B0)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_298069090))));
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    v13.i64[0] = 0x1000100010001;
    v13.i64[1] = 0x1000100010001;
    v14.i64[0] = 0x1000100010001;
    v14.i64[1] = 0x1000100010001;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = (a1 & 1) + a1;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = v16 - 2;
      if (v16 <= a1)
      {
        v21 = *(a2 + v20);
      }

      else
      {
        v21 = *(a2 + v20);
      }

      v22 = vextq_s8(v9, v17, 0xCuLL);
      v23 = vextq_s8(v17, v18, 0xCuLL);
      v24 = vextq_s8(v18, v19, 0xCuLL);
      v25 = vdupq_laneq_s32(v19, 3);
      v26 = vextq_s8(0, v9, 0xCuLL);
      v26.i32[0] = v21;
      v27 = vmulq_laneq_s32(ECC65537_G, v19, 3);
      v28 = vmulq_laneq_s32(unk_298069090, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_2980690A0, v19, 3);
      v30 = vmulq_laneq_s32(qword_2980690B0, v19, 3);
      v31 = vceqzq_s32(v25);
      v32 = vuzp1q_s16(v31, v31);
      v33 = vuzp1q_s16(vceqzq_s32(v29), vceqzq_s32(v30));
      v34 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v27), vceqzq_s32(v28)));
      v35 = vsubq_s32(vandq_s8(v30, v12), vshrq_n_u32(v30, 0x10uLL));
      v36 = vsubq_s32(vandq_s8(v29, v12), vshrq_n_u32(v29, 0x10uLL));
      v37 = vsubq_s32(vandq_s8(v28, v12), vshrq_n_u32(v28, 0x10uLL));
      v38 = vsubq_s32(vandq_s8(v27, v12), vshrq_n_u32(v27, 0x10uLL));
      v39 = vand_s8(vand_s8(v11, v34), vmovn_s16(vmvnq_s8(v32)));
      *v32.i8 = vmovn_s16(vandq_s8(vbicq_s8(v10, v32), v33));
      v40 = vsubq_s32(v24, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v14), v13))));
      v41 = vsubq_s32(v23, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v14), v13))));
      v42 = vsubq_s32(v22, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v14), v13))));
      v43 = vsubq_s32(v26, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v14), v13))));
      v19 = vaddq_s32(v40, vandq_s8(vcgtq_u32(v40, v14), v13));
      v18 = vaddq_s32(v41, vandq_s8(vcgtq_u32(v41, v14), v13));
      v17 = vaddq_s32(v42, vandq_s8(vcgtq_u32(v42, v14), v13));
      v9 = vaddq_s32(v43, vandq_s8(vcgtq_u32(v43, v14), v13));
      v16 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v44 = 0;
  v114[0] = v9;
  v114[1] = v17;
  v114[2] = v18;
  v114[3] = v19;
  v45 = xmmword_298069060;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_298069070;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x1000000010000;
  v49.i64[1] = 0x1000000010000;
  v50.i64[0] = 0x800000008;
  v50.i64[1] = 0x800000008;
  v51 = 0uLL;
  do
  {
    v52 = *a3++;
    v53 = vmovl_u16(*v52.i8);
    v54 = vmovl_high_u16(v52);
    v55 = &v114[v44];
    v56 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v45), v46)), v54, (*&v54 | __PAIR128__(0x1000000010000, 0x1000000010000))), v114[v44 + 1]);
    v57 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v47), v46)), v53, (*&v53 | __PAIR128__(0x1000000010000, 0x1000000010000))), v114[v44]);
    v58 = vminq_u32(vaddq_s32(v56, v49), v56);
    v59 = vminq_u32(vaddq_s32(v57, v49), v57);
    *v55 = v59;
    v55[1] = v58;
    v51 = vorrq_s8(v58, v51);
    v7 = vorrq_s8(v59, v7);
    v47 = vaddq_s32(v47, v50);
    v45 = vaddq_s32(v45, v50);
    v44 += 2;
  }

  while (v44 != 4);
  v60 = vorrq_s8(v7, v51);
  if (!*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)))
  {
    v103 = 0;
    goto LABEL_90;
  }

  v61 = calloc(1uLL, 0x4C0uLL);
  if (!v61)
  {
    v105 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc", v106, v107, v110);
    v103 = 0xFFFFFFFFLL;
    goto LABEL_90;
  }

  v62 = v61;
  v112 = a1;
  v113 = a2;
  v63 = 0;
  v64 = v8 >> 1;
  v65 = 1;
  do
  {
    v62[v63] = ecc65537PolyEval(16, v114, v65);
    v66 = (3 * v65) - ((3 * v65) >> 16);
    if (v66 + 65537 >= v66)
    {
      v65 = (3 * v65) - ((3 * v65) >> 16);
    }

    else
    {
      v65 = v66 + 65537;
    }

    ++v63;
  }

  while (v63 != 16);
  v67 = 0;
  v68 = v62 + 48;
  v69 = 48;
  do
  {
    v70 = &v62[v69];
    v71 = *&v62[v67];
    v72 = *&v62[v67 + 4];
    v70[8] = v62[v67 + 8];
    *v70 = v71;
    *(v70 + 1) = v72;
    v69 += 16;
    ++v67;
  }

  while (v67 != 8);
  v73 = ecc65537Triangulate(8, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((ecc65537Solve(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  v75 = 0;
  v76 = 0;
  v77 = v62 + 32;
  v78 = v64 + 16;
  v79 = 1;
  do
  {
    if (!ecc65537PolyEval(v74 + 1, (v62 + 16), v79) && v76 <= 7)
    {
      v77[v76++] = v75;
    }

    v80 = (3 * v79) - ((3 * v79) >> 16);
    if (v80 + 65537 >= v80)
    {
      v79 = (3 * v79) - ((3 * v79) >> 16);
    }

    else
    {
      v79 = v80 + 65537;
    }

    ++v75;
  }

  while (v78 != v75);
  if (v76 != v74)
  {
    goto LABEL_84;
  }

  v111 = a4;
  v81 = 0;
  v74 = v74;
  do
  {
    v82 = 0;
    do
    {
      v83 = v77[v82] * v81;
      if (v83)
      {
        v84 = 3;
        if (v83 < 0)
        {
          v84 = ecc65537Inv(3);
          v83 = -v83;
        }

        v85 = v83;
        v86 = 1;
        while (1)
        {
          if (v85)
          {
            if (v84 && v86 && !(v86 * v84))
            {
              v86 = 1;
            }

            else
            {
              v86 = (v86 * v84) - ((v86 * v84) >> 16);
              if (v86 + 65537 < v86)
              {
                v86 += 65537;
              }
            }
          }

          if (v85 < 2)
          {
            break;
          }

          v85 >>= 1;
          v87 = v84 * v84;
          if (v84)
          {
            v84 = 1;
            if (!v87)
            {
              continue;
            }
          }

          v88 = v87 - HIWORD(v87);
          if (v88 + 65537 >= v88)
          {
            v84 = v88;
          }

          else
          {
            v84 = v88 + 65537;
          }
        }
      }

      else
      {
        v86 = 1;
      }

      v68[v82 + (16 * v81)] = v86;
      ++v82;
    }

    while (v82 != v74);
    v89 = v62[v81];
    if (v89)
    {
      v90 = 65537 - v89;
    }

    else
    {
      v90 = 0;
    }

    v68[16 * v81++ + v74] = v90;
  }

  while (v81 != v74);
  if (ecc65537Triangulate(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v111;
    if ((ecc65537Solve(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = *(v91 - 8);
        if (v112 > 2 * v95)
        {
          v96 = 2 * v95;
          v97 = v96 + 2 <= v112 || v112 - v96 == 2;
          v98 = v97;
          if (v97)
          {
            v99 = *(v113 + v96);
          }

          else
          {
            v99 = *(v113 + v96);
          }

          v100 = v99 - *v91;
          if (v100 + 65537 < v100)
          {
            v100 += 65537;
          }

          if (HIWORD(v100))
          {
            goto LABEL_85;
          }

          v101 = v100 ^ v99;
          v92.i32[0] = v101;
          v92 = vcnt_s8(v92);
          v92.i16[0] = vaddlv_u8(v92);
          v94 += v92.i32[0];
          if (v101 <= 0xFF)
          {
            v102 = v93;
          }

          else
          {
            v102 = v93 + 1;
          }

          if (v101)
          {
            v93 = v102 + 1;
          }

          else
          {
            v93 = v102;
          }

          if (v98)
          {
            *(v113 + v96) = v100;
          }

          else
          {
            *(v113 + v96) = v100;
          }
        }

        ++v91;
        v103 = v93;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_84:
    v94 = 0;
    LODWORD(v93) = 0;
LABEL_85:
    v103 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v94 = 0;
  LODWORD(v93) = 0;
  v103 = 0xFFFFFFFFLL;
  a4 = v111;
LABEL_86:
  free(v62);
  if (a4 && (v103 & 0x80000000) == 0)
  {
    v104 = a4[1] + v93;
    *a4 += v94;
    a4[1] = v104;
  }

LABEL_90:
  v108 = *MEMORY[0x29EDCA608];
  return v103;
}

uint64_t ecc65537PolyEval(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 + 1;
  v6 = (a2 + 4 * a1 - 4);
  do
  {
    if (a3 && result && !(result * a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = (result * a3) - ((result * a3) >> 16);
      if (v7 + 65537 < v7)
      {
        v7 += 65537;
      }
    }

    v8 = *v6--;
    v9 = v7 + v8;
    if (v9 - 65537 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v9 - 65537;
    }

    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t ecc65537Triangulate(int a1, int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = a3 + 64;
  v7 = a3;
  v8 = 1;
  while (v4 >= a2)
  {
    LODWORD(v12) = v5;
LABEL_12:
    v5 = v3;
    if (v4 == a2)
    {
      return v5;
    }

    v14 = 16 * v3;
    if (v3 != v12 && a2 > 0)
    {
      v15 = 0;
      v16 = a3 + 64 * v12;
      do
      {
        v17 = *(v16 + v15);
        *(v16 + v15) = *(v7 + v15);
        *(v7 + v15) = v17;
        v15 += 4;
      }

      while (4 * a2 != v15);
    }

    if (++v3 < a1)
    {
      v18 = *(a3 + 4 * v14 + 4 * v4);
      v19 = a3 + 4 * v4;
      v20 = (a3 + 4 * v14 + 4 * (v4 + 1));
      v21 = v8;
      v22 = (v6 + 4 * (v4 + 1));
      do
      {
        v23 = *(v19 + (v21 << 6));
        if (v23)
        {
          *(v19 + (v21 << 6)) = 0;
          if (v4 + 1 < a2)
          {
            v24 = a2 - 1 - v4;
            v25 = v22;
            v26 = v20;
            do
            {
              if (v18 && (*v25 ? (v27 = *v25 * v18 == 0) : (v27 = 0), v27))
              {
                v28 = 1;
              }

              else
              {
                v28 = (*v25 * v18) - ((*v25 * v18) >> 16);
                if (v28 + 65537 < v28)
                {
                  v28 += 65537;
                }
              }

              v30 = *v26++;
              v29 = v30;
              v31 = v30 * v23;
              v32 = (v30 * v23) - ((v30 * v23) >> 16);
              v33 = v32 + 65537;
              if (v32 + 65537 >= v32)
              {
                v33 = v32;
              }

              if (v29)
              {
                v34 = v31 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v33 = 1;
              }

              v35 = v28 - v33;
              if (v35 + 65537 < v35)
              {
                v35 += 65537;
              }

              *v25 = v35;
              v25 += 2;
              --v24;
            }

            while (v24);
          }
        }

        ++v21;
        v22 += 32;
      }

      while (v21 != a1);
    }

    ++v8;
    v7 += 64;
    v6 += 64;
    if (v3 == a1)
    {
      return a1;
    }
  }

  v9 = v4;
  v10 = (v7 + 4 * v4);
  while (2)
  {
    v11 = v10;
    v12 = v3;
    do
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        v4 = v9;
        goto LABEL_12;
      }

      ++v12;
    }

    while (a1 != v12);
    ++v9;
    ++v10;
    if (v9 != a2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t ecc65537Solve(int a1, int *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0)
  {
    v26 = 0;
    *(a3 + 4 * a1) = 1;
  }

  else
  {
    v5 = a1;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 17;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      --v6;
    }

    while (v6);
    *(a3 + 4 * a1) = 1;
    v9 = a1;
    v10 = 17 * a1 - 16;
    v11 = a1;
    do
    {
      if (v11 <= v5)
      {
        v12 = 0;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(a3 + 4 * v14);
          v16 = a2[v13];
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 * v15 == 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = (v16 * v15) - ((v16 * v15) >> 16);
            if (v19 + 65537 < v19)
            {
              v19 += 65537;
            }
          }

          v20 = v19 + v12;
          if (v20 - 65537 >= v20)
          {
            v12 = v20;
          }

          else
          {
            v12 = v20 - 65537;
          }

          --v13;
          v21 = v11 < v14--;
        }

        while (v21);
      }

      else
      {
        v12 = 0;
      }

      v22 = ecc65537Inv(a2[17 * v11 - 17]);
      if (v12 && (v22 ? (v23 = v22 * v12 == 0) : (v23 = 0), v23))
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 * v12) - ((v22 * v12) >> 16);
        if (v24 + 65537 < v24)
        {
          v24 += 65537;
        }
      }

      if (65537 - v24 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = 65537 - v24;
      }

      *(a3 + 4 * (v11 - 1)) = v25;
      v10 -= 16;
      v21 = v11-- <= 1;
    }

    while (!v21);
    return 0;
  }

  return v26;
}

uint64_t ecc65537Inv(uint64_t a1)
{
  if (a1 == 1)
  {
    LODWORD(v1) = 1;
  }

  else
  {
    v2 = 0;
    v3 = 1;
    v4 = 65537;
    do
    {
      if (a1 <= v4)
      {
        v5 = -1;
        do
        {
          v6 = a1 << (v5 + 2);
          ++v5;
        }

        while (v6 <= v4);
        v4 = (v4 - (a1 << v5));
        v2 = (v2 - (v3 << v5));
      }

      v1 = v2;
      v7 = v4;
      v2 = v3;
      v3 = v1;
      v4 = a1;
      a1 = v7;
    }

    while (v7 != 1);
  }

  v8 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  }

  return v8 - ((((2147450881 * v9) >> 32) >> 15) | (((2147450881 * v9) >> 32) >> 15 << 16));
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

_WORD *enterThreadErrorContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v11 = calloc(1uLL, 0x2000uLL);
    if (v11)
    {
      v11[2] = 1;
      *(v11 + 18) = 531890176;

      return setThreadErrorContext(v11, v12, v13, v14, v15, v16, v17, v18, a9);
    }

    else
    {
      v19 = *__error();

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v19, "malloc", v20, v21, a9);
    }
  }

  return result;
}

size_t setThreadErrorContext(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_setspecific(ErrorContextKey, a1);
  if (result)
  {
    v12 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v12, "pthread_setspecific", v13, v14, a9);
  }

  return result;
}

uint64_t leaveThreadErrorContext(__CFError **a1, const __CFString **a2, int a3)
{
  userInfoValues[1] = *MEMORY[0x29EDCA608];
  ErrorContextKey = getErrorContextKey();
  v7 = pthread_getspecific(ErrorContextKey);
  if (v7)
  {
    v15 = v7;
    v16 = v7[2] - 1;
    v7[2] = v16;
    if (!v16)
    {
      v18 = v7[36];
      v17 = *v7;
      if (!v7[36] && (v17 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v34 = 0;
        do
        {
          v35 = strlen(userInfoKeys);
          if (v35 + 20 > 0x3FF)
          {
            break;
          }

          v36 = *&v15[2 * v34 + 4];
          if (v35)
          {
            snprintf(userInfoKeys + v35, 1024 - v35, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v34;
        }

        while (v34 < v15[3]);
        v37 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], userInfoKeys, 0x600u);
        if (!v37)
        {
          goto LABEL_46;
        }

        v38 = v37;
        if (a2)
        {
          *a2 = v37;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v37);
        v46 = calloc(1uLL, Length + 1);
        if (v46)
        {
          v47 = v46;
          CFStringGetCString(v38, v46, Length + 1, 0x600u);
          fprintf(*MEMORY[0x29EDCA610], "%s\n", v47);
          free(v47);
        }

        v44 = v38;
LABEL_45:
        CFRelease(v44);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v19 = calloc(v18 + 32, 1uLL);
      if (!v19)
      {
        goto LABEL_46;
      }

      v20 = v19;
      v21 = v19;
      if ((v17 & 0x80000000) != 0)
      {
        snprintf(v19, v18 + 32, "Error 0x%08x\n", v17);
        v21 = &v20[strlen(v20)];
      }

      v22 = v15[36];
      if (v15[36])
      {
        v23 = 0;
        do
        {
          v24 = (v15 + v23 + 76);
          v25 = *v24;
          v26 = v25 + v23;
          if (v25 < 4 || v26 > v22)
          {
            break;
          }

          v28 = v25 - 3;
          memcpy(v21, v24 + 1, v28);
          v29 = &v21[v28];
          *v29 = 10;
          v21 = v29 + 1;
          v23 = v26;
          v22 = v15[36];
        }

        while (v22 > v26);
      }

      if (v21 > v20)
      {
        *(v21 - 1) = 0;
      }

      v30 = *MEMORY[0x29EDB8ED8];
      v31 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v20, 0x600u);
      if (!v31)
      {
        free(v20);
        goto LABEL_46;
      }

      v32 = v31;
      userInfoKeys[0] = *MEMORY[0x29EDB8F58];
      userInfoValues[0] = v31;
      v33 = CFErrorCreateWithUserInfoKeysAndValues(v30, @"com.apple.ParallelCompression", 1, userInfoKeys, userInfoValues, 1);
      CFRelease(v32);
      free(v20);
      if (v33)
      {
        if (!a1)
        {
          v39 = CFErrorCopyDescription(v33);
          if (v39)
          {
            v40 = v39;
            v41 = CFStringGetLength(v39);
            v42 = calloc(1uLL, v41 + 1);
            if (v42)
            {
              v43 = v42;
              CFStringGetCString(v40, v42, v41 + 1, 0x600u);
              fprintf(*MEMORY[0x29EDCA610], "%s\n", v43);
              free(v43);
            }

            CFRelease(v40);
          }

          v44 = v33;
          goto LABEL_45;
        }

        *a1 = v33;
      }

LABEL_46:
      setThreadErrorContext(0, v8, v9, v10, v11, v12, v13, v14, v50);
      free(v15);
      goto LABEL_47;
    }
  }

  v17 = 0;
LABEL_47:
  v48 = *MEMORY[0x29EDCA608];
  return v17;
}

size_t appendThreadErrorContextString(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *saveThreadErrorContext(void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *restoreThreadErrorContext(__int128 *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t createThread(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v19, "malloc", v20, v21, v36[0]);
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v22, "malloc", v23, v24, v36[0]);
    v25 = __error();
    v13 = -*v25;
    if (!*v25)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    v17 = "pthread_attr_init";
    v18 = 558;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", v18, 5, v14, v17, v15, v16, v36[0]);
    goto LABEL_6;
  }

  if (a4)
  {
    v28 = pthread_attr_setstacksize(v11, a4);
    if (v28)
    {
      v13 = v28;
      v14 = *__error();
      v17 = "pthread_attr_setstacksize";
      v18 = 564;
      goto LABEL_5;
    }
  }

  v29 = pthread_self();
  qos_class_np = pthread_get_qos_class_np(v29, &__relative_priority[1], __relative_priority);
  if (qos_class_np)
  {
    v13 = qos_class_np;
    v14 = *__error();
    v17 = "pthread_get_qos_class_np";
    v18 = 570;
    goto LABEL_5;
  }

  v31 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
  if (v31)
  {
    v13 = v31;
    v14 = *__error();
    v17 = "pthread_attr_set_qos_class_np";
    v18 = 572;
    goto LABEL_5;
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 0x40000000;
  v36[2] = __createThread_block_invoke;
  v36[3] = &__block_descriptor_tmp;
  v36[4] = v9;
  v32 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v36);
  v9[2] = v32;
  if (v32)
  {
    *v9 = a2;
    v9[1] = a3;
    *(v9 + 7) = 1;
    *(v9 + 24) = 530317312;
    v13 = pthread_create(a1, v11, threadWrapperProc, v9);
    if (v13)
    {
      v14 = *__error();
      v17 = "pthread_create";
      v18 = 591;
      goto LABEL_5;
    }
  }

  else
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v33, "dispatch_block_create", v34, v35, v36[0]);
    v13 = -*__error();
  }

LABEL_6:
  pthread_attr_destroy(v11);
  free(v11);
  if (!v13)
  {
    return v13;
  }

LABEL_10:
  v26 = v9[2];
  if (v26)
  {
    _Block_release(v26);
  }

  free(v9);
  return v13;
}

uint64_t threadWrapperProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  setThreadErrorContext((a1 + 24), a2, a3, a4, a5, a6, a7, a8, v17);
  (*(*(a1 + 16) + 16))();
  setThreadErrorContext(0, v9, v10, v11, v12, v13, v14, v15, v18);
  return a1;
}

uint64_t joinThread(_opaque_pthread_t *a1)
{
  v23 = 0;
  if (pthread_join(a1, &v23))
  {
    joinThread_cold_1();
  }

  v3 = v23;
  if (*(v23 + 14) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread", v1, v2, v22);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  ErrorContextKey = getErrorContextKey();
  v5 = pthread_getspecific(ErrorContextKey);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
    v8 = v3[6];
    if (v8 < 0)
    {
      *v5 = v8;
      v7 = v8;
    }
  }

  v9 = *(v3 + 48);
  if (!*(v3 + 48))
  {
LABEL_14:
    if (v7)
    {
      v13 = 0;
      *(v6 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v3 + 15))
    {
      v15 = 0;
      v16 = *(v6 + 3);
      LODWORD(v17) = 16 - v16;
      if (v16 <= 0x10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v6[v16 + 2];
      v19 = v16 + 1;
      while (v17 != v15)
      {
        v13 = 0;
        *(v18 + 4 * v15) = v3[v15 + 8];
        *(v6 + 3) = v19 + v15++;
        if (v15 >= *(v3 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (v3 + v11 + 100);
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v10 += v13;
    if (v10 > v9)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 36);
    if (v14 + v13 <= *(v6 + 37))
    {
      memcpy(v6 + v14 + 76, v12, *v12);
      *(v6 + 36) += v13;
      v11 = v10;
      v9 = *(v3 + 48);
      if (v9 > v10)
      {
        continue;
      }
    }

    v7 = *v6;
    goto LABEL_14;
  }

LABEL_26:
  v20 = *(v3 + 2);
  if (v20)
  {
    _Block_release(v20);
  }

  free(v3);
  return v13;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return gErrorContextKey;
}

uint64_t createErrorContextKey()
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v1 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

size_t PCompressLZMA6Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZMADecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t PCompressZLIB5Encode(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t PCompressZLIBDecode(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t load_variants(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = (a2 + 16);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = v6;
    if (v4)
    {
      v8 = (*(a2 + 8) + 8 * v4 - 8);
    }

    v9 = rawimg_create_with_path(*v8);
    *(a1 + 8 * v4) = v9;
    if (!v9)
    {
      v22 = "rawimg_create_with_file";
      v23 = 37;
      goto LABEL_26;
    }

    if ((rawimg_get_digests(v9, *(a2 + 36), 0, 0) & 0x80000000) != 0)
    {
      break;
    }

    v12 = *(a1 + 8 * v4);
    if (v4 < 2)
    {
LABEL_19:
      *(a1 + 8 * v5++) = v12;
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = *(a1 + 8 * v13);
        v15 = v14[261];
        v16 = v14[262];
        v17 = v14[263];
        v18 = v14[264];
        v19 = v12[261] == v15 && v12[262] == v16;
        v20 = v19 && v12[263] == v17;
        if (v20 && v12[264] == v18)
        {
          break;
        }

        if (v4 == ++v13)
        {
          goto LABEL_19;
        }
      }

      rawimg_destroy(v12);
      if (*(a2 + 40))
      {
        fprintf(*v7, "ImageDiff: Removed non-unique input variant <%s>.\n", *(*(a1 + 8 * v4) + 2048));
      }
    }

    if (++v4 > *a2)
    {
      return v5;
    }
  }

  v22 = "rawimg_get_digests";
  v23 = 38;
LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", v23, 134, 0, v22, v10, v11, v25);
  return 0;
}

uint64_t patch_write_controls(AAByteStream_impl *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = AAByteStreamSeek(a1, 0, 1);
  *(a3 + 38) = v8;
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 331, 134, 0, "AAByteStreamSeek", v9, v10, v33);
    v20 = 0;
    v16 = 0;
  }

  else
  {
    v11 = *(a4 + 40);
    if (v11 <= 3)
    {
      v12 = v11 << 62;
    }

    else
    {
      v12 = 0xC000000000000000;
    }

    v13 = AACompressionOutputStreamOpen(a1, 0x306u, 0x100000uLL, v12, *(a4 + 36));
    v16 = v13;
    if (v13)
    {
      v17 = a2[2];
      if (v17 < 2)
      {
        v21 = a2[3];
        v18 = (v21 + 56);
        v19 = (v21 + 40);
      }

      else
      {
        v18 = (a2 + 11);
        v19 = (a2 + 9);
      }

      v22 = *v18;
      *(a3 + 18) = v22;
      v20 = *v19;
      if (*(v13 + 3))
      {
        v23 = 8 * v17 + 16;
        v24 = v23 * v22;
        if (!(v23 * v22))
        {
          goto LABEL_19;
        }

        v25 = 0;
        v26 = *v19;
        v27 = v23 * v22;
        while (1)
        {
          v28 = (*(v16 + 3))(*v16, v26, v27);
          if (v28 < 1)
          {
            break;
          }

          v26 += v28;
          v25 += v28;
          v27 -= v28;
          if (!v27)
          {
            goto LABEL_18;
          }
        }

        v25 = v28;
LABEL_18:
        if (v24 == v25)
        {
LABEL_19:
          v29 = 0;
          goto LABEL_22;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 350, 134, 0, "aaByteStreamWriteExpected", v14, v15, v33);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 335, 134, 0, "AACompressionOutputStreamOpen", v14, v15, v33);
      v20 = 0;
    }
  }

  v29 = 1;
LABEL_22:
  if (AAByteStreamClose(v16) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 353, 134, 0, "AAByteStreamClose", v30, v31, v33);
  }

  else if (!v29)
  {
    return v20;
  }

  return 0;
}

uint64_t RawImageDiff(uint64_t a1)
{
  v324 = *MEMORY[0x29EDCA608];
  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  v317 = 0u;
  if (!*(a1 + 36))
  {
    *(a1 + 36) = getDefaultNThreads();
  }

  if (*(a1 + 40))
  {
    v2 = MEMORY[0x29EDCA610];
    fwrite("ImageDiff\n", 0xAuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 8) + 8 * v4);
        if (v5)
        {
          fprintf(*v2, "  Input %zu: %s\n", v4, v5);
          v3 = *a1;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    if (*(a1 + 16))
    {
      fprintf(*v2, "  Output: %s\n", *(a1 + 16));
    }

    if (*(a1 + 24))
    {
      fprintf(*v2, "  Patch: %s\n", *(a1 + 24));
    }

    if (*(a1 + 32))
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    fprintf(*v2, "  In-place: %s\n", v6);
  }

  v7 = *a1 + 1;
  if (v7 > 0x400000000)
  {
    *__error() = 12;
LABEL_105:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 592, 134, 0, "aaCalloc", v8, v9, v283);
    v107 = 0xFFFFFFFFLL;
    goto LABEL_127;
  }

  v10 = calloc(v7, 8uLL);
  if (!v10)
  {
    goto LABEL_105;
  }

  v11 = v10;
  variants = load_variants(v10, a1);
  if (!variants)
  {
    v108 = "load_variants";
    v109 = 596;
    goto LABEL_123;
  }

  *a1 = variants - 1;
  if ((rawimg_set_fork_types(v11, variants, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    v108 = "rawimg_set_fork_types";
    v109 = 600;
    goto LABEL_123;
  }

  v19 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v20 = *a1 & 0x7FFFFFFFLL;
    do
    {
      rawimg_show(v11[v20], v20 == 0, *(a1 + 40));
      --v20;
    }

    while (v20 != -1);
    v19 = *a1;
  }

  v21 = *v11;
  v315 = (*(*v11 + 2120) / 0x64uLL + 0x2000000);
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  v323 = 0u;
  *(&v317 + 4) = vrev64_s32(*(a1 + 36));
  *&v318 = v19;
  if (v19 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  if (!is_mul_ok(v22, 0x50uLL) || 80 * v22 >= 0x2000000001)
  {
    *__error() = 12;
    *(&v318 + 1) = 0;
    goto LABEL_109;
  }

  v23 = calloc(v22, 0x50uLL);
  *(&v318 + 1) = v23;
  if (!v23)
  {
LABEL_109:
    v110 = *__error();
    v113 = 205;
LABEL_110:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v113, 134, v110, "aaCalloc", v111, v112, v283);
    v50 = 0;
    v42 = 0;
    v35 = 0;
LABEL_111:
    v69 = 0;
    v65 = 0;
    v58 = 0;
    goto LABEL_112;
  }

  v24 = v23;
  if (v19)
  {
    v25 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = vdupq_n_s64(v19 - 1);
    v27 = xmmword_2980690D0;
    v28 = xmmword_2980690E0;
    v29 = v23 + 196;
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v26, v28));
      if (vuzp1_s16(v31, *v26.i8).u8[0])
      {
        *(v29 - 40) = 1;
      }

      if (vuzp1_s16(v31, *&v26).i8[2])
      {
        *(v29 - 20) = 1;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
      {
        *v29 = 1;
        v29[20] = 1;
      }

      v27 = vaddq_s64(v27, v30);
      v28 = vaddq_s64(v28, v30);
      v29 += 80;
      v25 -= 4;
    }

    while (v25);
  }

  if (!*a1)
  {
    v255 = calloc(1uLL, 0x18uLL);
    *(v24 + 5) = v255;
    if (v255)
    {
      v50 = 0;
      v42 = 0;
      v35 = 0;
      v69 = 0;
      v65 = 0;
      v58 = 0;
      v256 = *(v21 + 2080);
      if (v256 < 0)
      {
        v256 = 0x8000000000000000 - v256;
      }

      v255[1] = v256;
      v114 = 1;
      *(v24 + 7) = 1;
      goto LABEL_113;
    }

    v110 = *__error();
    v113 = 213;
    goto LABEL_110;
  }

  v32 = AAFileStreamOpenWithPath(*(v21 + 2048), 0, 0);
  v35 = v32;
  if (!v32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 223, 134, 0, "AAFileStreamOpenWithPath", v33, v34, v283);
    v50 = 0;
    v42 = 0;
    goto LABEL_111;
  }

  v36 = aaSegmentStreamOpen(v32, v21);
  v42 = v36;
  if (!v36)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 225, 134, 0, "aaSegmentStreamOpen", v40, v41, v283);
    v50 = 0;
    goto LABEL_111;
  }

  v50 = aaForkInputStreamOpen(v36, v21, 0, v37, v38, v39, v40, v41);
  if (!v50)
  {
    v259 = "aaForkInputStreamOpen";
    v260 = 227;
LABEL_302:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v260, 134, 0, v259, v48, v49, v283);
    goto LABEL_111;
  }

  v51 = 0;
  while (1)
  {
    if (v51 >= v318)
    {
      if (v318 < 2)
      {
LABEL_355:
        v69 = 0;
        v65 = 0;
        v58 = 0;
        v114 = 1;
        goto LABEL_113;
      }

      if (bxdiff5CreateComboControls(&v317, v43, v44, v45, v46, v47, v48, v49))
      {
        v259 = "bxdiff5CreateComboControls";
        v260 = 270;
        goto LABEL_302;
      }

      if ((controls_combo_enforce_copy_fork_boundary(*v11, &v317, v271, v272, v273, v274, v48, v49) & 0x80000000) == 0)
      {
        if (*(a1 + 40))
        {
          fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Constructed %zd combo controls.\n", *(&v322 + 1));
        }

        goto LABEL_355;
      }

      v259 = "controls_combo_enforce_copy_fork_boundary";
      v260 = 272;
      goto LABEL_302;
    }

    v52 = v42;
    v313 = v51;
    v53 = (v51 + 1);
    v54 = v11[v51 + 1];
    v55 = AAFileStreamOpenWithPath(*(v54 + 2048), 0, 0);
    v58 = v55;
    if (!v55)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 236, 134, 0, "AAFileStreamOpenWithPath", v56, v57, v283);
      v69 = 0;
      v65 = 0;
LABEL_329:
      v114 = 0;
      v42 = v52;
      goto LABEL_113;
    }

    v59 = aaSegmentStreamOpen(v55, v54);
    v65 = v59;
    if (!v59)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 238, 134, 0, "aaSegmentStreamOpen", v63, v64, v283);
      v69 = 0;
      goto LABEL_329;
    }

    v309 = v53;
    v66 = aaForkInputStreamOpen(v59, v54, 0, v60, v61, v62, v63, v64);
    v69 = v66;
    if (!v66)
    {
      v275 = "aaForkInputStreamOpen";
      v276 = 240;
LABEL_328:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v276, 134, 0, v275, v67, v68, v283);
      goto LABEL_329;
    }

    v311 = v54;
    if ((GetLargeFileControlsWithStreams(v66, *(v54 + 2072), v50, *(v21 + 2072), (*(&v318 + 1) + 80 * v313 + 40), (*(&v318 + 1) + 80 * v313 + 56), &v317) & 0x80000000) != 0)
    {
      v275 = "GetLargeFileControlsWithStreams";
      v276 = 246;
      goto LABEL_328;
    }

    v70 = *(v21 + 2160);
    v42 = v52;
    if (v70)
    {
      v71 = *(&v318 + 1) + 80 * v313;
      v72 = *(v71 + 56);
      if (!v72)
      {
        v261 = "empty controls";
        v262 = 124;
LABEL_304:
        v263 = 0;
        goto LABEL_305;
      }

      if ((*(v21 + 2128) & 0x10) == 0 || (v311[2128] & 0x10) == 0)
      {
        v261 = "no digests found";
        v262 = 126;
        goto LABEL_304;
      }

      v73 = 24 * (v72 + v70);
      if (v73 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_342;
      }

      v307 = v50;
      v74 = v35;
      v305 = *(a1 + 40);
      v75 = *(v71 + 40);
      v76 = realloc(v75, v73);
      if (!v76)
      {
        free(v75);
        v35 = v74;
        v50 = v307;
LABEL_342:
        *(v71 + 40) = 0;
        v263 = *__error();
        v261 = "aaReallocf";
        v262 = 130;
LABEL_305:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", v262, 134, v263, v261, v67, v68, v283);
        v264 = "controls_append_copy_forks";
        v265 = 250;
LABEL_306:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v265, 134, 0, v264, v102, v103, v283);
        goto LABEL_112;
      }

      *(v71 + 40) = v76;
      v77 = *(v71 + 56);
      if (v77)
      {
        v78 = 0;
        v79 = (v76 + 16);
        v80 = *(v71 + 56);
        v68 = 0x8000000000000000;
        v35 = v74;
        do
        {
          v81 = *(v79 - 2);
          if (v81 < 0)
          {
            v81 = 0x8000000000000000 - v81;
          }

          v83 = *v79;
          v79 += 3;
          v82 = v83;
          v84 = 0x8000000000000000 - v83;
          if (v83 < 0)
          {
            v82 = v84;
          }

          v78 += v81 + v82;
          --v80;
        }

        while (v80);
      }

      else
      {
        v78 = 0;
        v68 = 0x8000000000000000;
        v35 = v74;
      }

      v85 = *(v21 + 2160);
      v50 = v307;
      if (v85)
      {
        v86 = 0;
        v87 = *(v21 + 2144);
        do
        {
          v88 = v87 + 129 * v86;
          if ((*(v88 + 104) & 2) != 0)
          {
            v89 = *(v311 + 270);
            if (!v89)
            {
              goto LABEL_303;
            }

            v90 = *(v311 + 268);
            while (1)
            {
              if ((*(v90 + 104) & 2) != 0 && *(v90 + 88) == *(v88 + 88) && *(v90 + 96) == *(v88 + 96))
              {
                v91 = *(v90 + 32);
                if (v91 == *(v88 + 32))
                {
                  v67 = *(v88 + 24);
                  v92 = *v90 == *v88 && *(v90 + 8) == *(v88 + 8);
                  v93 = v92 && *(v90 + 16) == *(v88 + 16);
                  if (v93 && *(v90 + 24) == v67)
                  {
                    break;
                  }
                }
              }

              v90 += 129;
              if (!--v89)
              {
                goto LABEL_303;
              }
            }

            v95 = *(v90 + 48);
            if (v95 < 0)
            {
LABEL_303:
              v261 = "copy fork not found";
              v262 = 161;
              goto LABEL_304;
            }

            v96 = &v76[24 * v77];
            v97 = 0x8000000000000000 - v91;
            if (v91 >= 0)
            {
              v97 = v91;
            }

            v98 = *(v96 - 1);
            if (v98 < 0)
            {
              v98 = 0x8000000000000000 - v98;
            }

            *(v71 + 56) = ++v77;
            v96[1] = 0;
            v96[2] = 0;
            v99 = v95 - v78;
            v100 = __OFADD__(v98, v99);
            v101 = v98 + v99;
            if (v101 < 0 != v100)
            {
              v101 = 0x8000000000000000 - v101;
            }

            *(v96 - 1) = v101;
            *v96 = v97;
            v78 = v95 + v91;
            v85 = *(v21 + 2160);
          }

          ++v86;
        }

        while (v86 < v85);
      }

      if (v305 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Processed copy forks: %zd controls\n", v77);
      }
    }

    if ((*(a1 + 32) & 1) != 0 && (rawimg_force_in_place((*(&v318 + 1) + 80 * v313 + 40), (*(&v318 + 1) + 80 * v313 + 56), v311, v21, v315, *(a1 + 40)) & 0x80000000) != 0)
    {
      v264 = "rawimg_force_in_place";
      v265 = 258;
      goto LABEL_306;
    }

    if (AAByteStreamClose(v69) < 0)
    {
      v264 = "AAByteStreamClose";
      v265 = 262;
      goto LABEL_306;
    }

    if (AAByteStreamClose(v65) < 0)
    {
      break;
    }

    v106 = AAByteStreamClose(v58);
    v51 = v309;
    if (v106 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 264, 134, 0, "AAByteStreamClose", v48, v49, v283);
      v69 = 0;
      v65 = 0;
      goto LABEL_112;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 263, 134, 0, "AAByteStreamClose", v104, v105, v283);
  v69 = 0;
LABEL_112:
  v114 = 0;
LABEL_113:
  if (AAByteStreamClose(v50) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 280, 134, 0, "AAByteStreamClose", v115, v116, v283);
    v114 = 0;
  }

  if (AAByteStreamClose(v42) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 281, 134, 0, "AAByteStreamClose", v117, v118, v283);
    if ((AAByteStreamClose(v35) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_121:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 282, 134, 0, "AAByteStreamClose", v119, v120, v283);
    goto LABEL_122;
  }

  if (AAByteStreamClose(v35) < 0)
  {
    goto LABEL_121;
  }

  if (!v114)
  {
LABEL_122:
    AAByteStreamClose(v69);
    AAByteStreamClose(v65);
    AAByteStreamClose(v58);
    BXDiff5Data_free(&v317);
    v108 = "controls_create_with_variants";
    v109 = 612;
    goto LABEL_123;
  }

  v121 = 8 * *a1 + 62;
  if (v121 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_292;
  }

  v125 = *(a1 + 32);
  v126 = calloc(1uLL, 8 * *a1 + 62);
  if (!v126)
  {
LABEL_292:
    v252 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 515, 134, *v252, "aaCalloc", v253, v254, v283);
    v127 = 0;
    v132 = 0;
    goto LABEL_314;
  }

  v127 = v126;
  *v126 = 0x3031464649444952;
  *(v126 + 4) = *a1 + 1;
  *(v126 + 10) = v125 & 1;
  if (v125)
  {
    v128 = v315;
  }

  else
  {
    v128 = 0;
  }

  *(v126 + 26) = v128;
  *(v126 + 30) = v121;
  v129 = AAFileStreamOpenWithPath(*(a1 + 24), 1537, 0x1A4u);
  v132 = v129;
  if (!v129)
  {
    v257 = "AAFileStreamOpenWithPath";
    v258 = 526;
    goto LABEL_313;
  }

  if (AAByteStreamSeek(v129, v121, 0) < 0)
  {
    v257 = "AAByteStreamSeek";
    v258 = 527;
    goto LABEL_313;
  }

  v133 = *(a1 + 40);
  if (v133 <= 3)
  {
    v134 = v133 << 62;
  }

  else
  {
    v134 = 0xC000000000000000;
  }

  v140 = AACompressionOutputStreamOpen(v132, 0x306u, 0x100000uLL, v134, *(a1 + 36));
  if (!v140)
  {
    v266 = "AACompressionOutputStreamOpen";
    v267 = 305;
    goto LABEL_310;
  }

  v141 = 0;
  do
  {
    if ((rawimg_save_to_stream(v140, v11[v141], v141 == 0, v135, v136, v137, v138, v139) & 0x80000000) != 0)
    {
      v266 = "rawimg_save_to_stream";
      v267 = 311;
LABEL_310:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", v267, 134, 0, v266, v138, v139, v283);
      if ((AAByteStreamClose(v140) & 0x80000000) == 0)
      {
LABEL_312:
        v257 = "patch_write_metadata";
        v258 = 530;
        goto LABEL_313;
      }

LABEL_311:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 315, 134, 0, "AAByteStreamClose", v130, v131, v283);
      goto LABEL_312;
    }

    ++v141;
  }

  while (v141 <= *a1);
  if (AAByteStreamClose(v140) < 0)
  {
    goto LABEL_311;
  }

  v142 = patch_write_controls(v132, &v317, v127, a1);
  if (!v142)
  {
    v257 = "patch_write_controls";
    v258 = 534;
    goto LABEL_313;
  }

  v143 = 0;
  v144 = v127 + 46;
  v293 = v142;
  do
  {
    v145 = v11[v143];
    v301 = *v11;
    v146 = AAByteStreamSeek(v132, 0, 1);
    v300 = (v144 + 8 * v143);
    *v300 = v146;
    if (v146 < 0)
    {
      v165 = 383;
      v166 = "AAByteStreamSeek";
LABEL_157:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v165, 134, 0, v166, v147, v148, v283);
      v310 = 0;
      v312 = 0;
      v314 = 0;
      v316 = 0;
      v303 = 0;
      v304 = 0;
      v306 = 0;
      v308 = 0;
      v167 = 0;
      v168 = 0;
      goto LABEL_250;
    }

    v149 = *(a1 + 40);
    if (v149 <= 3)
    {
      v150 = v149 << 62;
    }

    else
    {
      v150 = 0xC000000000000000;
    }

    s = AACompressionOutputStreamOpen(v132, 0x306u, 0x100000uLL, v150, *(a1 + 36));
    if (!s)
    {
      v165 = 387;
      v166 = "AACompressionOutputStreamOpen";
      goto LABEL_157;
    }

    if (v143)
    {
      v151 = AAFileStreamOpenWithPath(*(v145 + 2048), 0, 0);
      if (v151)
      {
        v308 = v151;
        v154 = aaSegmentStreamOpen(v151, v145);
        if (v154)
        {
          v306 = v154;
          v314 = aaForkInputStreamOpen(v154, v145, 0, v155, v156, v157, v158, v159);
          if (!v314)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 398, 134, 0, "aaForkInputStreamOpen", v160, v161, v283);
            v310 = 0;
            v312 = 0;
            v314 = 0;
            v316 = 0;
            goto LABEL_247;
          }

          v310 = malloc(0x10000uLL);
          if (!v310)
          {
            v162 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 400, 134, *v162, "aaMalloc", v163, v164, v283);
            v310 = 0;
            v312 = 0;
LABEL_243:
            v316 = 0;
LABEL_247:
            v303 = 0;
            v304 = 0;
            goto LABEL_248;
          }

          goto LABEL_159;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 396, 134, 0, "aaSegmentStreamOpen", v158, v159, v283);
        v310 = 0;
        v312 = 0;
        v314 = 0;
        v316 = 0;
        v303 = 0;
        v304 = 0;
        v306 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 394, 134, 0, "AAFileStreamOpenWithPath", v152, v153, v283);
        v310 = 0;
        v312 = 0;
        v314 = 0;
        v316 = 0;
        v303 = 0;
        v304 = 0;
        v306 = 0;
        v308 = 0;
      }

LABEL_248:
      v168 = 0;
      goto LABEL_249;
    }

    v308 = 0;
    v310 = 0;
    v314 = 0;
    v306 = 0;
LABEL_159:
    v169 = v301;
    v170 = AAFileStreamOpenWithPath(*(v301 + 2048), 0, 0);
    if (!v170)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 405, 134, 0, "AAFileStreamOpenWithPath", v171, v172, v283);
      v312 = 0;
      goto LABEL_243;
    }

    v304 = v170;
    v173 = aaSegmentStreamOpen(v170, v301);
    if (!v173)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 407, 134, 0, "aaSegmentStreamOpen", v177, v178, v283);
      v312 = 0;
      v316 = 0;
      v303 = 0;
      goto LABEL_248;
    }

    v303 = v173;
    v316 = aaForkInputStreamOpen(v173, v301, 0, v174, v175, v176, v177, v178);
    if (!v316)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 409, 134, 0, "aaForkInputStreamOpen", v179, v180, v283);
      v312 = 0;
      v316 = 0;
      goto LABEL_248;
    }

    v181 = malloc(0x10000uLL);
    if (!v181)
    {
      v238 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 411, 134, *v238, "aaMalloc", v239, v240, v283);
      v312 = 0;
      goto LABEL_248;
    }

    v312 = v181;
    v184 = v293;
    if (!*(v127 + 18))
    {
      v187 = 0;
      v186 = 0;
LABEL_270:
      if (v186 != *(v169 + 2080))
      {
        v244 = 472;
        v245 = "bad controls";
        goto LABEL_279;
      }

      v241 = v187;
      if (AAByteStreamClose(s) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 475, 134, 0, "AAByteStreamClose", v242, v243, v283);
        v168 = 0;
      }

      else
      {
        v168 = 1;
      }

      v248 = AAByteStreamSeek(v132, 0, 1);
      v300[1] = v248;
      if (v248 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 480, 134, 0, "AAByteStreamSeek", v249, v250, v283);
        v167 = 0;
        v168 = 0;
LABEL_290:
        v144 = v127 + 46;
      }

      else
      {
        if (*(a1 + 40) >= 2)
        {
          v251 = "Diff";
          if (!v143)
          {
            v251 = "Literal";
          }

          fprintf(*MEMORY[0x29EDCA610], "%s stream: %llu bytes -> %llu bytes\n", v251, v241, v248 - *v300);
        }

        v167 = 0;
        v144 = v127 + 46;
      }

      goto LABEL_250;
    }

    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    while (1)
    {
      v289 = v188;
      v288 = (v184 + 8 * (v188 + v188 * *(v127 + 8)));
      v189 = v288[1];
      v190 = 0x8000000000000000 - *v288;
      if ((*v288 & 0x8000000000000000) == 0)
      {
        v190 = *v288;
      }

      v191 = 0x8000000000000000 - v189;
      if (v189 >= 0)
      {
        v191 = v288[1];
      }

      if (!v143)
      {
        break;
      }

      v286 = v191;
      v192 = *(v169 + 2072);
      if (v186 < v192 && v190 + v186 > v192)
      {
        v246 = 427;
        v247 = "bad controls";
LABEL_281:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v246, 134, 0, v247, v182, v183, v283);
        goto LABEL_248;
      }

      v193 = v186 >= v192;
      if (v186 >= v192)
      {
        v194 = v190 + v186;
      }

      else
      {
        v194 = v186;
      }

      if (v186 >= v192)
      {
        v195 = v190;
      }

      else
      {
        v195 = 0;
      }

      v294 = v194;
      v296 = v195 + v185;
      v284 = v187;
      if (!v193 && v190)
      {
        v196 = v190;
        v290 = v190;
        while (1)
        {
          v291 = v196;
          if (v196 >= 0x10000)
          {
            v197 = 0x10000;
          }

          else
          {
            v197 = v196;
          }

          if (!*(v314 + 4))
          {
            goto LABEL_275;
          }

          v198 = 0;
          v199 = v310;
          v200 = v296;
          v298 = v197;
          while (1)
          {
            v201 = (*(v314 + 4))(*v314, v199, v197, v200);
            if (v201 < 0)
            {
              break;
            }

            if (v201)
            {
              v199 += v201;
              v198 += v201;
              v200 += v201;
              v197 -= v201;
              if (v197)
              {
                continue;
              }
            }

            goto LABEL_191;
          }

          v198 = v201;
LABEL_191:
          v202 = v298;
          if (v298 != v198)
          {
LABEL_275:
            v244 = 442;
            goto LABEL_278;
          }

          v203 = v312;
          if (!*(v316 + 4))
          {
            goto LABEL_277;
          }

          v204 = 0;
          v205 = v294;
          while (1)
          {
            v206 = (*(v316 + 4))(*v316, v203, v202, v205);
            if (v206 < 0)
            {
              break;
            }

            if (v206)
            {
              v203 += v206;
              v204 += v206;
              v205 += v206;
              v202 -= v206;
              if (v202)
              {
                continue;
              }
            }

            goto LABEL_199;
          }

          v204 = v206;
LABEL_199:
          v207 = v298;
          v208 = v312;
          if (v298 != v204)
          {
LABEL_277:
            v244 = 443;
            goto LABEL_278;
          }

          v209 = 0;
          v210 = v298 <= 1 ? 1 : v298;
          v144 = v127 + 46;
          do
          {
            v312[v209] -= v310[v209];
            ++v209;
          }

          while (v210 != v209);
          if (!*(s + 3))
          {
            break;
          }

          v211 = 0;
          while (1)
          {
            v212 = (*(s + 3))(*s, v208, v207);
            if (v212 < 1)
            {
              break;
            }

            v208 += v212;
            v211 += v212;
            v207 -= v212;
            if (!v207)
            {
              goto LABEL_211;
            }
          }

          v211 = v212;
LABEL_211:
          v181 = v312;
          if (v298 != v211)
          {
            break;
          }

          v296 += v298;
          v294 += v298;
          v196 = v291 - v298;
          v190 = v290;
          if (v291 == v298)
          {
            goto LABEL_213;
          }
        }

        v246 = 447;
        v247 = "aaByteStreamWriteExpected";
        goto LABEL_281;
      }

LABEL_213:
      v213 = v288[v143 + 1];
      if (v213 < 0)
      {
        v213 = 0x8000000000000000 - v213;
      }

      v185 = v213 + v296;
      v187 = v284;
      v186 = v294 + v286;
      v169 = v301;
LABEL_239:
      v187 += v190;
      v188 = v289 + 1;
      v184 = v293;
      if ((v289 + 1) >= *(v127 + 18))
      {
        goto LABEL_270;
      }
    }

    v186 += v190;
    if (!v191)
    {
      v190 = 0;
      goto LABEL_239;
    }

    v292 = v185;
    v285 = v187;
    v287 = v191;
    v214 = v191;
    while (1)
    {
      v297 = v214;
      v215 = v214 >= 0x10000 ? 0x10000 : v214;
      if (!*(v316 + 4))
      {
        break;
      }

      v216 = 0;
      v217 = v181;
      v295 = v186;
      v218 = v186;
      v299 = v215;
      while (1)
      {
        v219 = (*(v316 + 4))(*v316, v217, v215, v218);
        if (v219 < 0)
        {
          break;
        }

        if (v219)
        {
          v217 += v219;
          v216 += v219;
          v218 += v219;
          v215 -= v219;
          if (v215)
          {
            continue;
          }
        }

        goto LABEL_228;
      }

      v216 = v219;
LABEL_228:
      v220 = v299;
      v221 = v312;
      if (v299 != v216)
      {
        break;
      }

      if (!*(s + 3))
      {
        goto LABEL_276;
      }

      v222 = 0;
      while (1)
      {
        v223 = (*(s + 3))(*s, v221, v220);
        if (v223 < 1)
        {
          break;
        }

        v221 += v223;
        v222 += v223;
        v220 -= v223;
        if (!v220)
        {
          goto LABEL_235;
        }
      }

      v222 = v223;
LABEL_235:
      v181 = v312;
      if (v299 != v222)
      {
LABEL_276:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 467, 134, 0, "aaByteStreamWriteExpected", v182, v183, v283);
        v168 = 0;
        v167 = s;
        goto LABEL_290;
      }

      v186 = v299 + v295;
      v214 = v297 - v299;
      if (v297 == v299)
      {
        v187 = v285;
        v190 = v287;
        v144 = v127 + 46;
        v169 = v301;
        v185 = v292;
        goto LABEL_239;
      }
    }

    v244 = 466;
LABEL_278:
    v245 = "aaByteStreamPReadExpected";
LABEL_279:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v244, 134, 0, v245, v182, v183, v283);
    v168 = 0;
    v144 = v127 + 46;
LABEL_249:
    v167 = s;
LABEL_250:
    if (AAByteStreamClose(v167) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 489, 134, 0, "AAByteStreamClose", v224, v225, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v314) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 490, 134, 0, "AAByteStreamClose", v226, v227, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v306) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 491, 134, 0, "AAByteStreamClose", v228, v229, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v308) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 492, 134, 0, "AAByteStreamClose", v230, v231, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v316) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 493, 134, 0, "AAByteStreamClose", v232, v233, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v303) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 494, 134, 0, "AAByteStreamClose", v234, v235, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v304) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 495, 134, 0, "AAByteStreamClose", v236, v237, v283);
      v168 = 0;
    }

    free(v310);
    free(v312);
    if (!v168)
    {
      v257 = "patch_write_stream";
      v258 = 539;
      goto LABEL_313;
    }

    ++v143;
  }

  while (v143 <= *a1);
  if (!*(v132 + 5))
  {
    goto LABEL_351;
  }

  v277 = 0;
  v278 = 0;
  v279 = v127;
  v280 = v121;
  while (1)
  {
    v281 = (*(v132 + 5))(*v132, v279, v280, v278);
    if (v281 < 1)
    {
      break;
    }

    v279 += v281;
    v277 += v281;
    v278 += v281;
    v280 -= v281;
    if (!v280)
    {
      goto LABEL_345;
    }
  }

  v277 = v281;
LABEL_345:
  if (v121 != v277)
  {
LABEL_351:
    v257 = "aaByteStreamPWriteExpected";
    v258 = 543;
LABEL_313:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", v258, 134, 0, v257, v130, v131, v283);
LABEL_314:
    v268 = 1;
    goto LABEL_315;
  }

  v282 = *(a1 + 40);
  if (v282 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  Metadata: %llu bytes\n  Controls: %llu bytes\n", *(v127 + 38) - *(v127 + 30), *(v127 + 46) - *(v127 + 38));
    v282 = *(a1 + 40);
  }

  if (v282 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu final patch size\n", *(v127 + 46 + 8 * *(v127 + 8)));
  }

  v268 = 0;
LABEL_315:
  if (AAByteStreamClose(v132) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 562, 134, 0, "AAByteStreamClose", v269, v270, v283);
    free(v127);
  }

  else
  {
    free(v127);
    if (!v268)
    {
      v107 = 0;
      goto LABEL_124;
    }
  }

  v108 = "patch_write";
  v109 = 615;
LABEL_123:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", v109, 134, 0, v108, v17, v18, v283);
  v107 = 0xFFFFFFFFLL;
LABEL_124:
  v122 = 0;
  do
  {
    rawimg_destroy(v11[v122++]);
  }

  while (v122 <= *a1);
  free(v11);
LABEL_127:
  BXDiff5Data_free(&v317);
  v123 = *MEMORY[0x29EDCA608];
  return v107;
}

double BXDiff5Data_free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 16))
    {
      v3 = 0;
      v4 = 40;
      do
      {
        free(*(*(a1 + 24) + v4));
        ++v3;
        v4 += 80;
      }

      while (v3 < *(a1 + 16));
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  free(*(a1 + 72));
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t controls_combo_enforce_copy_fork_boundary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[11];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v33 = a2[2];
    v34 = 8 * (v33 + 2);
    v14 = 8 * v33 + 16;
    v15 = -1;
    while (1)
    {
      v16 = a2[9];
      v17 = *&v16[v11];
      if (v17 >= 0)
      {
        v18 = *&v16[v11];
      }

      else
      {
        v18 = 0x8000000000000000 - v17;
      }

      v19 = *(a1 + 2072);
      v20 = v18 + v12;
      v21 = v19 - v12;
      if (v19 > v12 && v20 > v19)
      {
        v24 = v9 + 1;
        a2[11] = v24;
        if (v34 * v24 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_30;
        }

        v25 = realloc(v16, v34 * v24);
        if (!v25)
        {
          free(v16);
LABEL_30:
          a2[9] = 0;
          v30 = "aaReallocf";
          v31 = 88;
LABEL_31:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", v31, 134, 0, v30, a7, a8, v32);
          return 0xFFFFFFFFLL;
        }

        a2[9] = v25;
        v26 = &v25[v11];
        memmove(&v25[v11 + v14], &v25[v11], v34 * (v15 + a2[11]));
        v27 = 0x8000000000000000 - v21;
        if (v21 >= 0)
        {
          v27 = v21;
        }

        *v26 = v27;
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          bzero(v26 + 1, 8 * v33 + 8);
        }

        v28 = v18 - v21;
        if ((v18 - v21) < 0)
        {
          v28 = 0x8000000000000000 - (v18 - v21);
        }

        *(v26 + v14) = v28;
        v9 = a2[11];
        v12 = v19;
      }

      else
      {
        v23 = *&v16[v11 + 8];
        if (v23 < 0)
        {
          v23 = 0x8000000000000000 - v23;
        }

        v12 = v20 + v23;
      }

      ++v13;
      v11 += v14;
      --v15;
      if (v13 >= v9)
      {
        goto LABEL_25;
      }
    }
  }

  v12 = 0;
LABEL_25:
  if (v12 != *(a1 + 2080))
  {
    v30 = "SIZE MISMATCH";
    v31 = 108;
    goto LABEL_31;
  }

  return 0;
}

char *SharedBufferCreate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v9 = getpagesize();
    if (v9 <= 0x197)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size", v10, v11, v39);
      return 0;
    }

    v14 = v9;
    if (a1 >> 2 < v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a1 >> 2) / v9;
    }

    v16 = v15 * v9;
    v17 = valloc(v9 + 4 * v16);
    v12 = v17;
    if (!v17)
    {
      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v24, "malloc", v25, v26, v39);
      return v12;
    }

    *(v17 + 50) = 0;
    *(v17 + 23) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 21) = 0u;
    *(v17 + 22) = 0u;
    *(v17 + 19) = 0u;
    *(v17 + 20) = 0u;
    *(v17 + 17) = 0u;
    *(v17 + 18) = 0u;
    *(v17 + 15) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 13) = 0u;
    *(v17 + 14) = 0u;
    *(v17 + 11) = 0u;
    *(v17 + 12) = 0u;
    *(v17 + 9) = 0u;
    *(v17 + 10) = 0u;
    *(v17 + 7) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 5) = 0u;
    *(v17 + 6) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    *(v17 + 48) = -1;
    atomic_store(2u, v17 + 101);
    *v17 = 0x600000000;
    v18 = calloc(6uLL, 4uLL);
    *(v12 + 1) = v18;
    if (v18)
    {
      if (pthread_mutex_init((v12 + 4), 0))
      {
        v22 = "SharedArrayInit: pthread_mutex_init failed\n";
        v23 = 56;
      }

      else
      {
        if (!pthread_cond_init((v12 + 20), 0))
        {
          *(v12 + 16) = 0x600000000;
          v31 = calloc(6uLL, 4uLL);
          *(v12 + 17) = v31;
          if (v31)
          {
            if (pthread_mutex_init((v12 + 36), 0))
            {
              v35 = "SharedArrayInit: pthread_mutex_init failed\n";
              v36 = 56;
            }

            else
            {
              if (!pthread_cond_init((v12 + 52), 0))
              {
                v37 = 0;
                for (i = v12 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v12 + v14;
                  *(i - 1) = v16;
                  if ((SharedArrayPush(v12 + 32, v37) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v37;
                  v14 += v16;
                  if (v37 == 4)
                  {
                    return v12;
                  }
                }

                v29 = "SharedArrayPush";
                v30 = 283;
                goto LABEL_19;
              }

              v35 = "SharedArrayInit: pthread_cond_init failed\n";
              v36 = 57;
            }
          }

          else
          {
            v35 = "SharedArrayInit: malloc failed\n";
            v36 = 55;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v36, 0, v35, v32, v33, v34, v39);
          v29 = "SharedArrayInit";
          v30 = 270;
LABEL_19:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", v30, 73, 0, v29, v27, v28, v39);
          if (!pthread_mutex_destroy((v12 + 4)) && !pthread_cond_destroy((v12 + 20)))
          {
            free(*(v12 + 1));
          }

          if (!pthread_mutex_destroy((v12 + 36)) && !pthread_cond_destroy((v12 + 52)))
          {
            free(*(v12 + 17));
          }

          free(v12);
          return 0;
        }

        v22 = "SharedArrayInit: pthread_cond_init failed\n";
        v23 = 57;
      }
    }

    else
    {
      v22 = "SharedArrayInit: malloc failed\n";
      v23 = 55;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v23, 0, v22, v19, v20, v21, v39);
    v29 = "SharedArrayInit";
    v30 = 269;
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu", a7, a8, a1);
  return 0;
}

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
    if ((SharedArrayEnqueue(a1, -2) & 0x80000000) == 0)
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

  if ((SharedArrayEnqueue(a1, v2) & 0x80000000) == 0)
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

      result = SharedArrayEnqueue(v9, -1);
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

uint64_t SharedArrayEnqueue(unsigned int *a1, int a2)
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

uint64_t ParallelArchiveRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v52);
  bzero(v57, 0x928uLL);
  v58 = 0x20000;
  v9 = malloc(0x20000uLL);
  v10 = *(a1 + 80);
  v59 = v9;
  v65 = v10;
  v11 = *(a1 + 48);
  v62 = *(a1 + 32);
  v63 = v11;
  v64 = *(a1 + 64);
  v12 = IMagicStreamCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), 12);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_59;
  }

  Magic = IMagicStreamGetMagic(v12);
  MagicSize = IMagicStreamGetMagicSize(v13);
  if (v9)
  {
    if (MagicSize < 0xC)
    {
      if (MagicSize < 6)
      {
        if (MagicSize < 4)
        {
          if (!MagicSize)
          {
LABEL_54:
            v39 = 1;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (*Magic == 826360153 || *Magic == 825246017)
        {
LABEL_34:
          if (*a1 >= 2)
          {
            fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
          }

          v34 = MemBufferCreate(0x100000uLL);
          if (!v34)
          {
            goto LABEL_59;
          }

          v37 = v34;
          v38 = MemBufferTransmit(v34, 0xFFFFFFFFFFFFFFFFLL, IMagicStreamRead, v13, readProcessData, v57, v35, v36);
          MemBufferDestroy(v37);
          if ((v38 & 0x8000000000000000) == 0)
          {
            if (*a1 >= 1)
            {
              fprintf(*MEMORY[0x29EDCA610], "%12lld raw archive\n");
            }

            goto LABEL_54;
          }

          v27 = "MemBufferTransmit";
          v28 = 550;
          goto LABEL_41;
        }

LABEL_43:
        v40 = ILowMemoryDecoderStreamCreate(IMagicStreamRead, IMagicStreamAbort, v13, 0x100000uLL);
        if (!v40)
        {
          v30 = "Could not identify payload format";
          v31 = 580;
LABEL_57:
          v29 = 0;
          goto LABEL_58;
        }

        v41 = v40;
        if (*a1 >= 2)
        {
          fwrite("Compressed archive payload (gzip, bzip2, xz)\n", 0x2DuLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

        v42 = MemBufferCreate(0x100000uLL);
        if (!v42)
        {
          goto LABEL_59;
        }

        v45 = v42;
        v46 = MemBufferTransmit(v42, 0xFFFFFFFFFFFFFFFFLL, ILowMemoryDecoderStreamRead, v41, readProcessData, v57, v43, v44);
        MemBufferDestroy(v45);
        if (v46 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 570, 7, 0, "MemBufferTransmit", v47, v48, v53);
          v39 = 0;
        }

        else
        {
          if (*a1 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "%12lld raw archive size\n", v46);
          }

          v39 = 1;
        }

        ILowMemoryDecoderStreamDestroy(v41);
LABEL_55:
        if (!v66)
        {
          goto LABEL_60;
        }

        v53 = v66;
        v30 = "Errors in archive: %u";
        v31 = 585;
        goto LABEL_57;
      }
    }

    else if (*Magic == 25200 && *(Magic + 2) == 122)
    {
      if (*a1 >= 1)
      {
        v22 = 0;
        v23 = *(Magic + 4);
        while (PCompressGetDecoderKey(v22) != *(Magic + 3))
        {
          if (++v22 == 7)
          {
            v22 = -1;
            break;
          }
        }

        v24 = *MEMORY[0x29EDCA610];
        DecoderDescription = PCompressGetDecoderDescription(v22);
        fprintf(v24, "Input archive compression: %s %llum\n", DecoderDescription, bswap64(v23) >> 20);
      }

      v56[1] = 0;
      v56[4] = 0;
      memset(v55, 0, sizeof(v55));
      v54[0] = 0;
      v54[1] = 0;
      v56[0] = IMagicStreamRead;
      v56[2] = v13;
      v56[3] = readProcessData;
      v56[5] = v57;
      DWORD1(v55[0]) = 1;
      DefaultNThreads = *(a1 + 4);
      if (!DefaultNThreads)
      {
        DefaultNThreads = getDefaultNThreads();
      }

      DWORD2(v55[0]) = DefaultNThreads;
      if (!PCompressFilter(v55, v56, v54, v16, v17, v18, v19, v20))
      {
        if (*a1 >= 1)
        {
          fprintf(*MEMORY[0x29EDCA610], "%12llu compressed archive size\n%12llu raw archive size\n%12.3f compression ratio\n");
        }

        goto LABEL_54;
      }

      v27 = "PCompressFilter";
      v28 = 530;
LABEL_41:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v28, 7, 0, v27, v19, v20, v53);
      v39 = 0;
      goto LABEL_55;
    }

    if (*Magic == 925906736 && *(Magic + 4) == 12592)
    {
      goto LABEL_34;
    }

    if (*Magic == 925906736 && *(Magic + 4) == 14128)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v29 = *__error();
  v30 = "malloc";
  v31 = 500;
LABEL_58:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v31, 7, v29, v30, v19, v20, v53);
LABEL_59:
  v39 = 0;
LABEL_60:
  IMagicStreamDestroy(v13);
  free(v59);
  free(v60);
  free(v61);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v39)
  {
    v50 = 0;
  }

  else
  {
    v50 = -1;
  }

  if (result >= 0)
  {
    result = v50;
  }

  else
  {
    result = result;
  }

  v51 = *MEMORY[0x29EDCA608];
  return result;
}

size_t readProcessData(uint64_t a1, char *__src, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 + 2256);
  v11 = (a1 + 2232);
  v12 = a3;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v151 = v12;
      while (1)
      {
        v13 = *a1;
        if (*a1 <= 0)
        {
          break;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            if (v13 != 3)
            {
LABEL_205:
              v143 = "readProcessData";
              v144 = "invalid state";
              v145 = 436;
              goto LABEL_224;
            }

            v141 = *(a1 + 2320);
            if (v141)
            {
              v141(*(a1 + 2328), __src, v151);
            }

            return a3;
          }

          v129 = *(a1 + 2272) + 16 * *(a1 + 2264);
          v130 = *(v129 + 8);
          if (v151 >= v130)
          {
            v131 = *(v129 + 8);
          }

          else
          {
            v131 = v151;
          }

          if (*v129)
          {
            v132 = *(a1 + 2296);
            if (v132)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v132 = *(a1 + 2304);
            if (v132)
            {
LABEL_172:
              v132(*(a1 + 2328), __src, v131);
              v130 = *(v129 + 8);
            }
          }

          v151 -= v131;
          __src += v131;
          v133 = v130 - v131;
          *(v129 + 8) = v133;
          if (!v133)
          {
            ++*(a1 + 2264);
            *a1 = 1;
            v12 = v151;
            goto LABEL_2;
          }

          v27 = 0;
          goto LABEL_186;
        }

        v14 = *(a1 + 2264);
        if (v14 == *(a1 + 2256))
        {
          v134 = *(a1 + 2312);
          if (v134)
          {
            v134(*(a1 + 2328));
          }

          v27 = 0;
          *a1 = 0;
          goto LABEL_186;
        }

        v15 = *(a1 + 2272) + 16 * v14;
        if (*v15)
        {
          v16 = *(a1 + 2288);
          if (v16)
          {
            v16(*(a1 + 2328), v15, *(v15 + 8));
          }
        }

        v17 = 2;
LABEL_165:
        *a1 = v17;
      }

      if (v13)
      {
        goto LABEL_205;
      }

      *(a1 + 2232) = 0;
      *v10 = 0;
      v10[1] = 0;
      v18 = *(a1 + 16);
      if (v18 <= 7)
      {
        v135 = 8;
        goto LABEL_185;
      }

      v19 = 0;
      v20 = 0;
      v21 = *(a1 + 24);
      do
      {
        v22 = v20;
        v20 = *(v21 + v19++) & 7 | (8 * v20);
      }

      while (v19 != 8);
      if (*v21 == 16)
      {
        if (v18 > 0x1D)
        {
          v23 = bswap32(*(v21 + 22)) >> 16;
          if (v23 >= 0x400)
          {
            v143 = "readProcessData";
            v144 = "invalid nameSize";
            v145 = 165;
            goto LABEL_224;
          }

          v24 = (v23 + 30);
          if (*(v21 + 1) - 3 <= 1)
          {
            v25 = bswap64(*(v21 + 2));
            if (v25 >= 0x400)
            {
              v143 = "readProcessData";
              v144 = "invalid linkSize";
              v145 = 169;
              goto LABEL_224;
            }

            v24 += v25;
          }

          v26 = v24 > v18;
          v27 = v24 - v18;
          if (v26)
          {
            goto LABEL_186;
          }

          v28 = *(a1 + 16);
          setAAHeaderFromHeader_v10((a1 + 32), v21);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v29 = *(a1 + 96);
          v30 = *(a1 + 2256);
          v31 = *(a1 + 2248);
          if (v30 >= v31)
          {
            *(a1 + 2248) = v31 + 16;
            v32 = reallocf(*(a1 + 2272), 16 * (v31 + 16));
            *(a1 + 2272) = v32;
            if (!v32)
            {
              goto LABEL_206;
            }

            v30 = *v10;
          }

          else
          {
            v32 = *(a1 + 2272);
          }

          v93 = &v32[16 * v30];
          *v93 = 0;
          *(v93 + 1) = 0;
          __strlcpy_chk();
          *(v93 + 1) = v29;
          goto LABEL_134;
        }

        v135 = 30;
LABEL_185:
        v27 = v135 - v18;
        goto LABEL_186;
      }

      v33 = ((8 * v22) >> 6) & 0x3FFFF;
      if (v33 != 29121)
      {
        if (v33 == 29127)
        {
          if (v18 <= 0x4B)
          {
            v135 = 76;
            goto LABEL_185;
          }

          v34 = 0;
          v35 = 0;
          do
          {
            v36 = *(v21 + 57 + v34++) & 7 | (8 * v35);
            v35 = v36;
          }

          while (v34 != 8);
          v37 = 0;
          v38 = 0;
          do
          {
            v39 = *(v21 + 64 + v37++) & 7 | (8 * v38);
            v38 = v39;
          }

          while (v37 != 4);
          v40 = __src;
          v41 = 0;
          v42 = 0;
          do
          {
            v43 = *(v21 + 68 + v41++) & 7 | (8 * v42);
            v42 = v43;
          }

          while (v41 != 8);
          v44 = 0;
          v45 = 0;
          v46 = v39 << 24;
          do
          {
            v47 = *(v21 + 16 + v44++) & 7 | (8 * v45);
            v45 = v47;
          }

          while (v44 != 8);
          v48 = v36 & 0x3FFFF;
          OLDEntryType = getOLDEntryType(v47);
          if (v48 >= 0x400)
          {
            v143 = "readProcessData";
            v144 = "invalid nameSize";
            v145 = 191;
            goto LABEL_224;
          }

          v50 = v43 + (v46 & 0x1FF000000);
          v51 = v48 + 76;
          __src = v40;
          if ((OLDEntryType - 3) <= 1)
          {
            if (v50 >= 0x400)
            {
              v143 = "readProcessData";
              v144 = "invalid linkSize";
              v145 = 195;
              goto LABEL_224;
            }

            v51 += v50;
          }

          v52 = *(a1 + 16);
          v27 = v51 - v52;
          if (v51 > v52)
          {
            goto LABEL_186;
          }

          v53 = *(a1 + 24);
          if (OLDEntryType)
          {
            v54 = 0;
          }

          else
          {
            v54 = v50 == 0;
          }

          if (v54 && v48 == 11 && *(v53 + 76) == 0x2152454C49415254 && *(v53 + 79) == 0x21212152454C49)
          {
            v139 = *(a1 + 2320);
            if (v139)
            {
              v140 = *(a1 + 2328);
LABEL_199:
              v139(v140);
            }

            goto LABEL_200;
          }

          v57 = *(a1 + 16);
          setAAHeaderFromHeader_ODC((a1 + 32), v53);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v58 = *(a1 + 96);
          v59 = *(a1 + 2256);
          v60 = *(a1 + 2248);
          if (v59 >= v60)
          {
            *(a1 + 2248) = v60 + 16;
            v61 = reallocf(*(a1 + 2272), 16 * (v60 + 16));
            *(a1 + 2272) = v61;
            if (!v61)
            {
              goto LABEL_206;
            }

            v59 = *v10;
          }

          else
          {
            v61 = *(a1 + 2272);
          }

          v97 = &v61[16 * v59];
          *v97 = 0;
          *(v97 + 1) = 0;
LABEL_133:
          __strlcpy_chk();
          *(v97 + 1) = v58;
LABEL_134:
          ++*v10;
LABEL_158:
          v126 = *(a1 + 32);
          if ((v126 & 1) == 0)
          {
            v143 = "readProcessData";
            v144 = "Invalid entry, no TYP field";
            v145 = 309;
            goto LABEL_224;
          }

          if ((v126 & 0x8000) != 0 && *(a1 + 36) != 77)
          {
            v127 = strlen((a1 + 176));
            if (!pathIsValid((a1 + 176), v127))
            {
              v143 = "readProcessData";
              v144 = "Invalid entry path";
              v145 = 315;
              goto LABEL_224;
            }
          }

          v128 = *(a1 + 2280);
          if (v128)
          {
            v128(*(a1 + 2328), a1 + 32, *(a1 + 2240), *(a1 + 2232), *(a1 + 24), *(a1 + 16));
          }

          *(a1 + 16) = 0;
          v17 = 1;
          goto LABEL_165;
        }

        if (*v21 != 826360153 && *v21 != 825246017)
        {
          v147 = 0;
          ++*(a1 + 2336);
          v148 = MEMORY[0x29EDCA610];
          do
          {
            if (*(*(a1 + 24) + v147) > 31)
            {
              fputc(*(*(a1 + 24) + v147), *v148);
            }

            else
            {
              fprintf(*v148, "<%02x>", *(*(a1 + 24) + v147));
            }

            ++v147;
          }

          while (v147 < *(a1 + 16));
          fputc(10, *v148);
          v143 = "readProcessData";
          v144 = "Invalid header";
          v145 = 305;
          goto LABEL_224;
        }

        v85 = *(v21 + 4);
        v27 = v85 - v18;
        if (v85 > v18)
        {
          goto LABEL_186;
        }

        v152 = 0;
        v153 = 0;
        if ((yaa_decodeHeaderInfo(v21, v18, &v153, &v152, a5, a6, a7, a8) & 0x8000000000000000) != 0)
        {
          v143 = "readProcessData";
          v144 = "invalid YAA header";
          v145 = 268;
          goto LABEL_224;
        }

        v86 = *(a1 + 2224);
        v87 = v153;
        v88 = *(a1 + 2240);
        if (v86 < v153)
        {
          *(a1 + 2224) = v153;
          v89 = reallocf(v88, 1032 * v87);
          *(a1 + 2240) = v89;
          if (!v89)
          {
            v146 = *__error();
            v143 = "readProcessData";
            v144 = "malloc";
            v145 = 275;
            goto LABEL_225;
          }

          v88 = v89;
          v86 = *(a1 + 2224);
        }

        if (yaa_decodeHeader((a1 + 32), *(a1 + 24), *(a1 + 16), v88, v86, v11) != v85)
        {
          v143 = "readProcessData";
          v144 = "invalid YAA header";
          v145 = 280;
          goto LABEL_224;
        }

        *v10 = 0;
        v10[1] = 0;
        v90 = *(a1 + 32);
        if ((v90 & 0x200) != 0)
        {
          v94 = *(a1 + 96);
          if (*(a1 + 2248))
          {
            v95 = 0;
            v96 = *(a1 + 2272);
          }

          else
          {
            *(a1 + 2248) = 16;
            v96 = reallocf(*(a1 + 2272), 0x100uLL);
            *(a1 + 2272) = v96;
            if (!v96)
            {
              goto LABEL_206;
            }

            v95 = *v10;
          }

          v109 = &v96[16 * v95];
          *v109 = 0;
          *(v109 + 1) = 0;
          __strlcpy_chk();
          *(v109 + 1) = v94;
          v91 = *v10 + 1;
          *v10 = v91;
          v90 = *(a1 + 32);
          if ((v90 & 0x400) == 0)
          {
LABEL_108:
            if ((v90 & 0x800) == 0)
            {
LABEL_109:
              v92 = __src;
LABEL_148:
              v118 = *v11;
              if (*v11)
              {
                v119 = 0;
                v120 = 0;
                do
                {
                  v121 = *(a1 + 2240) + v119;
                  if (*(v121 + 4) == 2)
                  {
                    v122 = *(v121 + 8);
                    v123 = *(a1 + 2248);
                    if (v91 >= v123)
                    {
                      *(a1 + 2248) = v123 + 16;
                      v124 = reallocf(*(a1 + 2272), 16 * (v123 + 16));
                      *(a1 + 2272) = v124;
                      if (!v124)
                      {
                        goto LABEL_206;
                      }

                      v91 = *v10;
                    }

                    else
                    {
                      v124 = *(a1 + 2272);
                    }

                    v125 = &v124[16 * v91];
                    *v125 = 0;
                    *(v125 + 1) = 0;
                    __strlcpy_chk();
                    *(v125 + 1) = v122;
                    v91 = *v10 + 1;
                    *v10 = v91;
                    v118 = *v11;
                  }

                  ++v120;
                  v119 += 1032;
                }

                while (v120 < v118);
              }

              __src = v92;
              goto LABEL_158;
            }

LABEL_143:
            v114 = *(a1 + 112);
            v115 = *(a1 + 2248);
            if (v91 >= v115)
            {
              *(a1 + 2248) = v115 + 16;
              v116 = reallocf(*(a1 + 2272), 16 * (v115 + 16));
              *(a1 + 2272) = v116;
              if (!v116)
              {
LABEL_206:
                v146 = *__error();
                v143 = "addBlob";
                v144 = "malloc";
                v145 = 111;
                goto LABEL_225;
              }

              v91 = *v10;
            }

            else
            {
              v116 = *(a1 + 2272);
            }

            v92 = __src;
            v117 = &v116[16 * v91];
            *v117 = 0;
            *(v117 + 1) = 0;
            __strlcpy_chk();
            *(v117 + 1) = v114;
            v91 = *v10 + 1;
            *v10 = v91;
            goto LABEL_148;
          }
        }

        else
        {
          v91 = 0;
          if ((v90 & 0x400) == 0)
          {
            goto LABEL_108;
          }
        }

        v110 = *(a1 + 104);
        v111 = *(a1 + 2248);
        if (v91 >= v111)
        {
          *(a1 + 2248) = v111 + 16;
          v112 = reallocf(*(a1 + 2272), 16 * (v111 + 16));
          *(a1 + 2272) = v112;
          if (!v112)
          {
            goto LABEL_206;
          }

          v91 = *v10;
        }

        else
        {
          v112 = *(a1 + 2272);
        }

        v113 = &v112[16 * v91];
        *v113 = 0;
        *(v113 + 1) = 0;
        __strlcpy_chk();
        *(v113 + 1) = v110;
        v91 = *v10 + 1;
        *v10 = v91;
        if ((*(a1 + 32) & 0x800) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_143;
      }

      if (v18 <= 0x6D)
      {
        v135 = 110;
        goto LABEL_185;
      }

      v62 = 0;
      v63 = 0;
      do
      {
        v64 = *(v21 + 94 + v62);
        v63 *= 16;
        v65 = v64 - 48;
        if ((v64 - 48) <= 0x36)
        {
          if (((1 << v65) & 0x3FF) != 0)
          {
            v63 = v63 + v64 - 48;
          }

          else if (((1 << v65) & 0x7E0000) != 0)
          {
            v63 = v63 + v64 - 55;
          }

          else if (((1 << v65) & 0x7E000000000000) != 0)
          {
            v63 = v63 + v64 - 87;
          }
        }

        ++v62;
      }

      while (v62 != 8);
      v66 = __src;
      v67 = 0;
      v68 = 0;
      do
      {
        v69 = *(v21 + 54 + v67);
        v68 *= 16;
        v70 = v69 - 48;
        if ((v69 - 48) <= 0x36)
        {
          if (((1 << v70) & 0x3FF) != 0)
          {
            v68 = v68 + v69 - 48;
          }

          else if (((1 << v70) & 0x7E0000) != 0)
          {
            v68 = v68 + v69 - 55;
          }

          else if (((1 << v70) & 0x7E000000000000) != 0)
          {
            v68 = v68 + v69 - 87;
          }
        }

        ++v67;
      }

      while (v67 != 8);
      v71 = 0;
      v72 = 0;
      do
      {
        v73 = *(v21 + 14 + v71);
        v72 *= 16;
        v74 = v73 - 48;
        if ((v73 - 48) <= 0x36)
        {
          if (((1 << v74) & 0x3FF) != 0)
          {
            v72 = v72 + v73 - 48;
          }

          else if (((1 << v74) & 0x7E0000) != 0)
          {
            v72 = v72 + v73 - 55;
          }

          else if (((1 << v74) & 0x7E000000000000) != 0)
          {
            v72 = v72 + v73 - 87;
          }
        }

        ++v71;
      }

      while (v71 != 8);
      v75 = getOLDEntryType(v72);
      if (v63 >= 0x400)
      {
        v143 = "readProcessData";
        v144 = "invalid nameSize";
        v145 = 225;
        goto LABEL_224;
      }

      v76 = v63 + 110;
      v12 = v151;
      if ((v75 - 3) <= 1)
      {
        if (v68 >= 0x400)
        {
          v143 = "readProcessData";
          v144 = "invalid linkSize";
          v145 = 229;
          goto LABEL_224;
        }

        v76 += v68;
      }

      v77 = *(a1 + 16);
      v27 = v76 - v77;
      if (v76 > v77)
      {
        __src = v66;
        if (v151)
        {
          goto LABEL_187;
        }

        return a3;
      }

      v78 = *(a1 + 24);
      if (v75 || v68 || v63 != 11 || (*(v78 + 110) == 0x2152454C49415254 ? (v79 = *(v78 + 113) == 0x21212152454C49) : (v79 = 0), !v79))
      {
        setAAHeaderFromHeader_NEWC((a1 + 32), v78);
        v80 = (v76 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v81 = v80 - v76;
        __src = v66;
        if (v80 != v76)
        {
          v82 = *(a1 + 2256);
          v83 = *(a1 + 2248);
          if (v82 >= v83)
          {
            *(a1 + 2248) = v83 + 16;
            v84 = reallocf(*(a1 + 2272), 16 * (v83 + 16));
            *(a1 + 2272) = v84;
            if (!v84)
            {
              goto LABEL_206;
            }

            v82 = *v10;
          }

          else
          {
            v84 = *(a1 + 2272);
          }

          v98 = &v84[16 * v82];
          *v98 = 0;
          *(v98 + 1) = 0;
          __strlcpy_chk();
          *(v98 + 1) = v81;
          ++*v10;
        }

        if ((*(a1 + 33) & 2) != 0)
        {
          v99 = *(a1 + 96);
          v100 = *(a1 + 2256);
          v101 = *(a1 + 2248);
          if (v100 >= v101)
          {
            *(a1 + 2248) = v101 + 16;
            v102 = reallocf(*(a1 + 2272), 16 * (v101 + 16));
            *(a1 + 2272) = v102;
            if (!v102)
            {
              goto LABEL_206;
            }

            v100 = *v10;
          }

          else
          {
            v102 = *(a1 + 2272);
          }

          v103 = &v102[16 * v100];
          *v103 = 0;
          *(v103 + 1) = 0;
          __strlcpy_chk();
          *(v103 + 1) = v99;
          ++*v10;
        }

        v104 = *(a1 + 96);
        v105 = (v104 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v58 = v105 - v104;
        if (v105 == v104)
        {
          goto LABEL_158;
        }

        v106 = *(a1 + 2256);
        v107 = *(a1 + 2248);
        if (v106 >= v107)
        {
          *(a1 + 2248) = v107 + 16;
          v108 = reallocf(*(a1 + 2272), 16 * (v107 + 16));
          *(a1 + 2272) = v108;
          if (!v108)
          {
            goto LABEL_206;
          }

          v106 = *v10;
        }

        else
        {
          v108 = *(a1 + 2272);
        }

        v97 = &v108[16 * v106];
        *v97 = 0;
        *(v97 + 1) = 0;
        goto LABEL_133;
      }

      v139 = *(a1 + 2320);
      __src = v66;
      if (v139)
      {
        v140 = *(a1 + 2328);
        goto LABEL_199;
      }

LABEL_200:
      v27 = 0;
      *(a1 + 16) = 0;
      *a1 = 3;
LABEL_186:
      v12 = v151;
      if (!v151)
      {
        return a3;
      }

LABEL_187:
      if (!v27)
      {
        continue;
      }

      break;
    }

    if (v27 >= v12)
    {
      v136 = v12;
    }

    else
    {
      v136 = v27;
    }

    v137 = v12;
    v138 = *(a1 + 16);
    if (v138 + v136 <= *(a1 + 8))
    {
      memcpy((*(a1 + 24) + v138), __src, v136);
      *(a1 + 16) += v136;
      __src += v136;
      v12 = v137 - v136;
      continue;
    }

    break;
  }

  v143 = "readProcessData";
  v144 = "internal header buffer is too small";
  v145 = 452;
LABEL_224:
  v146 = 0;
LABEL_225:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", v143, v145, 7, v146, v144, a7, a8, v149);
  return -1;
}

uint64_t ParallelArchiveReadMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v53);
  v9 = MemBufferCreate(0x10000uLL);
  if (v9)
  {
    v10 = IMagicStreamCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), 8);
    v11 = v10;
    if (!v10)
    {
LABEL_47:
      v17 = 0;
      goto LABEL_51;
    }

    Magic = IMagicStreamGetMagic(v10);
    MagicSize = IMagicStreamGetMagicSize(v11);
    if (!MagicSize)
    {
      v17 = 0;
      goto LABEL_19;
    }

    if (MagicSize < 6)
    {
      if (MagicSize < 4)
      {
LABEL_23:
        v19 = ILowMemoryDecoderStreamCreate(IMagicStreamRead, IMagicStreamAbort, v11, 0x10000uLL);
        if (v19)
        {
          v22 = v19;
          v23 = ILowMemoryDecoderStreamRead;
          v17 = v19;
          goto LABEL_29;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 642, 7, 0, "Could not identify payload format", v20, v21, v53);
        goto LABEL_47;
      }
    }

    else
    {
      if (*Magic == 925906736 && *(Magic + 4) == 12592)
      {
        goto LABEL_25;
      }

      if (*Magic == 925906736 && *(Magic + 4) == 14128)
      {
        goto LABEL_25;
      }
    }

    if (*Magic != 826360153 && *Magic != 825246017)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (*a1 < 2)
    {
      v23 = IMagicStreamRead;
      v17 = 0;
    }

    else
    {
      fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
      v17 = 0;
      v23 = IMagicStreamRead;
    }

    v22 = v11;
LABEL_29:
    if (MemBufferFillFromIStream(v9, 0x10000uLL, v23, v22) < 0)
    {
      v51 = "Reading entry";
      v52 = 649;
    }

    else
    {
      DataPtr = MemBufferGetDataPtr(v9);
      DataSize = MemBufferGetDataSize(v9);
      v53 = 0;
      v54 = 0;
      v32 = yaa_decodeHeaderInfo(DataPtr, DataSize, &v54, &v53, v28, v29, v30, v31);
      if ((v32 & 0x8000000000000000) != 0)
      {
        v51 = "Parsing YAA header";
        v52 = 660;
      }

      else
      {
        v33 = v32;
        v34 = v53;
        *(a1 + 2240) = v54;
        *(a1 + 2264) = v34;
        if ((yaa_decodeHeader((a1 + 32), DataPtr, v32, *(a1 + 2224), *(a1 + 2232), (a1 + 2240)) & 0x8000000000000000) == 0)
        {
          MemBufferDecreaseSize(v9, v33, v35, v36, v37, v38, v24, v25);
          if (v53 >= *(a1 + 2256))
          {
            v39 = *(a1 + 2256);
          }

          else
          {
            v39 = v53;
          }

          if (v39)
          {
            v40 = *(a1 + 2248);
            while (1)
            {
              v41 = MemBufferGetDataSize(v9);
              if (v39 > v41 && MemBufferFillFromIStream(v9, v39 - v41, v23, v22) < 0)
              {
                break;
              }

              v42 = MemBufferGetDataSize(v9);
              if (v42 >= v39)
              {
                v43 = v39;
              }

              else
              {
                v43 = v42;
              }

              v44 = MemBufferGetDataPtr(v9);
              memcpy(v40, v44, v43);
              MemBufferDecreaseSize(v9, v43, v45, v46, v47, v48, v49, v50);
              v40 += v43;
              v39 -= v43;
              if (!v39)
              {
                goto LABEL_19;
              }
            }

            v51 = "Reading entry";
            v52 = 678;
            goto LABEL_50;
          }

LABEL_19:
          v18 = 0;
          goto LABEL_52;
        }

        v51 = "Decoding YAA header";
        v52 = 665;
      }
    }

LABEL_50:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", v52, 7, 0, v51, v24, v25, v53);
    goto LABEL_51;
  }

  v17 = 0;
  v11 = 0;
LABEL_51:
  v18 = -1;
LABEL_52:
  ILowMemoryDecoderStreamDestroy(v17);
  IMagicStreamDestroy(v11);
  MemBufferDestroy(v9);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v18;
  }

  else
  {
    return result;
  }
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

uint64_t getInstalledMemorySize()
{
  v0 = sysconf(200);
  v1 = sysconf(29);
  if (v1 <= 0 || v0 <= 0)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
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

uint64_t sha1xor(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
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

const char *statPath(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    memset(&v4, 0, sizeof(v4));
    do
    {
      if (v3[v2] == 47)
      {
        v3[v2] = 0;
        result = stat(v3, &v4);
        v3[v2] = 47;
      }

      --v2;
    }

    while (v2);
  }

  return result;
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

uint64_t loadFileContents(const char *a1, char **a2, off_t *a3, uint64_t a4)
{
  memset(&v31, 0, sizeof(v31));
  if (lstat(a1, &v31))
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", v9, v10, a1);
    v11 = 0;
    goto LABEL_3;
  }

  st_size = v31.st_size;
  if (v31.st_size)
  {
    v11 = malloc(v31.st_size + a4);
    if (v11)
    {
      v14 = open(a1, 0);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        v16 = st_size;
        v17 = v11;
        while (1)
        {
          if (v16 >= 0x40000000)
          {
            v18 = 0x40000000;
          }

          else
          {
            v18 = v16;
          }

          v19 = read(v15, v17, v18);
          if (v19 < 0)
          {
            v27 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v27, "%s", v28, v29, a1);
            goto LABEL_23;
          }

          if (v19 != v18)
          {
            break;
          }

          v17 += v18;
          v16 -= v18;
          if (!v16)
          {
            close(v15);
            goto LABEL_17;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s", v20, v21, a1);
LABEL_23:
        close(v15);
        goto LABEL_3;
      }

      v22 = *__error();
      v30 = a1;
      v25 = "%s";
      v26 = 486;
    }

    else
    {
      v22 = *__error();
      v25 = "malloc";
      v26 = 482;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", v26, 3, v22, v25, v23, v24, v30);
LABEL_3:
    free(v11);
    v11 = 0;
    st_size = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  v11 = 0;
LABEL_17:
  result = 0;
LABEL_4:
  *a2 = v11;
  *a3 = st_size;
  return result;
}

uint64_t loadFileSegment(const char *a1, void *a2, size_t a3, off_t a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v15 = *__error();
    v17 = v7;
    v13 = "%s";
    v14 = 521;
    goto LABEL_7;
  }

  v9 = v8;
  v10 = pread(v8, a2, a3, a4);
  close(v9);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v15 = *__error();
    v17 = v7;
    v13 = "%s";
    v14 = 524;
    goto LABEL_7;
  }

  if (v10 < a3)
  {
    v13 = "truncated read";
    v14 = 525;
    v15 = 0;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", v14, 3, v15, v13, v11, v12, v17);
    return 0xFFFFFFFFLL;
  }

  return 0;
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

uint64_t setFileAPFSInternalFlagsFD(uint64_t a1, uint64_t a2)
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

uint64_t clearEntryXAT(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", v12, v13, a1);
    v4 = 0;
    goto LABEL_19;
  }

  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_20;
  }

  v4 = malloc(v2);
  if (!v4)
  {
    v15 = *__error();
    v18 = "malloc";
    v19 = 918;
    goto LABEL_18;
  }

  v5 = listxattr(a1, v4, v3, 1);
  if (v5 < 0)
  {
    v20 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v20, "listxattr failed: %s", v21, v22, a1);
    goto LABEL_19;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v4 + 1;
  v8 = v4;
  while (*(v7 - 1))
  {
    v9 = v8;
LABEL_10:
    ++v7;
    v8 = v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  v10 = removexattr(a1, v8, 1);
  v9 = v7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *__error();
  v24 = v8;
  v18 = "removexattr failed for name=%s: %s";
  v19 = 941;
LABEL_18:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", v19, 3, v15, v18, v16, v17, v24);
LABEL_19:
  v14 = 0xFFFFFFFFLL;
LABEL_20:
  free(v4);
  return v14;
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

uint64_t getFileDigests(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  if (a2 || a3 || a4)
  {
    memset(&c, 0, sizeof(c));
    memset(&v26, 0, sizeof(v26));
    v25[0] = 0;
    v25[1] = 0;
    v8 = open(a1, 0);
    if (v8 < 0)
    {
      v17 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v17, "%s", v18, v19, v7);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
      v10 = valloc(0x100000uLL);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          CC_SHA1_Init(&c);
        }

        if (a3)
        {
          CC_SHA256_Init(&v26);
        }

        if (v4)
        {
          CC_CKSUM_Init(v25);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read", v15, v16, v24);
            goto LABEL_29;
          }

          if (!v12)
          {
            break;
          }

          if (a2)
          {
            CC_SHA1_Update(&c, v11, v12);
          }

          if (a3)
          {
            CC_SHA256_Update(&v26, v11, v13);
          }

          if (v4)
          {
            CC_CKSUM_Update(v25, v11, v13);
          }
        }

        if (a2)
        {
          CC_SHA1_Final(a2, &c);
        }

        if (a3)
        {
          CC_SHA256_Final(a3, &v26);
        }

        if (v4)
        {
          CC_CKSUM_Final(v4, v25);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v20 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v20, "malloc", v21, v22, v24);
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
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

uint64_t ParallelArchiveExtractSubtree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  bzero(&v37, 0x430uLL);
  v10 = *(a2 + 16);
  strncpy(v39, v10, 0x400uLL);
  v40 = strlen(v10);
  v38 = a1;
  v18 = *a2;
  v37 = *a2;
  v19 = *(a2 + 8) & 1;
  v41 = v19;
  if (v40)
  {
    if (v18 >= 1)
    {
      v20 = *MEMORY[0x29EDCA610];
      if (v19)
      {
        fprintf(v20, "Extracting all entries not in subtree: %s\n");
      }

      else
      {
        fprintf(v20, "Extracting subtree: %s\n");
      }
    }

    v33 = 0u;
    v34 = 0u;
    v29 = *a2;
    v21 = *(a2 + 40);
    v30 = *(a2 + 24);
    v31 = v21;
    v32 = extractSubtreeBegin;
    *(&v33 + 1) = extractSubtreeData;
    *&v34 = extractSubtreeData;
    v35 = extractSubtreeData;
    v36 = &v37;
    if ((ParallelArchiveRead(&v29, v11, v12, v13, v14, v15, v16, v17) & 0x80000000) == 0)
    {
      result = leaveThreadErrorContext(0, 0, 0);
      if ((result & 0x80000000) == 0)
      {
        if (*a2 >= 1)
        {
          v25 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12llu entries in input archive\n", v42);
          fprintf(*v25, "%12llu entries in subtree\n", v43);
        }

        result = 0;
      }

      goto LABEL_15;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "ParallelArchiveExtractSubtree", 116, 69, 0, "reading archive", v22, v23, v28);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "ParallelArchiveExtractSubtree", 95, 69, 0, "Invalid path length for subtree: %s\n", v16, v17, v10);
  }

  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_15:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

size_t extractSubtreeBegin(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  *(a1 + 1052) = 0;
  ++*(a1 + 1056);
  result = memcpy(__dst, a2, sizeof(__dst));
  if (__dst[1] == 77)
  {
    *(a1 + 1052) = 1;
  }

  else
  {
    if ((__dst[0] & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 1040);
    result = strlen(&__dst[36]);
    v16 = result;
    if (result < v15 || (result = memcmp(&__dst[36], (a1 + 16), v15), result))
    {
      v17 = 0;
    }

    else
    {
      if (*(&__dst[36] + v15))
      {
        v19 = *(&__dst[36] + v15) == 47;
      }

      else
      {
        v19 = 1;
      }

      v17 = v19;
    }

    *(a1 + 1052) = v17;
    if (*(a1 + 1048))
    {
      *(a1 + 1052) = v17 ^ 1;
      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_17;
      }

      if (v16 == v15)
      {
        LOBYTE(__dst[36]) = 0;
      }

      else
      {
        strncpy(&__dst[36], a2 + v15 + 145, 0x400uLL);
      }
    }
  }

  ++*(a1 + 1064);
  if (*a1 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "%s\n", &__dst[36]);
  }

  result = ParallelArchiveWriteEntryHeader(*(a1 + 8), __dst, a3, a4, v9, v10, v11, v12);
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "extractSubtreeBegin", 70, 69, 0, "writing entry header", v13, v14, v20);
    *(a1 + 1052) = 0;
  }

LABEL_17:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

size_t extractSubtreeData(size_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(result + 1052))
  {
    result = ParallelArchiveWriteEntryData(*(result + 8), a2, a3, a4, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "extractSubtreeData", 77, 69, 0, "writing entry data", v9, v10, a9);
    }
  }

  return result;
}

uint64_t io_hint_static_content(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    v6 = "file not open";
    v7 = 63;
  }

  else
  {
    v8 = 1;
    if (fcntl(FD, 68) != -1)
    {
      return 0;
    }

    v6 = "static content hint failed";
    v7 = 64;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", v7, 137, v6, v2, v3, v4, v8);
  return 0xFFFFFFFFLL;
}

uint64_t io_preallocate(unsigned int **a1, unint64_t a2)
{
  getRealTime();
  FD = aaFileStreamGetFD(a1);
  memset(&v25, 0, sizeof(v25));
  if (FD < 0)
  {
    v15 = "file not open";
    v16 = 84;
LABEL_12:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", v16, 137, v15, v5, v6, v7, v21);
    LOBYTE(v10) = 0;
    goto LABEL_13;
  }

  v8 = FD;
  if (fstat(FD, &v25) || v25.st_size)
  {
    v15 = "file not empty";
    v16 = 85;
    goto LABEL_12;
  }

  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 88, 137, "preallocating %llu B", v5, v6, v7, a2);
  if (!a2)
  {
    v14 = 0;
    LOBYTE(v10) = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v23[0] = 0x300000002;
    v23[1] = 0;
    v23[2] = a2 - v10;
    v24 = 0;
    if (fcntl(v8, 42, v23) == -1 || v24 <= 0)
    {
      break;
    }

    v10 += v24;
    ++v9;
    if (v10 >= a2)
    {
      v14 = 0;
      goto LABEL_14;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 99, 137, "preallocation failed", v11, v12, v13, v22);
LABEL_13:
  v14 = 0xFFFFFFFFLL;
LABEL_14:
  getRealTime();
  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 110, 137, "preallocation %llu/%llu B took %0.2f seconds (# of calls=%i)", v17, v18, v19, v10);
  return v14;
}

uint64_t io_set_nocache(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    v5 = "aaFileStreamGetFD";
    v6 = 126;
    v7 = 0;
  }

  else
  {
    v8 = 1;
    if (fcntl(FD, 48) != -1)
    {
      return 0;
    }

    v7 = *__error();
    v5 = "fcntl";
    v6 = 127;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", v6, 137, v7, v5, v2, v3, v8);
  return 0xFFFFFFFFLL;
}

uint64_t **aaSegmentStreamOpen(void *a1, void *a2)
{
  v3 = SegmentStreamCreate(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v12 = pc_array_indirect_sort(a2[267], compare_extents_by_position);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = a2[269];
      do
      {
        if (v14 >= v15)
        {
          v17 = 0;
          v16 = a2 + 265;
        }

        else
        {
          v16 = v12[v14];
          v17 = v16[1];
        }

        v18 = *v16;
        v19 = *v16 >= v13;
        v20 = *v16 - v13;
        if (v20 != 0 && v19)
        {
          v40 = v5[397];
          v41 = v20;
          v42 = v13;
          v43 = 0;
          v44 = 0;
          v5[397] = v40 + v20;
          v21 = pc_array_append(v5[395], &v40, v6, v7, v8, v9, v10, v11);
          v5[395] = v21;
          if (!v21)
          {
            v37 = "segment_add";
            v38 = 476;
            goto LABEL_28;
          }

          v15 = a2[269];
        }

        v13 = v18 + v17;
        ++v14;
      }

      while (v14 <= v15);
      v22 = v5[397];
      a2[258] = v22;
      v23 = a2[270];
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          v25 = (a2[268] + 129 * v24);
          v26 = a2[267];
          v27 = v5[397];
          v25[4] = 0;
          v25[5] = v27;
          if (v25[15])
          {
            break;
          }

LABEL_19:
          if (++v24 >= v23)
          {
            v22 = v5[397];
            goto LABEL_21;
          }
        }

        v28 = 0;
        v29 = v5[395];
        v30 = (v26 + 16 * v25[14] + 8);
        while (1)
        {
          v32 = *(v30 - 1);
          v31 = *v30;
          v40 = v5[397];
          v41 = v31;
          v42 = v32;
          v43 = 0;
          v44 = 0;
          v5[397] = v40 + v31;
          v29 = pc_array_append(v29, &v40, v6, v7, v8, v9, v10, v11);
          v5[395] = v29;
          if (!v29)
          {
            break;
          }

          v33 = *v30;
          v30 += 2;
          v25[4] += v33;
          if (++v28 >= v25[15])
          {
            v23 = a2[270];
            goto LABEL_19;
          }
        }

        v37 = "segment_add";
        v38 = 500;
      }

      else
      {
LABEL_21:
        v5[396] = *(v5[395] - 64);
        if (v22 == a2[265])
        {
          free(v12);
          return v4;
        }

        v37 = "bad image";
        v38 = 507;
      }
    }

    else
    {
      v37 = "pc_array_indirect_sort";
      v38 = 465;
    }

LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", v38, 137, 0, v37, v10, v11, v40);
  }

  else
  {
    v34 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 457, 137, *v34, "aaSegmentStreamOpen", v35, v36, v40);
    v12 = 0;
    v5 = 0;
  }

  free(v12);
  free(v4);
  SegmentStreamClose(v5);
  return 0;
}

void *SegmentStreamCreate(void *a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0xC78uLL);
  v8 = v5;
  if (!v4 || !v5)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 416;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", v11, 137, v9, v10, v6, v7, v13);
    free(v4);
    SegmentStreamClose(v8);
    return 0;
  }

  if (!a1[4] || !a1[5])
  {
    v10 = "stream not compatible";
    v11 = 417;
    v9 = 0;
    goto LABEL_9;
  }

  *v5 = a1;
  v5[1] = a2;
  v5[395] = pc_array_init(29);
  AACustomByteStreamSetData(v4, v8);
  AACustomByteStreamSetPReadProc(v4, SegmentStreamPRead);
  AACustomByteStreamSetPWriteProc(v4, SegmentStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, SegmentStreamCancel);
  AACustomByteStreamSetCloseProc(v4, SegmentStreamClose);
  if (a1[11])
  {
    v4[11] = SegmentStreamSimulate;
  }

  return v4;
}

uint64_t SegmentStreamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 3152))
    {
      for (i = 16; i != 3088; i += 24)
      {
        free(*(a1 + i));
      }

      pthread_mutex_destroy((a1 + 3088));
    }

    pc_array_free(*(a1 + 3160));
    free(a1);
  }

  return 0;
}

uint64_t *aaForkInputStreamOpen(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 2128) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 538, 137, 0, "no chunk info", a7, a8, v48);
    v8 = 0;
LABEL_12:
    v13 = 0;
    goto LABEL_40;
  }

  v12 = SegmentStreamCreate(a1, a2);
  v8 = v12;
  if (!v12)
  {
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 542, 137, *v25, "SegmentStreamCreate", v26, v27, v48);
    goto LABEL_12;
  }

  v13 = *v12;
  if (a1[11])
  {
    *(v13 + 3184) = 1;
  }

  v14 = 0;
  *(v13 + 3152) = 1;
  do
  {
    v15 = malloc(0x10000uLL);
    v16 = v13 + v14;
    *(v16 + 16) = v15;
    *(v16 + 24) = -1;
    if (!v15)
    {
      v28 = *__error();
      v23 = "malloc";
      v24 = 554;
      goto LABEL_39;
    }

    v14 += 24;
  }

  while (v14 != 3072);
  if (pthread_mutex_init((v13 + 3088), 0))
  {
    v23 = "MutexInit";
    v24 = 556;
    goto LABEL_38;
  }

  v51 = 0;
  v50 = 1;
  v49 = a3;
  while (!*(a2 + 2160))
  {
LABEL_32:
    if ((v50 & 1) == 0)
    {
      *(v13 + 3168) = *(*(v13 + 3160) - 64);
      *(a2 + 2080) = *(v13 + 3176);
      return v8;
    }

    v44 = *(v13 + 3176);
    *(a2 + 2056) = v44;
    v45 = *(a2 + 2064);
    if (v45)
    {
      __src = v44;
      v53 = v45;
      v54 = 0;
      v55 = 0;
      *(v13 + 3176) = v45 + v44;
      v46 = pc_array_append(*(v13 + 3160), &__src, v17, v18, v19, v20, v21, v22);
      *(v13 + 3160) = v46;
      if (!v46)
      {
        v23 = "segment_add";
        v24 = 607;
        goto LABEL_38;
      }

      v44 = *(v13 + 3176);
    }

    v50 = 0;
    *(a2 + 2072) = v44;
    v51 = 1;
  }

  v29 = 0;
  while (1)
  {
    v30 = *(a2 + 2144) + 129 * v29;
    if (a3)
    {
      LOBYTE(v31) = 1;
    }

    else
    {
      v31 = *(v30 + 104);
    }

    if (!(v51 & 1 | ((v31 & 1) == 0)))
    {
      break;
    }

LABEL_29:
    if (!(v50 & 1 | ((v31 & 2) == 0)))
    {
      v41 = *(v13 + 3176);
      *(v30 + 48) = v41;
      v42 = *(v30 + 32);
      __src = v41;
      v53 = v42;
      v54 = 0;
      v55 = 0;
      *(v13 + 3176) = v42 + v41;
      v43 = pc_array_append(*(v13 + 3160), &__src, v17, v18, v19, v20, v21, v22);
      *(v13 + 3160) = v43;
      if (!v43)
      {
        v23 = "segment_add";
        v24 = 597;
        goto LABEL_38;
      }
    }

LABEL_31:
    ++v29;
    a3 = v49;
    if (v29 >= *(a2 + 2160))
    {
      goto LABEL_32;
    }
  }

  if (!*(v30 + 80))
  {
    v23 = "no chunks found";
    v24 = 572;
    goto LABEL_38;
  }

  *(v30 + 48) = *(v13 + 3176);
  if (!*(v30 + 56))
  {
    goto LABEL_31;
  }

  v32 = 0;
  v33 = 0;
  v34 = *(v30 + 88);
  v35 = *(v13 + 3160);
  while (1)
  {
    v36 = *(v30 + 80) + v32;
    v37 = v34 >= 0x10000 ? 0x10000 : v34;
    v38 = *v36 + *(v30 + 40);
    v39 = *(v36 + 8);
    v40 = *(v30 + 128);
    __src = *(v13 + 3176);
    *&v53 = v37;
    *(&v53 + 1) = v38;
    v54 = v39;
    v55 = v40;
    *(v13 + 3176) = __src + v37;
    v35 = pc_array_append(v35, &__src, v17, v18, v19, v20, v21, v22);
    *(v13 + 3160) = v35;
    if (!v35)
    {
      break;
    }

    v34 -= v37;
    ++v33;
    v32 += 12;
    if (v33 >= *(v30 + 56))
    {
      goto LABEL_29;
    }
  }

  v23 = "segment_add";
  v24 = 584;
LABEL_38:
  v28 = 0;
LABEL_39:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", v24, 137, v28, v23, v21, v22, v48);
LABEL_40:
  free(v8);
  SegmentStreamClose(v13);
  return 0;
}