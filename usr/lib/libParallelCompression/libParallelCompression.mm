uint64_t processEntryThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v218 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%d] Entry processing thread starting\n", *(v0 + 8));
  }

  memset(&v202, 0, sizeof(v202));
  saveThreadErrorContext(v217);
  v3 = sysconf(71);
  v4 = sysconf(70);
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v5 <= 4096)
  {
    v6 = 4096;
  }

  else
  {
    v6 = v5;
  }

  v8 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  bzero(v216, 0x400uLL);
  bzero(path, 0x800uLL);
  v9 = v1[131];
  __memcpy_chk();
  path[v9] = 47;
  v10 = &path[v9 + 1];
  v13 = MemBufferCreate(0x40000uLL);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 244, 12, 0, "alloc writer buffer", v11, v12, v173);
    ++*(v0 + 32);
  }

  string = malloc(v6);
  if (string)
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_19:
    v190 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v18 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 246, 12, *v18, "malloc", v19, v20, v173);
  v6 = 0;
  ++*(v0 + 32);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_13:
  v190 = v8;
  v8 = calloc(v8, 0x408uLL);
  if (v8)
  {
    if (v7)
    {
LABEL_15:
      v14 = malloc(v7);
      if (!v14)
      {
        v15 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 255, 12, *v15, "malloc", v16, v17, v173);
        v14 = 0;
        v7 = 0;
        ++*(v0 + 32);
      }

      v193 = v14;
      bzero(v14, v7);
      goto LABEL_21;
    }
  }

  else
  {
    v168 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 250, 12, *v168, "malloc", v169, v170, v173);
    v190 = 0;
    ++*(v0 + 32);
    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  v193 = 0;
LABEL_21:
  v21 = *(v0 + 8);
  if (pthread_mutex_lock((v1 + 143)))
  {
    v25 = 0;
    goto LABEL_23;
  }

  v183 = v6;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v25 = 0;
  v189 = v8;
  while (1)
  {
    __ptr = v25;
    v27 = *(v1 + 282);
    v28 = *(v1 + 283);
    v29 = v27;
    if (v27 < v28)
    {
      *(v1[142] + 4 * v27) = v21;
      v29 = *(v1 + 282);
    }

    *(v1 + 282) = v29 + 1;
    if (!v29 && pthread_cond_broadcast((v1 + 151)))
    {
      v171 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v172 = 122;
LABEL_241:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", v172, 0, v171, v30, v31, v32, v173);
      v8 = v189;
      v25 = __ptr;
LABEL_24:
      v26 = (v0 + 32);
      goto LABEL_232;
    }

    if (pthread_mutex_unlock((v1 + 143)))
    {
      v171 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v172 = 124;
      goto LABEL_241;
    }

    if (v27 >= v28)
    {
      v171 = "SharedArrayPush: stack is full\n";
      v172 = 125;
      goto LABEL_241;
    }

    v8 = v189;
    v25 = __ptr;
    if (pthread_mutex_lock((v0 + 48)))
    {
      break;
    }

    while (1)
    {
      v33 = *(v0 + 40);
      if (v33 > 0)
      {
        break;
      }

      if (pthread_cond_wait((v0 + 112), (v0 + 48)))
      {
        goto LABEL_231;
      }
    }

    *(v0 + 40) = v33 - 1;
    if (pthread_mutex_unlock((v0 + 48)))
    {
      break;
    }

    v34 = *(v0 + 24);
    if (v34 < 0)
    {
      goto LABEL_233;
    }

    v35 = v1[134] + 280 * v34;
    v36 = ArchiveTreeNodePath(v1[132], v34, v10, 2047 - v1[131]);
    v187 = v10;
    v188 = v35;
    if (v36 < 0)
    {
      v40 = 276;
      v41 = 0;
      v42 = "full entry path is too long";
      goto LABEL_48;
    }

    if (v2 < 3)
    {
      if (v2 == 2)
      {
        v43 = *MEMORY[0x29EDCA610];
        if (v36)
        {
          fprintf(v43, "%s\n");
        }

        else
        {
          fwrite(".\n", 2uLL, 1uLL, v43);
        }
      }
    }

    else
    {
      v39 = *(v0 + 8);
      fprintf(*MEMORY[0x29EDCA610], "[%d] processing entry %s\n");
    }

    *(v35 + 192) = *(v0 + 8);
    if (lstat(path, &v202))
    {
      v41 = *__error();
      v173 = path;
      v40 = 289;
LABEL_47:
      v42 = "%s";
      goto LABEL_48;
    }

    v182 = v2;
    AAEntryType = getAAEntryType(v202.st_mode);
    v49 = AAEntryType;
    v50 = *v1;
    v51 = *(*v1 + 64);
    if (v51)
    {
      *&v203[12] = 0;
      *v203 = v10;
      *&v203[8] = AAEntryType;
      *&v203[16] = v189;
      *&v203[24] = v190;
      *&v203[32] = 0;
      *&v203[40] = v193;
      *&v203[48] = v7;
      v51(*(v50 + 72), v203);
      v185 = *&v203[56];
      v186 = *&v203[32];
    }

    *v35 = v49;
    if (!v49)
    {
      LOBYTE(v173) = v202.st_mode;
      v52 = 318;
      v53 = 0;
      v54 = "file type is not supported (st_mode=0%o): %s";
      goto LABEL_58;
    }

    *(v35 + 80) = v202.st_ino;
    *(v35 + 72) = v202.st_nlink;
    if (v49 == 70)
    {
      *(v35 + 96) = v202.st_size;
    }

    else
    {
      if ((v49 & 0xFFFFFFFE) != 0x42)
      {
        v68 = v49 == 76;
        v2 = v182;
        if (v68)
        {
          v69 = readlink(path, v216, 0x3FFuLL);
          if (v69 < 0)
          {
            v41 = *__error();
            v173 = path;
            v40 = 328;
            goto LABEL_47;
          }

          if (!v69)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 329, 12, 0, "readlink returned an empty string: %s", v70, v71, path);
            goto LABEL_49;
          }

          v216[v69] = 0;
          if (BlobBufferStore(v0 + 160, v216, v69 + 1, (v35 + 200)))
          {
            v40 = 333;
            v41 = 0;
            v42 = "storing link";
            goto LABEL_48;
          }
        }

        goto LABEL_63;
      }

      *(v35 + 88) = v202.st_rdev;
    }

    v2 = v182;
LABEL_63:
    *(v35 + 60) = *&v202.st_uid;
    *(v35 + 4) = v202.st_mode & 0xFFF;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 68) = v202.st_flags;
    *(v35 + 8) = v202.st_mtimespec;
    *&c.h2 = 0;
    *&c.h4 = 0;
    memset(v203, 0, 64);
    c.h0 = 5;
    c.h1 = 8704;
    if (!getattrlist(path, &c, v203, 0x40uLL, 1u) && *v203 == 36)
    {
      *(v35 + 24) = *&v203[4];
      *(v35 + 40) = *&v203[20];
    }

    FileProtectionClass = getFileProtectionClass(path);
    if ((FileProtectionClass - 1) >= 6)
    {
      v56 = 0;
    }

    else
    {
      v56 = FileProtectionClass + 64;
    }

    *(v35 + 56) = v56;
    v57 = v35;
    *&v58 = -1;
    *(&v58 + 1) = -1;
    *(v35 + 104) = v58;
    v59 = (v35 + 104);
    *(v57 + 120) = v58;
    if (*v57 != 70)
    {
      goto LABEL_104;
    }

    *&v203[8] = 0;
    *v203 = 0;
    if (!fsctl(path, 0x40104A0EuLL, v203, 0) && *v203 == 2)
    {
      *v59 = *&v203[8];
    }

    if (!v13)
    {
      goto LABEL_104;
    }

    if (*v188 != 70)
    {
      goto LABEL_104;
    }

    v60 = *(v1 + 1080);
    if ((v60 & 7) == 0)
    {
      goto LABEL_104;
    }

    v195.pw_name = 0;
    v195.pw_passwd = 0;
    memset(&c, 0, sizeof(c));
    memset(v203, 0, 104);
    if (v60)
    {
      CC_CKSUM_Init(&v195);
      v60 = *(v1 + 1080);
    }

    v25 = __ptr;
    if ((v60 & 2) != 0)
    {
      CC_SHA1_Deprecated_Init(&c);
      v60 = *(v1 + 1080);
    }

    if ((v60 & 4) != 0)
    {
      CC_SHA256_Init(v203);
    }

    v61 = open(path, 0);
    if (v61 < 0)
    {
      v41 = *__error();
      v173 = path;
      v40 = 413;
      goto LABEL_47;
    }

    v62 = v61;
    MemBufferClear(v13);
    FreePtr = MemBufferGetFreePtr(v13);
    FreeSize = MemBufferGetFreeSize(v13);
    v65 = read(v62, FreePtr, FreeSize);
    if (v65 < 0)
    {
LABEL_102:
      v72 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 421, 12, *v72, "%s", v73, v74, path);
      v2 = v182;
      v10 = v187;
      goto LABEL_103;
    }

    v66 = v65;
    while (1)
    {
      v67 = *(v1 + 1080);
      if (!v66)
      {
        break;
      }

      if (v1[135])
      {
        CC_CKSUM_Update(&v195, FreePtr, v66);
        v67 = *(v1 + 1080);
        if ((v67 & 2) != 0)
        {
LABEL_93:
          CC_SHA1_Deprecated_Update(&c, FreePtr, v66);
          if ((v1[135] & 4) == 0)
          {
            goto LABEL_90;
          }

LABEL_89:
          CC_SHA256_Update(v203, FreePtr, v66);
          goto LABEL_90;
        }
      }

      else if ((v1[135] & 2) != 0)
      {
        goto LABEL_93;
      }

      if ((v67 & 4) != 0)
      {
        goto LABEL_89;
      }

LABEL_90:
      v66 = read(v62, FreePtr, FreeSize);
      if (v66 < 0)
      {
        goto LABEL_102;
      }
    }

    if (v1[135])
    {
      CC_CKSUM_Final((v188 + 136), &v195);
      v67 = *(v1 + 1080);
    }

    v2 = v182;
    v10 = v187;
    if ((v67 & 2) != 0)
    {
      CC_SHA1_Deprecated_Final((v188 + 140), &c);
      v67 = *(v1 + 1080);
    }

    if ((v67 & 4) != 0)
    {
      CC_SHA256_Final((v188 + 160), v203);
    }

LABEL_103:
    close(v62);
LABEL_104:
    if ((*(*v1 + 33) & 4) != 0)
    {
      MemBufferClear(v13);
      v75 = listxattr(path, 0, 0, 1);
      if (v75 < 1)
      {
        v2 = v182;
      }

      else
      {
        v76 = v75;
        v77 = v184;
        if (v75 > v184)
        {
          __ptr = reallocf(__ptr, v75);
          if (!__ptr)
          {
            v127 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 455, 12, *v127, "malloc", v128, v129, v173);
            v25 = 0;
            v184 = v76;
            goto LABEL_59;
          }

          v77 = v76;
        }

        v25 = __ptr;
        v184 = v77;
        v78 = listxattr(path, __ptr, v77, 1);
        v2 = v182;
        if (v78 >= 1)
        {
          v79 = 0;
          name = __ptr;
          v176 = v78;
          do
          {
            v80 = &v25[v79];
            if (*v80)
            {
              ++v79;
              v25 = __ptr;
            }

            else
            {
              *v203 = 0;
              DataSize = MemBufferGetDataSize(v13);
              if (MemBufferFillFromBufferWithCapacityIncrease(v13, 4uLL, v203) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 479, 12, 0, "inserting XAT xsize: %s", v81, v82, path);
LABEL_222:
                v25 = __ptr;
                goto LABEL_49;
              }

              v178 = v80 - name;
              if (MemBufferFillFromBufferWithCapacityIncrease(v13, v80 - name + 1, name) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 480, 12, 0, "inserting XAT xname: %s", v83, v84, path);
                goto LABEL_222;
              }

              v85 = getxattr(path, name, 0, 0, 0, 1);
              v25 = __ptr;
              if (v85 < 0)
              {
                v132 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 488, 12, v132, "%s", v133, v134, path);
                goto LABEL_59;
              }

              v86 = v85;
              v87 = MemBufferGetDataSize(v13);
              if ((MemBufferIncreaseCapacity(v13, v87 + v86) & 0x8000000000000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 492, 12, 0, "increasing XAT buffer capacity: %s", v88, v89, path);
                goto LABEL_59;
              }

              value = MemBufferGetFreePtr(v13);
              v90 = MemBufferGetFreeSize(v13);
              if (getxattr(path, name, value, v90, 0, 1) < 0)
              {
                v53 = *__error();
                v52 = 500;
                v54 = "getxattr";
                goto LABEL_58;
              }

              if (MemBufferIncreaseSize(v13, v86, v91, v92, v93, v94, v95, v96) < 0)
              {
                v52 = 501;
                v53 = 0;
                v54 = "invalid size increase";
LABEL_58:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v52, 12, v53, v54, v47, v48, v173);
LABEL_59:
                v2 = v182;
                goto LABEL_49;
              }

              *v203 = v178 + v86 + 5;
              if (*&v203[4])
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 505, 12, 0, "XAT value is too long to be stored in YAA archive (%zd B): %s", v47, v48, v86);
                goto LABEL_59;
              }

              DataPtr = MemBufferGetDataPtr(v13);
              *(DataPtr + DataSize) = *v203;
              name = &__ptr[++v79];
              v2 = v182;
              v78 = v176;
            }
          }

          while (v79 != v78);
        }
      }

      if (!MemBufferIsEmpty(v13))
      {
        v121 = MemBufferGetDataPtr(v13);
        v122 = MemBufferGetDataSize(v13);
        if (!BlobBufferStore(v0 + 160, v121, v122, (v188 + 216)))
        {
          v2 = v182;
          if (v182 >= 3)
          {
            v130 = *MEMORY[0x29EDCA610];
            v174 = MemBufferGetDataSize(v13);
            v131 = v130;
            v2 = v182;
            fprintf(v131, "XAT blob [%zu] stored for %s\n", v174, path);
          }

          goto LABEL_125;
        }

        v125 = 517;
        v126 = "storing XAT";
LABEL_221:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v125, 12, 0, v126, v123, v124, v173);
        v2 = v182;
        goto LABEL_222;
      }
    }

LABEL_125:
    if ((*(*v1 + 33) & 8) == 0)
    {
      goto LABEL_204;
    }

    v98 = v202.st_mode & 0xF000;
    if (v98 != 0x8000 && v98 != 0x4000)
    {
      goto LABEL_204;
    }

    MemBufferClear(v13);
    file = acl_get_file(path, ACL_TYPE_EXTENDED);
    if (!file)
    {
      goto LABEL_203;
    }

    entry_p = 0;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    memset(v203, 0, sizeof(v203));
    namea = file;
    if (acl_get_entry(file, 0, &entry_p))
    {
      goto LABEL_202;
    }

    v100 = 1;
    while (2)
    {
      tag_type_p = ACL_UNDEFINED_TAG;
      flagset_p = 0;
      mask_p = 0;
      *id_type = 0;
      memset(&c, 0, 72);
      memset(v203, 0, sizeof(v203));
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      if (acl_get_tag_type(entry_p, &tag_type_p))
      {
        v135 = *__error();
        v138 = 551;
        v139 = "acl_get_tag_type";
LABEL_200:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v138, 12, v135, v139, v136, v137, v173);
        v140 = 0;
        goto LABEL_201;
      }

      if (tag_type_p - 1 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", tag_type_p);
LABEL_160:
        if (acl_get_entry(namea, v100++, &entry_p))
        {
          goto LABEL_202;
        }

        continue;
      }

      break;
    }

    *v203 = tag_type_p;
    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v135 = *__error();
      v138 = 558;
      v139 = "acl_get_flagset_np";
      goto LABEL_200;
    }

    if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
    {
      *&v203[16] |= 0x20000uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
    {
      *&v203[16] |= 0x10uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
    {
      *&v203[16] |= 0x20uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
    {
      *&v203[16] |= 0x40uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
    {
      *&v203[16] |= 0x80uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
    {
      *&v203[16] |= 0x100uLL;
    }

    if (acl_get_permset_mask_np(entry_p, &mask_p))
    {
      v135 = *__error();
      v138 = 569;
      v139 = "acl_get_permset_mask_np";
      goto LABEL_200;
    }

    *&v203[8] = mask_p & 0x103FFE;
    qualifier = acl_get_qualifier(entry_p);
    if (!qualifier)
    {
      v135 = *__error();
      v138 = 574;
      v139 = "acl_get_qualifier";
      goto LABEL_200;
    }

    v102 = qualifier;
    if (!*&v203[24])
    {
      if (mbr_uuid_to_id(qualifier, &id_type[1], id_type))
      {
        goto LABEL_150;
      }

      if (id_type[0] == 1)
      {
        memset(&v195, 0, 32);
        v194 = 0;
        if (!getgrgid_r(id_type[1], &v195, string, v183, &v194) && v194 && v195.pw_name && strlen(v195.pw_name) <= 0xFF)
        {
          v120 = 2;
LABEL_174:
          *&v203[24] = v120;
          __strlcpy_chk();
        }
      }

      else if (!id_type[0])
      {
        memset(&v195, 0, sizeof(v195));
        v194 = 0;
        if (!getpwuid_r(id_type[1], &v195, string, v183, &v194) && v194 && v195.pw_name && strlen(v195.pw_name) <= 0xFF)
        {
          v120 = 1;
          goto LABEL_174;
        }
      }

LABEL_150:
      if (!*&v203[24])
      {
        if (!mbr_uuid_to_sid(v102, &c) && !mbr_sid_to_string(&c, string) && strlen(string) <= 0xFF)
        {
          *&v203[24] = 3;
          __strlcpy_chk();
        }

        if (!*&v203[24])
        {
          *&v203[24] = 4;
          uuid_unparse_upper(v102, &v203[28]);
          if (!*&v203[24])
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 616, 12, 0, "resolving ACE qualifier: %s", v103, v104, path);
            goto LABEL_229;
          }
        }
      }
    }

    v105 = MemBufferGetFreePtr(v13);
    v106 = MemBufferGetFreeSize(v13);
    v112 = yaa_encodeACE(v105, v106, v203, v107, v108, v109, v110, v111);
    if ((v112 & 0x8000000000000000) == 0)
    {
      MemBufferIncreaseSize(v13, v112, v113, v114, v115, v116, v117, v118);
      acl_free(v102);
      v2 = v182;
      goto LABEL_160;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 620, 12, 0, "encoding ACE", v117, v118, v173);
LABEL_229:
    v2 = v182;
    v140 = v102;
LABEL_201:
    acl_free(v140);
LABEL_202:
    acl_free(namea);
LABEL_203:
    if (!MemBufferIsEmpty(v13))
    {
      v160 = MemBufferGetDataPtr(v13);
      v161 = MemBufferGetDataSize(v13);
      if (!BlobBufferStore(v0 + 160, v160, v161, (v188 + 232)))
      {
        v2 = v182;
        if (v182 >= 3)
        {
          v164 = *MEMORY[0x29EDCA610];
          v175 = MemBufferGetDataSize(v13);
          v165 = v164;
          v2 = v182;
          fprintf(v165, "ACL blob [%zu] stored for %s\n", v175, path);
        }

        goto LABEL_204;
      }

      v125 = 637;
      v126 = "storing ACL";
      goto LABEL_221;
    }

LABEL_204:
    if (!v186)
    {
      v186 = 0;
      v25 = __ptr;
      goto LABEL_50;
    }

    MemBufferClear(v13);
    v141 = 0;
    v142 = v189;
    v143 = v186;
    while (2)
    {
      if (*(v142 + 4) == 2)
      {
        v141 += *(v142 + 8);
      }

      v144 = MemBufferGetFreePtr(v13);
      v145 = MemBufferGetFreeSize(v13);
      v151 = yaa_encodeHeaderField(v144, v145, v142, v146, v147, v148, v149, v150);
      if ((v151 & 0x8000000000000000) != 0)
      {
        v158 = 653;
        v159 = "extra header field is too large for processing thread buffer";
LABEL_218:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v158, 12, 0, v159, v156, v157, v173);
        v2 = v182;
        v8 = v189;
        goto LABEL_222;
      }

      MemBufferIncreaseSize(v13, v151, v152, v153, v154, v155, v156, v157);
      v142 += 1032;
      if (--v143)
      {
        continue;
      }

      break;
    }

    if (v185 != v141)
    {
      v158 = 658;
      v159 = "extra header data size doesn't match expected value";
      goto LABEL_218;
    }

    v2 = v182;
    v8 = v189;
    v25 = __ptr;
    if (!MemBufferIsEmpty(v13))
    {
      v162 = MemBufferGetDataPtr(v13);
      v163 = MemBufferGetDataSize(v13);
      if (BlobBufferStore(v0 + 160, v162, v163, (v188 + 248)))
      {
        v40 = 663;
        v41 = 0;
        v42 = "storing encoded extra fields";
        goto LABEL_48;
      }
    }

    if (v185)
    {
      if (!BlobBufferStore(v0 + 160, v193, v185, (v188 + 264)))
      {
        goto LABEL_50;
      }

      v40 = 668;
      v41 = 0;
      v42 = "storing extra fields data";
LABEL_48:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v40, 12, v41, v42, v37, v38, v173);
LABEL_49:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 680, 12, 0, "processing failed for entry %zd\n", v44, v45, *(v0 + 24));
      ++*(v0 + 32);
      v10 = v187;
      *(v188 + 196) = 1;
    }

    else
    {
      v185 = 0;
    }

LABEL_50:
    v21 = *(v0 + 8);
    if (pthread_mutex_lock((v1 + 143)))
    {
LABEL_23:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n", v22, v23, v24, v173);
      goto LABEL_24;
    }
  }

LABEL_231:
  v26 = (v0 + 32);
LABEL_232:
  ++*v26;
LABEL_233:
  MemBufferDestroy(v13);
  free(string);
  free(v8);
  free(v193);
  free(v25);
  if (v2 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%d] terminating\n", *(v0 + 8));
  }

  restoreThreadErrorContext(v217);
  v166 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t *resolveSameThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v38 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  bzero(v37, 0x800uLL);
  bzero(v36, 0x800uLL);
  v2 = *(v1 + 1272);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v0 + 5;
    v6 = v0 + 4;
    while (1)
    {
      v7 = (*(v1 + 1288) + 16 * v4);
      v8 = HIDWORD(*v7);
      if (v8 >= v0[2])
      {
        if (v8 >= v0[3])
        {
          goto LABEL_54;
        }

        v9 = *(v1 + 1072) + 280 * v7[1];
        v10 = v4 + 1;
        if (*(v9 + 128) == -1 && v10 < v2)
        {
          v12 = *(v1 + 1288);
          v13 = (v12 + 16 * v10);
          if (*v13 == *(v12 + 16 * v4))
          {
            break;
          }
        }
      }

LABEL_10:
      ++v4;
      v3 += 16;
      if (v4 >= v2)
      {
        goto LABEL_54;
      }
    }

    v14 = v3;
    while (1)
    {
      v15 = *(v1 + 1072) + 280 * v13[1];
      if (*(v15 + 112) != -1 || *(v15 + 120) != -1 || *(v15 + 128) != -1)
      {
        goto LABEL_50;
      }

      if ((*(v1 + 1080) & 2) != 0)
      {
        v16 = *(v9 + 140) == *(v15 + 140) && *(v9 + 148) == *(v15 + 148);
        if (!v16 || *(v9 + 156) != *(v15 + 156))
        {
          goto LABEL_50;
        }
      }

      if ((*(v1 + 1080) & 4) != 0)
      {
        v18 = *(v9 + 160) == *(v15 + 160) && *(v9 + 168) == *(v15 + 168);
        v19 = v18 && *(v9 + 176) == *(v15 + 176);
        if (!v19 || *(v9 + 184) != *(v15 + 184))
        {
          goto LABEL_50;
        }
      }

      v34 = v6;
      v35 = v5;
      if (ArchiveTreeNodePath(*(v1 + 1056), *(v12 + 16 * v4 + 8), v37, 0x800uLL) < 0)
      {
        break;
      }

      if (ArchiveTreeNodePath(*(v1 + 1056), *(*(v1 + 1288) + v14 + 24), v36, 0x800uLL) < 0)
      {
        v29 = 726;
        goto LABEL_47;
      }

      v23 = areFilesEqual2();
      if (v23 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "resolveSameThreadProc", 729, 12, 0, "File comparison failed: %s vs %s", v24, v25, v37);
        goto LABEL_48;
      }

      v6 = v34;
      v5 = v35;
      if (!v23)
      {
        goto LABEL_50;
      }

      add = *(v9 + 128);
      if (add == -1)
      {
        add = atomic_fetch_add((v1 + 1328), 1uLL);
        *(v9 + 128) = add;
      }

      *(v15 + 128) = add;
      v27 = *(v15 + 96);
      v28 = v35;
LABEL_49:
      *v28 += v27;
LABEL_50:
      ++v10;
      v2 = *(v1 + 1272);
      if (v10 < v2)
      {
        v12 = *(v1 + 1288);
        v30 = v12 + v14;
        v14 += 16;
        v13 = (v12 + 16 * v10);
        if (*(v30 + 32) == *(v12 + 16 * v4))
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v29 = 725;
LABEL_47:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "resolveSameThreadProc", v29, 12, 0, "entry path too long", v21, v22, v33);
LABEL_48:
    v6 = v34;
    v5 = v35;
    v28 = v34;
    v27 = 1;
    goto LABEL_49;
  }

LABEL_54:
  v31 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t ParallelArchiveWriteDirContents()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v301 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(v0, v1, v4, v5, v6, v7, v8, v9, v258);
  DefaultNThreads = *(v2 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v11 = *v2;
  v12 = *(v3 + 40);
  bzero(&v272, 0x540uLL);
  v270 = v2;
  v271 = v3;
  v272 = *v3;
  if (!realpath_DARWIN_EXTSN(*(v2 + 16), v273))
  {
    v17 = *__error();
    v15 = "invalid inDir";
    v16 = 825;
    goto LABEL_26;
  }

  v274 = strlen(v273);
  if (v274 - 1015 <= 0xFFFFFFFFFFFFFBFELL)
  {
    v15 = "invalid inDir length";
    v16 = 827;
    goto LABEL_25;
  }

  v18 = ArchiveTreeCreateFromDirectory(v273, *(v2 + 24), *(v2 + 56), *(v2 + 72), DefaultNThreads, v11);
  v275 = v18;
  if (!v18)
  {
    v15 = "building archive tree";
    v16 = 831;
    goto LABEL_25;
  }

  v276 = ArchiveTreeSize(v18);
  v277 = calloc(v276, 0x118uLL);
  if (!v277)
  {
    v17 = *__error();
    v15 = "malloc";
    v16 = 836;
    goto LABEL_26;
  }

  if (!v276)
  {
    goto LABEL_424;
  }

  v19 = 0;
  for (i = 0; i < v276; ++i)
  {
    v21 = v277 + v19;
    *(v21 + 34) = 0;
    *(v21 + 15) = 0uLL;
    *(v21 + 16) = 0uLL;
    *(v21 + 13) = 0uLL;
    *(v21 + 14) = 0uLL;
    *(v21 + 11) = 0uLL;
    *(v21 + 12) = 0uLL;
    *(v21 + 9) = 0uLL;
    *(v21 + 10) = 0uLL;
    *(v21 + 7) = 0uLL;
    *(v21 + 8) = 0uLL;
    *(v21 + 5) = 0uLL;
    *(v21 + 6) = 0uLL;
    *(v21 + 3) = 0uLL;
    *(v21 + 4) = 0uLL;
    *(v21 + 1) = 0uLL;
    *(v21 + 2) = 0uLL;
    *v21 = 0uLL;
    *(v21 + 48) = -1;
    v19 += 280;
  }

  if (!v276)
  {
    goto LABEL_424;
  }

  v22 = v278 & 0xFE | (*(v270 + 32) >> 12) & 1;
  v278 = v278 & 0xFE | ((*(v270 + 32) & 0x1000) != 0);
  v278 = v22 & 0xFD | (2 * ((*(v270 + 32) & 0x2000) != 0));
  v278 = v278 & 0xFB | (*(v270 + 32) >> 12) & 4;
  if (v276 >= DefaultNThreads)
  {
    v23 = DefaultNThreads;
  }

  else
  {
    v23 = v276;
  }

  LODWORD(__count) = v23;
  v283 = 0;
  v284 = v23;
  v285 = calloc(v23, 4uLL);
  if (!v285)
  {
    v27 = "SharedArrayInit: malloc failed\n";
    v28 = 55;
    goto LABEL_24;
  }

  if (pthread_mutex_init(&v286, 0))
  {
    v27 = "SharedArrayInit: pthread_mutex_init failed\n";
    v28 = 56;
LABEL_24:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", v28, 0, v27, v24, v25, v26, v259);
    v15 = "init available_threads";
    v16 = 850;
    goto LABEL_25;
  }

  if (pthread_cond_init(&v287, 0))
  {
    v27 = "SharedArrayInit: pthread_cond_init failed\n";
    v28 = 57;
    goto LABEL_24;
  }

  v282 = calloc(__count, 0xC8uLL);
  if (!v282)
  {
    v17 = *__error();
    v15 = "malloc";
    v16 = 852;
    goto LABEL_26;
  }

  if (__count)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = v282;
      v47 = v282 + v44;
      *v47 = &v270;
      *(v47 + 2) = v45;
      *(v47 + 3) = -1;
      *(v47 + 10) = 0;
      if (pthread_mutex_init((v47 + 48), 0) || pthread_cond_init((v47 + 112), 0))
      {
        v15 = "init entry_ready";
        v16 = 860;
        goto LABEL_25;
      }

      if (createThread(&v46[v44 + 16], processEntryThreadProc, v47, 0))
      {
        v17 = *__error();
        v15 = "createThread";
        v16 = 863;
        goto LABEL_26;
      }

      ++v45;
      v48 = __count;
      v44 += 200;
    }

    while (v45 < __count);
  }

  else
  {
    v48 = 0;
  }

  v49 = v276;
  if (v276 + v48)
  {
    v83 = 0;
    do
    {
      if (pthread_mutex_lock(&v286))
      {
        v92 = "SharedArrayPop: pthread_mutex_lock failed\n";
        v93 = 91;
        goto LABEL_151;
      }

      while (1)
      {
        v87 = v283;
        if (v283)
        {
          break;
        }

        if (pthread_cond_wait(&v287, &v286))
        {
          v92 = "SharedArrayPop: pthread_cond_wait failed\n";
          v93 = 94;
LABEL_151:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", v93, 0, v92, v84, v85, v86, v259);
          v15 = "waiting for an available worker";
          v16 = 871;
          goto LABEL_25;
        }
      }

      --v283;
      v88 = *(v285 + (v87 - 1));
      if (pthread_mutex_unlock(&v286))
      {
        v92 = "SharedArrayPop: pthread_mutex_unlock failed\n";
        v93 = 98;
        goto LABEL_151;
      }

      v89 = v282 + 200 * v88;
      if (v83 >= v276)
      {
        v90 = -1;
      }

      else
      {
        v90 = v83;
      }

      *(v89 + 3) = v90;
      if (pthread_mutex_lock((v89 + 48)) || (v91 = *(v89 + 10), *(v89 + 10) = v91 + 1, !v91) && pthread_cond_broadcast((v89 + 112)) || pthread_mutex_unlock((v89 + 48)))
      {
        v15 = "starting task";
        v16 = 879;
        goto LABEL_25;
      }

      ++v83;
      v49 = v276;
      v48 = __count;
    }

    while (v83 < v276 + __count);
  }

  if (v49)
  {
    v50 = 0;
    v51 = v277 + 196;
    do
    {
      if (*v51)
      {
        ++v50;
      }

      v51 += 70;
      --v49;
    }

    while (v49);
    if (v50)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 887, 12, "%zu failed entries reported", v43, v13, v14, v50);
      v48 = __count;
    }
  }

  if (v48)
  {
    v52 = 0;
    for (j = 0; j < v48; ++j)
    {
      v54 = (v282 + v52);
      v55 = *(v282 + v52 + 168);
      if (v55)
      {
        if (BlobBufferStore(v279, v54[22], v55, v54 + 23))
        {
          v15 = "moving thread data to main state";
          v16 = 897;
          goto LABEL_25;
        }

        BlobBufferFree((v54 + 20));
        v48 = __count;
      }

      v52 += 200;
    }
  }

  v56 = v276;
  if (v276)
  {
    v57 = v282;
    v58 = v277 + 272;
    v59 = v276;
    do
    {
      v60 = *(v58 - 20);
      if (v60 == -1)
      {
        v15 = "invalid thread_id stored in entry";
        v16 = 907;
        goto LABEL_25;
      }

      v61 = v57[25 * v60 + 23];
      if (*(v58 - 6))
      {
        *(v58 - 7) += v61;
      }

      if (*(v58 - 4))
      {
        *(v58 - 5) += v61;
      }

      if (*(v58 - 8))
      {
        *(v58 - 9) += v61;
      }

      if (*(v58 - 2))
      {
        *(v58 - 3) += v61;
      }

      if (*v58)
      {
        *(v58 - 1) += v61;
      }

      v58 += 35;
      --v59;
    }

    while (v59);
    v62 = v293;
    v63 = v294;
    v64 = v277 + 104;
    v65 = v56;
    do
    {
      if (*(v64 - 26) == 70)
      {
        if (*(v64 - 16) >= 2u)
        {
          v293 = ++v62;
        }

        if (*v64 != -1)
        {
          v294 = ++v63;
        }
      }

      v64 += 35;
      --v65;
    }

    while (v65);
    if (v272 <= 0)
    {
      goto LABEL_181;
    }

    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v277 + 196;
    v78 = v56;
    do
    {
      v79 = *(v77 - 49);
      if (v79 <= 69)
      {
        if (v79 == 68)
        {
          v80 = v67 + 1;
        }

        else
        {
          v80 = v67;
        }

        if (v79 == 67)
        {
          v81 = v71 + 1;
        }

        else
        {
          v81 = v71;
        }

        if (v79 == 67)
        {
          v80 = v67;
        }

        if (v79 == 66)
        {
          ++v72;
        }

        else
        {
          v71 = v81;
        }

        if (v79 != 66)
        {
          v67 = v80;
        }
      }

      else if (v79 > 79)
      {
        if (v79 == 83)
        {
          v82 = v70 + 1;
        }

        else
        {
          v82 = v70;
        }

        if (v79 == 80)
        {
          ++v69;
        }

        else
        {
          v70 = v82;
        }
      }

      else if (v79 == 70)
      {
        ++v66;
        v76 += *(v77 - 100);
      }

      else if (v79 == 76)
      {
        ++v68;
      }

      if (*(v77 + 28))
      {
        ++v73;
      }

      if (*(v77 + 44))
      {
        ++v74;
      }

      if (*v77)
      {
        ++v75;
      }

      v77 += 280;
      --v78;
    }

    while (v78);
    goto LABEL_155;
  }

  if (v272 > 0)
  {
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
LABEL_155:
    v260 = v66;
    v261 = v68;
    v262 = v70;
    v263 = v72;
    v264 = v69;
    v266 = v76;
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries selected\n", v56);
    fprintf(*MEMORY[0x29EDCA610], "%12zu regular files\n", v260);
    fprintf(*MEMORY[0x29EDCA610], "%12zu directories\n", v67);
    v94 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu symbolic links\n", v261);
    if (v262)
    {
      fprintf(*v94, "%12zu sockets\n", v262);
    }

    if (v71)
    {
      fprintf(*v94, "%12zu character special entries\n", v71);
    }

    if (v263)
    {
      fprintf(*v94, "%12zu block special entries\n", v263);
    }

    if (v264)
    {
      fprintf(*v94, "%12zu FIFO\n", v264);
    }

    if (v73)
    {
      fprintf(*v94, "%12zu entries with XAT blob\n", v73);
    }

    if (v74)
    {
      fprintf(*v94, "%12zu entries with ACL blob\n", v74);
    }

    v95 = 0.0009765625;
    if (v266 >> 20)
    {
      v95 = 0.000000953674316;
      LODWORD(v96) = 77;
    }

    else
    {
      LODWORD(v96) = 75;
    }

    if (v266 >> 30)
    {
      v95 = 9.31322575e-10;
      v96 = 71;
    }

    else
    {
      v96 = v96;
    }

    fprintf(*v94, "%12llu bytes in regular files (%.2f %cB)\n", v266, v95 * v266, v96);
    if (v75)
    {
      fprintf(*v94, "%12zu entries reported an error\n", v75);
      if (v272 >= 2)
      {
        if (v276)
        {
          v97 = 0;
          v98 = 196;
          do
          {
            if (*(v277 + v98) && (ArchiveTreeNodePath(v275, v97, __key, 0x400uLL) & 0x8000000000000000) == 0)
            {
              fprintf(*v94, "- %s\n", __key);
            }

            ++v97;
            v98 += 280;
          }

          while (v97 < v276);
        }
      }
    }
  }

LABEL_181:
  if (v293)
  {
    __nel = 0;
    v99 = v276;
    if (v276)
    {
      v100 = 0;
      v101 = 0;
      v102 = 0;
      do
      {
        v103 = v277;
        if (*(v277 + v100) == 70 && *(v277 + v100 + 72) >= 2u)
        {
          v104 = __ptr;
          if (v101 >= v291)
          {
            v105 = v291 + (v291 >> 1);
            if (!v291)
            {
              v105 = 64;
            }

            v291 = v105;
            v104 = reallocf(__ptr, 16 * v105);
            __ptr = v104;
            if (!v104)
            {
              v17 = *__error();
              v15 = "malloc";
              v16 = 1007;
              goto LABEL_26;
            }

            v101 = __nel;
            v99 = v276;
          }

          v106 = &v104[16 * v101];
          *(v106 + 1) = v102;
          *v106 = *&v103[v100 + 80];
          __nel = ++v101;
        }

        ++v102;
        v100 += 280;
      }

      while (v102 < v99);
    }

    else
    {
      v101 = 0;
    }

    qsort(__ptr, v101, 0x10uLL, cmpINOEntry);
    v107 = __nel;
    if (__nel)
    {
      v108 = 0;
      do
      {
        if (v108 + 1 >= v107)
        {
          v107 = v108 + 1;
          v113 = 1;
        }

        else
        {
          v109 = (__ptr + 16 * v108);
          v112 = *v109;
          v111 = v109 + 2;
          v110 = v112;
          v113 = 1;
          while (1)
          {
            v114 = *v111;
            v111 += 2;
            if (v110 != v114)
            {
              break;
            }

            ++v113;
            if (!(v108 - v107 + v113))
            {
              v113 = v107 - v108;
              goto LABEL_206;
            }
          }

          v107 = v108 + v113;
LABEL_206:
          if (!v113)
          {
            goto LABEL_211;
          }
        }

        v115 = 0;
        v116 = (16 * v108) | 8;
        do
        {
          v117 = v277 + 280 * *(__ptr + v116);
          v118 = atomic_load(&v295);
          *(v117 + 14) = v118;
          if (v115)
          {
            v298 += *(v117 + 12);
          }

          ++v115;
          v116 += 16;
        }

        while (v113 != v115);
LABEL_211:
        v108 = v107;
        atomic_fetch_add(&v295, 1uLL);
        v107 = __nel;
      }

      while (v108 < __nel);
    }
  }

  if (v294)
  {
    __nel = 0;
    v119 = v276;
    if (v276)
    {
      v120 = 0;
      v121 = 0;
      v122 = 0;
      do
      {
        v123 = v277;
        if (*(v277 + v120) == 70)
        {
          v124 = __ptr;
          if (v121 >= v291)
          {
            v125 = v291 + (v291 >> 1);
            if (!v291)
            {
              v125 = 64;
            }

            v291 = v125;
            v124 = reallocf(__ptr, 16 * v125);
            __ptr = v124;
            if (!v124)
            {
              v17 = *__error();
              v15 = "malloc";
              v16 = 1051;
              goto LABEL_26;
            }

            v121 = __nel;
            v119 = v276;
          }

          v126 = &v124[16 * v121];
          *(v126 + 1) = v122;
          *v126 = *&v123[v120 + 104];
          __nel = ++v121;
        }

        ++v122;
        v120 += 280;
      }

      while (v122 < v119);
    }

    else
    {
      v121 = 0;
    }

    qsort(__ptr, v121, 0x10uLL, cmpINOEntry);
    v127 = v276;
    if (v276)
    {
      v128 = 0;
      v129 = 0;
      do
      {
        v130 = v277;
        if (*(v277 + v128) == 70 && *(v277 + v128 + 104) != -1)
        {
          __key[1] = 0;
          __key[0] = 0;
          __key[0] = *(v277 + v128 + 104);
          v131 = bsearch(__key, __ptr, __nel, 0x10uLL, cmpINOEntry);
          if (v131)
          {
            v132 = v277 + 280 * v131[1];
            v299 += *(v132 + 12);
            add = *(v132 + 15);
            if (add == -1)
            {
              add = atomic_fetch_add(&v296, 1uLL);
              *(v132 + 15) = add;
            }

            *&v130[v128 + 120] = add;
          }

          v127 = v276;
        }

        ++v129;
        v128 += 280;
      }

      while (v129 < v127);
    }
  }

  if ((v278 & 6) != 0)
  {
    __nel = 0;
    v134 = v276;
    if (v276)
    {
      v135 = 0;
      v136 = 0;
      v137 = 0;
      do
      {
        v138 = v277;
        if (*(v277 + v135) == 70)
        {
          v139 = __ptr;
          if (v136 >= v291)
          {
            v140 = 64;
            if (v291)
            {
              v140 = v291 + (v291 >> 1);
            }

            v291 = v140;
            v139 = reallocf(__ptr, 16 * v140);
            __ptr = v139;
            if (!v139)
            {
              v17 = *__error();
              v15 = "malloc";
              v16 = 1103;
              goto LABEL_26;
            }

            v136 = __nel;
          }

          v141 = &v139[16 * v136];
          *(v141 + 1) = v137;
          if ((v278 & 2) != 0)
          {
            v142 = 140;
          }

          else
          {
            v142 = 160;
          }

          *v141 = *&v138[v142 + v135];
          v136 = ++__nel;
          v134 = v276;
        }

        ++v137;
        v135 += 280;
      }

      while (v137 < v134);
    }

    else
    {
      v136 = 0;
    }

    qsort(__ptr, v136, 0x10uLL, cmpINOEntry);
    v288 = DefaultNThreads;
    if ((0x100000000uLL / DefaultNThreads * DefaultNThreads) >> 32)
    {
      v143 = 0x100000000uLL / DefaultNThreads;
    }

    else
    {
      v143 = 0x100000000uLL / DefaultNThreads + 1;
    }

    v289 = calloc(DefaultNThreads, 0x30uLL);
    if (!v289)
    {
      v17 = *__error();
      v15 = "malloc";
      v16 = 1118;
      goto LABEL_26;
    }

    if (v288)
    {
      v144 = 0;
      v145 = 0;
      v146 = 1;
      do
      {
        v147 = v289 + v144;
        *v147 = &v270;
        v148 = v143 * v145++;
        *(v147 + 2) = v148;
        *(v147 + 3) = v143 * v145;
        if ((createThread(v147 + 1, resolveSameThreadProc, v147, 0) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1126, 12, 0, "creating resolve thread", v149, v150, v259);
          v146 = 0;
        }

        v151 = v288;
        v144 += 48;
      }

      while (v145 < v288);
      if (v288)
      {
        v152 = 0;
        v153 = 0;
        do
        {
          v154 = v289;
          v155 = v289 + v152;
          v156 = *(v289 + v152 + 8);
          if (v156)
          {
            if ((joinThread(v156) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1133, 12, 0, "joining resolve thread", v157, v158, v259);
              v146 = 0;
            }

            *(v155 + 1) = 0;
            if (*&v154[v152 + 32])
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1135, 12, 0, "Thread reported an error", v157, v158, v259);
              v146 = 0;
            }

            v300 += *&v154[v152 + 40];
            v151 = v288;
          }

          ++v153;
          v152 += 48;
        }

        while (v153 < v151);
      }

      if (!v146)
      {
        goto LABEL_27;
      }
    }
  }

  if (v272 >= 1)
  {
    v159 = v276;
    if (v276)
    {
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v163 = v277 + 128;
      do
      {
        if (*(v163 - 2) != -1)
        {
          ++v160;
        }

        if (*(v163 - 1) != -1)
        {
          ++v161;
        }

        if (*v163 != -1)
        {
          ++v162;
        }

        v163 += 35;
        --v159;
      }

      while (v159);
    }

    else
    {
      v162 = 0;
      v161 = 0;
      v160 = 0;
    }

    v164 = atomic_load(&v295);
    v165 = MEMORY[0x29EDCA610];
    if (v164 > 0)
    {
      v166 = *MEMORY[0x29EDCA610];
      v167 = atomic_load(&v295);
      fprintf(v166, "%12llu hard link clusters\n", v167);
      fprintf(*v165, "%12llu hard link entries\n", v160);
      fprintf(*v165, "%12llu redundant bytes in hard links\n", v298);
    }

    v168 = atomic_load(&v296);
    if (v168 >= 1)
    {
      v169 = *v165;
      v170 = atomic_load(&v296);
      fprintf(v169, "%12llu clone clusters\n", v170);
      fprintf(*v165, "%12llu clone entries\n", v161);
      fprintf(*v165, "%12llu redundant bytes in clones\n", v299);
    }

    v171 = atomic_load(&v297);
    if (v171 >= 1)
    {
      v172 = *v165;
      v173 = atomic_load(&v297);
      fprintf(v172, "%12llu same data clusters\n", v173);
      fprintf(*v165, "%12llu same data entries\n", v162);
      fprintf(*v165, "%12llu redundant bytes in same data files\n", v300);
    }
  }

  if (!v276)
  {
LABEL_424:
    v29 = 0;
    goto LABEL_28;
  }

  v174 = 0;
  v175 = v3 + 64;
  v176 = (v3 + 70);
  v267 = (v3 + 64);
  while (1)
  {
    v177 = v277;
    if (ArchiveTreeNodePath(v275, v174, __key, 0x800uLL) < 0)
    {
      v15 = "entry path too long";
      v16 = 1179;
      goto LABEL_25;
    }

    v180 = &v177[280 * v174];
    if (*(v180 + 49))
    {
      if ((sendFailureEntry(&v270, v174, 1uLL) & 0x80000000) != 0)
      {
        v15 = "sending failure info";
        v16 = 1184;
        goto LABEL_25;
      }

      goto LABEL_422;
    }

    v181 = *(v3 + 56);
    if (v181 >= 0xFFFF)
    {
      v182 = 0xFFFFLL;
    }

    else
    {
      v182 = *(v3 + 56);
    }

    if (*v180 == 70)
    {
      v265 = (*(v2 + 33) >> 1) & 1;
    }

    else
    {
      v265 = 0;
    }

    if (v181 <= 5)
    {
      v15 = "encode header field";
      v16 = 1197;
      goto LABEL_25;
    }

    *(v175 + 4) = 30840;
    *v175 = 825246017;
    if (*(v3 + 32))
    {
      *v175 = 826360153;
    }

    v183 = v182 - 6;
    v184 = *(v2 + 32);
    if (v184)
    {
      v186 = yaa_encodeKeyValue_uint(v176, v183, "TYP", *v180);
      if (v186 < 0)
      {
        v15 = "encode TYP field";
        v16 = 1205;
        goto LABEL_25;
      }

      v185 = &v176[v186];
      v183 -= v186;
      v184 = *(v2 + 32);
    }

    else
    {
      v185 = v176;
    }

    if ((v184 & 2) != 0)
    {
      v187 = yaa_encodeKeyValue_uint(v185, v183, "UID", *(v180 + 15));
      if (v187 < 0)
      {
        v15 = "encode UID field";
        v16 = 1210;
        goto LABEL_25;
      }

      v185 += v187;
      v183 -= v187;
      v184 = *(v2 + 32);
    }

    if ((v184 & 4) != 0)
    {
      v188 = yaa_encodeKeyValue_uint(v185, v183, "GID", *(v180 + 16));
      if (v188 < 0)
      {
        v15 = "encode GID field";
        v16 = 1215;
        goto LABEL_25;
      }

      v185 += v188;
      v183 -= v188;
      v184 = *(v2 + 32);
    }

    if ((v184 & 8) != 0)
    {
      v189 = yaa_encodeKeyValue_uint(v185, v183, "FLG", *(v180 + 17));
      if (v189 < 0)
      {
        v15 = "encode FLG field";
        v16 = 1220;
        goto LABEL_25;
      }

      v185 += v189;
      v183 -= v189;
      v184 = *(v2 + 32);
    }

    if ((v184 & 0x10) != 0)
    {
      v190 = yaa_encodeKeyValue_uint(v185, v183, "MOD", *(v180 + 1));
      if (v190 < 0)
      {
        v15 = "encode MOD field";
        v16 = 1225;
        goto LABEL_25;
      }

      v185 += v190;
      v183 -= v190;
      v191 = *(v180 + 14);
      if (v191)
      {
        v192 = yaa_encodeKeyValue_uint(v185, v183, "PRC", v191);
        if (v192 < 0)
        {
          v15 = "encode PRC field";
          v16 = 1229;
          goto LABEL_25;
        }

        v185 += v192;
        v183 -= v192;
      }
    }

    if (*(v2 + 33))
    {
      v193 = yaa_encodeKeyValue_timespec(v185, v183, "MTM", v180 + 1);
      if (v193 < 0)
      {
        v15 = "encode MTM field";
        v16 = 1235;
        goto LABEL_25;
      }

      v185 += v193;
      v183 -= v193;
      if (*(v180 + 3))
      {
        v194 = yaa_encodeKeyValue_timespec(v185, v183, "CTM", v180 + 3);
        if (v194 < 0)
        {
          v15 = "encode CTM field";
          v16 = 1239;
          goto LABEL_25;
        }

        v185 += v194;
        v183 -= v194;
      }

      if (*(v180 + 5))
      {
        v195 = yaa_encodeKeyValue_timespec(v185, v183, "BTM", v180 + 5);
        if (v195 < 0)
        {
          v15 = "encode BTM field";
          v16 = 1244;
          goto LABEL_25;
        }

        v185 += v195;
        v183 -= v195;
      }
    }

    v196 = *(v2 + 32);
    if ((v196 & 0x40) != 0)
    {
      v197 = yaa_encodeKeyValue_uint(v185, v183, "INO", *(v180 + 10));
      if (v197 < 0)
      {
        v15 = "encode INO field";
        v16 = 1250;
        goto LABEL_25;
      }

      v185 += v197;
      v183 -= v197;
      v196 = *(v2 + 32);
    }

    if ((v196 & 0x80) != 0 && *v180 == 70)
    {
      v198 = yaa_encodeKeyValue_uint(v185, v183, "SIZ", *(v180 + 12));
      if (v198 < 0)
      {
        v15 = "encode SIZ field";
        v16 = 1255;
        goto LABEL_25;
      }

      v185 += v198;
      v183 -= v198;
      v196 = *(v2 + 32);
    }

    if ((v196 & 0x20) != 0 && (*v180 & 0xFFFFFFFE) == 0x42)
    {
      v199 = yaa_encodeKeyValue_uint(v185, v183, "DEV", *(v180 + 22));
      if (v199 < 0)
      {
        v15 = "encode DEV field";
        v16 = 1260;
        goto LABEL_25;
      }

      v185 += v199;
      v183 -= v199;
      v196 = *(v2 + 32);
    }

    if ((v196 & 0x8000) != 0)
    {
      v200 = yaa_encodeKeyValue_path(v185, v183, "PAT", __key);
      if ((v200 & 0x8000000000000000) != 0)
      {
        v15 = "encode PAT field";
        v16 = 1265;
        goto LABEL_25;
      }

      v185 += v200;
      v183 -= v200;
      v196 = *(v2 + 32);
    }

    if ((v196 & 0x10000) != 0 && *(v180 + 26))
    {
      v201 = yaa_encodeKeyValue_path(v185, v183, "LNK", (v280 + *(v180 + 25)));
      if ((v201 & 0x8000000000000000) != 0)
      {
        v15 = "encode LNK field";
        v16 = 1270;
        goto LABEL_25;
      }

      v185 += v201;
      v183 -= v201;
    }

    if (v265)
    {
      v202 = *(v180 + 12);
      v203 = yaa_encodeKeyValue_blob(v185, v183, "DAT", v202);
      if (v203 < 0)
      {
        v15 = "encode DAT field";
        v16 = 1276;
        goto LABEL_25;
      }

      v185 += v203;
      v183 -= v203;
    }

    else
    {
      v202 = 0;
    }

    v204 = *(v2 + 32);
    if ((v204 & 0x400) != 0)
    {
      v205 = *(v180 + 28);
      if (v205)
      {
        v206 = yaa_encodeKeyValue_blob(v185, v183, "XAT", *(v180 + 28));
        if (v206 < 0)
        {
          v15 = "encode XAT field";
          v16 = 1282;
          goto LABEL_25;
        }

        v202 += v205;
        v185 += v206;
        v183 -= v206;
        v204 = *(v2 + 32);
      }
    }

    if ((v204 & 0x800) != 0)
    {
      v207 = *(v180 + 30);
      if (v207)
      {
        v208 = yaa_encodeKeyValue_blob(v185, v183, "ACL", *(v180 + 30));
        if (v208 < 0)
        {
          v15 = "encode ACL field";
          v16 = 1288;
          goto LABEL_25;
        }

        v202 += v207;
        v185 += v208;
        v183 -= v208;
        v204 = *(v2 + 32);
      }
    }

    v209 = *v180;
    if ((v204 & 0x1000) != 0 && v209 == 70)
    {
      v210 = yaa_encodeKeyValue_cksum(v185, v183, "CKS", v180 + 34);
      if (v210 < 0)
      {
        v15 = "encode CKS field";
        v16 = 1293;
        goto LABEL_25;
      }

      v185 += v210;
      v183 -= v210;
      v204 = *(v2 + 32);
      v209 = *v180;
    }

    if ((v204 & 0x2000) != 0 && v209 == 70)
    {
      v211 = yaa_encodeKeyValue_sha1(v185, v183, "SH1", (v180 + 140));
      if (v211 < 0)
      {
        v15 = "encode SH1 field";
        v16 = 1298;
        goto LABEL_25;
      }

      v185 += v211;
      v183 -= v211;
      v204 = *(v2 + 32);
      v209 = *v180;
    }

    if ((v204 & 0x4000) == 0)
    {
      break;
    }

    if (v209 == 70)
    {
      v212 = yaa_encodeKeyValue_sha256(v185, v183, "SH2", v180 + 10);
      if (v212 < 0)
      {
        v15 = "encode SH2 field";
        v16 = 1303;
        goto LABEL_25;
      }

      v185 += v212;
      v183 -= v212;
      v209 = *v180;
      break;
    }

LABEL_382:
    v219 = *(v180 + 32);
    if (v219)
    {
      if (v183 < v219)
      {
        v15 = "copy header extra fields";
        v16 = 1327;
        goto LABEL_25;
      }

      v202 += *(v180 + 34);
      memcpy(v185, (v280 + *(v180 + 31)), *(v180 + 32));
      v185 += v219;
    }

    *(v3 + 68) = v185 - v267;
    if (*(v3 + 32))
    {
      *v267 = 826360153;
    }

    if ((yaa_writeRawEntryHeader(v3, v267, v185 - v267, v202, v178, v179, v13, v14) & 0x80000000) != 0)
    {
      v256 = "writing raw header";
      v257 = 1340;
      goto LABEL_454;
    }

    if (v265)
    {
      if (concatPath(v268, 0x800uLL, v273, __key))
      {
        v256 = "full path too long";
        v257 = 1348;
LABEL_454:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", v257, 12, 0, v256, v223, v224, v259);
LABEL_455:
        v29 = 1;
        goto LABEL_28;
      }

      v225 = *(v180 + 12);
      if (v225)
      {
        v226 = open(v268, 0);
        if (v226 < 0)
        {
          v242 = __error();
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1354, 12, "open failed (%d): %s", v243, v244, v245, *v242);
          v241 = 1;
          *(v180 + 49) = 1;
LABEL_406:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1391, 12, "truncated data: %s", v222, v223, v224, v268);
          *(v180 + 49) = 1;
          bzero(v267, *(v3 + 56));
          while (1)
          {
            v250 = *(v3 + 56) >= v225 ? v225 : *(v3 + 56);
            if (ParallelArchiveWriteEntryData(v271, v267, v250, v220, v221, v222, v223, v224))
            {
              break;
            }

            v225 -= v250;
            if (!v225)
            {
              goto LABEL_412;
            }
          }

          v259 = v250;
          v254 = "write DAT 0x00, w=%zu: %s";
          v255 = 1397;
LABEL_432:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", v255, 12, 0, v254, v223, v224, v259);
          goto LABEL_455;
        }

        v227 = v226;
        while (1)
        {
          v228 = read(v227, v267, *(v3 + 56));
          if ((v228 & 0x8000000000000000) != 0)
          {
            v246 = __error();
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1377, 12, "read failed (%d): %s", v247, v248, v249, *v246);
            v241 = 1;
            *(v180 + 49) = 1;
            goto LABEL_405;
          }

          v234 = v228;
          if (!v228)
          {
            v241 = 1;
            goto LABEL_405;
          }

          v235 = v228 >= v225 ? v225 : v228;
          if (ParallelArchiveWriteEntryData(v271, v267, v235, v229, v230, v231, v232, v233))
          {
            break;
          }

          v239 = v225 - v235;
          v240 = v225 >= v234;
          v225 = v239;
          if (!v240)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1384, 12, "extra data: %s", v236, v237, v238, v268);
            v241 = 1;
            *(v180 + 49) = 1;
            v225 = v239;
            goto LABEL_405;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1381, 12, 0, "write DAT, w=%zu: %s", v237, v238, v235);
        v241 = 0;
LABEL_405:
        close(v227);
        if (v225)
        {
          goto LABEL_406;
        }

LABEL_412:
        if (!v241)
        {
          goto LABEL_455;
        }
      }
    }

    v251 = *(v180 + 28);
    if (v251 && ParallelArchiveWriteEntryData(v271, v280 + *(v180 + 27), v251, v220, v221, v222, v223, v224))
    {
      v254 = "write entry XAT";
      v255 = 1407;
      goto LABEL_432;
    }

    v252 = *(v180 + 30);
    if (v252 && ParallelArchiveWriteEntryData(v271, v280 + *(v180 + 29), v252, v220, v221, v222, v223, v224))
    {
      v254 = "write entry ACL";
      v255 = 1413;
      goto LABEL_432;
    }

    v253 = *(v180 + 34);
    if (v253 && ParallelArchiveWriteEntryData(v271, v280 + *(v180 + 33), v253, v220, v221, v222, v223, v224))
    {
      v254 = "write extra fields data";
      v255 = 1419;
      goto LABEL_432;
    }

    if (*(v180 + 49) && (sendFailureEntry(&v270, v174, 2uLL) & 0x80000000) != 0)
    {
      v256 = "sending failure info";
      v257 = 1425;
      goto LABEL_454;
    }

    v175 = v3 + 64;
    v176 = (v3 + 70);
LABEL_422:
    v29 = 0;
    if (++v174 >= v276)
    {
      goto LABEL_28;
    }
  }

  if (v209 != 70)
  {
    goto LABEL_382;
  }

  v213 = *(v180 + 14);
  if (v213 != -1)
  {
    v214 = yaa_encodeKeyValue_uint(v185, v183, "HLC", v213);
    if (v214 < 0)
    {
      v15 = "encode HLC field";
      v16 = 1309;
      goto LABEL_25;
    }

    v185 += v214;
    v183 -= v214;
    if (*v180 != 70)
    {
      goto LABEL_382;
    }
  }

  v215 = *(v180 + 15);
  if (v215 != -1)
  {
    v216 = yaa_encodeKeyValue_uint(v185, v183, "CLC", v215);
    if (v216 < 0)
    {
      v15 = "encode CLC field";
      v16 = 1315;
      goto LABEL_25;
    }

    v185 += v216;
    v183 -= v216;
    if (*v180 != 70)
    {
      goto LABEL_382;
    }
  }

  v217 = *(v180 + 16);
  if (v217 == -1)
  {
    goto LABEL_382;
  }

  v218 = yaa_encodeKeyValue_uint(v185, v183, "SLC", v217);
  if ((v218 & 0x8000000000000000) == 0)
  {
    v185 += v218;
    v183 -= v218;
    goto LABEL_382;
  }

  v15 = "encode SLC field";
  v16 = 1321;
LABEL_25:
  v17 = 0;
LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", v16, 12, v17, v15, v13, v14, v259);
LABEL_27:
  v29 = 1;
LABEL_28:
  BlobBufferFree(v279);
  ArchiveTreeDestroy(v275);
  free(v277);
  v30 = v282;
  if (v282 && __count)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = v282;
      v34 = v282 + v31;
      v35 = *(v282 + v31 + 16);
      if (v35)
      {
        joinThread(v35);
      }

      BlobBufferFree((v34 + 160));
      if (!pthread_mutex_destroy((v34 + 48)))
      {
        pthread_cond_destroy(&v33[v31 + 112]);
      }

      ++v32;
      v31 += 200;
    }

    while (v32 < __count);
    v30 = v282;
  }

  free(v30);
  if (!pthread_mutex_destroy(&v286) && !pthread_cond_destroy(&v287))
  {
    free(v285);
  }

  v36 = v289;
  if (v289)
  {
    v37 = v288;
    if (v288)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v289 + v39);
        if (v40)
        {
          joinThread(v40);
          v37 = v288;
        }

        ++v38;
        v39 += 48;
      }

      while (v38 < v37);
      v36 = v289;
    }
  }

  free(v36);
  free(__ptr);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    result = result;
  }

  else if (v29)
  {
    result = -1;
  }

  else
  {
    result = *(v3 + 40) - v12;
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cmpINOEntry(void *a1, void *a2)
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

uint64_t sendFailureEntry(void *a1, uint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  if (ArchiveTreeNodePath(a1[132], a2, __s, 0x800uLL) < 0)
  {
    v11 = "entry path too long";
    v12 = 766;
    goto LABEL_20;
  }

  v9 = *(v6 + 56);
  v10 = 0xFFFFLL;
  if (v9 < 0xFFFF)
  {
    v10 = *(v6 + 56);
  }

  if (v9 <= 5)
  {
    v11 = "encode header field";
    v12 = 775;
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", v12, 12, 0, v11, v7, v8, v29);
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v13 = (v6 + 64);
  *(v6 + 68) = 30840;
  *(v6 + 64) = 825246017;
  if (*(v6 + 32))
  {
    *(v6 + 68) = 30840;
    *v13 = 826360153;
  }

  v14 = v10 - 6;
  v15 = yaa_encodeKeyValue_uint((v6 + 70), v10 - 6, "TYP", 0x4DuLL);
  if (v15 < 0)
  {
    v11 = "encode TYP field";
    v12 = 783;
    goto LABEL_20;
  }

  v16 = v6 + 70 + v15;
  v17 = v14 - v15;
  v18 = yaa_encodeKeyValue_path(v16, v17, "PAT", __s);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v11 = "encode PAT field";
    v12 = 787;
    goto LABEL_20;
  }

  v19 = (v16 + v18);
  v20 = v17 - v18;
  v21 = yaa_encodeKeyValue_uint(v19, v20, "ERR", a3);
  if (v21 < 0)
  {
    v11 = "encode ERR field";
    v12 = 791;
    goto LABEL_20;
  }

  v22 = &v19[v21];
  v23 = yaa_encodeKeyValue_uint(&v19[v21], v20 - v21, "EYP", *(a1[134] + 280 * a2));
  if (v23 < 0)
  {
    v11 = "encode EYP field";
    v12 = 795;
    goto LABEL_20;
  }

  v26 = &v22[v23] - v13;
  *(v6 + 68) = v26;
  if ((yaa_writeRawEntryHeader(v6, v6 + 64, v26, 0, v24, v25, v7, v8) & 0x80000000) != 0)
  {
    v11 = "writing raw header";
    v12 = 802;
    goto LABEL_20;
  }

  result = 0;
LABEL_21:
  v28 = *MEMORY[0x29EDCA608];
  return result;
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

void *AATempStreamOpenWithDirectory(unint64_t a1, const char *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x88uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x88uLL, 0, 0x88uLL), v4))
  {
    if (a2)
    {
      v7 = strlen(a2);
      v8 = v7 + 1;
      if (v7 + 1 < 0x2000000001)
      {
        v15 = malloc(v7 + 1);
        v9 = v15;
        if (v15)
        {
          memcpy(v15, a2, v8);
        }
      }

      else
      {
        v9 = 0;
        *__error() = 12;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 13) = v9;
    v16 = a1 >> 20;
    if (a1 == -1)
    {
      v16 = -1;
    }

    *(v6 + 1) = 0x100000;
    *(v6 + 2) = v16;
    if ((pthread_mutex_init((v6 + 40), 0) & 0x80000000) == 0)
    {
      *v4 = v6;
      v4[1] = tempStreamClose;
      v4[7] = tempStreamCancel;
      v4[2] = tempStreamRead;
      v4[4] = tempStreamPRead;
      v4[6] = tempStreamSeek;
      v4[3] = tempStreamWrite;
      v4[5] = tempStreamPWrite;
      v4[8] = tempStreamTruncate;
      return v4;
    }

    v10 = *__error();
    v13 = "mutex init";
    v14 = 326;
  }

  else
  {
    v10 = *__error();
    v13 = "malloc";
    v14 = 320;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", v14, 50, v10, v13, v11, v12, v18);
  free(v6);
  free(v4);
  return 0;
}

uint64_t tempStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 128));
    AAByteStreamClose(*(result + 112));
    v3 = *(v1 + 32);
    if (v3)
    {
      if (*(v1 + 24))
      {
        v4 = 0;
        do
        {
          free(*(*(v1 + 32) + 8 * v4++));
        }

        while (v4 < *(v1 + 24));
        v3 = *(v1 + 32);
      }

      free(v3);
    }

    pthread_mutex_destroy((v1 + 40));
    free(*(v1 + 104));
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

ssize_t tempStreamRead(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamRead(*(a1 + 112), a2, a3);
  }

  return tempStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPRead(uint64_t a1, char *buf, size_t a3, off_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v8 = buf;
  v10 = *(a1 + 112);
  if (!v10)
  {
    if (((offset | a3) & 0x8000000000000000) == 0)
    {
      v11 = offset + a3;
      if (!__OFADD__(offset, a3))
      {
        if (*a1 <= offset)
        {
          return 0;
        }

        if (pthread_mutex_lock((a1 + 40)) < 0)
        {
          v20 = *__error();
          v23 = "mutex lock";
          v24 = 120;
        }

        else
        {
          if (v11 >= *a1)
          {
            v12 = *a1;
          }

          else
          {
            v12 = v11;
          }

          if (v12 <= v7)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0;
            v13 = *(a1 + 8);
            v14 = v7 / v13;
            v15 = v7 / v13 * v13;
            v16 = v15 + v13;
            do
            {
              if (v16 >= v12)
              {
                v17 = v12;
              }

              else
              {
                v17 = v16;
              }

              memcpy(v8, (*(*(a1 + 32) + 8 * v14) + v7 - v15), v17 - v7);
              v8 += v17 - v7;
              v5 += v17 - v7;
              ++v14;
              v18 = *(a1 + 8);
              v15 += v18;
              v7 = v17;
              v19 = v16 >= v12;
              v16 += v18;
            }

            while (!v19);
          }

          if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
          {
            return v5;
          }

          v20 = *__error();
          v23 = "mutex unlock";
          v24 = 148;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", v24, 50, v20, v23, v21, v22, v26);
        v25 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v25, 1u);
      }
    }

    return -1;
  }

  return AAByteStreamPRead(v10, buf, a3, offset);
}

off_t tempStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (!*(a1 + 112))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 120), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *a1;
    }

    atomic_store(a2, (a1 + 120));
    return a2;
  }

  return AAByteStreamSeek(*(a1 + 112), a2, a3);
}

ssize_t tempStreamWrite(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamWrite(*(a1 + 112), a2, a3);
  }

  return tempStreamPWrite(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPWrite(uint64_t a1, char *buf, size_t nbyte, unint64_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v9 = buf;
  v11 = *(a1 + 112);
  if (!v11)
  {
    if (((offset | nbyte) & 0x8000000000000000) != 0)
    {
      return -1;
    }

    v12 = offset + nbyte;
    if (__OFADD__(offset, nbyte))
    {
      return -1;
    }

    if (pthread_mutex_lock((a1 + 40)) < 0)
    {
      v25 = *__error();
      v28 = "mutex lock";
      v29 = 164;
      goto LABEL_38;
    }

    if (v12 <= *a1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = v7 + nbyte;
    }

    if ((resizeStream(a1, v19, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
    {
      v30 = "resizing stream";
      v31 = 170;
    }

    else
    {
      v22 = *(a1 + 112);
      if (!v22)
      {
        if (v12 <= v7)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v32 = *(a1 + 8);
          v33 = v7 / v32;
          v34 = v7 / v32 * v32;
          v35 = v34 + v32;
          do
          {
            if (v35 >= v12)
            {
              v36 = v12;
            }

            else
            {
              v36 = v35;
            }

            memcpy((*(*(a1 + 32) + 8 * v33) + v7 - v34), v9, v36 - v7);
            v9 += v36 - v7;
            v5 += v36 - v7;
            ++v33;
            v37 = *(a1 + 8);
            v34 += v37;
            v7 = v36;
            v38 = v35 >= v12;
            v35 += v37;
          }

          while (!v38);
        }

        v24 = 0;
        v39 = *a1;
        if (v12 > *a1)
        {
          v39 = v12;
        }

        *a1 = v39;
        goto LABEL_34;
      }

      v23 = AAByteStreamPWrite(v22, v9, nbyte, v7);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v5 = v23;
        v24 = 0;
LABEL_34:
        if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
        {
          if (!v24)
          {
            return v5;
          }

          goto LABEL_39;
        }

        v25 = *__error();
        v28 = "mutex unlock";
        v29 = 209;
LABEL_38:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", v29, 50, v25, v28, v26, v27, v41);
LABEL_39:
        v40 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v40, 1u);
        return -1;
      }

      v30 = "temp file write";
      v31 = 176;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", v31, 50, 0, v30, v20, v21, v41);
    v5 = 0;
    v24 = 1;
    goto LABEL_34;
  }

  return AAByteStreamPWrite(v11, buf, nbyte, offset);
}

uint64_t tempStreamTruncate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 128)))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 112);
  if (v12)
  {

    return AAByteStreamTruncate(v12);
  }

  if (a2 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 271, 50, 0, "invalid length", a7, a8, v30);
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 40)) < 0)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 272, 50, *v22, "mutex lock", v23, v24, v30);
    v25 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v25, 1u);
    return 0xFFFFFFFFLL;
  }

  if ((resizeStream(a1, a2, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 274, 50, 0, "resize stream", v19, v20, v30);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  if (pthread_mutex_unlock((a1 + 40)) < 0)
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 276, 50, *v26, "mutex lock", v27, v28, v30);
    v29 = 0;
    v21 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v29, 1u);
  }

  if (v21)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t resizeStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 112))
  {
    v8 = "invalid state";
    v9 = 64;
LABEL_3:
    v10 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "resizeStream", v9, 50, v10, v8, a7, a8, v42);
    return 0xFFFFFFFFLL;
  }

  if (*a1 >= a2)
  {
    goto LABEL_51;
  }

  v14 = *(a1 + 8);
  if (__OFADD__(a2, v14))
  {
    v42 = a2;
    v8 = "new size out of range: %zu";
    v9 = 70;
    goto LABEL_3;
  }

  v15 = (a2 + v14 - 1) / v14;
  if (v15 <= *(a1 + 16))
  {
    v32 = *(a1 + 24);
    while (v32 < v15)
    {
      if (v32)
      {
        v32 *= 2;
      }

      else
      {
        v32 = 32;
      }
    }

    if (8 * v32 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_54:
      *(a1 + 32) = 0;
      v10 = *__error();
      v8 = "malloc";
      v9 = 89;
      goto LABEL_4;
    }

    v33 = *(a1 + 32);
    v34 = realloc(v33, 8 * v32);
    if (!v34)
    {
      free(v33);
      goto LABEL_54;
    }

    *(a1 + 32) = v34;
    memset_s(&v34[8 * *(a1 + 24)], 8 * (v32 - *(a1 + 24)), 0, 8 * (v32 - *(a1 + 24)));
    *(a1 + 24) = v32;
    v35 = v15 - 1;
    while (v35 != -1 && !*(*(a1 + 32) + 8 * v35))
    {
      v36 = *(a1 + 8);
      if (v36 < 0x2000000001)
      {
        v38 = malloc(*(a1 + 8));
        v37 = v38;
        if (v38)
        {
          memset_s(v38, v36, 0, v36);
        }
      }

      else
      {
        v37 = 0;
        *__error() = 12;
      }

      *(*(a1 + 32) + 8 * v35) = v37;
      if (!*(*(a1 + 32) + 8 * v35--))
      {
        v10 = *__error();
        v8 = "malloc";
        v9 = 99;
        goto LABEL_4;
      }
    }

LABEL_51:
    result = 0;
    *a1 = a2;
    return result;
  }

  v16 = AATempFileStreamOpenWithDirectory(*(a1 + 104));
  *(a1 + 112) = v16;
  if (!v16)
  {
    v40 = "AATempFileStreamOpen";
    v41 = 36;
LABEL_57:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", v41, 50, 0, v40, v17, v18, v42);
    v8 = "offload to file";
    v9 = 76;
    goto LABEL_3;
  }

  v19 = (a1 + 24);
  if (*(a1 + 24))
  {
    v20 = 0;
    v21 = 0;
    while (*a1 > v21)
    {
      if (*(a1 + 8) >= *a1 - v21)
      {
        v22 = *a1 - v21;
      }

      else
      {
        v22 = *(a1 + 8);
      }

      v23 = *(a1 + 112);
      if (*(v23 + 24))
      {
        v24 = 0;
        if (v22)
        {
          v25 = *(*(a1 + 32) + 8 * v20);
          v26 = v22;
          while (1)
          {
            v27 = (*(v23 + 24))(*v23, v25, v26);
            if (v27 < 1)
            {
              break;
            }

            v25 += v27;
            v24 += v27;
            v26 -= v27;
            if (!v26)
            {
              goto LABEL_26;
            }
          }

          v24 = v27;
        }
      }

      else
      {
        v24 = -1;
      }

LABEL_26:
      if (v24 != v22)
      {
        v40 = "writing data to temp file";
        v41 = 43;
        goto LABEL_57;
      }

      v21 += v22;
      if (++v20 >= *v19)
      {
        if (!*v19)
        {
          goto LABEL_31;
        }

        break;
      }
    }

    v28 = 0;
    do
    {
      free(*(*(a1 + 32) + 8 * v28++));
    }

    while (v28 < *(a1 + 24));
  }

LABEL_31:
  free(*(a1 + 32));
  *v19 = 0;
  *(a1 + 32) = 0;
  if ((AAByteStreamTruncate(*(a1 + 112)) & 0x80000000) != 0)
  {
    v8 = "truncate temp file";
    v9 = 78;
    goto LABEL_3;
  }

  v29 = *(a1 + 112);
  v30 = atomic_load((a1 + 120));
  v31 = AAByteStreamSeek(v29, v30, 0);
  result = 0;
  if (v31 < 0)
  {
    v8 = "seek temp file";
    v9 = 80;
    goto LABEL_3;
  }

  return result;
}

uint64_t yaa_encodeKeyValue_marker(_BYTE *a1, unint64_t a2, char *a3)
{
  if (a2 < 4)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(42);
  return 4;
}

uint64_t yaa_encodeKeyValue_uint(_BYTE *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 <= 0xFF)
  {
    if (a2 >= 5)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(49);
      a1[4] = a4;
      return 5;
    }

    return -1;
  }

  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(50);
      *(a1 + 2) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(52);
      *(a1 + 1) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(56);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t yaa_encodeKeyValue_blob(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(65);
      *(a1 + 4) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(66);
      *(a1 + 4) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(67);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t yaa_encodeKeyValue_cksum(uint64_t a1, unint64_t a2, char *a3, _DWORD *a4)
{
  if (a2 < 8)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(70);
  *(a1 + 4) = *a4;
  return 8;
}

uint64_t yaa_encodeKeyValue_sha1(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x18)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(71);
  v8 = *(a4 + 16);
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 24;
}

uint64_t yaa_encodeKeyValue_sha256(uint64_t a1, unint64_t a2, char *a3, _OWORD *a4)
{
  if (a2 < 0x24)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(72);
  v8 = a4[1];
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 36;
}

size_t yaa_encodeKeyValue_path(uint64_t a1, unint64_t a2, char *a3, char *__s)
{
  v8 = strlen(__s);
  result = -1;
  if (!(v8 >> 16) && v8 + 6 <= a2)
  {
    *a1 = __toupper(*a3);
    *(a1 + 1) = __toupper(a3[1]);
    *(a1 + 2) = __toupper(a3[2]);
    *(a1 + 3) = __toupper(80);
    *(a1 + 4) = v8;
    memcpy((a1 + 6), __s, v8);
    return v8 + 6;
  }

  return result;
}

uint64_t yaa_encodeKeyValue_timespec(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if ((v7 - 1000000000) < 0xFFFFFFFFC4653601)
  {
    if (a2 >= 0xC)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(83);
      *(a1 + 4) = v6;
      return 12;
    }

    return -1;
  }

  if (a2 < 0x10)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(84);
  *(a1 + 4) = v6;
  *(a1 + 12) = v7;
  return 16;
}

size_t yaa_encodeHeaderField(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 4);
  if (v10 > 4)
  {
    if (v10 > 6)
    {
      if (v10 == 7)
      {

        return yaa_encodeKeyValue_path(a1, a2, a3, (a3 + 8));
      }

      else
      {
        if (v10 != 8)
        {
          goto LABEL_34;
        }

        return yaa_encodeKeyValue_marker(a1, a2, a3);
      }
    }

    else if (v10 == 5)
    {

      return yaa_encodeKeyValue_sha1(a1, a2, a3, a3 + 8);
    }

    else
    {

      return yaa_encodeKeyValue_sha256(a1, a2, a3, (a3 + 8));
    }
  }

  else if (v10 > 2)
  {
    if (v10 == 3)
    {

      return yaa_encodeKeyValue_timespec(a1, a2, a3, (a3 + 8));
    }

    else
    {

      return yaa_encodeKeyValue_cksum(a1, a2, a3, (a3 + 8));
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v11 = *(a3 + 8);

        return yaa_encodeKeyValue_blob(a1, a2, a3, v11);
      }

LABEL_34:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeaderField", 190, 10, 0, "invalid valueType in field", a7, a8, v8);
      return -1;
    }

    v13 = *(a3 + 8);

    return yaa_encodeKeyValue_uint(a1, a2, a3, v13);
  }
}

uint64_t yaa_encodeHeader(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0xFFFF)
  {
    v8 = 0xFFFFLL;
  }

  else
  {
    v8 = a2;
  }

  if ((*a3 & 1) == 0)
  {
    v9 = "invalid header, TYP must be set";
    v10 = 204;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", v10, 10, 0, v9, a7, a8, v43);
    return -1;
  }

  v12 = a3[1] - 66;
  v13 = v12 > 0x11;
  v14 = (1 << v12) & 0x24C57;
  if (v13 || v14 == 0)
  {
    v9 = "invalid entryType";
    v10 = 217;
    goto LABEL_6;
  }

  if (a2 < 6)
  {
    return -1;
  }

  v18 = a4;
  *(a1 + 4) = 30840;
  *a1 = 825246017;
  v20 = v8 - 6;
  v21 = *a3;
  if (*a3)
  {
    if (v20 < 5)
    {
      return -1;
    }

    v23 = a3[1];
    *(a1 + 6) = __toupper(84);
    *(a1 + 7) = __toupper(89);
    *(a1 + 8) = __toupper(80);
    *(a1 + 9) = __toupper(49);
    *(a1 + 10) = v23;
    v22 = a1 + 11;
    v20 = v8 - 11;
    v21 = *a3;
    if ((*a3 & 0x8000) == 0)
    {
LABEL_15:
      if ((v21 & 0x10000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v22 = a1 + 6;
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_15;
    }
  }

  v24 = yaa_encodeKeyValue_path(v22, v20, "PAT", a3 + 144);
  if ((v24 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v22 += v24;
  v20 -= v24;
  v21 = *a3;
  if ((*a3 & 0x10000) == 0)
  {
LABEL_16:
    if ((v21 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_27:
  v25 = yaa_encodeKeyValue_path(v22, v20, "LNK", a3 + 1168);
  if ((v25 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v22 += v25;
  v20 -= v25;
  v21 = *a3;
  if ((*a3 & 2) == 0)
  {
LABEL_17:
    if ((v21 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_29:
  v26 = yaa_encodeKeyValue_uint(v22, v20, "UID", a3[2]);
  if (v26 < 0)
  {
    return -1;
  }

  v22 += v26;
  v20 -= v26;
  v21 = *a3;
  if ((*a3 & 4) == 0)
  {
LABEL_18:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_31:
  v27 = yaa_encodeKeyValue_uint(v22, v20, "GID", a3[3]);
  if (v27 < 0)
  {
    return -1;
  }

  v22 += v27;
  v20 -= v27;
  v21 = *a3;
  if ((*a3 & 0x10) == 0)
  {
LABEL_19:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_33:
  v28 = v20 >= 6;
  v20 -= 6;
  if (!v28)
  {
    return -1;
  }

  v29 = a3[5];
  *v22 = __toupper(77);
  *(v22 + 1) = __toupper(79);
  *(v22 + 2) = __toupper(68);
  *(v22 + 3) = __toupper(50);
  *(v22 + 4) = v29;
  v22 += 6;
  v21 = *a3;
  if ((*a3 & 0x20) == 0)
  {
LABEL_20:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_36:
  v30 = yaa_encodeKeyValue_uint(v22, v20, "DEV", a3[6]);
  if (v30 < 0)
  {
    return -1;
  }

  v22 += v30;
  v20 -= v30;
  v21 = *a3;
  if ((*a3 & 0x40) == 0)
  {
LABEL_21:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_38:
  v31 = yaa_encodeKeyValue_uint(v22, v20, "INO", *(a3 + 4));
  if (v31 < 0)
  {
    return -1;
  }

  v22 += v31;
  v20 -= v31;
  v21 = *a3;
  if ((*a3 & 0x80) != 0)
  {
LABEL_40:
    v32 = yaa_encodeKeyValue_uint(v22, v20, "SIZ", *(a3 + 5));
    if (v32 < 0)
    {
      return -1;
    }

    v22 += v32;
    v20 -= v32;
    v21 = *a3;
  }

LABEL_42:
  if ((v21 & 8) != 0)
  {
    v33 = yaa_encodeKeyValue_uint(v22, v20, "FLG", a3[4]);
    if (v33 < 0)
    {
      return -1;
    }

    v22 += v33;
    v20 -= v33;
    v21 = *a3;
  }

  if ((v21 & 0x100) != 0)
  {
    v34 = yaa_encodeKeyValue_timespec(v22, v20, "MTM", a3 + 6);
    if (v34 < 0)
    {
      return -1;
    }

    v22 += v34;
    v20 -= v34;
    v21 = *a3;
  }

  if ((v21 & 0x1000) != 0)
  {
    v35 = yaa_encodeKeyValue_cksum(v22, v20, "CKS", a3 + 22);
    if (v35 < 0)
    {
      return -1;
    }

    v22 += v35;
    v20 -= v35;
    v21 = *a3;
  }

  if ((v21 & 0x2000) != 0)
  {
    v36 = yaa_encodeKeyValue_sha1(v22, v20, "SH1", (a3 + 23));
    if (v36 < 0)
    {
      return -1;
    }

    v22 += v36;
    v20 -= v36;
    v21 = *a3;
  }

  if ((v21 & 0x4000) != 0)
  {
    v37 = yaa_encodeKeyValue_sha256(v22, v20, "SH2", a3 + 7);
    if (v37 < 0)
    {
      return -1;
    }

    v22 += v37;
    v20 -= v37;
    v21 = *a3;
  }

  if ((v21 & 0x200) != 0)
  {
    v38 = yaa_encodeKeyValue_blob(v22, v20, "DAT", *(a3 + 8));
    if (v38 < 0)
    {
      return -1;
    }

    v22 += v38;
    v20 -= v38;
    v21 = *a3;
  }

  if ((v21 & 0x400) != 0)
  {
    v39 = yaa_encodeKeyValue_blob(v22, v20, "XAT", *(a3 + 9));
    if (v39 < 0)
    {
      return -1;
    }

    v22 += v39;
    v20 -= v39;
    v21 = *a3;
  }

  if ((v21 & 0x800) != 0)
  {
    v40 = yaa_encodeKeyValue_blob(v22, v20, "ACL", *(a3 + 10));
    if (v40 < 0)
    {
      return -1;
    }

    v22 += v40;
    v20 -= v40;
  }

  if (v18 && a5)
  {
    v41 = 0;
    do
    {
      v42 = yaa_encodeHeaderField(v22, v20, v18, a4, a5, a6, a7, a8);
      if ((v42 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v22 += v42;
      v20 -= v42;
      ++v41;
      v18 += 1032;
    }

    while (v41 < a5);
  }

  result = v22 - a1;
  *(a1 + 4) = v22 - a1;
  return result;
}

uint64_t yaa_encodeACE(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3 - 1;
  if (v8 >= 4)
  {
    v16 = "invalid ACE type";
    v17 = 281;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", v17, 10, 0, v16, a7, a8, v18);
    return -1;
  }

  v10 = *(a3 + 24) - 1;
  if (v10 >= 4)
  {
    v16 = "invalid ACE qualifier type";
    v17 = 298;
    goto LABEL_8;
  }

  v13 = strlen((a3 + 28));
  v14 = v13 + 22;
  result = -1;
  if (v13 + 22 <= a2 && !HIDWORD(v14))
  {
    *a1 = v14;
    *(a1 + 4) = 0x4C554441u >> (8 * v8);
    *(a1 + 5) = *(a3 + 16);
    *(a1 + 13) = *(a3 + 8);
    *(a1 + 21) = 0x69736775u >> (8 * v10);
    memcpy((a1 + 22), (a3 + 28), v13);
    return v14;
  }

  return result;
}

uint64_t yaa_decodeHeaderField(uint64_t a1, uint64_t a2, unint64_t a3)
{
  bzero(a1, 0x408uLL);
  if (a3 < 4)
  {
    return -1;
  }

  for (i = 0; i != 3; ++i)
  {
    *(a1 + i) = __toupper(*(a2 + i));
  }

  v11 = *(a2 + 3);
  if (v11 <= 0x42)
  {
    if (*(a2 + 3) <= 0x33u)
    {
      if (v11 == 42)
      {
        *(a1 + 4) = 8;
        return 4;
      }

      if (v11 == 49)
      {
        if (a3 != 4)
        {
          *(a1 + 4) = 1;
          *(a1 + 8) = *(a2 + 4);
          return 5;
        }

        return -1;
      }

      if (v11 != 50)
      {
        goto LABEL_57;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v16 = 1;
    }

    else
    {
      if (*(a2 + 3) <= 0x40u)
      {
        if (v11 != 52)
        {
          if (v11 == 56)
          {
            if (a3 >= 0xC)
            {
              v12 = 1;
LABEL_50:
              *(a1 + 4) = v12;
              *(a1 + 8) = *(a2 + 4);
              return 12;
            }

            return -1;
          }

          goto LABEL_57;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v18 = 1;
LABEL_56:
        *(a1 + 4) = v18;
        *(a1 + 8) = *(a2 + 4);
        return 8;
      }

      if (v11 != 65)
      {
        if (v11 == 66)
        {
          if (a3 < 8)
          {
            return -1;
          }

          v18 = 2;
          goto LABEL_56;
        }

LABEL_57:
        v14 = "invalid fields storage type";
        v15 = 404;
        goto LABEL_58;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v16 = 2;
    }

    *(a1 + 4) = v16;
    *(a1 + 8) = *(a2 + 4);
    return 6;
  }

  if (*(a2 + 3) > 0x47u)
  {
    if (*(a2 + 3) > 0x52u)
    {
      if (v11 == 83)
      {
        if (a3 >= 0xC)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = 0;
          return 12;
        }

        return -1;
      }

      if (v11 == 84)
      {
        if (a3 >= 0x10)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = *(a2 + 12);
          return 16;
        }

        return -1;
      }
    }

    else
    {
      if (v11 == 72)
      {
        if (a3 >= 0x24)
        {
          *(a1 + 4) = 6;
          v19 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v19;
          return 36;
        }

        return -1;
      }

      if (v11 == 80)
      {
        if (a3 < 6)
        {
          return -1;
        }

        v13 = *(a2 + 4);
        if (v13 < 0x3FF)
        {
          v6 = v13 + 6;
          if (v13 + 6 <= a3)
          {
            *(a1 + 4) = 7;
            memcpy((a1 + 8), (a2 + 6), v13);
            return v6;
          }

          return -1;
        }

        v14 = "path too long in header";
        v15 = 396;
LABEL_58:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", v15, 10, 0, v14, v9, v10, v20);
        return -1;
      }
    }

    goto LABEL_57;
  }

  if (v11 != 67)
  {
    if (v11 == 70)
    {
      if (a3 < 8)
      {
        return -1;
      }

      v18 = 4;
      goto LABEL_56;
    }

    if (v11 == 71)
    {
      if (a3 >= 0x18)
      {
        *(a1 + 4) = 5;
        v17 = *(a2 + 4);
        *(a1 + 24) = *(a2 + 20);
        *(a1 + 8) = v17;
        return 24;
      }

      return -1;
    }

    goto LABEL_57;
  }

  if (a3 >= 0xC)
  {
    v12 = 2;
    goto LABEL_50;
  }

  return -1;
}

uint64_t yaa_decodeHeader(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  v31 = *MEMORY[0x29EDCA608];
  bzero(a1, 0x890uLL);
  if (a3 >= 6 && (*a2 == 826360153 || *a2 == 825246017) && ((v12 = *(a2 + 4), v12 >= 6) ? (v13 = v12 > a3) : (v13 = 1), !v13))
  {
    v16 = a2 + 6;
    v17 = v12 - 6;
    if (v12 != 6)
    {
      v29 = 0;
      memset(__src, 0, 512);
      while (1)
      {
        v18 = yaa_decodeHeaderField(__src, v16, v17);
        if (v18 < 0)
        {
          goto LABEL_9;
        }

        v21 = v18;
        v22 = __src[0] & 0xDFDFDF;
        if ((__src[0] & 0xDFDFDF) <= 0x4D544C)
        {
          if ((__src[0] & 0xDFDFDF) > 0x444F4C)
          {
            if ((__src[0] & 0xDFDFDF) > 0x4B4E4B)
            {
              if (v22 == 4935244)
              {
                if (DWORD1(__src[0]) != 7)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 459, 10, 0, "invalid type for default field %s", v19, v20, __src);
                  goto LABEL_9;
                }

                *a1 |= 0x10000u;
                strlcpy(a1 + 1168, __src + 8, 0x400uLL);
              }

              else
              {
                if (v22 != 4997953)
                {
                  goto LABEL_74;
                }

                if (DWORD1(__src[0]) != 2)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 473, 10, 0, "invalid type for default field %s", v19, v20, __src);
                  goto LABEL_9;
                }

                *a1 |= 0x800u;
                *(a1 + 10) = *(&__src[0] + 1);
              }
            }

            else if (v22 == 4476749)
            {
              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 463, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 0x10u;
              a1[5] = DWORD2(__src[0]);
            }

            else
            {
              if (v22 != 4672582)
              {
                goto LABEL_74;
              }

              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 462, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 8u;
              a1[4] = DWORD2(__src[0]);
            }
          }

          else if ((__src[0] & 0xDFDFDF) > 0x444946)
          {
            if (v22 == 4475207)
            {
              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 461, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 4u;
              a1[3] = DWORD2(__src[0]);
            }

            else
            {
              if (v22 != 4475221)
              {
                goto LABEL_74;
              }

              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 460, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 2u;
              a1[2] = DWORD2(__src[0]);
            }
          }

          else if (v22 == 1132627)
          {
            if (DWORD1(__src[0]) != 5)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 469, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x2000u;
            *(a1 + 23) = *(__src + 8);
            a1[27] = DWORD2(__src[1]);
          }

          else
          {
            if (v22 != 1198163)
            {
              goto LABEL_74;
            }

            if (DWORD1(__src[0]) != 6)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 470, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x4000u;
            v23 = *(&__src[1] + 8);
            *(a1 + 7) = *(__src + 8);
            *(a1 + 8) = v23;
          }
        }

        else if ((__src[0] & 0xDFDFDF) <= 0x544143)
        {
          if ((__src[0] & 0xDFDFDF) > 0x505953)
          {
            if (v22 == 5265748)
            {
              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 440, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              v24 = DWORD2(__src[0]);
              if ((*(&__src[0] + 1) - 66) > 0x11 || ((1 << (BYTE8(__src[0]) - 66)) & 0x24C57) == 0)
              {
                v26 = "invalid entryType";
                v27 = 455;
                goto LABEL_101;
              }

              *a1 |= 1u;
              a1[1] = v24;
            }

            else
            {
              if (v22 != 5458755)
              {
                goto LABEL_74;
              }

              if (DWORD1(__src[0]) != 4)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 468, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 0x1000u;
              a1[22] = DWORD2(__src[0]);
            }
          }

          else if (v22 == 5067853)
          {
            if (DWORD1(__src[0]) != 3)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 467, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x100u;
            *(a1 + 3) = *(__src + 8);
          }

          else
          {
            if (v22 != 5197385)
            {
              goto LABEL_74;
            }

            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 465, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x40u;
            *(a1 + 4) = *(&__src[0] + 1);
          }
        }

        else if ((__src[0] & 0xDFDFDF) <= 0x544157)
        {
          if (v22 == 5521732)
          {
            if (DWORD1(__src[0]) != 2)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 471, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x200u;
            *(a1 + 8) = *(&__src[0] + 1);
          }

          else
          {
            if (v22 != 5521744)
            {
LABEL_74:
              v25 = v29;
              if (a4 && v29 < a5)
              {
                memcpy((a4 + 1032 * v29), __src, 0x408uLL);
                v25 = v29;
              }

              v29 = v25 + 1;
              goto LABEL_78;
            }

            if (DWORD1(__src[0]) != 7)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 458, 10, 0, "invalid type for default field %s", v19, v20, __src);
              goto LABEL_9;
            }

            *a1 |= 0x8000u;
            __strlcpy_chk();
          }
        }

        else
        {
          switch(v22)
          {
            case 5521752:
              if (DWORD1(__src[0]) != 2)
              {
                v28 = __src;
                v26 = "invalid type for default field %s";
                v27 = 472;
LABEL_101:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", v27, 10, 0, v26, v19, v20, v28);
                goto LABEL_9;
              }

              *a1 |= 0x400u;
              *(a1 + 9) = *(&__src[0] + 1);
              break;
            case 5653828:
              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 464, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 0x20u;
              a1[6] = DWORD2(__src[0]);
              break;
            case 5917011:
              if (DWORD1(__src[0]) != 1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 466, 10, 0, "invalid type for default field %s", v19, v20, __src);
                goto LABEL_9;
              }

              *a1 |= 0x80u;
              *(a1 + 5) = *(&__src[0] + 1);
              break;
            default:
              goto LABEL_74;
          }
        }

LABEL_78:
        v16 += v21;
        v17 -= v21;
        if (!v17)
        {
          goto LABEL_81;
        }
      }
    }

    v29 = 0;
LABEL_81:
    if (a6)
    {
      *a6 = v29;
    }

    result = v16 - a2;
  }

  else
  {
LABEL_9:
    result = -1;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t yaa_decodeHeaderInfo(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 6 || *a1 != 826360153 && *a1 != 825246017)
  {
    return -1;
  }

  result = *(a1 + 4);
  if (result < 6 || result > a2)
  {
    return -1;
  }

  v11 = result - 6;
  if (result != 6)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a1 + 6);
    while (1)
    {
      if (v11 < 4)
      {
        return -1;
      }

      v15 = *(v14 + 3);
      v22 = *v14;
      if (v15 > 0x42)
      {
        if (*(v14 + 3) <= 0x47u)
        {
          if (v15 == 67)
          {
            if (v11 < 0xC)
            {
              return -1;
            }

            v20 = *(v14 + 1);
            v18 = __CFADD__(v12, v20);
            v12 += v20;
            if (v18)
            {
              return -1;
            }

LABEL_48:
            v16 = 12;
            goto LABEL_49;
          }

          if (v15 == 70)
          {
            goto LABEL_36;
          }

          if (v15 != 71)
          {
            goto LABEL_80;
          }

          v16 = 24;
        }

        else if (*(v14 + 3) > 0x52u)
        {
          if (v15 == 83)
          {
            goto LABEL_48;
          }

          if (v15 != 84)
          {
LABEL_80:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderInfo", 558, 10, 0, "invalid storage type in YAA header: 0x%02x, key=%s", 4476749, a8, v15);
            return -1;
          }

          v16 = 16;
        }

        else if (v15 == 72)
        {
          v16 = 36;
        }

        else
        {
          if (v15 != 80)
          {
            goto LABEL_80;
          }

          if (v11 < 6)
          {
            return -1;
          }

          v16 = *(v14 + 2) + 6;
        }
      }

      else
      {
        if (*(v14 + 3) > 0x33u)
        {
          if (*(v14 + 3) > 0x40u)
          {
            if (v15 != 65)
            {
              if (v11 < 8)
              {
                return -1;
              }

              v17 = v14[1];
              v18 = __CFADD__(v12, v17);
              v12 += v17;
              if (v18)
              {
                return -1;
              }

LABEL_36:
              v16 = 8;
              goto LABEL_49;
            }

            if (v11 < 6)
            {
              return -1;
            }

            v19 = *(v14 + 2);
            v18 = __CFADD__(v12, v19);
            v12 += v19;
            if (v18)
            {
              return -1;
            }

            goto LABEL_43;
          }

          if (v15 == 52)
          {
            goto LABEL_36;
          }

          if (v15 != 56)
          {
            goto LABEL_80;
          }

          goto LABEL_48;
        }

        switch(v15)
        {
          case '*':
            v16 = 4;
            break;
          case '1':
            v16 = 5;
            break;
          case '2':
LABEL_43:
            v16 = 6;
            break;
          default:
            goto LABEL_80;
        }
      }

LABEL_49:
      if (v11 < v16)
      {
        return -1;
      }

      v21 = v22 & 0xDFDFDF;
      if ((v22 & 0xDFDFDFu) > 0x4F4E48)
      {
        if ((v22 & 0xDFDFDFu) <= 0x544143)
        {
          if (v21 == 5197385 || v21 == 5265748 || v21 == 5458755)
          {
            goto LABEL_76;
          }
        }

        else
        {
          a8 = (v21 - 5521732);
          if (a8 <= 0x14)
          {
            a8 = (1 << (v21 - 68));
            if ((a8 & 0x101001) != 0)
            {
              goto LABEL_76;
            }
          }

          if (v21 == 5653828 || v21 == 5917011)
          {
            goto LABEL_76;
          }
        }

LABEL_74:
        a8 = 4997953;
        if (v21 != 4997953)
        {
          ++v13;
        }

        goto LABEL_76;
      }

      if ((v22 & 0xDFDFDFu) <= 0x444F4C)
      {
        if ((v22 & 0xDFDFDFu) > 0x444946)
        {
          if (v21 == 4475207)
          {
            goto LABEL_76;
          }

          a8 = 4475221;
        }

        else
        {
          if (v21 == 1132627)
          {
            goto LABEL_76;
          }

          a8 = 1198163;
        }

        goto LABEL_70;
      }

      if ((v22 & 0xDFDFDFu) > 0x4B4E4B)
      {
        if (v21 == 4935244 || v21 == 5067853)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

      if (v21 != 4476749)
      {
        a8 = 4672582;
LABEL_70:
        if (v21 != a8)
        {
          goto LABEL_74;
        }
      }

LABEL_76:
      v14 = (v14 + v16);
      v11 -= v16;
      if (!v11)
      {
        goto LABEL_79;
      }
    }
  }

  v13 = 0;
  v12 = 0;
LABEL_79:
  *a3 = v13;
  *a4 = v12;
  return result;
}

uint64_t yaa_decodeACE(unsigned int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 > 3)
  {
    v10 = *a1;
    if (v10 > a2)
    {
      v8 = "invalid ACL blob";
      v9 = 612;
      goto LABEL_7;
    }

    v12 = *(a1 + 4);
    *(a3 + 16) = *(a1 + 5);
    *(a3 + 8) = *(a1 + 13);
    if (v10 - 22 >= 0x101)
    {
      v8 = "unsupported qualifier length";
      v9 = 622;
      goto LABEL_7;
    }

    v14 = *(a1 + 21);
    memcpy((a3 + 28), a1 + 22, v10 - 22);
    v15 = __toupper(v12);
    if (v15 > 75)
    {
      if (v15 == 76)
      {
        v18 = 4;
      }

      else
      {
        if (v15 != 85)
        {
          goto LABEL_17;
        }

        v18 = 3;
      }
    }

    else
    {
      if (v15 != 65)
      {
        if (v15 == 68)
        {
          v18 = 2;
          goto LABEL_20;
        }

LABEL_17:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 632, 10, 0, "invalid ACE type in ACL blob: %c", v16, v17, v12);
        return -1;
      }

      v18 = 1;
    }

LABEL_20:
    *a3 = v18;
    HIDWORD(v22) = __toupper(v14) - 71;
    LODWORD(v22) = HIDWORD(v22);
    v21 = v22 >> 1;
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v23 = 3;
        goto LABEL_30;
      }

      if (v21 == 7)
      {
        v23 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v21)
      {
        v23 = 2;
        goto LABEL_30;
      }

      if (v21 == 1)
      {
        v23 = 4;
LABEL_30:
        *(a3 + 24) = v23;
        return v10;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 642, 10, 0, "invalid ACE qualifier type in ACL blob: %c", v19, v20, v14);
    return -1;
  }

  v8 = "invalid ACL blob";
  v9 = 610;
LABEL_7:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", v9, 10, 0, v8, a7, a8, v24);
  return -1;
}

unint64_t yaa_decodeACL(uint64_t a1, unint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v11 = *a3;
  if (a4)
  {
    v12 = a5;
    v13 = a4;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      if (v15 >= v10)
      {
        if (v10)
        {
          v10 += v10 >> 1;
        }

        else
        {
          v10 = 8;
        }

        v11 = reallocf(v11, 288 * v10);
        if (!v11)
        {
          break;
        }
      }

      v16 = yaa_decodeACE(v12, v13, v11 + v14, a4, a5, a6, a7, a8);
      if (v16 < 0)
      {
        v17 = "decoding ACE";
        v18 = 670;
        v19 = 0;
        goto LABEL_14;
      }

      ++v15;
      v12 = (v12 + v16);
      v14 += 288;
      v13 -= v16;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v19 = *__error();
    v17 = "malloc";
    v18 = 665;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", v18, 10, v19, v17, a7, a8, v21);
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:
  *a2 = v10;
  *a3 = v11;
  return v15;
}

uint64_t yaa_setEntryAttributes(char *a1, int *a2, uint64_t a3, int a4)
{
  v74 = *MEMORY[0x29EDCA608];
  v72[1] = 0;
  v72[2] = 0;
  v72[0] = 5;
  memset(v73, 0, sizeof(v73));
  if (a3 && (*a3 & 1) != 0)
  {
    v73[0] = *(a3 + 8);
    v8 = 512;
    HIDWORD(v72[0]) = 512;
    v9 = 16;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v11 = *(a2 + 3);
    v12 = (v73 + v9);
    *v12 = v11;
    v12[1] = v11;
    v9 |= 0x20u;
    v8 |= 0x1400u;
    HIDWORD(v72[0]) = v8;
  }

  if (a3 && (*a3 & 2) != 0)
  {
    *(v73 + v9) = *(a3 + 24);
    v9 += 16;
    HIDWORD(v72[0]) = v8 | 0x2000;
  }

  if ((v10 & 2) != 0)
  {
    v13 = a2[2];
    if ((v10 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = -1;
    if ((v10 & 4) != 0)
    {
LABEL_12:
      v14 = a2[3];
      goto LABEL_15;
    }
  }

  v14 = -1;
LABEL_15:
  memset(&v71, 0, sizeof(v71));
  if (lstat(a1, &v71) < 0)
  {
    v17 = __error();
    if (a4 && *v17 == 13)
    {
      result = 0;
      goto LABEL_72;
    }

    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 751, 10, v27, "%s", v28, v29, a1);
LABEL_36:
    result = 0xFFFFFFFFLL;
    goto LABEL_72;
  }

  v15 = v71.st_mode & 0xF000;
  if (v15 == 0x8000 || v15 == 0x4000)
  {
    FileAPFSInternalFlags = getFileAPFSInternalFlags();
  }

  else
  {
    FileAPFSInternalFlags = 0;
  }

  v19 = a2[1] - 68;
  if (v19 > 8 || ((1 << v19) & 0x115) == 0)
  {
    if ((*a2 & 2) != 0 && v13 != v71.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v71.st_gid)
    {
      if (!lchown(a1, v13, v14) || (v30 = __error(), a4) && *v30 == 1)
      {
        v22 = 1;
      }

      else
      {
        v53 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 814, 10, *v53, "%s", v54, v55, a1);
        v22 = 0;
      }
    }

    if ((*a2 & 0x10) != 0)
    {
      v56 = a2[5] & 0xFFF;
      if (v56 != (v71.st_mode & 0xFFF))
      {
        if (lchmod(a1, v56))
        {
          v57 = __error();
          if (!a4 || *v57 != 1)
          {
            v58 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 819, 10, *v58, "%s", v59, v60, a1);
            v22 = 0;
          }
        }
      }
    }

    if (HIDWORD(v72[0]))
    {
      if (setattrlist(a1, v72, v73, v9, 1u))
      {
        v61 = __error();
        if (!a4 || *v61 != 1)
        {
          v62 = __error();
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 835, 10, "setattrlist error %d: %s", v63, v64, v65, *v62);
        }
      }
    }

    if ((*a2 & 8) != 0)
    {
      v66 = a2[4] & 0xFFFFFFDF | (32 * ((v71.st_flags >> 5) & 1));
      if (v71.st_flags != v66)
      {
        if (lchflags(a1, v66))
        {
          v67 = __error();
          if (!a4 || *v67 != 1)
          {
            v68 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 849, 10, *v68, "%s", v69, v70, a1);
            v22 = 0;
          }
        }
      }
    }

    goto LABEL_69;
  }

  v20 = open(a1, 0x200000);
  if ((v20 & 0x80000000) != 0)
  {
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 770, 10, v24, "%s", v25, v26, a1);
    goto LABEL_36;
  }

  v21 = v20;
  if ((*a2 & 2) != 0 && v13 != v71.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v71.st_gid)
  {
    if (!fchown(v20, v13, v14) || (v23 = __error(), a4) && *v23 == 1)
    {
      v22 = 1;
    }

    else
    {
      v31 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 774, 10, *v31, "%s", v32, v33, a1);
      v22 = 0;
    }
  }

  if ((*a2 & 0x10) != 0)
  {
    v34 = a2[5] & 0xFFF;
    if (v34 != (v71.st_mode & 0xFFF))
    {
      if (fchmod(v21, v34))
      {
        v35 = __error();
        if (!a4 || *v35 != 1)
        {
          v36 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 778, 10, *v36, "%s", v37, v38, a1);
          v22 = 0;
        }
      }
    }
  }

  if (HIDWORD(v72[0]))
  {
    if (fsetattrlist(v21, v72, v73, v9, 1u))
    {
      v39 = __error();
      if (!a4 || *v39 != 1)
      {
        v40 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 783, 10, *v40, "%s", v41, v42, a1);
        v22 = 0;
      }
    }
  }

  if (a3)
  {
    if ((*a3 & 0x100) != 0)
    {
      v43 = *(a3 + 80);
      if (FileAPFSInternalFlags != v43 && (setFileAPFSInternalFlagsFD(v21, v43) & 0x80000000) != 0)
      {
        v44 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 794, 10, *v44, "%s", v45, v46, a1);
        v22 = 0;
      }
    }
  }

  if ((*a2 & 8) != 0)
  {
    v47 = a2[4] & 0xFFFFFFDF | (32 * ((v71.st_flags >> 5) & 1));
    if (v71.st_flags != v47)
    {
      if (fchflags(v21, v47))
      {
        v48 = __error();
        if (!a4 || *v48 != 1)
        {
          v49 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 803, 10, *v49, "%s", v50, v51, a1);
          v22 = 0;
        }
      }
    }
  }

  close(v21);
LABEL_69:
  if (v22)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_72:
  v52 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t yaa_setEntryXAT(char *path, uint64_t a2, int a3, unint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 1) & 4) == 0)
  {
    return 0;
  }

  v9 = a4;
  if (*(a2 + 72) == a4)
  {
    if (a4)
    {
      v13 = 1;
      do
      {
        v14 = *a5;
        if (v9 < v14)
        {
          v24 = "invalid XAT entry size";
          v25 = 871;
          goto LABEL_31;
        }

        if (v14 < 5)
        {
          LOBYTE(v16) = 0;
LABEL_30:
          v26 = v16;
          v24 = "invalid XAT entry key %zu";
          v25 = 878;
          goto LABEL_31;
        }

        v15 = a5;
        v16 = 0;
        a5 = (a5 + v14);
        v17 = (v15 + 1);
        while (v17[v16])
        {
          v18 = &v17[++v16];
          if (&v17[v16] >= a5)
          {
            goto LABEL_13;
          }
        }

        v18 = &v17[v16];
LABEL_13:
        if (!v16 || v18 == a5)
        {
          goto LABEL_30;
        }

        if (a5 == (v18 + 1))
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 + 1;
        }

        if (setxattr(path, v17, v19, a5 - (v18 + 1), 0, 1) < 0)
        {
          v20 = __error();
          if (!a3 || *v20 != 1)
          {
            v21 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 891, 10, *v21, "setxattr: %s", v22, v23, path);
            v13 = 0;
          }
        }

        v9 -= v14;
      }

      while (v9);
      if (v13)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "XAT blob size mismatch";
    v25 = 863;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", v25, 10, 0, v24, a7, a8, v26);
    return 0xFFFFFFFFLL;
  }
}

uint64_t yaa_setEntryACL(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 1) & 8) == 0)
  {
    goto LABEL_2;
  }

  memset(&v38, 0, sizeof(v38));
  if (lstat(a1, &v38))
  {
    if (!a4)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }
  }

  else if ((v38.st_mode & 0xF000) == 0xA000 || a4 == 0)
  {
    goto LABEL_2;
  }

  v12 = 0;
  v13 = a5;
  v14 = a4;
  do
  {
    if ((*v13 - 1) < 2)
    {
      ++v12;
    }

    v13 += 72;
    --v14;
  }

  while (v14);
  if (!v12)
  {
    goto LABEL_2;
  }

  acl_p = 0;
  v15 = sysconf(71);
  v16 = sysconf(70);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v17 <= 4096)
  {
    v18 = 4096;
  }

  else
  {
    v18 = v17;
  }

  v19 = malloc(v18);
  if (!v19)
  {
    v29 = *__error();
    v30 = "malloc";
    v31 = 943;
LABEL_57:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryACL", v31, 10, v29, v30, v20, v21, v32);
    v5 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  acl_p = acl_init(v12);
  if (!acl_p)
  {
    v29 = *__error();
    v30 = "acl_init";
    v31 = 946;
    goto LABEL_57;
  }

  v22 = (a5 + 28);
  do
  {
    flagset_p = 0;
    entry_p = 0;
    memset(uu, 0, sizeof(uu));
    v23 = *(v22 - 7);
    if (v23 - 1 > 1)
    {
      goto LABEL_52;
    }

    if ((*(v22 - 12) & 0xFFFFFFFFFFFDFE0FLL) != 0)
    {
      v32 = *(v22 - 12);
      v30 = "invalid ACE flags: 0x%016llx";
      v31 = 973;
      goto LABEL_72;
    }

    if ((*(v22 - 20) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v32 = *(v22 - 20);
      v30 = "invalid ACE perms: 0x%016llx";
      v31 = 974;
      goto LABEL_72;
    }

    v24 = *(v22 - 1);
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        memset(&v34, 0, sizeof(v34));
        if (mbr_string_to_sid(v22, &v34))
        {
          v26 = 0;
          goto LABEL_45;
        }

        v27 = mbr_sid_to_uuid(&v34, uu);
        goto LABEL_44;
      }

      if (v24 == 4)
      {
        if (uuid_parse(v22, uu))
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

LABEL_71:
      LODWORD(v32) = *(v22 - 1);
      v30 = "invalid qualifier type: %d";
      v31 = 1007;
LABEL_72:
      v29 = 0;
      goto LABEL_57;
    }

    if (v24 == 1)
    {
      memset(&v34, 0, sizeof(v34));
      v33 = 0;
      v28 = getpwnam_r(v22, &v34, v19, v18, &v33);
      v26 = 0;
      if (!v28 && v33)
      {
        v27 = mbr_uid_to_uuid(v34.pw_uid, uu);
        goto LABEL_44;
      }
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_71;
      }

      memset(&v34, 0, 32);
      v33 = 0;
      v25 = getgrnam_r(v22, &v34, v19, v18, &v33);
      v26 = 0;
      if (!v25 && v33)
      {
        v27 = mbr_gid_to_uuid(v34.pw_uid, uu);
LABEL_44:
        v26 = v27 == 0;
      }
    }

LABEL_45:
    if (!v26)
    {
LABEL_63:
      LODWORD(v32) = *(v22 - 1);
      v30 = "could not resolve qualifier (type %d): %s";
      v31 = 1010;
      goto LABEL_72;
    }

LABEL_46:
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v29 = *__error();
      v30 = "acl_create_entry";
      v31 = 1013;
      goto LABEL_57;
    }

    if (acl_set_tag_type(entry_p, v23))
    {
      v29 = *__error();
      v30 = "acl_set_tag_type";
      v31 = 1014;
      goto LABEL_57;
    }

    if (acl_set_permset_mask_np(entry_p, *(v22 - 20)))
    {
      v29 = *__error();
      v30 = "acl_set_permset_mask_np";
      v31 = 1015;
      goto LABEL_57;
    }

    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v29 = *__error();
      v30 = "acl_get_flagset_np";
      v31 = 1016;
      goto LABEL_57;
    }

    if (acl_add_flag_np(flagset_p, *(v22 - 3)))
    {
      v29 = *__error();
      v30 = "acl_add_flag_np";
      v31 = 1017;
      goto LABEL_57;
    }

    if (acl_set_qualifier(entry_p, uu))
    {
      v29 = *__error();
      v30 = "acl_set_qualifier";
      v31 = 1018;
      goto LABEL_57;
    }

LABEL_52:
    v22 += 288;
    --a4;
  }

  while (a4);
  if (acl_set_file(a1, ACL_TYPE_EXTENDED, acl_p))
  {
    v29 = *__error();
    LOBYTE(v32) = a1;
    v30 = "acl_set_file: %s";
    v31 = 1022;
    goto LABEL_57;
  }

  v5 = 0;
LABEL_58:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v19);
LABEL_3:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t ParallelArchiveGetPayloadSize(int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    v5 = *(a1 + 10);
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    v5 += *(a1 + 8);
  }

LABEL_6:
  if ((v4 & 0x400) != 0)
  {
    v5 += *(a1 + 9);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3)
  {
    goto LABEL_14;
  }

  v6 = (a2 + 8);
  do
  {
    if (*(v6 - 1) == 2)
    {
      v5 += *v6;
    }

    v6 += 129;
    --a3;
  }

  while (a3);
LABEL_14:
  *a4 = v5;
  return 0;
}

char *fileSessionCreate(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  v2 = calloc(1uLL, 0x800uLL);
  if (!v2)
  {
    v5 = *__error();
    v9 = "malloc";
    v8 = 140;
    goto LABEL_7;
  }

  if (!realpath_DARWIN_EXTSN(a1, v2))
  {
    v5 = *__error();
    v11 = a1;
    v9 = "%s";
    v8 = 143;
    goto LABEL_7;
  }

  if (lstat(v2, &v12))
  {
    v5 = *__error();
    v8 = 146;
    v9 = v2;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionCreate", v8, 40, v5, v9, v6, v7, v11);
    goto LABEL_8;
  }

  if ((v12.st_mode & 0xF000) == 0x4000)
  {
    __strlcpy_chk();
    __strlcat_chk();
    return v2;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionCreate", 147, 40, 0, "Not a directory: %s", v3, v4, v2);
LABEL_8:
  free(v2);
  return 0;
}

void *fileRequestOpenForWriting(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x498uLL);
  v5 = v4;
  if (!v4)
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForWriting", 173, 40, *v11, "malloc", v12, v13, v15);
LABEL_6:
    free(v5);
    return 0;
  }

  *(v4 + 2) = 1;
  *v4 = a1;
  *(v4 + 264) = -1;
  *(v4 + 2) = 0;
  *(v4 + 3) = a2;
  CC_SHA256_Init((v4 + 1064));
  __strlcpy_chk();
  v6 = mkstemp(v5 + 32);
  *(v5 + 264) = v6;
  if (v6 < 0)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForWriting", 184, 40, *v7, (a1 + 1024), v8, v9, v15);
    v10 = *(v5 + 264);
    if ((v10 & 0x80000000) == 0)
    {
      close(v10);
    }

    goto LABEL_6;
  }

  return v5;
}

size_t fileRequestWrite(uint64_t a1, const void *a2, size_t __nbyte, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1060))
  {
    return -1;
  }

  if (!*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 200, 40, 0, "Invalid request type", a7, a8, v20);
    return -1;
  }

  if (*(a1 + 24) < __nbyte)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 203, 40, 0, "Exceeding write limit %llu: nbyte=%llu", a7, a8, *(a1 + 24));
LABEL_15:
    *(a1 + 1060) = 1;
    return -1;
  }

  v13 = write(*(a1 + 1056), a2, __nbyte);
  v8 = v13;
  if (v13 < 0)
  {
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 207, 40, *v17, "write", v18, v19, v20);
    return v8;
  }

  if (v13 != __nbyte)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 208, 40, 0, "truncated write: %zd/%zu", v14, v15, v13);
    goto LABEL_15;
  }

  CC_SHA256_Update((a1 + 1064), a2, __nbyte);
  v16 = *(a1 + 24);
  if (v16 != -1)
  {
    *(a1 + 24) = v16 - __nbyte;
  }

  return __nbyte;
}

uint64_t fileRequestCloseAndGetKey(char *a1, _OWORD *a2, unint64_t a3, void *a4)
{
  v53 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v11 = 0;
    goto LABEL_45;
  }

  v8 = *a1;
  bzero(__s, 0x400uLL);
  *md = 0u;
  v51 = 0u;
  if (*(a1 + 265))
  {
    goto LABEL_41;
  }

  if (!*(a1 + 2))
  {
    v12 = "Invalid request type";
    v13 = 229;
LABEL_40:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", v13, 40, 0, v12, v9, v10, v47);
    goto LABEL_41;
  }

  if (a3 <= 0x1F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 230, 40, 0, "Key capacity is too low, %d bytes needed", v9, v10, 32);
    goto LABEL_41;
  }

  if ((*(a1 + 3) + 1) >= 2)
  {
    v47 = *(a1 + 3);
    v12 = "Missing write limit %llu";
    v13 = 233;
    goto LABEL_40;
  }

  v14 = *(a1 + 264);
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
    *(a1 + 264) = -1;
  }

  CC_SHA256_Final(md, (a1 + 1064));
  while (1)
  {
    pathFromKey(__s, v8, md);
    v15 = strlen(__s);
    makePath(__s, v15);
    memset(&v49, 0, sizeof(v49));
    if (!stat(__s, &v49))
    {
      goto LABEL_34;
    }

    v16 = open(a1 + 32, 0);
    if (v16 < 0)
    {
      v28 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 90, 40, *v28, "%s", v29, v30, a1 + 32);
    }

    else
    {
      LOBYTE(v48) = 0x80;
      v17 = open(__s, 2561);
      if (v17 == -17)
      {
        goto LABEL_34;
      }

      v18 = v17;
      if (v17 < 0)
      {
        v31 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 94, 40, *v31, "%s", v32, v33, __s);
        close(v16);
        v16 = v18;
      }

      else
      {
        v19 = malloc(0x10000uLL);
        if (v19)
        {
          while (1)
          {
            v20 = read(v16, v19, 0x10000uLL);
            v21 = v20;
            if (!v20)
            {
              goto LABEL_29;
            }

            if (v20 < 0)
            {
              break;
            }

            v22 = write(v18, v19, v20);
            if (v22 < 0)
            {
              v26 = *__error();
              v48 = __s;
              v25 = 110;
              goto LABEL_27;
            }

            if (v22 != v21)
            {
              v25 = 111;
              v26 = 0;
              v27 = "truncated write";
              goto LABEL_28;
            }
          }

          v26 = *__error();
          LOBYTE(v48) = a1 + 32;
          v25 = 107;
LABEL_27:
          v27 = "%s";
          goto LABEL_28;
        }

        v26 = *__error();
        v25 = 101;
        v27 = "malloc";
LABEL_28:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", v25, 40, v26, v27, v23, v24, v48);
        LODWORD(v21) = 1;
LABEL_29:
        free(v19);
        close(v18);
        close(v16);
        v34 = v21 ? __s : a1 + 32;
        unlink(v34);
        v16 = (v21 << 31) >> 31;
      }
    }

    if (v16 != -17)
    {
      break;
    }

LABEL_34:
    if (areFilesEqual(a1 + 32, __s) > 0)
    {
      goto LABEL_47;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 262, 40, "SHA256 hash collision: %s", v35, v36, v37, __s);
    v38 = 31;
    do
    {
      if (v38 == -1)
      {
        break;
      }

      v39 = ++md[v38--];
    }

    while ((v39 & 0x100) != 0);
  }

  if (!v16)
  {
LABEL_47:
    v11 = 0;
    v43 = v51;
    *a2 = *md;
    a2[1] = v43;
    *a4 = 32;
    goto LABEL_42;
  }

  v44 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 252, 40, v44, "%s", v45, v46, __s);
LABEL_41:
  v11 = 0xFFFFFFFFLL;
LABEL_42:
  v40 = *(a1 + 264);
  if ((v40 & 0x80000000) == 0)
  {
    close(v40);
  }

  unlink(a1 + 32);
  free(a1);
LABEL_45:
  v41 = *MEMORY[0x29EDCA608];
  return v11;
}

char **fileRequestOpenForReading(const char *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  bzero(v23, 0x400uLL);
  if (a3 != 32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 288, 40, 0, "invalid key size: %zu", v10, v11, a3);
    v13 = 0;
    goto LABEL_7;
  }

  pathFromKey(v23, a1, a2);
  v12 = calloc(1uLL, 0x498uLL);
  v13 = v12;
  if (!v12)
  {
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 295, 40, *v17, "malloc", v18, v19, v22);
    goto LABEL_7;
  }

  *v12 = a1;
  v14 = IFileStreamCreateWithFilename(v23, a4, a5);
  v13[146] = v14;
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 300, 40, 0, "creating file stream: %s", v15, v16, v23);
    IFileStreamDestroy(v13[146]);
LABEL_7:
    free(v13);
    v13 = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

unint64_t fileRequestRead(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestRead", 315, 40, 0, "Invalid request type", a7, a8, vars0);
    return -1;
  }

  else
  {
    v10 = *(a1 + 1168);

    return IFileStreamRead(v10, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t fileRequestPRead(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestPRead", 322, 40, 0, "Invalid request type", a7, a8, v32);
    return -1;
  }

  else
  {
    Pos = IFileStreamGetPos(*(a1 + 1168));
    IFileStreamSetPos(*(a1 + 1168), a4, v14, v15, v16, v17, v18, v19);
    v25 = IFileStreamRead(*(a1 + 1168), a2, a3, v20, v21, v22, v23, v24);
    IFileStreamSetPos(*(a1 + 1168), Pos, v26, v27, v28, v29, v30, v31);
    return v25;
  }
}

uint64_t fileRequestClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestClose", 334, 40, 0, "Invalid request type", a7, a8, v9);
      return 0xFFFFFFFFLL;
    }

    else
    {
      IFileStreamDestroy(*(result + 1168));
      free(v8);
      return 0;
    }
  }

  return result;
}

uint64_t fileSessionClone(const char *a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  bzero(v16, 0x400uLL);
  if (a4 != 32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionClone", 347, 40, 0, "invalid key size: %zu", v8, v9, a4);
    goto LABEL_5;
  }

  pathFromKey(v16, a1, a3);
  v10 = clonefile(v16, a2, 0);
  result = 0;
  if (v10 < 0)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionClone", 354, 40, v12, "cloning %s to %s", v13, v14, v16);
LABEL_5:
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pathFromKey(char *a1, const char *a2, unsigned __int8 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  serializeHexString(v7, 0x20u, a3);
  result = snprintf(a1, 0x400uLL, "%s/%c%c%c/%s", a2, SLOBYTE(v7[0]), SBYTE1(v7[0]), SBYTE2(v7[0]), v7);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

_OWORD *ParallelArchiveWriterCreate(_OWORD *a1)
{
  v2 = calloc(1uLL, 0x100040uLL);
  v3 = v2;
  if (v2)
  {
    v4 = a1[1];
    *v2 = *a1;
    v2[1] = v4;
    *(v2 + 7) = 0x100000;
    *(v2 + 8) = 0;
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriterCreate", 15, 22, *v5, "malloc", v6, v7, v9);
  }

  return v3;
}

_OWORD *ParallelArchiveWriterCreateLegacy(_OWORD *a1)
{
  result = ParallelArchiveWriterCreate(a1);
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

uint64_t ParallelArchiveWriterDestroy(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[5];
  free(a1);
  return v1;
}

uint64_t yaa_writeRawEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    v15 = *(a1 + 48);
    v8 = "truncated entry payload: %llu B missing";
    v9 = 46;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "yaa_writeRawEntryHeader", v9, 22, 0, v8, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  v13 = (*(a1 + 8))(*(a1 + 24));
  if (v13 < 0)
  {
    v8 = "writing header";
    v9 = 50;
    goto LABEL_3;
  }

  v14 = v13;
  result = 0;
  *(a1 + 40) += v14;
  *(a1 + 48) = a4;
  return result;
}

uint64_t ParallelArchiveWriteEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  if (*(a1 + 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 68, 22, 0, "truncated entry payload: %llu B missing", v13, v14, *(a1 + 48));
LABEL_20:
    v25 = -1;
    goto LABEL_21;
  }

  if (v8)
  {
    v15 = a3;
    v16 = v8;
    while (*v15 && v15[1] && v15[2] && !v15[3])
    {
      v15 += 1032;
      if (!--v16)
      {
        goto LABEL_10;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 76, 22, 0, "invalid extra field key: %s", v13, v14, v15);
    goto LABEL_20;
  }

LABEL_10:
  v17 = yaa_encodeHeader(a1 + 64, *(a1 + 56), a2, a3, v8, v12, v13, v14);
  if (v17 < 0)
  {
    v23 = "generating entry header";
    v24 = 81;
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", v24, 22, 0, v23, v18, v19, v29);
    goto LABEL_20;
  }

  if (*(a1 + 32))
  {
    *(a1 + 64) = 826360153;
  }

  v20 = (*(a1 + 8))(*(a1 + 24), a1 + 64, v17);
  if (v20 < 0)
  {
    v23 = "writing header";
    v24 = 88;
    goto LABEL_19;
  }

  *(a1 + 40) += v20;
  v21 = *a2;
  if ((*a2 & 0x200) != 0)
  {
    v22 = *(a2 + 64);
  }

  else
  {
    v22 = 0;
  }

  if ((v21 & 0x400) != 0)
  {
    v22 += *(a2 + 72);
    if ((v21 & 0x800) == 0)
    {
LABEL_27:
      if (!v8)
      {
        goto LABEL_35;
      }

LABEL_31:
      v27 = (a3 + 8);
      do
      {
        if (*(v27 - 1) == 2)
        {
          v22 += *v27;
        }

        v27 += 129;
        --v8;
      }

      while (v8);
      goto LABEL_35;
    }
  }

  else if ((v21 & 0x800) == 0)
  {
    goto LABEL_27;
  }

  v22 += *(a2 + 80);
  if (v8)
  {
    goto LABEL_31;
  }

LABEL_35:
  v25 = 0;
  *(a1 + 48) = v22;
LABEL_21:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v25;
  }

  else
  {
    return result;
  }
}

uint64_t ParallelArchiveWriteEntryData(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  if (*(a1 + 48) >= a3)
  {
    v14 = (*(a1 + 8))(*(a1 + 24), a2, a3);
    if ((v14 & 0x8000000000000000) == 0 && v14 == a3)
    {
      v17 = 0;
      v18 = *(a1 + 48) - a3;
      *(a1 + 40) += a3;
      *(a1 + 48) = v18;
      goto LABEL_10;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryData", 133, 22, 0, "writing data", v15, v16, v20);
  }

  else
  {
    v21 = *(a1 + 48);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryData", 129, 22, 0, "Payload too large: %zu B received / %llu B expected", v11, v12, a3);
  }

  v17 = -1;
LABEL_10:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v17;
  }

  else
  {
    return result;
  }
}

uint64_t BlobBufferStore(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((BlobBufferIncreaseCapacity(a1, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore", v9, v10, v12);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t BlobBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc", v8, v9, v10);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void BlobBufferFree(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

size_t PCompressLZ4Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZ4Decode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t BXDiffWithCache(unint64_t a1, const char **a2, uint64_t a3, const char *a4, _DWORD *a5, int a6, uint64_t a7, void *a8, void *a9, atomic_ullong *a10)
{
  v11 = a7;
  v15 = a1;
  v159[98] = *MEMORY[0x29EDCA608];
  v139 = *(a7 + 4);
  v142 = a1 - 1;
  memset(&v143, 0, sizeof(v143));
  bzero(v156, 0x360uLL);
  memset(v155, 0, sizeof(v155));
  v154 = 0u;
  memset(v153, 0, sizeof(v153));
  v151 = 0u;
  *v152 = 0u;
  v149 = 0u;
  *v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v146 = 0u;
  *a8 = 0;
  *a9 = 0;
  if (!v15)
  {
    v133 = v11;
    v134 = a2;
    v132 = a5;
    v138 = a4;
    v135 = a8;
    v131 = 0;
LABEL_12:
    v24 = 0;
    v25 = 0;
    v22 = -1;
    do
    {
      if (v15)
      {
        v26 = v22;
        v27 = 0;
        v28 = a3;
        v29 = 1;
        v30 = v15;
        while (1)
        {
          v31 = v29 - 1 < v25 || v30 == 1;
          if (v31 && !sha1cmp(a3 + 20 * v25, v28))
          {
            break;
          }

          v27 = v29 >= v15;
          v28 += 20;
          ++v29;
          if (!--v30)
          {
            v32 = 1;
            v22 = v25;
            goto LABEL_25;
          }
        }

        v32 = 0;
        v22 = v26;
LABEL_25:
        v33 = v27;
      }

      else
      {
        v33 = 1;
        v22 = v25;
        v32 = 1;
      }

      *&v156[96 * v25] = v32;
      v24 += v33;
      ++v25;
    }

    while (v25 != v142);
    v34 = 0;
    a2 = v134;
    a8 = v135;
    v11 = v133;
    goto LABEL_28;
  }

  st_size = 0;
  v17 = v15;
  v18 = a2;
  do
  {
    if (lstat(*v18, &v143) || (v143.st_mode & 0xF000) != 0x8000)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 59, 91, 0, "Invalid file: %s", v19, v20, *v18);
      v21 = 0;
      v22 = -1;
      v23 = 1;
      goto LABEL_59;
    }

    if (v143.st_size > st_size)
    {
      st_size = v143.st_size;
    }

    ++v18;
    --v17;
  }

  while (v17);
  v131 = st_size > 0xA00000;
  v138 = a4;
  v132 = a5;
  if (v142)
  {
    v133 = v11;
    v134 = a2;
    v135 = a8;
    goto LABEL_12;
  }

  v24 = 0;
  v22 = -1;
  v34 = 1;
LABEL_28:
  if (bxdiff5Alloc(v24, v11, &v146))
  {
    v37 = "bxdiff5Alloc";
    v38 = 79;
LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", v38, 91, 0, v37, v35, v36, v129);
LABEL_31:
    v23 = 1;
    goto LABEL_32;
  }

  v44 = a2;
  v144[0] = 0;
  v144[1] = 0;
  v145 = 0;
  if ((v34 & 1) == 0)
  {
    v45 = &v157;
    v47 = a3;
    v46 = v142;
    do
    {
      if (*(v45 - 1))
      {
        patchCacheKeyFromSHA1(v47, v45);
        sha1xor(v144, v47);
      }

      v47 += 20;
      v45 += 24;
      --v46;
    }

    while (v46);
  }

  patchCacheKeyFromSHA1(v144, v153 + 4);
  v48 = &v156[96 * v142];
  patchCacheKeyFromSHA1((a3 + 20 * v142), v48 | 4);
  if (v139 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%zu/%zu unique inputs: %s\n", v24, v142, v138);
  }

  if (v132)
  {
    v54 = &v156[96 * v22];
    v55 = 3;
    if (v24 == 1)
    {
      v55 = 0;
    }

    atomic_fetch_add(&a10[v55], 1uLL);
    if (v24 == 1)
    {
      v56 = (v54 | 4);
    }

    else
    {
      v56 = v153 + 4;
    }

    if (v24 != 1)
    {
      v54 = v153;
    }

    v57 = patchCacheLookup(v132, v56, v48 | 4, v54 + 48, a6, 0x11E1A300uLL, v52, v53);
    if (v57 < 0)
    {
      atomic_fetch_add(a10 + 8, 1uLL);
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 118, 91, "cache lookup failed (ignored): %s", v51, v52, v53, v138);
    }

    else if (v57)
    {
      if (v24 == 1)
      {
        atomic_fetch_add(a10 + 1, 1uLL);
        if (v139 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 patch from cache: %s\n", v138);
        }

        v23 = 0;
        goto LABEL_33;
      }

      atomic_fetch_add(a10 + 4, 1uLL);
      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Loaded combo patch from cache: %s\n");
      }

      goto LABEL_99;
    }

    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "No patch in cache: %s\n", v138);
    }
  }

  if (!*(v48 + 80))
  {
    v81 = v44[v142];
    if ((loadFileContents(v81, (v48 + 80), (v48 + 88), 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 150, 91, 0, "loadFileContents: %s", v52, v53, v81);
      goto LABEL_31;
    }

    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded output file: %s\n", v81);
    }
  }

  if (bxdiff5SetOut(&v146, *(v48 + 80), *(v48 + 88), v49, v50, v51, v52, v53))
  {
    v37 = "bxdiff5SetOut";
    v38 = 154;
    goto LABEL_30;
  }

  if (sha1cmp(&v149, a3 + 20 * v142))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 156, 91, 0, "SHA1 inconsistency (patching): %s", v82, v83, v44[v142]);
    goto LABEL_31;
  }

  v136 = a8;
  CompressedSize = ParallelCompressionGetCompressedSize(*(v48 + 80), *(v48 + 88), 1);
  v91 = 0;
  if ((v34 & 1) == 0)
  {
    v92 = 0;
    v93 = v159;
    do
    {
      if (*(v93 - 20))
      {
        v94 = v48;
        if (!*v93)
        {
          v95 = v44[v92];
          if ((loadFileContents(v95, v93, v93 + 1, 0) & 0x80000000) != 0)
          {
            v129 = v95;
            v98 = "loadFileContents: %s";
            v99 = 169;
            goto LABEL_161;
          }

          if (v139 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "Loaded input file %zu: %s\n", v92, v95);
          }
        }

        if (bxdiff5SetIn(&v146, v91, *v93, v93[1], v87, v88, v89, v90))
        {
          v98 = "bxdiff5SetIn";
          v99 = 173;
          goto LABEL_161;
        }

        if (sha1cmp(*(&v147 + 1) + 80 * v91 + 16, a3))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 175, 91, 0, "SHA1 inconsistency (patching): %s", v89, v90, v44[v92]);
LABEL_162:
          v23 = 1;
          a8 = v136;
          goto LABEL_32;
        }

        ++v91;
        v48 = v94;
      }

      ++v92;
      a3 += 20;
      v93 += 12;
    }

    while (v142 != v92);
  }

  if (v91 != v24)
  {
    v98 = "inconsistent N";
    v99 = 178;
LABEL_161:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", v99, 91, 0, v98, v89, v90, v129);
    goto LABEL_162;
  }

  a8 = v136;
  if (v139 >= 2)
  {
    bxdiff5Dump(&v146, *MEMORY[0x29EDCA610]);
  }

  if (v24 < 2)
  {
    if (bxdiff5CreateInControls(&v146, 0, v131, 0, v87, v88, v89, v90))
    {
      v37 = "bxdiff5CreateInControls";
      v38 = 294;
      goto LABEL_30;
    }

    if (bxdiff5CreateInPatch(&v146, 0))
    {
      v37 = "bxdiff5CreateInPatch";
      v38 = 295;
      goto LABEL_30;
    }

    v122 = &v156[96 * v22];
    v123 = *(&v147 + 1);
    v124 = *(*(&v147 + 1) + 64);
    *(v122 + 7) = *(*(&v147 + 1) + 72);
    *(v122 + 8) = CompressedSize;
    *(v122 + 9) = v124;
    *(v123 + 64) = 0;
    *(v123 + 72) = 0;
    atomic_fetch_add(a10 + 6, 1uLL);
    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Created 1:1 patch: %s\n", v138);
    }

    if (*(v122 + 13))
    {
      atomic_fetch_add(a10 + 2, 1uLL);
      if (v132 && patchCacheUpdate(v132, (v122 + 4), v48 | 4, (v122 + 48), v118, v119, v35, v36))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 311, 91, 0, "cache update failed (ignored): %s", v125, v126, v138);
      }

      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated 1:1 patch to cache: %s\n");
      }
    }

LABEL_99:
    v23 = 0;
    goto LABEL_32;
  }

  v141 = v22;
  v96 = 0;
  if (v34)
  {
    v97 = CompressedSize;
LABEL_154:
    if (v96 != v24)
    {
      v116 = "inconsistent N";
      v117 = 262;
      goto LABEL_186;
    }

    v22 = v141;
    if (bxdiff5CreateComboControls(&v146, v84, v85, v86, v87, v88, v89, v90))
    {
      v37 = "bxdiff5CreateComboControls";
      v38 = 265;
      goto LABEL_30;
    }

    if (bxdiff5CreateComboPatch(&v146, v111, v112, v113, v114, v115, v35, v36))
    {
      v37 = "bxdiff5CreateComboPatch";
      v38 = 266;
      goto LABEL_30;
    }

    atomic_fetch_add(a10 + 7, 1uLL);
    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Created combo patch: %s\n", v138);
    }

    *&v155[0] = v97;
    *(&v155[0] + 1) = v152[0];
    *(&v154 + 1) = v152[1];
    v152[0] = 0;
    v152[1] = 0;
    if (DWORD1(v154))
    {
      atomic_fetch_add(a10 + 5, 1uLL);
      if (v132 && patchCacheUpdate(v132, v153 + 4, v48 | 4, &v154, v120, v121, v35, v36))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 284, 91, 0, "cache update failed (ignored): %s", v127, v128, v138);
      }

      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated combo patch to cache: %s\n", v138);
      }

      v23 = 0;
      a8 = v136;
      goto LABEL_187;
    }

    goto LABEL_99;
  }

  v100 = 0;
  v101 = &v158;
  v97 = CompressedSize;
  while (1)
  {
    if (!*(v101 - 18))
    {
      goto LABEL_153;
    }

    atomic_fetch_add(a10, 1uLL);
    if (!v132)
    {
      goto LABEL_137;
    }

    v102 = patchCacheLookup(v132, v101 - 68, v48 | 4, (v101 - 3), a6, 0x11E1A300uLL, v89, v90);
    if (v102 < 0)
    {
      atomic_fetch_add(a10 + 8, 1uLL);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 199, 91, 0, "cache lookup failed (ignored): %s", v89, v90, v138);
LABEL_137:
      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "No 1:1 patch %zu in cache: %s\n", v100, v138);
      }

      goto LABEL_139;
    }

    if (!v102)
    {
      goto LABEL_137;
    }

    atomic_fetch_add(a10 + 1, 1uLL);
    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 patch %zu from cache: %s\n", v100, v138);
    }

    v85 = *v101;
    if (*v101)
    {
      break;
    }

LABEL_139:
    if (!*(*(&v147 + 1) + 80 * v96 + 40))
    {
      if (bxdiff5CreateInControls(&v146, v96, v131, 0, v87, v88, v89, v90))
      {
        v116 = "bxdiff5CreateInControls";
        v117 = 232;
        goto LABEL_186;
      }

      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Created 1:1 controls %zu: %s\n", v100, v138);
      }
    }

    if (*(v101 - 5))
    {
      if (bxdiff5CreateInPatch(&v146, v96))
      {
        v116 = "bxdiff5CreateInPatch";
        v117 = 239;
        goto LABEL_186;
      }

      atomic_fetch_add(a10 + 6, 1uLL);
      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Created 1:1 patch %zu: %s\n", v100, v138);
      }

      v108 = *(&v147 + 1) + 80 * v96;
      v109 = *(v108 + 64);
      v110 = *(v108 + 72);
      *(v101 - 1) = CompressedSize;
      *v101 = v109;
      *(v101 - 2) = v110;
      *(v108 + 64) = 0;
      *(v108 + 72) = 0;
      atomic_fetch_add(a10 + 2, 1uLL);
      if (v132 && patchCacheUpdate(v132, v101 - 68, v48 | 4, (v101 - 3), v87, v88, v89, v90))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 254, 91, 0, "cache update failed (ignored): %s", v89, v90, v138);
      }

      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated 1:1 patch %zu to cache: %s\n", v100, v138);
      }
    }

    ++v96;
LABEL_153:
    ++v100;
    v101 += 12;
    if (v142 == v100)
    {
      goto LABEL_154;
    }
  }

  if (bxdiff5SetInPatch(&v146, v96, v85, *(v101 - 2), v87, v88, v89, v90))
  {
    v116 = "bxdiff5SetInPatch";
    v117 = 213;
    goto LABEL_186;
  }

  if (!bxdiff5ReadInControlsFromInPatch(&v146, v96, v103, v104, v105, v106, v89, v90))
  {
    if (v139 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 controls from patch %zu: %s\n", v100, v138);
    }

    v107 = *(&v147 + 1) + 80 * v96;
    *(v107 + 64) = 0;
    *(v107 + 72) = 0;
    goto LABEL_139;
  }

  v116 = "bxdiff5ReadInControlsFromInPatch";
  v117 = 216;
LABEL_186:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", v117, 91, 0, v116, v89, v90, v129);
  v23 = 1;
LABEL_187:
  v22 = v141;
LABEL_32:
  if (v24)
  {
LABEL_33:
    v39 = 0;
    v40 = *(&v147 + 1);
    v41 = v24;
    do
    {
      v42 = v40 + v39;
      *v42 = 0;
      free(*(v42 + 40));
      v43 = *(&v147 + 1) + v39;
      *(v43 + 40) = 0;
      free(*(v43 + 64));
      v40 = *(&v147 + 1);
      *(*(&v147 + 1) + v39 + 64) = 0;
      v39 += 80;
      --v41;
    }

    while (v41);
    v21 = v24 == 1;
  }

  else
  {
    v21 = 0;
  }

  a4 = v138;
LABEL_59:
  *&v148 = 0;
  free(v150[1]);
  v150[1] = 0;
  free(v152[0]);
  v152[0] = 0;
  if (bxdiff5Free(&v146, v58, v59, v60, v61, v62, v63, v64))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 330, 91, 0, "bxdiff5Free", v65, v66, v129);
    goto LABEL_62;
  }

  if (v23)
  {
LABEL_62:
    unlink(a4);
    v67 = 0xFFFFFFFFLL;
    if (v15)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v71 = &v156[96 * v22];
    v72 = v71 + 48;
    if (!v21)
    {
      v71 = v153;
    }

    v73 = *(v71 + 9);
    if (v73)
    {
      v74 = (v72 + 8);
      if (!v21)
      {
        v74 = &v154 + 1;
      }

      v75 = a4;
      v78 = storeFileContents(a4, v73, *v74);
      if (v78)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 340, 91, 0, "writing patch to disk", v76, v77, v129);
      }

      if (v139 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Stored patch: %s\n", v75);
      }

      if (v78)
      {
        v67 = 0xFFFFFFFFLL;
      }

      else
      {
        v67 = 1;
      }
    }

    else
    {
      v67 = 0;
    }

    v79 = v72 + 8;
    if (!v21)
    {
      v79 = &v154 + 1;
    }

    *a8 = *v79;
    v80 = v72 + 16;
    if (!v21)
    {
      v80 = v155;
    }

    *a9 = *v80;
    if (v15)
    {
LABEL_63:
      v68 = v159;
      do
      {
        free(*v68);
        free(*(v68 - 1));
        v68 += 12;
        --v15;
      }

      while (v15);
    }
  }

  v69 = *MEMORY[0x29EDCA608];
  return v67;
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
    _os_log_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
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
    _os_log_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t pc_info(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  *__s = 0u;
  v16 = 0u;
  time(&v14);
  ctime_r(&v14, __s);
  v10 = strlen(__s);
  if (v10)
  {
    __s[v10 - 1] = 0;
  }

  v11 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "[%s] ", __s);
  result = vfprintf(*v11, a1, &a9);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *filePatchCacheOpen(const char *a1, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (strncmp(a1, "file:", 5uLL))
  {
    LOBYTE(v30) = a1;
    v6 = "invalid cache url: %s";
    v7 = 178;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", v7, 9, 0, v6, v4, v5, v30);
LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  bzero(__s, 0x400uLL);
  v11 = a1 + 5;
  if (!realpath_DARWIN_EXTSN(v11, __s))
  {
    LOBYTE(v30) = v11;
    v6 = "invalid cache directory: %s";
    v7 = 182;
    goto LABEL_3;
  }

  v12 = strlen(__s);
  if (v12 - 927 <= 0xFFFFFFFFFFFFFBFELL)
  {
    v30 = __s;
    v6 = "File patch cache dir name is too long: %s";
    v7 = 186;
    goto LABEL_3;
  }

  v13 = v12;
  memset(&v31, 0, sizeof(v31));
  if (stat(__s, &v31))
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", 188, 9, v14, "%s", v15, v16, __s);
    goto LABEL_4;
  }

  if ((v31.st_mode & 0xF000) != 0x4000)
  {
    v30 = __s;
    v6 = "File patch cache path is not a directory: %s";
    v7 = 189;
    goto LABEL_3;
  }

  v17 = malloc(0x418uLL);
  v8 = v17;
  if (v17)
  {
    bzero(v17, 0x418uLL);
    __memcpy_chk();
    do
    {
      v25 = v13;
      if (!v13)
      {
        break;
      }

      --v13;
    }

    while (v8[v25 + 3] == 47);
    v8[v25 + 4] = 0;
    *(v8 + 129) = v25;
    *(v8 + 260) = a2;
    if (a2 >= 1)
    {
      pc_info("Opening file patch cache in directory: %s\n", v18, v19, v20, v21, v22, v23, v24, v8 + 4);
    }
  }

  else
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", 193, 9, *v26, "malloc", v27, v28, v29);
  }

LABEL_5:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t filePatchCacheClose(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a1[260] >= 1)
  {
    pc_info("Closing file patch cache in directory: %s\n", a2, a3, a4, a5, a6, a7, a8, a1 + 4);
  }

  free(a1);
  return 0;
}

uint64_t filePatchCacheLookup(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, int a6, unint64_t a7)
{
  v56 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  *a5 = 0;
  bzero(&__to, 0x400uLL);
  v14 = *(a1 + 1032);
  __memcpy_chk();
  v15 = &__to + v14;
  v16 = *(a3 + 16);
  *(v15 + 5) = *a3;
  *(v15 + 21) = v16;
  v17 = *(a2 + 16);
  *(v15 + 46) = *a2;
  *v15 = 47;
  *(v15 + 1) = *a3;
  v15[3] = *(a3 + 2);
  v15[4] = 47;
  *(v15 + 37) = *(a3 + 32);
  v15[45] = 47;
  *(v15 + 62) = v17;
  v18 = v14 + 86;
  *(v15 + 78) = *(a2 + 32);
  __to.__pn_.__r_.__value_.__s.__data_[v18] = 0;
  FileContents = loadFileContentsEx(&__to, a4, a5);
  if (FileContents < 0)
  {
    goto LABEL_28;
  }

  if (!a6)
  {
    v32 = *a4;
    if (*a4 && *v32 == 0x5F44414F4C594150)
    {
LABEL_21:
      v33 = 1;
    }

    else
    {
      free(v32);
      v33 = 0;
      *a4 = 0;
      *a5 = 0;
    }

    goto LABEL_29;
  }

  if (!FileContents)
  {
    makePath(&__to, v18);
  }

  v20 = 0;
  v21 = 10000000;
  while (1)
  {
    v22 = *a4;
    if (!*a4)
    {
      break;
    }

    if (*v22 == 0x5F44414F4C594150)
    {
      goto LABEL_21;
    }

    if (*v22 != 0x5F474E49444E4550)
    {
      break;
    }

    v23 = time(0);
    v24 = v22[1];
    free(*a4);
    *a4 = 0;
    *a5 = 0;
    if (v20 >= a7 || 1000000 * (v23 - v24) >= a7)
    {
      if (*(a1 + 1040) < 1)
      {
        v22 = 0;
      }

      else
      {
        pc_info("Cache miss after PENDING timeout: %s\n", v25, v26, v27, v28, v29, v30, v31, &__to);
        v22 = *a4;
      }

      break;
    }

    if (*(a1 + 1040) >= 1 && v20 >= v21)
    {
      pc_info("Waiting for PENDING patch (%llu s): %s\n", v25, v26, v27, v28, v29, v30, v31, v20 / 0xF4240);
      v21 *= 2;
    }

    v20 += 500000;
    usleep(0x7A120u);
    if ((loadFileContentsEx(&__to, a4, a5) & 0x80000000) != 0)
    {
      goto LABEL_28;
    }
  }

  free(v22);
  *a4 = 0;
  *a5 = 0;
  bzero(&__from, 0x400uLL);
  __buf[0] = 0x5F474E49444E4550;
  __buf[1] = time(0);
  v34 = openEntryTemp(a1, a2, a3, &__from);
  if (v34 < 0)
  {
LABEL_28:
    v33 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v35 = v34;
  v36 = write(v34, __buf, 0x10uLL);
  close(v35);
  if (v36 == 16)
  {
    rename(&__from, &__to, v37);
    if (!v41 || (pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 151, 9, "Moving %s to %s (1st attempt)", v38, v39, v40, &__from), rename(&__from, &__to, v42), !v46))
    {
      v33 = 0;
      goto LABEL_29;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 153, 9, "Moving %s to %s (2nd attempt)", v43, v44, v45, &__from);
    v33 = 0;
  }

  else
  {
    v49 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheLookup", 331, 9, *v49, "writing PENDING in cache entry failed", v50, v51, v52);
    v33 = 0xFFFFFFFFLL;
  }

  unlink(&__from);
LABEL_29:
  v47 = *MEMORY[0x29EDCA608];
  return v33;
}

uint64_t loadFileContentsEx(const char *a1, void *a2, unint64_t *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(&v21, 0, sizeof(v21));
  v5 = open(a1, 0);
  if (v5 < 0)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  if (fstat(v5, &v21) || (st_size = v21.st_size, v21.st_size < 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = malloc(v21.st_size);
    if (!v8)
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "loadFileContentsEx", 51, 9, *v14, "malloc", v15, v16, v20.tv_sec);
      v9 = 0xFFFFFFFFLL;
      goto LABEL_6;
    }

    v12 = 0;
    while (st_size > v12)
    {
      v13 = read(v6, &v8[v12], st_size - v12);
      v12 += v13;
      if (v13 <= 0)
      {
        goto LABEL_5;
      }
    }

    v20 = 0;
    if (!gettimeofday(&v20, 0))
    {
      v22 = v20;
      v23 = v20;
      futimes(v6, &v22);
      close(v6);
      v9 = 1;
      goto LABEL_9;
    }

    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "loadFileContentsEx", 66, 9, *v17, "gettimeofday", v18, v19, v20.tv_sec);
  }

LABEL_5:
  v9 = 0;
LABEL_6:
  close(v6);
LABEL_8:
  free(v8);
  v8 = 0;
  st_size = 0;
LABEL_9:
  *a2 = v8;
  *a3 = st_size;
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t openEntryTemp(uint64_t a1, __int128 *a2, __int16 *a3, char *__dst)
{
  memcpy(__dst, (a1 + 4), *(a1 + 1032));
  v8 = *(a1 + 1032);
  v9 = &__dst[v8];
  *v9 = 47;
  v10 = *a3;
  v9[3] = *(a3 + 2);
  *(v9 + 1) = v10;
  v9[4] = 47;
  v11 = *(a3 + 4);
  v12 = *(a3 + 1);
  *(v9 + 5) = *a3;
  *(v9 + 21) = v12;
  *(v9 + 37) = v11;
  v9[45] = 47;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a2 + 4);
  v9[86] = 0;
  v16 = &__dst[v8 + 86];
  *(v16 - 1) = v15;
  *(v16 - 40) = v14;
  *(v16 - 24) = v13;
  LODWORD(a3) = getpid();
  LODWORD(a3) = a3 + time(0);
  v17 = 0;
  v18 = a3 + pthread_self();
  v19 = 250000;
  while (1)
  {
    v18 = 1103515245 * v18 + 12345;
    snprintf(v16, 938 - v8, ".%08x", v18);
    result = open(__dst, 2561, 384);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 17)
    {
      if (v17 == 10)
      {
        v22 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "openEntryTemp", 129, 9, *v22, "Retry limit reached: %s", v23, v24, __dst);
        return 0xFFFFFFFFLL;
      }

      usleep(v19);
      v19 *= 2;
      ++v17;
      v21 = strlen(__dst);
      statPath(__dst, v21);
    }
  }

  return result;
}

uint64_t filePatchCacheUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  bzero(&__to, 0x400uLL);
  bzero(&__from, 0x400uLL);
  v10 = *(a1 + 1032);
  __memcpy_chk();
  v11 = &__to + v10;
  v12 = *(a3 + 16);
  *(v11 + 5) = *a3;
  *(v11 + 21) = v12;
  v13 = *(a2 + 16);
  *(v11 + 46) = *a2;
  *v11 = 47;
  *(v11 + 1) = *a3;
  v11[3] = *(a3 + 2);
  v11[4] = 47;
  *(v11 + 37) = *(a3 + 32);
  v11[45] = 47;
  *(v11 + 62) = v13;
  *(v11 + 78) = *(a2 + 32);
  v11[86] = 0;
  v14 = openEntryTemp(a1, a2, a3, &__from);
  if (v14 < 0)
  {
    v30 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = v14;
    if (a5)
    {
      v16 = 0;
      while (1)
      {
        v17 = write(v15, (a4 + v16), a5 - v16);
        if (v17 < 0)
        {
          v31 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheUpdate", 369, 9, v31, "%s", v32, v33, &__from);
          goto LABEL_14;
        }

        if (!v17)
        {
          break;
        }

        v16 += v17;
        if (v16 >= a5)
        {
          goto LABEL_7;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheUpdate", 370, 9, 0, "write error: %s", v18, v19, &__from);
LABEL_14:
      close(v15);
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_7:
      close(v15);
      rename(&__from, &__to, v20);
      if (v24)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 151, 9, "Moving %s to %s (1st attempt)", v21, v22, v23, &__from);
        rename(&__from, &__to, v25);
        if (v29)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 153, 9, "Moving %s to %s (2nd attempt)", v26, v27, v28, &__from);
          unlink(&__from);
        }
      }

      v30 = 0;
    }

    unlink(&__from);
  }

  v34 = *MEMORY[0x29EDCA608];
  return v30;
}

AAByteStream_impl *aaForkOutputStreamOpen(uint64_t a1, void *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0x20050uLL);
  v8 = v5;
  if (!v4 || !v5)
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 408;
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", v18, 136, v16, v17, v6, v7, v40);
    goto LABEL_14;
  }

  if (!*(a1 + 40) || !*(a1 + 32))
  {
    v17 = "stream not compatible\n";
    v18 = 409;
    v16 = 0;
    goto LABEL_13;
  }

  AACustomByteStreamSetData(v4, v5);
  AACustomByteStreamSetWriteProc(v4, ForkOutputStreamWrite);
  AACustomByteStreamSetPWriteProc(v4, ForkOutputStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, ForkOutputStreamCancel);
  AACustomByteStreamSetCloseProc(v4, ForkOutputStreamClose);
  *(v8 + 16385) = a1;
  *(v8 + 16386) = a2;
  if (a2[258])
  {
    v9 = a2[270] + 1;
  }

  else
  {
    v9 = a2[270];
  }

  *(v8 + 16390) = v9;
  if (is_mul_ok(v9, 0x30uLL) && 48 * v9 < 0x2000000001)
  {
    v15 = calloc(v9, 0x30uLL);
  }

  else
  {
    v12 = __error();
    v15 = 0;
    *v12 = 12;
  }

  *(v8 + 16389) = v15;
  *(v8 + 131128) = 0u;
  *(v8 + 32786) = 0;
  if (!v15)
  {
    v16 = *__error();
    v17 = "aaCalloc";
    v18 = 426;
    goto LABEL_13;
  }

  v27 = 0;
  v28 = 0;
  v29 = a2[270];
  v30 = a2[258];
  v31 = 1;
  v32 = v15;
  while (1)
  {
    if (v29)
    {
      v33 = a2[268];
      for (i = v29; i; --i)
      {
        v35 = v33[13];
        if (v28)
        {
          if ((v35 & 2) != 0)
          {
            v32[1] = v27;
            v32[2] = 0;
            v36 = v33[4];
            v37 = 3;
            v38 = v36;
LABEL_26:
            v32[v37] = v36;
            v32[5] = v33[5];
            v27 += v38;
            *(v8 + 16392) = v27;
            v32 += 6;
          }
        }

        else if (v35)
        {
          *v32 = v33;
          v32[1] = v27;
          v39 = v33[10];
          v38 = v33[11];
          v32[2] = 0;
          v32[3] = v38;
          v36 = *v39;
          v37 = 4;
          goto LABEL_26;
        }

        v33 = (v33 + 129);
      }
    }

    if ((v31 & 1) == 0)
    {
      break;
    }

    v31 = 0;
    v28 = 1;
    v13 = v27;
    v14 = v27;
    if (v30)
    {
      v31 = 0;
      v32[1] = v27;
      v32[2] = 0;
      v13 = v30 + v27;
      v32[3] = v30;
      v32[5] = 0;
      v32 += 6;
      v14 = v27;
      v27 = v13;
      *(v8 + 16392) = v13;
    }
  }

  a2[257] = v14;
  a2[259] = v13;
  if (v32 == &v15[6 * *(v8 + 16390)])
  {
    a2[260] = v27;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 480, 136, 0, "bad variant", v10, v11, v40);
    a2[260] = *(v8 + 16392);
LABEL_14:
    free(v4);
    ForkOutputStreamClose(v8, v19, v20, v21, v22, v23, v24, v25);
    return 0;
  }

  return v4;
}

uint64_t ForkOutputStreamWrite(uint8_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 131080);
  if (*(a1 + 32786))
  {
    v9 = "bad write mode";
    v10 = 201;
    goto LABEL_3;
  }

  v11 = a3;
  if (!a3)
  {
    return v11;
  }

  v13 = a2;
  v14 = 0;
  dst_buffer = a1 + 65537;
  v144 = a1 + 131080;
  src_buffer = a1;
  while (1)
  {
    v15 = v8[6];
    if (v15 == v8[5])
    {
      v9 = "segment out of range";
      v10 = 205;
      goto LABEL_3;
    }

    v16 = &v8[4][6 * v15];
    v17 = v11 - v14;
    v18 = v16[2];
    if (v11 - v14 >= 0x10000 - v18)
    {
      v17 = 0x10000 - v18;
    }

    if (v16[3] - v18 >= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16[3] - v18;
    }

    memcpy(&a1[v18], (v13 + v14), v19);
    v20 = v16[3];
    v21 = v19 + v16[2];
    v147 = v16;
    v16[2] = v21;
    if (v21 == v20)
    {
      v8[6] = (v8[6] + 1);
    }

    v22 = v21;
    if (v21)
    {
      if (v21 < v20)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v22 = 0x10000;
    }

    v23 = *v16;
    if (!*v147)
    {
      v29 = v19;
      v30 = *v8;
      if ((*v8)[5])
      {
        v31 = 0;
        v32 = v21 - v22 + v147[5];
        v33 = src_buffer;
        v34 = v22;
        while (1)
        {
          v35 = (v30[5])(*v30, v33, v34, v32);
          if (v35 < 1)
          {
            break;
          }

          v33 += v35;
          v31 += v35;
          v32 += v35;
          v34 -= v35;
          if (!v34)
          {
            goto LABEL_85;
          }
        }

        v31 = v35;
      }

      else
      {
        v31 = -1;
      }

LABEL_85:
      v8 = v144;
      v19 = v29;
      if (v22 != v31)
      {
        v9 = "aaByteStreamPWriteExpected";
        v10 = 233;
        goto LABEL_3;
      }

      goto LABEL_137;
    }

    v24 = *(v23 + 56);
    v140 = v14;
    v141 = v19;
    if (v8[3] < v24)
    {
      v8[3] = v24;
      if (24 * v24 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v25 = v8;
        v26 = v8[2];
        v27 = realloc(v26, 24 * v24);
        if (v27)
        {
          v25[2] = v27;
          v28 = v147;
          v21 = v147[2];
          v8 = v25;
          goto LABEL_30;
        }

        free(v26);
        v8 = v25;
      }

      v8[2] = 0;
      v9 = "aaReallocf";
      v10 = 243;
      goto LABEL_3;
    }

    v27 = v8[2];
    v28 = v147;
LABEL_30:
    v36 = (v21 - 1) >> 16;
    v37 = *(v23 + 80) + 12 * v36;
    v145 = v36;
    v38 = &v27[24 * v36];
    v39 = compression_encode_buffer(dst_buffer, 0x10000uLL, src_buffer, v22, 0, LODWORD(v8[1][*(v23 + 128)]));
    if (v39 - 1 >= v22)
    {
      v40 = v22 + 1;
    }

    else
    {
      v40 = v39;
    }

    *(v38 + 1) = v40;
    *(v38 + 2) = v40;
    v41 = v28[4];
    v42 = *v37 + *(v37 + 8);
    v43 = v40;
    if (v41 + v40 < v42)
    {
      v43 = v42 - v41;
      *(v38 + 2) = v42 - v41;
    }

    if (v43 == v22 + 1)
    {
      *(v38 + 1) = v22 + 1;
      *dst_buffer = BYTE4(v8[1][*(v23 + 128)]);
      memcpy(src_buffer + 65538, src_buffer, v22);
      v40 = *(v38 + 1);
      v43 = *(v38 + 2);
    }

    bzero(&dst_buffer[v40], v43 - v40);
    v44 = *(v38 + 2);
    v45 = v28[4];
    v46 = *(v23 + 96) - v45;
    v47 = v44 - v46;
    if (v44 > v46)
    {
      break;
    }

LABEL_76:
    *v38 = v45;
    v76 = *(v38 + 2);
    v77 = *v8;
    if ((*v8)[5])
    {
      if (!v76)
      {
        goto LABEL_90;
      }

      v78 = 0;
      v79 = v28[5] + v45;
      v80 = dst_buffer;
      v81 = *(v38 + 2);
      while (1)
      {
        v82 = (v77[5])(*v77, v80, v81, v79);
        if (v82 < 1)
        {
          break;
        }

        v80 += v82;
        v78 += v82;
        v79 += v82;
        v81 -= v82;
        if (!v81)
        {
          goto LABEL_88;
        }
      }

      v78 = v82;
    }

    else
    {
      v78 = -1;
    }

LABEL_88:
    v83 = v76 == v78;
    v8 = v144;
    v13 = a2;
    if (!v83)
    {
      v9 = "aaByteStreamPWriteExpected";
      v10 = 290;
      goto LABEL_3;
    }

LABEL_90:
    v84 = v28[3];
    v28[4] += v76;
    v11 = a3;
    v14 = v140;
    v19 = v141;
    if (v28[2] == v84)
    {
      v85 = *v147;
      v86 = *(*v147 + 104);
      v87 = *(*v147 + 56);
      v88 = 2 * v87;
      if ((v86 & 4) == 0)
      {
        v88 = v87 + 1;
      }

      v89 = 4 * v88;
      if ((4 * v88) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_148:
        v132 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 81, 136, *v132, "aaMalloc", v133, v134, v135);
        v93 = 0;
        goto LABEL_154;
      }

      v90 = malloc(v89);
      if (!v90)
      {
        goto LABEL_148;
      }

      v93 = v90;
      if ((v86 & 4) != 0)
      {
        if (v85[8] && (v104 = v85[9]) != 0)
        {
          v105 = *v8;
          if ((*v8)[5])
          {
            v106 = 0;
            v107 = v147[5] + v85[12] - 50;
            v108 = 50;
            while (1)
            {
              v109 = (v105[5])(*v105, v104, v108, v107);
              if (v109 < 1)
              {
                break;
              }

              v104 += v109;
              v106 += v109;
              v107 += v109;
              v108 -= v109;
              if (!v108)
              {
                if (v106 != 50)
                {
                  break;
                }

                v110 = *v144;
                if (*(*v144 + 40))
                {
                  v111 = 0;
                  v112 = v85[8];
                  v113 = v147[5];
                  v114 = 264;
                  while (1)
                  {
                    v115 = (v110[5])(*v110, v112, v114, v113);
                    if (v115 < 1)
                    {
                      break;
                    }

                    v112 += v115;
                    v111 += v115;
                    v113 += v115;
                    v114 -= v115;
                    if (!v114)
                    {
                      if (v111 != 264)
                      {
                        break;
                      }

                      v116 = v85[7];
                      v8 = v144;
                      if (v116)
                      {
                        v117 = v93 + 1;
                        v118 = (v144[2] + 16);
                        do
                        {
                          v119 = *(v118 - 4) - 260;
                          v120 = *v118;
                          v118 += 3;
                          *(v117 - 1) = v119;
                          *v117 = v120;
                          v117 += 2;
                          --v116;
                        }

                        while (v116);
                      }

                      v98 = v147[5] + 264;
                      goto LABEL_100;
                    }
                  }
                }

                v130 = "aaByteStreamPWriteExpected";
                v131 = 97;
                goto LABEL_153;
              }
            }
          }

          v130 = "aaByteStreamPWriteExpected";
          v131 = 92;
        }

        else
        {
          v130 = "Fork missing header/footer";
          v131 = 87;
        }

LABEL_153:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", v131, 136, 0, v130, v91, v92, v135);
LABEL_154:
        free(v93);
        v9 = "fork_write_index";
        v10 = 297;
        goto LABEL_3;
      }

      if (v87)
      {
        v94 = v90 + 1;
        v95 = (v8[2] + 2);
        do
        {
          v96 = *(v95 - 4);
          v97 = *v95;
          v95 += 6;
          *(v94 - 1) = v96;
          *v94++ = v97 + v96;
          --v87;
        }

        while (v87);
      }

      v98 = v147[5];
LABEL_100:
      v11 = a3;
      v99 = *v8;
      if (!(*v8)[5])
      {
        goto LABEL_150;
      }

      if (v89)
      {
        v100 = 0;
        v101 = v93;
        v102 = v89;
        while (1)
        {
          v103 = (v99[5])(*v99, v101, v102, v98);
          if (v103 < 1)
          {
            break;
          }

          v101 = (v101 + v103);
          v100 += v103;
          v98 += v103;
          v102 -= v103;
          if (!v102)
          {
            goto LABEL_123;
          }
        }

        v100 = v103;
LABEL_123:
        v83 = v89 == v100;
        v11 = a3;
        v8 = v144;
        if (!v83)
        {
LABEL_150:
          v130 = "aaByteStreamPWriteExpected";
          v131 = 120;
          goto LABEL_153;
        }
      }

      v121 = v85[4];
      v122 = v85[12];
      v123 = v121 - v122;
      if (v121 != v122)
      {
        if (v123 >= 0x10000)
        {
          v135 = v121 - v122;
          v130 = "Too much fork padding: %zu";
          v131 = 126;
          goto LABEL_153;
        }

        bzero(dst_buffer, v121 - v122);
        v124 = *v8;
        if (!(*v8)[5])
        {
          goto LABEL_151;
        }

        if (v123)
        {
          v125 = 0;
          v126 = v147[5] + v85[12];
          v127 = dst_buffer;
          v128 = v123;
          while (1)
          {
            v129 = (v124[5])(*v124, v127, v128, v126);
            if (v129 < 1)
            {
              break;
            }

            v127 += v129;
            v125 += v129;
            v126 += v129;
            v128 -= v129;
            if (!v128)
            {
              goto LABEL_134;
            }
          }

          v125 = v129;
LABEL_134:
          v83 = v123 == v125;
          v11 = a3;
          v8 = v144;
          if (!v83)
          {
LABEL_151:
            v130 = "aaByteStreamPWriteExpected";
            v131 = 129;
            goto LABEL_153;
          }
        }
      }

      free(v93);
      v19 = v141;
    }

LABEL_137:
    v14 += v19;
    a1 = src_buffer;
    if (v14 >= v11)
    {
      return v11;
    }
  }

  v48 = v145;
  v49 = src_buffer;
  v136 = v38;
  do
  {
    if (!v48)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 145, 136, 0, "realignment failed", a7, a8, v135);
      goto LABEL_142;
    }

    v50 = &v8[2][3 * v48 - 3];
    v51 = v50[1];
    v52 = v50[2];
    v53 = v52 - v51;
    v54 = v47 - (v52 - v51);
    if (v47 > v52 - v51)
    {
      v50[2] = v51;
      --v48;
      goto LABEL_73;
    }

    v50[2] = v52 - v47;
    v45 = *v50 + v52 - v47;
    v28[4] = v45;
    if (v48 >= v145)
    {
      goto LABEL_76;
    }

    v137 = v52 - v51;
    v138 = v47;
    while (1)
    {
      v55 = &v8[2][3 * v48];
      v56 = v28[5];
      v57 = v55[1];
      v58 = *v55 + v56;
      v59 = *v8;
      if ((*v8)[11])
      {
        v60 = v55[1];
        v61 = *v55 + v56;
        if (v57 != aaByteStreamSimulate(*v8))
        {
          v73 = 176;
          v74 = "aaByteStreamSimulate";
          goto LABEL_72;
        }

        goto LABEL_59;
      }

      if (v59[4])
      {
        if (!v57)
        {
          if (!v59[5])
          {
            goto LABEL_70;
          }

          goto LABEL_68;
        }

        v62 = 0;
        v63 = v49;
        v64 = v55[1];
        while (1)
        {
          v65 = (v59[4])(*v59, v63, v64, v58);
          if (v65 < 0)
          {
            break;
          }

          if (v65)
          {
            v63 += v65;
            v62 += v65;
            v58 += v65;
            v64 -= v65;
            if (v64)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v62 = v65;
      }

      else
      {
        v62 = -1;
      }

LABEL_58:
      v8 = v144;
      v49 = src_buffer;
      if (v57 != v62)
      {
        break;
      }

LABEL_59:
      v66 = *v8;
      if ((*v8)[5])
      {
        if (!v57)
        {
          goto LABEL_68;
        }

        v67 = 0;
        v68 = v56 + v45;
        v69 = v49;
        v70 = v57;
        while (1)
        {
          v71 = (v66[5])(*v66, v69, v70, v68);
          if (v71 < 1)
          {
            break;
          }

          v69 += v71;
          v67 += v71;
          v68 += v71;
          v70 -= v71;
          if (!v70)
          {
            goto LABEL_67;
          }
        }

        v67 = v71;
      }

      else
      {
        v67 = -1;
      }

LABEL_67:
      v8 = v144;
      v49 = src_buffer;
      if (v57 != v67)
      {
LABEL_70:
        v73 = 183;
        v74 = "aaByteStreamPWriteExpected";
        goto LABEL_72;
      }

LABEL_68:
      v28 = v147;
      v72 = v147[4];
      *v55 = v72;
      v45 = v72 + v57;
      v147[4] = v72 + v57;
      if (++v48 == v145)
      {
        goto LABEL_75;
      }
    }

    v73 = 179;
    v74 = "aaByteStreamPReadExpected";
LABEL_72:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", v73, 136, 0, v74, a7, a8, v135);
    LODWORD(v44) = -1;
    v53 = v137;
    v47 = v138;
    v54 = v138;
    v13 = a2;
    v28 = v147;
    v38 = v136;
LABEL_73:
    v75 = v47 > v53;
    v47 = v54;
  }

  while (v75);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_75:
    v45 = v28[4];
    v13 = a2;
    v38 = v136;
    goto LABEL_76;
  }

LABEL_142:
  v9 = "realign_fork";
  v10 = 282;
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", v10, 136, 0, v9, a7, a8, v135);
  return -1;
}