uint64_t sub_1818FD8C0(const char *a1, const char *a2, int a3)
{
  v8 = 0;
  ppDb = 0;
  v5 = sqlite3_open_v2(a1, &ppDb, a3 | 1, 0);
  if (!v5)
  {
    sqlite3_busy_timeout(ppDb, 60000);
    sqlite3_extended_result_codes(ppDb, 1);
    sqlite3_db_config(ppDb, 1006, 1, 0);
    v5 = sqlite3_open_v2(a2, &v8, a3 | 6, 0);
    if (!v5)
    {
      sqlite3_busy_timeout(v8, 60000);
      sqlite3_extended_result_codes(v8, 1);
      v5 = sqlite3_file_control(v8, 0, 102, ppDb);
    }
  }

  v6 = v5;
  if (ppDb)
  {
    sqlite3_close_v2(ppDb);
  }

  if (v8)
  {
    sqlite3_close(v8);
  }

  return v6;
}

uint64_t _sqlite3_apple_unarchive(const char *a1, const char *a2, int a3, uint64_t a4, void *a5, char **a6)
{
  v125[1] = *MEMORY[0x1E69E9840];
  if (qword_1EA831850 != -1)
  {
    sub_181A1E948();
  }

  v115 = -1;
  result = _sqlite3_apple_archive_type(a1, &v115, a6);
  if (!result)
  {
    v12 = v115;
    if ((v115 - 6) <= 0xFFFFFFFC)
    {
      if (a6)
      {
        *a6 = sqlite3_mprintf("Source file '%s' is not an SQLite database file or backup archive, or is encrypted.  Type is %d", a1, v115);
      }

      return 0xFFFFFFFFLL;
    }

    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x10040436913F5uLL);
    if (v12 == 3)
    {
      v24 = sub_1818FD8C0(a1, a2, a3);
      *v13 = strdup(a2);
      memset(&v114, 0, sizeof(v114));
      v25 = sqlite3_mprintf("%s-wal", a2);
      if (stat(v25, &v114) || v114.st_size < 1)
      {
        free(v25);
        v26 = 1;
      }

      else
      {
        *v13 = v25;
        v26 = 2;
      }

      memset(&v114, 0, sizeof(v114));
      v34 = sqlite3_mprintf("%s-journal", a2);
      if (stat(v34, &v114) || v114.st_size < 1)
      {
        free(v34);
        if (!v24)
        {
LABEL_123:
          v35 = v26;
          v89 = strlen(*v13);
          if (v26 == 1)
          {
            v90 = v89 + 9;
          }

          else
          {
            v90 = v89 + strlen(v13[1]) + 18;
            if (v26 != 2)
            {
              v90 += strlen(v13[2]) + 9;
            }
          }

          v91 = v90 + 8;
          v92 = sub_18190275C(v91, 1637935872);
          bzero(v92, v91);
          v93 = &v92[v26 + 1];
          v94 = strlen(*v13);
          *v92 = v93;
          strcpy(v93, *v13);
          if (v35 != 1)
          {
            v95 = &v93[v94 + 1];
            v96 = strlen(v13[1]);
            v92[1] = v95;
            strcpy(v95, v13[1]);
            if (v35 != 2)
            {
              v97 = &v95[v96 + 1];
              v92[2] = v97;
              strcpy(v97, v13[2]);
            }
          }

          v24 = 0;
          if (a5)
          {
            *a5 = v92;
          }

          goto LABEL_132;
        }
      }

      else
      {
        ++v26;
        *v13 = v34;
        if (!v24)
        {
          goto LABEL_123;
        }
      }

      v35 = v26;
LABEL_132:
      free(*v13);
      if (v35 != 1)
      {
        free(v13[1]);
        if (v35 != 2)
        {
          free(v13[2]);
        }
      }

      free(v13);
      return v24;
    }

    if (v12 == 5)
    {
      memset(&v121, 0, sizeof(v121));
      if (stat(a1, &v121) == -1)
      {
        v14 = *MEMORY[0x1E69E9848];
        v15 = __error();
        fprintf(v14, "stat failed for %d\n", *v15);
      }

      v16 = open(a2, 1538, v121.st_mode | 0x80u);
      v17 = open(a1, 0, 0);
      if (v17 < 0)
      {
        v36 = *MEMORY[0x1E69E9848];
        v37 = __error();
        fprintf(v36, "open destination failed for %d\n", *v37);
        close(v16);
      }

      else
      {
        v18 = v17;
        v112 = v16;
        v100 = a3;
        v110 = malloc_type_valloc(0x100000uLL, 0x5283C95BuLL);
        v119 = 0u;
        v120 = 0u;
        block = 0u;
        sub_1818FBD10(v18, &block);
        v19 = DWORD2(v119);
        v20 = v120;
        v105 = v13;
        filename = a2;
        v108 = v18;
        if (v120)
        {
          v103 = malloc_type_calloc(1uLL, v120 + 1, 0xD748505FuLL);
          v21 = v16;
          if (read(v18, v103, v20))
          {
            v124 = 0;
            v122 = 0u;
            v123 = 0u;
            v22 = off_1EA831858(&v122, 1, v19);
            if (v22)
            {
              fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v22);
              v23 = 0;
            }

            else
            {
              v101 = v19;
              v53 = a5;
              v54 = malloc_type_valloc(0x80000uLL, 0xE2DD9FF2uLL);
              v55 = 0;
              v56 = 0;
              *&v123 = v103;
              *(&v123 + 1) = v20;
              v57 = MEMORY[0x1E69E9848];
              do
              {
                *&v122 = v54;
                *(&v122 + 1) = 0x80000;
                v59 = off_1EA831860(&v122, 1);
                if (v59 >= 2)
                {
                  fprintf(*v57, "compression_stream_process bravo failed for %d\n", v59);
                }

                v60 = 0x80000 - *(&v122 + 1);
                if (0x80000 - *(&v122 + 1) >= 1)
                {
                  if (v56)
                  {
                    v58 = malloc_type_realloc(v56, v60 + v55, 0x10A68D3DuLL);
                  }

                  else
                  {
                    v58 = malloc_type_malloc(v60 + v55, 0x51D16FA2uLL);
                  }

                  v56 = v58;
                  memcpy(&v58[v55], v54, v60);
                  v55 += v60;
                }
              }

              while (!v59);
              off_1EA831868(&v122);
              v23 = malloc_type_realloc(v56, v55 + 1, 0x42AB5EC5uLL);
              v23[v55] = 0;
              a5 = v53;
              v21 = v112;
              v18 = v108;
              v19 = v101;
            }
          }

          else
          {
            v23 = 0;
          }

          free(v103);
        }

        else
        {
          v23 = 0;
          v21 = v112;
        }

        v61 = malloc_type_valloc(0x100000uLL, 0x35F543BFuLL);
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        v62 = off_1EA831858(&v122, 1, v19);
        if (v62)
        {
          fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v62);
        }

        v102 = v23;
        v104 = a5;
        v63 = v18;
        v64 = v110;
        v65 = read(v63, v110, 0x100000uLL);
        if (v65 >= 1)
        {
          v66 = MEMORY[0x1E69E9848];
          do
          {
            *&v123 = v64;
            *(&v123 + 1) = v65;
            do
            {
              *&v122 = v61;
              *(&v122 + 1) = 0x100000;
              v68 = off_1EA831860(&v122, 0);
              if (v68 >= 2)
              {
                fprintf(*v66, "compression_stream_process alpha failed for %d\n", v68);
              }

              if (*(&v122 + 1) != 0x100000)
              {
                v69 = 0x100000 - *(&v122 + 1);
                v70 = write(v21, v61, 0x100000 - *(&v122 + 1));
                if (v70 != v69)
                {
                  v71 = v70;
                  v72 = *v66;
                  v98 = *__error();
                  v73 = v72;
                  v21 = v112;
                  fprintf(v73, "last write ended with return %ld expected %ld with errno %d\n", v71, v69, v98);
                }
              }

              if (v68)
              {
                v67 = 1;
              }

              else
              {
                v67 = *(&v123 + 1) == 0;
              }
            }

            while (!v67);
            v64 = v110;
            v65 = read(v108, v110, 0x100000uLL);
          }

          while (v65 > 0);
        }

        v123 = v64;
        v74 = MEMORY[0x1E69E9848];
        do
        {
          *&v122 = v61;
          *(&v122 + 1) = 0x100000;
          v75 = off_1EA831860(&v122, 1);
          if (v75 >= 2)
          {
            fprintf(*v74, "compression_stream_process bravo failed for %d\n", v75);
          }

          if (*(&v122 + 1) != 0x100000)
          {
            v76 = 0x100000 - *(&v122 + 1);
            v77 = write(v21, v61, 0x100000 - *(&v122 + 1));
            if (v77 != v76)
            {
              v78 = v77;
              v79 = *v74;
              v99 = *__error();
              v80 = v79;
              v21 = v112;
              fprintf(v80, "last write ended with return %ld expected %ld with errno %d\n", v78, v76, v99);
            }
          }
        }

        while (!v75);
        off_1EA831868(&v122);
        close(v21);
        close(v108);
        free(v110);
        free(v61);
        a5 = v104;
        v13 = v105;
        a2 = filename;
        if (v102)
        {
          v125[0] = 0;
          if (!sqlite3_open_v2(filename, v125, v100 | 2, 0))
          {
            sqlite3_busy_timeout(v125[0], 60000);
            sqlite3_extended_result_codes(v125[0], 1);
            v81 = strlen(v102);
            if (v81 >= 1)
            {
              v82 = v81;
              v83 = v102;
              do
              {
                v84 = strstr(v83, ";\n");
                if (!v84)
                {
                  break;
                }

                v85 = v84;
                v86 = v84 - v83;
                v87 = malloc_type_calloc(1uLL, v84 - v83 + 1, 0x622FCEF1uLL);
                strncpy(v87, v83, v86);
                sqlite3_exec(v125[0], v87, 0, 0, 0);
                free(v87);
                v83 = v85 + 2;
              }

              while (v85 + 2 - v102 < v82);
            }
          }

          if (v125[0])
          {
            sqlite3_close(v125[0]);
          }

          free(v102);
          a2 = filename;
        }
      }

      goto LABEL_122;
    }

    v125[0] = -1;
    if (truncate(a2, 0) && *__error() != 2)
    {
      v27 = *MEMORY[0x1E69E9848];
      v28 = __error();
      fprintf(v27, "truncate failed on '%s' with errno %d\n", a2, *v28);
    }

    v29 = dispatch_queue_create("decompressor", 0);
    memset(&v121, 0, sizeof(v121));
    if (stat(a1, &v121) == -1)
    {
      v30 = *MEMORY[0x1E69E9848];
      v31 = __error();
      fprintf(v30, "stat failed for %d\n", *v31);
    }

    if (pipe(v125))
    {
      v32 = *MEMORY[0x1E69E9848];
      v33 = __error();
      fprintf(v32, "pipe failed for %d\n", *v33);
LABEL_122:
      *v13 = strdup(a2);
      v26 = 1;
      goto LABEL_123;
    }

    *&v122 = 0;
    *(&v122 + 1) = &v122;
    *&v123 = 0x2000000000;
    DWORD2(v123) = HIDWORD(v125[0]);
    *v109 = v29;
    fcntl(v125[0], 73, 1);
    fcntl(SHIDWORD(v125[0]), 73, 1);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    *&v119 = sub_1818FED44;
    *(&v119 + 1) = &unk_1E6A26788;
    *&v120 = &v122;
    *(&v120 + 1) = a1;
    dispatch_async(v29, &block);
    ppDb = 0;
    if (!sqlite3_open_v2(a2, &ppDb, a3 | 6, 0))
    {
      v106 = v13;
      sqlite3_busy_timeout(ppDb, 60000);
      sqlite3_extended_result_codes(ppDb, 1);
      sub_181900A6C(ppDb);
      v38 = malloc_type_malloc(0x80001uLL, 0x98D892BDuLL);
      v38[0x80000] = 0;
      v39 = read(v125[0], v38, 0x80000uLL);
      if (v39)
      {
        v40 = 0;
        v41 = 0x80000;
        v42 = v38;
        do
        {
          v40 += v39;
          v42[v40] = 0;
          if (v40 >= v41)
          {
            v43 = v38 - v42;
            if (v38 == v42)
            {
              v42 = malloc_type_realloc(v42, v41 + 524289, 0x548D2841uLL);
              v44 = v42 + 0x80000;
              v41 += 0x80000;
            }

            else
            {
              memmove(v42, v38, v41 - v43);
              v40 -= v43;
              v44 = &v42[v40];
            }

            v113 = v41;
            *v44 = 0;
            v38 = v42;
          }

          else
          {
            v113 = v41;
          }

          v45 = strncmp(v38, "CREATE TRIGGER", 0xEuLL);
          if (v45)
          {
            v46 = ";\n";
          }

          else
          {
            v46 = "END;\n";
          }

          if (v45)
          {
            v47 = 2;
          }

          else
          {
            v47 = 5;
          }

          v111 = v42;
          v48 = &v42[v40];
          do
          {
            v50 = strstr(v38, v46);
            if (!v50 || v50 >= v48)
            {
              break;
            }

            v51 = &v50[v47];
            *(v51 - 1) = 0;
            if (sqlite3_complete(v38))
            {
              errmsg = 0;
              v52 = sqlite3_exec(ppDb, v38, 0, 0, &errmsg);
              if (v52 && v52 != 100)
              {
                fprintf(*MEMORY[0x1E69E9848], "executing sql '%s' returned error %x with message:'%s'\n", v38, v52, errmsg);
              }

              if (errmsg)
              {
                sqlite3_free(errmsg);
              }

              *(v51 - 1) = 10;
              v49 = strncmp(v51, "CREATE TRIGGER", 0xEuLL);
              if (v49)
              {
                v46 = ";\n";
              }

              else
              {
                v46 = "END;\n";
              }

              if (v49)
              {
                v47 = 2;
              }

              else
              {
                v47 = 5;
              }

              v38 = v51;
            }
          }

          while (v38 < v48);
          v41 = v113;
          v39 = read(v125[0], v48, v113 - v40);
          v42 = v111;
        }

        while (v39);
        v13 = v106;
        v29 = *v109;
        if (!v111)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v42 = v38;
        v13 = v106;
      }

      free(v42);
    }

LABEL_117:
    if (ppDb)
    {
      sqlite3_close(ppDb);
    }

    close(v125[0]);
    dispatch_sync(v29, &unk_1EEF8F850);
    dispatch_release(v29);
    v88 = *(*(&v122 + 1) + 24);
    if (v88 != -1)
    {
      close(v88);
    }

    _Block_object_dispose(&v122, 8);
    goto LABEL_122;
  }

  return result;
}

void *sub_1818FE6A4()
{
  result = dlopen("/usr/lib/libcompression.dylib", 8);
  if (result)
  {
    v1 = result;
    off_1EA831858 = dlsym(result, "compression_stream_init");
    off_1EA831860 = dlsym(v1, "compression_stream_process");
    result = dlsym(v1, "compression_stream_destroy");
    off_1EA831868 = result;
  }

  return result;
}

char *sub_1818FE71C()
{
  v0 = malloc_type_calloc(1uLL, 0x400uLL, 0x158D1BDCuLL);
  if (!confstr(65537, v0, 0x400uLL))
  {
    free(v0);
    v0 = 0;
  }

  v1 = strlen(v0);
  v2 = malloc_type_calloc(1uLL, v1 + 24, 0x100004077774924uLL);
  strlcpy(v2, v0, v1 + 24);
  if (v2[v1 - 1] != 47)
  {
    strlcat(v2, "/", v1 + 24);
  }

  strlcat(v2, "tmpsqlitearchiveXXXXXX", v1 + 24);
  free(v0);
  return v2;
}

uint64_t sub_1818FE7F4(sqlite3 *db, char *zSql, char *a3, unsigned int a4)
{
  ppStmt = 0;
  do
  {
    result = sqlite3_prepare(db, zSql, -1, &ppStmt, 0);
  }

  while (result == 5);
  if (!result)
  {
    do
    {
      v9 = sqlite3_step(ppStmt);
    }

    while (v9 == 5);
    if (v9 == 100)
    {
      v10 = sqlite3_column_text(ppStmt, 0);
      if (v10)
      {
        if (a3)
        {
          if (*v10)
          {
            strlcpy(a3, v10, a4);
          }
        }
      }
    }

    return sqlite3_finalize(ppStmt);
  }

  return result;
}

uint64_t sub_1818FE8A4(uint64_t a1)
{
  sub_1818FF474(*(a1 + 40), "main", 0, sub_1818FE914, *(*(*(a1 + 32) + 8) + 24));
  result = close(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = -1;
  return result;
}

ssize_t sub_1818FE914(const char *a1, int a2)
{
  v4 = strlen(a1);

  return write(a2, a1, v4);
}

void sub_1818FE958(int a1, int *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x25828405uLL);
  v5 = *(a2 + 3);
  if (v5 > 516)
  {
    if (v5 == 517)
    {
      v6 = "ZLIB";
      goto LABEL_15;
    }

    if (v5 != 774)
    {
      if (v5 == 2049)
      {
        v6 = "LZFSE";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = "LZMA";
  }

  else
  {
    if (!v5)
    {
      v6 = "none";
      goto LABEL_15;
    }

    if (v5 != 256)
    {
      if (v5 == 257)
      {
        v6 = "LZ4_RAW";
        goto LABEL_15;
      }

LABEL_12:
      v6 = 0;
      goto LABEL_15;
    }

    v6 = "LZ4";
  }

LABEL_15:
  v14 = *(a2 + 5);
  v13 = *(a2 + 4);
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v9 = *a2;
  v10 = a2[1];
  v7 = v4;
  snprintf(v4, 0x400uLL, "%s,%u,%u,0x%llx,0x%llx,0x%llx,%lu,0x%llx,%s\n", "SQLite ARCHIVE_APPLE_1", v9, v10, v11, v12, v5, v13, v14, v6);
  v8 = strlen(v7);
  write(a1, v7, v8);

  free(v7);
}

_BYTE *sub_1818FEA88(_BYTE *result, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*result)
    {
      v2 = MEMORY[0x1EEE9AC00](result, a2);
      bzero(v3, 0x409uLL);
      __strlcpy_chk();
      __strlcat_chk();
      unlink(v3);
      bzero(v3, 0x409uLL);
      __strlcpy_chk();
      __strlcat_chk();
      unlink(v3);
      bzero(v3, 0x409uLL);
      __strlcpy_chk();
      __strlcat_chk();
      unlink(v3);
      return unlink(v2);
    }
  }

  return result;
}

uint64_t sub_1818FEBDC(uint64_t result, int a2, const char **a3)
{
  if (a2 <= 1)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (*a3)
  {
    v7 = strlen(*a3);
    if (v7)
    {
      v8 = v7 + 1;
      v9 = malloc_type_calloc(1uLL, v7 + 1, 0xD1D5A4E9uLL);
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }

    strlcpy(v9, v6, v8);
    v10 = a3[1];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = a3[1];
    if (v10)
    {
LABEL_9:
      v12 = strlen(v10);
      if (v12)
      {
        v13 = v12 + 1;
        v11 = malloc_type_calloc(1uLL, v12 + 1, 0x54144D8AuLL);
      }

      else
      {
        v11 = 0;
        v13 = 1;
      }

      strlcpy(v11, v10, v13);
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:
  v14 = *(v4 + 20);
  if (v5 >= v14)
  {
    v15 = v14 + 512;
    v16 = 8 * (v14 + 512);
    *v4 = malloc_type_realloc(*v4, v16, 0x10040436913F5uLL);
    *(v4 + 8) = malloc_type_realloc(*(v4 + 8), v16, 0x10040436913F5uLL);
    *(v4 + 20) = v15;
  }

  *(*v4 + 8 * v5) = v9;
  *(*(v4 + 8) + 8 * v5) = v11;
  ++*(v4 + 16);
  return 0;
}

void sub_1818FED44(uint64_t a1)
{
  v2 = open(*(a1 + 40), 0, 0);
  if (v2 < 0)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = __error();
    fprintf(v24, "open destination failed for %d\n", *v25);
  }

  else
  {
    v3 = v2;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    sub_1818FBD10(v2, &v30);
    v4 = DWORD2(v31);
    v5 = malloc_type_valloc(0x100000uLL, 0xD1974A43uLL);
    v6 = malloc_type_valloc(0x100000uLL, 0x2AAE5BF5uLL);
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v7 = off_1EA831858(&v27, 1, v4);
    if (v7)
    {
      fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v7);
    }

    v8 = read(v3, v5, 0x100000uLL);
    v26 = v5;
    if (v8 >= 1)
    {
      v9 = MEMORY[0x1E69E9848];
      do
      {
        *&v28 = v5;
        *(&v28 + 1) = v8;
        do
        {
          *&v27 = v6;
          *(&v27 + 1) = 0x100000;
          v11 = off_1EA831860(&v27, 0);
          if (v11 >= 2)
          {
            fprintf(*v9, "compression_stream_process alpha failed for %d\n", v11);
          }

          if (*(&v27 + 1) != 0x100000)
          {
            v12 = 0x100000 - *(&v27 + 1);
            v13 = write(*(*(*(a1 + 32) + 8) + 24), v6, 0x100000 - *(&v27 + 1));
            if (v13 != v12)
            {
              v14 = v13;
              v15 = *v9;
              v16 = __error();
              fprintf(v15, "last write ended with return %ld expected %ld with errno %d\n", v14, v8, *v16);
            }
          }

          if (v11)
          {
            v10 = 1;
          }

          else
          {
            v10 = *(&v28 + 1) == 0;
          }
        }

        while (!v10);
        v5 = v26;
        v8 = read(v3, v26, 0x100000uLL);
      }

      while (v8 > 0);
    }

    v28 = v5;
    v17 = MEMORY[0x1E69E9848];
    do
    {
      *&v27 = v6;
      *(&v27 + 1) = 0x100000;
      v18 = off_1EA831860(&v27, 1);
      if (v18 >= 2)
      {
        fprintf(*v17, "compression_stream_process bravo failed for %d\n", v18);
      }

      if (*(&v27 + 1) != 0x100000)
      {
        v19 = 0x100000 - *(&v27 + 1);
        v20 = write(*(*(*(a1 + 32) + 8) + 24), v6, 0x100000 - *(&v27 + 1));
        if (v20 != v19)
        {
          v21 = v20;
          v22 = *v17;
          v23 = __error();
          fprintf(v22, "last write ended with return %ld expected %ld with errno %d\n", v21, v8, *v23);
        }
      }
    }

    while (!v18);
    off_1EA831868(&v27);
    close(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = -1;
    close(v3);
    free(v26);
    free(v6);
  }
}

uint64_t sub_1818FF054()
{
  qword_1ED452DE0 = sqlite3_vfs_find(0);
  if (!qword_1ED452DE0)
  {
    return 1;
  }

  dword_1ED452DC4 = 40;
  LODWORD(result) = sqlite3_vfs_register(&unk_1ED452DC0, 0);
  if (result)
  {
    return result;
  }

  else
  {
    return 256;
  }
}

uint64_t sub_1818FF0AC(int a1, char *a2, uint64_t a3, __int16 a4)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((a4 & 0x100) == 0)
  {
    return 14;
  }

  v7 = sqlite3_uri_int64(a2, "ptr", 0);
  *(a3 + 24) = v7;
  if (!v7)
  {
    return 14;
  }

  v8 = sqlite3_uri_int64(a2, "sz", 0);
  *(a3 + 8) = v8;
  if (v8 < 0)
  {
    return 14;
  }

  v9 = sqlite3_uri_int64(a2, "max", v8);
  *(a3 + 16) = v9;
  if (v9 < *(a3 + 8))
  {
    return 14;
  }

  v10 = sqlite3_uri_BOOLean(a2, "freeonclose", 0);
  result = 0;
  *(a3 + 32) = v10;
  *a3 = &unk_1EEF8F870;
  return result;
}

uint64_t sub_1818FF234(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sqlite3_free(*(a1 + 24));
  }

  return 0;
}

uint64_t sub_1818FF290(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  a3 = a3;
  v4 = a3 + a4;
  v5 = a1[1];
  if (v4 > v5)
  {
    if (v4 > a1[2])
    {
      return 13;
    }

    if (a4 > v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = a4;
      v10 = a3;
      bzero((a1[3] + v5), a4 - v5);
      a1 = v7;
      a3 = v10;
      a2 = v8;
      a4 = v9;
    }

    a1[1] = v4;
  }

  memcpy((a1[3] + a4), a2, a3);
  return 0;
}

uint64_t sub_1818FF330(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (a2 > v2)
  {
    if (a1[2] < a2)
    {
      return 13;
    }

    v4 = a1;
    v5 = a2;
    bzero((a1[3] + v2), a2 - v2);
    a1 = v4;
    a2 = v5;
  }

  a1[1] = a2;
  return 0;
}

uint64_t sub_1818FF3CC(uint64_t a1, int a2, char **a3)
{
  if (a2 != 12)
  {
    return 12;
  }

  v4 = sqlite3_mprintf("mem(%p,%lld)", *(a1 + 24), *(a1 + 8));
  result = 0;
  *a3 = v4;
  return result;
}

uint64_t sub_1818FF474(sqlite3 *a1, const char *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v13 = 0;
  v15 = 0;
  result = sqlite3_exec(a1, "BEGIN", 0, 0, 0);
  v14 = result;
  if (!result)
  {
    v12 = a1;
    v16 = a4;
    v17 = a5;
    if (!a2)
    {
      a2 = "main";
    }

    a4("PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\n", a5);
    if (a3)
    {
      sub_1818FF5C8(&v12, "SELECT name, type, sql FROM %w.sqlite_schema WHERE tbl_name=%Q COLLATE nocase AND type=='table'  AND sql NOT NULL", a2, a3);
      sub_1818FF668(&v12, "SELECT sql FROM %w.sqlite_schema WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name=%Q COLLATE nocase", a2, a3);
    }

    else
    {
      sub_1818FF5C8(&v12, "SELECT name, type, sql FROM %w.sqlite_schema WHERE sql NOT NULL AND type=='table' AND name!='sqlite_sequence'", a2);
      sub_1818FF5C8(&v12, "SELECT name, type, sql FROM %w.sqlite_schema WHERE name=='sqlite_sequence'", a2);
      sub_1818FF668(&v12, "SELECT sql FROM sqlite_schema WHERE sql NOT NULL AND type IN ('index','trigger','view')", 0);
    }

    if (v15)
    {
      a4("PRAGMA writable_schema=OFF;\n", a5);
    }

    if (v13)
    {
      v11 = "ROLLBACK; -- due to errors\n";
    }

    else
    {
      v11 = "COMMIT;\n";
    }

    a4(v11, a5);
    sqlite3_exec(a1, "COMMIT", 0, 0, 0);
    return v14;
  }

  return result;
}

void sub_1818FF5C8(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  errmsg = 0;
  v3 = sqlite3_vmprintf(a2, va);
  sqlite3_exec(*a1, v3, sub_1818FF858, a1, &errmsg);
  sqlite3_free(v3);
  if (errmsg)
  {
    sub_18190075C(a1, "/****** %s ******/\n", errmsg);
    sqlite3_free(errmsg);
    ++*(a1 + 8);
  }
}

void sub_1818FF668(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  ppStmt = 0;
  v3 = sqlite3_vmprintf(a2, va);
  if (!v3)
  {
    *(a1 + 12) = 7;
    goto LABEL_25;
  }

  v4 = v3;
  v5 = sqlite3_prepare_v2(*a1, v3, -1, &ppStmt, 0);
  sqlite3_free(v4);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = ppStmt == 0;
  }

  if (v6)
  {
    v7 = sqlite3_errmsg(*a1);
    sub_18190075C(a1, "/**** ERROR: (%d) %s *****/\n", v5, v7);
LABEL_25:
    ++*(a1 + 8);
    return;
  }

  v8 = sqlite3_step(ppStmt);
  v9 = sqlite3_column_count(ppStmt);
  if (v8 == 100)
  {
    v10 = v9;
    do
    {
      v12 = sqlite3_column_text(ppStmt, 0);
      (*(a1 + 24))(v12, *(a1 + 32));
      if (v10 >= 2)
      {
        for (i = 1; i != v10; ++i)
        {
          (*(a1 + 24))(",", *(a1 + 32));
          v14 = *(a1 + 24);
          v15 = sqlite3_column_text(ppStmt, i);
          v14(v15, *(a1 + 32));
        }
      }

      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = &byte_181A2878D;
      }

      do
      {
        while (*v16++ == 45)
        {
          if (*v16 == 45)
          {
            v11 = "\n;\n";
            goto LABEL_12;
          }
        }
      }

      while (*(v16 - 1));
      v11 = ";\n";
LABEL_12:
      (*(a1 + 24))(v11, *(a1 + 32));
    }

    while (sqlite3_step(ppStmt) == 100);
  }

  v17 = sqlite3_finalize(ppStmt);
  if (v17)
  {
    v18 = v17;
    v19 = sqlite3_errmsg(*a1);
    sub_18190075C(a1, "/**** ERROR: (%d) %s *****/\n", v18, v19);
    if (v18 != 11)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_1818FF858(uint64_t a1, int a2, uint64_t a3)
{
  ppStmt[3] = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    return 1;
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (!strcmp(*a3, "sqlite_sequence"))
  {
    v12 = "DELETE FROM sqlite_sequence;\n";
  }

  else if (sqlite3_strglob("sqlite_stat?", v4))
  {
    result = strncmp(v4, "sqlite_", 7uLL);
    if (!result)
    {
      return result;
    }

    if (!strncmp(v6, "CREATE VIRTUAL TABLE", 0x14uLL))
    {
      if (!*(a1 + 16))
      {
        (*(a1 + 24))("PRAGMA writable_schema=ON;\n", *(a1 + 32));
        *(a1 + 16) = 1;
      }

      sub_18190075C(a1, "INSERT INTO sqlite_schema(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');", v4, v4, v6);
      return 0;
    }

    v8 = sqlite3_strglob("CREATE TABLE [']*", v6);
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v8)
    {
      v11 = v6;
    }

    else
    {
      v10("CREATE TABLE IF NOT EXISTS ", v9);
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v11 = v6 + 13;
    }

    v10(v11, v9);
    v12 = ";\n";
  }

  else
  {
    v12 = "ANALYZE sqlite_schema;\n";
  }

  (*(a1 + 24))(v12, *(a1 + 32));
  if (strcmp(v5, "table"))
  {
    return 0;
  }

  zSql = 0;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  ppStmt[0] = 0;
  v13 = sqlite3_mprintf("PRAGMA table_info=%Q", v4);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  pStmt = 0;
  v15 = sqlite3_prepare_v2(*a1, v13, -1, ppStmt, 0);
  sqlite3_free(v14);
  if (v15)
  {
    return 0;
  }

  if (sqlite3_step(ppStmt[0]) == 100)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      if (v16 >= v19 - 2)
      {
        v19 = v16 + 2 * v19 + 10;
        v21 = sub_181902CC0(v20, 8 * v19, 0x10040436913F5);
        if (!v21)
        {
          goto LABEL_49;
        }

        *v21 = 0;
        v20 = v21;
      }

      v22 = sqlite3_column_text(ppStmt[0], 1);
      v23 = sqlite3_mprintf("%s", v22);
      v20[v16 + 1] = v23;
      if (!v23)
      {
        goto LABEL_49;
      }

      if (sqlite3_column_int(ppStmt[0], 5))
      {
        if (v18 || (v24 = sqlite3_column_text(ppStmt[0], 2), sqlite3_stricmp(v24, "INTEGER")))
        {
          v17 = 0;
          ++v18;
        }

        else
        {
          v18 = 1;
          v17 = 1;
        }
      }

      ++v16;
    }

    while (sqlite3_step(ppStmt[0]) == 100);
    v25 = v17 == 0;
  }

  else
  {
    v20 = 0;
    LODWORD(v16) = 0;
    v25 = 1;
  }

  sqlite3_finalize(ppStmt[0]);
  ppStmt[0] = 0;
  v26 = (v16 + 1);
  v20[v26] = 0;
  if (v25)
  {
    goto LABEL_36;
  }

  v32 = sqlite3_mprintf("SELECT 1 FROM pragma_index_list(%Q) WHERE origin='pk'", v4);
  if (!v32)
  {
LABEL_49:
    sqlite3_finalize(ppStmt[0]);
    v39 = v20[1];
    if (v39)
    {
      v40 = (v20 + 2);
      do
      {
        sqlite3_free(v39);
        v41 = *v40++;
        v39 = v41;
      }

      while (v41);
    }

    sqlite3_free(v20);
    ++*(a1 + 8);
    *(a1 + 12) = 7;
    return 0;
  }

  v33 = v32;
  v34 = sqlite3_prepare_v2(*a1, v32, -1, ppStmt, 0);
  sqlite3_free(v33);
  if (v34)
  {
    v35 = v20[1];
    if (v35)
    {
      v36 = (v20 + 2);
      do
      {
        sqlite3_free(v35);
        v37 = *v36++;
        v35 = v37;
      }

      while (v37);
    }

    v38 = v20;
    goto LABEL_251;
  }

  v44 = sqlite3_step(ppStmt[0]);
  sqlite3_finalize(ppStmt[0]);
  ppStmt[0] = 0;
  if (v44 == 100)
  {
LABEL_36:
    if (v16)
    {
      v27 = v26 - 1;
      v28 = v20 + 1;
      v29 = v27;
      while (sqlite3_stricmp("rowid", *v28))
      {
        ++v28;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }

      v42 = v20 + 1;
      v30 = 1;
      v43 = v27;
      while (sqlite3_stricmp("_rowid_", *v42))
      {
        ++v42;
        if (!--v43)
        {
          goto LABEL_41;
        }
      }

      v124 = v20 + 1;
      v30 = 2;
      while (sqlite3_stricmp("oid", *v124))
      {
        ++v124;
        if (!--v27)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
LABEL_40:
      v30 = 0;
LABEL_41:
      v31 = off_1E6A267C8[v30];
      if (!sqlite3_table_column_metadata(*a1, 0, v4, v31, 0, 0, 0, 0, 0))
      {
        *v20 = v31;
      }
    }
  }

  v128 = 0;
  v129 = 0;
  sub_1819007B0(&v128, "INSERT INTO ", 0);
  v45 = *v4;
  v46 = MEMORY[0x1E69E9830];
  if (v45 < 0)
  {
    v47 = __maskrune(*v4, 0x100uLL);
  }

  else
  {
    v47 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x100;
  }

  if (v45 != 95 && !v47)
  {
LABEL_63:
    v48 = 34;
    goto LABEL_76;
  }

  v49 = *v4;
  if (*v4)
  {
    v50 = 0;
    while (1)
    {
      if ((v49 & 0x80) != 0)
      {
        v51 = __maskrune(v49, 0x500uLL);
        if (v49 != 95)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v51 = *(v46 + 4 * v49 + 60) & 0x500;
        if (v49 != 95)
        {
LABEL_67:
          if (!v51)
          {
            goto LABEL_63;
          }
        }
      }

      v52 = v50 + 1;
      v49 = v4[++v50];
      if (!v49)
      {
        goto LABEL_73;
      }
    }
  }

  v52 = 0;
LABEL_73:
  if (sqlite3_keyword_check(v4, v52))
  {
    v48 = 34;
  }

  else
  {
    v48 = 0;
  }

LABEL_76:
  sub_1819007B0(&v128, v4, v48);
  v126 = v20;
  if (*v20)
  {
    sub_1819007B0(&v128, "(", 0);
    sub_1819007B0(&v128, *v20, 0);
    v53 = (v20 + 1);
    if (v20[1])
    {
      v54 = 1;
      do
      {
        sub_1819007B0(&v128, ",", 0);
        v56 = *v53;
        v57 = **v53;
        if (v57 < 0)
        {
          v58 = __maskrune(v57, 0x100uLL);
        }

        else
        {
          v58 = *(v46 + 4 * v57 + 60) & 0x100;
        }

        if (v57 != 95 && v58 == 0)
        {
          v55 = 34;
        }

        else
        {
          v60 = *v56;
          if (*v56)
          {
            v61 = 0;
            while (1)
            {
              if ((v60 & 0x80) != 0)
              {
                v62 = __maskrune(v60, 0x500uLL);
                if (v60 != 95)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                v62 = *(v46 + 4 * v60 + 60) & 0x500;
                if (v60 != 95)
                {
LABEL_91:
                  if (!v62)
                  {
                    v55 = 34;
                    v20 = v126;
                    goto LABEL_80;
                  }
                }
              }

              v63 = v61 + 1;
              v60 = v56[++v61];
              if (!v60)
              {
                v20 = v126;
                goto LABEL_99;
              }
            }
          }

          v63 = 0;
LABEL_99:
          if (sqlite3_keyword_check(v56, v63))
          {
            v55 = 34;
          }

          else
          {
            v55 = 0;
          }
        }

LABEL_80:
        sub_1819007B0(&v128, v56, v55);
        v53 = &v20[++v54];
      }

      while (*v53);
    }

    sub_1819007B0(&v128, ")", 0);
  }

  sub_1819007B0(&v128, " VALUES(", 0);
  zSql = 0;
  v131 = 0;
  sub_1819007B0(&zSql, "SELECT ", 0);
  if (*v20)
  {
    sub_1819007B0(&zSql, *v20, 0);
    sub_1819007B0(&zSql, ",", 0);
  }

  v64 = v20[1];
  if (!v64)
  {
    v75 = *v20 != 0;
    goto LABEL_136;
  }

  v65 = 1;
  do
  {
    v66 = *v64;
    if (v66 < 0)
    {
      v67 = __maskrune(*v64, 0x100uLL);
    }

    else
    {
      v67 = *(v46 + 4 * v66 + 60) & 0x100;
    }

    if (v66 != 95 && v67 == 0)
    {
      v73 = 34;
    }

    else
    {
      v69 = *v64;
      if (*v64)
      {
        v70 = 0;
        while (1)
        {
          if ((v69 & 0x80) != 0)
          {
            v71 = __maskrune(v69, 0x500uLL);
            if (v69 != 95)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v71 = *(v46 + 4 * v69 + 60) & 0x500;
            if (v69 != 95)
            {
LABEL_117:
              if (!v71)
              {
                v73 = 34;
                v20 = v126;
                goto LABEL_129;
              }
            }
          }

          v72 = v70 + 1;
          v69 = v64[++v70];
          if (!v69)
          {
            v20 = v126;
            goto LABEL_126;
          }
        }
      }

      v72 = 0;
LABEL_126:
      if (sqlite3_keyword_check(v64, v72))
      {
        v73 = 34;
      }

      else
      {
        v73 = 0;
      }
    }

LABEL_129:
    sub_1819007B0(&zSql, v64, v73);
    if (!v20[++v65])
    {
      break;
    }

    sub_1819007B0(&zSql, ",", 0);
    v64 = v20[v65];
  }

  while (v64);
  v74 = v20[1];
  v75 = v65 - (*v20 == 0);
  if (v74)
  {
    v76 = (v20 + 2);
    do
    {
      sqlite3_free(v74);
      v77 = *v76++;
      v74 = v77;
    }

    while (v77);
  }

LABEL_136:
  sqlite3_free(v20);
  sub_1819007B0(&zSql, " FROM ", 0);
  v78 = *v4;
  if (v78 < 0)
  {
    v79 = __maskrune(*v4, 0x100uLL);
  }

  else
  {
    v79 = *(v46 + 4 * v78 + 60) & 0x100;
  }

  if (v78 != 95 && !v79)
  {
LABEL_141:
    v80 = 34;
    goto LABEL_154;
  }

  v81 = *v4;
  if (*v4)
  {
    v82 = 0;
    while (1)
    {
      if ((v81 & 0x80) != 0)
      {
        v83 = __maskrune(v81, 0x500uLL);
        if (v81 != 95)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v83 = *(v46 + 4 * v81 + 60) & 0x500;
        if (v81 != 95)
        {
LABEL_145:
          if (!v83)
          {
            goto LABEL_141;
          }
        }
      }

      v84 = v82 + 1;
      v81 = v4[++v82];
      if (!v81)
      {
        goto LABEL_151;
      }
    }
  }

  v84 = 0;
LABEL_151:
  if (sqlite3_keyword_check(v4, v84))
  {
    v80 = 34;
  }

  else
  {
    v80 = 0;
  }

LABEL_154:
  sub_1819007B0(&zSql, v4, v80);
  v85 = sqlite3_prepare_v2(*a1, zSql, -1, &pStmt, 0);
  if (v85)
  {
    v86 = *(a1 + 12);
    ++*(a1 + 8);
    if (!v86)
    {
      *(a1 + 12) = v85;
    }

    goto LABEL_250;
  }

  if (sqlite3_step(pStmt) != 100)
  {
    goto LABEL_250;
  }

  v127 = v75;
  v125 = a1;
  while (2)
  {
    (*(a1 + 24))(v128, *(a1 + 32));
    if (v75 < 1)
    {
      goto LABEL_159;
    }

    v87 = 0;
    while (2)
    {
      if (v87)
      {
        (*(a1 + 24))(",", *(a1 + 32));
      }

      v89 = sqlite3_column_type(pStmt, v87);
      if (v89 <= 2)
      {
        if (v89 == 1)
        {
          v88 = sqlite3_column_int64(pStmt, v87);
          sub_18190075C(a1, "%lld", v88);
        }

        else if (v89 == 2)
        {
          v90 = sqlite3_column_double(pStmt, v87);
          if (v90 == -INFINITY)
          {
            (*(a1 + 24))("-1e999", *(a1 + 32));
          }

          else if (v90 == INFINITY)
          {
            (*(a1 + 24))("1e999", *(a1 + 32));
          }

          else
          {
            v108 = -v90;
            if (v90 >= 0.0)
            {
              v108 = v90;
            }

            if (v108 == 0.0)
            {
              v110 = 0;
              LODWORD(v109) = 0;
            }

            else
            {
              v109 = *&v108 >> 52;
              v110 = *&v108 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
              if (*&v108 >> 52 <= 1074 && (LOBYTE(v108) & 1) == 0)
              {
                do
                {
                  v112 = v110;
                  v113 = v109;
                  v110 >>= 1;
                  LODWORD(v109) = v109 + 1;
                }

                while (v113 <= 1073 && (v112 & 2) == 0);
              }

              if (v90 < 0.0)
              {
                v110 = -v110;
              }
            }

            v123 = sqlite3_mprintf("ieee754(%lld,%d)", v110, v109 - 1075);
            sub_18190075C(a1, "%s", v123);
            sqlite3_free(v123);
          }
        }

        goto LABEL_163;
      }

      if (v89 != 3)
      {
        if (v89 == 4)
        {
          LODWORD(v105) = sqlite3_column_bytes(pStmt, v87);
          v106 = sqlite3_column_blob(pStmt, v87);
          (*(a1 + 24))("x'", *(a1 + 32));
          if (v105 >= 1)
          {
            v105 = v105;
            do
            {
              LOBYTE(ppStmt[0]) = a0123456789abcd[*v106 >> 4];
              v107 = *v106++;
              *(ppStmt + 1) = a0123456789abcd[v107 & 0xF];
              (*(a1 + 24))(ppStmt, *(a1 + 32));
              --v105;
            }

            while (v105);
          }

          (*(a1 + 24))("'", *(a1 + 32));
        }

        else if (v89 == 5)
        {
          (*(a1 + 24))("NULL", *(a1 + 32));
        }

        goto LABEL_163;
      }

      v91 = sqlite3_column_text(pStmt, v87);
      v92 = v91;
      v93 = v91;
      do
      {
        while (1)
        {
          v95 = *v93++;
          v94 = v95;
          if (v95 <= 12)
          {
            break;
          }

          if (v94 == 13 || v94 == 39)
          {
            goto LABEL_183;
          }
        }

        if (!v94)
        {
          sub_18190075C(a1, "'%s'", v91);
          goto LABEL_163;
        }
      }

      while (v94 != 10);
LABEL_183:
      v96 = 0;
      v97 = 0;
      v98 = v91;
      while (1)
      {
        v100 = *v98++;
        v99 = v100;
        if (v100 != 10)
        {
          break;
        }

        ++v96;
LABEL_185:
        if (v99 == 13)
        {
          ++v97;
        }
      }

      if (v99)
      {
        goto LABEL_185;
      }

      if (v96)
      {
        (*(a1 + 24))("replace(", *(a1 + 32));
        if (strstr(v92, "\\n"))
        {
          v101 = "\\012";
          if (strstr(v92, "\\012"))
          {
            v102 = 0;
            do
            {
              v103 = v102 + 1;
              v101 = ppStmt;
              sqlite3_snprintf(20, ppStmt, "(%s%u)", "\\n", v102);
              v104 = strstr(v92, ppStmt);
              v102 = v103;
            }

            while (v104);
          }
        }

        else
        {
          v101 = "\\n";
        }
      }

      else
      {
        v101 = 0;
      }

      if (v97)
      {
        (*(a1 + 24))("replace(", *(a1 + 32));
        if (strstr(v92, "\\r"))
        {
          v114 = "\\015";
          if (strstr(v92, "\\015"))
          {
            v115 = 0;
            do
            {
              v116 = v115 + 1;
              v114 = __s2;
              sqlite3_snprintf(20, __s2, "(%s%u)", "\\r", v115);
              v117 = strstr(v92, __s2);
              v115 = v116;
            }

            while (v117);
            a1 = v125;
          }
        }

        else
        {
          v114 = "\\r";
        }
      }

      else
      {
        v114 = 0;
      }

      (*(a1 + 24))("'", *(a1 + 32));
      while (1)
      {
        v119 = *v92;
        if (!*v92)
        {
          break;
        }

        while (1)
        {
          v120 = 0;
          while (v119 > 0x27 || ((1 << v119) & 0x8000002401) == 0)
          {
            v121 = &v92[v120++];
            v119 = v121[1];
          }

          if (v119 == 39)
          {
            v122 = v120 + 1;
          }

          else
          {
            v122 = v120;
          }

          if (v122)
          {
            sub_18190075C(a1, "%.*s", v122, v92);
            v92 += v122;
          }

          if (v119 != 39)
          {
            break;
          }

          (*(a1 + 24))("'", *(a1 + 32));
          v119 = *v92;
          if (!*v92)
          {
            goto LABEL_243;
          }
        }

        if (!v119)
        {
          break;
        }

        ++v92;
        if (v119 == 10)
        {
          v118 = v101;
        }

        else
        {
          v118 = v114;
        }

        (*(a1 + 24))(v118, *(a1 + 32));
      }

LABEL_243:
      (*(a1 + 24))("'", *(a1 + 32));
      if (v97)
      {
        sub_18190075C(a1, ",'%s',char(13))", v114);
      }

      if (v96)
      {
        sub_18190075C(a1, ",'%s',char(10))", v101);
      }

      v75 = v127;
LABEL_163:
      if (++v87 != v75)
      {
        continue;
      }

      break;
    }

LABEL_159:
    (*(a1 + 24))(");\n", *(a1 + 32));
    if (sqlite3_step(pStmt) == 100)
    {
      continue;
    }

    break;
  }

LABEL_250:
  sqlite3_finalize(pStmt);
  sqlite3_free(v128);
  v128 = 0;
  v129 = 0;
  v38 = zSql;
LABEL_251:
  sqlite3_free(v38);
  return 0;
}

void sub_18190075C(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  v3 = sqlite3_vmprintf(a2, va);
  (*(a1 + 24))(v3, *(a1 + 32));
  sqlite3_free(v3);
}

void sub_1819007B0(uint64_t a1, char *__s, unsigned int a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v8 = v6;
  v9 = v6 & 0x3FFFFFFF;
  v10 = *(a1 + 8);
  v11 = (v6 & 0x3FFFFFFF) + v10;
  if (!a3)
  {
    v12 = v11 + 1;
    goto LABEL_19;
  }

  v12 = v11 + 3;
  if (!v9)
  {
    goto LABEL_19;
  }

  v13 = v6 & 0x3FFFFFFF;
  if (v13 < 4)
  {
    v14 = 0;
    goto LABEL_15;
  }

  if (v13 < 0x20)
  {
    v14 = 0;
LABEL_12:
    v33 = v12;
    v34 = &v4[v14];
    v35 = v14 + (v6 & 3);
    v14 = v13 - (v6 & 3);
    v36 = v35 - v13;
    v37 = *&vdup_n_s16(a3) & 0xFF00FF00FF00FFLL;
    v38.i64[0] = 0x100000001;
    v38.i64[1] = 0x100000001;
    do
    {
      v39 = *v34;
      v34 += 4;
      v7.i32[0] = v39;
      v7 = vandq_s8(vmovl_u16(vceq_s16(*&vmovl_u8(*v7.i8), v37)), v38);
      v33 = vaddq_s32(v33, v7);
      v36 += 4;
    }

    while (v36);
    v12 = vaddvq_s32(v33);
    if ((v6 & 3) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v15 = 0uLL;
  v16 = v12;
  v17 = vdupq_n_s8(a3);
  v14 = v13 - (v6 & 0x1F);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = (v4 + 16);
  v20 = v14;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vceqq_s8(v19[-1], v17);
    v28 = vmovl_u8(*v27.i8);
    v29 = vmovl_high_u8(v27);
    v30 = vceqq_s8(*v19, v17);
    v31 = vmovl_u8(*v30.i8);
    v32 = vmovl_high_u8(v30);
    v22 = vaddq_s32(v22, vandq_s8(vmovl_high_u16(v29), v18));
    v21 = vaddq_s32(v21, vandq_s8(vmovl_u16(*v29.i8), v18));
    v15 = vaddq_s32(v15, vandq_s8(vmovl_high_u16(v28), v18));
    v16 = vaddq_s32(v16, vandq_s8(vmovl_u16(*v28.i8), v18));
    v26 = vaddq_s32(v26, vandq_s8(vmovl_high_u16(v32), v18));
    v25 = vaddq_s32(v25, vandq_s8(vmovl_u16(*v32.i8), v18));
    v24 = vaddq_s32(v24, vandq_s8(vmovl_high_u16(v31), v18));
    v23 = vaddq_s32(v23, vandq_s8(vmovl_u16(*v31.i8), v18));
    v19 += 2;
    v20 -= 32;
  }

  while (v20);
  v7 = vaddq_s32(v25, v21);
  v12 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v16), v7), vaddq_s32(vaddq_s32(v24, v15), vaddq_s32(v26, v22))));
  if ((v6 & 0x1F) == 0)
  {
    goto LABEL_19;
  }

  if ((v6 & 0x1Fu) >= 4uLL)
  {
    goto LABEL_12;
  }

LABEL_15:
  v40 = &v4[v14];
  v41 = v13 - v14;
  do
  {
    v42 = *v40++;
    if (v42 == a3)
    {
      ++v12;
    }

    --v41;
  }

  while (v41);
LABEL_19:
  v43 = v12 + v10;
  v44 = *(a1 + 12);
  if (v43 >= v44)
  {
    v45 = v12 + 2 * v44 + 20;
    *(a1 + 12) = v45;
    v46 = sub_181902BE8(*a1, v45, 1818197374);
    if (!v46)
    {
      sqlite3_free(*a1);
      *a1 = 0;
      *(a1 + 8) = 0;
      return;
    }

    *a1 = v46;
  }

  v47 = (*a1 + *(a1 + 8));
  if (a3)
  {
    *v47 = a3;
    v48 = v47 + 1;
    if (v9)
    {
      v49 = v8 & 0x3FFFFFFF;
      do
      {
        while (1)
        {
          v50 = *v4++;
          *v48 = v50;
          if (v50 != a3)
          {
            break;
          }

          v48[1] = a3;
          v48 += 2;
          if (!--v49)
          {
            goto LABEL_28;
          }
        }

        ++v48;
        --v49;
      }

      while (v49);
    }

LABEL_28:
    *v48 = a3;
    *(a1 + 8) = v48 + 1 - *a1;
    v48[1] = 0;
  }

  else
  {
    memcpy(v47, v4, v8 & 0x3FFFFFFF);
    v51 = *(a1 + 8) + v9;
    *(a1 + 8) = v51;
    *(*a1 + v51) = 0;
  }
}

uint64_t sub_181900A6C(sqlite3 *a1)
{
  result = sqlite3_create_function(a1, "ieee754", 1, 2097153, &unk_1EEF8F914, sub_181900C5C, 0, 0);
  if (!result)
  {
    result = sqlite3_create_function(a1, "ieee754", 2, 2097153, &unk_1EEF8F92C, sub_181900C5C, 0, 0);
    if (!result)
    {
      result = sqlite3_create_function(a1, "ieee754_mantissa", 1, 2097153, &unk_1EEF8F944, sub_181900C5C, 0, 0);
      if (!result)
      {
        result = sqlite3_create_function(a1, "ieee754_exponent", 1, 2097153, &unk_1EEF8F95C, sub_181900C5C, 0, 0);
        if (!result)
        {
          result = sqlite3_create_function(a1, "ieee754_to_blob", 1, 2097153, &unk_1EEF8F974, sub_181901024, 0, 0);
          if (!result)
          {
            result = sqlite3_create_function(a1, "ieee754_from_blob", 1, 2097153, &unk_1EEF8F98C, sub_1819010C4, 0, 0);
            if (!result)
            {

              return sqlite3_create_function(a1, "ieee754_inc", 2, 2097153, &unk_1EEF8F9A4, sub_18190117C, 0, 0);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_181900C5C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    if (sqlite3_value_type(*a3) == 5)
    {

      sqlite3_result_null(a1);
    }

    else
    {
      if (sqlite3_value_type(*a3) == 4 && sqlite3_value_bytes(*a3) == 8)
      {
        v10 = sqlite3_value_blob(*a3);
        *&v11 = v10[7] | (((v10[5] << 8) | (((((v10[1] << 8) | (*v10 << 16) | v10[2]) << 16) | (v10[3] << 8) | v10[4]) << 16) | v10[6]) << 8);
      }

      else
      {
        v11 = sqlite3_value_double(*a3);
      }

      v13 = -v11;
      if (v11 >= 0.0)
      {
        v13 = v11;
      }

      if (v13 == 0.0)
      {
        LODWORD(v14) = 0;
        v19 = 0;
      }

      else
      {
        v14 = *&v13 >> 52;
        if (*&v13 >> 52)
        {
          v15 = *&v13 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
        }

        else
        {
          v15 = 2 * *&v13;
        }

        if (v14 <= 1074 && (v15 & 1) == 0)
        {
          do
          {
            v17 = v14;
            v18 = v15;
            v15 >>= 1;
            LODWORD(v14) = v14 + 1;
          }

          while (v17 <= 1073 && (v18 & 2) == 0);
        }

        if (v11 >= 0.0)
        {
          v19 = v15;
        }

        else
        {
          v19 = -v15;
        }
      }

      v20 = *sqlite3_user_data(a1);
      switch(v20)
      {
        case 2:

          sqlite3_result_int(a1, v14 - 1075);
          break;
        case 1:

          sqlite3_result_int64(a1, v19);
          break;
        case 0:
          sqlite3_snprintf(100, v26, "ieee754(%lld,%d)", v19, v14 - 1075);
          sqlite3_result_text(a1, v26, -1, 0xFFFFFFFFFFFFFFFFLL);
          break;
      }
    }

    return;
  }

  v5 = sqlite3_value_int64(*a3);
  v6 = sqlite3_value_int64(a3[1]);
  v7 = -10000;
  if (v6 > -10000)
  {
    v7 = v6;
  }

  if (v7 >= 10000)
  {
    v7 = 10000;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    v8 = -v5;
    goto LABEL_18;
  }

  if (v5)
  {
    v8 = v5;
    if (!(v5 >> 53))
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

  v8 = 0;
  if ((v7 + 999) > 0x7CE)
  {
LABEL_18:
    if (!(v8 >> 53))
    {
LABEL_19:
      v12 = v8;
LABEL_45:
      if (v12 - 1 <= 0xFFFFFFFFFFFFELL)
      {
        do
        {
          v12 *= 2;
          --v7;
        }

        while (v12 - 1 < 0xFFFFFFFFFFFFFLL);
      }

      v22 = 972;
      if (v7 < 972)
      {
        v22 = v7;
      }

      v23 = (v22 << 52) + 0x4330000000000000;
      v24 = v12 >> (-50 - v7);
      if (v7 < 0xFFFFFFFFFFFFFB8FLL)
      {
        v24 = 0;
      }

      if (v7 > -1075)
      {
        v25 = v23;
      }

      else
      {
        v12 = v24;
        v25 = 0;
      }

      *&v9 = v25 | v5 & 0x8000000000000000 | v12 & 0xFFFFFFFFFFFFFLL;
      goto LABEL_55;
    }

    do
    {
LABEL_44:
      v12 = v8 >> 1;
      ++v7;
      v21 = v8 >> 54;
      v8 >>= 1;
    }

    while (v21);
    goto LABEL_45;
  }

  v9 = 0.0;
LABEL_55:

  sqlite3_result_double(a1, v9);
}

void sub_181901024(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (sqlite3_value_type(*a3) == 2 || sqlite3_value_type(*a3) == 1)
  {
    v5[0] = bswap64(COERCE_UNSIGNED_INT64(sqlite3_value_double(*a3)));
    sqlite3_result_blob(a1, v5, 8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_1819010C4(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (sqlite3_value_type(*a3) == 4 && sqlite3_value_bytes(*a3) == 8)
  {
    v5 = sqlite3_value_blob(*a3);
    *&v6 = v5[7] | (((v5[5] << 8) | (((((v5[1] << 8) | (*v5 << 16) | v5[2]) << 16) | (v5[3] << 8) | v5[4]) << 16) | v5[6]) << 8);

    sqlite3_result_double(a1, v6);
  }
}

void sub_18190117C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_double(*a3);
  *&v6 = sqlite3_value_int64(a3[1]) + *&v5;

  sqlite3_result_double(a1, v6);
}

int sqlite3_status64(int op, sqlite3_int64 *pCurrent, sqlite3_int64 *pHighwater, int resetFlag)
{
  if (op >= 0xA)
  {
    v5 = 25416;

    return sub_1819012D0(v5);
  }

  if (!pCurrent || !pHighwater)
  {
    v5 = 25419;

    return sub_1819012D0(v5);
  }

  v7 = op;
  if ((0x379uLL >> op))
  {
    v8 = &xmmword_1ED456AF0;
  }

  else
  {
    v8 = (&xmmword_1EA8319F0 + 8);
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = resetFlag;
    v11 = pHighwater;
    v12 = pCurrent;
    xmmword_1ED452F18(v9);
    pCurrent = v12;
    pHighwater = v11;
    resetFlag = v10;
  }

  v13 = &qword_1ED456A48[v7];
  v14 = *v13;
  *pCurrent = *v13;
  *pHighwater = v13[10];
  if (resetFlag)
  {
    v13[10] = v14;
  }

  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

  return 0;
}

void sqlite3_mutex_enter(sqlite3_mutex *a1)
{
  if (a1)
  {
    xmmword_1ED452F18(a1);
  }
}

void sqlite3_mutex_leave(sqlite3_mutex *a1)
{
  if (a1)
  {
    xmmword_1ED452F28(a1);
  }
}

int sqlite3_status(int op, int *pCurrent, int *pHighwater, int resetFlag)
{
  if (!pCurrent || !pHighwater)
  {
    v5 = 25436;

    return sub_1819012D0(v5);
  }

  if (op > 9)
  {
    v5 = 25416;

    return sub_1819012D0(v5);
  }

  v7 = op;
  if ((0x379uLL >> op))
  {
    v8 = &xmmword_1ED456AF0;
  }

  else
  {
    v8 = (&xmmword_1EA8319F0 + 8);
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = pHighwater;
    v11 = pCurrent;
    v12 = resetFlag;
    xmmword_1ED452F18(v9);
    resetFlag = v12;
    pCurrent = v11;
    pHighwater = v10;
  }

  v13 = &qword_1ED456A48[v7];
  v14 = *v13;
  v15 = v13[10];
  if (resetFlag)
  {
    v13[10] = v14;
  }

  if (v9)
  {
    v16 = v9;
    v17 = pHighwater;
    v18 = pCurrent;
    xmmword_1ED452F28(v16);
    pCurrent = v18;
    pHighwater = v17;
  }

  *pCurrent = v14;
  *pHighwater = v15;
  return 0;
}

int sqlite3_db_status(sqlite3 *a1, int op, int *pCur, int *pHiwtr, int resetFlg)
{
  if (!a1)
  {
    v7 = "NULL";
    goto LABEL_17;
  }

  v6 = *(a1 + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_17:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_18;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if (!pCur || !pHiwtr)
  {
LABEL_18:

    return sub_1819012D0(25486);
  }

  v11 = *(a1 + 3);
  if (v11)
  {
    v12 = resetFlg;
    xmmword_1ED452F18(v11);
    resetFlg = v12;
  }

  v13 = 1;
  if (op > 6)
  {
    if (op >= 10)
    {
      if (op == 10)
      {
        *pHiwtr = 0;
        v36 = *(a1 + 102) > 0 || *(a1 + 101) > 0;
        v13 = 0;
        goto LABEL_72;
      }

      if (op == 11)
      {
        goto LABEL_60;
      }

      if (op != 12)
      {
        goto LABEL_118;
      }

      op = 10;
    }

    v16 = *(a1 + 10);
    if (v16 < 1)
    {
      v36 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = op - 7;
      v20 = *(a1 + 4) + 8;
      do
      {
        if (*v20)
        {
          v21 = **(*v20 + 8) + 248;
          v18 += *(v21 + 4 * v19);
          if (resetFlg)
          {
            *(v21 + 4 * v19) = 0;
            v16 = *(a1 + 10);
          }
        }

        ++v17;
        v20 += 32;
      }

      while (v17 < v16);
      v36 = v18 & 0x7FFFFFFF;
    }

    v13 = 0;
    goto LABEL_71;
  }

  if (op <= 2)
  {
    if (!op)
    {
      v47 = *(a1 + 58);
      if (v47)
      {
        v48 = 0;
        v49 = *(a1 + 58);
        do
        {
          v49 = *v49;
          ++v48;
        }

        while (v49);
      }

      else
      {
        v48 = 0;
      }

      v50 = *(a1 + 59);
      if (v50)
      {
        v51 = -1;
        v52 = *(a1 + 59);
        do
        {
          v52 = *v52;
          ++v51;
        }

        while (v52);
      }

      else
      {
        v51 = -1;
      }

      v53 = *(a1 + 60);
      if (v53)
      {
        v54 = 0;
        v55 = *(a1 + 60);
        do
        {
          v55 = *v55;
          ++v54;
        }

        while (v55);
      }

      else
      {
        v54 = 0;
      }

      v56 = v54 + v48;
      v57 = *(a1 + 61);
      if (v57)
      {
        v58 = -1;
        v59 = *(a1 + 61);
        do
        {
          v59 = *v59;
          ++v58;
        }

        while (v59);
      }

      else
      {
        v58 = -1;
      }

      *pHiwtr = *(a1 + 111) - v56;
      *pCur = *(a1 + 111) - (v51 + v56 + v58) - 2;
      if (!resetFlg)
      {
        goto LABEL_117;
      }

      if (v50)
      {
        v60 = v50;
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
        *v61 = v47;
        *(a1 + 58) = v50;
        *(a1 + 59) = 0;
      }

      if (v57)
      {
        v62 = v57;
        do
        {
          v63 = v62;
          v62 = *v62;
        }

        while (v62);
        v13 = 0;
        *v63 = v53;
        *(a1 + 60) = v57;
        *(a1 + 61) = 0;
      }

      else
      {
LABEL_117:
        v13 = 0;
      }

      goto LABEL_118;
    }

    if (op != 1)
    {
      if (op == 2)
      {
        v67 = 0;
        if (!*(a1 + 111))
        {
          sub_181932C40(a1);
        }

        *(a1 + 103) = &v67;
        *(a1 + 64) = *(a1 + 63);
        if (*(a1 + 10) >= 1)
        {
          v22 = 0;
          do
          {
            v23 = *(*(a1 + 4) + 32 * v22 + 24);
            if (v23)
            {
              v24 = v67 + (*(v23 + 60) + *(v23 + 12) + *(v23 + 36) + *(v23 + 84)) * (*(&xmmword_1ED452EC0 + 1))(40);
              v67 = v24;
              v25 = *(v23 + 24);
              if (v25)
              {
                LODWORD(v25) = xmmword_1ED452EC0(v25);
                v24 = v67;
              }

              v26 = v24 + v25;
              v67 = v26;
              v27 = *(v23 + 72);
              if (v27)
              {
                LODWORD(v27) = xmmword_1ED452EC0(v27);
                v26 = v67;
              }

              v28 = v26 + v27;
              v67 = v28;
              v29 = *(v23 + 48);
              if (v29)
              {
                LODWORD(v29) = xmmword_1ED452EC0(v29);
                v28 = v67;
              }

              v30 = v28 + v29;
              v67 = v30;
              v31 = *(v23 + 96);
              if (v31)
              {
                LODWORD(v31) = xmmword_1ED452EC0(v31);
                v30 = v67;
              }

              v67 = v30 + v31;
              for (i = *(v23 + 64); i; i = *i)
              {
                sub_1818A313C(a1, i[2]);
              }

              for (j = *(v23 + 16); j; j = *j)
              {
                v34 = j[2];
                if (v34)
                {
                  if (*(a1 + 103) || (v35 = *(v34 + 44) - 1, (*(v34 + 44) = v35) == 0))
                  {
                    sub_18194E094(a1, v34);
                  }
                }
              }
            }

            ++v22;
          }

          while (v22 < *(a1 + 10));
        }

        *(a1 + 103) = 0;
        *(a1 + 64) = *(a1 + 65);
        if (!*(a1 + 111))
        {
          sub_181932CD8(a1);
        }

        v13 = 0;
        *pHiwtr = 0;
        v36 = v67;
        goto LABEL_72;
      }

      goto LABEL_118;
    }

LABEL_60:
    if (!*(a1 + 111))
    {
      sub_181932C40(a1);
    }

    v65 = pHiwtr;
    v37 = *(a1 + 10);
    if (v37 < 1)
    {
      v39 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(*(a1 + 4) + v40);
        if (v41)
        {
          v42 = **(v41 + 8);
          v43 = *(v42 + 200) + *(v42 + 176) + 120;
          v44 = xmmword_1ED452F70(*(*(v42 + 336) + 72));
          v45 = xmmword_1ED452EC0(v42) + v43 * v44 + *(v42 + 200);
          if (op == 11)
          {
            v45 /= *(*(v41 + 8) + 104);
          }

          v39 += v45;
          v37 = *(a1 + 10);
        }

        ++v38;
        v40 += 32;
      }

      while (v38 < v37);
    }

    if (!*(a1 + 111))
    {
      sub_181932CD8(a1);
    }

    v13 = 0;
    *pCur = v39;
    *v65 = 0;
    goto LABEL_118;
  }

  v14 = op - 4;
  if ((op - 4) < 3)
  {
    *pCur = 0;
    *pHiwtr = *(a1 + v14 + 112);
    v13 = 0;
    if (resetFlg)
    {
      *(a1 + v14 + 112) = 0;
    }

    goto LABEL_118;
  }

  if (op == 3)
  {
    v66 = 0;
    *(a1 + 103) = &v66;
    *(a1 + 64) = *(a1 + 63);
    v46 = *(a1 + 1);
    if (v46)
    {
      do
      {
        sub_181901AB4(v46);
        v46 = *(v46 + 16);
      }

      while (v46);
      v36 = v66;
    }

    else
    {
      v36 = 0;
    }

    v13 = 0;
    *(a1 + 64) = *(a1 + 65);
    *(a1 + 103) = 0;
LABEL_71:
    *pHiwtr = 0;
LABEL_72:
    *pCur = v36;
  }

LABEL_118:
  v64 = *(a1 + 3);
  if (v64)
  {
    xmmword_1ED452F28(v64);
  }

  return v13;
}

uint64_t sub_181901A08(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return 1;
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  return 0;
}

sqlite3_uint64 sqlite3_msize(sqlite3_uint64 result)
{
  if (result)
  {
    return xmmword_1ED452EC0(result);
  }

  return result;
}

void *sub_181901AB4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 152);
  if (v3)
  {
    if (*(a1 + 262))
    {
      v4 = v3 + 320 * *(a1 + 262);
      v5 = *(v3 + 24);
      if (!v5[103])
      {
        while (1)
        {
          if ((*(v3 + 20) & 0x9000) != 0)
          {
            sub_18193CA00(v3);
          }

          else
          {
            if (!*(v3 + 32))
            {
              goto LABEL_11;
            }

            sub_181939EC8(v5, *(v3 + 40));
            *(v3 + 32) = 0;
          }

          *(v3 + 20) = 0;
LABEL_11:
          v3 += 64;
          if (v3 >= v4)
          {
            goto LABEL_15;
          }
        }
      }

      do
      {
        if (*(v3 + 32))
        {
          v6 = *(v3 + 40);
          if (v6)
          {
            sub_181929C84(v5, v6);
          }
        }

        v3 += 64;
      }

      while (v3 < v4);
    }

LABEL_15:
    sub_181939EC8(v2, *(a1 + 152));
  }

  v7 = *(a1 + 376);
  if (v7)
  {
    do
    {
      v12 = *(v7 + 40);
      v13 = *v7;
      if (*v7)
      {
        v14 = 5 * *(v7 + 8);
        do
        {
          v15 = *(&v13[v14 - 4] - 7);
          if (v15 <= -6)
          {
            sub_1818A3B68(v2, v15, v13[v14 - 3]);
          }

          v14 -= 5;
        }

        while (v14 * 8);
        sub_181939EC8(v2, v13);
      }

      sub_181929C84(v2, v7);
      v7 = v12;
    }

    while (v12);
  }

  if (*(a1 + 267))
  {
    v8 = *(a1 + 128);
    if (v8)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = v8 + (v9 << 6);
        v11 = *(v8 + 24);
        if (!v11[103])
        {
          while (1)
          {
            if ((*(v8 + 20) & 0x9000) != 0)
            {
              sub_18193CA00(v8);
            }

            else
            {
              if (!*(v8 + 32))
              {
                goto LABEL_35;
              }

              sub_181939EC8(v11, *(v8 + 40));
              *(v8 + 32) = 0;
            }

            *(v8 + 20) = 0;
LABEL_35:
            v8 += 64;
            if (v8 >= v10)
            {
              goto LABEL_39;
            }
          }
        }

        do
        {
          if (*(v8 + 32))
          {
            v16 = *(v8 + 40);
            if (v16)
            {
              sub_181929C84(v11, v16);
            }
          }

          v8 += 64;
        }

        while (v8 < v10);
      }
    }

LABEL_39:
    v17 = *(a1 + 176);
    if (v17)
    {
      sub_181939EC8(v2, v17);
    }

    v18 = *(a1 + 344);
    if (v18)
    {
      sub_181939EC8(v2, v18);
    }
  }

  v19 = *(a1 + 136);
  if (v19)
  {
    v20 = 5 * *(a1 + 144);
    do
    {
      v21 = *(&v19[v20 - 4] - 7);
      if (v21 <= -6)
      {
        sub_1818A3B68(v2, v21, v19[v20 - 3]);
      }

      v20 -= 5;
    }

    while (v20 * 8);
    sub_181939EC8(v2, v19);
  }

  v22 = *(a1 + 320);
  if (v22)
  {
    sub_181939EC8(v2, v22);
  }

  v23 = *(a1 + 328);
  if (v23)
  {
    sub_181929C84(v2, v23);
  }

  v24 = *(a1 + 336);
  if (v24)
  {
    do
    {
      v25 = *v24;
      sub_181929C84(v2, v24);
      v24 = v25;
    }

    while (v25);
  }

  v26 = *(a1 + 392);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 48;
    do
    {
      v29 = *(*(a1 + 400) + v28);
      if (v29)
      {
        sub_181929C84(v2, v29);
        v26 = *(a1 + 392);
      }

      ++v27;
      v28 += 56;
    }

    while (v27 < v26);
  }

  v30 = *(a1 + 400);
  if (v30)
  {
    sub_181929C84(v2, v30);
  }

  if (!v2[103])
  {
    v31 = *(a1 + 16);
    **(a1 + 8) = v31;
    if (v31)
    {
      *(v31 + 8) = *(a1 + 8);
    }
  }

  return sub_181939EC8(v2, a1);
}

int sqlite3_vfs_unregister(sqlite3_vfs *a1)
{
  result = sqlite3_initialize();
  if (result)
  {
    return result;
  }

  if (!word_1ED452E84)
  {
    v3 = 0;
LABEL_7:
    v5 = 1;
    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v3 = qword_1ED452F08(2);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  xmmword_1ED452F18(v3);
  v3 = v4;
  v5 = 0;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_8:
  p_pNext = &qword_1ED456AE8;
  v7 = qword_1ED456AE8;
  if (qword_1ED456AE8 != a1)
  {
    if (!qword_1ED456AE8)
    {
      goto LABEL_18;
    }

    do
    {
      v8 = v7;
      v7 = v7->pNext;
      if (v7)
      {
        v9 = v7 == a1;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
    if (v7 != a1)
    {
      goto LABEL_18;
    }

    p_pNext = &v8->pNext;
  }

  *p_pNext = a1->pNext;
LABEL_18:
  if ((v5 & 1) == 0)
  {
    xmmword_1ED452F28(v3);
  }

  return 0;
}

sqlite3_mutex *__cdecl sqlite3_mutex_alloc(int a1)
{
  v1 = *&a1;
  if (a1 > 1)
  {
    if (!qword_1ED452F08)
    {
      v3 = sub_181929688;
      v4 = word_1ED452E84 == 0;
      if (!word_1ED452E84)
      {
        v3 = sub_181929C58;
      }

      xmmword_1ED452EF8 = v3;
      v5 = sub_181929690;
      if (!word_1ED452E84)
      {
        v5 = sub_181929C60;
      }

      *(&xmmword_1ED452EF8 + 1) = v5;
      v6 = sub_1819297D4;
      if (!word_1ED452E84)
      {
        v6 = nullsub_4;
      }

      off_1ED452F10 = v6;
      v7 = sub_181929978;
      if (!word_1ED452E84)
      {
        v7 = nullsub_5;
      }

      xmmword_1ED452F18 = v7;
      v8 = sub_181929A1C;
      if (!word_1ED452E84)
      {
        v8 = sub_181929C78;
      }

      *(&xmmword_1ED452F18 + 1) = v8;
      v9 = sub_181929A58;
      if (!word_1ED452E84)
      {
        v9 = nullsub_6;
      }

      qword_1ED452F38 = 0;
      *&xmmword_1ED452F28 = v9;
      __dmb(0xBu);
      v10 = sub_181929698;
      if (v4)
      {
        v10 = sub_181929C68;
      }

      qword_1ED452F08 = v10;
    }

    v11 = xmmword_1ED452EF8();
    __dmb(0xBu);
    if (v11)
    {
      return 0;
    }
  }

  else if (sqlite3_initialize())
  {
    return 0;
  }

  v12 = qword_1ED452F08;

  return v12(v1);
}

void sqlite3_mutex_free(sqlite3_mutex *a1)
{
  if (a1)
  {
    off_1ED452F10();
  }
}

int sqlite3_mutex_try(sqlite3_mutex *a1)
{
  if (a1)
  {
    LODWORD(a1) = (*(&xmmword_1ED452F18 + 1))();
  }

  return a1;
}

sqlite3_int64 sqlite3_soft_heap_limit64(sqlite3_int64 N)
{
  if (sqlite3_initialize())
  {
    return -1;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  result = *(&xmmword_1ED456AF0 + 1);
  if (N < 0)
  {
    v7 = *(&xmmword_1ED456AF0 + 1);
    v8 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      goto LABEL_24;
    }

    return v7;
  }

  if (qword_1ED456B00 >= N)
  {
    v3 = N;
  }

  else
  {
    v3 = qword_1ED456B00;
  }

  if (!N)
  {
    v3 = qword_1ED456B00;
  }

  if (qword_1ED456B00 <= 0)
  {
    v4 = N;
  }

  else
  {
    v4 = v3;
  }

  *(&xmmword_1ED456AF0 + 1) = v4;
  v6 = v4 > 0 && v4 <= qword_1ED456A48;
  dword_1ED456B08 = v6;
  if (xmmword_1ED456AF0)
  {
    v7 = result;
    xmmword_1ED452F28(xmmword_1ED456AF0);
    v8 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
LABEL_24:
      xmmword_1ED452F28(v8);
    }

    return v7;
  }

  return result;
}

sqlite3_int64 sqlite3_memory_used(void)
{
  v0 = xmmword_1ED456AF0;
  if (!xmmword_1ED456AF0)
  {
    return qword_1ED456A48;
  }

  xmmword_1ED452F18(xmmword_1ED456AF0);
  v1 = qword_1ED456A48;
  xmmword_1ED452F28(v0);
  return v1;
}

void sqlite3_soft_heap_limit(int N)
{
  if (!sqlite3_initialize())
  {
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
      v2 = xmmword_1ED456AF0;
    }

    if (qword_1ED456B00 >= (N & ~(N >> 31)))
    {
      v3 = N & ~(N >> 31);
    }

    else
    {
      v3 = qword_1ED456B00;
    }

    if (N < 1)
    {
      v3 = qword_1ED456B00;
    }

    if (qword_1ED456B00 <= 0)
    {
      v4 = N & ~(N >> 31);
    }

    else
    {
      v4 = v3;
    }

    *(&xmmword_1ED456AF0 + 1) = v4;
    v6 = v4 > 0 && v4 <= qword_1ED456A48[0];
    dword_1ED456B08 = v6;
    if (v2)
    {
      xmmword_1ED452F28(v2);
      v7 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
        v8 = xmmword_1ED452F28;

        v8(v7);
      }
    }
  }
}

uint64_t sqlite3_hard_heap_limit64(uint64_t a1)
{
  if (sqlite3_initialize())
  {
    return -1;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1819023F8;
    block[3] = &unk_1E6A267E8;
    block[4] = &v7;
    if (qword_1EA831870 != -1)
    {
      dispatch_once(&qword_1EA831870, block);
    }

    if (!*(v8 + 6) || (v3 = getprogname(), strcmp("backupd", v3)))
    {
      sub_1819012D0(32239);
      a1 = -1;
    }

    _Block_object_dispose(&v7, 8);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  result = qword_1ED456B00;
  if ((a1 & 0x8000000000000000) == 0)
  {
    qword_1ED456B00 = a1;
    if (a1 < *(&xmmword_1ED456AF0 + 1) || *(&xmmword_1ED456AF0 + 1) == 0)
    {
      *(&xmmword_1ED456AF0 + 1) = a1;
    }
  }

  if (xmmword_1ED456AF0)
  {
    v5 = result;
    xmmword_1ED452F28(xmmword_1ED456AF0);
    return v5;
  }

  return result;
}

sqlite3_int64 sqlite3_memory_highwater(int resetFlag)
{
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  v3 = qword_1ED456A98;
  if (resetFlag)
  {
    qword_1ED456A98 = qword_1ED456A48;
  }

  if (v2)
  {
    xmmword_1ED452F28(v2);
  }

  return v3;
}

uint64_t sub_181902484(uint64_t a1, uint64_t a2)
{
  if ((a1 - 2147483392) < 0xFFFFFFFF80000101)
  {
    return 0;
  }

  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    v5 = (*(&xmmword_1ED452EC0 + 1))(a1);
    v6 = v5;
    if (qword_1ED456AC0 < a1)
    {
      qword_1ED456AC0 = a1;
    }

    v7 = a2;
    if (*(&xmmword_1ED456AF0 + 1) >= 1)
    {
      if (qword_1ED456A48 >= *(&xmmword_1ED456AF0 + 1) - v5)
      {
        dword_1ED456B08 = 1;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F28(xmmword_1ED456AF0);
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }
        }

        v7 = a2;
        if (qword_1ED456B00 && qword_1ED456A48 >= qword_1ED456B00 - v6)
        {
          result = 0;
          v16 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            return result;
          }

LABEL_38:
          v17 = result;
          xmmword_1ED452F28(v16);
          return v17;
        }
      }

      else
      {
        dword_1ED456B08 = 0;
      }
    }

    if (xmmword_1ED452EA0 < 2 || *(&xmmword_1ED452EE0 + 1) == 0)
    {
      result = (*(&xmmword_1ED452EA0 + 1))(v6, v7);
      if (!result)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = (*(&xmmword_1ED452EE0 + 1))(v6, v7);
      if (!result)
      {
        goto LABEL_37;
      }
    }

    v12 = result;
    v13 = qword_1ED456A48 + xmmword_1ED452EC0(result);
    qword_1ED456A48 = v13;
    if (v13 > qword_1ED456A98)
    {
      qword_1ED456A98 = v13;
    }

    v14 = qword_1ED456A90;
    v15 = ++qword_1ED456A90;
    if (v14 >= qword_1ED456AE0)
    {
      qword_1ED456AE0 = v15;
    }

    result = v12;
LABEL_37:
    v16 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      return result;
    }

    goto LABEL_38;
  }

  v8 = *(&xmmword_1ED452EE0 + 1);
  if (xmmword_1ED452EA0 < 2 || *(&xmmword_1ED452EE0 + 1) == 0)
  {
    v10 = *(&xmmword_1ED452EA0 + 1);

    return v10();
  }

  else
  {

    return v8();
  }
}

void *__cdecl sqlite3_malloc64(sqlite3_uint64 a1)
{
  v3 = sqlite3_initialize();
  if (!a1 || v3)
  {
    return 0;
  }

  return sub_181902484(a1, (v1 >> 2));
}

uint64_t sub_18190275C(int a1, uint64_t a2)
{
  v4 = sqlite3_initialize();
  if (a1 < 1 || v4)
  {
    return 0;
  }

  return sub_181902484(a1, a2);
}

uint64_t sub_1819027B8(uint64_t a1, uint64_t a2)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  return sub_181902484(a1, a2);
}

void *__cdecl sqlite3_realloc(void *a1, int a2)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  return sub_18190287C(a1, a2 & ~(a2 >> 31), (v2 >> 2));
}

uint64_t sub_18190287C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (!a2)
    {
      v4 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          v5 = a1;
          xmmword_1ED452F18(xmmword_1ED456AF0);
          a1 = v5;
        }

        v6 = a1;
        qword_1ED456A48 -= xmmword_1ED452EC0(a1);
        --qword_1ED456A90;
        off_1ED452EB0(v6);
        result = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return result;
        }

        v4 = &xmmword_1ED452F28;
      }

      v7 = *v4;
LABEL_14:
      v7();
      return 0;
    }

    if (a2 > 0x7FFFFEFF)
    {
      return 0;
    }

    v9 = a1;
    v11 = xmmword_1ED452EC0(a1);
    v12 = a2;
    v13 = (*(&xmmword_1ED452EC0 + 1))(a2);
    v14 = (v13 - v11);
    if (v13 == v11)
    {
      return v9;
    }

    v15 = v13;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      v16 = v9;
      if (qword_1ED456AC0 < v12)
      {
        qword_1ED456AC0 = v12;
      }

      v17 = a3;
      if (v14 < 1)
      {
        goto LABEL_25;
      }

      v18 = qword_1ED456A48;
      if (qword_1ED456A48 < *(&xmmword_1ED456AF0 + 1) - v14)
      {
        goto LABEL_25;
      }

      if (*(&xmmword_1ED456AF0 + 1) >= 1)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F28(xmmword_1ED456AF0);
          v17 = a3;
          v16 = v9;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
            v17 = a3;
            v16 = v9;
          }
        }
      }

      if (qword_1ED456B00 < 1 || v18 < qword_1ED456B00 - v14)
      {
LABEL_25:
        if (xmmword_1ED452EA0 > 1 && *(&xmmword_1ED452EE0 + 1))
        {
          result = off_1ED452EF0(v16, v15, v17);
        }

        else
        {
          result = off_1ED452EB8(v16, v15, v17);
        }

        if (result)
        {
          v21 = result;
          v22 = xmmword_1ED452EC0(result);
          result = v21;
          v23 = qword_1ED456A48 + v22 - v11;
          qword_1ED456A48 = v23;
          if (v23 > qword_1ED456A98)
          {
            qword_1ED456A98 = v23;
          }
        }

        if (xmmword_1ED456AF0)
        {
          v24 = result;
          xmmword_1ED452F28(xmmword_1ED456AF0);
          return v24;
        }
      }

      else
      {
        result = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v7 = xmmword_1ED452F28;
          goto LABEL_14;
        }
      }
    }

    else if (xmmword_1ED452EA0 < 2 || *(&xmmword_1ED452EE0 + 1) == 0)
    {
      v20 = off_1ED452EB8;

      return v20(v9, v13);
    }

    else
    {
      v25 = off_1ED452EF0;

      return v25(v9, v13, a3);
    }
  }

  else
  {

    return sub_181902484(a2, 2663054284);
  }

  return result;
}

uint64_t sub_181902BE8(uint64_t a1, int a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  return sub_18190287C(a1, a2 & ~(a2 >> 31), a3);
}

void *__cdecl sqlite3_realloc64(void *a1, sqlite3_uint64 a2)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  return sub_18190287C(a1, a2, (v2 >> 2));
}

uint64_t sub_181902CC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sqlite3_initialize();
  if (!a2 || v6)
  {
    return 0;
  }

  return sub_18190287C(a1, a2, a3);
}

void sqlite3_str_vappendf(sqlite3_str *a1, const char *zFormat, va_list a3)
{
  v488 = *MEMORY[0x1E69E9840];
  v468 = a3;
  if (a1 && (v5 = zFormat) != 0)
  {
    v6 = a1;
    v7 = *(a1 + 29);
    if ((v7 & 2) != 0)
    {
      v468 = a3 + 8;
      v8 = *a3;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    *&v10 = 9.22337204e118;
    v11 = 9.99999999e-101;
    v12 = 9.22337204e28;
    v13 = 9.99999996e-11;
    *&v14 = 1.0e-10;
    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
    v16.i64[0] = 0x8080808080808080;
    v16.i64[1] = 0x8080808080808080;
    v467 = *(a1 + 29);
    v466 = v8;
LABEL_10:
    if (*v5 != 37)
    {
      if (!*v5)
      {
        return;
      }

      v17 = 0;
      do
      {
        v18 = v5[++v17];
      }

      while (v18 != 37 && v18 != 0);
      if (v17 <= 0)
      {
        if (v17)
        {
          sub_1819012D0(34353);
          v16.i64[0] = 0x8080808080808080;
          v16.i64[1] = 0x8080808080808080;
          v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
          v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
          v8 = v466;
          v7 = v467;
        }
      }

      else
      {
        v20 = *(v6 + 6);
        if ((v20 + v17) >= *(v6 + 4))
        {
          sub_181906814(v6, v5, v17);
        }

        else
        {
          *(v6 + 6) = v20 + v17;
          memcpy((*(v6 + 1) + v20), v5, v17 & 0x7FFFFFFF);
        }

        v7 = v467;
        v8 = v466;
        v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
        v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
        v16.i64[0] = 0x8080808080808080;
        v16.i64[1] = 0x8080808080808080;
      }

      v9 = v5;
      v5 += v17;
      if (!*v5)
      {
        return;
      }
    }

    v23 = v5[1];
    v22 = v5 + 1;
    v21 = v23;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      LODWORD(v30) = 0;
      v31 = 0xFFFFFFFFLL;
      while (1)
      {
        v33 = v21;
        if (v21 > 0x2Fu)
        {
          if (v21 - 49 < 9)
          {
            v34 = v21 - 48;
            v35 = v22 + 1;
            v33 = v22[1];
            if ((v33 - 48) > 9)
            {
              v37 = v22[1];
            }

            else
            {
              do
              {
                v34 = v33 + 10 * v34 - 48;
                v36 = *++v35;
                v33 = v36;
              }

              while ((v36 - 48) < 0xA);
              v37 = v33;
              v22 = v35 - 1;
            }

            LODWORD(v30) = v34 & 0x7FFFFFFF;
            if (v37 != 46 && v37 != 108)
            {
LABEL_126:
              v71 = 0;
              goto LABEL_127;
            }

            goto LABEL_29;
          }

          if (v21 == 48)
          {
            v25 = 1;
            goto LABEL_29;
          }

          if (v21 == 108)
          {
            v35 = v22 + 1;
            v33 = v22[1];
            if (v33 == 108)
            {
              LOBYTE(v33) = v22[2];
              v71 = 2;
              v35 = v22 + 2;
            }

            else
            {
              v71 = 1;
            }

            v33 = v33;
          }

          else
          {
LABEL_132:
            v71 = 0;
            v35 = v22;
          }

LABEL_127:
          v70 = &unk_181A20207;
          switch(v33)
          {
            case '%':
              v70 = &unk_181A20273;
              break;
            case 'E':
              v70 = &unk_181A2025B;
              break;
            case 'G':
              v70 = &unk_181A20261;
              break;
            case 'Q':
              v70 = &unk_181A20225;
              break;
            case 'T':
              v70 = &unk_181A2027F;
              break;
            case 'X':
              v70 = &unk_181A20249;
              break;
            case 'c':
              v70 = &unk_181A20231;
              break;
            case 'd':
              break;
            case 'e':
              v70 = &unk_181A20255;
              break;
            case 'f':
              v70 = &unk_181A2024F;
              break;
            case 'g':
              v70 = &unk_181A20213;
              break;
            case 'i':
              v70 = &unk_181A20267;
              break;
            case 'n':
              v70 = &unk_181A2026D;
              break;
            case 'o':
              v70 = &unk_181A20237;
              break;
            case 'p':
              v70 = &unk_181A20279;
              break;
            case 'q':
              v70 = &unk_181A2021F;
              break;
            case 's':
              v70 = &unk_181A2020D;
              break;
            case 'u':
              v70 = &unk_181A2023D;
              break;
            case 'w':
              v70 = &unk_181A2022B;
              break;
            case 'x':
              v70 = &unk_181A20243;
              break;
            case 'z':
              v70 = &unk_181A20219;
              break;
            default:
              v70 = &unk_181A20285;
              if (v33 == 83)
              {
                break;
              }

              if (v33 != 114)
              {
                return;
              }

              v70 = &unk_181A2028B;
              break;
          }

          v72 = v70[3];
          switch(v70[3])
          {
            case 0u:
            case 0xFu:
              goto LABEL_184;
            case 1u:
            case 2u:
            case 3u:
              v452 = *&v14;
              v485 = 0u;
              v486 = 0u;
              if ((v7 & 2) != 0)
              {
                v82 = *(v8 + 4);
                v74 = 0.0;
                v75 = *&v10;
                if (*v8 > v82)
                {
                  v83 = *(v8 + 8);
                  *(v8 + 4) = v82 + 1;
                  v84 = *(v83 + 8 * v82);
                  if (v84)
                  {
                    v85 = *(v84 + 20);
                    if ((v85 & 8) != 0)
                    {
                      v74 = *v84;
                    }

                    else if ((v85 & 0x24) != 0)
                    {
                      v74 = *v84;
                    }

                    else if ((v85 & 0x12) != 0)
                    {
                      v338 = v29;
                      v451 = v72;
                      v339 = v27;
                      v340 = v24;
                      v442 = v28;
                      v445 = v26;
                      LODWORD(v26) = v25;
                      v341 = v70;
                      LODWORD(v28) = v31;
                      v342 = sub_18193CF90(v84);
                      LODWORD(v31) = v28;
                      v70 = v341;
                      LODWORD(v25) = v26;
                      LOBYTE(v26) = v445;
                      LOBYTE(v28) = v442;
                      LODWORD(v24) = v340;
                      LOBYTE(v27) = v339;
                      v72 = v451;
                      LOBYTE(v29) = v338;
                      v75 = *&v10;
                      v16.i64[0] = 0x8080808080808080;
                      v16.i64[1] = 0x8080808080808080;
                      v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                      v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                      v7 = v467;
                      v74 = v342;
                    }
                  }

                  else
                  {
                    v154 = v29;
                    v446 = v72;
                    v155 = v27;
                    v156 = v24;
                    v438 = v28;
                    v443 = v26;
                    LODWORD(v26) = v25;
                    v157 = v70;
                    LODWORD(v28) = v31;
                    sub_1819012D0(92272);
                    LODWORD(v31) = v28;
                    v70 = v157;
                    LODWORD(v25) = v26;
                    LOBYTE(v26) = v443;
                    LOBYTE(v28) = v438;
                    LODWORD(v24) = v156;
                    LOBYTE(v27) = v155;
                    v72 = v446;
                    LOBYTE(v29) = v154;
                    v75 = *&v10;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v7 = v467;
                  }
                }
              }

              else
              {
                v73 = v468;
                v468 += 8;
                v74 = *v73;
                v75 = *&v10;
              }

              if (v31 >= 100000000)
              {
                v158 = 100000000;
              }

              else
              {
                v158 = v31;
              }

              if (v31 < 0)
              {
                v158 = 6;
              }

              if (v72 == 3)
              {
                if (v158 <= 1)
                {
                  v162 = 1;
                }

                else
                {
                  v162 = v158;
                }

                v158 = v162;
                v159 = &loc_181A1F000;
                v160 = &loc_181A1F000;
                v161 = &loc_181A1F000;
              }

              else
              {
                v159 = &loc_181A1F000;
                v160 = &loc_181A1F000;
                v161 = &loc_181A1F000;
                if (v72 == 1)
                {
                  v162 = -v158;
                }

                else
                {
                  v162 = v158 + 1;
                }
              }

              if (v26)
              {
                v163 = 26;
              }

              else
              {
                v163 = 16;
              }

              *&v485 = &v485 + 8;
              if (v74 >= 0.0)
              {
                v483 = 43;
                if (v74 == 0.0)
                {
                  v484 = 0x100000001;
                  v164 = "0";
                  *&v485 = "0";
                  *&v14 = v452;
                  goto LABEL_522;
                }
              }

              else
              {
                v483 = 45;
                v74 = -v74;
              }

              if ((~*&v74 & 0x7FF0000000000000) != 0)
              {
                v470 = v74;
                v469 = 0.0;
                if (v74 <= 9.22337204e18)
                {
                  v166 = 0;
                  if (v74 >= 9.22337204e-83)
                  {
                    v167 = 0.0;
                  }

                  else
                  {
                    do
                    {
                      v166 -= 100;
                      v478 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 9.99999995e99 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 9.99999995e99 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 5.15323793e91;
                      v4.i64[0] = v160[342];
                      v472 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 9.99999995e99 - v478 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 9.99999995e99 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 5.15323793e91 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 5.15323793e91 + v469 * v159[341] + v470 * *v4.i64;
                      v470 = v478 + v472;
                      v74 = v478 + v472;
                      v167 = v472 + v478 - (v478 + v472);
                      v469 = v167;
                    }

                    while (v478 + v472 < 9.22337204e-83);
                  }

                  if (v74 < 92233720.4)
                  {
                    do
                    {
                      v166 -= 10;
                      v168 = v161[344];
                      v481 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * v168 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * v168 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 0.0;
                      v475 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * v168 - v481 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * v168 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 0.0 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 0.0 + v469 * v168 + v470 * 0.0;
                      v470 = v481 + v475;
                      v74 = v481 + v475;
                      *v4.i64 = v481 - (v481 + v475);
                      v167 = v475 + *v4.i64;
                      v469 = v167;
                    }

                    while (v481 + v475 < 92233720.4);
                  }

                  while (v74 < 9.22337204e17)
                  {
                    --v166;
                    v482 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 10.0 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 10.0 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 0.0;
                    v4.i32[1] = 0;
                    v476 = COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 10.0 - v482 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 10.0 + COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000) * 0.0 + (v470 - COERCE_DOUBLE(*&v74 & 0xFFFFFFFFFC000000)) * 0.0 + v469 * 10.0 + v470 * 0.0;
                    v470 = v482 + v476;
                    v74 = v482 + v476;
                    v167 = v476 + v482 - (v482 + v476);
                    v469 = v167;
                  }
                }

                else
                {
                  v166 = 0;
                  if (v74 <= v75)
                  {
                    v167 = 0.0;
                  }

                  else
                  {
                    do
                    {
                      v166 += 100;
                      v477 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * v11 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * v11 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 1.18108707e-109;
                      v4.i32[1] = 693223590;
                      v471 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * v11 - v477 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * v11 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 1.18108707e-109 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * 1.18108707e-109 + v469 * 1.0e-100 + v470 * -1.99918998e-117;
                      v470 = v477 + v471;
                      v74 = v477 + v471;
                      v167 = v471 + v477 - (v477 + v471);
                      v469 = v167;
                    }

                    while (v477 + v471 > v75);
                  }

                  if (v74 > v12)
                  {
                    do
                    {
                      v166 += 10;
                      v479 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * v13 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * v13 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 3.99580284e-19;
                      v4.i32[1] = 1008565211;
                      v473 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * v13 - v479 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * v13 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 3.99580284e-19 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * 3.99580284e-19 + v469 * v452 + v470 * -3.64321973e-27;
                      v470 = v479 + v473;
                      v74 = v479 + v473;
                      v167 = v473 + v479 - (v479 + v473);
                      v469 = v167;
                    }

                    while (v479 + v473 > v12);
                  }

                  while (v74 > 9.22337204e18)
                  {
                    ++v166;
                    v480 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 0.0999999996 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * 0.0999999996 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 3.72529035e-10;
                    v4.i32[1] = -1134978663;
                    v474 = COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 0.0999999996 - v480 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * 0.0999999996 + COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000) * 3.72529035e-10 + (v470 - COERCE_DOUBLE(*&v74 & 0x7FFFFFFFFC000000)) * 3.72529035e-10 + v469 * 0.1 + v470 * -5.55111512e-18;
                    v470 = v480 + v474;
                    v74 = v480 + v474;
                    v167 = v474 + v480 - (v480 + v474);
                    v469 = v167;
                  }
                }

                v169 = v167 + v74;
                *v3.i64 = -v167;
                if (v167 < 0.0)
                {
                  v169 = v74 - -v167;
                }

                if (v169)
                {
                  v170 = 23;
                  v171 = &v486 + 15;
                  do
                  {
                    *v171-- = (v169 % 0xA) | 0x30;
                    --v170;
                    v263 = v169 > 9;
                    v169 /= 0xAuLL;
                  }

                  while (v263);
                }

                else
                {
                  v170 = 23;
                }

                v172 = 23 - v170;
                v173 = 23 - v170 + v166;
                v484.i32[0] = 23 - v170;
                v484.i32[1] = v173;
                if (v162 <= 0)
                {
                  v162 = v173 - v162;
                  *&v14 = v452;
                  if (v162)
                  {
                    if (v162 < 1)
                    {
                      goto LABEL_519;
                    }

                    goto LABEL_370;
                  }

                  if (*(&v485 + v170 + 9) >= 53)
                  {
                    *(&v485 + v170-- + 8) = 48;
                    v3.i32[1] = 1;
                    v484 = vadd_s32(v484, 0x100000001);
                    v172 = v484.i32[0];
                    v162 = 1;
                    goto LABEL_370;
                  }
                }

                else
                {
                  *&v14 = v452;
LABEL_370:
                  if (v172 <= v163 && v162 >= v172)
                  {
                    goto LABEL_519;
                  }

                  v174 = v170;
                  v175 = &v485 + v170 + 9;
                  v172 = v162 >= v163 ? v163 : v162;
                  v484.i32[0] = v172;
                  if (v175[v172] < 53)
                  {
                    goto LABEL_519;
                  }

                  v176 = v172 - 1;
                  do
                  {
                    v177 = ++v175[v176];
                    if (v177 < 58)
                    {
                      v172 = v484.i32[0];
                      goto LABEL_519;
                    }

                    v175[v176--] = 48;
                  }

                  while (v176 != -1);
                  --v170;
                  *(v485 + v174) = 49;
                  v3.i32[1] = 1;
                  v484 = vadd_s32(v484, 0x100000001);
                  v172 = v484.i32[0];
                }

LABEL_519:
                v164 = &v485 + v170 + 9;
                *&v485 = v164;
                if (*(&v485 + v170 + v172 + 8) == 48)
                {
                  v290 = &v485 + v172 + v170 + 7;
                  v291 = v172 - 1;
                  do
                  {
                    v484.i32[0] = v291;
                    v292 = *v290--;
                    --v291;
                  }

                  while (v292 == 48);
                }

LABEL_522:
                v165 = 0;
                goto LABEL_523;
              }

              if (v74 == INFINITY)
              {
                v165 = 1;
              }

              else
              {
                v165 = 2;
              }

              v484 = 0;
              v164 = &v485 + 8;
              *&v14 = v452;
LABEL_523:
              if (v165 == 2)
              {
                v78 = 0;
                if (v25)
                {
                  v9 = "null";
                }

                else
                {
                  v9 = "NaN";
                }

                if (v25)
                {
                  LODWORD(v102) = 4;
                }

                else
                {
                  LODWORD(v102) = 3;
                }

                goto LABEL_795;
              }

              if (v165)
              {
                if (!v25)
                {
                  strcpy(__src, "-Inf");
                  v116 = v29;
                  if (v483 == 45)
                  {
                    goto LABEL_570;
                  }

                  v9 = __src + 1;
                  if (v28)
                  {
                    LOBYTE(__src[0]) = v28;
LABEL_570:
                    v9 = __src;
                  }

                  v78 = 0;
                  LODWORD(v102) = strlen(v9) & 0x3FFFFFFF;
LABEL_654:
                  v7 = v467;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v75 = *&v10;
                  LOBYTE(v29) = v116;
                  goto LABEL_795;
                }

                *v164 = 57;
                v484 = 0x3E800000001;
                v293 = 1000;
              }

              else
              {
                v293 = v484.i32[1];
              }

              if (v483 == 45)
              {
                v294 = 45;
              }

              else
              {
                v294 = v28;
              }

              v295 = v27 == 0;
              v297 = v293 < -3 || v293 > v158;
              if (v297)
              {
                v298 = -1;
              }

              else
              {
                v298 = -v293;
              }

              v299 = v298 + v158;
              if (v72 == 3)
              {
                v300 = v297;
              }

              else
              {
                v295 = v26 != 0;
                v300 = v72 == 2;
              }

              if (v72 == 3)
              {
                v301 = v299;
              }

              else
              {
                v301 = v158;
              }

              if (v300)
              {
                v302 = 0;
              }

              else
              {
                v302 = v293 - 1;
              }

              v303 = v30 + v301 + (v302 & ~(v302 >> 31)) + 15 + (v302 + 2) / 3uLL;
              if (v302 < 1)
              {
                v303 = v30 + v301 + (v302 & ~(v302 >> 31)) + 15;
              }

              if (v24)
              {
                v304 = v303;
              }

              else
              {
                v304 = v30 + v301 + (v302 & ~(v302 >> 31)) + 15;
              }

              v444 = v26;
              v450 = v295;
              v454 = v294;
              if (v304 < 513)
              {
                v78 = 0;
                v9 = __src;
              }

              else
              {
                if (*(v6 + 28))
                {
                  return;
                }

                if (v304 > *(v6 + 4))
                {
                  v305 = *(v6 + 5);
                  if (v304 > v305)
                  {
                    *(v6 + 28) = 18;
                    if (v305)
                    {
                      v432 = *(v6 + 29);
                      if ((v432 & 4) != 0)
                      {
                        v433 = *(v6 + 1);
                        if (v433)
                        {
                          sub_181929C84(*v6, v433);
                          v432 = *(v6 + 29);
                        }

                        *(v6 + 29) = v432 & 0xFB;
                      }

LABEL_844:
                      *(v6 + 4) = 0;
                      *(v6 + 6) = 0;
                      *(v6 + 1) = 0;
                    }

                    goto LABEL_845;
                  }
                }

                v440 = v301;
                v434 = v300;
                v436 = v70;
                LODWORD(v26) = v25;
                v459 = v24;
                v306 = v27;
                v307 = v29;
                if (*v6)
                {
                  v308 = sub_181929E8C(*v6, v304, 1162268004);
                }

                else
                {
                  v308 = sub_181902484(v304, 1162268004);
                }

                v9 = v308;
                v7 = v467;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v75 = *&v10;
                LOBYTE(v29) = v307;
                LOBYTE(v27) = v306;
                LODWORD(v24) = v459;
                LODWORD(v25) = v26;
                LOBYTE(v26) = v444;
                v295 = v450;
                v78 = v308;
                v70 = v436;
                v294 = v454;
                v300 = v434;
                v301 = v440;
                if (!v308)
                {
                  goto LABEL_833;
                }
              }

              v309 = v9;
              if (v294)
              {
                *v9 = v294;
                v309 = v9 + 1;
              }

              v310 = 0;
              if (v302 < 0)
              {
                *v309++ = 48;
                v311 = v302 + 1;
              }

              else
              {
                do
                {
                  v312 = v309;
                  if (v310 >= v484.i32[0])
                  {
                    v313 = 48;
                  }

                  else
                  {
                    v313 = *(v485 + v310++);
                  }

                  *v309++ = v313;
                  if (v24 && v302 >= 2 && 3 * (v302 / 3u) == v302)
                  {
                    v309 = v312 + 2;
                    v312[1] = 44;
                  }

                  v263 = v302-- <= 0;
                }

                while (!v263);
                v311 = 0;
              }

              v314 = v26 | v27 | (v301 > 0);
              if (v314)
              {
                *v309++ = 46;
              }

              LODWORD(v315) = v301 - 1;
              if (v301 >= 1 && v311 < 0)
              {
                v437 = v314;
                v316 = v315 >= ~v311;
                if (v315 >= ~v311)
                {
                  v315 = ~v311;
                }

                else
                {
                  v315 = v315;
                }

                v317 = v315 + 1;
                v318 = &v309[v315 + 1];
                if (v316)
                {
                  v319 = v301 + v311;
                }

                else
                {
                  v319 = 0;
                }

                v441 = v319;
                v460 = v78;
                v465 = v29;
                LODWORD(v26) = v25;
                v320 = v70;
                v321 = v300;
                memset(v309, 48, v317);
                v314 = v437;
                v301 = v441;
                v300 = v321;
                v294 = v454;
                v70 = v320;
                LODWORD(v25) = v26;
                LOBYTE(v26) = v444;
                v295 = v450;
                LOBYTE(v29) = v465;
                v78 = v460;
                v75 = *&v10;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v7 = v467;
                v309 = v318;
              }

              if (v301 >= 1)
              {
                v322 = v301 + 1;
                do
                {
                  if (v310 < v484.i32[0])
                  {
                    v323 = *(v485 + v310++);
                  }

                  else
                  {
                    v323 = 48;
                  }

                  *v309++ = v323;
                  --v322;
                }

                while (v322 > 1);
              }

              if (v314)
              {
                v324 = v295;
              }

              else
              {
                v324 = 0;
              }

              if (v324)
              {
                --v309;
                while (1)
                {
                  v325 = *v309;
                  if (v325 != 48)
                  {
                    break;
                  }

                  *v309-- = 0;
                }

                if (v325 == 46)
                {
                  if (v26)
                  {
                    v309[1] = 48;
                    v309 += 2;
                  }

                  else
                  {
                    *v309 = 0;
                  }
                }

                else
                {
                  ++v309;
                }
              }

              if (v300)
              {
                *v309 = a0123456789abcd_0[v70[4]];
                v326 = v484.i32[1] - 1;
                if (v484.i32[1] >= 1)
                {
                  v327 = 43;
                }

                else
                {
                  v327 = 45;
                }

                if (v484.i32[1] < 1)
                {
                  v326 = 1 - v484.i32[1];
                }

                v309[1] = v327;
                if (v326 < 0x64)
                {
                  v328 = v309 + 2;
                }

                else
                {
                  v328 = v309 + 3;
                  v309[2] = v326 / 0x64 + 48;
                  v326 %= 0x64u;
                }

                *v328 = (v326 / 0xAu) | 0x30;
                v309 = v328 + 2;
                v328[1] = (v326 % 0xAu) | 0x30;
              }

              *v309 = 0;
              LODWORD(v102) = v309 - v9;
              if (v25)
              {
                if (!v29)
                {
                  v329 = v30 - v102;
                  if (v30 > v102)
                  {
                    if ((v102 & 0x80000000) != 0)
                    {
                      goto LABEL_637;
                    }

                    if (v329 >= v30)
                    {
                      v330 = v30;
                    }

                    else
                    {
                      v330 = v329;
                    }

                    v331 = v30 - v330 + 1;
                    if (v331 < 8 || (v329 >= v30 ? (v335 = v30) : (v335 = v329), (v336 = v30 - v335, &v9[v30 - v336] > &v9[v30]) || &v9[(v102 & 0x7FFFFFFF) - v336] > &v9[v102 & 0x7FFFFFFF]))
                    {
                      v332 = v30;
                    }

                    else
                    {
                      v332 = v30;
                      if ((v102 & 0x7FFFFFFF) - v30 >= 0x20)
                      {
                        if (v331 >= 0x20)
                        {
                          v337 = v331 & 0xFFFFFFFFFFFFFFE0;
                          v363 = &v9[v30 - 15];
                          v364 = &v9[v102 - 15];
                          v365 = v331 & 0xFFFFFFFFFFFFFFE0;
                          do
                          {
                            v3 = v364[-1];
                            v366 = *v364;
                            *(v363 - 1) = v3;
                            *v363 = v366;
                            v363 -= 32;
                            v364 -= 2;
                            v365 -= 32;
                          }

                          while (v365);
                          if (v331 == v337)
                          {
                            goto LABEL_637;
                          }

                          if ((v331 & 0x18) != 0)
                          {
                            goto LABEL_701;
                          }

                          v332 = v30 - v337;
                        }

                        else
                        {
                          v337 = 0;
LABEL_701:
                          v332 = v30 - (v331 & 0xFFFFFFFFFFFFFFF8);
                          v367 = v337 - (v331 & 0xFFFFFFFFFFFFFFF8);
                          v368 = &v9[v30 - v337 - 7];
                          v369 = &v9[v102 - 7 - v337];
                          do
                          {
                            v370 = *v369;
                            v369 -= 8;
                            *v368 = v370;
                            v368 -= 8;
                            v367 += 8;
                          }

                          while (v367);
                          if (v331 == (v331 & 0xFFFFFFFFFFFFFFF8))
                          {
LABEL_637:
                            if (v30 == v102)
                            {
                              LODWORD(v102) = v30;
                            }

                            else
                            {
                              if (v294)
                              {
                                v333 = v9 + 1;
                              }

                              else
                              {
                                v333 = v9;
                              }

                              v334 = v29;
                              memset(v333, 48, (~v309 + v30 + v9) + 1);
                              LOBYTE(v29) = v334;
                              v75 = *&v10;
                              v16.i64[0] = 0x8080808080808080;
                              v16.i64[1] = 0x8080808080808080;
                              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                              v7 = v467;
                              LODWORD(v102) = v30;
                            }

                            goto LABEL_795;
                          }
                        }
                      }
                    }

                    do
                    {
                      v9[v332] = v9[v102 - v30 + v332];
                      v263 = v332-- <= v329;
                    }

                    while (!v263);
                    goto LABEL_637;
                  }
                }
              }

LABEL_795:
              v414 = (v30 - v102);
              if (v414 < 1)
              {
                *&v10 = v75;
                if (!v9)
                {
                  goto LABEL_826;
                }

                if (v102 > 0)
                {
                  goto LABEL_812;
                }

                if (!v102)
                {
                  goto LABEL_826;
                }

                goto LABEL_819;
              }

              if (!v29)
              {
                if (*(v6 + 6) + v414 < *(v6 + 4) || (v416 = v75, v417 = sub_181906424(v6, (v30 - v102)), v75 = v416, v16.i64[0] = 0x8080808080808080, v16.i64[1] = 0x8080808080808080, v15.i64[0] = 0xC0C0C0C0C0C0C0C0, v15.i64[1] = 0xC0C0C0C0C0C0C0C0, v7 = v467, LODWORD(v414) = v417, v417 >= 1))
                {
                  v418 = v414 + 1;
                  do
                  {
                    v419 = *(v6 + 1);
                    v420 = *(v6 + 6);
                    *(v6 + 6) = v420 + 1;
                    *(v419 + v420) = 32;
                    --v418;
                  }

                  while (v418 > 1);
                }

                if (v102 >= 1 && v9)
                {
                  *&v10 = v75;
LABEL_812:
                  v421 = *(v6 + 6);
                  if ((v421 + v102) >= *(v6 + 4))
                  {
                    sub_181906814(v6, v9, v102);
                  }

                  else
                  {
                    *(v6 + 6) = v421 + v102;
                    memcpy((*(v6 + 1) + v421), v9, v102);
                  }

                  v7 = v467;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  goto LABEL_826;
                }

                *&v10 = v75;
                if (!v102)
                {
                  goto LABEL_826;
                }

LABEL_819:
                sub_1819012D0(34353);
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v7 = v467;
                goto LABEL_826;
              }

              if (v102 >= 1 && v9)
              {
                *&v10 = v75;
                v415 = *(v6 + 6);
                if ((v415 + v102) >= *(v6 + 4))
                {
                  sub_181906814(v6, v9, v102);
                }

                else
                {
                  *(v6 + 6) = v415 + v102;
                  memcpy((*(v6 + 1) + v415), v9, v102);
                }

                v7 = v467;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
              }

              else
              {
                *&v10 = v75;
                if (v102)
                {
                  sub_1819012D0(34353);
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v7 = v467;
                }
              }

              if (*(v6 + 6) + v414 < *(v6 + 4) || (v422 = sub_181906424(v6, (v30 - v102)), v16.i64[0] = 0x8080808080808080, v16.i64[1] = 0x8080808080808080, v15.i64[0] = 0xC0C0C0C0C0C0C0C0, v15.i64[1] = 0xC0C0C0C0C0C0C0C0, v7 = v467, LODWORD(v414) = v422, v422 >= 1))
              {
                v423 = v414 + 1;
                do
                {
                  v424 = *(v6 + 1);
                  v425 = *(v6 + 6);
                  *(v6 + 6) = v425 + 1;
                  *(v424 + v425) = 32;
                  --v423;
                }

                while (v423 > 1);
              }

LABEL_826:
              if (v78)
              {
                sub_181929C84(*v6, v78);
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v7 = v467;
              }

              v5 = v35 + 1;
              v8 = v466;
              goto LABEL_10;
            case 4u:
              if ((v7 & 2) != 0)
              {
                goto LABEL_297;
              }

              v78 = 0;
              LODWORD(v30) = 0;
              LODWORD(v102) = 0;
              v103 = v468;
              v468 += 8;
              **v103 = *(v6 + 6);
              v75 = *&v10;
              goto LABEL_795;
            case 5u:
            case 6u:
              if ((v7 & 2) != 0)
              {
                v120 = *(v8 + 4);
                v75 = *&v10;
                if (*v8 <= v120)
                {
                  v122 = 0;
                  v4.i32[0] = 8388736;
                  v4.i16[2] = 128;
                  v4.i16[3] = 128;
                  v81.i64[0] = 0x100000001;
                  v81.i64[1] = 0x100000001;
                }

                else
                {
                  v121 = *(v8 + 8);
                  *(v8 + 4) = v120 + 1;
                  v122 = *(v121 + 8 * v120);
                  v4.i32[0] = 8388736;
                  v4.i16[2] = 128;
                  v4.i16[3] = 128;
                  v81.i64[0] = 0x100000001;
                  v81.i64[1] = 0x100000001;
                  if (v122)
                  {
                    v123 = *(v122 + 20);
                    if ((~v123 & 0x202) != 0 || *(v122 + 22) != 1)
                    {
                      if (v123)
                      {
                        v122 = 0;
                      }

                      else
                      {
                        v178 = v29;
                        v179 = v31;
                        v122 = sub_18193CB70(v122, 1);
                        LODWORD(v31) = v179;
                        LOBYTE(v29) = v178;
                        v75 = *&v10;
                        v16.i64[0] = 0x8080808080808080;
                        v16.i64[1] = 0x8080808080808080;
                        v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                        v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                        v81.i64[0] = 0x100000001;
                        v81.i64[1] = 0x100000001;
                        v4.i32[0] = 8388736;
                        v4.i16[2] = 128;
                        v4.i16[3] = 128;
                        v7 = v467;
                      }
                    }

                    else
                    {
                      v122 = *(v122 + 8);
                    }
                  }
                }

                v78 = 0;
                if (v122)
                {
                  v80 = v122;
                }

                else
                {
                  v80 = &byte_181A2878D;
                }
              }

              else
              {
                v78 = 0;
                v79 = v468;
                v468 += 8;
                v9 = *v79;
                if (*v79)
                {
                  v80 = *v79;
                }

                else
                {
                  v80 = &byte_181A2878D;
                }

                v75 = *&v10;
                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                if (v72 == 6 && v9)
                {
                  if (!*(v6 + 6) && *(v6 + 5) && !v30 && (v31 & 0x80000000) != 0)
                  {
                    if (*(v6 + 28))
                    {
                      v146 = v29;
                      v78 = *v79;
                      v80 = *v79;
                      goto LABEL_283;
                    }

                    *(v6 + 1) = v9;
                    v359 = *v6;
                    if (*v6 && *(v359 + 520) > v9)
                    {
                      if (*(v359 + 496) <= v9)
                      {
                        v185 = v29;
                        v360 = 128;
                        goto LABEL_693;
                      }

                      if (*(v359 + 504) <= v9)
                      {
                        v185 = v29;
                        v360 = *(v359 + 438);
                        goto LABEL_693;
                      }
                    }

                    v185 = v29;
                    v360 = xmmword_1ED452EC0(v9);
LABEL_693:
                    *(v6 + 4) = v360;
                    v78 = 0;
                    LODWORD(v30) = 0;
                    LODWORD(v102) = 0;
                    *(v6 + 6) = strlen(v9) & 0x7FFFFFFF;
                    *(v6 + 29) |= 4u;
LABEL_399:
                    v7 = v467;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    v75 = *&v10;
                    LOBYTE(v29) = v185;
                    goto LABEL_795;
                  }

                  v78 = *v79;
                  v80 = *v79;
                }
              }

              if ((v31 & 0x80000000) != 0)
              {
                v146 = v29;
                v9 = v80;
LABEL_283:
                LODWORD(v102) = strlen(v9) & 0x7FFFFFFF;
                v7 = v467;
                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v75 = *&v10;
                LOBYTE(v29) = v146;
                goto LABEL_772;
              }

              if (!v26)
              {
                if (v31)
                {
                  v102 = 0;
                  while (v80[v102])
                  {
                    if (v31 == ++v102)
                    {
                      LODWORD(v102) = v31;
                      goto LABEL_794;
                    }
                  }
                }

                else
                {
                  LODWORD(v102) = 0;
                }

                goto LABEL_794;
              }

              v144 = v80;
              if (v31)
              {
                do
                {
                  if (!*v144)
                  {
                    break;
                  }

                  if (*v144 < 0xC0u)
                  {
                    ++v144;
                  }

                  else
                  {
                    do
                    {
                      v145 = *++v144;
                    }

                    while ((v145 & 0xC0) == 0x80);
                  }

                  v263 = v31 <= 1;
                  LODWORD(v31) = v31 - 1;
                }

                while (!v263);
              }

              LODWORD(v102) = v144 - v80;
              LOBYTE(v26) = 1;
              goto LABEL_772;
            case 7u:
              v78 = 0;
              LOBYTE(__src[0]) = 37;
              v9 = __src;
              LODWORD(v102) = 1;
              v75 = *&v10;
              goto LABEL_795;
            case 8u:
              if ((v7 & 2) == 0)
              {
                v89 = v468;
                v468 += 8;
                v90 = *v89;
                v75 = *&v10;
                if (v90 <= 0x7F)
                {
                  LOBYTE(__src[0]) = v90;
LABEL_424:
                  LODWORD(v102) = 1;
                  v4.i32[0] = 8388736;
                  v4.i16[2] = 128;
                  v4.i16[3] = 128;
                  v81.i64[0] = 0x100000001;
                  v81.i64[1] = 0x100000001;
                  goto LABEL_425;
                }

                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                if (v90 <= 0x7FF)
                {
                  LOBYTE(__src[0]) = (v90 >> 6) | 0xC0;
                  BYTE1(__src[0]) = v90 & 0x3F | 0x80;
                  LODWORD(v102) = 2;
                  goto LABEL_425;
                }

                if (!HIWORD(v90))
                {
                  LOBYTE(__src[0]) = (v90 >> 12) | 0xE0;
                  BYTE1(__src[0]) = (v90 >> 6) & 0x3F | 0x80;
                  BYTE2(__src[0]) = v90 & 0x3F | 0x80;
                  LODWORD(v102) = 3;
                  goto LABEL_425;
                }

                LOBYTE(__src[0]) = (v90 >> 18) & 7 | 0xF0;
                BYTE1(__src[0]) = (v90 >> 12) & 0x3F | 0x80;
                BYTE2(__src[0]) = (v90 >> 6) & 0x3F | 0x80;
                HIBYTE(__src[0]) = v90 & 0x3F | 0x80;
                goto LABEL_666;
              }

              v139 = *(v8 + 4);
              v75 = *&v10;
              if (*v8 <= v139)
              {
                goto LABEL_423;
              }

              v140 = *(v8 + 8);
              *(v8 + 4) = v139 + 1;
              v141 = *(v140 + 8 * v139);
              if (!v141)
              {
                goto LABEL_423;
              }

              v142 = *(v141 + 20);
              if ((~v142 & 0x202) != 0 || *(v141 + 22) != 1)
              {
                if (v142)
                {
                  goto LABEL_423;
                }

                v226 = v29;
                v227 = v31;
                v143 = sub_18193CB70(v141, 1);
                LODWORD(v31) = v227;
                LOBYTE(v29) = v226;
                v75 = *&v10;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v7 = v467;
              }

              else
              {
                v143 = *(v141 + 8);
              }

              if (!v143)
              {
LABEL_423:
                LOBYTE(__src[0]) = 0;
                goto LABEL_424;
              }

              LOBYTE(__src[0]) = *v143;
              v4.i32[0] = 8388736;
              v4.i16[2] = 128;
              v4.i16[3] = 128;
              v81.i64[0] = 0x100000001;
              v81.i64[1] = 0x100000001;
              if (LOBYTE(__src[0]) >= 0xC0u && (v143[1] & 0xC0) == 0x80)
              {
                BYTE1(__src[0]) = v143[1];
                if ((v143[2] & 0xC0) == 0x80)
                {
                  BYTE2(__src[0]) = v143[2];
                  if ((v143[3] & 0xC0) == 0x80)
                  {
                    HIBYTE(__src[0]) = v143[3];
LABEL_666:
                    LODWORD(v102) = 4;
                    goto LABEL_425;
                  }

                  LODWORD(v102) = 3;
                }

                else
                {
                  LODWORD(v102) = 2;
                }
              }

              else
              {
                LODWORD(v102) = 1;
              }

LABEL_425:
              if (v31 >= 2)
              {
                v228 = v31 - 1;
                LODWORD(v30) = v30 - (v31 - 1);
                if (v30 >= 2 && v29 == 0)
                {
                  v230 = (v30 - 1);
                  if (*(v6 + 6) + v230 < *(v6 + 4) || (v231 = v29, v232 = v31, v233 = sub_181906424(v6, v230), LODWORD(v31) = v232, LOBYTE(v29) = v231, LODWORD(v230) = v233, v233 >= 1))
                  {
                    v234 = v230 + 1;
                    do
                    {
                      v235 = *(v6 + 1);
                      v236 = *(v6 + 6);
                      *(v6 + 6) = v236 + 1;
                      *(v235 + v236) = 32;
                      --v234;
                    }

                    while (v234 > 1);
                  }

                  LODWORD(v30) = 0;
                }

                v237 = v31;
                v238 = v29;
                v239 = *(v6 + 6);
                if ((v239 + v102) >= *(v6 + 4))
                {
                  sub_181906814(v6, __src, v102);
                }

                else
                {
                  *(v6 + 6) = v239 + v102;
                  memcpy((*(v6 + 1) + v239), __src, v102);
                }

                v7 = v467;
                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v75 = *&v10;
                LOBYTE(v29) = v238;
                if (v237 != 2)
                {
                  v240 = 1;
                  while (1)
                  {
                    if (v240 >= (v228 - 1))
                    {
                      v26 = (v228 - 1);
                    }

                    else
                    {
                      v26 = v240;
                    }

                    v241 = v26 * v102;
                    if (v241 + *(v6 + 6) >= *(v6 + 4))
                    {
                      sub_181906424(v6, v26 * v102);
                      LOBYTE(v29) = v238;
                      v75 = *&v10;
                      v16.i64[0] = 0x8080808080808080;
                      v16.i64[1] = 0x8080808080808080;
                      v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                      v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                      v81.i64[0] = 0x100000001;
                      v81.i64[1] = 0x100000001;
                      v4.i32[0] = 8388736;
                      v4.i16[2] = 128;
                      v4.i16[3] = 128;
                      v7 = v467;
                    }

                    if (*(v6 + 28))
                    {
                      break;
                    }

                    v242 = *(v6 + 1);
                    if (v241 < 1 || v242 == 0)
                    {
                      if (v241)
                      {
                        sub_1819012D0(34353);
                        LOBYTE(v29) = v238;
                        v75 = *&v10;
                        v16.i64[0] = 0x8080808080808080;
                        v16.i64[1] = 0x8080808080808080;
                        v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                        v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                        v81.i64[0] = 0x100000001;
                        v81.i64[1] = 0x100000001;
                        v4.i32[0] = 8388736;
                        v4.i16[2] = 128;
                        v4.i16[3] = 128;
                        v7 = v467;
                      }
                    }

                    else
                    {
                      v244 = *(v6 + 6);
                      v245 = v244 - v241;
                      if ((v244 + v241) < *(v6 + 4))
                      {
                        *(v6 + 6) = v244 + v241;
                        memcpy((v242 + v244), (v242 + v245), v241 & 0x7FFFFFFF);
                      }

                      else
                      {
                        sub_181906814(v6, (v242 + v245), v26 * v102);
                      }

                      v7 = v467;
                      v4.i32[0] = 8388736;
                      v4.i16[2] = 128;
                      v4.i16[3] = 128;
                      v81.i64[0] = 0x100000001;
                      v81.i64[1] = 0x100000001;
                      v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                      v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                      v16.i64[0] = 0x8080808080808080;
                      v16.i64[1] = 0x8080808080808080;
                      v75 = *&v10;
                      LOBYTE(v29) = v238;
                    }

                    v228 -= v26;
                    v240 = 2 * v26;
                    v80 = __src;
                    LOBYTE(v26) = 1;
                    if (v228 <= 1)
                    {
                      v78 = 0;
                      goto LABEL_772;
                    }
                  }
                }
              }

              v78 = 0;
              v80 = __src;
              LOBYTE(v26) = 1;
              goto LABEL_772;
            case 9u:
            case 0xAu:
            case 0xEu:
              if ((v7 & 2) == 0)
              {
                v76 = v468;
                v468 += 8;
                v77 = *v76;
LABEL_228:
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                goto LABEL_229;
              }

              v86 = *(v8 + 4);
              if (*v8 <= v86)
              {
                v77 = 0;
                goto LABEL_228;
              }

              v87 = *(v8 + 8);
              *(v8 + 4) = v86 + 1;
              v77 = *(v87 + 8 * v86);
              v81.i64[0] = 0x100000001;
              v81.i64[1] = 0x100000001;
              if (v77)
              {
                v88 = *(v77 + 20);
                if ((~v88 & 0x202) != 0 || *(v77 + 22) != 1)
                {
                  if (v88)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v151 = v29;
                    v152 = v27;
                    v153 = v31;
                    v77 = sub_18193CB70(v77, 1);
                    LODWORD(v31) = v153;
                    LOBYTE(v27) = v152;
                    LOBYTE(v29) = v151;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v81.i64[0] = 0x100000001;
                    v81.i64[1] = 0x100000001;
                    v7 = v467;
                  }
                }

                else
                {
                  v77 = *(v77 + 8);
                }
              }

LABEL_229:
              v124 = "(NULL)";
              if (v72 == 10)
              {
                v124 = "NULL";
              }

              if (v77)
              {
                v125 = v72 == 10;
              }

              else
              {
                v125 = 0;
              }

              if (v77)
              {
                v126 = v77;
              }

              else
              {
                v126 = v124;
              }

              if (v72 == 14)
              {
                v127 = 34;
              }

              else
              {
                v127 = 39;
              }

              if (v27)
              {
                v128 = v72 == 14;
              }

              else
              {
                v128 = 1;
              }

              if (v31)
              {
                v129 = 0;
                v130 = 0;
                v131 = v31;
                while (1)
                {
                  v133 = v126->i8[v130];
                  if (!v126->i8[v130])
                  {
                    break;
                  }

                  if (v127 == v133)
                  {
                    ++v129;
                  }

                  if (v26 && (v133 & 0xC0) == 0xC0)
                  {
                    do
                    {
                      v132 = v130 + 1;
                      v134 = v126->i8[++v130] & 0xC0;
                    }

                    while (v134 == 128);
                  }

                  else
                  {
                    v132 = v130 + 1;
                  }

                  v130 = v132;
                  if (!--v131)
                  {
                    goto LABEL_257;
                  }
                }

                v132 = v130;
LABEL_257:
                if (v128)
                {
                  v135 = 1;
                  v75 = *&v10;
                  goto LABEL_735;
                }

                if (v132 < 1)
                {
                  v137 = 0;
                  v136 = 0;
                }

                else
                {
                  if (v132 < 4)
                  {
                    v136 = 0;
                    v137 = 0;
                    v138 = 0;
                    goto LABEL_722;
                  }

                  if (v132 < 0x20)
                  {
                    v136 = 0;
                    v137 = 0;
                    v138 = 0;
LABEL_658:
                    v343 = v138;
                    v344 = v136;
                    v138 = v132 & 0x7FFFFFFFFFFFFFFCLL;
                    v3 = v137;
                    v345 = &v126->i8[v343];
                    v346 = v343 - (v132 & 0x7FFFFFFFFFFFFFFCLL);
                    do
                    {
                      v347 = *v345;
                      v345 += 4;
                      v4.i32[0] = v347;
                      v348 = vmovl_u8(*v4.i8).u64[0];
                      v344 = vaddq_s32(v344, vandq_s8(vmovl_u16(vcgt_u16(0x20002000200020, v348)), v81));
                      v4 = vandq_s8(vmovl_u16(vceq_s16(v348, 0x5C005C005C005CLL)), v81);
                      v3 = vaddq_s32(v3, v4);
                      v346 += 4;
                    }

                    while (v346);
                    v136 = vaddvq_s32(v344);
                    v137 = vaddvq_s32(v3);
                    goto LABEL_727;
                  }

                  v435 = v13;
                  v439 = v11;
                  v457 = v12;
                  v192 = 0uLL;
                  v138 = v132 & 0x7FFFFFFFFFFFFFE0;
                  v193 = 0uLL;
                  v194 = v126 + 1;
                  v195 = 0uLL;
                  v196 = v132 & 0x7FFFFFFFFFFFFFE0;
                  v197 = 0uLL;
                  v198 = 0uLL;
                  v199 = 0uLL;
                  v200 = 0uLL;
                  v201 = 0uLL;
                  v202 = 0uLL;
                  v203.i64[0] = 0x100000001;
                  v203.i64[1] = 0x100000001;
                  v204 = 0uLL;
                  v205.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
                  v205.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
                  v206.i64[0] = 0x2020202020202020;
                  v206.i64[1] = 0x2020202020202020;
                  v207 = 0uLL;
                  v208 = 0uLL;
                  v209 = 0uLL;
                  v210 = 0uLL;
                  v211 = 0uLL;
                  v212 = 0uLL;
                  do
                  {
                    v213 = v194[-1];
                    v214 = vcgtq_u8(v206, v213);
                    v215 = vmovl_u8(*v214.i8);
                    v216 = vmovl_high_u8(v214);
                    v217 = vcgtq_u8(v206, *v194);
                    v218 = vmovl_u8(*v217.i8);
                    v219 = vmovl_high_u8(v217);
                    v197 = vaddq_s32(v197, vandq_s8(vmovl_high_u16(v216), v203));
                    v195 = vaddq_s32(v195, vandq_s8(vmovl_u16(*v216.i8), v203));
                    v193 = vaddq_s32(v193, vandq_s8(vmovl_high_u16(v215), v203));
                    v192 = vaddq_s32(v192, vandq_s8(vmovl_u16(*v215.i8), v203));
                    v201 = vaddq_s32(v201, vandq_s8(vmovl_high_u16(v219), v203));
                    v200 = vaddq_s32(v200, vandq_s8(vmovl_u16(*v219.i8), v203));
                    v199 = vaddq_s32(v199, vandq_s8(vmovl_high_u16(v218), v203));
                    v198 = vaddq_s32(v198, vandq_s8(vmovl_u16(*v218.i8), v203));
                    v220 = vceqq_s8(v213, v205);
                    v221 = vmovl_u8(*v220.i8);
                    v222 = vmovl_high_u8(v220);
                    v223 = vceqq_s8(*v194, v205);
                    v224 = vmovl_u8(*v223.i8);
                    v225 = vmovl_high_u8(v223);
                    v208 = vaddq_s32(v208, vandq_s8(vmovl_high_u16(v222), v203));
                    v207 = vaddq_s32(v207, vandq_s8(vmovl_u16(*v222.i8), v203));
                    v204 = vaddq_s32(v204, vandq_s8(vmovl_high_u16(v221), v203));
                    v202 = vaddq_s32(v202, vandq_s8(vmovl_u16(*v221.i8), v203));
                    v212 = vaddq_s32(v212, vandq_s8(vmovl_high_u16(v225), v203));
                    v211 = vaddq_s32(v211, vandq_s8(vmovl_u16(*v225.i8), v203));
                    v210 = vaddq_s32(v210, vandq_s8(vmovl_high_u16(v224), v203));
                    v194 += 2;
                    v209 = vaddq_s32(v209, vandq_s8(vmovl_u16(*v224.i8), v203));
                    v196 -= 32;
                  }

                  while (v196);
                  v136 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v198, v192), vaddq_s32(v200, v195)), vaddq_s32(vaddq_s32(v199, v193), vaddq_s32(v201, v197))));
                  v4 = vaddq_s32(v211, v207);
                  v3 = vaddq_s32(vaddq_s32(v209, v202), v4);
                  v137 = vaddvq_s32(vaddq_s32(v3, vaddq_s32(vaddq_s32(v210, v204), vaddq_s32(v212, v208))));
                  if (v132 == v138)
                  {
                    v75 = *&v10;
                    v12 = v457;
                    v81.i64[0] = 0x100000001;
                    v81.i64[1] = 0x100000001;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    v13 = v435;
                    v11 = v439;
                    goto LABEL_729;
                  }

                  v12 = v457;
                  v81.i64[0] = 0x100000001;
                  v81.i64[1] = 0x100000001;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v13 = v435;
                  v11 = v439;
                  if ((v132 & 0x1C) != 0)
                  {
                    goto LABEL_658;
                  }

                  do
                  {
LABEL_722:
                    v372 = v126->u8[v138];
                    if (v372 < 0x20)
                    {
                      ++v136;
                    }

                    if (v372 == 92)
                    {
                      ++v137;
                    }

                    ++v138;
LABEL_727:
                    ;
                  }

                  while (v132 != v138);
                }
              }

              else
              {
                v132 = 0;
                if (v128)
                {
                  v135 = 1;
                  v129 = 0;
                  v75 = *&v10;
                  goto LABEL_735;
                }

                v137 = 0;
                v136 = 0;
                v129 = 0;
              }

              v75 = *&v10;
LABEL_729:
              if (v72 == 9 || v136)
              {
                v135 = 0;
                v129 += 5 * v136 + v137;
                if (v72 == 10)
                {
                  v129 += 10;
                }

                v125 = 2 * (v72 == 10);
              }

              else
              {
                v135 = 1;
              }

LABEL_735:
              v373 = v132 + v129 + 3;
              if (v373 < 513)
              {
                v377 = 0;
                v80 = __src;
                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
LABEL_744:
                if (v125)
                {
                  if (v125 == 2)
                  {
                    *v80 = 0x2728727473696E75;
                    v378 = 8;
                  }

                  else
                  {
                    *v80 = 39;
                    v378 = 1;
                  }
                }

                else
                {
                  v378 = 0;
                }

                v102 = v378;
                if (v135)
                {
                  if (v132 >= 1)
                  {
                    do
                    {
                      v380 = v126->i8[0];
                      v126 = (v126 + 1);
                      v379 = v380;
                      v102 = v378 + 1;
                      v80[v378] = v380;
                      if (v127 == v380)
                      {
                        v80[v102] = v379;
                        v102 = v378 + 2;
                      }

                      v378 = v102;
                      --v132;
                    }

                    while (v132);
                  }

                  goto LABEL_756;
                }

                if (v132 < 1)
                {
LABEL_756:
                  if (v125)
                  {
                    v381 = v102 + 1;
                    v80[v102] = 39;
                    v78 = v377;
                    if (v125 != 2)
                    {
                      LODWORD(v102) = v102 + 1;
                      v80[v381] = 0;
                      goto LABEL_772;
                    }

                    v102 += 2;
                    v80[v381] = 41;
                  }

                  else
                  {
                    v78 = v377;
                  }

                  v80[v102] = 0;
LABEL_772:
                  if (!v26 || v30 < 1 || v102 < 1)
                  {
                    goto LABEL_794;
                  }

                  if (v102 < 4)
                  {
                    v387 = v102;
                    goto LABEL_790;
                  }

                  if (v102 >= 0x20)
                  {
                    v389 = v75;
                    v388 = v102 & 0x7FFFFFE0;
                    v390 = 0uLL;
                    v391 = v30;
                    v392 = &v80[v102 - 16];
                    v393 = v388;
                    v394 = 0uLL;
                    v395 = 0uLL;
                    v396 = 0uLL;
                    v397 = 0uLL;
                    v398.i64[0] = 0x100000001;
                    v398.i64[1] = 0x100000001;
                    v399 = 0uLL;
                    v400 = 0uLL;
                    do
                    {
                      v401 = vrev64q_s8(vandq_s8(*v392, v15));
                      v402 = vrev64q_s8(vandq_s8(v392[-1], v15));
                      v403 = vceqq_s8(vextq_s8(v401, v401, 8uLL), v16);
                      v404 = vmovl_u8(*v403.i8);
                      v405 = vmovl_high_u8(v403);
                      v406 = vceqq_s8(vextq_s8(v402, v402, 8uLL), v16);
                      v407 = vmovl_u8(*v406.i8);
                      v408 = vmovl_high_u8(v406);
                      v395 = vaddq_s32(v395, vandq_s8(vmovl_high_u16(v405), v398));
                      v394 = vaddq_s32(v394, vandq_s8(vmovl_u16(*v405.i8), v398));
                      v390 = vaddq_s32(v390, vandq_s8(vmovl_high_u16(v404), v398));
                      v391 = vaddq_s32(v391, vandq_s8(vmovl_u16(*v404.i8), v398));
                      v400 = vaddq_s32(v400, vandq_s8(vmovl_high_u16(v408), v398));
                      v399 = vaddq_s32(v399, vandq_s8(vmovl_u16(*v408.i8), v398));
                      v397 = vaddq_s32(v397, vandq_s8(vmovl_high_u16(v407), v398));
                      v396 = vaddq_s32(v396, vandq_s8(vmovl_u16(*v407.i8), v398));
                      v392 -= 2;
                      v393 -= 32;
                    }

                    while (v393);
                    v4 = vaddq_s32(v399, v394);
                    v3 = vaddq_s32(vaddq_s32(v397, v390), vaddq_s32(v400, v395));
                    LODWORD(v30) = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v396, v391), v4), v3));
                    if (v388 == v102)
                    {
                      v9 = v80;
                      v75 = v389;
                      goto LABEL_795;
                    }

                    v4.i32[0] = 8388736;
                    v4.i16[2] = 128;
                    v4.i16[3] = 128;
                    v81.i64[0] = 0x100000001;
                    v81.i64[1] = 0x100000001;
                    if ((v102 & 0x1C) == 0)
                    {
                      v387 = v102 & 0x1F;
                      v75 = v389;
                      goto LABEL_790;
                    }

                    v75 = v389;
                  }

                  else
                  {
                    v388 = 0;
                  }

                  v387 = v102 & 3;
                  v409 = v30;
                  v410 = v102 - v388 - 4;
                  v411 = v388 - (v102 & 0x7FFFFFFC);
                  do
                  {
                    v3.i32[0] = *&v80[v410];
                    v3 = vandq_s8(vmovl_u16(vceq_s16(vrev64_s16((vmovl_u8(*v3.i8).u64[0] & 0xFFC0FFC0FFC0FFC0)), *v4.i8)), v81);
                    v409 = vaddq_s32(v409, v3);
                    v410 -= 4;
                    v411 += 4;
                  }

                  while (v411);
                  LODWORD(v30) = vaddvq_s32(v409);
                  if ((v102 & 0x7FFFFFFC) == v102)
                  {
LABEL_794:
                    v9 = v80;
                    goto LABEL_795;
                  }

LABEL_790:
                  v412 = v387 - 1;
                  do
                  {
                    if ((v80[v412] & 0xC0) == 0x80)
                    {
                      LODWORD(v30) = v30 + 1;
                    }

                    v413 = v412-- + 1;
                  }

                  while (v413 > 1);
                  goto LABEL_794;
                }

                while (1)
                {
                  v384 = v126->i8[0];
                  v126 = (v126 + 1);
                  v383 = v384;
                  v385 = v384;
                  v102 = v378 + 1;
                  v80[v378] = v384;
                  if (v127 == v384 || v385 == 92)
                  {
                    v382 = 2;
                  }

                  else
                  {
                    if (v385 > 0x1F)
                    {
                      goto LABEL_761;
                    }

                    *&v80[v378] = 808482140;
                    if (v385 <= 0xF)
                    {
                      v386 = 48;
                    }

                    else
                    {
                      v386 = 49;
                    }

                    v102 = v378 + 5;
                    v80[v378 + 4] = v386;
                    LOBYTE(v385) = a0123456789abcd[v383 & 0xF];
                    v382 = 6;
                  }

                  v80[v102] = v385;
                  v102 = v382 + v378;
LABEL_761:
                  v378 = v102;
                  if (!--v132)
                  {
                    goto LABEL_756;
                  }
                }
              }

              if (*(v6 + 28))
              {
                return;
              }

              v374 = v75;
              if (v373 > *(v6 + 4) && (v257 = *(v6 + 5), v373 > v257))
              {
LABEL_839:
                *(v6 + 28) = 18;
                if (v257)
                {
                  v429 = *(v6 + 29);
                  if ((v429 & 4) != 0)
                  {
                    v430 = *(v6 + 1);
                    if (v430)
                    {
                      sub_181929C84(*v6, v430);
                      v429 = *(v6 + 29);
                    }

                    *(v6 + 29) = v429 & 0xFB;
                  }

                  goto LABEL_844;
                }

LABEL_845:
                if (*v6)
                {
                  v431 = *(*v6 + 344);
                  if (v431)
                  {
                    *(v431 + 24) = 18;
                    ++*(v431 + 52);
                  }
                }
              }

              else
              {
                v455 = v135;
                v461 = v125;
                v375 = v29;
                if (*v6)
                {
                  v376 = sub_181929E8C(*v6, v373, 1162268004);
                }

                else
                {
                  v376 = sub_181902484(v373, 1162268004);
                }

                v80 = v376;
                v7 = v467;
                v4.i32[0] = 8388736;
                v4.i16[2] = 128;
                v4.i16[3] = 128;
                v81.i64[0] = 0x100000001;
                v81.i64[1] = 0x100000001;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v75 = v374;
                LOBYTE(v29) = v375;
                v377 = v376;
                v125 = v461;
                v135 = v455;
                if (v376)
                {
                  goto LABEL_744;
                }

LABEL_833:
                *(v6 + 28) = 7;
                if (*(v6 + 5))
                {
                  v427 = *(v6 + 29);
                  if ((v427 & 4) != 0)
                  {
                    v428 = *(v6 + 1);
                    if (v428)
                    {
                      sub_181929C84(*v6, v428);
                      v427 = *(v6 + 29);
                    }

                    *(v6 + 29) = v427 & 0xFB;
                  }

                  *(v6 + 4) = 0;
                  *(v6 + 6) = 0;
                  *(v6 + 1) = 0;
                }
              }

              return;
            case 0xBu:
              if ((*(v6 + 29) & 1) == 0)
              {
                return;
              }

              v95 = v468;
              v468 += 8;
              v96 = *v95;
              if (v27)
              {
                if (!v96 || (*(v96 + 5) & 8) != 0)
                {
LABEL_297:
                  v78 = 0;
                  LODWORD(v30) = 0;
                  LODWORD(v102) = 0;
                  v75 = *&v10;
                  goto LABEL_795;
                }

                v97 = v96[1];
                if (v97)
                {
                  v98 = v29;
                  v99 = strlen(v96[1]);
                  LOBYTE(v29) = v98;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v7 = v467;
                  v100 = v99 & 0x3FFFFFFF;
                  if ((v99 & 0x3FFFFFFF) != 0)
                  {
                    v101 = *(v6 + 6);
                    if (v101 + v100 >= *(v6 + 4))
                    {
                      sub_181906814(v6, v97, v100);
                    }

                    else
                    {
                      *(v6 + 6) = v101 + v100;
                      memcpy((*(v6 + 1) + v101), v97, v99 & 0x3FFFFFFF);
                    }

                    v7 = v467;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    LOBYTE(v29) = v98;
                  }
                }

                v75 = *&v10;
                while (1)
                {
                  v352 = *(v96 + 1);
                  if ((v352 & 3) == 0)
                  {
                    v353 = *(v96 + 14);
                    if (v353 > 0)
                    {
                      break;
                    }
                  }

                  v96 = v96[2];
                  if (!v96)
                  {
                    goto LABEL_713;
                  }
                }

                if ((v352 & 0x40000000) == 0)
                {
                  v78 = 0;
                  LODWORD(v30) = 0;
                  LODWORD(v102) = 0;
                  *(*v6 + 84) = v353;
                  goto LABEL_795;
                }

LABEL_713:
                v78 = 0;
                LODWORD(v30) = 0;
                LODWORD(v102) = 0;
                goto LABEL_795;
              }

              if (!v96)
              {
                goto LABEL_297;
              }

              v147 = *(v96 + 2);
              if (!v147)
              {
                goto LABEL_297;
              }

              v148 = *v96;
              v149 = v29;
              if (v147 < 1 || v148 == 0)
              {
                sub_1819012D0(34353);
              }

              else
              {
                v349 = *(v6 + 6);
                if ((v349 + v147) >= *(v6 + 4))
                {
                  sub_181906814(v6, v148, v147);
                }

                else
                {
                  *(v6 + 6) = v349 + v147;
                  memcpy((*(v6 + 1) + v349), v148, v147);
                }
              }

              v354 = *v6;
              v7 = v467;
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              v75 = *&v10;
              LOBYTE(v29) = v149;
              if (!*v6)
              {
                goto LABEL_713;
              }

              if (*(v354 + 84) != -2)
              {
                goto LABEL_713;
              }

              v355 = *(v354 + 344);
              if (!v355)
              {
                goto LABEL_713;
              }

              v356 = *(v355 + 336);
              if (!v356)
              {
                goto LABEL_713;
              }

              v357 = *v96;
              if (v356 > v357)
              {
                goto LABEL_713;
              }

              v358 = v149;
              LODWORD(v30) = 0;
              LODWORD(v102) = 0;
              if (v356 + strlen(*(v355 + 336)) > v357)
              {
                *(v354 + 84) = v357 - v356;
              }

              v7 = v467;
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              v75 = *&v10;
              LOBYTE(v29) = v358;
              v78 = 0;
              goto LABEL_795;
            case 0xCu:
              if ((*(v6 + 29) & 1) == 0)
              {
                return;
              }

              v112 = v468;
              v468 += 8;
              v113 = *v112;
              v114 = *(*v112 + 8);
              if (v114)
              {
                v115 = v26 == 0;
              }

              else
              {
                v115 = 0;
              }

              if (v115)
              {
                goto LABEL_394;
              }

              v30 = *v113;
              if (*v113)
              {
                if (*(v113 + 27))
                {
                  v116 = v29;
                }

                else
                {
                  v116 = v29;
                  if ((*(v113 + 25) & 4) == 0)
                  {
                    v117 = *(v113 + 64);
                    if (v117)
                    {
                      v118 = strlen(*(v113 + 64));
                      sqlite3_str_append(v6, v117, v118 & 0x3FFFFFFF);
                      v119 = *(v6 + 6);
                      if ((v119 + 1) >= *(v6 + 4))
                      {
                        sub_181906814(v6, ".", 1u);
                      }

                      else
                      {
                        *(v6 + 6) = v119 + 1;
                        *(*(v6 + 1) + v119) = 46;
                      }

                      v30 = *v113;
                      if (!*v113)
                      {
                        v78 = 0;
                        goto LABEL_653;
                      }
                    }
                  }
                }

                v189 = strlen(v30);
                v190 = v189 & 0x3FFFFFFF;
                if ((v189 & 0x3FFFFFFF) != 0)
                {
                  v191 = *(v6 + 6);
                  if (v191 + v190 >= *(v6 + 4))
                  {
                    sub_181906814(v6, v30, v190);
                  }

                  else
                  {
                    *(v6 + 6) = v191 + v190;
                    memcpy((*(v6 + 1) + v191), v30, v189 & 0x3FFFFFFF);
                  }
                }
              }

              else
              {
                if (v114)
                {
LABEL_394:
                  v185 = v29;
                  v186 = strlen(v114);
                  v187 = v186 & 0x3FFFFFFF;
                  if ((v186 & 0x3FFFFFFF) != 0)
                  {
                    v188 = *(v6 + 6);
                    if (v188 + v187 >= *(v6 + 4))
                    {
                      sub_181906814(v6, v114, v187);
                    }

                    else
                    {
                      *(v6 + 6) = v188 + v187;
                      memcpy((*(v6 + 1) + v188), v114, v186 & 0x3FFFFFFF);
                    }
                  }

                  v78 = 0;
                  LODWORD(v30) = 0;
                  LODWORD(v102) = 0;
                  goto LABEL_399;
                }

                if ((*(v113 + 25) & 4) == 0)
                {
                  v75 = *&v10;
                  goto LABEL_713;
                }

                v361 = **(v113 + 64);
                v362 = *(v361 + 4);
                if ((v362 & 0x800) != 0)
                {
                  v371 = v29;
                  sqlite3_str_appendf(v6, "(join-%u)", *(v361 + 16));
                  LOBYTE(v29) = v371;
                  v75 = *&v10;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v7 = v467;
                  goto LABEL_713;
                }

                v116 = v29;
                if ((v362 & 0x400) != 0)
                {
                  sqlite3_str_appendf(v6, "%u-ROW VALUES CLAUSE", *(v113 + 40));
                }

                else
                {
                  sqlite3_str_appendf(v6, "(subquery-%u)", *(v361 + 16));
                }
              }

              v78 = 0;
              LODWORD(v30) = 0;
LABEL_653:
              LODWORD(v102) = 0;
              goto LABEL_654;
            case 0xDu:
              v71 = 2;
LABEL_184:
              LODWORD(v24) = 0;
              goto LABEL_185;
            case 0x10u:
LABEL_185:
              v464 = v29;
              if (v70[2])
              {
                if ((v7 & 2) == 0)
                {
                  v93 = v468;
                  v468 += 8;
                  if (v71)
                  {
                    v94 = *v93;
                  }

                  else
                  {
                    v94 = *v93;
                  }

                  goto LABEL_303;
                }

                v108 = *(v8 + 4);
                if (*v8 <= v108)
                {
                  goto LABEL_466;
                }

                v109 = *(v8 + 8);
                *(v8 + 4) = v108 + 1;
                v110 = *(v109 + 8 * v108);
                if (!v110)
                {
                  v456 = v31;
                  v180 = v72;
                  v181 = v70;
                  v182 = v25;
                  v183 = v24;
                  v184 = v29;
LABEL_387:
                  sub_1819012D0(92237);
                  v7 = v467;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  LOBYTE(v29) = v184;
                  LODWORD(v24) = v183;
                  LODWORD(v25) = v182;
                  v70 = v181;
                  v72 = v180;
                  LODWORD(v31) = v456;
                  goto LABEL_466;
                }

                v111 = *(v110 + 20);
                if ((v111 & 0x24) != 0)
                {
                  v94 = *v110;
                  goto LABEL_303;
                }

                if ((v111 & 8) == 0)
                {
                  if ((v111 & 0x12) == 0 || !*(v110 + 8))
                  {
                    goto LABEL_466;
                  }

                  v449 = v72;
                  v285 = v27;
                  v286 = v24;
                  v287 = v25;
                  v288 = v70;
                  v289 = v31;
                  v94 = sub_18193CFCC(v110);
                  LODWORD(v31) = v289;
                  v70 = v288;
                  LODWORD(v25) = v287;
                  LODWORD(v24) = v286;
                  LOBYTE(v27) = v285;
                  v72 = v449;
                  LOBYTE(v29) = v464;
                  v16.i64[0] = 0x8080808080808080;
                  v16.i64[1] = 0x8080808080808080;
                  v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                  v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                  v7 = v467;
LABEL_303:
                  if (v94 >= 0)
                  {
                    v92 = *&v94;
                  }

                  else
                  {
                    *&v92 = -v94;
                  }

                  if ((v94 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_308;
                  }

LABEL_307:
                  LOBYTE(v28) = 45;
                  goto LABEL_308;
                }

                v351 = *v110;
                v3.i32[1] = -1008730113;
                if (*v110 < -9.22337204e18)
                {
                  v92 = -0.0;
                  goto LABEL_307;
                }

                v3.i32[1] = 1138753535;
                if (v351 <= 9.22337204e18)
                {
                  v94 = v351;
                  goto LABEL_303;
                }
              }

              else
              {
                if ((v7 & 2) == 0)
                {
                  LOBYTE(v28) = 0;
                  v91 = v468;
                  v468 += 8;
                  if (v71)
                  {
                    v92 = *v91;
                  }

                  else
                  {
                    *&v92 = *v91;
                  }

                  goto LABEL_308;
                }

                v104 = *(v8 + 4);
                if (*v8 <= v104)
                {
                  goto LABEL_465;
                }

                v105 = *(v8 + 8);
                *(v8 + 4) = v104 + 1;
                v106 = *(v105 + 8 * v104);
                if (!v106)
                {
                  v456 = v31;
                  v180 = v72;
                  v181 = v70;
                  v182 = v25;
                  v183 = v24;
                  v184 = v29;
                  LOBYTE(v28) = 0;
                  goto LABEL_387;
                }

                v107 = *(v106 + 20);
                if ((v107 & 0x24) != 0)
                {
                  LOBYTE(v28) = 0;
                  v92 = *v106;
LABEL_308:
                  if (v92 != 0.0)
                  {
                    goto LABEL_467;
                  }

LABEL_466:
                  v92 = 0.0;
                  LOBYTE(v27) = 0;
                  goto LABEL_467;
                }

                if ((v107 & 8) == 0)
                {
                  if ((v107 & 0x12) != 0 && *(v106 + 8))
                  {
                    v246 = v29;
                    v247 = v27;
                    v447 = v72;
                    v248 = v24;
                    v249 = v25;
                    v250 = v70;
                    v251 = v31;
                    v252 = sub_18193CFCC(v106);
                    LODWORD(v31) = v251;
                    v70 = v250;
                    LODWORD(v25) = v249;
                    LODWORD(v24) = v248;
                    v72 = v447;
                    LOBYTE(v27) = v247;
                    LOBYTE(v29) = v246;
                    v16.i64[0] = 0x8080808080808080;
                    v16.i64[1] = 0x8080808080808080;
                    v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                    v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                    v7 = v467;
                    v92 = *&v252;
                    LOBYTE(v28) = 0;
                    goto LABEL_308;
                  }

LABEL_465:
                  LOBYTE(v28) = 0;
                  goto LABEL_466;
                }

                v350 = *v106;
                v3.i32[1] = -1008730113;
                if (*v106 < -9.22337204e18)
                {
                  LOBYTE(v28) = 0;
                  v92 = -0.0;
                  goto LABEL_467;
                }

                v3.i32[1] = 1138753535;
                LOBYTE(v28) = 0;
                if (v350 <= 9.22337204e18)
                {
                  *&v92 = v350;
                  goto LABEL_308;
                }
              }

              v92 = NAN;
LABEL_467:
              v253 = v30 - (v28 != 0);
              if (v31 > v253)
              {
                v253 = v31;
              }

              if (v25)
              {
                v254 = v253;
              }

              else
              {
                v254 = v31;
              }

              v453 = v27;
              if (v254 >= 332)
              {
                if (v24)
                {
                  v256 = (v254 + 10) + v254 / 3uLL;
                }

                else
                {
                  v256 = (v254 + 10);
                }

                if (*(v6 + 28))
                {
                  return;
                }

                if (v256 > *(v6 + 4))
                {
                  v257 = *(v6 + 5);
                  if (v256 > v257)
                  {
                    goto LABEL_839;
                  }
                }

                v448 = v72;
                v258 = v70;
                v259 = v24;
                if (*v6)
                {
                  v260 = sub_181929E8C(*v6, v256, 1162268004);
                }

                else
                {
                  v260 = sub_181902484(v256, 1162268004);
                }

                if (!v260)
                {
                  goto LABEL_833;
                }

                LODWORD(v24) = v259;
                v70 = v258;
                v458 = v260;
                v255 = v260;
                v7 = v467;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                LOBYTE(v29) = v464;
                LOBYTE(v27) = v453;
                v72 = v448;
              }

              else
              {
                v458 = 0;
                v255 = __src;
                LODWORD(v256) = 512;
              }

              v261 = v255 + v256 - 1;
              v262 = v261;
              if (v72 == 15)
              {
                v263 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * (*&v92 / 0xAuLL) + 0x3333333333333333, 1) < 0x199999999999999AuLL || *&v92 % 0xAuLL > 3;
                if (v263)
                {
                  v264 = 0;
                }

                else
                {
                  v264 = *&v92 % 0xAuLL;
                }

                v265 = 2 * v264;
                v266 = aThstndrd[v265 + 1];
                *(v261 - 2) = aThstndrd[v265];
                v262 = v261 - 2;
                *(v261 - 1) = v266;
              }

              v267 = 0;
              v268 = &a0123456789abcd_0[v70[4]];
              v269 = v70[1];
              v270 = v254 + v262 - v256 - v255;
              do
              {
                v262[--v267] = v268[*&v92 % v269];
                --v270;
                v316 = *&v92 >= v269;
                *&v92 /= v269;
              }

              while (v316);
              if (v254 <= ~v262 + v256 + v255 - v267)
              {
                v9 = &v262[v267];
                v254 = ~v262 + v256 + v255 - v267;
              }

              else
              {
                v9 = &v262[v267 - v270 - 1];
                v271 = (v254 + v262 - v256 - v255 + v267) + 1;
                v272 = v24;
                v273 = v70;
                v274 = v261;
                memset(v9, 48, v271);
                LODWORD(v261) = v274;
                v70 = v273;
                LODWORD(v24) = v272;
                LOBYTE(v27) = v453;
                LOBYTE(v29) = v464;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v7 = v467;
              }

              v75 = *&v10;
              if (v24 && (v275 = ((v254 - 1) / 3), v9 -= v275, v254 >= 4))
              {
                v276 = 0;
                v277 = (v254 - 1) % 3u + 1;
                v78 = v458;
                do
                {
                  v278 = v276;
                  v9[v276] = v9[v276 + v275];
                  if (!--v277)
                  {
                    ++v276;
                    v9[v278 + 1] = v24;
                    LODWORD(v275) = v275 - 1;
                    v277 = 3;
                  }

                  ++v276;
                }

                while (v275 > 0);
              }

              else
              {
                v78 = v458;
              }

              if (v28)
              {
                *--v9 = v28;
              }

              if (v27)
              {
                v279 = v70[5];
                if (v279 > 6 || ((1 << v279) & 0x49) == 0)
                {
                  v280 = &unk_181A20291 + v279;
                  v283 = *v280;
                  v281 = v280 + 1;
                  v282 = v283;
                  do
                  {
                    *--v9 = v282;
                    v284 = *v281++;
                    v282 = v284;
                  }

                  while (v284);
                }
              }

              LODWORD(v102) = v261 - v9;
              goto LABEL_795;
            default:
              return;
          }
        }

        if (v21 > 0x2Au)
        {
          break;
        }

        if (v21 > 0x22u)
        {
          if (v21 == 35)
          {
            v27 = 1;
            goto LABEL_29;
          }

          if (v21 != 42)
          {
            goto LABEL_132;
          }

          if ((v7 & 2) == 0)
          {
            v38 = v468;
            v468 += 8;
            LODWORD(v39) = *v38;
            goto LABEL_79;
          }

          v42 = *(v8 + 4);
          if (*v8 <= v42)
          {
            LODWORD(v39) = 0;
          }

          else
          {
            v462 = v6;
            v43 = v9;
            v44 = v31;
            v45 = v28;
            v46 = v26;
            v47 = v25;
            v48 = v24;
            v49 = v27;
            v50 = v29;
            v51 = *(v8 + 8);
            *(v8 + 4) = v42 + 1;
            v52 = *(v51 + 8 * v42);
            if (!v52)
            {
              sub_1819012D0(92237);
              v8 = v466;
              v7 = v467;
              LODWORD(v39) = 0;
LABEL_76:
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              LODWORD(v29) = v50;
              v27 = v49;
              v24 = v48;
              v25 = v47;
              v26 = v46;
              v28 = v45;
              v31 = v44;
              goto LABEL_77;
            }

            v53 = *(v52 + 20);
            if ((v53 & 0x24) != 0)
            {
              v39 = *v52;
              goto LABEL_76;
            }

            if ((v53 & 8) != 0)
            {
              v68 = *v52;
              v3.i32[1] = -1008730113;
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              if (*v52 < -9.22337204e18)
              {
                LODWORD(v39) = 0;
                goto LABEL_115;
              }

              v3.i32[1] = 1138753535;
              v26 = v46;
              v9 = v43;
              if (v68 <= 9.22337204e18)
              {
                *&v39 = v68;
              }

              else
              {
                LODWORD(v39) = -1;
              }

              v28 = v45;
            }

            else
            {
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              if ((v53 & 0x12) != 0 && *(v52 + 8))
              {
                LODWORD(v39) = sub_18193CFCC(v52);
                v31 = v44;
                v25 = v47;
                v24 = v48;
                v27 = v49;
                LODWORD(v29) = v50;
                v16.i64[0] = 0x8080808080808080;
                v16.i64[1] = 0x8080808080808080;
                v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
                v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
                v8 = v466;
                v7 = v467;
              }

              else
              {
                LODWORD(v39) = 0;
              }

LABEL_115:
              v26 = v46;
              v28 = v45;
LABEL_77:
              v9 = v43;
            }

            v6 = v462;
          }

LABEL_79:
          if (LODWORD(v39) == 0x80000000)
          {
            v66 = 0;
          }

          else
          {
            v66 = -LODWORD(v39);
          }

          if (SLODWORD(v39) < 0)
          {
            v29 = 1;
          }

          else
          {
            v29 = v29;
          }

          if (SLODWORD(v39) >= 0)
          {
            LODWORD(v30) = LODWORD(v39);
          }

          else
          {
            LODWORD(v30) = v66;
          }

          v33 = v22[1];
          if (v33 != 46 && v33 != 108)
          {
            v71 = 0;
            v33 = v33;
            v35 = v22 + 1;
            goto LABEL_127;
          }

          goto LABEL_29;
        }

        if (v21 == 32)
        {
          goto LABEL_28;
        }

        if (v21 != 33)
        {
          goto LABEL_132;
        }

        v26 = 1;
LABEL_29:
        v32 = *++v22;
        v21 = v32;
        if (!v32)
        {
          return;
        }
      }

      if (v21 <= 0x2Cu)
      {
        if (v21 != 43)
        {
          v24 = 44;
          goto LABEL_29;
        }

LABEL_28:
        v28 = v21;
        goto LABEL_29;
      }

      if (v21 == 45)
      {
        v29 = 1;
        goto LABEL_29;
      }

      if (v21 != 46)
      {
        goto LABEL_132;
      }

      v35 = v22 + 1;
      v33 = v22[1];
      if (v33 != 42)
      {
        if ((v33 - 48) > 9)
        {
          v31 = 0;
        }

        else
        {
          v54 = 0;
          do
          {
            v54 = v33 + 10 * v54 - 48;
            v55 = *++v35;
            v33 = v55;
          }

          while ((v55 - 48) < 0xA);
          v31 = v54 & 0x7FFFFFFF;
        }

LABEL_106:
        if (v33 != 108)
        {
          goto LABEL_126;
        }

        v22 = v35 - 1;
        goto LABEL_29;
      }

      if ((v7 & 2) == 0)
      {
        v40 = v468;
        v468 += 8;
        LODWORD(v41) = *v40;
LABEL_99:
        if (LODWORD(v41) == 0x80000000)
        {
          v67 = -1;
        }

        else
        {
          v67 = -LODWORD(v41);
        }

        if (SLODWORD(v41) >= 0)
        {
          v31 = LODWORD(v41);
        }

        else
        {
          v31 = v67;
        }

        v33 = v22[2];
        v35 = v22 + 2;
        goto LABEL_106;
      }

      v56 = *(v8 + 4);
      if (*v8 <= v56)
      {
        LODWORD(v41) = 0;
        goto LABEL_99;
      }

      v463 = v9;
      v57 = v28;
      v58 = v26;
      v59 = v25;
      v60 = v24;
      v61 = v27;
      v62 = v29;
      v63 = *(v8 + 8);
      *(v8 + 4) = v56 + 1;
      v64 = *(v63 + 8 * v56);
      if (v64)
      {
        v65 = *(v64 + 20);
        if ((v65 & 0x24) == 0)
        {
          if ((v65 & 8) != 0)
          {
            v69 = *v64;
            v3.i32[1] = -1008730113;
            v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
            v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
            v16.i64[0] = 0x8080808080808080;
            v16.i64[1] = 0x8080808080808080;
            if (*v64 >= -9.22337204e18)
            {
              v3.i32[1] = 1138753535;
              v26 = v58;
              if (v69 <= 9.22337204e18)
              {
                *&v41 = v69;
              }

              else
              {
                LODWORD(v41) = -1;
              }

              goto LABEL_98;
            }

            LODWORD(v41) = 0;
          }

          else
          {
            v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
            v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
            v16.i64[0] = 0x8080808080808080;
            v16.i64[1] = 0x8080808080808080;
            if ((v65 & 0x12) != 0 && *(v64 + 8))
            {
              LODWORD(v41) = sub_18193CFCC(v64);
              v25 = v59;
              v24 = v60;
              v27 = v61;
              v29 = v62;
              v16.i64[0] = 0x8080808080808080;
              v16.i64[1] = 0x8080808080808080;
              v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
              v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
              v8 = v466;
              v7 = v467;
            }

            else
            {
              LODWORD(v41) = 0;
            }
          }

LABEL_97:
          v26 = v58;
LABEL_98:
          v28 = v57;
          v9 = v463;
          goto LABEL_99;
        }

        v41 = *v64;
      }

      else
      {
        sub_1819012D0(92237);
        v8 = v466;
        v7 = v467;
        LODWORD(v41) = 0;
      }

      v15.i64[0] = 0xC0C0C0C0C0C0C0C0;
      v15.i64[1] = 0xC0C0C0C0C0C0C0C0;
      v16.i64[0] = 0x8080808080808080;
      v16.i64[1] = 0x8080808080808080;
      v29 = v62;
      v27 = v61;
      v24 = v60;
      v25 = v59;
      goto LABEL_97;
    }

    v426 = *(v6 + 6);
    if ((v426 + 1) >= *(v6 + 4))
    {
      sub_181906814(v6, "%", 1u);
    }

    else
    {
      *(v6 + 6) = v426 + 1;
      *(*(v6 + 1) + v426) = 37;
    }
  }

  else
  {

    sub_1819012D0(33474);
  }
}

void sqlite3_str_append(sqlite3_str *a1, const char *zIn, int N)
{
  if (a1)
  {
    if (zIn && N > 0)
    {
      v3 = *(a1 + 6);
      if ((v3 + N) >= *(a1 + 4))
      {
        sub_181906814(a1, zIn, N);
      }

      else
      {
        *(a1 + 6) = v3 + N;
        memcpy((*(a1 + 1) + v3), zIn, N);
      }
    }

    else if (N)
    {
      sub_1819012D0(34353);
    }
  }

  else
  {
    sub_1819012D0(34349);
  }
}

void sqlite3_str_appendchar(sqlite3_str *a1, int N, char C)
{
  if (!a1 || N < 0)
  {

    sub_1819012D0(34315);
  }

  else
  {
    if (*(a1 + 6) + N >= *(a1 + 4))
    {
      v4 = a1;
      v5 = C;
      v6 = sub_181906424(a1, N);
      C = v5;
      N = v6;
      a1 = v4;
      if (N < 1)
      {
        return;
      }
    }

    else if (!N)
    {
      return;
    }

    v7 = N + 1;
    do
    {
      v8 = *(a1 + 1);
      v9 = *(a1 + 6);
      *(a1 + 6) = v9 + 1;
      *(v8 + v9) = C;
      --v7;
    }

    while (v7 > 1);
  }
}

uint64_t sub_181906424(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    return 0;
  }

  v4 = a1;
  v5 = *(a1 + 5);
  if (v5)
  {
    v2 = a2;
    v6 = *(a1 + 29);
    if ((v6 & 4) != 0)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = 0;
    }

    v9 = *(v4 + 6);
    v10 = a2 + v9;
    v11 = a2 + v9 + 1 + v9;
    if (v11 > v5)
    {
      v11 = v10 + 1;
    }

    if (v11 > v5)
    {
      if ((v6 & 4) != 0)
      {
        v12 = v4[1];
        if (v12)
        {
          v13 = v4;
          sub_181929C84(*v4, v12);
          v4 = v13;
          v14 = *(v13 + 5);
          v6 = *(v13 + 29) & 0xFB;
          *(v13 + 29) = v6;
          *(v13 + 4) = 0;
          *(v13 + 6) = 0;
          v13[1] = 0;
          *(v13 + 28) = 18;
          if (!v14)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        v6 &= ~4u;
        *(v4 + 29) = v6;
      }

      *(v4 + 28) = 18;
LABEL_30:
      if ((v6 & 4) != 0)
      {
        *(v4 + 29) = v6 & 0xFB;
      }

      *(v4 + 4) = 0;
      *(v4 + 6) = 0;
      v4[1] = 0;
LABEL_33:
      v17 = *v4;
      if (v17)
      {
        v18 = *(v17 + 344);
        if (v18)
        {
          v2 = 0;
          *(v18 + 24) = 18;
          ++*(v18 + 52);
          return v2;
        }
      }

      return 0;
    }

    *(v4 + 4) = v11;
    v15 = *v4;
    v16 = v4;
    if (*v4)
    {
      if (v7)
      {
        if (*(v15 + 512) > v7)
        {
          if (*(v15 + 496) <= v7)
          {
            if (v11 < 0x81uLL)
            {
              goto LABEL_39;
            }
          }

          else if (*(v15 + 504) <= v7 && v11 <= *(v15 + 438))
          {
LABEL_39:
            if ((v6 & 4) == 0)
            {
              v19 = *(v4 + 6);
              if (v19)
              {
                v20 = v4;
                v21 = v7;
                memcpy(v7, v4[1], v19);
                v7 = v21;
                v4 = v20;
              }
            }

            v4[1] = v7;
            v22 = *v4;
            if (*v4 && *(v22 + 520) > v7)
            {
              if (*(v22 + 496) <= v7)
              {
                v24 = 128;
                goto LABEL_47;
              }

              if (*(v22 + 504) <= v7)
              {
                v24 = *(v22 + 438);
                goto LABEL_47;
              }
            }

            v23 = v4;
            v24 = xmmword_1ED452EC0(v7);
            v4 = v23;
LABEL_47:
            *(v4 + 4) = v24;
            *(v4 + 29) |= 4u;
            return v2;
          }
        }

        v7 = sub_181929F38(v15, v7, v11, 1205652481);
      }

      else
      {
        v7 = sub_181929E8C(*v4, v11, 1205652481);
      }
    }

    else
    {
      v7 = sub_18190287C(v7, v11, 91641137);
    }

    v4 = v16;
    v6 = *(v16 + 29);
    if (v7)
    {
      goto LABEL_39;
    }

    if ((*(v16 + 29) & 4) != 0)
    {
      v25 = v16[1];
      if (v25)
      {
        sub_181929C84(*v16, v25);
        v4 = v16;
        v6 = *(v16 + 29);
      }

      v6 &= ~4u;
      *(v4 + 29) = v6;
    }

    *(v4 + 4) = 0;
    *(v4 + 6) = 0;
    v4[1] = 0;
    *(v4 + 28) = 7;
    if (!*(v4 + 5))
    {
      return 0;
    }

    if ((v6 & 4) != 0)
    {
      *(v4 + 29) = v6 & 0xFB;
    }

    v2 = 0;
    *(v4 + 4) = 0;
    *(v4 + 6) = 0;
    v4[1] = 0;
  }

  else
  {
    *(a1 + 28) = 18;
    if (*a1)
    {
      v8 = *(*a1 + 344);
      if (v8)
      {
        *(v8 + 24) = 18;
        ++*(v8 + 52);
      }
    }

    return (*(a1 + 4) + ~*(a1 + 6));
  }

  return v2;
}

void sqlite3_str_appendall(sqlite3_str *a1, const char *zIn)
{
  if (zIn)
  {
    v4 = strlen(zIn) & 0x3FFFFFFF;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 34349;
    goto LABEL_13;
  }

  v4 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (zIn && v4)
  {
    v5 = *(a1 + 6);
    if (v5 + v4 >= *(a1 + 4))
    {

      sub_181906814(a1, zIn, v4);
    }

    else
    {
      *(a1 + 6) = v5 + v4;
      v6 = (*(a1 + 1) + v5);

      memcpy(v6, zIn, v4);
    }

    return;
  }

  if (!v4)
  {
    return;
  }

  v7 = 34353;
LABEL_13:

  sub_1819012D0(v7);
}

uint64_t sub_181906814(uint64_t a1, const void *a2, unsigned int a3)
{
  result = sub_181906424(a1, a3);
  if (result >= 1)
  {
    v6 = result;
    result = memcpy((*(a1 + 8) + *(a1 + 24)), a2, result);
    *(a1 + 24) += v6;
  }

  return result;
}

char *__cdecl sqlite3_str_finish(sqlite3_str *a1)
{
  v1 = 0;
  if (a1 && a1 != &unk_1EA831560)
  {
    v2 = *(a1 + 1);
    if (v2 && (*(v2 + *(a1 + 6)) = 0, *(a1 + 5)) && (*(a1 + 29) & 4) == 0)
    {
      v3 = a1;
      v1 = sub_18192A12C(a1);
      a1 = v3;
    }

    else
    {
      v1 = *(a1 + 1);
    }

    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_13;
    }

    if (xmmword_1ED456AF0)
    {
      v5 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v5;
    }

    v6 = a1;
    qword_1ED456A48 -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v6);
    a1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
LABEL_13:
      (*v4)(a1);
    }
  }

  return v1;
}

int sqlite3_str_errcode(sqlite3_str *a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  else
  {
    return 7;
  }
}

int sqlite3_str_length(sqlite3_str *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 6);
  }

  return a1;
}

char *__cdecl sqlite3_str_value(char *result)
{
  if (result)
  {
    v1 = *(result + 6);
    if (v1)
    {
      *(*(result + 1) + v1) = 0;
      return *(result + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sqlite3_str_reset(sqlite3_str *a1)
{
  if (a1)
  {
    v2 = *(a1 + 29);
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 1);
      if (v3)
      {
        v4 = a1;
        sub_181929C84(*a1, v3);
        a1 = v4;
        v2 = *(v4 + 29);
      }

      *(a1 + 29) = v2 & 0xFB;
    }

    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 1) = 0;
  }

  else
  {

    sub_1819012D0(34468);
  }
}

sqlite3_str *__cdecl sqlite3_str_new(sqlite3 *a1)
{
  if (sqlite3_initialize())
  {
    return &unk_1EA831560;
  }

  result = sub_181902484(32, 0x10300409A0FC5E0);
  if (!result)
  {
    return &unk_1EA831560;
  }

  if (a1)
  {
    v3 = *(a1 + 34);
  }

  else
  {
    v3 = 2147483645;
  }

  *result = 0;
  *(result + 1) = 0;
  *(result + 4) = 0;
  *(result + 5) = v3;
  *(result + 6) = 0;
  *(result + 14) = 0;
  return result;
}

char *__cdecl sqlite3_vsnprintf(int a1, char *a2, const char *a3, va_list a4)
{
  if (a1 >= 1)
  {
    if (a2 && a3)
    {
      v7[0] = 0;
      v7[1] = a2;
      v8 = a1;
      v9 = 0;
      v10 = 0;
      sqlite3_str_vappendf(v7, a3, a4);
      v5 = &a2[HIDWORD(v9)];
LABEL_6:
      *v5 = 0;
      return a2;
    }

    sub_1819012D0(34608);
    v5 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  return a2;
}

int sqlite3_stricmp(const char *a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      while (1)
      {
        v2 = *a1;
        if (v2 == *a2)
        {
          if (!*a1)
          {
            return v2;
          }
        }

        else
        {
          v2 = byte_181A20298[*a1] - byte_181A20298[*a2];
          if (v2)
          {
            return v2;
          }
        }

        ++a1;
        ++a2;
      }
    }

    return 1;
  }

  else if (a2)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int sqlite3_strnicmp(const char *a1, const char *a2, int a3)
{
  if (a3 < 0)
  {
    sub_1819012D0(37608);
    return 0;
  }

  if (!a1)
  {
    if (a2)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = a3 + 1;
  while (1)
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    LODWORD(v4) = byte_181A20298[v4];
    if (v4 != byte_181A20298[*a2])
    {
      break;
    }

    ++a1;
    ++a2;
    if (--v3 <= 1)
    {
      return 0;
    }
  }

  return v4 - byte_181A20298[*a2];
}

int sqlite3_os_init(void)
{
  for (i = 0; i != 9; ++i)
  {
    if (sqlite3_initialize())
    {
      continue;
    }

    if (word_1ED452E84)
    {
      v1 = qword_1ED452F08(2);
      if (v1)
      {
        v2 = v1;
        xmmword_1ED452F18(v1);
        v1 = v2;
        v3 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 1;
LABEL_9:
    v4 = &unk_1ED453080 + 168 * i;
    v5 = qword_1ED456AE8;
    if (qword_1ED456AE8 == v4)
    {
      v9 = &qword_1ED456AE8;
      goto LABEL_20;
    }

    if (!qword_1ED456AE8)
    {
      goto LABEL_24;
    }

    v6 = qword_1ED456AE8;
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
      if (v6)
      {
        v8 = v6 == v4;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
    if (v6 == v4)
    {
      v9 = (v7 + 16);
LABEL_20:
      *v9 = *(v4 + 2);
      v5 = qword_1ED456AE8;
    }

    if (i && v5)
    {
      v10 = (v5 + 16);
      v5 = *(v5 + 16);
      goto LABEL_25;
    }

LABEL_24:
    v10 = &qword_1ED456AE8;
LABEL_25:
    *(v4 + 2) = v5;
    *v10 = v4;
    if ((v3 & 1) == 0)
    {
      xmmword_1ED452F28(v1);
    }
  }

  if (word_1ED452E84)
  {
    v11 = qword_1ED452F08(11);
  }

  else
  {
    v11 = 0;
  }

  qword_1ED456B10 = v11;
  sub_1818FF054();
  qword_1ED453A40 = getenv("SQLITE_TMPDIR");
  v12 = malloc_type_calloc(1uLL, 0x400uLL, 0x7F061004uLL);
  if (!confstr(65537, v12, 0x400uLL))
  {
    free(v12);
    v12 = 0;
  }

  qword_1ED453A48 = v12;
  qword_1ED453A50 = getenv("TMPDIR");
  if (qword_1ED456B18 == -1)
  {
    if (word_1ED452E84)
    {
      goto LABEL_34;
    }

LABEL_36:
    v13 = 0;
  }

  else
  {
    sub_181A1E984();
    if (!word_1ED452E84)
    {
      goto LABEL_36;
    }

LABEL_34:
    v13 = qword_1ED452F08(11);
  }

  qword_1ED456B10 = v13;
  return 0;
}

uint64_t sub_181906E38(uint64_t a1, uint64_t a2)
{
  v4.tv_sec = a2 / 1000000;
  v4.tv_nsec = 1000 * (a2 % 1000000);
  nanosleep(&v4, 0);
  return a2;
}

uint64_t sub_181906EA8(uint64_t a1, double *a2)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  gettimeofday(&v4, 0);
  *a2 = (1000 * v4.tv_sec + v4.tv_usec / 1000 + 210866760000000) / 86400000.0;
  return 0;
}

uint64_t sub_181906F54(int a1, char *__s1, uint64_t a3)
{
  if (__s1)
  {
    v5 = &qword_1EE341AD0;
    v6 = 29;
    while (strcmp(__s1, *(v5 - 2)))
    {
      v5 += 3;
      if (!--v6)
      {
        return 12;
      }
    }

    v10 = *v5;
    if (!*v5)
    {
      v10 = *(v5 - 1);
      *v5 = v10;
    }

    result = 0;
    if (a3)
    {
      v10 = a3;
    }

    *(v5 - 1) = v10;
  }

  else
  {
    v8 = &qword_1EE341AD0;
    v9 = 29;
    do
    {
      if (*v8)
      {
        *(v8 - 1) = *v8;
      }

      v8 += 3;
      --v9;
    }

    while (v9);
    return 0;
  }

  return result;
}

uint64_t (*sub_181907008(int a1, char *__s1))(const char *a1, int a2, uint64_t a3)
{
  v3 = &off_1EE341AC8;
  v4 = 29;
  while (strcmp(__s1, *(v3 - 1)))
  {
    v3 += 3;
    if (!--v4)
    {
      return 0;
    }
  }

  return *v3;
}

uint64_t sub_181907064(int a1, char *__s1)
{
  if (__s1)
  {
    v3 = 0;
    v4 = &off_1EE341AC0;
    do
    {
      if (!strcmp(__s1, *v4))
      {
        break;
      }

      ++v3;
      v4 += 3;
    }

    while (v3 != 28);
    v5 = v3;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 - 29;
  v7 = &(&off_1EE341AC0)[3 * v5 + 4];
  while (!__CFADD__(v6++, 1))
  {
    v9 = v7 + 3;
    v10 = *v7;
    v7 += 3;
    if (v10)
    {
      return *(v9 - 4);
    }
  }

  return 0;
}

char *sub_181907104()
{
  xmmword_1ED456B20 = MEMORY[0x1E69E9A38];
  qword_1ED456B30 = MEMORY[0x1E69E9A30];
  qword_1ED456B38 = MEMORY[0x1E69E9A48];
  qword_1ED456B40 = MEMORY[0x1E69E9A50];
  result = getenv("RC_XBS");
  if (result)
  {
    if (*result)
    {
      qword_1ED456B38 = 0;
      qword_1ED456B40 = 0;
    }
  }

  return result;
}

unsigned __int8 *__cdecl sqlite3_serialize(sqlite3 *db, const char *zSchema, sqlite3_int64 *piSize, unsigned int mFlags)
{
  pStmt = 0;
  if (!db)
  {
    v5 = "NULL";
    goto LABEL_12;
  }

  v4 = *(db + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(60774);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v7 = mFlags;
  if (!zSchema)
  {
    zSchema = **(db + 4);
  }

  v49 = 0;
  v9 = zSchema;
  if (sqlite3_file_control(db, zSchema, 7, &v49))
  {
    v10 = 0;
    v11 = v7;
    v12 = piSize;
    goto LABEL_17;
  }

  v12 = piSize;
  if (*v49 != &unk_1EEF8FEB8)
  {
    v10 = 0;
    v11 = v7;
LABEL_17:
    v14 = db;
    v15 = v9;
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

  v37 = *(v49 + 8);
  v38 = *(v37 + 32);
  if (v38)
  {
    xmmword_1ED452F18(v38);
    v12 = piSize;
  }

  v11 = v7;
  v14 = db;
  v15 = v9;
  if (*(v37 + 64))
  {
    v49 = 0;
  }

  v39 = *(v37 + 32);
  if (v39)
  {
    xmmword_1ED452F28(v39);
    v15 = v9;
    v14 = db;
    v12 = piSize;
    v11 = v7;
  }

  v10 = v49;
  if (v15)
  {
LABEL_18:
    v16 = *(v14 + 10);
    v17 = __OFSUB__(v16, 1);
    v18 = (v16 - 1);
    if (v18 < 0 != v17)
    {
LABEL_38:
      v22 = v18;
    }

    else
    {
      v19 = (*(v14 + 4) + 32 * v18);
      do
      {
        v20 = *v19;
        if (*v19)
        {
          for (i = v15; ; ++i)
          {
            if (*v20 == *i)
            {
              if (!*v20)
              {
                goto LABEL_38;
              }
            }

            else if (byte_181A20298[*v20] != byte_181A20298[*i])
            {
              break;
            }

            ++v20;
          }
        }

        if (!v18)
        {
          v24 = "main";
          for (j = v15; ; ++j)
          {
            if (*v24 == *j)
            {
              if (!*v24)
              {
                v22 = 0;
                if (!v12)
                {
                  goto LABEL_41;
                }

LABEL_40:
                *v12 = -1;
                goto LABEL_41;
              }
            }

            else if (byte_181A20298[*v24] != byte_181A20298[*j])
            {
              break;
            }

            ++v24;
          }
        }

        v19 -= 4;
        v22 = -1;
        v23 = v18 <= 0;
        LODWORD(v18) = v18 - 1;
      }

      while (!v23);
    }

    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_76:
  v22 = -1;
  if (v12)
  {
    goto LABEL_40;
  }

LABEL_41:
  if ((v22 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v10)
  {
    v26 = *(v10 + 8);
    if (v12)
    {
      *v12 = *v26;
    }

    if (v11)
    {
      return *(v26 + 24);
    }

    v27 = *v26;
    if (sqlite3_initialize())
    {
      return 0;
    }

    result = sub_181902484(v27, 4042274623);
    if (result)
    {
      v28 = result;
      memcpy(result, *(v26 + 24), *v26);
      return v28;
    }

    return result;
  }

  v29 = *(*(v14 + 4) + 32 * v22 + 8);
  if (!v29)
  {
    return 0;
  }

  v30 = *(*(v29 + 8) + 52);
  result = sqlite3_mprintf("PRAGMA %w.page_count", v15);
  if (result)
  {
    v32 = result;
    v33 = sub_1818954B4(db, result, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v31);
    v34 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v32);
      --qword_1ED456A90;
      off_1ED452EB0(v32);
      v32 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_57:
        if (v33)
        {
          return 0;
        }

        if (sqlite3_step(pStmt) != 100)
        {
          goto LABEL_66;
        }

        v35 = sqlite3_column_int64(pStmt, 0) * v30;
        if (!v35)
        {
          sqlite3_reset(pStmt);
          sqlite3_exec(db, "BEGIN IMMEDIATE; COMMIT;", 0, 0, 0);
          if (sqlite3_step(pStmt) == 100)
          {
            v35 = sqlite3_column_int64(pStmt, 0) * v30;
          }
        }

        if (piSize)
        {
          *piSize = v35;
        }

        if ((v7 & 1) != 0 || sqlite3_initialize() || (v40 = sub_181902484(v35, 420176254)) == 0)
        {
LABEL_66:
          v36 = 0;
        }

        else
        {
          v36 = v40;
          v41 = sqlite3_column_int(pStmt, 0);
          if (v41 >= 1)
          {
            v42 = **(v29 + 8);
            v43 = (v41 + 1);
            v44 = 1;
            v45 = v36;
            while (1)
            {
              v49 = 0;
              if (!(*(v42 + 288))(v42, v44, &v49, 0))
              {
                break;
              }

              bzero(v45, v30);
              v46 = v49;
              if (v49)
              {
                goto LABEL_87;
              }

LABEL_82:
              ++v44;
              v45 += v30;
              if (v43 == v44)
              {
                goto LABEL_67;
              }
            }

            v46 = v49;
            memcpy(v45, *(v49 + 8), v30);
LABEL_87:
            if ((*(v46 + 52) & 0x20) != 0)
            {
              v47 = *(v46 + 40);
              --*(v47 + 152);
              *(v46 + 32) = *(v47 + 168);
              *(v47 + 168) = v46;
              (*(**(v47 + 72) + 144))(*(v47 + 72), *(v47 + 200) * (*(v46 + 48) - 1), *(v46 + 8));
            }

            else
            {
              sub_181932B68(v46);
            }

            goto LABEL_82;
          }
        }

LABEL_67:
        sqlite3_finalize(pStmt);
        return v36;
      }

      v34 = &xmmword_1ED452F28;
    }

    (*v34)(v32);
    goto LABEL_57;
  }

  return result;
}

int sqlite3_deserialize(sqlite3 *db, const char *zSchema, unsigned __int8 *pData, sqlite3_int64 szDb, sqlite3_int64 szBuf, unsigned int mFlags)
{
  pStmt = 0;
  if (!db)
  {
    v7 = "NULL";
    goto LABEL_33;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_33:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    v21 = 60861;
LABEL_34:

    return sub_1819012D0(v21);
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_33;
    }

    goto LABEL_5;
  }

  if (szDb < 0)
  {
    v21 = 60863;
    goto LABEL_34;
  }

  if (szBuf < 0)
  {
    v21 = 60864;
    goto LABEL_34;
  }

  v8 = db;
  if (*(db + 3))
  {
    v10 = mFlags;
    v11 = szBuf;
    v12 = szDb;
    v13 = zSchema;
    xmmword_1ED452F18(*(db + 3));
    zSchema = v13;
    szDb = v12;
    szBuf = v11;
    mFlags = v10;
    db = v8;
  }

  if (!zSchema)
  {
    zSchema = **(db + 4);
    if (!zSchema)
    {
      goto LABEL_39;
    }
  }

  v14 = *(db + 10);
  v15 = (v14 - 1);
  if (v14 >= 1)
  {
    v16 = (*(db + 4) + 32 * v15);
    do
    {
      if (*v16)
      {
        for (i = 0; ; ++i)
        {
          if (*(*v16 + i) == zSchema[i])
          {
            if (!*(*v16 + i))
            {
              goto LABEL_40;
            }
          }

          else if (byte_181A20298[*(*v16 + i)] != byte_181A20298[zSchema[i]])
          {
            break;
          }
        }
      }

      if (!v15)
      {
        for (j = 0; ; ++j)
        {
          if (aMain[j] == zSchema[j])
          {
            if (!aMain[j])
            {
              v20 = mFlags;
              LOBYTE(v15) = 0;
              goto LABEL_43;
            }
          }

          else if (byte_181A20298[aMain[j]] != byte_181A20298[zSchema[j]])
          {
            break;
          }
        }
      }

      v16 -= 4;
      v18 = v15 <= 0;
      LODWORD(v15) = v15 - 1;
    }

    while (!v18);
LABEL_39:
    LODWORD(v15) = -1;
  }

LABEL_40:
  v20 = mFlags;
  if (v15 <= 1 && v15)
  {
LABEL_42:
    v23 = 1;
    goto LABEL_65;
  }

LABEL_43:
  v24 = szDb;
  v40 = szBuf;
  v25 = zSchema;
  v26 = sqlite3_mprintf("ATTACH x AS %Q", zSchema);
  if (!v26)
  {
    v23 = 7;
    goto LABEL_65;
  }

  v28 = v26;
  v23 = sub_1818954B4(v8, v26, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v27);
  v29 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_49;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
  --qword_1ED456A90;
  off_1ED452EB0(v28);
  v28 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v29 = &xmmword_1ED452F28;
LABEL_49:
    (*v29)(v28);
  }

  if (v23)
  {
    goto LABEL_65;
  }

  *(v8 + 196) = v15;
  *(v8 + 198) |= 4u;
  v30 = sqlite3_step(pStmt);
  *(v8 + 198) &= ~4u;
  if (v30 != 101)
  {
    goto LABEL_42;
  }

  v42 = 0;
  if (sqlite3_file_control(v8, v25, 7, &v42) || *v42 != &unk_1EEF8FEB8)
  {
    goto LABEL_42;
  }

  v31 = *(v42 + 8);
  v32 = *(v31 + 32);
  if (v32)
  {
    xmmword_1ED452F18(v32);
  }

  if (*(v31 + 64))
  {
    v42 = 0;
  }

  v33 = *(v31 + 32);
  if (v33)
  {
    xmmword_1ED452F28(v33);
  }

  if (!v42)
  {
    goto LABEL_42;
  }

  v23 = 0;
  v34 = *(v42 + 8);
  v35 = v40;
  *v34 = v24;
  *(v34 + 8) = v40;
  if (qword_1ED453030 > v40)
  {
    v35 = qword_1ED453030;
  }

  *(v34 + 16) = v35;
  *(v34 + 24) = pData;
  *(v34 + 44) = v20;
  pData = 0;
LABEL_65:
  sqlite3_finalize(pStmt);
  if (v20)
  {
    v36 = pData;
    if (pData)
    {
      v37 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
          v36 = pData;
        }

        v38 = v36;
        qword_1ED456A48[0] -= xmmword_1ED452EC0(v36);
        --qword_1ED456A90;
        off_1ED452EB0(v38);
        v36 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_73;
        }

        v37 = &xmmword_1ED452F28;
      }

      (*v37)(v36);
    }
  }

LABEL_73:
  v39 = *(v8 + 3);
  if (v39)
  {
    xmmword_1ED452F28(v39);
  }

  return v23;
}

sqlite3_file *__cdecl sqlite3_database_file_object(sqlite3_file *result)
{
  if (result)
  {
      ;
    }

    return *(*(i - 1) + 72);
  }

  return result;
}

int sqlite3_snapshot_cmp(sqlite3_snapshot *p1, sqlite3_snapshot *p2)
{
  if (p1 && p2)
  {
    v4 = *&p1->hidden[32];
    v5 = *&p2->hidden[32];
    if (v4 >= v5)
    {
      if (v4 > v5)
      {
        return 1;
      }

      else
      {
        v7 = *&p1->hidden[16];
        v8 = *&p2->hidden[16];
        v9 = v7 >= v8;
        v10 = v7 > v8;
        if (v9)
        {
          return v10;
        }

        else
        {
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    sub_1819012D0(78774);
    return p1 != p2;
  }
}