uint64_t aaEntryAttributesInitWithHeader(char *__s, char *a2, char *a3, AAHeader header)
{
  v30 = *MEMORY[0x29EDCA608];
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
            if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v26) & 0x80000000) == 0 && hash_function == 2)
            {
              *a3 |= 2u;
              *(a3 + 8) = *v26;
              *(a3 + 6) = v27;
            }
          }

          else if (v14 == 3295315 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v26) & 0x80000000) == 0 && hash_function == 3)
          {
            *a3 |= 4u;
            v15 = v27;
            *(a3 + 28) = *v26;
            *(a3 + 44) = v15;
          }
        }

        else if (v14 == 3360851)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v26) & 0x80000000) == 0 && hash_function == 4)
          {
            *a3 |= 8u;
            v16 = v27;
            *(a3 + 60) = *v26;
            *(a3 + 76) = v16;
            *(a3 + 92) = v28;
          }
        }

        else if (v14 == 3491923)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v26) & 0x80000000) == 0 && hash_function == 5)
          {
            *a3 |= 0x10u;
            v17 = v27;
            *(a3 + 108) = *v26;
            *(a3 + 124) = v17;
            v18 = v29;
            *(a3 + 140) = v28;
            *(a3 + 156) = v18;
          }
        }

        else if (v14 == 5458755 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v26) & 0x80000000) == 0 && hash_function == 1)
        {
          *a3 |= 1u;
          *(a3 + 1) = *v26;
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

  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t aaEntryAttributesInitWithFD(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, int a5)
{
  v26 = *MEMORY[0x29EDCA608];
  memset(&v24, 0, sizeof(v24));
  if (fstat(a5, &v24) < 0)
  {
    v17 = *__error();
    v18 = "fstat";
    v19 = 217;
LABEL_40:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", v19, 102, v17, v18, v13, v14, v21);
    result = 0xFFFFFFFFLL;
    goto LABEL_41;
  }

  if (a1)
  {
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v10 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v10;
    if (a4)
    {
      *(a1 + 1) = v24.st_uid;
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

    *(a1 + 2) = v24.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_6:
      if ((a4 & 4) == 0)
      {
LABEL_8:
        if ((a4 & 0x30) != 0)
        {
          v23[1] = 0;
          v23[2] = 0;
          memset(v25, 0, sizeof(v25));
          v23[0] = 0x220000000005;
          if (!fgetattrlist(a5, v23, v25, 0x40uLL, 1u) && LODWORD(v25[0]) == 36)
          {
            *(a1 + 40) = *(v25 + 4);
            *(a1 + 24) = *(&v25[1] + 4);
          }

          v10 = *a1;
        }

        if ((v10 & 0x40) != 0)
        {
          *(a1 + 56) = v24.st_mtimespec;
        }

        goto LABEL_15;
      }

LABEL_7:
      *(a1 + 3) = v24.st_flags;
      goto LABEL_8;
    }

LABEL_35:
    *(a1 + 4) = v24.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  if (!a2)
  {
    goto LABEL_28;
  }

  memset_s(a2, 0x38uLL, 0, 0x38uLL);
  *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
  st_mode = v24.st_mode;
  v12 = v24.st_mode & 0xF000;
  if (v12 == 0x8000)
  {
    if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
    {
LABEL_23:
      if ((*a2 & 4) != 0)
      {
        *(a2 + 2) = getFileAPFSInternalFlagsFD();
        st_mode = v24.st_mode;
      }

      goto LABEL_25;
    }

    *&v25[0] = 0;
    v22 = 0;
    LODWORD(v23[0]) = 0;
    if ((ParallelCompressionAFSCGetMetadataFD(a5, v25, v23, &v22) & 0x80000000) != 0)
    {
      v18 = "querying AFSC metadata";
      v19 = 277;
      goto LABEL_39;
    }

    v15 = v22;
    *(a2 + 2) = v23[0];
    *(a2 + 3) = v15;
    st_mode = v24.st_mode;
    v12 = v24.st_mode & 0xF000;
  }

  if (v12 == 0x8000 || v12 == 0x4000)
  {
    goto LABEL_23;
  }

LABEL_25:
  if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
  {
    *(a2 + 1) = getFileProtectionClassFD(a5);
  }

LABEL_28:
  if (a3 && (v24.st_mode & 0xF000) == 0x8000 && (aaEntryHashesInitWithFD(a3, a4, a5) & 0x80000000) != 0)
  {
    v18 = "computing file digests";
    v19 = 290;
LABEL_39:
    v17 = 0;
    goto LABEL_40;
  }

  result = 0;
LABEL_41:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaEntryAttributesInitWithPath(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, char *__s, const char *a6)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(&v31, 0, sizeof(v31));
  if ((concatPath(v33, 0x800uLL, __s, a6) & 0x80000000) != 0)
  {
    v21 = "invalid path";
    v22 = 309;
LABEL_36:
    v23 = 0;
LABEL_38:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", v22, 102, v23, v21, v10, v11, v28);
LABEL_39:
    result = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

  if (lstat(v33, &v31) < 0)
  {
    v23 = *__error();
    v28 = v33;
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
      *(a1 + 1) = v31.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_6:
        if ((a4 & 8) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_43;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 2) = v31.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_7:
      if ((a4 & 4) == 0)
      {
LABEL_9:
        if ((a4 & 0x30) != 0)
        {
          v30[1] = 0;
          v30[2] = 0;
          memset(v32, 0, sizeof(v32));
          v30[0] = 0x220000000005;
          if (!getattrlist(v33, v30, v32, 0x40uLL, 1u) && LODWORD(v32[0]) == 36)
          {
            *(a1 + 40) = *(v32 + 4);
            *(a1 + 24) = *(&v32[1] + 4);
          }

          v12 = *a1;
        }

        if ((v12 & 0x40) != 0)
        {
          *(a1 + 56) = v31.st_mtimespec;
        }

        goto LABEL_16;
      }

LABEL_8:
      *(a1 + 3) = v31.st_flags;
      goto LABEL_9;
    }

LABEL_43:
    *(a1 + 4) = v31.st_mode & 0xFFF;
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
  st_mode = v31.st_mode;
  v14 = v31.st_mode & 0xF000;
  if (v14 == 0x8000)
  {
    if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
    {
LABEL_24:
      if ((*a2 & 4) != 0)
      {
        *(a2 + 2) = getFileAPFSInternalFlagsFD();
        st_mode = v31.st_mode;
      }

      goto LABEL_26;
    }

    *&v32[0] = 0;
    v29 = 0;
    LODWORD(v30[0]) = 0;
    if ((ParallelCompressionAFSCGetMetadata(v33, v32, v30, &v29) & 0x80000000) == 0)
    {
      v15 = v29;
      *(a2 + 2) = v30[0];
      *(a2 + 3) = v15;
      st_mode = v31.st_mode;
      v14 = v31.st_mode & 0xF000;
      goto LABEL_22;
    }

    v28 = v33;
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
    *(a2 + 1) = getFileProtectionClass(v33);
  }

LABEL_29:
  if (!a3 || (v31.st_mode & 0xF000) != 0x8000)
  {
    goto LABEL_34;
  }

  v16 = open(v33, 0);
  if (v16 < 0)
  {
    v25 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 384, 102, v25, "open: %s", v26, v27, v33);
    goto LABEL_39;
  }

  v17 = v16;
  if ((aaEntryHashesInitWithFD(a3, a4, v16) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 385, 102, 0, "computing file digests: %s", v18, v19, v33);
    close(v17);
    goto LABEL_39;
  }

  close(v17);
LABEL_34:
  result = 0;
LABEL_40:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaEntryAttributesApplyToPath(char *a1, char *__s, const char *a3, char a4)
{
  v66 = *MEMORY[0x29EDCA608];
  if ((concatPath(v65, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    v11 = "invalid path";
    v12 = 399;
    v13 = 0;
    goto LABEL_33;
  }

  v63[1] = 0;
  v63[2] = 0;
  v63[0] = 5;
  memset(v64, 0, sizeof(v64));
  v8 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v64[0] = *(a1 + 40);
    v9 = 512;
    HIDWORD(v63[0]) = 512;
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
    v14 = (v64 + v10);
    v15 = *(a1 + 56);
    *v14 = v15;
    v14[1] = v15;
    v10 |= 0x20u;
    v9 |= 0x1400u;
    HIDWORD(v63[0]) = v9;
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

  *(v64 + v10) = *(a1 + 24);
  v10 += 16;
  HIDWORD(v63[0]) = v9 | 0x2000;
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
  memset(&v62, 0, sizeof(v62));
  if (lstat(v65, &v62) < 0)
  {
    v23 = __error();
    if ((a4 & 1) != 0 && *v23 == 13)
    {
      result = 0;
      goto LABEL_64;
    }

    v13 = *__error();
    v61 = v65;
    v11 = "%s";
    v12 = 451;
LABEL_33:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", v12, 102, v13, v11, v6, v7, v61);
    result = 0xFFFFFFFFLL;
    goto LABEL_64;
  }

  v18 = v62.st_mode & 0xF000;
  if (v18 != 0x4000 && v18 != 40960 && v18 != 0x8000)
  {
    if ((*a1 & 1) != 0 && v16 != v62.st_uid || (v21 = 1, (*a1 & 2) != 0) && v17 != v62.st_gid)
    {
      if (!lchown(v65, v16, v17) || (v25 = __error(), (a4 & 1) != 0) && *v25 == 1)
      {
        v21 = 1;
      }

      else
      {
        v44 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 502, 102, *v44, "%s", v45, v46, v65);
        v21 = 0;
      }
    }

    if ((*a1 & 8) != 0)
    {
      v47 = *(a1 + 4) & 0xFFF;
      if (v47 != (v62.st_mode & 0xFFF))
      {
        if (lchmod(v65, v47))
        {
          v48 = __error();
          if ((a4 & 1) == 0 || *v48 != 1)
          {
            v49 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 507, 102, *v49, "%s", v50, v51, v65);
            v21 = 0;
          }
        }
      }
    }

    if (HIDWORD(v63[0]))
    {
      if (setattrlist(v65, v63, v64, v10, 1u))
      {
        v52 = __error();
        if ((a4 & 1) == 0 || *v52 != 1)
        {
          v53 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 520, 102, *v53, "%s", v54, v55, v65);
          v21 = 0;
        }
      }
    }

    if ((*a1 & 4) != 0)
    {
      v56 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v62.st_flags >> 5) & 1));
      if (v62.st_flags != v56)
      {
        if (lchflags(v65, v56))
        {
          v57 = __error();
          if ((a4 & 1) == 0 || *v57 != 1)
          {
            v58 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 534, 102, *v58, "%s", v59, v60, v65);
            v21 = 0;
          }
        }
      }
    }

    goto LABEL_61;
  }

  v19 = open(v65, 0x200000);
  if (v19 < 0)
  {
    v13 = *__error();
    v61 = v65;
    v11 = "%s";
    v12 = 464;
    goto LABEL_33;
  }

  v20 = v19;
  if ((*a1 & 1) != 0 && v16 != v62.st_uid || (v21 = 1, (*a1 & 2) != 0) && v17 != v62.st_gid)
  {
    if (!fchown(v19, v16, v17) || (v22 = __error(), (a4 & 1) != 0) && *v22 == 1)
    {
      v21 = 1;
    }

    else
    {
      v26 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 468, 102, *v26, "%s", v27, v28, v65);
      v21 = 0;
    }
  }

  if ((*a1 & 8) != 0)
  {
    v29 = *(a1 + 4) & 0xFFF;
    if (v29 != (v62.st_mode & 0xFFF))
    {
      if (fchmod(v20, v29))
      {
        v30 = __error();
        if ((a4 & 1) == 0 || *v30 != 1)
        {
          v31 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 472, 102, *v31, "%s", v32, v33, v65);
          v21 = 0;
        }
      }
    }
  }

  if (HIDWORD(v63[0]))
  {
    if (fsetattrlist(v20, v63, v64, v10, 1u))
    {
      v34 = __error();
      if ((a4 & 1) == 0 || *v34 != 1)
      {
        v35 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 477, 102, *v35, "%s", v36, v37, v65);
        v21 = 0;
      }
    }
  }

  if ((*a1 & 4) != 0)
  {
    v38 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v62.st_flags >> 5) & 1));
    if (v62.st_flags != v38)
    {
      if (fchflags(v20, v38))
      {
        v39 = __error();
        if ((a4 & 1) == 0 || *v39 != 1)
        {
          v40 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 491, 102, *v40, "%s", v41, v42, v65);
          v21 = 0;
        }
      }
    }
  }

  close(v20);
LABEL_61:
  if (v21)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_64:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaEntryAttributesApplyToFD(char *a1, int a2, char a3)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(&v51, 0, sizeof(v51));
  if (fstat(a2, &v51) < 0)
  {
    v9 = __error();
    if ((a3 & 1) != 0 && *v9 == 13)
    {
      goto LABEL_31;
    }

    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 553, 102, *v10, "fstat", v11, v12, v49[0]);
    result = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  v50[1] = 0;
  v50[2] = 0;
  v50[0] = 5;
  memset(v56, 0, sizeof(v56));
  v49[1] = 0;
  v49[2] = 0;
  v49[0] = 5;
  memset(v55, 0, sizeof(v55));
  v6 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v56[0] = *(a1 + 40);
    v7 = 512;
    HIDWORD(v50[0]) = 512;
    v55[0] = v56[0];
    HIDWORD(v49[0]) = 512;
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
    *(v56 + v8) = v14;
    v15 = v8 + 16;
    *(v56 + v15) = v14;
    *(v55 + v8) = v14;
    v8 |= 0x20u;
    v7 |= 0x1400u;
    HIDWORD(v50[0]) = v7;
    *(v55 + v15) = v14;
    HIDWORD(v49[0]) = v7;
  }

LABEL_10:
  if ((v6 & 0x10) != 0)
  {
    v16 = *(a1 + 24);
    *(v56 + v8) = v16;
    *(v55 + v8) = v16;
    v8 += 16;
    v7 |= 0x2000u;
    HIDWORD(v50[0]) = v7;
    HIDWORD(v49[0]) = v7;
  }

  v17 = v7;
  v18 = v8;
  if (v6)
  {
    v19 = *(a1 + 1);
    v17 = v7;
    v18 = v8;
    if (v19 != v51.st_uid)
    {
      *(v56 + v8) = v19;
      v18 = v8 + 4;
      v17 = v7 | 0x8000;
      HIDWORD(v50[0]) = v7 | 0x8000;
    }
  }

  if ((v6 & 2) != 0)
  {
    v20 = *(a1 + 2);
    if (v20 != v51.st_gid)
    {
      *(v56 + v18) = v20;
      v18 += 4;
      v17 |= 0x10000u;
      HIDWORD(v50[0]) = v17;
    }
  }

  if ((v6 & 8) != 0)
  {
    v21 = *(a1 + 4) & 0xFFF;
    if (v21 != (v51.st_mode & 0xFFF))
    {
      *(v56 + v18) = v21;
      v18 += 4;
      v17 |= 0x20000u;
      HIDWORD(v50[0]) = v17;
      *(v55 + v8) = v21;
      v8 += 4;
      v7 |= 0x20000u;
      HIDWORD(v49[0]) = v7;
    }
  }

  if ((v6 & 4) != 0)
  {
    v22 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v51.st_flags >> 5) & 1));
    if (v22 != v51.st_flags)
    {
      *(v56 + v18) = v22;
      v18 += 4;
      v17 |= 0x40000u;
      HIDWORD(v50[0]) = v17;
      *(v55 + v8) = v22;
      v8 += 4;
      HIDWORD(v49[0]) = v7 | 0x40000;
    }
  }

  if (!v17)
  {
    goto LABEL_31;
  }

  result = fsetattrlist(a2, v50, v56, v18, 1u);
  if (result)
  {
    v23 = __error();
    if ((a3 & 1) == 0 || *v23 != 1 || (result = fsetattrlist(a2, v49, v55, v8, 1u), result))
    {
      v24 = __error();
      if ((a3 & 1) != 0 && *v24 == 1)
      {
LABEL_31:
        result = 0;
        goto LABEL_32;
      }

      if (*a1)
      {
        v26 = *(a1 + 1);
        if ((*a1 & 2) != 0)
        {
LABEL_35:
          v27 = *(a1 + 2);
          if ((*a1 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v26 = -1;
        if ((*a1 & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      v27 = -1;
      if ((*a1 & 1) == 0)
      {
LABEL_40:
        v28 = 1;
        if ((*a1 & 2) == 0 || v27 == v51.st_gid)
        {
LABEL_47:
          if ((*a1 & 8) != 0)
          {
            v33 = *(a1 + 4) & 0xFFF;
            if (v33 != (v51.st_mode & 0xFFF))
            {
              if (fchmod(a2, v33))
              {
                v34 = __error();
                if ((a3 & 1) == 0 || *v34 != 1)
                {
                  v35 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 667, 102, *v35, "fchmod", v36, v37, v49[0]);
                  v28 = 0;
                }
              }
            }
          }

          v38 = *a1;
          if ((*a1 & 0x40) != 0)
          {
            v39 = *(a1 + 8);
            v53 = *(a1 + 7);
            v52.tv_sec = v53;
            v54 = v39 / 1000;
            v52.tv_usec = v39 / 1000;
            if (futimes(a2, &v52))
            {
              v40 = __error();
              if ((a3 & 1) == 0 || *v40 != 1)
              {
                v41 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 675, 102, *v41, "futimes", v42, v43, v49[0]);
                v28 = 0;
              }
            }

            v38 = *a1;
          }

          if ((v38 & 4) != 0)
          {
            v44 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v51.st_flags >> 5) & 1));
            if (v51.st_flags != v44)
            {
              if (fchflags(a2, v44))
              {
                v45 = __error();
                if ((a3 & 1) == 0 || *v45 != 1)
                {
                  v46 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 689, 102, *v46, "fchflags", v47, v48, v49[0]);
                  v28 = 0;
                }
              }
            }
          }

          if (v28)
          {
            result = 0;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          goto LABEL_32;
        }

LABEL_42:
        if (!fchown(a2, v26, v27) || (v29 = __error(), (a3 & 1) != 0) && *v29 == 1)
        {
          v28 = 1;
        }

        else
        {
          v30 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 663, 102, *v30, "fchown", v31, v32, v49[0]);
          v28 = 0;
        }

        goto LABEL_47;
      }

LABEL_39:
      if (v26 != v51.st_uid)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }
  }

LABEL_32:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaEntryAttributesCmp(uint64_t a1, uint64_t a2, char a3)
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

uint64_t aaEntryInternalAttributesCmp(uint64_t a1, uint64_t a2, __int16 a3)
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

uint64_t aaEntryHashesCmp(uint64_t a1, uint64_t a2, __int16 a3)
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

uint64_t aaCheckAndFixWithPath(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6, char *__s, const char *a8, uint64_t a9)
{
  v114 = *MEMORY[0x29EDCA608];
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  memset(v113, 0, 172);
  if ((concatPath(v112, 0x800uLL, __s, a8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 781, 102, 0, "invalid path: %s", v17, v18, a8);
    v27 = 0;
    v40 = 0;
    v64 = 0;
    v75 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v96 = a6;
  v97 = a3;
  v100 = a1;
  v19 = *a1;
  v102 = a2;
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 808, 102, *v76, "malloc", v77, v78, v95);
    v27 = 0;
    v75 = 0xFFFFFFFFLL;
    a6 = v96;
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
  v33 = vshlq_u64(vandq_s8(v30, v31), xmmword_296AD1F30);
  *v31.i8 = vdup_n_s32(v21);
  v34 = vshl_u32(*v31.i8, 0xFFFFFFFCFFFFFFFELL);
  v35 = vorrq_s8(vshlq_u64(v32, xmmword_296AD1F40), v33);
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
  *v98 = v24;
  while (1)
  {
    v41 = v28;
    if ((v38 & 0x20000) != 0 && (aaEntryXATBlobInitWithPath(xat, __s, a8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 813, 102, 0, "loading file XAT: %s", v42, v43, a8);
      goto LABEL_76;
    }

    if ((v38 & 0x40000) != 0 && (aaEntryACLBlobInitWithPath(v40, __s, a8, a9) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 814, 102, 0, "loading file ACL: %s", v44, v45, a8);
LABEL_76:
      v75 = 0xFFFFFFFFLL;
LABEL_77:
      a6 = v96;
      goto LABEL_83;
    }

    if ((aaEntryAttributesInitWithPath(v110, v108, v113, v38, __s, a8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 815, 102, 0, "loading file attributes: %s", v46, v47, a8);
      goto LABEL_76;
    }

    v99 = aaEntryAttributesCmp(v110, v100, v38);
    v48 = aaEntryInternalAttributesCmp(v108, v102, v38) | v99;
    v27 = aaEntryHashesCmp(v113, v97, v38) ? v48 | 0x80000 : v48;
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
    memset(&v107, 0, sizeof(v107));
    v58 = open(v112, 0);
    if (v58 < 0)
    {
      v79 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 838, 102, v79, "open: %s", v80, v81, v112);
LABEL_81:
      v75 = 0xFFFFFFFFLL;
LABEL_82:
      a6 = v96;
      v40 = *v98;
      goto LABEL_83;
    }

    v59 = v58;
    if (fstat(v58, &v107) < 0)
    {
      v82 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 839, 102, *v82, "fstat: %s", v83, v84, v112);
      close(v59);
      goto LABEL_81;
    }

    v63 = ParallelArchiveECCVerifyFileSegment(v59, 0, v107.st_size, *(a4 + 1), *(a4 + 2), v60, v61, v62);
    close(v59);
    if (v63 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 842, 102, 0, "verifying data: %s", v52, v53, v112);
      goto LABEL_81;
    }

    if (v63)
    {
      goto LABEL_38;
    }

    v27 |= 0x80000u;
LABEL_39:
    v40 = *v98;
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

    v106 = 0;
    v104 = 0;
    v105 = -1;
    if ((ParallelCompressionAFSCGetMetadata(v112, &v106, &v105, &v104) & 0x80000000) != 0)
    {
      v87 = "get AFSC attributes";
      v88 = 861;
      goto LABEL_89;
    }

    memset(&v107, 0, sizeof(v107));
    v67 = open(v112, 2);
    if (v67 < 0)
    {
      v89 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 866, 102, v89, "open: %s", v90, v91, v112);
      goto LABEL_90;
    }

    v68 = v67;
    if (fstat(v67, &v107) < 0)
    {
      break;
    }

    memset(v103, 0, sizeof(v103));
    v69 = ParallelArchiveECCFixFileSegment(v68, 0, v107.st_size, *(a4 + 1), *(a4 + 2), v103);
    close(v68);
    if (v69 >= 1)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 871, 102, "Fixed data using ECC: %s", v70, v71, v72, a8);
    }

    ParallelCompressionAFSCFixupMetadata(v112, v105, v104);
    v40 = *v98;
LABEL_48:
    if ((v27 & 0x184) != 0)
    {
      if ((*v100 & 4) != 0)
      {
        v73 = ((*(v100 + 12) >> 5) & 1) - 1;
      }

      else
      {
        v73 = -1;
      }

      if (*v102)
      {
        v73 = *(v102 + 8);
      }

      if ((*v102 & 2) != 0)
      {
        v74 = *(v102 + 12);
      }

      else
      {
        v74 = 0;
      }

      ParallelCompressionAFSCFixupMetadata(v112, v73, v74);
    }

    if ((v27 & 0x200) != 0)
    {
      setFileAPFSInternalFlags(v112, *(v102 + 16));
    }

    if ((v27 & 0x20000) != 0)
    {
      if ((aaEntryXATBlobInitWithEncodedData(xat, *(a4 + 3), *(a4 + 4), v49, v50, v51, v52, v53) & 0x80000000) != 0)
      {
        v87 = "invalid XAT blob in manifest";
        v88 = 902;
        goto LABEL_89;
      }

      AAEntryXATBlobApplyToPath(xat, __s, a8, a9 | 8);
    }

    if ((v27 & 0x40000) != 0)
    {
      if ((aaEntryACLBlobInitWithEncodedData(v40, *(a4 + 5), *(a4 + 6), v49, v50, v51, v52, v53) & 0x80000000) == 0)
      {
        AAEntryACLBlobApplyToPath(v40, __s, a8, a9 | 8);
        goto LABEL_66;
      }

      v87 = "invalid ACL blob in manifest";
      v88 = 909;
LABEL_89:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", v88, 102, 0, v87, v65, v66, v95);
      goto LABEL_90;
    }

LABEL_66:
    v39 = 0;
    v28 = 1;
    if (v99)
    {
      aaEntryAttributesApplyToPath(v100, __s, a8, a9);
      v39 = 0;
      v28 = 1;
    }
  }

  v92 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 867, 102, *v92, "fstat: %s", v93, v94, v112);
  close(v68);
LABEL_90:
  v75 = 0xFFFFFFFFLL;
  a6 = v96;
LABEL_84:
  *a6 = v27;
  a6[1] = 0;
  AAEntryXATBlobDestroy(v64);
  AAEntryACLBlobDestroy(v40);
  v85 = *MEMORY[0x29EDCA608];
  return v75;
}

uint64_t aaCopyFile(const char *a1, const char *a2, char a3)
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 948, 102, v34, "stat: %s", v35, v36, a1);
    }

    else if ((v64.st_mode & 0xF000) == 0x8000)
    {
      if ((aaEntryAttributesInitWithFD(v69, v65, 0, 0xFFFFFFFF, v7) & 0x80000000) == 0)
      {
        v12 = AAEntryXATBlobCreate();
        v15 = v12;
        if (v12 && (aaEntryXATBlobInitWithFD(v12, v7) & 0x80000000) == 0)
        {
          v16 = AAEntryACLBlobCreate();
          v19 = v16;
          if (!v16 || (aaEntryACLBlobInitWithFD(v16, v7, 0) & 0x80000000) != 0)
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
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 980, 102, *v23, "malloc", v24, v25, v63);
                }

                if (statIsCompressed(v64.st_flags))
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
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v30, 102, v56, v29, v27, v28, v63);
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
                if ((aaEntryAttributesApplyToFD(v69, v21, a3) & 0x80000000) == 0 && (aaEntryXATBlobApplyToFD(v15, v21, a3, v43, v44, v45, v46, v47) & 0x80000000) == 0 && (aaEntryACLBlobApplyToFD(v19, v21, a3) & 0x80000000) == 0)
                {
                  v48 = 0;
                  v37 = 1;
                  if ((v65[0] & 4) != 0 && v66)
                  {
                    if ((setFileAPFSInternalFlags(v21, v66) & 0x80000000) != 0)
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
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v50, 102, v51, v49, v46, v47, v63);
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

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v40, 102, v41, v39, v17, v18, v62);
          goto LABEL_28;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 952, 102, 0, "get XAT", v13, v14, v62);
LABEL_27:
        v19 = 0;
LABEL_28:
        close(v7);
        v22 = 0;
        goto LABEL_29;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 950, 102, 0, "get attributes", v10, v11, v62);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 949, 102, 0, "not a regular file: %s", v8, v9, a1);
    }

    v15 = 0;
    goto LABEL_27;
  }

  v31 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 947, 102, *v31, "open: %s", v32, v33, a1);
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

uint64_t AARandomAccessDecodeAndExtract(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, unint64_t a6, int DefaultNThreads)
{
  v254 = *MEMORY[0x29EDCA608];
  memset(&v253, 0, sizeof(v253));
  v14 = malloc(0x520uLL);
  if (!v14)
  {
    v39 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreate", 812, 120, *v39, "malloc", v40, v41, v248);
    goto LABEL_28;
  }

  v15 = v14;
  memset_s(v14, 0x520uLL, 0, 0x520uLL);
  *v15 = a1;
  *(v15 + 8) = a2;
  if (!realpath_DARWIN_EXTSN(a3, (v15 + 16)) || lstat((v15 + 16), &v253) < 0 || (v253.st_mode & 0xF000) != 0x4000)
  {
    v34 = *__error();
    v248 = a3;
    v35 = "invalid directory: %s";
    v36 = 819;
LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreate", v36, 120, v34, v35, v22, v23, v248);
    stateDestroy(v15);
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1352, 120, 0, "creating state", v37, v38, v249);
    v15 = 0;
    goto LABEL_29;
  }

  *(v15 + 1056) = a6;
  *(v15 + 1040) = a4;
  *(v15 + 1048) = a5;
  *(v15 + 1080) = a6 >> 62;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *(v15 + 1152) = DefaultNThreads;
  *(v15 + 1064) = isDirEmpty((v15 + 16)) == 0;
  *(v15 + 1068) = (a6 >> 54) & 1;
  VolumeCapabilities = getVolumeCapabilities((v15 + 16));
  v17 = VolumeCapabilities & ~(VolumeCapabilities >> 63);
  v18 = 268;
  if ((v17 & 8) == 0)
  {
    v18 = 264;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v17 & 1));
  if ((a6 & 0x20) == 0 && (v17 & 2) != 0)
  {
    v20 = v19 | 0x40;
  }

  else
  {
    v20 = v19;
  }

  *(v15 + 1088) = v20;
  v21 = StringTableCreate();
  *(v15 + 1096) = v21;
  if (!v21)
  {
    v35 = "string table creation";
    v36 = 842;
    goto LABEL_49;
  }

  v24 = calloc(*(v15 + 1152), 8uLL);
  *(v15 + 1160) = v24;
  if (!v24)
  {
    v34 = *__error();
    v35 = "malloc";
    v36 = 845;
    goto LABEL_26;
  }

  if (*(v15 + 1152))
  {
    v25 = 0;
    while (1)
    {
      v26 = malloc(0x858uLL);
      v27 = v26;
      if (v26)
      {
        memset_s(v26, 0x858uLL, 0, 0x858uLL);
        *(v27 + 40) = 0x40000;
        v28 = malloc(0x40000uLL);
        *(v27 + 32) = v28;
        if (v28)
        {
          *(v27 + 2104) = -1;
          goto LABEL_22;
        }

        v29 = 120;
      }

      else
      {
        v29 = 116;
      }

      v30 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreate", v29, 120, *v30, "malloc", v31, v32, v248);
      workerDestroy_0(v27);
      v27 = 0;
LABEL_22:
      *(*(v15 + 1160) + 8 * v25) = v27;
      v33 = *(v15 + 1160);
      if (!*(v33 + 8 * v25))
      {
        v35 = "creating new worker";
        v36 = 849;
        goto LABEL_49;
      }

      ++v25;
      v24 = *(v15 + 1152);
      if (v25 >= v24)
      {
        goto LABEL_34;
      }
    }
  }

  v33 = v24;
  LODWORD(v24) = 0;
LABEL_34:
  v45 = ThreadPoolCreate(v24, v33, workerProc_3);
  *(v15 + 1168) = v45;
  if (!v45)
  {
    v35 = "ThreadPoolCreate";
    v36 = 854;
LABEL_49:
    v34 = 0;
    goto LABEL_26;
  }

  if (pthread_mutex_init((v15 + 1176), 0) < 0)
  {
    v35 = "pthread_mutex_init";
    v36 = 857;
    goto LABEL_49;
  }

  if (*(v15 + 1080))
  {
    v46 = MEMORY[0x29EDCA610];
    fwrite("DecodeAndExtract\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
    fprintf(*v46, "  target directory: %s\n", a3);
    if (a2)
    {
      v47 = "yes";
    }

    else
    {
      v47 = "no";
    }

    fprintf(*v46, "  manifest: %s\n", v47);
    if ((a6 & 0x40000000000000) != 0)
    {
      v48 = "no";
    }

    else
    {
      v48 = "yes";
    }

    fprintf(*v46, "  path checking: %s\n", v48);
    v49 = *(v15 + 1080);
    if (!*(v15 + 8))
    {
LABEL_97:
      if (v49)
      {
        fwrite("Scanning archive\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      goto LABEL_99;
    }

    *&v253.st_dev = 0;
    if (v49)
    {
      fwrite("Scanning manifest\n", 0x12uLL, 1uLL, *v46);
    }

LABEL_52:
    RealTime = getRealTime();
    v251 = 0;
    value = 0;
    Header = AAArchiveStreamReadHeader(*(v15 + 8), &v253);
    if (Header)
    {
      while (1)
      {
        if (Header < 0)
        {
          v85 = "manifest read";
          v86 = 1041;
          goto LABEL_143;
        }

        v54 = *&v253.st_dev;
        v55.ikey = 5784649;
        KeyIndex = AAHeaderGetKeyIndex(*&v253.st_dev, v55);
        if ((KeyIndex & 0x80000000) != 0)
        {
          break;
        }

        FieldUInt = AAHeaderGetFieldUInt(v54, KeyIndex, &value);
        v58 = FieldUInt <= 1 ? 1 : FieldUInt;
        if (v58 <= 0)
        {
          break;
        }

        v59 = *&v253.st_dev;
        v60.ikey = 5915721;
        v61 = AAHeaderGetKeyIndex(*&v253.st_dev, v60);
        if ((v61 & 0x80000000) != 0 || ((v62 = AAHeaderGetFieldUInt(v59, v61, &v251), v62 <= 1) ? (v63 = 1) : (v63 = v62), v63 <= 0))
        {
          v85 = "missing IDZ field";
          v86 = 1045;
          goto LABEL_143;
        }

        if ((stateAppendEntry(v15, *&v253.st_dev, value, v251, 0) & 0x80000000) != 0)
        {
          v85 = "adding entry";
          v86 = 1048;
          goto LABEL_143;
        }

        v251 = 0;
        value = 0;
        Header = AAArchiveStreamReadHeader(*(v15 + 8), &v253);
        if (!Header)
        {
          goto LABEL_66;
        }
      }

      v85 = "missing IDX field";
      v86 = 1044;
LABEL_143:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanManifest", v86, 120, 0, v85, v52, v53, v248);
      AAHeaderDestroy(*&v253.st_dev);
      v126 = "scanning manifest";
      v127 = 1363;
      goto LABEL_274;
    }

LABEL_66:
    AAHeaderDestroy(*&v253.st_dev);
    v66 = getRealTime();
    if (*(v15 + 1080))
    {
      fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v66 - RealTime);
    }

    if (*(v15 + 8))
    {
      goto LABEL_69;
    }

    v49 = *(v15 + 1080);
    goto LABEL_97;
  }

  if (*(v15 + 8))
  {
    *&v253.st_dev = 0;
    goto LABEL_52;
  }

LABEL_99:
  v87 = getRealTime();
  v88 = malloc(0x10000uLL);
  if (!v88)
  {
    v121 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1074, 120, *v121, "malloc", v122, v123, v248);
    v91 = 0;
    goto LABEL_140;
  }

  v91 = AAHeaderCreate();
  if (!v91)
  {
    v119 = "AAHeaderCreate";
    v120 = 1076;
    goto LABEL_139;
  }

  v92 = *v15;
  v93 = (*v15 + 32);
  if (!*v93)
  {
LABEL_136:
    v119 = "read";
    v120 = 1083;
    goto LABEL_139;
  }

  v94 = 0;
  while (1)
  {
    v95 = 0;
    v96 = v88;
    v97 = v94;
    v98 = 6;
    while (1)
    {
      v99 = (*v93)(*v92, v96, v98, v97);
      if (v99 < 0)
      {
        goto LABEL_136;
      }

      if (!v99)
      {
        break;
      }

      v96 = (v96 + v99);
      v95 += v99;
      v97 += v99;
      v98 -= v99;
      if (!v98)
      {
        goto LABEL_109;
      }
    }

    if (!v95)
    {
      break;
    }

LABEL_109:
    if (v95 <= 5)
    {
      v119 = "truncated archive";
      v120 = 1084;
      goto LABEL_139;
    }

    if (*v88 != 825246017 && *v88 != 826360153)
    {
      v119 = "invalid header magic";
      v120 = 1085;
      goto LABEL_139;
    }

    v100 = *v15;
    if (!*(*v15 + 32))
    {
      goto LABEL_189;
    }

    v101 = v88[2];
    if (v88[2])
    {
      v102 = 0;
      v103 = v88;
      v104 = v94;
      v105 = v88[2];
      while (1)
      {
        v106 = (*(v100 + 32))(*v100, v103, v105, v104);
        if (v106 < 0)
        {
          break;
        }

        if (v106)
        {
          v103 = (v103 + v106);
          v102 += v106;
          v104 += v106;
          v105 -= v106;
          if (v105)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

LABEL_189:
      v119 = "read";
      v120 = 1091;
LABEL_139:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", v120, 120, 0, v119, v89, v90, v248);
LABEL_140:
      free(v88);
      AAHeaderDestroy(v91);
      v126 = "scanning archive";
      v127 = 1364;
      goto LABEL_274;
    }

    v102 = 0;
LABEL_120:
    if (v102 < v101)
    {
      v119 = "truncated archive";
      v120 = 1092;
      goto LABEL_139;
    }

    if ((aaHeaderInitWithEncodedData(v91, v88, v101) & 0x80000000) != 0)
    {
      v119 = "invalid archive";
      v120 = 1093;
      goto LABEL_139;
    }

    PayloadSize = AAHeaderGetPayloadSize(v91);
    if (__CFADD__(v101, PayloadSize))
    {
      v119 = "invalid payload size";
      v120 = 1096;
      goto LABEL_139;
    }

    v108 = PayloadSize;
    *&v253.st_dev = 0;
    if ((stateAppendEntry(v15, v91, v94, v101 + PayloadSize, &v253) & 0x80000000) != 0)
    {
      v119 = "adding entry";
      v120 = 1100;
      goto LABEL_139;
    }

    if (*&v253.st_dev && !*(v15 + 1072) && *(*&v253.st_dev + 60) == 68)
    {
      if (v108 == -1)
      {
        v119 = "invalid payload size";
        v120 = 1108;
        goto LABEL_139;
      }

      EntryData = stateGetEntryData(v15, *&v253.st_dev, v109, v110, v111, v112, v89, v90);
      memcpy(EntryData, v88, v101);
      if (v108)
      {
        v250 = *v15;
        if (!*(*v15 + 32))
        {
          goto LABEL_280;
        }

        v114 = 0;
        v115 = v94 + v101;
        v116 = &EntryData[v101];
        v117 = v108;
        do
        {
          v118 = (*(v250 + 32))(*v250, v116, v117, v115);
          if (v118 < 0)
          {
            goto LABEL_280;
          }

          if (!v118)
          {
            break;
          }

          v116 += v118;
          v114 += v118;
          v115 += v118;
          v117 -= v118;
        }

        while (v117);
        if (v114 != v108)
        {
LABEL_280:
          v119 = "loading DIR entry";
          v120 = 1115;
          goto LABEL_139;
        }
      }
    }

    v94 += v101 + v108;
    v92 = *v15;
    v93 = (*v15 + 32);
    if (!*v93)
    {
      goto LABEL_136;
    }
  }

  *(v15 + 1072) = 1;
  free(v88);
  AAHeaderDestroy(v91);
  v245 = getRealTime();
  if (*(v15 + 1080))
  {
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v245 - v87);
  }

LABEL_69:
  memset(&v253, 255, 24);
  v67 = *(v15 + 1136);
  if (v67)
  {
    v68 = 0;
    v69 = *(v15 + 1144);
    do
    {
      v70 = 0;
      v71 = (v69 + 72 * v68);
      v72 = v71 + 4;
      v73 = v71 + 3;
      v74 = v71 + 2;
      do
      {
        if (v70 == 2)
        {
          v75 = v72;
        }

        else
        {
          v75 = v73;
        }

        if (!v70)
        {
          v75 = v74;
        }

        v76 = *v75;
        if (v76 != -1)
        {
          v77 = *(&v253.st_dev + v70);
          if (v76 <= v77)
          {
            v78 = *(&v253.st_dev + v70);
          }

          else
          {
            v78 = v76;
          }

          if (v77 != -1)
          {
            v76 = v78;
          }

          *(&v253.st_dev + v70) = v76;
        }

        ++v70;
      }

      while (v70 != 3);
      ++v68;
    }

    while (v68 != v67);
  }

  v79 = 0;
  v80 = 1;
  while (1)
  {
    v81 = *(&v253.st_dev + v79);
    if (v81 == -1)
    {
      goto LABEL_92;
    }

    if (v81 == -2)
    {
      v128 = "too many cluster entries";
      v129 = 1164;
      v130 = 0;
      goto LABEL_147;
    }

    v82 = v81 + 1;
    v83 = v15 + 8 * v79;
    *(v83 + 1240) = v81 + 1;
    if (v81 >> 34)
    {
      break;
    }

    v84 = calloc(v82, 8uLL);
    *(v83 + 1264) = v84;
    if (!v84)
    {
      goto LABEL_146;
    }

    memset(v84, 255, 8 * v82);
LABEL_92:
    v80 = v79++ < 2;
    if (v79 == 3)
    {
      goto LABEL_149;
    }
  }

  *__error() = 12;
  *(v83 + 1264) = 0;
LABEL_146:
  v130 = *__error();
  v128 = "malloc";
  v129 = 1168;
LABEL_147:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAllocClusters", v129, 120, v130, v128, v64, v65, v248);
  if (v80)
  {
    v126 = "allocating clusters";
    v127 = 1367;
    goto LABEL_274;
  }

LABEL_149:
  if (*(v15 + 1080))
  {
    if (*(v15 + 1136))
    {
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = *(v15 + 1144) + 32;
      v140 = *(v15 + 1136);
      do
      {
        v141 = *(v139 + 28);
        switch(v141)
        {
          case 'L':
            ++v133;
            break;
          case 'F':
            ++v132;
            if (*(v139 - 16) != -1)
            {
              ++v137;
            }

            if (*(v139 - 8) != -1)
            {
              ++v136;
            }

            if (*v139 != -1)
            {
              ++v135;
            }

            break;
          case 'D':
            ++v131;
            break;
          default:
            ++v134;
            break;
        }

        v138 += *(v139 - 24);
        v139 += 72;
        --v140;
      }

      while (v140);
    }

    else
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = 0;
      v132 = 0;
      v131 = 0;
    }

    v142 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries selected\n", *(v15 + 1136));
    fprintf(*v142, "%12llu archive bytes\n", v138);
    fprintf(*v142, "%12zu regular files\n", v132);
    fprintf(*v142, "%12zu directories\n", v131);
    fprintf(*v142, "%12zu symbolic links\n", v133);
    if (v134)
    {
      fprintf(*v142, "%12zu other entries\n", v134);
    }

    fprintf(*v142, "%12zu bytes allocated in DIR blob\n", *(v15 + 1112));
    if (v137)
    {
      fprintf(*v142, "%12zu regular files in hard link clusters\n", v137);
    }

    if (v136)
    {
      fprintf(*v142, "%12zu regular files in clone clusters\n", v136);
    }

    if (v135)
    {
      fprintf(*v142, "%12zu regular files in same content clusters\n", v135);
    }

    if (*(v15 + 1080))
    {
      fwrite("Creating directories\n", 0x15uLL, 1uLL, *v142);
    }
  }

  v150 = getRealTime();
  v151 = *(v15 + 1136);
  if (v151 / (4 * *(v15 + 1152)) <= 0x64)
  {
    v152 = 100;
  }

  else
  {
    v152 = v151 / (4 * *(v15 + 1152));
  }

  if (v151)
  {
    v153 = 0;
    while (1)
    {
      Worker = ThreadPoolGetWorker(*(v15 + 1168), v143, v144, v145, v146, v147, v148, v149);
      if (!Worker)
      {
        v161 = "ThreadPoolGetWorker";
        v162 = 1190;
        goto LABEL_192;
      }

      *Worker = 0;
      *(Worker + 16) = v153;
      v153 += v152;
      v159 = *(v15 + 1136);
      if (v153 < v159)
      {
        v159 = v153;
      }

      *(Worker + 24) = v159;
      *(Worker + 8) = v15;
      if ((ThreadPoolRunWorker(*(v15 + 1168), Worker, v155, v156, v157, v158, v148, v149) & 0x80000000) != 0)
      {
        break;
      }

      if (v153 >= *(v15 + 1136))
      {
        goto LABEL_188;
      }
    }

    v161 = "ThreadPoolRunWorker";
    v162 = 1195;
LABEL_192:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateDirs", v162, 120, 0, v161, v148, v149, v248);
    v160 = 1;
  }

  else
  {
LABEL_188:
    v160 = 0;
  }

  if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateDirs", 1199, 120, 0, "ThreadPoolSync", v124, v125, v248);
    goto LABEL_214;
  }

  if (v160)
  {
LABEL_214:
    v126 = "creating directories";
    v127 = 1410;
    goto LABEL_274;
  }

  v163 = getRealTime();
  if (*(v15 + 1080))
  {
    v164 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v163 - v150);
    if (*(v15 + 1080))
    {
      fprintf(*v164, "Creating files (flags=0x%08x)\n", *(v15 + 1088));
    }
  }

  v172 = getRealTime();
  v173 = *(v15 + 1136);
  if (!v173)
  {
LABEL_212:
    v189 = 0;
    goto LABEL_218;
  }

  v174 = 0;
  v175 = (*(v15 + 1144) + 8);
  v176 = *(v15 + 1136);
  do
  {
    v177 = *v175;
    v175 += 9;
    v174 += v177;
    --v176;
  }

  while (v176);
  v178 = 0;
  v179 = 0;
  if (v174 / (6 * *(v15 + 1152)) >= 0x400)
  {
    v180 = v174 / (6 * *(v15 + 1152));
  }

  else
  {
    v180 = v174;
  }

  v181 = 8;
  v182 = 1;
  while (2)
  {
    if (v182 < v173)
    {
      v178 += *(*(v15 + 1144) + v181);
      if (v178 < v180)
      {
LABEL_210:
        v181 += 72;
        if (v182++ >= v173)
        {
          goto LABEL_212;
        }

        continue;
      }
    }

    break;
  }

  v183 = ThreadPoolGetWorker(*(v15 + 1168), v165, v166, v167, v168, v169, v170, v171);
  if (!v183)
  {
    v190 = "ThreadPoolGetWorker";
    v191 = 1308;
    goto LABEL_217;
  }

  *v183 = 1;
  *(v183 + 16) = v179;
  *(v183 + 24) = v182;
  *(v183 + 8) = v15;
  if ((ThreadPoolRunWorker(*(v15 + 1168), v183, v184, v185, v186, v187, v170, v171) & 0x80000000) == 0)
  {
    v178 = 0;
    v173 = *(v15 + 1136);
    v179 = v182;
    goto LABEL_210;
  }

  v190 = "ThreadPoolRunWorker";
  v191 = 1313;
LABEL_217:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateEntries", v191, 120, 0, v190, v170, v171, v248);
  v189 = 1;
LABEL_218:
  if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateEntries", 1321, 120, 0, "ThreadPoolSync", v124, v125, v248);
    *(v15 + 1072) = 1;
    goto LABEL_230;
  }

  *(v15 + 1072) = 1;
  if (v189)
  {
LABEL_230:
    v126 = "creating entries";
    v127 = 1413;
    goto LABEL_274;
  }

  v192 = getRealTime();
  if (*(v15 + 1080))
  {
    v193 = v192 - v172;
    v194 = atomic_load((v15 + 1304));
    v195 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu data bytes written\n", v194);
    fprintf(*v195, "%12.2f MB/s\n", v194 / v193 * 0.000000953674316);
    fprintf(*v195, "%12.2f time (s)\n", v193);
  }

  v196 = *(v15 + 1076);
  if (v196)
  {
    v197 = *(v15 + 1136);
    if (v197)
    {
      v198 = 0;
      v199 = (*(v15 + 1144) + 68);
      do
      {
        v201 = *v199;
        v199 += 36;
        v200 = v201;
        if (v201 > v198)
        {
          v198 = v200;
        }

        --v197;
      }

      while (v197);
    }

    else
    {
      v198 = 0;
    }
  }

  else
  {
    v198 = -1;
  }

  if (*(v15 + 1080))
  {
    if (v196)
    {
      v202 = "depth loop";
    }

    else
    {
      v202 = "single pass";
    }

    fprintf(*MEMORY[0x29EDCA610], "Setting directories attributes (%s)\n", v202);
  }

  v210 = getRealTime();
  if (*(v15 + 1136) / (4 * *(v15 + 1152)) <= 0x64)
  {
    v211 = 100;
  }

  else
  {
    v211 = *(v15 + 1136) / (4 * *(v15 + 1152));
  }

  while (2)
  {
    if (*(v15 + 1136))
    {
      v212 = 0;
      while (1)
      {
        v213 = ThreadPoolGetWorker(*(v15 + 1168), v203, v204, v205, v206, v207, v208, v209);
        if (!v213)
        {
          v243 = "ThreadPoolGetWorker";
          v244 = 1232;
          goto LABEL_273;
        }

        *v213 = 3;
        *(v213 + 16) = v212;
        v212 += v211;
        v218 = *(v15 + 1136);
        if (v212 < v218)
        {
          v218 = v212;
        }

        *(v213 + 24) = v218;
        *(v213 + 8) = v15;
        *(v213 + 2108) = v198;
        if ((ThreadPoolRunWorker(*(v15 + 1168), v213, v214, v215, v216, v217, v208, v209) & 0x80000000) != 0)
        {
          break;
        }

        if (v212 >= *(v15 + 1136))
        {
          goto LABEL_249;
        }
      }

      v243 = "ThreadPoolRunWorker";
      v244 = 1238;
      goto LABEL_273;
    }

LABEL_249:
    if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
    {
      v243 = "ThreadPoolSync";
      v244 = 1240;
LABEL_273:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateSetDirsAttributes", v244, 120, 0, v243, v208, v209, v248);
      v126 = "setting directories attributes";
      v127 = 1416;
      goto LABEL_274;
    }

    v219 = v198-- + 1;
    if (v219 > 1)
    {
      continue;
    }

    break;
  }

  v220 = getRealTime();
  if (*(v15 + 1080))
  {
    v221 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v220 - v210);
    if (*(v15 + 1080))
    {
      fwrite("Creating hard links / clones\n", 0x1DuLL, 1uLL, *v221);
    }
  }

  v229 = getRealTime();
  v230 = *(v15 + 1136);
  if (v230 / (4 * *(v15 + 1152)) <= 0x64)
  {
    v231 = 100;
  }

  else
  {
    v231 = v230 / (4 * *(v15 + 1152));
  }

  if (v230)
  {
    v232 = 0;
    while (1)
    {
      v233 = ThreadPoolGetWorker(*(v15 + 1168), v222, v223, v224, v225, v226, v227, v228);
      if (!v233)
      {
        v246 = "ThreadPoolGetWorker";
        v247 = 1266;
        goto LABEL_288;
      }

      *v233 = 2;
      *(v233 + 16) = v232;
      v232 += v231;
      v238 = *(v15 + 1136);
      if (v232 < v238)
      {
        v238 = v232;
      }

      *(v233 + 24) = v238;
      *(v233 + 8) = v15;
      if ((ThreadPoolRunWorker(*(v15 + 1168), v233, v234, v235, v236, v237, v227, v228) & 0x80000000) != 0)
      {
        break;
      }

      if (v232 >= *(v15 + 1136))
      {
        goto LABEL_264;
      }
    }

    v246 = "ThreadPoolRunWorker";
    v247 = 1271;
LABEL_288:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateClusters", v247, 120, 0, v246, v227, v228, v248);
    v126 = "creating hard links, clones";
    v127 = 1419;
LABEL_274:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", v127, 120, 0, v126, v124, v125, v248);
LABEL_29:
    v42 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_264:
    if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
    {
      v246 = "ThreadPoolSync";
      v247 = 1273;
      goto LABEL_288;
    }

    v239 = getRealTime();
    if (*(v15 + 1080))
    {
      fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v239 - v229);
    }

    if (atomic_load((v15 + 1296)))
    {
      if (*(v15 + 1080))
      {
        v241 = *MEMORY[0x29EDCA610];
        v242 = atomic_load((v15 + 1296));
        fprintf(v241, "%12llu errors reported\n", v242);
      }

      v126 = "errors reported";
      v127 = 1424;
      goto LABEL_274;
    }

    v42 = 0;
  }

  stateDestroy(v15);
  v43 = *MEMORY[0x29EDCA608];
  return v42;
}

void stateDestroy(uint64_t a1)
{
  if (a1)
  {
    StringTableDestroy(*(a1 + 1096));
    ThreadPoolDestroy(*(a1 + 1168));
    free(*(a1 + 1120));
    memset_s((a1 + 1104), 0x18uLL, 0, 0x18uLL);
    v2 = *(a1 + 1160);
    if (v2)
    {
      if (*(a1 + 1152))
      {
        v3 = 0;
        do
        {
          workerDestroy_0(*(*(a1 + 1160) + 8 * v3++));
        }

        while (v3 < *(a1 + 1152));
        v2 = *(a1 + 1160);
      }

      free(v2);
    }

    free(*(a1 + 1144));
    pthread_mutex_destroy((a1 + 1176));

    free(a1);
  }
}

uint64_t workerProc_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v335 = *MEMORY[0x29EDCA608];
  v11 = *v9;
  v12 = 0xFFFFFFFFLL;
  if (*v9 > 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
        goto LABEL_385;
      }

      v21 = *(v9 + 8);
      bzero(__s, 0x800uLL);
      data_size[0] = 0;
      offset = 0;
      size[0] = 0;
      length = 0;
      memset(&v333, 0, 72);
      *&v327 = 0;
      v326 = 0u;
      v324 = 0u;
      v325 = 0u;
      if (atomic_load((v21 + 1288)))
      {
LABEL_16:
        v20 = 0;
        v12 = 0xFFFFFFFFLL;
        goto LABEL_384;
      }

      v20 = AAHeaderCreate();
      if (!v20)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 398, 120, 0, "AAHeaderCreate", v104, v105, v294);
        goto LABEL_16;
      }

      v106 = *(v10 + 16);
      if (v106 >= *(v10 + 24))
      {
        v12 = 0;
        goto LABEL_384;
      }

      v312 = v20;
      v107 = 72 * v106;
      v307 = v10;
      while (1)
      {
        v108 = *(v21 + 1144);
        v109 = v108 + v107;
        data_size[0] = 0;
        offset = 0;
        if (*(v108 + v107 + 60) != 68)
        {
          goto LABEL_138;
        }

        v110 = *(v10 + 2108);
        if (v110 != -1 && v110 != *(v108 + v107 + 68))
        {
          goto LABEL_138;
        }

        v111 = (*(*(v21 + 1096) + 32) + *(*(*(v21 + 1096) + 8) + 16 * *(v108 + v107 + 64)));
        if ((stateConcatPath(v21, __s, v111) & 0x80000000) != 0)
        {
          break;
        }

        v114 = strrchr(__s, 47);
        if (!v114)
        {
          v127 = 417;
          goto LABEL_130;
        }

        v115 = v114;
        *v114 = 0;
        v116 = v114 + 1;
        if ((workerUpdateDir(v10, __s) & 0x80000000) != 0)
        {
          v126 = 420;
          v132 = "opening parent directory";
          goto LABEL_136;
        }

        *v115 = 47;
        EntryData = stateGetEntryData(v21, v108 + v107, v117, v118, v119, v120, v121, v122);
        if (!EntryData)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 426, 120, 0, "invalid entry data", v121, v122, v294);
LABEL_388:
          v12 = 0;
          v20 = v312;
          goto LABEL_384;
        }

        v124 = v108 + v107;
        v125 = *(v124 + 48);
        if (v125 <= 5)
        {
          v126 = 428;
          goto LABEL_135;
        }

        v133 = EntryData;
        v134 = EntryData[2];
        if (v125 < v134)
        {
          v126 = 430;
LABEL_135:
          v132 = "invalid entry";
LABEL_136:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", v126, 120, 0, v132, v121, v122, v294);
          v10 = v307;
          goto LABEL_137;
        }

        if ((aaHeaderInitWithEncodedData(v312, EntryData, v134) & 0x80000000) != 0)
        {
          v126 = 431;
          v132 = "invalid header";
          goto LABEL_136;
        }

        v135.ikey = 5521752;
        KeyIndex = AAHeaderGetKeyIndex(v312, v135);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v312, KeyIndex, data_size, size), FieldBlob <= 1) ? (v138 = 1) : (v138 = FieldBlob), v138 <= 0))
        {
          data_size[0] = 0;
        }

        v139.ikey = 4997953;
        v140 = AAHeaderGetKeyIndex(v312, v139);
        if ((v140 & 0x80000000) != 0 || ((v141 = AAHeaderGetFieldBlob(v312, v140, &offset, &length), v141 <= 1) ? (v142 = 1) : (v142 = v141), v142 <= 0))
        {
          offset = 0;
        }

        v143 = size[0] + v134;
        size[0] += v134;
        v144 = length + v134;
        length += v134;
        if (data_size[0])
        {
          v145 = __CFADD__(v143, data_size[0]);
          v146 = v143 + data_size[0];
          if (v145 || v146 > *(v124 + 48))
          {
            v126 = 438;
            v132 = "invalid XAT blob size";
            goto LABEL_136;
          }
        }

        if (offset)
        {
          v145 = __CFADD__(v144, offset);
          v147 = v144 + offset;
          if (v145 || v147 > *(v124 + 48))
          {
            v126 = 441;
            v132 = "invalid ACL blob size";
            goto LABEL_136;
          }
        }

        if ((aaEntryAttributesInitWithHeader(&v333, &v324, 0, v312) & 0x80000000) != 0)
        {
          v126 = 442;
          v132 = "setting attributes from header";
          goto LABEL_136;
        }

        v10 = v307;
        v148 = openat(*(v307 + 2104), v116, 0);
        if ((v148 & 0x80000000) != 0)
        {
          v128 = *__error();
          v127 = 446;
          v129 = "open";
          goto LABEL_131;
        }

        v149 = v148;
        if ((workerApplyAttr(v307, v109, v148, &v333) & 0x80000000) != 0)
        {
          v152 = 447;
          v153 = "setting attributes";
        }

        else if (data_size[0] && (workerDecodeAndApplyXAT(v307, v109, v149, v133 + size[0], data_size[0]) & 0x80000000) != 0)
        {
          v152 = 449;
          v153 = "loading and applying XAT";
        }

        else
        {
          if (!offset || (workerDecodeAndApplyACL(v307, v109, v149, v133 + length, offset) & 0x80000000) == 0)
          {
            close(v149);
            v10 = v307;
            goto LABEL_138;
          }

          v152 = 450;
          v153 = "loading and applying ACL";
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", v152, 120, 0, v153, v150, v151, v294);
        close(v149);
        v10 = v307;
LABEL_137:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 454, 120, 0, "set dir attributes failed: %s", v130, v131, v111);
        atomic_fetch_add_explicit((v21 + 1296), 1uLL, memory_order_relaxed);
LABEL_138:
        ++v106;
        v107 += 72;
        if (v106 >= *(v10 + 24))
        {
          goto LABEL_388;
        }
      }

      v127 = 413;
LABEL_130:
      v128 = 0;
      v129 = "invalid path";
LABEL_131:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", v127, 120, v128, v129, v112, v113, v294);
      goto LABEL_137;
    }

    v38 = *(v9 + 8);
    bzero(__s, 0x800uLL);
    bzero(&v333, 0x800uLL);
    offset = 0;
    size[0] = 0;
    v329 = 0;
    length = 0;
    v328 = 0;
    v326 = 0u;
    v327 = 0u;
    v324 = 0u;
    v325 = 0u;
    v323 = 0;
    v321 = 0u;
    v322 = 0u;
    *data_size = 0u;
    v39 = AAHeaderCreate();
    v42 = v39;
    if (!v39)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 689, 120, 0, "AAHeaderCreate", v40, v41, v294);
      goto LABEL_177;
    }

    v43 = *(v10 + 16);
    if (v43 >= *(v10 + 24))
    {
      goto LABEL_382;
    }

    header = v39;
    v44 = 72 * v43 + 32;
    v309 = -1;
    v306 = v10;
    while (1)
    {
      v45 = *(v38 + 1144);
      v46 = v45 + v44;
      if (*(v45 + v44 + 28) != 70)
      {
        goto LABEL_83;
      }

      v47 = *(v46 + 16);
      if (*(v46 - 16) == -1 && *(v45 + v44 - 8) == -1)
      {
        if (*(v45 + v44) == -1 || v47 == 0)
        {
          goto LABEL_83;
        }
      }

      else if (!v47)
      {
        goto LABEL_83;
      }

      v311 = (*(*(v38 + 1096) + 32) + *(*(*(v38 + 1096) + 8) + 16 * *(v45 + v44 + 32)));
      if ((stateConcatPath(v38, __s, v311) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 704, 120, 0, "invalid path", v52, v53, v294);
        goto LABEL_77;
      }

      v54 = v46 - 32;
      v55 = stateGetEntryData(v38, v46 - 32, v48, v49, v50, v51, v52, v53);
      if (!v55)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 708, 120, 0, "invalid entry data", v56, v57, v294);
LABEL_382:
        v12 = 0;
        goto LABEL_383;
      }

      v58 = *(v46 + 16);
      if (v58 <= 5)
      {
        v59 = 710;
        v60 = "invalid entry";
        goto LABEL_47;
      }

      v63 = v55;
      v64 = v55[2];
      if (v58 < v64)
      {
        v65 = 712;
        v66 = "invalid entry";
        goto LABEL_75;
      }

      if ((aaHeaderInitWithEncodedData(header, v55, v64) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 713, 120, 0, "invalid header", v68, v69, v294);
        v10 = v306;
        v42 = header;
        goto LABEL_77;
      }

      v70.ikey = 5521752;
      v71 = AAHeaderGetKeyIndex(header, v70);
      if ((v71 & 0x80000000) != 0 || ((v72 = AAHeaderGetFieldBlob(header, v71, size, &offset), v72 <= 1) ? (v73 = 1) : (v73 = v72), v73 <= 0))
      {
        size[0] = 0;
      }

      v74.ikey = 4997953;
      v75 = AAHeaderGetKeyIndex(header, v74);
      if ((v75 & 0x80000000) != 0 || ((v76 = AAHeaderGetFieldBlob(header, v75, &length, &v329), v76 <= 1) ? (v77 = 1) : (v77 = v76), v77 <= 0))
      {
        length = 0;
      }

      v78 = offset + v64;
      offset += v64;
      v79 = v329 + v64;
      v329 += v64;
      if (size[0])
      {
        if (size[0] + v78 > v47)
        {
          break;
        }
      }

      if (length && length + v79 > v47)
      {
        break;
      }

      v42 = header;
      if ((aaEntryAttributesInitWithHeader(&v324, data_size, 0, header) & 0x80000000) != 0)
      {
        v59 = 722;
        v60 = "setting attributes from header";
LABEL_47:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", v59, 120, 0, v60, v56, v57, v294);
        v10 = v306;
        goto LABEL_77;
      }

      v85 = *(v46 - 16);
      v86 = *(v38 + 1240);
      v87 = (v38 + 1264);
      v88 = v85;
      if (v85 >= v86 && (v88 = *(v45 + v44 - 8), v87 = (v38 + 1272), v88 >= *(v38 + 1248)) && (v88 = *(v45 + v44), v87 = (v38 + 1280), v88 >= *(v38 + 1256)) || (v89 = *(*v87 + 8 * v88), v89 == -1))
      {
        v59 = 730;
        v60 = "missing reference entry in cluster";
        goto LABEL_47;
      }

      if ((stateConcatPath(v38, &v333, (*(*(v38 + 1096) + 32) + *(*(*(v38 + 1096) + 8) + 16 * *(*(v38 + 1144) + 72 * v89 + 64)))) & 0x80000000) != 0)
      {
        v59 = 733;
        v60 = "invalid path";
        goto LABEL_47;
      }

      if (*(v38 + 1064))
      {
        unlink(__s);
      }

      if (v85 >= v86)
      {
        v80 = v311;
        if (clonefile(&v333, __s, 0) && (copyFileSegment(&v333, 0, 0xFFFFFFFFFFFFFFFFLL, __s) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 745, 120, 0, "cloning file, falling back to copy, failed: %s", v93, v94, __s);
LABEL_111:
          v10 = v306;
LABEL_78:
          if ((v309 & 0x80000000) == 0)
          {
            close(v309);
            v309 = -1;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v80 = v311;
        if (link(&v333, __s) < 0)
        {
          v90 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 754, 120, v90, "hard link: %s", v91, v92, __s);
          goto LABEL_111;
        }
      }

      v95 = open(__s, 0x200000);
      if ((v95 & 0x80000000) != 0)
      {
        v309 = v95;
        v99 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 759, 120, *v99, "open: %s", v100, v101, __s);
      }

      else
      {
        v96 = v95;
        if ((workerApplyAttr(v306, v54, v95, &v324) & 0x80000000) != 0)
        {
          v102 = 760;
          v103 = "setting attributes";
        }

        else if (size[0] && (workerDecodeAndApplyXAT(v306, v54, v96, v63 + offset, size[0]) & 0x80000000) != 0)
        {
          v102 = 761;
          v103 = "loading and applying XAT";
        }

        else
        {
          if (!length || (workerDecodeAndApplyACL(v306, v54, v96, v63 + v329, length) & 0x80000000) == 0)
          {
            close(v96);
            v81 = 21;
            v309 = -1;
            v10 = v306;
            goto LABEL_81;
          }

          v102 = 762;
          v103 = "loading and applying ACL";
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", v102, 120, 0, v103, v97, v98, v294);
        close(v96);
        v309 = -1;
      }

      v10 = v306;
LABEL_80:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 766, 120, 0, "extract cluster entry failed: %s", v61, v62, v80);
      atomic_fetch_add_explicit((v38 + 1296), 1uLL, memory_order_relaxed);
      v81 = 22;
LABEL_81:
      v82 = *(v38 + 1048);
      if (v82 && (v82(*(v38 + 1040), v81, v80, v42) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 773, 120, 0, "Caller cancelled", v83, v84, v294);
        v291 = 0;
        atomic_compare_exchange_strong((v38 + 1288), &v291, 1u);
LABEL_177:
        v12 = 0xFFFFFFFFLL;
LABEL_383:
        v20 = v42;
        goto LABEL_384;
      }

LABEL_83:
      ++v43;
      v44 += 72;
      if (v43 >= *(v10 + 24))
      {
        goto LABEL_382;
      }
    }

    v65 = 721;
    v66 = "invalid blob sizes";
LABEL_75:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", v65, 120, 0, v66, v56, v57, v294);
    v42 = header;
    v10 = v306;
LABEL_77:
    v80 = v311;
    goto LABEL_78;
  }

  if (!v11)
  {
    v23 = v9;
    v24 = *(v9 + 8);
    bzero(__s, 0x800uLL);
    memset(&v333, 0, sizeof(v333));
    v25 = atomic_load((v24 + 1288));
    if (v25 || (v26 = *(v10 + 16), v26 >= *(v23 + 24)))
    {
LABEL_33:
      if (v25)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_385;
    }

    v27 = 72 * v26;
    while (1)
    {
      v28 = *(v24 + 1144) + v27;
      if (*(v28 + 60) == 68)
      {
        v29 = (*(*(v24 + 1096) + 32) + *(*(*(v24 + 1096) + 8) + 16 * *(v28 + 64)));
        if ((stateConcatPath(v24, __s, v29) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 352, 120, 0, "invalid path", v30, v31, v294);
        }

        else
        {
          if (!mkdir(__s, 0x1EDu))
          {
            goto LABEL_32;
          }

          if (*(v24 + 1068))
          {
            if (*__error() == 2)
            {
              v32 = strlen(__s);
              makePath(__s, v32);
              if (!mkdir(__s, 0x1EDu))
              {
                goto LABEL_32;
              }
            }
          }

          if (*__error() == 17 && !lstat(__s, &v333) && (v333.st_mode & 0xF000) == 0x4000)
          {
            goto LABEL_32;
          }

          v33 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 366, 120, v33, "creating directory: %s", v34, v35, __s);
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 370, 120, 0, "create dir failed: %s", v36, v37, v29);
        atomic_fetch_add_explicit((v24 + 1296), 1uLL, memory_order_relaxed);
      }

LABEL_32:
      ++v26;
      v27 += 72;
      if (v26 >= *(v23 + 24))
      {
        goto LABEL_33;
      }
    }
  }

  if (v11 != 1)
  {
    goto LABEL_385;
  }

  v13 = *(v9 + 8);
  bzero(__s, 0x800uLL);
  bzero(&v333, 0x400uLL);
  v329 = 0;
  length = 0;
  v318 = 0;
  v319 = 0;
  v316 = 0;
  v317 = 0;
  v315 = 0;
  v328 = 0;
  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  v323 = 0;
  v321 = 0u;
  v322 = 0u;
  *data_size = 0u;
  if (atomic_load((v13 + 1288)))
  {
    goto LABEL_10;
  }

  v17 = *(v13 + 1152);
  if (!v17)
  {
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 489, 120, 0, "couldn't determine worker_id", v14, v15, v294);
LABEL_10:
    v19 = 0;
LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v18 = 0;
  while (*(*(v13 + 1160) + 8 * v18) != v10)
  {
    if (v17 == ++v18)
    {
      goto LABEL_9;
    }
  }

  v154 = AAHeaderCreate();
  v19 = v154;
  if (!v154)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 492, 120, 0, "AAHeaderCreate", v159, v160, v294);
    goto LABEL_11;
  }

  v161 = *(v10 + 16);
  if (v161 >= *(v10 + 24))
  {
LABEL_391:
    v12 = 0;
    goto LABEL_12;
  }

  v308 = v10;
  v310 = v154;
  while (1)
  {
    v162 = *(v13 + 1144) + 72 * v161;
    v318 = 0;
    v316 = 0;
    v329 = 0;
    if (*(v162 + 60) != 68)
    {
      break;
    }

    if (*(v13 + 1072))
    {
      goto LABEL_229;
    }

    v163 = stateGetEntryData(v13, v162, v155, v156, v157, v158, v159, v160);
    if (!v163)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 512, 120, 0, "invalid entry data", v159, v160, v294);
      goto LABEL_391;
    }

    v164 = *v13;
    v165 = *(v162 + 8);
    if (*(*v13 + 32))
    {
      if (v165)
      {
        v166 = v163;
        v313 = v8;
        v167 = 0;
        headera = v162;
        v168 = *v162;
        v169 = v163;
        while (1)
        {
          v170 = (*(v164 + 32))(*v164, v169, v165, v168);
          if (v170 < 0)
          {
            break;
          }

          if (v170)
          {
            v169 += v170;
            v167 += v170;
            v168 += v170;
            v165 -= v170;
            if (v165)
            {
              continue;
            }
          }

          goto LABEL_195;
        }

        v167 = v170;
LABEL_195:
        v162 = headera;
        v8 = v313;
        if (v167 != *(headera + 1))
        {
LABEL_392:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 516, 120, 0, "loading dir entry", v159, v160, v294);
          goto LABEL_393;
        }

        if (v167 >= 4 && (*v166 == 825246017 || *v166 == 826360153))
        {
          v19 = v310;
          if (*(headera + 15) == 68)
          {
            goto LABEL_229;
          }

          break;
        }
      }
    }

    else if (v165 != -1)
    {
      goto LABEL_392;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 520, 120, 0, "invalid dir entry", v159, v160, v294);
    v171 = 0;
    v19 = v310;
LABEL_225:
    AAByteStreamClose(v171);
LABEL_226:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 656, 120, 0, "extract entry failed: %s", v197, v198, v8);
    atomic_fetch_add_explicit((v13 + 1296), 1uLL, memory_order_relaxed);
    v199 = 22;
LABEL_227:
    v200 = *(v13 + 1048);
    if (v200 && (v200(*(v13 + 1040), v199, v8, v19) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 663, 120, 0, "Caller cancelled", v159, v160, v294);
      v292 = 0;
      atomic_compare_exchange_strong((v13 + 1288), &v292, 1u);
      goto LABEL_11;
    }

LABEL_229:
    if (++v161 >= *(v10 + 24))
    {
      goto LABEL_391;
    }
  }

  v8 = (*(*(v13 + 1096) + 32) + *(*(*(v13 + 1096) + 8) + 16 * *(v162 + 64)));
  if ((stateConcatPath(v13, __s, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 528, 120, 0, "invalid path", v172, v173, v294);
    v171 = 0;
    goto LABEL_225;
  }

  v314 = v8;
  v174 = strrchr(__s, 47);
  if (!v174)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 532, 120, 0, "invalid path", v175, v176, v294);
    v171 = 0;
    goto LABEL_224;
  }

  v177 = v174;
  *v174 = 0;
  v178 = v174 + 1;
  if ((workerUpdateDir(v10, __s) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 535, 120, 0, "opening parent directory", v179, v180, v294);
    v171 = 0;
    goto LABEL_224;
  }

  headerb = v162;
  *v177 = 47;
  v181 = *v13;
  if (!*(*v13 + 32))
  {
LABEL_219:
    v194 = 541;
LABEL_220:
    v195 = 0;
    v196 = "invalid entry";
    goto LABEL_221;
  }

  v182 = 0;
  v183 = *v162;
  v184 = *(v308 + 32);
  v185 = 6;
  do
  {
    v186 = (*(v181 + 32))(*v181, v184, v185, v183);
    if (v186 < 0)
    {
      goto LABEL_219;
    }

    if (!v186)
    {
      break;
    }

    v184 += v186;
    v182 += v186;
    v183 += v186;
    v185 -= v186;
  }

  while (v185);
  if (v182 != 6)
  {
    goto LABEL_219;
  }

  v187 = *v13;
  if (!*(*v13 + 32))
  {
    goto LABEL_272;
  }

  v188 = *(v308 + 32);
  v189 = *(v188 + 4);
  if (*(v188 + 4))
  {
    v190 = 0;
    v191 = *headerb;
    v192 = *(v188 + 4);
    while (1)
    {
      v193 = (*(v187 + 32))(*v187, v188, v192, v191);
      if (v193 < 0)
      {
        break;
      }

      if (v193)
      {
        v188 += v193;
        v190 += v193;
        v191 += v193;
        v192 -= v193;
        if (v192)
        {
          continue;
        }
      }

      goto LABEL_233;
    }

    v190 = v193;
  }

  else
  {
    v190 = 0;
  }

LABEL_233:
  if (v190 != v189)
  {
LABEL_272:
    v194 = 544;
    goto LABEL_220;
  }

  v201 = v189;
  v10 = v308;
  v19 = v310;
  v301 = v201;
  v8 = v314;
  if ((aaHeaderInitWithEncodedData(v310, *(v308 + 32), v201) & 0x80000000) != 0)
  {
    v228 = 545;
    v229 = "invalid header";
LABEL_287:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", v228, 120, 0, v229, v202, v203, v294);
    v171 = 0;
    goto LABEL_225;
  }

  v204 = *(headerb + 15);
  if (v204 != 70)
  {
    goto LABEL_245;
  }

  v205.ikey = 5521732;
  v206 = AAHeaderGetKeyIndex(v310, v205);
  if ((v206 & 0x80000000) != 0)
  {
    if (*(headerb + 2) == -1 && *(headerb + 3) == -1 && *(headerb + 4) == -1)
    {
      v228 = 553;
      v229 = "DAT field is required";
      goto LABEL_287;
    }

    goto LABEL_348;
  }

  if (AAHeaderGetFieldBlob(v310, v206, &v329, &v319) < 0)
  {
    v228 = 549;
    v229 = "getting DAT field";
    goto LABEL_287;
  }

  v209 = *(headerb + 2);
  if (v209 != -1 && !stateShouldCreateFileInCluster(v13, 0, v209, v161, v207, v208, v202, v203) || (v210 = *(headerb + 3), v210 != -1) && !stateShouldCreateFileInCluster(v13, 1u, v210, v161, v207, v208, v202, v203) || (v211 = *(headerb + 4), v211 != -1) && !stateShouldCreateFileInCluster(v13, 2u, v211, v161, v207, v208, v202, v203))
  {
    AAByteStreamClose(0);
    v302 = *(*(v13 + 1160) + 8 * v18);
    EncodedSize = AAHeaderGetEncodedSize(v310);
    v230 = AAHeaderClone(v310);
    v231.ikey = 5521732;
    v232 = AAHeaderGetKeyIndex(v230, v231);
    v299 = v230;
    if ((v232 & 0x80000000) == 0 && AAHeaderRemoveField(v230, v232) < 0)
    {
      v237 = 293;
      v238 = "removing DAT field";
      goto LABEL_377;
    }

    key = v232;
    v235 = AAHeaderGetEncodedSize(v230);
    PayloadSize = AAHeaderGetPayloadSize(v230);
    __n = v235 + PayloadSize;
    if (__CFADD__(v235, PayloadSize))
    {
      v237 = 298;
      v238 = "entry too large to defer";
      goto LABEL_377;
    }

    v260 = v235;
    v261 = workerReserve(v302, __n);
    if (v261 < 0)
    {
      v237 = 301;
      v238 = "allocating worker buf";
      goto LABEL_377;
    }

    v262 = v302[4];
    EncodedData = AAHeaderGetEncodedData(v230);
    memcpy(v262, EncodedData, v235);
    FieldCount = AAHeaderGetFieldCount(v310);
    if (FieldCount)
    {
      v264 = 0;
      do
      {
        FieldType = AAHeaderGetFieldType(v310, v264);
        v266 = v264;
        v267 = v264 != key || key <= -1;
        if (v267 && FieldType == 5)
        {
          offset = 0;
          size[0] = 0;
          if (AAHeaderGetFieldBlob(v310, v264, size, &offset) < 0)
          {
            v237 = 313;
            v238 = "getting blob field";
            goto LABEL_377;
          }

          v268 = size[0];
          v269 = *headerb + EncodedSize + offset;
          offset = v269;
          if (size[0] + v260 > v302[5])
          {
            v237 = 315;
            v238 = "invalid blob size";
            goto LABEL_377;
          }

          v270 = *v13;
          if (!*(*v13 + 32))
          {
            goto LABEL_355;
          }

          v271 = 0;
          if (size[0])
          {
            v272 = v302[4] + v260;
            while (1)
            {
              v273 = (*(v270 + 32))(*v270, v272, v268, v269);
              if (v273 < 0)
              {
                break;
              }

              if (v273)
              {
                v272 += v273;
                v271 += v273;
                v269 += v273;
                v268 -= v273;
                if (v268)
                {
                  continue;
                }
              }

              if (v271 != size[0])
              {
                break;
              }

              goto LABEL_333;
            }

LABEL_355:
            v237 = 319;
            v238 = "reading blob";
            goto LABEL_377;
          }

LABEL_333:
          v260 += v271;
        }

        v264 = v266 + 1;
      }

      while (v266 + 1 != FieldCount);
    }

    if (v260 != __n)
    {
      v237 = 322;
      v238 = "entry size mismatch";
      goto LABEL_377;
    }

    v274 = v302[264];
    v145 = __CFADD__(v274, __n);
    v275 = v274 + __n;
    if (!v145 && (v275 & 0x8000000000000000) == 0)
    {
      v276 = v302 + 264;
      v277 = v302[4];
      v278 = v302[265];
      if (v278 >= v275)
      {
LABEL_368:
        v285 = v302[266];
        if (v277)
        {
          memcpy((v285 + *v276), v277, __n);
        }

        else if (v285)
        {
          memset_s((v285 + *v276), __n, 0, __n);
        }

        v286 = *v276;
        *(headerb + 5) = *v276;
        *(headerb + 6) = __n;
        *v276 = v286 + __n;
        if ((__n & 0x8000000000000000) == 0)
        {
          *(headerb + 14) = v18;
          AAHeaderDestroy(v299);
          v10 = v308;
          v19 = v310;
          v8 = v314;
          goto LABEL_229;
        }
      }

      else
      {
        do
        {
          while (!v278)
          {
            v278 = 0x4000;
            if (v275 <= 0x4000)
            {
              v280 = (v302 + 266);
              v278 = 0x4000;
              goto LABEL_366;
            }
          }

          v279 = v278 >> 1;
          if ((v278 & (v278 >> 1)) != 0)
          {
            v279 = v278 & (v278 >> 1);
          }

          v278 += v279;
        }

        while (v278 < v275);
        v280 = (v302 + 266);
        if (v278 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_375;
        }

LABEL_366:
        v283 = *v280;
        v284 = realloc(*v280, v278);
        if (v284)
        {
          v302[266] = v284;
          v302[265] = v278;
          goto LABEL_368;
        }

        free(v283);
LABEL_375:
        *v280 = 0;
        *v276 = 0;
        v302[265] = 0;
      }
    }

    v237 = 325;
    v238 = "storing entry in worker blob";
LABEL_377:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", v237, 120, 0, v238, v233, v234, v294);
    AAHeaderDestroy(v299);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 651, 120, 0, "storing deferred entry", v287, v288, v295);
    v10 = v308;
    v19 = v310;
LABEL_378:
    v8 = v314;
    goto LABEL_226;
  }

  v204 = *(headerb + 15);
LABEL_245:
  if (v204 == 76)
  {
    v212.ikey = 4935244;
    v213 = AAHeaderGetKeyIndex(v310, v212);
    if ((v213 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(v310, v213, 0x400uLL, &v333, &length), FieldString <= 1) ? (v215 = 1) : (v215 = FieldString), v215 <= 0))
    {
      v228 = 563;
      v229 = "missing LNK field";
      goto LABEL_287;
    }
  }

  v216.ikey = 5521752;
  v217 = AAHeaderGetKeyIndex(v310, v216);
  if ((v217 & 0x80000000) != 0 || ((v218 = AAHeaderGetFieldBlob(v310, v217, &v318, &v317), v218 <= 1) ? (v219 = 1) : (v219 = v218), v219 <= 0))
  {
    v318 = 0;
  }

  v220.ikey = 4997953;
  v221 = AAHeaderGetKeyIndex(v310, v220);
  if ((v221 & 0x80000000) != 0 || ((v222 = AAHeaderGetFieldBlob(v310, v221, &v316, &v315), v222 <= 1) ? (v223 = 1) : (v223 = v222), v223 <= 0))
  {
    v316 = 0;
  }

  v224 = *headerb + v301;
  v319 += v224;
  v317 += v224;
  v315 += v224;
  if ((aaEntryAttributesInitWithHeader(&v324, data_size, 0, v310) & 0x80000000) != 0)
  {
    v228 = 571;
    v229 = "setting attributes from header";
    goto LABEL_287;
  }

  if (*(v13 + 1064))
  {
    unlinkat(*(v308 + 2104), v178, 0);
  }

  v225 = *(headerb + 15);
  if (v225 != 70)
  {
    if (v225 != 76)
    {
      v228 = 584;
      v229 = "unsupported entry type";
      goto LABEL_287;
    }

    if ((symlinkat(&v333, *(v308 + 2104), v178) & 0x80000000) == 0)
    {
      v10 = v308;
      v19 = v310;
      v8 = v314;
      if (*(headerb + 15) == 70)
      {
        goto LABEL_270;
      }

      if ((aaEntryAttributesApplyToPath(&v324, (v13 + 16), v314, *(v13 + 1056)) & 0x80000000) != 0)
      {
        v228 = 591;
        v229 = "setting attributes";
        goto LABEL_287;
      }

LABEL_348:
      AAByteStreamClose(0);
      v199 = 21;
      goto LABEL_227;
    }

    v195 = *__error();
    v194 = 581;
    v196 = "symlink";
LABEL_221:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", v194, 120, v195, v196, v179, v180, v294);
    v171 = 0;
    v10 = v308;
LABEL_222:
    v19 = v310;
LABEL_224:
    v8 = v314;
    goto LABEL_225;
  }

LABEL_270:
  if ((v324 & 4) != 0)
  {
    v226 = data_size[0];
    v227 = -1;
    if ((BYTE12(v324) & 0x20) != 0 && v329)
    {
      v227 = (LOBYTE(data_size[0]) << 31 >> 31) & data_size[1];
    }
  }

  else
  {
    v226 = data_size[0];
    v227 = -1;
  }

  if ((v226 & 8) != 0)
  {
    if ((*(v13 + 1062) & 2) != 0)
    {
      v239 = HIDWORD(data_size[0]);
    }

    else
    {
      v239 = -1;
    }
  }

  else
  {
    v239 = -1;
  }

  v10 = v308;
  v171 = aaArchiveFileOutputStreamOpenAt(*(v308 + 2104), v178, v329, v227, 0, v239, *(v13 + 1088));
  if (!v171)
  {
    v258 = 610;
    v259 = "creating file stream";
LABEL_354:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", v258, 120, 0, v259, v245, v246, v294);
    goto LABEL_222;
  }

  v247 = v329;
  if (!v329)
  {
LABEL_307:
    v254 = aaArchiveFileOutputStreamCloseAndReturnFD(v171, v240, v241, v242, v243, v244, v245, v246);
    if ((v254 & 0x80000000) == 0)
    {
      v255 = v254;
      if ((workerApplyAttr(v308, headerb, v254, &v324) & 0x80000000) != 0)
      {
        v281 = 637;
        v282 = "setting attributes";
      }

      else if (v318 && (workerLoadAndApplyXAT(v308, headerb, v255, v318, v317) & 0x80000000) != 0)
      {
        v281 = 638;
        v282 = "loading and applying XAT";
      }

      else
      {
        if (!v316 || (workerLoadAndApplyACL(v308, headerb, v255, v316, v315) & 0x80000000) == 0)
        {
          atomic_fetch_add_explicit((v13 + 1304), v329, memory_order_relaxed);
          close(v255);
          AAByteStreamClose(0);
          v199 = 21;
          v10 = v308;
          v19 = v310;
          v8 = v314;
          goto LABEL_227;
        }

        v281 = 639;
        v282 = "loading and applying ACL";
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", v281, 120, 0, v282, v256, v257, v294);
      close(v255);
      AAByteStreamClose(0);
      v10 = v308;
      v19 = v310;
      goto LABEL_378;
    }

    v194 = 636;
    v195 = 0;
    v196 = "invalid fd";
    goto LABEL_221;
  }

  v248 = 0;
  while (1)
  {
    v249 = v247 - v248;
    if (*(v308 + 40) >= v249)
    {
      v250 = v249;
    }

    else
    {
      v250 = *(v308 + 40);
    }

    v251 = AAByteStreamPRead(*v13, *(v308 + 32), v250, v319 + v248);
    if (v251 < 0)
    {
      v258 = 617;
      v259 = "read failed";
      goto LABEL_354;
    }

    v252 = v251;
    if (AAByteStreamWrite(v171, *(v308 + 32), v251) != v251)
    {
      v258 = 619;
      v259 = "write failed";
      goto LABEL_354;
    }

    v248 += v252;
    v253 = *(v13 + 1048);
    if (v253)
    {
      size[0] = v329;
      size[1] = v248;
      if ((v253(*(v13 + 1040), 60, v314, size) & 0x80000000) != 0)
      {
        break;
      }
    }

    v247 = v329;
    if (v248 >= v329)
    {
      goto LABEL_307;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 629, 120, 0, "callback cancel", v245, v246, v294);
  v293 = 0;
  atomic_compare_exchange_strong((v13 + 1288), &v293, 1u);
LABEL_393:
  v12 = 0xFFFFFFFFLL;
  v19 = v310;
LABEL_12:
  v20 = v19;
LABEL_384:
  AAHeaderDestroy(v20);
LABEL_385:
  v289 = *MEMORY[0x29EDCA608];
  return v12;
}

void workerDestroy_0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2104);
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
    }

    free(*(a1 + 32));
    free(*(a1 + 2128));
    memset_s((a1 + 2112), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t stateConcatPath(uint64_t a1, char *a2, const char *a3)
{
  if (*(a1 + 1068))
  {
    return concatPath(a2, 0x800uLL, (a1 + 16), a3);
  }

  else
  {
    return concatExtractPath(a2, 0x800uLL, (a1 + 16), a3);
  }
}

uint64_t stateGetEntryData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 56);
  if (v9 == -1)
  {
    v16 = *(a2 + 40);
    v17 = *(a2 + 48);
    v12 = __CFADD__(v16, v17);
    v18 = v16 + v17;
    if (v12 || v18 > *(a1 + 1104))
    {
      return 0;
    }

    return *(a1 + 1120) + v16;
  }

  else
  {
    if (v9 < *(a1 + 1152))
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = __CFADD__(v10, v11);
      v13 = v10 + v11;
      if (!v12)
      {
        v14 = *(*(a1 + 1160) + 8 * v9);
        if (v13 <= *(v14 + 2112))
        {
          return *(v14 + 2128) + v10;
        }
      }

      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateGetEntryData", 1008, 120, 0, "invalid worker index", a7, a8, v8);
    return 0;
  }
}

uint64_t workerUpdateDir(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v7 = v4;
  v8 = *(a1 + 2104);
  if ((v8 & 0x80000000) == 0)
  {
    if (v4 == *(a1 + 2096))
    {
      result = strcmp(__s, (a1 + 48));
      if (!result)
      {
        return result;
      }
    }

    close(v8);
    *(a1 + 2104) = -1;
  }

  if (v7 >= 0x800)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerUpdateDir", 150, 120, 0, "directory path too long", v5, v6, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2096) = v7;
  memcpy((a1 + 48), __s, v7);
  *(a1 + 48 + v7) = 0;
  v10 = open((a1 + 48), 0);
  *(a1 + 2104) = v10;
  if (v10 < 0)
  {
    makePath((a1 + 48), *(a1 + 2096));
    mkdir((a1 + 48), 0x1EDu);
    v11 = open((a1 + 48), 0);
    *(a1 + 2104) = v11;
    if (v11 < 0)
    {
      v12 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerUpdateDir", 164, 120, v12, "open: %s", v13, v14, a1 + 48);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t stateShouldCreateFileInCluster(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8 * a2 + 1240) <= a3)
  {
    v15 = "invalid index in HLC/CLC/SLC cluster";
    v16 = 1019;
  }

  else if (pthread_mutex_lock((a1 + 1176)) < 0)
  {
    v15 = "pthread_mutex_lock";
    v16 = 1020;
  }

  else
  {
    v12 = *(a1 + 8 * a2 + 1264);
    v13 = *(v12 + 8 * a3);
    if (v13 == -1)
    {
      *(v12 + 8 * a3) = a4;
    }

    if ((pthread_mutex_unlock((a1 + 1176)) & 0x80000000) == 0)
    {
      return v13 == -1;
    }

    v15 = "pthread_mutex_lock";
    v16 = 1023;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateShouldCreateFileInCluster", v16, 120, 0, v15, a7, a8, v17);
  return 0xFFFFFFFFLL;
}

uint64_t workerApplyAttr(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v6 = *(a1 + 8);
  v7 = v6[131];
  if (v7 && (v7(v6[130], 23, *(v6[137] + 32) + *(*(v6[137] + 8) + 16 * *(a2 + 64)), a4) & 0x80000000) != 0)
  {
    v11 = "user error";
    v12 = 178;
  }

  else
  {
    if ((aaEntryAttributesApplyToFD(a4, a3, v6[132]) & 0x80000000) == 0)
    {
      return 0;
    }

    v11 = "setting attributes";
    v12 = 182;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerApplyAttr", v12, 120, 0, v11, v8, v9, v13);
  return 0xFFFFFFFFLL;
}

uint64_t workerLoadAndApplyXAT(uint64_t a1, uint64_t a2, int a3, size_t a4, uint64_t a5)
{
  if ((workerReserve(a1, a4) & 0x80000000) != 0)
  {
    v17 = "allocating worker buf";
    v18 = 248;
  }

  else
  {
    v12 = **(a1 + 8);
    if (*(v12 + 32))
    {
      v13 = 0;
      if (a4)
      {
        v14 = *(a1 + 32);
        v15 = a4;
        while (1)
        {
          v16 = (*(v12 + 32))(*v12, v14, v15, a5);
          if (v16 < 0)
          {
            break;
          }

          if (v16)
          {
            v14 += v16;
            v13 += v16;
            a5 += v16;
            v15 -= v16;
            if (v15)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v13 = v16;
      }
    }

    else
    {
      v13 = -1;
    }

LABEL_12:
    if (v13 == a4)
    {
      if ((workerDecodeAndApplyXAT(a1, a2, a3, *(a1 + 32), a4) & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = "applying XAT";
      v18 = 255;
    }

    else
    {
      v17 = "loading XAT blob";
      v18 = 252;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyXAT", v18, 120, 0, v17, v10, v11, v20);
  return 0xFFFFFFFFLL;
}

uint64_t workerLoadAndApplyACL(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5)
{
  if ((workerReserve(a1, a4) & 0x80000000) != 0)
  {
    v17 = "allocating worker buf";
    v18 = 269;
  }

  else
  {
    v12 = **(a1 + 8);
    if (*(v12 + 32))
    {
      v13 = 0;
      if (a4)
      {
        v14 = *(a1 + 32);
        v15 = a4;
        while (1)
        {
          v16 = (*(v12 + 32))(*v12, v14, v15, a5);
          if (v16 < 0)
          {
            break;
          }

          if (v16)
          {
            v14 += v16;
            v13 += v16;
            a5 += v16;
            v15 -= v16;
            if (v15)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v13 = v16;
      }
    }

    else
    {
      v13 = -1;
    }

LABEL_12:
    if (v13 == a4)
    {
      if ((workerDecodeAndApplyACL(a1, a2, a3, *(a1 + 32), a4) & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = "applying ACL";
      v18 = 276;
    }

    else
    {
      v17 = "loading ACL blob";
      v18 = 273;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyACL", v18, 120, 0, v17, v10, v11, v20);
  return 0xFFFFFFFFLL;
}

uint64_t workerReserve(uint64_t a1, size_t a2)
{
  if (*(a1 + 40) >= a2)
  {
    return 0;
  }

  v11 = v2;
  *(a1 + 40) = a2;
  if (a2 < 0x2000000001)
  {
    v5 = *(a1 + 32);
    v6 = realloc(v5, a2);
    if (v6)
    {
      v7 = v6;
      result = 0;
      *(a1 + 32) = v7;
      return result;
    }

    free(v5);
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 32) = 0;
  v8 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerReserve", 137, 120, *v8, "malloc", v9, v10, v11);
  return 0xFFFFFFFFLL;
}

uint64_t workerDecodeAndApplyXAT(uint64_t a1, uint64_t a2, int a3, uint8_t *data, size_t data_size)
{
  v7 = *(a1 + 8);
  v13 = AAEntryXATBlobCreateWithEncodedData(data, data_size);
  if (!v13)
  {
    v16 = "invalid XAT blob";
    v17 = 197;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyXAT", v17, 120, 0, v16, v11, v12, v19);
    v15 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v14 = v7[131];
  if (v14 && (v14(v7[130], 24, *(v7[137] + 32) + *(*(v7[137] + 8) + 16 * *(a2 + 64)), v13) & 0x80000000) != 0)
  {
    v16 = "user error";
    v17 = 203;
    goto LABEL_9;
  }

  if ((aaEntryXATBlobApplyToFD(v13, a3, v7[132], v8, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    v16 = "applying XAT";
    v17 = 207;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_10:
  AAEntryXATBlobDestroy(v13);
  return v15;
}

uint64_t workerDecodeAndApplyACL(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *data, size_t data_size)
{
  v7 = *(a1 + 8);
  v10 = AAEntryACLBlobCreateWithEncodedData(data, data_size);
  if (!v10)
  {
    v13 = "invalid ACL blob";
    v14 = 223;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyACL", v14, 120, 0, v13, v8, v9, v16);
    v12 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v11 = v7[131];
  if (v11 && (v11(v7[130], 25, *(v7[137] + 32) + *(*(v7[137] + 8) + 16 * *(a2 + 64)), v10) & 0x80000000) != 0)
  {
    v13 = "user error";
    v14 = 229;
    goto LABEL_9;
  }

  if ((aaEntryACLBlobApplyToFD(v10, a3, v7[132]) & 0x80000000) != 0)
  {
    v13 = "applying ACL";
    v14 = 233;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_10:
  AAEntryACLBlobDestroy(v10);
  return v12;
}

uint64_t stateAppendEntry(uint64_t a1, AAHeader header, uint64_t a3, rsize_t a4, char **a5)
{
  *&v81[1023] = *MEMORY[0x29EDCA608];
  v77 = -1;
  value = 0;
  v75 = -1;
  v76 = -1;
  v74 = 0;
  length = 0;
  v11.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v11);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value), FieldUInt <= 1) ? (v16 = 1) : (v16 = FieldUInt), v16 <= 0))
  {
    v17 = "invalid archive stream";
    v18 = 900;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", v18, 120, 0, v17, v13, v14, v72);
    goto LABEL_11;
  }

  if (value - 66 <= 0x15)
  {
    if (((1 << (value - 66)) & 0x274003) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 913, 120, 0, "unsupported entry type %c: %s", v13, v14, value);
LABEL_11:
      result = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    if (value == 77)
    {
      goto LABEL_14;
    }
  }

  v22.ikey = 5521744;
  v23 = AAHeaderGetKeyIndex(header, v22);
  if ((v23 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(header, v23, 0x400uLL, &v80, &length), FieldString <= 1) ? (v27 = 1) : (v27 = FieldString), v27 <= 0))
  {
    v17 = "missing PAT field";
    v18 = 920;
    goto LABEL_10;
  }

  v28 = *(a1 + 1048);
  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = v28(*(a1 + 1040), 20, &v80, header);
  if (v29 < 0)
  {
    v50 = 926;
LABEL_64:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", v50, 120, 0, "Caller cancelled", v13, v14, v72);
    v51 = 0;
    atomic_compare_exchange_strong((a1 + 1288), &v51, 1u);
    goto LABEL_11;
  }

  if (v29)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  LOBYTE(v79[0]) = 0;
  v30 = (*(a1 + 1048))(*(a1 + 1040), 27, &v80, v79);
  if (v30 < 0)
  {
    v50 = 932;
    goto LABEL_64;
  }

  if (v30)
  {
    __strlcpy_chk();
  }

LABEL_28:
  v31 = value;
  if (value == 70)
  {
    v32.ikey = 4410440;
    v33 = AAHeaderGetKeyIndex(header, v32);
    if ((v33 & 0x80000000) != 0 || ((v34 = AAHeaderGetFieldUInt(header, v33, &v77), v34 <= 1) ? (v35 = 1) : (v35 = v34), v35 <= 0))
    {
      v77 = -1;
    }

    v36.ikey = 4410435;
    v37 = AAHeaderGetKeyIndex(header, v36);
    if ((v37 & 0x80000000) != 0 || ((v38 = AAHeaderGetFieldUInt(header, v37, &v76), v38 <= 1) ? (v39 = 1) : (v39 = v38), v39 <= 0))
    {
      v76 = -1;
    }

    v40.ikey = 4410451;
    v41 = AAHeaderGetKeyIndex(header, v40);
    if ((v41 & 0x80000000) != 0 || ((v42 = AAHeaderGetFieldUInt(header, v41, &v75), v42 <= 1) ? (v43 = 1) : (v43 = v42), v43 <= 0))
    {
      v75 = -1;
    }

    v31 = value;
  }

  if (v31 == 68 && !*(a1 + 1076))
  {
    v79[0] = 0;
    v57.ikey = 5067853;
    if ((AAHeaderGetKeyIndex(header, v57) & 0x80000000) == 0)
    {
      *(a1 + 1076) = 1;
    }

    v58.ikey = 4672582;
    v59 = AAHeaderGetKeyIndex(header, v58);
    if ((v59 & 0x80000000) == 0)
    {
      v60 = AAHeaderGetFieldUInt(header, v59, v79);
      v61 = v60 <= 1 ? 1 : v60;
      if (v61 >= 1 && (v79[0] & 0x20002) != 0)
      {
        *(a1 + 1076) = 1;
      }
    }
  }

  if ((StringTableAppend(*(a1 + 1096), &v80, length, &v74, v25, v26, v13, v14) & 0x80000000) != 0)
  {
    v17 = "inserting path in table";
    v18 = 958;
    goto LABEL_10;
  }

  if (value == 68)
  {
    v44 = *(a1 + 1104);
    v45 = v44 + a4;
    if (__CFADD__(v44, a4) || (v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    v46 = (a1 + 1104);
    v47 = *(a1 + 1112);
    if (v47 < v45)
    {
      do
      {
        while (!v47)
        {
          v47 = 0x4000;
          if (v45 <= 0x4000)
          {
            v49 = (a1 + 1120);
            v47 = 0x4000;
            goto LABEL_92;
          }
        }

        v48 = v47 >> 1;
        if ((v47 & (v47 >> 1)) != 0)
        {
          v48 = v47 & (v47 >> 1);
        }

        v47 += v48;
      }

      while (v47 < v45);
      v49 = (a1 + 1120);
      if (v47 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_105;
      }

LABEL_92:
      v68 = *v49;
      v64 = realloc(*v49, v47);
      if (v64)
      {
        *(a1 + 1120) = v64;
        *(a1 + 1112) = v47;
        v44 = *(a1 + 1104);
        goto LABEL_94;
      }

      free(v68);
LABEL_105:
      *v49 = 0;
      *v46 = 0;
      *(a1 + 1112) = 0;
      goto LABEL_106;
    }

    v64 = *(a1 + 1120);
    if (v64)
    {
LABEL_94:
      memset_s(&v64[v44], a4, 0, a4);
      v44 = *v46;
    }

    *v46 = v44 + a4;
    if ((a4 & 0x8000000000000000) != 0)
    {
LABEL_106:
      v17 = "inserting blob placeholder";
      v18 = 964;
      goto LABEL_10;
    }

    v69 = v80;
    if (v80)
    {
      v53 = 0;
      v70 = v81;
      do
      {
        if (v69 == 47)
        {
          ++v53;
        }

        v71 = *v70++;
        v69 = v71;
      }

      while (v71);
    }

    else
    {
      v53 = 0;
    }

    v52 = a4;
  }

  else
  {
    v44 = 0;
    v52 = 0;
    v53 = 0;
  }

  v54 = *(a1 + 1136);
  v55 = *(a1 + 1128);
  if (v54 >= v55)
  {
    v62 = 2 * v55;
    if (!v55)
    {
      v62 = 256;
    }

    *(a1 + 1128) = v62;
    if ((72 * v62) < 0x2000000001)
    {
      v63 = *(a1 + 1144);
      v56 = realloc(v63, 72 * v62);
      if (v56)
      {
        *(a1 + 1144) = v56;
        v54 = *(a1 + 1136);
        goto LABEL_85;
      }

      free(v63);
    }

    else
    {
      *__error() = 12;
    }

    *(a1 + 1144) = 0;
    v65 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 973, 120, *v65, "malloc", v66, v67, v72);
    *(a1 + 1128) = 0;
    *(a1 + 1136) = 0;
    goto LABEL_11;
  }

  v56 = *(a1 + 1144);
LABEL_85:
  *(a1 + 1136) = v54 + 1;
  v21 = &v56[72 * v54];
  *(v21 + 15) = value;
  *(v21 + 16) = v74;
  *v21 = a3;
  *(v21 + 1) = a4;
  *(v21 + 2) = v77;
  *(v21 + 3) = v76;
  *(v21 + 4) = v75;
  *(v21 + 5) = v44;
  *(v21 + 6) = v52;
  *(v21 + 34) = v53;
  *(v21 + 14) = -1;
LABEL_15:
  result = 0;
  if (a5)
  {
    *a5 = v21;
  }

LABEL_12:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

AAFieldKeySet AAFieldKeySetCreate(void)
{
  v0 = malloc(0x10uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x10uLL, 0, 0x10uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreate", 63, 103, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

AAFieldKeySet AAFieldKeySetCreateWithString(const char *s)
{
  v2 = AAFieldKeySetCreate();
  if (!v2)
  {
    goto LABEL_44;
  }

  v3 = strlen(s);
  v6 = v3 + 1;
  if (((v3 + 1) & 3) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 73, 103, 0, "Invalid KeySet string length: %zu", v4, v5, v3 + 1);
    return 0;
  }

  if (v6 >= 0x3FFFFFFFDLL)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 75, 103, 0, "String too long: %zu", v4, v5, v3 + 1);
    return 0;
  }

  v7 = v6 >> 2;
  if (((v6 >> 2) & 0x80000000) != 0)
  {
LABEL_43:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 77, 103, 0, "realloc_keys", v4, v5, v29);
LABEL_44:
    AAFieldKeySetDestroy(v2);
    return 0;
  }

  v8 = *(v2 + 1);
  if (v8 < v7)
  {
    do
    {
      if (v8)
      {
        v8 += v8 >> 1;
      }

      else
      {
        v8 = 16;
      }
    }

    while (v8 < v7);
    v9 = *(v2 + 1);
    v10 = realloc(v9, 4 * v8);
    if (v10)
    {
      v11 = v10;
      *(v2 + 1) = v10;
      *(v2 + 1) = v8;
      goto LABEL_15;
    }

    free(v9);
    *(v2 + 1) = 0;
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v25, "malloc", v26, v27, v29);
    *v2 = 0;
    goto LABEL_43;
  }

  v11 = *(v2 + 1);
LABEL_15:
  memcpy(v11, s, v6);
  if (v6)
  {
    v12 = v6;
    do
    {
      *v11 = __toupper(*v11);
      ++v11;
      --v12;
    }

    while (v12);
    *v2 = v7;
    v15 = 0;
    if (v7 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v7;
    }

    v17 = MEMORY[0x29EDCA600];
    while (1)
    {
      v18 = *(v2 + 1) + v15;
      if (*(v18 + 3))
      {
        if (*(v18 + 3) != 44)
        {
          break;
        }
      }

      *(v18 + 3) = 0;
      v19 = *(*(v2 + 1) + v15);
      if (v19 > 0x7F)
      {
        v20 = __maskrune(v19, 0x500uLL);
      }

      else
      {
        v20 = *(v17 + 4 * v19 + 60) & 0x500;
      }

      if (!v20 || ((v21 = v19 >> 8, v21 > 0x7F) ? (v22 = __maskrune(v21, 0x500uLL)) : (v22 = *(v17 + 4 * v21 + 60) & 0x500), !v22 || ((v23 = (v19 << 8) >> 24, v23 > 0x7F) ? (v24 = __maskrune(v23, 0x500uLL)) : (v24 = *(v17 + 4 * v23 + 60) & 0x500), HIBYTE(v19) || !v24)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 88, 103, 0, "invalid key set: %s", v13, v14, s);
        goto LABEL_44;
      }

      v15 += 4;
      if (!--v16)
      {
        goto LABEL_40;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 86, 103, 0, "invalid key set: %s", v13, v14, s);
    goto LABEL_44;
  }

  *v2 = v7;
LABEL_40:
  qsort(*(v2 + 1), v7, 4uLL, cmp_keys);
  return v2;
}

void AAFieldKeySetDestroy(AAFieldKeySet key_set)
{
  if (key_set)
  {
    free(*(key_set + 1));

    free(key_set);
  }
}

AAFieldKeySet AAFieldKeySetClone(AAFieldKeySet key_set)
{
  v2 = AAFieldKeySetCreate();
  v5 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v6 = *key_set;
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(v2 + 1);
      if (v7 >= v6)
      {
        v9 = *(v2 + 1);
        goto LABEL_12;
      }

      do
      {
        if (v7)
        {
          v7 += v7 >> 1;
        }

        else
        {
          v7 = 16;
        }
      }

      while (v7 < v6);
      v8 = *(v2 + 1);
      v9 = realloc(v8, 4 * v7);
      if (v9)
      {
        *(v5 + 1) = v9;
        *(v5 + 1) = v7;
LABEL_12:
        *v5 = v6;
        memcpy(v9, *(key_set + 1), 4 * v6);
        return v5;
      }

      free(v8);
      *(v5 + 1) = 0;
      v10 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v10, "malloc", v11, v12, v14);
      *v5 = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetClone", 106, 103, 0, "realloc_keys", v3, v4, v14);
LABEL_15:
    AAFieldKeySetDestroy(v5);
    return 0;
  }

  return v5;
}

int AAFieldKeySetContainsKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v10 = key;
  v11 = 0;
  do
  {
    *(&v11 + v3) = __toupper(v10.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (*key_set && (v5 = *(key_set + 1), *v5 < v11))
  {
    v6 = v4 - 1;
    v7 = v5[v4 - 1];
    if (v7 < v11)
    {
      return 0;
    }

    if (v4 < 3)
    {
      return v7 == v11;
    }

    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v11)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    v7 = *(*(key_set + 1) + 4 * v6);
    return v7 == v11;
  }

  return 0;
}

int AAFieldKeySetInsertKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v22 = key;
  v23 = 0;
  do
  {
    *(&v23 + v3) = __toupper(v22.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v6 = *key_set;
  v7 = *key_set + 1;
  if (v7 < 0)
  {
    goto LABEL_21;
  }

  v8 = v23;
  v9 = *(key_set + 1);
  if (v9 < v7)
  {
    do
    {
      if (v9)
      {
        v9 += v9 >> 1;
      }

      else
      {
        v9 = 16;
      }
    }

    while (v9 < v7);
    v10 = *(key_set + 1);
    v11 = realloc(v10, 4 * v9);
    if (v11)
    {
      *(key_set + 1) = v11;
      *(key_set + 1) = v9;
      v6 = *key_set;
      goto LABEL_11;
    }

    free(v10);
    *(key_set + 1) = 0;
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v17, "malloc", v18, v19, v21);
    *key_set = 0;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKey", 139, 103, 0, "realloc_keys failed", v4, v5, v21);
    return -1;
  }

LABEL_11:
  if (!v6 || (v12 = *(key_set + 1), *v12 >= v8))
  {
    v13 = 0;
    goto LABEL_16;
  }

  v13 = v6 - 1;
  v14 = v12[v6 - 1];
  if (v14 >= v8)
  {
    if (v6 < 3)
    {
      v15 = v13;
      goto LABEL_18;
    }

    v20 = 0;
    do
    {
      if (v12[(v20 + v13) >> 1] >= v8)
      {
        v13 = (v20 + v13) >> 1;
      }

      else
      {
        v20 = (v20 + v13) >> 1;
      }
    }

    while (v13 - v20 > 1);
LABEL_16:
    if (v13 >= v6)
    {
      goto LABEL_23;
    }

    v12 = *(key_set + 1);
    v15 = v13;
    v14 = v12[v13];
LABEL_18:
    if (v14 == v8)
    {
      return 0;
    }

    memmove(&v12[v15 + 1], &v12[v15], 4 * (v6 - v13));
    goto LABEL_23;
  }

  v13 = v6;
LABEL_23:
  result = 0;
  *(*(key_set + 1) + 4 * v13) = v8;
  ++*key_set;
  return result;
}

int AAFieldKeySetRemoveKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v14 = key;
  v15 = 0;
  do
  {
    *(&v15 + v3) = __toupper(v14.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (!v4 || (v5 = *(key_set + 1), *v5 >= v15))
  {
    v6 = 0;
LABEL_14:
    if (v6 == v4)
    {
      return 0;
    }

    v5 = *(key_set + 1);
    v9 = v6;
    v7 = v5[v6];
    goto LABEL_16;
  }

  v6 = v4 - 1;
  v7 = v5[v4 - 1];
  if (v7 < v15)
  {
    return 0;
  }

  if (v4 >= 3)
  {
    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v15)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
    goto LABEL_14;
  }

  v9 = v4 - 1;
LABEL_16:
  if (v7 == v15)
  {
    v10 = v4 - 1;
    *key_set = v10;
    v11 = __OFSUB__(v10, v6);
    v12 = v10 - v6;
    if (!((v12 < 0) ^ v11 | (v12 == 0)))
    {
      memmove(&v5[v9], &v5[v9 + 1], 4 * v12);
    }
  }

  return 0;
}

int AAFieldKeySetInsertKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v4 = *s;
  if (v4)
  {
    v6 = *(s + 1);
    v7 = *key_set;
    v8 = *(key_set + 1);
    *key_set = 0;
    *(key_set + 1) = 0;
    v9 = v7 + v4;
    if (v7 + v4 >= 0)
    {
      if (!v9)
      {
LABEL_11:
        if (v7)
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v15 = v8[v14];
            v16 = *(v6 + 4 * v13);
            if (v15 == v16)
            {
              *(*(key_set + 1) + 4 * v12) = v15;
              ++v14;
            }

            else
            {
              v17 = *(key_set + 1);
              if (v15 < v16)
              {
                *(v17 + 4 * v12) = v15;
                ++v14;
                goto LABEL_19;
              }

              *(v17 + 4 * v12) = v16;
            }

            ++v13;
LABEL_19:
            ++v12;
            if (v14 >= v7 || v13 >= v4)
            {
              goto LABEL_23;
            }
          }
        }

        v14 = 0;
        v13 = 0;
        v12 = 0;
LABEL_23:
        if (v14 >= v7)
        {
          v20 = v12;
        }

        else
        {
          v18 = &v8[v14];
          v19 = v7 - v14;
          do
          {
            v20 = v12 + 1;
            v21 = *v18++;
            *(*(key_set + 1) + 4 * v12++) = v21;
            --v19;
          }

          while (v19);
        }

        if (v13 >= v4)
        {
          v24 = v20;
        }

        else
        {
          v22 = (v6 + 4 * v13);
          v23 = v4 - v13;
          do
          {
            v24 = v20 + 1;
            v25 = *v22++;
            *(*(key_set + 1) + 4 * v20++) = v25;
            --v23;
          }

          while (v23);
        }

        LODWORD(v4) = 0;
        *key_set = v24;
        goto LABEL_36;
      }

      v10 = 0;
      do
      {
        if (v10)
        {
          v10 += v10 >> 1;
        }

        else
        {
          v10 = 16;
        }
      }

      while (v10 < v9);
      v11 = malloc(4 * v10);
      if (v11)
      {
        *(key_set + 1) = v11;
        *(key_set + 1) = v10;
        goto LABEL_11;
      }

      *(key_set + 1) = 0;
      v26 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v26, "malloc", v27, v28, v30);
      *key_set = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKeySet", 178, 103, 0, "realloc_keys", v2, v3, v30);
    LODWORD(v4) = -1;
LABEL_36:
    free(v8);
  }

  return v4;
}

int AAFieldKeySetRemoveKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v3 = *key_set;
    v4 = *(key_set + 1);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *(s + 1);
      while (1)
      {
        v9 = *(v4 + 4 * v7);
        v10 = *(v8 + 4 * v6);
        if (v9 == v10)
        {
          ++v7;
        }

        else if (v9 < v10)
        {
          *(*(key_set + 1) + 4 * v5++) = v9;
          ++v7;
          goto LABEL_9;
        }

        ++v6;
LABEL_9:
        if (v7 >= v3 || v6 >= v2)
        {
          goto LABEL_13;
        }
      }
    }

    v7 = 0;
    v5 = 0;
LABEL_13:
    if (v7 >= v3)
    {
      v13 = v5;
    }

    else
    {
      v11 = (v4 + 4 * v7);
      v12 = v3 - v7;
      do
      {
        v13 = v5 + 1;
        v14 = *v11++;
        *(*(key_set + 1) + 4 * v5++) = v14;
        --v12;
      }

      while (v12);
    }

    *key_set = v13;
  }

  return 0;
}

int AAFieldKeySetSelectKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2 && (v3 = *key_set, v3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(s + 1);
    v8 = *(key_set + 1);
    do
    {
      v9 = *(v8 + 4 * v6);
      v10 = *(v7 + 4 * v5);
      if (v9 == v10)
      {
        *(*(key_set + 1) + 4 * v4++) = v9;
        ++v6;
        ++v5;
      }

      else if (v9 >= v10)
      {
        ++v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v3 && v5 < v2);
  }

  else
  {
    v4 = 0;
  }

  *key_set = v4;
  return 0;
}

int AAFieldKeySetSerialize(AAFieldKeySet key_set, size_t capacity, char *s)
{
  v3 = *key_set;
  if (v3)
  {
    if (capacity >= 4 * v3)
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = s;
        do
        {
          *v5 = *(*(key_set + 1) + 4 * v4);
          if (v4)
          {
            *(v5 - 1) = 44;
          }

          ++v4;
          v5 += 4;
        }

        while (v4 < *key_set);
        LODWORD(v3) = *key_set;
      }

      s += (4 * v3 - 1);
      goto LABEL_11;
    }
  }

  else if (capacity)
  {
LABEL_11:
    result = 0;
    *s = 0;
    return result;
  }

  return -1;
}

uint64_t AAPathListCreate()
{
  result = create();
  *(*(result + 8) + 16) = 1;
  return result;
}

uint64_t create()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (!v0)
  {
    v10 = *__error();
    v11 = "malloc";
    v12 = 444;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", v12, 60, v10, v11, v3, v4, v14);
    AAPathListDestroy(v1);
    return 0;
  }

  memset_s(v0, 0x20uLL, 0, 0x20uLL);
  v2 = StringTableCreate();
  *(v1 + 16) = v2;
  if (!v2)
  {
    v11 = "StringTableCreate";
    v12 = 447;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if ((increaseCapacity(v1, 0x100u) & 0x80000000) != 0)
  {
    v11 = "alloc";
    v12 = 450;
    goto LABEL_10;
  }

  v15 = -1;
  if ((StringTableAppend(*(v1 + 16), &unk_296ABFE1D, 0, &v15, v5, v6, v3, v4) & 0x80000000) != 0)
  {
    v11 = "String table insert";
    v12 = 452;
    goto LABEL_10;
  }

  v7 = *(v1 + 8);
  v8 = (*v1)++;
  v9 = v7 + 24 * v8;
  *(v9 + 20) = -1;
  *(v9 + 8) = -1;
  *v9 = -1;
  *(v9 + 12) = v15;
  return v1;
}

void AAPathListDestroy(AAPathList path_list)
{
  if (path_list)
  {
    StringTableDestroy(*(path_list + 2));
    free(*(path_list + 1));

    free(path_list);
  }
}

uint64_t increaseCapacity(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  v12 = v2;
  do
  {
    if (v3)
    {
      v3 += v3 >> 1;
    }

    else
    {
      v3 = 256;
    }
  }

  while (v3 < a2);
  *(a1 + 4) = v3;
  v5 = *(a1 + 8);
  v6 = realloc(v5, 24 * v3);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *(a1 + 8) = v7;
  }

  else
  {
    free(v5);
    *(a1 + 8) = 0;
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "increaseCapacity", 270, 60, *v9, "malloc", v10, v11, v12);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t expandDirThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v79 = *MEMORY[0x29EDCA608];
  v9 = *(v8 + 48);
  bzero(__src, 0x400uLL);
  bzero(v77, 0x800uLL);
  v10 = *(v9 + 4);
  if (!v10)
  {
    v10 = StringTableCreate();
    *(v9 + 4) = v10;
    if (!v10)
    {
      v14 = "String table creation";
      v15 = 79;
      goto LABEL_86;
    }
  }

  StringTableClear(v10);
  v9[4] = 0;
  v13 = strlen(*(v8 + 8));
  if (v13 >= 0x800)
  {
    v14 = "dir name too long";
    v15 = 88;
    goto LABEL_86;
  }

  v16 = v13;
  __memcpy_chk();
  v17 = &v77[v16];
  v77[v16] = 0;
  v18 = v9[1];
  if (v18 >= v9[2])
  {
    goto LABEL_88;
  }

  v19 = v16 + 1;
  while (1)
  {
    v20 = *v8;
    if (**v8 <= v18 || (v76.d_ino = 0, (getPath(v20, v18, 0x400uLL, __src, &v76.d_ino) & 0x80000000) != 0))
    {
      v14 = "get node path";
      v15 = 96;
      goto LABEL_86;
    }

    d_ino = v76.d_ino;
    if (v76.d_ino >= 0x400)
    {
      v14 = "truncated node path";
      v15 = 97;
      goto LABEL_86;
    }

    if (v76.d_ino)
    {
      v22 = v19 + v76.d_ino;
    }

    else
    {
      v22 = v16;
    }

    if (v76.d_ino)
    {
      if (v19 + v76.d_ino >= 0x800)
      {
        v14 = "path too long";
        v15 = 103;
        goto LABEL_86;
      }

      *v17 = 47;
      memcpy(v17 + 1, __src, d_ino);
    }

    v77[v22] = 0;
    memset(&v75, 0, sizeof(v75));
    if (lstat(v77, &v75) < 0)
    {
      v59 = *__error();
      v69 = v77;
      v14 = "lstat %s";
      v15 = 111;
      goto LABEL_87;
    }

    if (!statIsDataless(v75.st_flags))
    {
      break;
    }

    v24 = *(v8 + 24);
    if (v24 && v24(*(v8 + 16), 12, __src, 0))
    {
      v69 = v77;
      v14 = "dataless dir error: %s";
      v15 = 118;
      goto LABEL_86;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 119, 60, "skip dataless dir: %s", v23, v11, v12, v77);
LABEL_73:
    if (++v18 >= v9[2])
    {
      goto LABEL_88;
    }
  }

  v25 = opendir(v77);
  if (!v25)
  {
    v52 = *(v8 + 24);
    v19 = v16 + 1;
    if (v52 && v52(*(v8 + 16), 12, __src, 0))
    {
      v59 = *__error();
      v69 = v77;
      v14 = "opendir failed: %s";
      v15 = 130;
      goto LABEL_87;
    }

    v70 = *__error();
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 131, 60, "opendir failed with errno=%d: %s", v53, v54, v55, v70);
    goto LABEL_73;
  }

  v26 = v25;
  v71 = v17;
  memset(&v76, 0, 512);
  v74 = 0;
  while (!readdir_r(v26, &v76, &v74))
  {
    if (!v74)
    {
      goto LABEL_71;
    }

    d_namlen = v76.d_namlen;
    if ((v76.d_namlen != 1 || v76.d_name[0] != 46) && (v76.d_namlen != 2 || v76.d_name[0] != 46 || v76.d_name[1] != 46))
    {
      v30 = v22 + 1 + v76.d_namlen;
      if (v30 >= 0x800)
      {
        v60 = "path too long";
        v61 = 162;
        goto LABEL_80;
      }

      v77[v22] = 47;
      memcpy(&v77[v22 + 1], v76.d_name, d_namlen);
      v77[v30] = 0;
      memset(&v73, 0, sizeof(v73));
      if (lstat(v77, &v73))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 169, 60, "stat failed: %s", v32, v33, v34, v77);
      }

      else if (v76.d_type == 4)
      {
        v35 = *v9;
        if (*v9)
        {
LABEL_44:
          if (v73.st_dev == v75.st_dev || *(v8 + 40))
          {
            if (!v35)
            {
              goto LABEL_50;
            }

            v38 = *(v8 + 24);
            if (!v38)
            {
              goto LABEL_58;
            }

            v39 = v38(*(v8 + 16), 10, v71 + 1, 0);
            if (v39 < 0)
            {
              v65 = 182;
              goto LABEL_95;
            }

            if (!v39)
            {
LABEL_50:
              v40 = 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v76.d_type)
        {
          v36 = 0;
        }

        else
        {
          v36 = (v73.st_mode & 0xF000) == 0x4000;
        }

        v37 = v36;
        v35 = *v9;
        if ((((*v9 != 0) ^ v37) & 1) == 0)
        {
          if (v37)
          {
            goto LABEL_44;
          }

          v40 = 0;
LABEL_52:
          v41 = *(v8 + 24);
          if (!v41)
          {
LABEL_58:
            v44 = 1;
            goto LABEL_59;
          }

          v42 = v41(*(v8 + 16), 11, v71 + 1, 0);
          if (v42 < 0)
          {
            v65 = 189;
LABEL_95:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v65, 60, "abort from callback", v32, v33, v34, v69);
            goto LABEL_82;
          }

          v43 = v40;
          v44 = v42 == 0;
          if (!v42)
          {
            v43 = 1;
          }

          if (v43 == 1)
          {
LABEL_59:
            v72 = -1;
            if ((StringTableAppend(*(v9 + 4), v76.d_name, d_namlen, &v72, v31, v32, v33, v34) & 0x80000000) != 0)
            {
              v60 = "String insertion failed";
              v61 = 196;
LABEL_80:
              v62 = 0;
LABEL_81:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v61, 60, v62, v60, v27, v28, v69);
LABEL_82:
              closedir(v26);
              v14 = "Directory expansion";
              v15 = 211;
              goto LABEL_86;
            }

            v46 = v9[3];
            v45 = v9[4];
            v47 = *(v9 + 3);
            if (v45 >= v46)
            {
              v48 = 2 * v46;
              if (!v46)
              {
                v48 = 256;
              }

              v9[3] = v48;
              v49 = realloc(v47, 12 * v48);
              if (!v49)
              {
                free(v47);
                *(v9 + 3) = 0;
                v66 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 201, 60, *v66, "malloc", v67, v68, v69);
                v9[3] = 0;
                v9[4] = 0;
                goto LABEL_82;
              }

              *(v9 + 3) = v49;
              v45 = v9[4];
              v47 = v49;
            }

            v9[4] = v45 + 1;
            v50 = &v47[12 * v45];
            v51 = v72;
            *v50 = v18;
            v50[1] = v51;
            v50[2] = !v44;
          }
        }
      }
    }
  }

  if (*__error() != 11)
  {
    v62 = *__error();
    v60 = "readdir_r";
    v61 = 144;
    goto LABEL_81;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 143, 60, "readdir on dataless directory: %s", v56, v57, v58, v77);
LABEL_71:
  closedir(v26);
  if (!**(v8 + 32))
  {
    v17 = v71;
    v19 = v16 + 1;
    goto LABEL_73;
  }

  v14 = "Abort requested";
  v15 = 212;
LABEL_86:
  v59 = 0;
LABEL_87:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v15, 60, v59, v14, v11, v12, v69);
  atomic_fetch_add(*(v8 + 32), 1u);
LABEL_88:
  v63 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t normalize(_DWORD *a1)
{
  if (*a1)
  {
    v2 = StringTableSize(*(a1 + 2));
    v33 = 0;
    v3 = *a1;
    if ((StringTableSort(*(a1 + 2), &v33) & 0x80000000) != 0)
    {
      v27 = "String table sorting";
      v28 = 379;
LABEL_30:
      v30 = 0;
    }

    else
    {
      if (v3)
      {
        v6 = v33;
        v7 = (*(a1 + 1) + 12);
        v8 = v3;
        do
        {
          v9 = *v7;
          if (v9 >= v2)
          {
            v27 = "Name out of range";
            v28 = 386;
            goto LABEL_30;
          }

          *v7 = v6[v9];
          *(v7 - 1) = -1;
          v7 += 6;
          --v8;
        }

        while (v8);
        v10 = 0;
        v11 = -1;
        a1[7] = -1;
        v12 = *(a1 + 1);
        v13 = (v12 + 8);
        do
        {
          v14 = *(v13 - 2);
          if (v14 == -1)
          {
            if (v11 != -1)
            {
              v27 = "Multiple root nodes";
              v28 = 399;
              goto LABEL_30;
            }

            a1[7] = v10;
            v11 = v10;
          }

          else
          {
            v15 = v12 + 24 * v14;
            *v13 = *(v15 + 4);
            *(v15 + 4) = v10;
          }

          ++v10;
          v13 += 6;
        }

        while (v3 != v10);
        v16 = calloc(v3, 4uLL);
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = (*(a1 + 1) + 16);
        do
        {
          v21 = *v20;
          v20 += 24;
          if ((v21 & 1) == 0)
          {
            *&v16[4 * v19++] = v18;
          }

          ++v18;
        }

        while (v3 != v18);
        qsort_r(v16, v19, 4uLL, a1, cmpNodesProc);
        v22 = a1 + 6;
        if (v19)
        {
          v23 = 0;
          v24 = *(a1 + 1);
          do
          {
            v25 = *&v17[v23];
            *v22 = v25;
            v22 = (v24 + 24 * v25 + 20);
            v23 += 4;
          }

          while (4 * v19 != v23);
        }

        goto LABEL_26;
      }

      a1[7] = -1;
      v29 = calloc(v3, 4uLL);
      if (v29)
      {
        v17 = v29;
        qsort_r(v29, 0, 4uLL, a1, cmpNodesProc);
        v22 = a1 + 6;
LABEL_26:
        v26 = 0;
        *v22 = -1;
LABEL_32:
        free(v33);
        free(v17);
        return v26;
      }

LABEL_28:
      v30 = *__error();
      v27 = "malloc";
      v28 = 410;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", v28, 60, v30, v27, v4, v5, v32);
    v17 = 0;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  return 0;
}

AAPathList AAPathListCreateWithPath(const char *dir, const char *path)
{
  v2 = (MEMORY[0x2A1C7C4A8])(dir, path);
  v36 = *MEMORY[0x29EDCA608];
  bzero(v35, 0x400uLL);
  bzero(v34, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v2, v35))
  {
    v10 = *__error();
    v30 = v2;
    v8 = "Invalid dir: %s";
    v9 = 693;
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v9, 60, v10, v8, v6, v7, v30);
    v11 = 0;
    goto LABEL_21;
  }

  v3 = strlen(v35);
  v5 = v3 != 1 || v35[0] != 47;
  __strlcpy_chk();
  if ((normalizePath(v34) & 0x80000000) != 0)
  {
    v30 = v2;
    v8 = "Invalid path (subpath normalization failed): %s/%s";
    v9 = 699;
    goto LABEL_17;
  }

  if ((concatPath(v33, 0x800uLL, v35, v34) & 0x80000000) != 0)
  {
    v10 = *__error();
    v30 = v2;
    v8 = "Path too long: %s/%s";
    v9 = 705;
    goto LABEL_20;
  }

  if (!realpath_DARWIN_EXTSN(v33, __s))
  {
    v10 = *__error();
    v30 = v2;
    v8 = "Invalid path, doesn't exist: %s/%s";
    v9 = 706;
    goto LABEL_20;
  }

  if (v5 && (strlen(__s) < v3 || memcmp(__s, v35, v3) || __s[v3] && __s[v3] != 47))
  {
    v30 = v2;
    v8 = "Path resolving outside target dir: %s/%s";
    v9 = 713;
LABEL_17:
    v10 = 0;
    goto LABEL_20;
  }

  v11 = create();
  if (!v11)
  {
    goto LABEL_21;
  }

  v14 = strlen(v34);
  if (!v14)
  {
LABEL_38:
    if ((normalize(v11) & 0x80000000) != 0)
    {
      v27 = "Tree normalization";
      v28 = 745;
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = *(v11 + 1) + 24 * v11[7];
  *(v18 + 16) |= 1u;
  while (1)
  {
    v19 = v34[v16];
    if (v19 == 47 || v19 == 0)
    {
      break;
    }

LABEL_37:
    if (++v16 > v15)
    {
      goto LABEL_38;
    }
  }

  v31 = -1;
  if ((increaseCapacity(v11, *v11 + 1) & 0x80000000) != 0)
  {
    v27 = "increase PathList capacity";
    v28 = 732;
    goto LABEL_42;
  }

  if ((StringTableAppend(*(v11 + 2), &v34[v17], v16 - v17, &v31, v21, v22, v23, v24) & 0x80000000) == 0)
  {
    v25 = *v11;
    v26 = (*(v11 + 1) + 24 * *v11);
    *v26 = *v11 - 1;
    v26[3] = v31;
    v26[4] = v19 != 0;
    *v11 = v25 + 1;
    if (!v19)
    {
      goto LABEL_38;
    }

    v17 = ++v16;
    goto LABEL_37;
  }

  v27 = "inserting path component in table";
  v28 = 733;
LABEL_42:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v28, 60, 0, v27, v23, v24, v29);
LABEL_21:
  AAPathListDestroy(v11);
  v11 = 0;
LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

int AAPathListNodeGetPath(AAPathList path_list, uint64_t node, size_t path_capacity, char *path, size_t *path_length)
{
  if (node == -1)
  {
    if (path_capacity)
    {
      *path = 0;
    }

    result = 0;
    *path_length = 0;
  }

  else if (*path_list <= node)
  {
    return -1;
  }

  else
  {
    v7 = 0;
    result = getPath(path_list, node, path_capacity, path, &v7);
    if (path_length)
    {
      *path_length = v7;
    }
  }

  return result;
}

uint64_t getPath(uint64_t a1, unsigned int a2, size_t a3, _BYTE *a4, size_t *a5)
{
  if (a2 == -1)
  {
    v18 = 0;
    if (a3)
    {
      *a4 = 0;
    }

    goto LABEL_15;
  }

  v10 = *(*(a1 + 8) + 24 * a2);
  if ((getPath() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 16);
  v12 = *(v11 + 8) + 16 * *(*(a1 + 8) + 24 * a2 + 12);
  v13 = *(v12 + 8);
  if (!v13)
  {
    return 0;
  }

  v14 = *a5;
  v15 = *a5 + 1;
  if (v15 + v13 < a3)
  {
    v16 = *(v11 + 32);
    v17 = *v12;
    if (v14)
    {
      a4[v14] = 47;
    }

    else
    {
      v15 = 0;
    }

    memcpy(&a4[v15], (v16 + v17), v13);
    v18 = v15 + v13;
    a4[v15 + v13] = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v14 + (v13 + 1);
LABEL_15:
  result = 0;
  *a5 = v18;
  return result;
}

uint64_t AAPathListGetNode(uint64_t a1, char *__s)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    v6 = strlen(__s);
    if (!v6)
    {
      return v2;
    }

    v7 = 0;
    v15 = v6;
    while (1)
    {
      v8 = v6 <= v7 + 1 ? v7 + 1 : v6;
      v9 = v7;
      while (__s[v9] != 47)
      {
        if (v8 == ++v9)
        {
          v10 = __s[v8] != 0;
          v9 = v8;
          goto LABEL_14;
        }
      }

      v10 = 1;
LABEL_14:
      if (v9 == v7)
      {
        break;
      }

      v11 = *(a1 + 8);
      v2 = *(v11 + 24 * v2 + 4);
      if (v2 == -1)
      {
        break;
      }

      v16 = v10;
      v12 = *(a1 + 16);
      v13 = *(v12 + 8);
      while (1)
      {
        v14 = *(v11 + 24 * v2 + 12);
        if (v9 - v7 == *(v13 + 16 * v14 + 8) && !strncmp((*(v12 + 32) + *(v13 + 16 * v14)), &__s[v7], v9 - v7))
        {
          break;
        }

        v2 = *(v11 + 24 * v2 + 8);
        if (v2 == -1)
        {
          return -1;
        }
      }

      v6 = v15;
      v7 = v9 + v16;
      if (v9 + v16 >= v15)
      {
        return v2;
      }
    }
  }

  return -1;
}

uint64_t AAPathListMerge(uint64_t a1, unsigned int *a2)
{
  v21 = 0;
  if (*a2 == 1)
  {
    return 0;
  }

  if ((StringTableAppendTable(*(a1 + 16), *(a2 + 2), &v21) & 0x80000000) != 0)
  {
    v18 = "String table merge";
    v19 = 800;
  }

  else
  {
    v7 = *a1;
    if ((increaseCapacity(a1, *a2 + *a1) & 0x80000000) != 0)
    {
      v18 = "Capacity increase";
      v19 = 804;
    }

    else
    {
      if (*a2 >= 2)
      {
        v8 = *(a1 + 8);
        v9 = *a1;
        v10 = (*(a2 + 1) + 40);
        v11 = 1;
        do
        {
          v12 = v8 + 24 * v9++;
          *a1 = v9;
          v13 = v21 + *(v10 - 1);
          v14 = *(v10 - 4);
          v15 = v14 == 0;
          v16 = v7 - 1 + v14;
          if (v15)
          {
            v16 = 0;
          }

          *v12 = v16;
          v17 = *v10;
          v10 += 6;
          *(v12 + 12) = v13;
          *(v12 + 16) = v17;
          *(v12 + 20) = -1;
          *(v12 + 4) = -1;
          ++v11;
        }

        while (v11 < *a2);
      }

      if ((normalize(a1) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "Tree normalization";
      v19 = 816;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", v19, 60, 0, v18, v5, v6, v20);
  return 0xFFFFFFFFLL;
}

uint64_t AAPathListNodeFirst(AAPathList path_list)
{
  if (*(path_list + 6) == -1)
  {
    return -1;
  }

  else
  {
    return *(path_list + 6);
  }
}

uint64_t AAPathListNodeNext(AAPathList path_list, uint64_t node)
{
  if (*path_list <= node)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListNodeNext", 826, 60, 0, "Invalid node: %llu", v2, v3, node);
    return -1;
  }

  else if (*(*(path_list + 1) + 24 * node + 20) == -1)
  {
    return -1;
  }

  else
  {
    return *(*(path_list + 1) + 24 * node + 20);
  }
}

uint64_t cmpNodesProc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = (v5 + 24 * v3);
  v7 = (v5 + 24 * *a3);
  if (*v6 == *v7)
  {
    v8 = v6[3];
    v9 = v7[3];
    if (v8 < v9)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = v9 < v8;
    }
  }

  else
  {
    if (*a1 <= v3 || (*__s2 = 0, (getPath(a1, v3, 0x400uLL, __s1, __s2) & 0x80000000) != 0) || *__s2 >= 0x400uLL)
    {
      __s1[0] = 0;
    }

    if (*a1 <= v4 || (v13 = 0, (getPath(a1, v4, 0x400uLL, __s2, &v13) & 0x80000000) != 0) || v13 >= 0x400)
    {
      __s2[0] = 0;
    }

    result = strcmp(__s1, __s2);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

AAArchiveStream AAExtractArchiveOutputStreamOpen(const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (!n_threads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v49, 0, sizeof(v49));
  v12 = malloc(0x690uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x690uLL, 0, 0x690uLL);
    if (v11)
    {
      if (!realpath_DARWIN_EXTSN(dir, v13))
      {
        v22 = *__error();
        v48 = dir;
        v23 = "%s";
        v24 = 1611;
        goto LABEL_16;
      }

      if (stat(v13, &v49) || (v49.st_mode & 0xF000) != 0x4000)
      {
        v48 = dir;
        v23 = "Invalid directory: %s";
        v24 = 1612;
      }

      else
      {
        *(v13 + 1024) = flags;
        *(v13 + 1032) = msg_data;
        *(v13 + 1040) = msg_proc;
        *(v13 + 1656) = getRealTime();
        *(v13 + 1640) = 0;
        *(v13 + 1056) = 1;
        *(v13 + 1072) = 0;
        *(v13 + 1076) = DefaultNThreads;
        v16 = calloc(DefaultNThreads, 4uLL);
        *(v13 + 1080) = v16;
        if (!v16)
        {
          v20 = "SharedArrayInit: malloc failed\n";
          v21 = 55;
          goto LABEL_22;
        }

        if (pthread_mutex_init((v13 + 1088), 0))
        {
          v20 = "SharedArrayInit: pthread_mutex_init failed\n";
          v21 = 56;
LABEL_22:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v21, 0, v20, v17, v18, v19, v48);
          v23 = "SharedArrayInit";
          v24 = 1619;
          goto LABEL_15;
        }

        if (pthread_cond_init((v13 + 1152), 0))
        {
          v20 = "SharedArrayInit: pthread_cond_init failed\n";
          v21 = 57;
          goto LABEL_22;
        }

        VolumeCapabilities = getVolumeCapabilities(v13);
        v34 = -1;
        if (VolumeCapabilities < 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = VolumeCapabilities;
        }

        v35 = 268;
        if ((v34 & 8) == 0)
        {
          v35 = 264;
        }

        v36 = v35 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v34 & 1));
        if ((flags & 0x20) == 0 && (v34 & 2) != 0)
        {
          v37 = v36 | 0x40;
        }

        else
        {
          v37 = v36;
        }

        *(v13 + 1048) = v37;
        if (isDirEmpty(v13) >= 1)
        {
          *(v13 + 1056) = 0;
        }

        for (i = 0; i != 240; i += 80)
        {
          *(v13 + i + 1376) = 0u;
          if (pthread_mutex_init((v13 + i + 1312), 0) < 0)
          {
            v39 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInit", 472, 72, *v39, "pthread_mutex_init", v40, v41, v48);
            v23 = "cluster init";
            v24 = 1638;
            goto LABEL_15;
          }
        }

        *(v13 + 1200) = v13;
        if (pthread_mutex_init((v13 + 1216), 0))
        {
          v22 = *__error();
          v23 = "pthread_mutex_init";
          v24 = 1643;
          goto LABEL_16;
        }

        if ((createThread((v13 + 1208), retireThreadProc, v13 + 1200, 0) & 0x80000000) == 0)
        {
          *(v13 + 1060) = DefaultNThreads;
          if (DefaultNThreads < 0x2E8BA2E9)
          {
            v42 = calloc(DefaultNThreads, 0xB0uLL);
            *(v13 + 1064) = v42;
            if (v42)
            {
              if (!DefaultNThreads)
              {
LABEL_50:
                v11[3] = extractStreamWriteHeader;
                v11[4] = extractStreamWriteBlob;
                v11[2] = extractStreamAbort;
                *v11 = v13;
                v11[1] = extractStreamClose;
                return v11;
              }

              v43 = 0;
              v44 = 176 * DefaultNThreads;
              while (1)
              {
                v45 = *(v13 + 1064);
                v46 = v45 + v43;
                *(v45 + v43) = v13;
                if (AASharedBufferPipeOpen((v45 + v43 + 32), (v45 + v43 + 40), 0x40000uLL) < 0)
                {
                  v23 = "creating shared data buffer";
                  v24 = 1654;
                  goto LABEL_15;
                }

                if (AASharedBufferPipeOpen((v46 + 16), (v46 + 24), 0x4000uLL) < 0)
                {
                  v23 = "creating shared command buffer";
                  v24 = 1655;
                  goto LABEL_15;
                }

                v47 = v45 + v43;
                if ((SemInit(v47 + 48) & 0x80000000) != 0)
                {
                  v23 = "SemInit failed";
                  v24 = 1656;
                  goto LABEL_15;
                }

                if ((createThread((v47 + 8), extractThreadProc, v46, 0) & 0x80000000) != 0)
                {
                  break;
                }

                v43 += 176;
                if (v44 == v43)
                {
                  goto LABEL_50;
                }
              }

              v23 = "creating worker thread";
              v24 = 1657;
              goto LABEL_15;
            }
          }

          else
          {
            *__error() = 12;
            *(v13 + 1064) = 0;
          }

          v22 = *__error();
          v23 = "malloc";
          v24 = 1649;
          goto LABEL_16;
        }

        v23 = "creating retire thread";
        v24 = 1644;
      }

LABEL_15:
      v22 = 0;
      goto LABEL_16;
    }
  }

  v22 = *__error();
  v23 = "malloc";
  v24 = 1610;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "AAExtractArchiveOutputStreamOpen", v24, 72, v22, v23, v14, v15, v48);
  free(v11);
  extractStreamClose(v13, v25, v26, v27, v28, v29, v30, v31);
  return 0;
}

uint64_t SemInit(uint64_t a1)
{
  *a1 = 0;
  if (pthread_mutex_init((a1 + 8), 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 72), 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t extractThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v115 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  v10 = *(*v8 + 1064);
  bzero(v113, 0x800uLL);
  bzero(__s, 0x800uLL);
  bzero(__s2, 0x800uLL);
  v13 = malloc(0x40000uLL);
  if (!v13)
  {
    v101 = *__error();
    v102 = "malloc";
    v103 = 756;
LABEL_200:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v103, 72, v101, v102, v11, v12, v106);
    free(v13);
    goto LABEL_204;
  }

  if (*(v9 + 1060) <= -1171354717 * ((v8 - v10) >> 4))
  {
    LOBYTE(v106) = -93 * ((v8 - v10) >> 4);
    v102 = "invalid thread ID %d";
    v103 = 757;
    v101 = 0;
    goto LABEL_200;
  }

  v108 = -1171354717 * ((v8 - v10) >> 4);
  v14 = 0;
  v107 = -1;
  while (1)
  {
LABEL_4:
    if (v14)
    {
      goto LABEL_22;
    }

    if (pthread_mutex_lock((v9 + 1088)))
    {
      v18 = 117;
      v19 = "SharedArrayPush: pthread_mutex_lock failed\n";
    }

    else
    {
      v20 = *(v9 + 1072);
      v21 = *(v9 + 1076);
      v22 = v20;
      if (v20 < v21)
      {
        *(*(v9 + 1080) + 4 * v20) = v108;
        v22 = *(v9 + 1072);
      }

      *(v9 + 1072) = v22 + 1;
      if (v22 || !pthread_cond_broadcast((v9 + 1152)))
      {
        if (pthread_mutex_unlock((v9 + 1088)))
        {
          v18 = 124;
          v19 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        }

        else
        {
          if (v20 < v21)
          {
            goto LABEL_17;
          }

          v18 = 125;
          v19 = "SharedArrayPush: stack is full\n";
        }
      }

      else
      {
        v18 = 122;
        v19 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      }
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v18, 0, v19, v15, v16, v17, v106);
LABEL_17:
    if (!pthread_mutex_lock((v8 + 56)))
    {
      while (1)
      {
        v23 = *(v8 + 48);
        if (v23 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v8 + 120), (v8 + 56)))
        {
          goto LABEL_22;
        }
      }

      *(v8 + 48) = v23 - 1;
      pthread_mutex_unlock((v8 + 56));
    }

LABEL_22:
    memset(buf, 0, 12);
    v24 = AAByteStreamRead(*(v8 + 24), buf, 0xCuLL);
    if (v24 != 12)
    {
      break;
    }

    if (SLODWORD(buf[0]) <= 68)
    {
      if (SLODWORD(buf[0]) <= 65)
      {
        if (LODWORD(buf[0]) != 65)
        {
          if (LODWORD(buf[0]) == 42)
          {
            goto LABEL_202;
          }

LABEL_84:
          v50 = 942;
          v51 = "Invalid thread command";
          goto LABEL_111;
        }

LABEL_51:
        v45 = *(v8 + 168);
        if (v45)
        {
          v46 = v45 + 281;
          v47 = v45 + 275;
          v48 = v45 + 278;
          if (LODWORD(buf[0]) != 65)
          {
            v48 = 0;
          }

          if (LODWORD(buf[0]) == 88)
          {
            v48 = v47;
          }

          if (LODWORD(buf[0]) == 89)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          if (*v49 + *(buf + 4) > v49[1])
          {
            v50 = 931;
            v51 = "too many blob bytes received";
            goto LABEL_111;
          }

          v57 = AAByteStreamRead(*(v8 + 40), (v49[2] + *v49), *(buf + 4));
          if (v57 < 0)
          {
            v50 = 933;
            goto LABEL_110;
          }

          v58 = *(buf + 4);
          *(buf + 4) -= v57;
          if (v57)
          {
            v59 = *v49 + v57;
            if (!__CFADD__(*v49, v57) && v59 <= v49[1])
            {
              *v49 = v59;
            }
          }

          if (v58 != v57)
          {
            v50 = 936;
            v51 = "truncated read";
            goto LABEL_111;
          }
        }

LABEL_77:
        v34 = 0;
        goto LABEL_113;
      }

      if (LODWORD(buf[0]) == 66)
      {
        if (!*(v8 + 168))
        {
          v50 = 786;
          v51 = "no entry in thread";
          goto LABEL_111;
        }

        goto LABEL_77;
      }

      if (LODWORD(buf[0]) != 68)
      {
        goto LABEL_84;
      }

      v35 = *(v8 + 168);
      if (v35)
      {
        v36 = *(v35 + 2192);
        if (v36 == -1)
        {
          v50 = 847;
          v51 = "DAT size not received yet";
          goto LABEL_111;
        }

        if (*(v35 + 2288))
        {
          goto LABEL_35;
        }

        if ((*(v35 + 2056) & 4) != 0)
        {
          v62 = 0;
          v63 = -1;
          if (v36 && (*(v35 + 2068) & 0x20) != 0)
          {
            if (*(v35 + 2128))
            {
              v63 = *(v35 + 2136);
            }

            else
            {
              v63 = 0;
            }

            if ((*(v35 + 2128) & 0x10) != 0)
            {
              v62 = *(v35 + 2156);
              v87 = *(v35 + 2152);
              if (v87)
              {
                if (v36 <= v87)
                {
                  v62 = v62 & 0xFFFFFFFC;
                  v63 = 10;
                }

                else
                {
                  v62 |= 3uLL;
                }
              }
            }

            else
            {
              v62 = 0;
            }
          }
        }

        else
        {
          v62 = 0;
          v63 = -1;
        }

        if ((*(v35 + 2128) & 8) != 0 && (*(v9 + 1030) & 2) != 0)
        {
          v64 = *(v35 + 2132);
        }

        else
        {
          v64 = -1;
        }

        if ((concatExtractPath(v113, 0x800uLL, v9, *(v8 + 168)) & 0x80000000) != 0)
        {
          LOBYTE(v106) = v35;
          v50 = 885;
        }

        else
        {
          if (*(v9 + 1056))
          {
            removeFile(v113);
          }

          __strlcpy_chk();
          v83 = strrchr(__s, 47);
          if (v83)
          {
            *v83 = 0;
            v84 = v83 + 1;
            if (v107 < 0)
            {
              goto LABEL_154;
            }

            if (!strcmp(__s, __s2))
            {
              v85 = v107;
            }

            else
            {
              close(v107);
LABEL_154:
              __strlcpy_chk();
              v85 = open(__s2, 0);
              if (v85 < 0)
              {
                v107 = v85;
                v86 = *(v35 + 2288);
LABEL_175:
                if (!v86)
                {
                  v95 = aaArchiveFileOutputStreamOpenAt(-1, v113, *(v35 + 2192), v63, v62, v64, *(v9 + 1048));
                  *(v35 + 2288) = v95;
                  if (!v95)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 904, 72, 0, "opening output file: %s", v96, v97, v113);
LABEL_112:
                    v34 = 1;
LABEL_113:
                    v14 = 1;
                    goto LABEL_114;
                  }
                }

                while (1)
                {
LABEL_35:
                  if (!*(buf + 4))
                  {
                    v14 = 1;
                    goto LABEL_4;
                  }

                  v37 = *(buf + 4) >= 0x40000 ? 0x40000 : *(buf + 4);
                  v38 = AAByteStreamRead(*(v8 + 40), v13, v37);
                  if (v38 < 0)
                  {
                    break;
                  }

                  v39 = v38;
                  *(buf + 4) -= v38;
                  v40 = *(v35 + 2288);
                  if (*(v40 + 24))
                  {
                    v41 = 0;
                    if (v38)
                    {
                      v42 = v13;
                      v43 = v38;
                      while (1)
                      {
                        v44 = (*(v40 + 24))(*v40, v42, v43);
                        if (v44 < 1)
                        {
                          break;
                        }

                        v42 += v44;
                        v41 += v44;
                        v43 -= v44;
                        if (!v43)
                        {
                          goto LABEL_48;
                        }
                      }

                      v41 = v44;
                    }
                  }

                  else
                  {
                    v41 = -1;
                  }

LABEL_48:
                  if (v41 != v39)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 915, 72, 0, "write failed %zd", v30, v31, v41);
                    goto LABEL_112;
                  }
                }

                v50 = 912;
LABEL_110:
                v51 = "reading payload";
LABEL_111:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v50, 72, 0, v51, v30, v31, v106);
                goto LABEL_112;
              }
            }

            v107 = v85;
            v86 = aaArchiveFileOutputStreamOpenAt(v85, v84, *(v35 + 2192), v63, v62, v64, *(v9 + 1048));
            *(v35 + 2288) = v86;
            goto LABEL_175;
          }

          v106 = v113;
          v50 = 890;
        }

        v51 = "invalid path: %s";
        goto LABEL_111;
      }

      v34 = 0;
      v14 = 1;
    }

    else
    {
      if ((LODWORD(buf[0]) - 88) < 2)
      {
        goto LABEL_51;
      }

      if (LODWORD(buf[0]) == 69)
      {
        v52 = *(v8 + 168);
        if (!v52)
        {
          v34 = 0;
          v14 = 0;
          goto LABEL_114;
        }

        v53 = *(v52 + 2048);
        if (v53 == 70)
        {
          v54 = *(v52 + 2288);
          if (v54)
          {
            goto LABEL_66;
          }

          if (*(v52 + 2192))
          {
LABEL_92:
            v53 = *(v52 + 2048);
          }

          else
          {
            if ((*(v52 + 2128) & 8) != 0 && (*(v9 + 1030) & 2) != 0)
            {
              v82 = *(v52 + 2132);
            }

            else
            {
              v82 = -1;
            }

            if ((concatExtractPath(v113, 0x800uLL, v9, *(v8 + 168)) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 808, 72, 0, "invalid path: %s", v98, v99, v52);
              goto LABEL_135;
            }

            if (*(v9 + 1056))
            {
              removeFile(v113);
            }

            v54 = aaArchiveFileOutputStreamOpenAt(-1, v113, *(v52 + 2192), 0xFFFFFFFF, 0, v82, *(v9 + 1048));
            *(v52 + 2288) = v54;
            if (!v54)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 811, 72, 0, "opening output file: %s", v30, v31, v113);
              goto LABEL_135;
            }

            v53 = *(v52 + 2048);
            if (v53 == 70)
            {
LABEL_66:
              *(v52 + 2296) = aaArchiveFileOutputStreamCloseAndReturnFD(v54, v25, v26, v27, v28, v29, v30, v31);
              *(v52 + 2288) = 0;
              v55 = applyEntryAttributes(v9, v52);
              v56 = *(v52 + 2296);
              if ((v56 & 0x80000000) == 0)
              {
                close(v56);
                *(v52 + 2296) = -1;
              }

              if (v55 < 0)
              {
                LOBYTE(v106) = v52;
                v60 = 822;
                goto LABEL_126;
              }

              if (*(v52 + 2300) != 2)
              {
                *(v52 + 2300) = 2;
              }

              goto LABEL_92;
            }
          }
        }

        if (v53 == 70 || v53 == 72)
        {
LABEL_95:
          if ((retireThreadEnqueue(v9 + 1200, *(v8 + 168)) & 0x80000000) != 0)
          {
            v60 = 837;
            v61 = "sending entry to retire thread";
            goto LABEL_134;
          }

          v34 = 0;
          v14 = 0;
          *(v8 + 168) = 0;
          goto LABEL_114;
        }

        if ((concatExtractPath(v114, 0x800uLL, v9, v52) & 0x80000000) != 0)
        {
          LOBYTE(v106) = v52;
          v77 = 274;
          v78 = "invalid path: %s";
LABEL_132:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", v77, 72, 0, v78, v65, v66, v106);
          goto LABEL_133;
        }

        v67 = *(v52 + 2048);
        if (v67 == 68)
        {
          memset(&v110, 0, sizeof(v110));
          if (!*(v9 + 1056) || lstat(v114, &v110))
          {
            goto LABEL_103;
          }

          if ((v110.st_mode & 0xF000) != 0x4000)
          {
            removeFile(v114);
LABEL_103:
            if (mkdir(v114, 0x1EDu))
            {
              if (lstat(v114, &v110) || (v110.st_mode & 0xF000) != 0x4000)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 305, 72, 0, "mkdir failed: %s", v68, v69, v52);
LABEL_133:
                LOBYTE(v106) = v52;
                v60 = 829;
                v61 = "creating fs object: %s";
                goto LABEL_134;
              }
            }

            else if ((*(v52 + 2056) & 3) != 0)
            {
              if (*(v52 + 2056))
              {
                v88 = *(v52 + 2060);
              }

              else
              {
                v88 = -1;
              }

              if ((*(v52 + 2056) & 2) != 0)
              {
                v100 = *(v52 + 2064);
              }

              else
              {
                v100 = -1;
              }

              chown(v114, v88, v100);
            }
          }
        }

        else
        {
          if (*(v9 + 1056))
          {
            removeFile(v114);
            v67 = *(v52 + 2048);
          }

          switch(v67)
          {
            case 'H':
              if (link((v52 + 1024), v114))
              {
                v92 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 320, 72, v92, "link %s", v93, v94, v52);
                goto LABEL_133;
              }

              break;
            case 'P':
              if (mkfifo(v114, 0x1A4u))
              {
                v89 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 325, 72, v89, "mkfifo %s", v90, v91, v52);
                goto LABEL_133;
              }

              break;
            case 'L':
              if (symlink((v52 + 1024), v114))
              {
                v79 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 315, 72, v79, "symlink %s", v80, v81, v52);
                goto LABEL_133;
              }

              break;
            default:
              v77 = 330;
              v78 = "not implemented yet";
              goto LABEL_132;
          }
        }

        if (*(v52 + 2300) != 2)
        {
          *(v52 + 2300) = 2;
        }

        if (*(v52 + 2048) != 68 && (applyEntryAttributes(v9, v52) & 0x80000000) != 0)
        {
          LOBYTE(v106) = v52;
          v60 = 833;
LABEL_126:
          v61 = "applyEntryAttributes failed: %s";
LABEL_134:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v60, 72, 0, v61, v32, v33, v106);
LABEL_135:
          v14 = 0;
          v34 = 1;
          goto LABEL_114;
        }

        goto LABEL_95;
      }

      if (LODWORD(buf[0]) != 70)
      {
        goto LABEL_84;
      }

      if ((extractThreadFailEntry(v8) & 0x80000000) != 0)
      {
        v60 = 792;
        v61 = "retire failed entry";
        goto LABEL_134;
      }

      v34 = 0;
      v14 = 0;
    }

LABEL_114:
    v70 = *(buf + 4);
    if (*(buf + 4))
    {
      while (1)
      {
        v71 = v70 >= 0x40000 ? 0x40000 : v70;
        v72 = AAByteStreamRead(*(v8 + 40), v13, v71);
        if (v72 < 0)
        {
          break;
        }

        v70 = *(buf + 4) - v72;
        *(buf + 4) -= v72;
        if (!*(buf + 4))
        {
          goto LABEL_120;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 953, 72, 0, "reading payload", v73, v74, v106);
LABEL_123:
      if ((extractThreadFailEntry(v8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 959, 72, 0, "retire failed entry", v75, v76, v106);
      }
    }

    else
    {
LABEL_120:
      if (v34)
      {
        goto LABEL_123;
      }
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 775, 72, 0, "reading thread command, %zd", v30, v31, v24);
LABEL_202:
  free(v13);
  if ((v107 & 0x80000000) == 0)
  {
    close(v107);
  }

LABEL_204:
  v104 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t extractStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v137 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    goto LABEL_160;
  }

  v11 = result;
  v128 = *(result + 1024);
  if (atomic_load((result + 1600)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1486, 72, 0, "stream cancelled", v9, v10, v127);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  if (*(v11 + 1632) || *(v11 + 1640))
  {
    extractStreamStateFail(v11);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1492, 72, 0, "invalid state on destroy", v14, v15, v127);
    v13 = 0;
  }

  if (*(v11 + 1064))
  {
    v16 = *(v11 + 1060);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(v11 + 1064);
        if (v20)
        {
          v21 = v20 + v17;
          if (*(v21 + 8))
          {
            ++v19;
          }

          if (!v13)
          {
            v22 = *(v21 + 32);
            if (v22)
            {
              AAByteStreamCancel(v22);
              v16 = *(v11 + 1060);
            }
          }
        }

        ++v18;
        v17 += 176;
      }

      while (v18 < v16);
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          if (pthread_mutex_lock((v11 + 1088)))
          {
            v27 = 91;
            v28 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_25:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v27, 0, v28, v24, v25, v26, v127);
          }

          else
          {
            while (1)
            {
              v29 = *(v11 + 1072);
              if (v29)
              {
                break;
              }

              if (pthread_cond_wait((v11 + 1152), (v11 + 1088)))
              {
                v27 = 94;
                v28 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_25;
              }
            }

            v30 = v29 - 1;
            *(v11 + 1072) = v30;
            v31 = *(*(v11 + 1080) + 4 * v30);
            if (pthread_mutex_unlock((v11 + 1088)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v32, v33, v34, v127);
            }

            if (v31 != -1)
            {
              v35 = *(v11 + 1064) + 176 * v31;
              if (!pthread_mutex_lock((v35 + 56)))
              {
                v36 = *(v35 + 48);
                *(v35 + 48) = v36 + 1;
                if (v36 || !pthread_cond_broadcast((v35 + 120)))
                {
                  pthread_mutex_unlock((v35 + 56));
                }
              }

              v136 = 0;
              buf = 42;
              AAByteStreamWrite(*(v35 + 16), &buf, 0xCuLL);
              joinThread(*(v35 + 8));
              AAByteStreamClose(*(v35 + 16));
              AAByteStreamClose(*(v35 + 24));
              AAByteStreamClose(*(v35 + 32));
              AAByteStreamClose(*(v35 + 40));
              if (!pthread_mutex_destroy((v35 + 56)))
              {
                pthread_cond_destroy((v35 + 120));
              }
            }
          }
        }
      }
    }

    free(*(v11 + 1064));
  }

  if (!pthread_mutex_destroy((v11 + 1088)) && !pthread_cond_destroy((v11 + 1152)))
  {
    free(*(v11 + 1080));
  }

  if (*(v11 + 1208))
  {
    retireThreadEnqueue(v11 + 1200, 0);
    joinThread(*(v11 + 1208));
    pthread_mutex_destroy((v11 + 1216));
  }

  if (*(v11 + 1632))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1541, 72, 0, "entry found in extract stream", v42, v43, v127);
    entryRelease(*(v11 + 1632), v44, v45, v46, v47, v48, v49, v50);
    v13 = 0;
  }

  v51 = 0;
  v52 = (v11 + 1384);
  v132 = *(v11 + 1024);
  v129 = v13;
  v130 = v11 + 1312;
  do
  {
    v53 = v130 + 80 * v51;
    if (*(v53 + 64))
    {
      v54 = 0;
      v55 = (v132 & 0x10) == 0 && v51 == 2;
      v56 = v55;
      if (v55)
      {
        v57 = (v132 >> 7) & 1;
      }

      else
      {
        v57 = 0;
      }

      v133 = v57;
      v131 = v56 ^ 1 | ((v132 & 0x80) != 0);
      while (1)
      {
        v58 = (*(v53 + 72) + 32 * v54);
        if (!v58[1])
        {
          goto LABEL_100;
        }

        v59 = v58[2];
        v60 = v52;
        if (v59 != -1 || (v59 = v58[3], v60 = (v11 + 1464), v61 = (*(v53 + 72) + 32 * v54), v59 != -1))
        {
          v61 = (*v60 + 32 * v59);
        }

        v62 = *v61;
        if (*v61)
        {
          if (*(v62 + 575) == 3)
          {
            break;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1049, 72, 0, "no valid DAT entry for cluster %d/%llu", v42, v43, v51);
        while (1)
        {
          v75 = v58[1];
          if (!v75)
          {
            break;
          }

          v58[1] = *(v75 + 8 * v51 + 2336);
          if (*(v75 + 2300) != -1)
          {
            *(v75 + 2300) = -1;
            v76 = *(v11 + 1040);
            if (v76)
            {
              v76(*(v11 + 1032), 22, v75, v75 + 2272);
            }
          }

          entryRelease(v75, v37, v38, v39, v40, v41, v42, v43);
        }

LABEL_100:
        if (++v54 >= *(v53 + 64))
        {
          goto LABEL_108;
        }
      }

      if ((concatExtractPath(&buf, 0x800uLL, v11, *v61) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1071, 72, 0, "invalid DAT path", v42, v43, v127);
      }

      while (1)
      {
        v74 = v58[1];
        if (!v74)
        {
          v52 = (v11 + 1384);
          goto LABEL_100;
        }

        v58[1] = *(v74 + 8 * v51 + 2336);
        if (v74 != v62)
        {
          break;
        }

LABEL_97:
        entryRelease(v74, v37, v38, v39, v40, v41, v42, v43);
      }

      Path = concatExtractPath(v134, 0x800uLL, v11, v74);
      if (Path < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1082, 72, 0, "invalid path: %s", v63, v64, v74);
      }

      unlink(v134);
      if (v51)
      {
        if (v51 == 1)
        {
LABEL_70:
          if ((clonefile(&buf, v134, 0) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1116, 72, "failed to create clone: %s", v41, v42, v43, v74);
LABEL_79:
          if ((copyFileWithAttributes(&buf, v134, 0, v132 & 1, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1123, 72, 0, "create copy: %s", v42, v43, v74);
            v67 = 0;
            goto LABEL_86;
          }

LABEL_80:
          v66 = 0;
          if ((Path & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }

        if (!v133)
        {
          if (v131)
          {
            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      if (link(&buf, v134) < 0)
      {
        v68 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1108, 72, v68, "failed to create hard link: %s", v69, v70, v74);
        goto LABEL_90;
      }

      v66 = 1;
      if ((Path & 0x80000000) == 0)
      {
LABEL_81:
        if (*(v74 + 2300) != 2)
        {
          *(v74 + 2300) = 2;
        }

        v67 = 1;
        if (v66)
        {
LABEL_87:
          if (v67)
          {
            v71 = 3;
LABEL_91:
            if (*(v74 + 2300) != v71)
            {
              *(v74 + 2300) = v71;
              v72 = *(v11 + 1040);
              if (v72)
              {
                if (v71 == -1)
                {
                  v73 = 22;
                }

                else
                {
                  v73 = 21;
                }

                v72(*(v11 + 1032), v73, v74, v74 + 2272);
              }
            }

            goto LABEL_97;
          }

LABEL_90:
          v71 = -1;
          goto LABEL_91;
        }

LABEL_86:
        if ((applyEntryAttributes(v11, v74) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1129, 72, 0, "setting entry attributes: %s", v42, v43, v74);
          goto LABEL_90;
        }

        goto LABEL_87;
      }

LABEL_75:
      v67 = 0;
      if (v66)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

LABEL_108:
    ++v51;
  }

  while (v51 != 3);
  if (!*(v11 + 1560))
  {
    goto LABEL_131;
  }

  v77 = 0;
  v78 = 1;
  while (2)
  {
    v79 = *(*(v11 + 1568) + 8 * v77);
    if ((concatExtractPath(&buf, 0x800uLL, v11, v79) & 0x80000000) != 0)
    {
      v92 = 1007;
      v93 = "invalid 'H' PAT";
      goto LABEL_119;
    }

    if ((concatExtractPath(v134, 0x800uLL, v11, (v79 + 1024)) & 0x80000000) != 0)
    {
      v92 = 1008;
      v93 = "invalid 'H' LNK";
LABEL_119:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", v92, 72, 0, v93, v80, v81, v127);
LABEL_120:
      v94 = 0;
      v95 = -1;
      goto LABEL_121;
    }

    if (*(v11 + 1056))
    {
      removeFile(&buf);
    }

    if (link(v134, &buf))
    {
      v89 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1010, 72, v89, "link %s ->%s", v90, v91, &buf);
      goto LABEL_120;
    }

    v94 = 1;
    v95 = 3;
LABEL_121:
    if (*(v79 + 2300) != v95)
    {
      *(v79 + 2300) = v95;
      v96 = *(v11 + 1040);
      if (v96)
      {
        if (v95 == -1)
        {
          v97 = 22;
        }

        else
        {
          v97 = 21;
        }

        v96(*(v11 + 1032), v97, v79, v79 + 2272);
      }
    }

    entryRelease(v79, v82, v83, v84, v85, v86, v87, v88);
    *(*(v11 + 1568) + 8 * v77) = 0;
    v78 &= v94;
    if (++v77 < *(v11 + 1560))
    {
      continue;
    }

    break;
  }

  *(v11 + 1560) = 0;
  if (!v78)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1550, 72, 0, "process hlinks", v42, v43, v127);
    v129 = 0;
  }

LABEL_131:
  v98 = *(v11 + 1584);
  if (v98)
  {
    v99 = v98 - 1;
    v100 = 1;
    while (1)
    {
      v101 = *(*(v11 + 1592) + 8 * v99);
      if ((concatExtractPath(&buf, 0x800uLL, v11, v101) & 0x80000000) != 0)
      {
        break;
      }

      if ((applyEntryAttributes(v11, v101) & 0x80000000) != 0)
      {
        v110 = 984;
        v111 = "applyEntryAttributes failed";
        goto LABEL_138;
      }

      v109 = 1;
LABEL_139:
      entryRelease(v101, v104, v105, v106, v107, v108, v102, v103);
      *(*(v11 + 1592) + 8 * v99) = 0;
      v100 &= v109;
      if (--v99 == -1)
      {
        *(v11 + 1584) = 0;
        v112 = v129;
        if (!v100)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1553, 72, 0, "process dirs", v42, v43, v127);
          v112 = 0;
        }

        goto LABEL_143;
      }
    }

    v110 = 983;
    v111 = "invalid 'D' PAT";
LABEL_138:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", v110, 72, 0, v111, v102, v103, v127);
    v109 = 0;
    goto LABEL_139;
  }

  v112 = v129;
LABEL_143:
  v113 = atomic_load((v11 + 1604));
  v114 = MEMORY[0x29EDCA610];
  if (v113)
  {
    v115 = atomic_load((v11 + 1604));
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1556, 72, 0, "%u entries failed to extract", v42, v43, v115);
    v112 = 0;
  }

  else if (v112 && v128 >> 62)
  {
    v116 = getRealTime() - *(v11 + 1656);
    v112 = 1;
    fwrite("Extract archive\n", 0x10uLL, 1uLL, *v114);
    fprintf(*v114, "%12u worker threads\n", *(v11 + 1060));
    fprintf(*v114, "%12u directories\n", *(v11 + 1672));
    fprintf(*v114, "%12u regular files\n", *(v11 + 1668));
    fprintf(*v114, "%12u symbolic links\n", *(v11 + 1676));
    fprintf(*v114, "%12u entries\n", *(v11 + 1664));
    fprintf(*v114, "%12.2f time (s)\n", v116);
  }

  for (j = 0; j != 3; ++j)
  {
    v118 = v130 + 80 * j;
    if (*(v118 + 64))
    {
      v119 = 0;
      do
      {
        v120 = *(v118 + 72);
        v121 = *(v120 + 32 * v119 + 8);
        if (v121)
        {
          do
          {
            fprintf(*v114, "pending %s\n", v121);
            v121 = *&v121[8 * j + 2336];
          }

          while (v121);
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterFree", 485, 72, 0, "cluster has pending entries %d/%llu", v122, v123, j);
          goto LABEL_156;
        }

        while (1)
        {
          v124 = (v120 + 32 * v119);
          v125 = v124[1];
          if (!v125)
          {
            break;
          }

          v124[1] = *(v125 + 8 * v119 + 2336);
          entryRelease(v125, v37, v38, v39, v40, v41, v42, v43);
LABEL_156:
          v120 = *(v118 + 72);
        }

        entryRelease(*v124, v37, v38, v39, v40, v41, v42, v43);
        ++v119;
      }

      while (v119 < *(v118 + 64));
    }

    pthread_mutex_destroy(v118);
    free(*(v118 + 72));
  }

  free(*(v11 + 1568));
  free(*(v11 + 1624));
  memset_s((v11 + 1616), 0x10uLL, 0, 0x10uLL);
  free(*(v11 + 1304));
  free(*(v11 + 1592));
  free(v11);
  result = (v112 - 1);
LABEL_160:
  v126 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t extractStreamWriteHeader(uint64_t a1, AAHeader header, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = *MEMORY[0x29EDCA608];
  size = 0;
  value = -1;
  offset = 0;
  v9 = *(a1 + 1024);
  *(a1 + 1608) = 0;
  if (*(a1 + 1632) || *(a1 + 1640))
  {
    v10 = "invalid extract state";
    v11 = 1245;
    goto LABEL_4;
  }

  v16.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v16);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    v33 = "AA entry missing TYP field";
    v34 = 1249;
LABEL_25:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", v34, 72, v33, v18, v19, v20, v99);
    goto LABEL_26;
  }

  if (value - 66 > 0x11 || ((1 << (value - 66)) & 0x24457) == 0)
  {
    result = 0;
    *(a1 + 1608) = 1;
    goto LABEL_6;
  }

  length[0] = 0;
  v22.ikey = 5521744;
  v23 = AAHeaderGetKeyIndex(header, v22);
  if ((v23 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v23, 0x400uLL, __s, length) >= 2)
  {
    v33 = "YAA entry missing/invalid PAT field";
    v34 = 1274;
    goto LABEL_25;
  }

  v24 = *(a1 + 1040);
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24(*(a1 + 1032), 20, __s, header);
  if (v25 < 0)
  {
    v10 = "user cancelled";
    v11 = 1284;
    goto LABEL_4;
  }

  if (v25)
  {
LABEL_26:
    result = 0;
    *(a1 + 1608) = 1;
    goto LABEL_6;
  }

  v26 = (*(a1 + 1040))(*(a1 + 1032), 27, __s, length);
  if (v26 < 0)
  {
    v10 = "user cancelled";
    v11 = 1289;
    goto LABEL_4;
  }

  if (v26)
  {
    __strlcpy_chk();
  }

LABEL_21:
  v27 = value;
  if (strlen(__s) >= 0x400)
  {
    v30 = "path too long";
    v31 = 198;
    v32 = 0;
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", v31, 72, v32, v30, v28, v29, v99);
    *(a1 + 1632) = 0;
    v10 = "entry creation";
    v11 = 1295;
    goto LABEL_4;
  }

  v35 = malloc(0x938uLL);
  if (!v35)
  {
    v32 = *__error();
    v30 = "malloc";
    v31 = 200;
    goto LABEL_35;
  }

  v36 = v35;
  memset_s(v35, 0x938uLL, 0, 0x938uLL);
  __memcpy_chk();
  *(v36 + 256) = v27;
  *(v36 + 574) = -1;
  *(v36 + 289) = -1;
  *(v36 + 290) = -1;
  *(v36 + 291) = -1;
  *(v36 + 273) = -1;
  *(v36 + 274) = -1;
  atomic_store(1u, v36 + 576);
  *(a1 + 1632) = v36;
  ++*(a1 + 1664);
  switch(value)
  {
    case 'L':
      ++*(a1 + 1676);
      break;
    case 'F':
      ++*(a1 + 1668);
      break;
    case 'D':
      ++*(a1 + 1672);
      break;
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 1616, header) & 0x80000000) != 0)
  {
    v10 = "Eerror getting blobs from header";
    v11 = 1307;
    goto LABEL_4;
  }

  if ((aaEntryAttributesInitWithHeader(v36 + 2056, v36 + 2128, 0, header) & 0x80000000) != 0)
  {
    v10 = "getting attributes from header";
    v11 = 1310;
    goto LABEL_4;
  }

  v37 = *(a1 + 1040);
  if (v37)
  {
    if ((v37(*(a1 + 1032), 23, v36, v36 + 2056) & 0x80000000) != 0)
    {
      v10 = "message callback cancelled operations";
      v11 = 1314;
      goto LABEL_4;
    }

    v38 = *(a1 + 1040);
    if (v38 && (*(a1 + 1030) & 0x10) != 0 && (v38(*(a1 + 1032), 26, v36, v36 + 2128) & 0x80000000) != 0)
    {
      v10 = "message callback cancelled operations";
      v11 = 1320;
      goto LABEL_4;
    }
  }

  if ((v36[2056] & 4) != 0 && (v36[2068] & 0x20) != 0 && (v36[2128] & 1) != 0 && *(v36 + 534) == -1)
  {
    v10 = "disable AFSC by clearing UF_COMPRESSED";
    v11 = 1325;
    goto LABEL_4;
  }

  v39.ikey = 4997953;
  v40 = AAHeaderGetKeyIndex(header, v39);
  if ((v40 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v40, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_170:
      v10 = "ACL blob allocation";
      v11 = 1331;
      goto LABEL_4;
    }

    v41 = *(v36 + 279);
    if (v41 < size)
    {
      v42 = v9;
      do
      {
        while (!v41)
        {
          v41 = 0x4000;
          if (size <= 0x4000)
          {
            v44 = (v36 + 2240);
            v41 = 0x4000;
            goto LABEL_68;
          }
        }

        v43 = v41 >> 1;
        if ((v41 & (v41 >> 1)) != 0)
        {
          v43 = v41 & (v41 >> 1);
        }

        v41 += v43;
      }

      while (v41 < size);
      v44 = (v36 + 2240);
      if (v41 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_169;
      }

LABEL_68:
      v45 = *v44;
      v46 = realloc(*v44, v41);
      if (v46)
      {
        *(v36 + 280) = v46;
        *(v36 + 279) = v41;
        LOBYTE(v9) = v42;
        goto LABEL_70;
      }

      free(v45);
LABEL_169:
      *v44 = 0;
      *(v36 + 278) = 0;
      *(v36 + 279) = 0;
      goto LABEL_170;
    }
  }

LABEL_70:
  v47.ikey = 5521752;
  v48 = AAHeaderGetKeyIndex(header, v47);
  if ((v48 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v48, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_173:
      v10 = "XAT blob allocation";
      v11 = 1335;
      goto LABEL_4;
    }

    v49 = *(v36 + 276);
    if (v49 < size)
    {
      v50 = v9;
      do
      {
        while (!v49)
        {
          v49 = 0x4000;
          if (size <= 0x4000)
          {
            v52 = (v36 + 2216);
            v49 = 0x4000;
            goto LABEL_84;
          }
        }

        v51 = v49 >> 1;
        if ((v49 & (v49 >> 1)) != 0)
        {
          v51 = v49 & (v49 >> 1);
        }

        v49 += v51;
      }

      while (v49 < size);
      v52 = (v36 + 2216);
      if (v49 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_172;
      }

LABEL_84:
      v53 = *v52;
      v54 = realloc(*v52, v49);
      if (v54)
      {
        *(v36 + 277) = v54;
        *(v36 + 276) = v49;
        LOBYTE(v9) = v50;
        goto LABEL_86;
      }

      free(v53);
LABEL_172:
      *v52 = 0;
      *(v36 + 275) = 0;
      *(v36 + 276) = 0;
      goto LABEL_173;
    }
  }

LABEL_86:
  v55.ikey = 4408665;
  v56 = AAHeaderGetKeyIndex(header, v55);
  if ((v56 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v56, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_176:
      v10 = "YEC blob allocation";
      v11 = 1339;
      goto LABEL_4;
    }

    v57 = *(v36 + 282);
    if (v57 < size)
    {
      v58 = v9;
      do
      {
        while (!v57)
        {
          v57 = 0x4000;
          if (size <= 0x4000)
          {
            v60 = (v36 + 2264);
            v57 = 0x4000;
            goto LABEL_101;
          }
        }

        v59 = v57 >> 1;
        if ((v57 & (v57 >> 1)) != 0)
        {
          v59 = v57 & (v57 >> 1);
        }

        v57 += v59;
      }

      while (v57 < size);
      v60 = (v36 + 2264);
      if (v57 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_175;
      }

LABEL_101:
      v61 = *v60;
      v62 = realloc(*v60, v57);
      if (v62)
      {
        *(v36 + 283) = v62;
        *(v36 + 282) = v57;
        LOBYTE(v9) = v58;
        goto LABEL_103;
      }

      free(v61);
LABEL_175:
      *v60 = 0;
      *(v36 + 281) = 0;
      *(v36 + 282) = 0;
      goto LABEL_176;
    }
  }

LABEL_103:
  v102 = 0;
  *(v36 + 284) = -1;
  *(v36 + 285) = -1;
  v63.ikey = 5784649;
  v64 = AAHeaderGetKeyIndex(header, v63);
  if ((v64 & 0x80000000) == 0)
  {
    FieldUInt = AAHeaderGetFieldUInt(header, v64, &v102);
    v66 = FieldUInt <= 1 ? 1 : FieldUInt;
    if (v66 >= 1)
    {
      *(v36 + 284) = v102;
    }
  }

  v67.ikey = 5915721;
  v68 = AAHeaderGetKeyIndex(header, v67);
  if ((v68 & 0x80000000) == 0)
  {
    v74 = AAHeaderGetFieldUInt(header, v68, &v102);
    v75 = v74 <= 1 ? 1 : v74;
    if (v75 >= 1)
    {
      *(v36 + 285) = v102;
    }
  }

  if (value == 70)
  {
    *(v36 + 274) = -1;
    v76.ikey = 5521732;
    v77 = AAHeaderGetKeyIndex(header, v76);
    if ((v77 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v77, &size, &offset) <= 1)
    {
      *(v36 + 274) = size;
    }

    v78 = 0;
    v79 = 0;
    v80 = v9 & 0x10;
    v81 = 0;
    do
    {
      if (v78 == 2 && v80)
      {
        break;
      }

      v82.ikey = 4410451;
      if (v78 != 2)
      {
        v82.ikey = 4144959;
      }

      if (v78 == 1)
      {
        v82.ikey = 4410435;
      }

      if (v78)
      {
        v83 = v82;
      }

      else
      {
        v83.ikey = 4410440;
      }

      v101 = -1;
      v84 = AAHeaderGetKeyIndex(header, v83);
      if ((v84 & 0x80000000) == 0 && AAHeaderGetFieldUInt(header, v84, &v101) <= 1)
      {
        v85 = v101;
        *&v36[8 * v78 + 2312] = v101;
        v100 = 0;
        if (*(v36 + 274) == -1)
        {
          v86 = 0;
        }

        else
        {
          v86 = v36;
        }

        updated = clusterEntryUpdateDAT(a1, v78, v85, v86, &v100);
        if (updated < 0)
        {
          v10 = "cluster entry query";
          v11 = 1371;
          goto LABEL_4;
        }

        if (updated)
        {
          v81 = 1;
        }

        if (v100)
        {
          v88 = updated == 0;
        }

        else
        {
          v88 = 0;
        }

        if (v88)
        {
          v79 = 1;
        }
      }

      ++v78;
    }

    while (v78 != 3);
    if (!v81 && v79 && *(v36 + 274) != -1)
    {
      *(v36 + 274) = -1;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFBLL) == 0x48)
  {
    v101 = 0;
    v89.ikey = 4935244;
    v90 = AAHeaderGetKeyIndex(header, v89);
    if ((v90 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v90, 0x400uLL, v36 + 1024, &v101) > 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1389, 72, 0, "YAA link entry has no LNK field: %s", a7, a8, __s);
      goto LABEL_5;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFELL) == 0x42)
  {
    v91.ikey = 5653828;
    v92 = AAHeaderGetKeyIndex(header, v91);
    if ((v92 & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, v92, v36 + 273) >= 2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1394, 72, 0, "YAA device entry has no DEV field: %s", a7, a8, __s);
      goto LABEL_5;
    }
  }

  *(a1 + 1648) = 0;
  v93 = *(a1 + 1616);
  if (v93 && (v94 = *(a1 + 1624), !*(v94 + 8)))
  {
    v96 = (v94 + 32);
    v97 = 1;
    do
    {
      v95 = v97;
      if (v93 == v97)
      {
        break;
      }

      v98 = *v96;
      v96 += 3;
      ++v97;
    }

    while (!v98);
    *(a1 + 1648) = v95;
  }

  else
  {
    v95 = 0;
  }

  if (v95 < v93 || (extractStreamEntryEnd(a1, v69, v70, v71, v72, v73, a7, a8) & 0x80000000) == 0)
  {
    result = 0;
    goto LABEL_6;
  }

  v10 = "end entry";
  v11 = 1404;
LABEL_4:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", v11, 72, 0, v10, a7, a8, v99);
LABEL_5:
  extractStreamStateFail(a1);
  result = 0xFFFFFFFFLL;
LABEL_6:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t extractStreamWriteBlob(uint64_t a1, size_t a2, void *__src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (__smax && !*(a1 + 1608))
  {
    v12 = *(a1 + 1632);
    v13 = *(a1 + 1640);
    if (*(a1 + 1632) == 0)
    {
      v14 = "no active entry or active thread";
      v15 = 1423;
LABEL_8:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", v15, 72, 0, v14, a7, a8, v56);
      extractStreamStateFail(a1);
      return 0xFFFFFFFFLL;
    }

    v16 = *(a1 + 1648);
    if (v16 >= *(a1 + 1616))
    {
      v18 = "invalid blob reference";
      v19 = 1424;
      goto LABEL_13;
    }

    v17 = *(a1 + 1624) + 24 * v16;
    if (((*v17 ^ a2) & 0xFFFFFF) != 0)
    {
      v18 = "inconsistent blob key";
      v19 = 1428;
LABEL_13:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", v19, 72, 0, v18, a7, a8, v56);
      return 0xFFFFFFFFLL;
    }

    if (*(v17 + 8) < __smax)
    {
      v18 = "too many blob bytes received";
      v19 = 1429;
      goto LABEL_13;
    }

    v21 = *v17 & 0xFFFFFF;
    if (v21 <= 0x544143)
    {
      if (v21 != 4408665)
      {
        if (v21 == 4997953)
        {
          if (v12)
          {
            v22 = v12[278];
            v23 = __CFADD__(v22, __smax);
            v24 = v22 + __smax;
            if (v23 || (v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_111;
            }

            v25 = v12 + 278;
            a2 = v12[279];
            if (a2 < v24)
            {
              do
              {
                while (!a2)
                {
                  a2 = 0x4000;
                  if (v24 <= 0x4000)
                  {
                    v27 = (v12 + 280);
                    a2 = 0x4000;
                    goto LABEL_68;
                  }
                }

                v26 = a2 >> 1;
                if ((a2 & (a2 >> 1)) != 0)
                {
                  v26 = a2 & (a2 >> 1);
                }

                a2 += v26;
              }

              while (a2 < v24);
              v27 = (v12 + 280);
              if (a2 >= 0x2000000001)
              {
                v57 = (v12 + 280);
                *__error() = 12;
                goto LABEL_110;
              }

LABEL_68:
              v56 = a2;
              v57 = v27;
              v38 = *v27;
              v39 = realloc(*v27, a2);
              if (v39)
              {
                v12[280] = v39;
                v12[279] = v56;
                goto LABEL_70;
              }

              free(v38);
LABEL_110:
              *v57 = 0;
              *v25 = 0;
              v12[279] = 0;
              goto LABEL_111;
            }

LABEL_70:
            v40 = v12[280];
            if (__src)
            {
              memcpy((v40 + *v25), __src, __smax);
            }

            else if (v40)
            {
              memset_s((v40 + *v25), __smax, 0, __smax);
            }

            *v25 += __smax;
            if ((__smax & 0x8000000000000000) != 0)
            {
LABEL_111:
              v14 = "too many blob bytes received";
              v15 = 1438;
              goto LABEL_8;
            }
          }

          if (v13 && (extractThreadSendCommand(v13, 65, __smax, __src) & 0x80000000) != 0)
          {
            v14 = "sending blob";
            v15 = 1439;
            goto LABEL_8;
          }
        }

        goto LABEL_97;
      }

      if (!v12)
      {
        goto LABEL_96;
      }

      v33 = v12[281];
      v23 = __CFADD__(v33, __smax);
      v34 = v33 + __smax;
      if (!v23 && (v34 & 0x8000000000000000) == 0)
      {
        v35 = v12 + 281;
        a2 = v12[282];
        if (a2 < v34)
        {
          do
          {
            while (!a2)
            {
              a2 = 0x4000;
              if (v34 <= 0x4000)
              {
                v37 = (v12 + 283);
                a2 = 0x4000;
                goto LABEL_76;
              }
            }

            v36 = a2 >> 1;
            if ((a2 & (a2 >> 1)) != 0)
            {
              v36 = a2 & (a2 >> 1);
            }

            a2 += v36;
          }

          while (a2 < v34);
          v37 = (v12 + 283);
          if (a2 >= 0x2000000001)
          {
            v59 = (v12 + 283);
            *__error() = 12;
            goto LABEL_116;
          }

LABEL_76:
          v56 = a2;
          v59 = v37;
          v44 = *v37;
          v45 = realloc(*v37, a2);
          if (v45)
          {
            v12[283] = v45;
            v12[282] = v56;
            goto LABEL_78;
          }

          free(v44);
LABEL_116:
          *v59 = 0;
          *v35 = 0;
          v12[282] = 0;
          goto LABEL_117;
        }

LABEL_78:
        v46 = v12[283];
        if (__src)
        {
          memcpy((v46 + *v35), __src, __smax);
        }

        else if (v46)
        {
          memset_s((v46 + *v35), __smax, 0, __smax);
        }

        *v35 += __smax;
        if ((__smax & 0x8000000000000000) == 0)
        {
LABEL_96:
          if (v13 && (extractThreadSendCommand(v13, 89, __smax, __src) & 0x80000000) != 0)
          {
            v14 = "sending blob";
            v15 = 1444;
            goto LABEL_8;
          }

          goto LABEL_97;
        }
      }

LABEL_117:
      v14 = "too many blob bytes received";
      v15 = 1443;
      goto LABEL_8;
    }

    if (v21 == 5521732)
    {
      if (!v12 || v12[274] != -1)
      {
        if (!v13)
        {
          if ((extractStreamSendEntryToExtractThread(a1) & 0x80000000) != 0)
          {
            v14 = "send entry to thread";
            v15 = 1453;
            goto LABEL_8;
          }

          v13 = *(a1 + 1640);
        }

        if ((extractThreadSendCommand(v13, 68, __smax, __src) & 0x80000000) != 0)
        {
          v14 = "sending DAT blob";
          v15 = 1457;
          goto LABEL_8;
        }
      }

      goto LABEL_97;
    }

    if (v21 != 5521752)
    {
LABEL_97:
      v47 = *(v17 + 8) - __smax;
      *(v17 + 8) = v47;
      if (v47)
      {
        return 0;
      }

      v48 = *(a1 + 1648);
      v49 = (v48 + 1);
      *(a1 + 1648) = v49;
      v50 = *(a1 + 1616);
      if (v49 < v50)
      {
        v51 = *(a1 + 1624);
        if (!*(v51 + 24 * v49 + 8))
        {
          v52 = (v51 + 24 * v49 + 32);
          v53 = ~v49 + v50;
          v54 = v48 + 2;
          do
          {
            LODWORD(v49) = v54;
            if (!v53)
            {
              break;
            }

            v55 = *v52;
            v52 += 3;
            --v53;
            ++v54;
          }

          while (!v55);
          *(a1 + 1648) = v49;
        }
      }

      if (v49 < v50 || (extractStreamEntryEnd(a1, a2, __src, __smax, a5, a6, a7, a8) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "end entry failed";
      v19 = 1472;
      goto LABEL_13;
    }

    if (!v12)
    {
      goto LABEL_90;
    }

    v28 = v12[275];
    v23 = __CFADD__(v28, __smax);
    v29 = v28 + __smax;
    if (!v23 && (v29 & 0x8000000000000000) == 0)
    {
      v30 = v12 + 275;
      a2 = v12[276];
      if (a2 < v29)
      {
        do
        {
          while (!a2)
          {
            a2 = 0x4000;
            if (v29 <= 0x4000)
            {
              v32 = (v12 + 277);
              a2 = 0x4000;
              goto LABEL_72;
            }
          }

          v31 = a2 >> 1;
          if ((a2 & (a2 >> 1)) != 0)
          {
            v31 = a2 & (a2 >> 1);
          }

          a2 += v31;
        }

        while (a2 < v29);
        v32 = (v12 + 277);
        if (a2 >= 0x2000000001)
        {
          v58 = (v12 + 277);
          *__error() = 12;
          goto LABEL_113;
        }

LABEL_72:
        v56 = a2;
        v58 = v32;
        v41 = *v32;
        v42 = realloc(*v32, a2);
        if (v42)
        {
          v12[277] = v42;
          v12[276] = v56;
          goto LABEL_74;
        }

        free(v41);
LABEL_113:
        *v58 = 0;
        *v30 = 0;
        v12[276] = 0;
        goto LABEL_114;
      }

LABEL_74:
      v43 = v12[277];
      if (__src)
      {
        memcpy((v43 + *v30), __src, __smax);
      }

      else if (v43)
      {
        memset_s((v43 + *v30), __smax, 0, __smax);
      }

      *v30 += __smax;
      if ((__smax & 0x8000000000000000) == 0)
      {
LABEL_90:
        if (v13 && (extractThreadSendCommand(v13, 88, __smax, __src) & 0x80000000) != 0)
        {
          v14 = "sending blob";
          v15 = 1434;
          goto LABEL_8;
        }

        goto LABEL_97;
      }
    }

LABEL_114:
    v14 = "too many blob bytes received";
    v15 = 1433;
    goto LABEL_8;
  }

  return result;
}

void extractStreamAbort(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 1600), &v1, 1u);
  if (!v1)
  {
    extractStreamStateFail(a1);
  }
}

void entryRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && atomic_fetch_add((a1 + 2304), 0xFFFFFFFF) == 1)
  {
    v9 = *(a1 + 2300);
    if (v9 != -1 && v9 != 3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 223, 72, 0, "invalid entry final state %d: %s", a7, a8, *(a1 + 2300));
    }

    if (atomic_load((a1 + 2304)))
    {
      v12 = atomic_load((a1 + 2304));
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 224, 72, 0, "invalid entry final ref count %u: %s", a7, a8, v12);
    }

    if ((*(a1 + 2296) & 0x80000000) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 226, 72, 0, "invalid entry final fd", a7, a8, v13);
      close(*(a1 + 2296));
    }

    AAByteStreamClose(*(a1 + 2288));
    free(*(a1 + 2216));
    memset_s((a1 + 2200), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2240));
    memset_s((a1 + 2224), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2264));
    memset_s((a1 + 2248), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t extractThreadFailEntry(uint64_t *a1)
{
  v1 = a1[21];
  if (!v1)
  {
    return 0;
  }

  a1[21] = 0;
  v3 = *a1;
  if (*(v1 + 2300) != -1)
  {
    *(v1 + 2300) = -1;
    v4 = *(v3 + 1040);
    if (v4)
    {
      v4(*(v3 + 1032), 22, v1, v1 + 2272);
      v3 = *a1;
    }
  }

  atomic_fetch_add_explicit((v3 + 1604), 1u, memory_order_relaxed);
  AAByteStreamClose(*(v1 + 2288));
  *(v1 + 2288) = 0;
  if ((retireThreadEnqueue(*a1 + 1200, v1) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadFailEntry", 736, 72, 0, "sending entry to retire thread", v5, v6, v8);
  return 0xFFFFFFFFLL;
}