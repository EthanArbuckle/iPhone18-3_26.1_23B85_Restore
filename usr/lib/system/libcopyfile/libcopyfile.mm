xattr_flags_t xattr_flags_from_name(const char *a1)
{
  v2 = strrchr(a1, 35);
  if (v2)
  {
    result = (v2 + 1);
  }

  else
  {
    result = nameInDefaultList(a1);
    if (!result)
    {
      return result;
    }
  }

  v4 = *result;
  if (!*result)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = 67;
    v7 = &dword_299C6D734;
    do
    {
      if (v4 == v6)
      {
        v5 |= *v7;
      }

      else if (v4 == *(v7 - 3))
      {
        v5 &= ~*v7;
      }

      v6 = *(v7 + 4);
      v7 += 2;
    }

    while (v6);
    v8 = *++result;
    v4 = v8;
  }

  while (v8);
  return v5;
}

uint64_t nameInDefaultList(char *__s2)
{
  if (nameInDefaultList_onceToken != -1)
  {
    nameInDefaultList_cold_1();
  }

  v2 = *defaultPropertyTable;
  if (!*defaultPropertyTable)
  {
    return 0;
  }

  for (i = (defaultPropertyTable + 24); ; i += 3)
  {
    if (*(i - 1))
    {
      v4 = strlen(v2);
      if (!strncmp(v2, __s2, v4))
      {
        break;
      }
    }

    if (!strcmp(v2, __s2))
    {
      break;
    }

    v5 = *i;
    v2 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return *(i - 2);
}

char *__cdecl xattr_name_without_flags(const char *a1)
{
  v2 = strrchr(a1, 35);
  if (!v2)
  {
    v5 = strdup(a1);
    if (v5)
    {
      return v5;
    }

LABEL_5:
    v5 = 0;
    *__error() = 12;
    return v5;
  }

  v3 = v2 - a1;
  v4 = malloc_type_calloc(v2 - a1 + 1, 1uLL, 0x8E52961FuLL);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  strlcpy(v4, a1, v3 + 1);
  return v5;
}

int copyfile(const char *from, const char *to, copyfile_state_t state, copyfile_flags_t flags)
{
  v121 = *MEMORY[0x29EDCA608];
  v114 = state;
  if (!(from | to))
  {
    *__error() = 22;
LABEL_41:
    v23 = -1;
    goto LABEL_42;
  }

  v4 = flags;
  if ((copyfile_preamble(&v114, flags) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v8 = v114;
  if (from)
  {
    v9 = *v114;
    if (*v114)
    {
      if (!strncmp(from, *v114, 0x400uLL))
      {
        goto LABEL_14;
      }

      if (*(v8 + 69) >= 2u)
      {
        v10 = *__error();
        syslog(7, "%s:%d:%s() replacing string %s (%s) -> (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1313, "copyfile", "src", from, *v8);
        *__error() = v10;
      }

      v11 = *(v8 + 4);
      if ((v11 & 0x80000000) == 0)
      {
        if (*(v8 + 69) >= 4u)
        {
          v12 = *__error();
          syslog(7, "%s:%d:%s() closing %s fd: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1313, "copyfile", "src", *(v8 + 4));
          *__error() = v12;
          v11 = *(v8 + 4);
        }

        close(v11);
        *(v8 + 4) = -2;
      }

      v9 = *v8;
      if (*v8)
      {
LABEL_14:
        free(v9);
        *v8 = 0;
      }
    }

    v13 = strdup(from);
    *v8 = v13;
    if (!v13)
    {
      goto LABEL_41;
    }
  }

  if (to)
  {
    v14 = v8[1];
    if (v14)
    {
      if (!strncmp(to, v8[1], 0x400uLL))
      {
        goto LABEL_26;
      }

      if (*(v8 + 69) >= 2u)
      {
        v15 = *__error();
        syslog(7, "%s:%d:%s() replacing string %s (%s) -> (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1314, "copyfile", "dst", to, v8[1]);
        *__error() = v15;
      }

      v16 = *(v8 + 6);
      if ((v16 & 0x80000000) == 0)
      {
        if (*(v8 + 69) >= 4u)
        {
          v17 = *__error();
          syslog(7, "%s:%d:%s() closing %s fd: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1314, "copyfile", "dst", *(v8 + 6));
          *__error() = v17;
          v16 = *(v8 + 6);
        }

        close(v16);
        *(v8 + 6) = -2;
      }

      v14 = v8[1];
      if (v14)
      {
LABEL_26:
        free(v14);
        v8[1] = 0;
      }
    }

    v18 = strdup(to);
    v8[1] = v18;
    if (!v18)
    {
      goto LABEL_41;
    }
  }

  if ((*(v8 + 194) & 1) == 0 && stat(to, &v116) != -1 && stat(from, &v119) != -1 && statfs(from, &v120) != -1)
  {
    __strlcpy_chk();
    v117[2] = 0;
    v117[0] = 5;
    v117[1] = 0x20000;
    if (getattrlist(&v118, v117, v115, 0x24uLL, 0) != -1 && v119.st_dev == v116.st_dev)
    {
      if ((v115[4] & 1) == 0 || (v115[20] & 1) == 0)
      {
        v19 = realpath_DARWIN_EXTSN(from, 0);
        if (!v19)
        {
          goto LABEL_46;
        }

        v20 = v19;
        v21 = realpath_DARWIN_EXTSN(to, 0);
        if (!v21)
        {
          goto LABEL_40;
        }

        v22 = v21;
        if (strncasecmp(from, to, 0x400uLL))
        {
          free(v20);
          v20 = v22;
LABEL_40:
          free(v20);
          goto LABEL_46;
        }

LABEL_44:
        if ((*(v8 + 194) & 2) == 0)
        {
LABEL_125:
          v23 = 0;
          goto LABEL_74;
        }

        v26 = 0;
        v27 = 17;
        goto LABEL_102;
      }

      if (v119.st_ino == v116.st_ino)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_46:
  v28 = *(v8 + 48);
  if ((v28 & 0x8000) == 0)
  {
    if ((v28 & 0x3000000) == 0)
    {
      goto LABEL_59;
    }

    if (!*(v8 + 70))
    {
      if (v28)
      {
        v29 = 5;
      }

      else
      {
        v29 = 1;
      }

      if (lstat(*v8, &v120) || (v120.f_iosize & 0xD000 | 0x2000) != 0xA000)
      {
        *__error() = 22;
      }

      else if (((*(v8 + 194) & 0x20) == 0 || (remove(v8[1], v30) & 0x80000000) == 0 || *__error() == 2) && !clonefileat(-2, *v8, -2, v8[1], v29))
      {
        *(v8 + 49) |= 0x800u;
        if ((*(v8 + 194) & 0x10) != 0)
        {
          remove(*v8, v53);
        }

        goto LABEL_125;
      }

      v28 = *(v8 + 48);
    }

    if ((v28 & 0x2000000) == 0)
    {
      v28 = v28 & 0xFCF9FFF1 | 0x6000E;
      *(v8 + 48) = v28;
      v31 = *(v8 + 49);
      if ((v31 & 0x4000) == 0)
      {
        *(v8 + 49) = v31 | 0x8000;
      }

      v4 = v28;
LABEL_59:
      if ((v4 & 0x10000) != 0)
      {
        *&v120.f_bsize = 0;
        if (*v8)
        {
          if ((v28 & 4) != 0)
          {
            v23 = 4 * (listxattr(*v8, 0, 0, (v28 >> 18) & 1) > 0);
            v28 = *(v8 + 48);
          }

          else
          {
            v23 = 0;
          }

          if (v28)
          {
            v50 = MEMORY[0x29EDCA648];
            if ((v28 & 0x40000) == 0)
            {
              v50 = MEMORY[0x29EDCA668];
            }

            v50(*v8, v8 + 4, v8[23]);
            if (!filesec_get_property(v8[23], FILESEC_ACL, &v120))
            {
              ++v23;
            }
          }

          if (*(v8 + 69) >= 2u)
          {
            v51 = *__error();
            syslog(7, "%s:%d:%s() check result: %d (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2426, "copyfile_check", v23, *v8);
            *__error() = v51;
          }

          if (*&v120.f_bsize)
          {
            acl_free(*&v120.f_bsize);
          }

          if (v8[28])
          {
            if ((v8[24] & 4) != 0)
            {
              v52 = 4;
            }

            else
            {
              v52 = 1;
            }

            v23 |= v52;
          }
        }

        else
        {
          *(v8 + 68) = 22;
          v23 = -1;
        }

        goto LABEL_73;
      }

      v33 = (v8 + 29);
      v32 = v8[29];
      if (v32)
      {
        filesec_free(v32);
        *v33 = 0;
      }

      v34 = filesec_init();
      *v33 = v34;
      if (v34)
      {
        if ((*(v8 + 194) & 8) != 0 && !lstat(v8[1], &v120) && (v120.f_iosize & 0xF000) == 0xA000)
        {
          v36 = v8[30];
          if (v36)
          {
            free(v36);
          }

          goto LABEL_210;
        }

        if (statx_np(v8[1], &v120, v8[29]))
        {
          v49 = *__error() == 2;
          v26 = v49;
LABEL_211:
          if ((copyfile_open(v8, v35) & 0x80000000) == 0)
          {
            fcntl(*(v8 + 4), 48, 1);
            fcntl(*(v8 + 6), 48, 1);
            fcntl(*(v8 + 6), 76, 1);
            v93 = copyfile_internal(v8, v4);
            if (v93 != -1)
            {
              v23 = v93;
              if (((v49 | ((v4 & 2) >> 1)) & 1) == 0)
              {
                fchown(*(v8 + 6), v120.f_bfree, HIDWORD(v120.f_bfree));
                fchmod(*(v8 + 6), v120.f_iosize);
              }

              reset_security(v8);
              if ((v4 & 0x100000) != 0 && *v8)
              {
                remove(*v8, v94);
              }

              goto LABEL_73;
            }
          }

          goto LABEL_218;
        }

        fixed = copyfile_fix_perms(v8 + 29);
        v8[30] = fixed;
        if (fixed)
        {
          if ((chmodx_np(v8[1], fixed) & 0x80000000) == 0)
          {
            v49 = 0;
            v26 = 0;
            *(v8 + 49) |= 0x1000u;
            goto LABEL_211;
          }

          if (*__error() != 45)
          {
            v92 = *__error();
            syslog(4, "setting security information: %m");
            *__error() = v92;
            filesec_free(v8[30]);
LABEL_210:
            v49 = 0;
            v26 = 0;
            v8[30] = 0;
            goto LABEL_211;
          }
        }

        v49 = 0;
        v26 = 0;
        goto LABEL_211;
      }

      goto LABEL_97;
    }

    if (*(v8 + 68))
    {
LABEL_97:
      v26 = 0;
      goto LABEL_218;
    }

    v26 = 0;
    v27 = 45;
LABEL_102:
    *(v8 + 68) = v27;
LABEL_218:
    if (!v26 && (*(v8 + 49) & 0x1000) != 0)
    {
      v95 = *__error();
      chown(v8[1], v120.f_bfree, HIDWORD(v120.f_bfree));
      chmod(v8[1], v120.f_iosize);
      *__error() = v95;
    }

    v96 = *(v8 + 68);
    if (v96)
    {
      *__error() = v96;
      *(v8 + 68) = 0;
    }

    v23 = -1;
    goto LABEL_224;
  }

  v119.st_ino = 0;
  *&v119.st_dev = 0;
  if ((v28 & 0x2F10000) != 0 || (v39 = *(v8 + 8), v40 = *v8, (*&v119.st_dev = v40) == 0) || (v41 = v8[1]) == 0)
  {
    *__error() = 22;
    goto LABEL_70;
  }

  if ((v28 & 0x40000) != 0)
  {
    v42 = MEMORY[0x29EDCA6A8];
    v43 = MEMORY[0x29EDCA6A8](v40, &v120);
  }

  else
  {
    v42 = MEMORY[0x29EDCA6B8];
    v43 = MEMORY[0x29EDCA6B8](v40, &v120);
  }

  if (v43 == -1)
  {
    goto LABEL_70;
  }

  v104 = 0;
  v44 = v120.f_iosize & 0xF000;
  if (v42 == MEMORY[0x29EDCA6B8] && v44 == 0x4000)
  {
    if (lstat(v40, &v118) == -1)
    {
      goto LABEL_70;
    }

    v104 = (v118.st_mode & 0xF000) == 40960;
  }

  v45 = MEMORY[0x29EDCA6A8];
  if ((v28 & 0x80000) == 0)
  {
    v45 = MEMORY[0x29EDCA6B8];
  }

  if (v45(v41, &v120) == -1)
  {
    if (*__error() == 2 && basename(v40))
    {
      goto LABEL_131;
    }

LABEL_70:
    v23 = -1;
    goto LABEL_71;
  }

  f_iosize = v120.f_iosize;
  if (!basename(v40))
  {
    goto LABEL_70;
  }

  if ((f_iosize & 0xF000) == 0x4000)
  {
    v47 = strrchr(v40, 47);
    if (v47)
    {
      v47 = v47 - v40 + 1;
    }

    v48 = "/";
    goto LABEL_134;
  }

LABEL_131:
  v47 = strlen(v40);
  v109 = &unk_299C6D8B9;
  if (v44 != 0x4000 || v47 < 1)
  {
    goto LABEL_135;
  }

  v47 -= v40->__pn_.__r_.__value_.__s.__data_[v47 - 1] == 47;
  v48 = &unk_299C6D8B9;
LABEL_134:
  v109 = v48;
LABEL_135:
  v107 = v41;
  v108 = v47;
  __s1 = v40;
  v55 = 0;
  v56 = 0;
  if ((*(v8 + 97) & 0x104) != 0)
  {
    v57 = 20;
  }

  else
  {
    v57 = 21;
  }

  v110 = (*(v8 + 49) >> 7) & 0x40;
  v111 = v57;
  v112 = v8[26];
  v102 = v28 & 0xC0000;
  v58 = 1;
LABEL_139:
  v59 = v58;
  if ((v58 & 1) == 0 && (v55 & 1) == 0)
  {
LABEL_204:
    v23 = 0;
    goto LABEL_232;
  }

  if (v56)
  {
    fts_close(v56);
  }

  v56 = fts_open(&v119, v111 | v110, 0);
  while (2)
  {
    v60 = v55;
    do
    {
      while (1)
      {
        v61 = fts_read(v56);
        if (!v61)
        {
          v58 = 0;
          v55 = v60;
          if ((v59 & 1) == 0)
          {
            goto LABEL_204;
          }

          goto LABEL_139;
        }

        v62 = v61;
        if ((v61->fts_info & 0xFFFE) != 0xC)
        {
          break;
        }

        v60 = 1;
        if ((v59 & 1) == 0)
        {
          goto LABEL_150;
        }
      }
    }

    while ((v59 & 1) == 0);
    v55 = v60;
LABEL_150:
    *&v118.st_dev = 0;
    v63 = copyfile_state_alloc();
    if (!v63)
    {
LABEL_208:
      *__error() = 12;
      goto LABEL_231;
    }

    v64 = v63;
    *(v63 + 13) = *(v8 + 13);
    *(v63 + 70) = *(v8 + 70);
    if (*(v8 + 198))
    {
      *(v63 + 49) |= 0x10000u;
    }

    fts_dev = v62->fts_dev;
    if (v39 == fts_dev)
    {
      *(v63 + 49) |= *(v8 + 49) & 0x78;
      fts_dev = v39;
    }

    v113 = fts_dev;
    asprintf(&v118, "%s%s%s", v41, v109, &v62->fts_path[v108]);
    v66 = *&v118.st_dev;
    if (!*&v118.st_dev)
    {
      copyfile_state_free(v64);
      goto LABEL_208;
    }

    *(v64 + 32) = v62;
    v67 = *(v64 + 49);
    *(v64 + 49) = v67 | 0x20000;
    fts_info = v62->fts_info;
    if (fts_info <= 0xD)
    {
      if (((1 << fts_info) & 0x3108) != 0)
      {
        v69 = 0;
        v70 = 1;
        goto LABEL_159;
      }

      if (fts_info == 5)
      {
        goto LABEL_198;
      }

      if (fts_info == 6)
      {
        fts_path = v62->fts_path;
        if (v104)
        {
          v106 = v62->fts_path;
          v80 = strcmp(__s1, v106);
          fts_path = v106;
          if (!v80)
          {
            *(v64 + 49) = v67 | 0x60000;
          }
        }

        if (!v112)
        {
          if (copyfile(fts_path, v66, v64, v102 | 2) < 0)
          {
            goto LABEL_230;
          }

          goto LABEL_198;
        }

        v81 = (v112)(3, 1, v64, fts_path, v66, v8[27]);
        if (v81 == 1)
        {
          goto LABEL_198;
        }

        if (v81 == 2)
        {
          goto LABEL_229;
        }

        v82 = copyfile(v62->fts_path, *&v118.st_dev, v64, v102 | 2);
        v75 = v62->fts_path;
        v76 = *&v118.st_dev;
        v77 = v8[27];
        if ((v82 & 0x80000000) == 0)
        {
          v78 = 3;
LABEL_169:
          if ((v112)(v78, 2, v64, v75, v76, v77) == 2)
          {
LABEL_229:
            *__error() = 0;
            goto LABEL_230;
          }

LABEL_198:
          v90 = *(v8 + 49) & 0xFFFFFF87;
          *(v8 + 49) = v90;
          *(v8 + 49) = *(v64 + 49) & 0x78 | v90;
          copyfile_state_free(v64);
          free(*&v118.st_dev);
LABEL_199:
          v39 = v113;
          v41 = v107;
          continue;
        }

        v91 = (v112)(3, 3, v64, v75, *&v118.st_dev, v77);
        if (v91)
        {
          if (v91 != 2)
          {
            goto LABEL_198;
          }

LABEL_230:
          v101 = *(v8 + 49) & 0xFFFFFF87;
          *(v8 + 49) = v101;
          *(v8 + 49) = *(v64 + 49) & 0x78 | v101;
          copyfile_state_free(v64);
          free(*&v118.st_dev);
          goto LABEL_231;
        }

LABEL_194:
        *__error() = 0;
        goto LABEL_198;
      }
    }

    break;
  }

  if (fts_info == 1)
  {
    *(v64 + 49) = v67 | 0x20001;
    if (v104 && !strcmp(__s1, v62->fts_path))
    {
      *(v64 + 49) = v67 | 0x60001;
    }

    v69 = 1;
    v70 = 2;
LABEL_159:
    v71 = v62->fts_path;
    v105 = v70;
    if (!v112)
    {
      goto LABEL_163;
    }

    v72 = v8[27];
    v73 = v112();
    if (v73 == 1)
    {
      if (!v69 || fts_set(v56, v62, 4) != -1)
      {
        goto LABEL_198;
      }

      v83 = v62->fts_path;
      v84 = *&v118.st_dev;
      v85 = v8[27];
      v86 = 0;
    }

    else
    {
      if (v73 == 2)
      {
        goto LABEL_229;
      }

      v71 = v62->fts_path;
      v66 = *&v118.st_dev;
LABEL_163:
      if (v69)
      {
        v74 = 1225654285;
      }

      else
      {
        v74 = 1225654287;
      }

      if ((copyfile(v71, v66, v64, v74 & v28) & 0x80000000) == 0)
      {
        if (v112)
        {
          v75 = v62->fts_path;
          v76 = *&v118.st_dev;
          v77 = v8[27];
          v78 = v105;
          goto LABEL_169;
        }

        goto LABEL_198;
      }

      if (!v112)
      {
        goto LABEL_230;
      }

      v83 = v62->fts_path;
      v84 = *&v118.st_dev;
      v85 = v8[27];
      v86 = v105;
    }

    v87 = (v112)(v86, 3, v64, v83, v84, v85);
  }

  else
  {
    fts_errno = v62->fts_errno;
    *__error() = fts_errno;
    if (!v112)
    {
      goto LABEL_230;
    }

    v87 = (v112)(0, 3, v64, v62->fts_path, *&v118.st_dev, v8[27]);
    if (v87 < 2)
    {
      goto LABEL_194;
    }
  }

  v89 = *(v8 + 49) & 0xFFFFFF87;
  *(v8 + 49) = v89;
  *(v8 + 49) = *(v64 + 49) & 0x78 | v89;
  copyfile_state_free(v64);
  free(*&v118.st_dev);
  if (v87 != 2)
  {
    goto LABEL_199;
  }

LABEL_231:
  v23 = -1;
LABEL_232:
  if (v56)
  {
    fts_close(v56);
  }

LABEL_71:
  if (*(v8 + 69))
  {
    v37 = *__error();
    v38 = __error();
    syslog(7, "%s:%d:%s() returning: %d errno %d\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1016, "copytree", v23, *v38);
    *__error() = v37;
  }

LABEL_73:
  if ((v23 & 0x80000000) == 0)
  {
LABEL_74:
    *__error() = 0;
  }

LABEL_224:
  v97 = v114;
  if (v114 && *(v114 + 69) >= 5u)
  {
    v98 = *__error();
    v99 = __error();
    syslog(7, "%s:%d:%s() returning %d errno %d\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1459, "copyfile", v23, *v99);
    *__error() = v98;
  }

  if (!state)
  {
    v100 = *__error();
    copyfile_state_free(v97);
    *__error() = v100;
  }

LABEL_42:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t copyfile_preamble(copyfile_state_t *a1, int a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v3 = copyfile_state_alloc();
    *a1 = v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a2 < 0)
  {
    v5 = getenv("COPYFILE_DEBUG");
    if (v5)
    {
      v6 = v5;
      *__error() = 0;
      v7 = strtol(v6, 0, 0);
      *(v3 + 69) = v7;
      if (!v7)
      {
        if (*__error())
        {
          *(v3 + 69) = 1;
        }
      }
    }

    if (*(v3 + 69) >= 2u)
    {
      v8 = *__error();
      syslog(7, "%s:%d:%s() debug value set to: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1520, "copyfile_preamble", *(v3 + 69));
      *__error() = v8;
    }
  }

  if (*(v3 + 69) >= 2u)
  {
    v9 = *__error();
    syslog(7, "%s:%d:%s() setting flags: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1531, "copyfile_preamble", *(v3 + 48));
    *__error() = v9;
  }

  result = 0;
  *(v3 + 48) = a2;
  return result;
}

copyfile_state_t copyfile_state_alloc(void)
{
  v0 = malloc_type_calloc(1uLL, 0x128uLL, 0x10B0040A2ED8E21uLL);
  v1 = v0;
  if (v0)
  {
    *&v2 = 0x100000001;
    *(&v2 + 1) = 0x100000001;
    *(v0 + 1) = v2;
    v3 = v0[23];
    if (v3)
    {
      filesec_free(v3);
      *(v1 + 23) = 0;
    }

    *(v1 + 23) = filesec_init();
  }

  else
  {
    *__error() = 12;
  }

  return v1;
}

uint64_t copyfile_data(void *a1, int a2)
{
  v111 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 18) & 0xF000) != 0x8000)
  {
    v8 = 0;
    goto LABEL_172;
  }

  v4 = a1[26];
  if (a2)
  {
    v5 = a1 + 5;
    v6 = a1 + 7;
    v7 = a1[22];
    goto LABEL_17;
  }

  v9 = *(a1 + 49);
  if ((v9 & 4) != 0)
  {
    if ((v9 & 0x80) != 0)
    {
      v10 = 0;
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = lseek(*(a1 + 4), 0, 1) != 0;
      if ((*(a1 + 49) & 0x100) != 0)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_11;
      }
    }

    v11 = lseek(*(a1 + 6), 0, 1) != 0;
LABEL_11:
    if (!v10 && !v11 && !copyfile_set_bsdflags(a1, 32, -1) && !fstat(*(a1 + 6), &v110) && (v110.f_mntonname[28] & 0x20) != 0)
    {
      goto LABEL_160;
    }

    fremovexattr(*(a1 + 6), "com.apple.decmpfs", 32);
    fremovexattr(*(a1 + 6), "com.apple.ResourceFork", 32);
  }

  v5 = (a1 + 2);
  v6 = (a1 + 3);
  v7 = a1 + 4;
LABEL_17:
  v12 = *v6;
  if (fstatfs(*v5, &v110) == -1)
  {
    f_bsize = 0;
    f_iosize = *(v7 + 28);
  }

  else
  {
    f_bsize = v110.f_bsize;
    f_iosize = v110.f_iosize;
  }

  v15 = f_iosize;
  if (fstatfs(v12, &v110) == -1)
  {
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v16 = v110.f_bsize;
    if (v110.f_iosize >= v15)
    {
      LODWORD(v17) = v15;
    }

    else
    {
      LODWORD(v17) = v110.f_iosize;
    }

    v17 = v17;
    if (!v110.f_iosize)
    {
      v17 = v15;
    }
  }

  v18 = *(a1 + 71);
  if (f_bsize > v18)
  {
    v18 = v15;
  }

  v19 = *(a1 + 72);
  v20 = v18 < v19 || v16 > v19;
  if (v20)
  {
    v21 = v17;
  }

  else
  {
    v21 = *(a1 + 72);
  }

  v22 = v7[12];
  if (v22 < v18 && f_bsize != 0)
  {
    if (*(a1 + 69) >= 3u)
    {
      v24 = *__error();
      syslog(7, "%s:%d:%s() rounding up block size from fsize: %lld to multiple of %zu\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2879, "copyfile_get_bsizes", a1[16], f_bsize);
      *__error() = v24;
      v22 = v7[12];
    }

    if (v22 % f_bsize)
    {
      v25 = f_bsize - v22 % f_bsize;
    }

    else
    {
      v25 = 0;
    }

    v18 = v25 + v22;
    if (v21 >= v18)
    {
      v21 = v18;
    }
  }

  if (v21 >= 0x40000000)
  {
    v26 = 0x40000000;
  }

  else
  {
    v26 = v21;
  }

  if (v18 <= 0x40000000)
  {
    v27 = v21;
  }

  else
  {
    v27 = v26;
  }

  if (v18 >= 0x40000000)
  {
    v28 = 0x40000000;
  }

  else
  {
    v28 = v18;
  }

  *__error() = 0;
  if (*(a1 + 69) >= 3u)
  {
    v29 = *__error();
    syslog(7, "%s:%d:%s() input block size: %zu output block size: %zu\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2953, "copyfile_data", v28, v27);
    *__error() = v29;
  }

  if ((a2 & 1) == 0)
  {
    a1[33] = 0;
    if ((*(a1 + 195) & 8) == 0)
    {
LABEL_73:
      v30 = 16;
      v31 = 24;
      goto LABEL_74;
    }

    v32 = fpathconf(*(a1 + 4), 27);
    v33 = fpathconf(*(a1 + 6), 27);
    v34 = 3;
    if (v32 < v33)
    {
      v34 = 2;
    }

    v35 = fpathconf(a1[v34], 27);
    if (!f_bsize || !v16 || v35 < f_bsize || v35 < v16 || ((v106 = *(a1 + 4), __fd = *(a1 + 6), v36 = a1[16], f_bsize >= v16) ? (v37 = v16) : (v37 = f_bsize), v38 = a1[26], *__error() = 0, (*(a1 + 195) & 8) == 0))
    {
LABEL_71:
      if ((a1[24] & 8) == 0)
      {
        v39 = 0;
        *__error() = 45;
        goto LABEL_123;
      }

      goto LABEL_73;
    }

    sizea = v37;
    if ((v36 & 0x8000000000000000) != 0)
    {
      v71 = 0;
      v84 = 22;
      goto LABEL_166;
    }

    if (v36)
    {
      v66 = lseek(v106, 0, 1);
      v67 = lseek(__fd, 0, 1);
      if ((v66 & 0x8000000000000000) != 0 || v36 <= v66 || (v67 & 0x8000000000000000) != 0)
      {
        if (!*__error())
        {
          *__error() = 22;
        }

        v84 = *__error();
        syslog(4, "Invalid file descriptor offset, cannot perform a sparse copy: %m");
        goto LABEL_165;
      }

      if (v66 % sizea || v67 % sizea)
      {
        goto LABEL_71;
      }

      *v97 = v36 - v66;
      v99 = v67;
      v68 = lseek(v106, v66, 3);
      if (v68 == -1 || v68 == v36)
      {
        if (lseek(v106, v66, 0) != -1)
        {
          goto LABEL_71;
        }

        v71 = 0;
      }

      else
      {
        v69 = v68;
        if (ftruncate(__fd, v99) == -1)
        {
          v84 = *__error();
          syslog(4, "Could not zero destination file before copy: %m");
          goto LABEL_165;
        }

        if (ftruncate(__fd, *v97 + v99) == -1)
        {
          v84 = *__error();
          syslog(4, "Could not set destination file size before copy: %m");
          goto LABEL_165;
        }

        v70 = lseek(v106, v66, 4);
        if (v70 != -1)
        {
          v95 = v70;
          if (lseek(__fd, v70 + v99 - v66, 0) != -1)
          {
            v71 = malloc_type_malloc(sizea, 0x460B32B8uLL);
            if (v71)
            {
              v94 = read(v106, v71, sizea);
              if (v94 >= 1)
              {
                while (2)
                {
                  v93 = 0;
                  __nbytea = v94;
                  __buf = v71;
                  do
                  {
                    while (1)
                    {
                      v72 = write(__fd, __buf, __nbytea);
                      if (v72 != -1)
                      {
                        break;
                      }

                      v73 = *__error();
                      syslog(4, "writing to output file failed: %m");
                      *__error() = v73;
                      if (!v38)
                      {
                        goto LABEL_167;
                      }

                      v74 = v38(4, 3, a1, *a1, a1[1], a1[27]);
                      if (v74)
                      {
                        if (v74 != 1)
                        {
                          goto LABEL_167;
                        }

                        v61 = 0;
                        *__error() = 0;
                        goto LABEL_181;
                      }

                      *__error() = 0;
                    }

                    if (v72)
                    {
                      v93 = 0;
                      __nbytea -= v72;
                      __buf += v72;
                    }

                    else
                    {
                      v75 = v93 + 1;
                      v20 = v93++ < 5;
                      if (!v20)
                      {
                        v83 = *__error();
                        syslog(4, "writing to output %d times resulted in 0 bytes written: %m", v75);
                        *__error() = v83;
                        v84 = 35;
                        goto LABEL_166;
                      }
                    }

                    a1[33] += v72;
                    if (v38 && v38(4, 4, a1, *a1, a1[1], a1[27]) == 2)
                    {
                      v84 = 89;
                      goto LABEL_166;
                    }
                  }

                  while (__nbytea);
                  v95 += v94;
                  v76 = lseek(v106, v95, 3);
                  if (v76 == -1)
                  {
                    if (*__error() == 6)
                    {
                      break;
                    }

                    v84 = *__error();
                    syslog(4, "unable to find next hole in file during copy: %m", v90, v92);
                  }

                  else
                  {
                    if (v76 != v95)
                    {
                      if (lseek(v106, v95, 0) == -1)
                      {
                        goto LABEL_167;
                      }

LABEL_158:
                      v94 = read(v106, v71, sizea);
                      if (v94 > 0)
                      {
                        continue;
                      }

                      break;
                    }

                    v95 = lseek(v106, v95, 4);
                    if (v95 != -1)
                    {
                      if (lseek(__fd, v95 + v99 - v66, 0) == -1)
                      {
                        v84 = *__error();
                        syslog(4, "unable to advance dst to next data section: %m", v90, v92);
                        goto LABEL_166;
                      }

                      goto LABEL_158;
                    }

                    if (*__error() == 6)
                    {
                      break;
                    }

                    v84 = *__error();
                    syslog(4, "unable to advance src to next data section: %m", v90, v92);
                  }

                  goto LABEL_166;
                }
              }

              if ((v94 & 0x8000000000000000) == 0)
              {
                if (!(f_bsize % v16))
                {
                  if (lseek(v106, v66, 0) == -1 || lseek(__fd, v99, 0) == -1)
                  {
                    v89 = *__error();
                    syslog(4, "unable to reset file descriptors to punch holes: %m", v90, v92);
                  }

                  else
                  {
                    while (1)
                    {
                      v85 = lseek(v106, v69 + sizea, 4);
                      if (v85 == -1)
                      {
                        break;
                      }

                      v86 = v85;
                      *&v110.f_bsize = 0;
                      v110.f_blocks = v69 - v66 + v99;
                      v110.f_bfree = v85 - v69;
                      if (fcntl(__fd, 99, &v110) == -1)
                      {
                        v89 = *__error();
                        syslog(4, "unable to punch hole in destination file, offset %lld length %lld: %m");
                        goto LABEL_204;
                      }

                      v87 = lseek(v106, v86, 3);
                      v69 = v87;
                      if (v87 == -1 || v87 == v36)
                      {
                        if (v87 == -1 && *__error() != 6)
                        {
                          goto LABEL_209;
                        }

                        goto LABEL_180;
                      }
                    }

                    if (*__error() != 6)
                    {
LABEL_209:
                      v89 = *__error();
                      syslog(4, "lseek during hole punching failed: %m", v90, v92);
                      goto LABEL_204;
                    }

                    *&v110.f_bsize = 0;
                    v110.f_blocks = v69 - v66 + v99;
                    v110.f_bfree = v36 - v69 - v36 % sizea;
                    if (fcntl(__fd, 99, &v110) != -1)
                    {
                      goto LABEL_180;
                    }

                    v89 = *__error();
                    syslog(4, "unable to punch trailing hole in destination file, offset %lld: %m");
                  }

LABEL_204:
                  *__error() = v89;
                }

                goto LABEL_180;
              }

              v84 = *__error();
              v88 = __error();
              *a1;
              v91 = *v88;
              syslog(4, "error %d reading from %s: %m");
            }

            else
            {
              v84 = *__error();
              syslog(4, "No memory for copy buffer: %m", v90, v92);
            }

LABEL_166:
            *__error() = v84;
            goto LABEL_167;
          }

          v84 = *__error();
          syslog(4, "failed to set dst to first data section: %m");
LABEL_165:
          v71 = 0;
          goto LABEL_166;
        }

        v71 = 0;
        if (*__error() == 6)
        {
LABEL_180:
          v61 = 0;
          a1[33] = *v97;
LABEL_181:
          v77 = 1;
          if (!v71)
          {
LABEL_169:
            v39 = 0;
            if ((v77 & 1) == 0)
            {
LABEL_111:
              if (v61 == -1)
              {
                goto LABEL_123;
              }
            }

LABEL_170:
            v8 = 0;
LABEL_171:
            free(v39);
            goto LABEL_172;
          }

LABEL_168:
          free(v71);
          goto LABEL_169;
        }
      }

LABEL_167:
      v77 = 0;
      *(a1 + 68) = *__error();
      v61 = -1;
      if (!v71)
      {
        goto LABEL_169;
      }

      goto LABEL_168;
    }

LABEL_160:
    v39 = 0;
    goto LABEL_170;
  }

  v30 = 20;
  v31 = 28;
LABEL_74:
  v40 = *(a1 + v30);
  v41 = *(a1 + v31);
  v42 = malloc_type_malloc(v28, 0xC7B43E05uLL);
  if (v42)
  {
    v43 = v42;
    if (a2)
    {
      v44 = (a1[22] + 96);
    }

    else
    {
      v44 = a1 + 16;
    }

    v45 = *v44;
    v46 = fstat(v41, &v110);
    v47 = *&v110.f_mntonname[16] << 9;
    if (v46)
    {
      v47 = 0;
    }

    v48 = __OFSUB__(v45, v47);
    v49 = v45 - v47;
    if (!((v49 < 0) ^ v48 | (v49 == 0)))
    {
      v108[0] = 0x300000000;
      v108[1] = 0;
      v109 = v49;
      if (*(a1 + 69) >= 3u)
      {
        v50 = *__error();
        syslog(7, "%s:%d:%s() preallocating %lld bytes on destination\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3020, "copyfile_data", v109);
        *__error() = v50;
      }

      fcntl(v41, 42, v108);
    }

    v51 = read(v40, v43, v28);
    v107 = v43;
    if (v51 >= 1)
    {
      v52 = v43;
      v98 = v28;
      __nbyte = v27;
      v53 = 0;
      size = 0;
      if (a2)
      {
        v54 = 5;
      }

      else
      {
        v54 = 4;
      }

      while (1)
      {
        *__fda = v53;
        if (v51 >= v27)
        {
          v55 = v27;
        }

        else
        {
          v55 = v51;
        }

        while (1)
        {
          v56 = write(v41, v52, v55);
          if (v56 != -1)
          {
            break;
          }

          v57 = *__error();
          syslog(4, "writing to output file got error: %m");
          *__error() = v57;
          if (!v4)
          {
            goto LABEL_122;
          }

          v58 = v4(v54, 3, a1, *a1, a1[1], a1[27]);
          if (v58 == 1)
          {
            v8 = 0;
            v39 = v107;
            goto LABEL_171;
          }

          v8 = v58;
          if (a2)
          {
            v39 = v107;
            if (!v58)
            {
              goto LABEL_171;
            }

            if (v58 == 2)
            {
              v62 = 89;
              goto LABEL_124;
            }

            goto LABEL_123;
          }

          if (v58)
          {
            goto LABEL_122;
          }

          *__error() = 0;
        }

        v59 = v56;
        if (v56)
        {
          v60 = 0;
          v51 -= v56;
          v52 += v56;
        }

        else
        {
          v60 = size + 1;
          if (size >= 5)
          {
            v80 = *__error();
            syslog(4, "writing to output %d times resulted in 0 bytes written: %m", size + 1);
            *__error() = v80;
            v81 = 35;
LABEL_174:
            *(a1 + 68) = v81;
            goto LABEL_122;
          }
        }

        size = v60;
        if ((a2 & 1) == 0)
        {
          a1[33] += v56;
          if (v4)
          {
            if (v4(4, 4, a1, *a1, a1[1], a1[27]) == 2)
            {
              v82 = __error();
              v81 = 89;
              *v82 = 89;
              goto LABEL_174;
            }
          }
        }

        v53 = v59 + *__fda;
        v27 = __nbyte;
        if (!v51)
        {
          v52 = v107;
          v51 = read(v40, v107, v98);
          size = 0;
          if (v51 < 1)
          {
            goto LABEL_109;
          }
        }
      }
    }

    v53 = 0;
LABEL_109:
    if (v51 < 0)
    {
      v63 = *__error();
      v64 = *a1;
      if (!*a1)
      {
        v64 = "(null src)";
      }

      v65 = "(rsrc)";
      if (a2)
      {
        v65 = &unk_299C6D8B9;
      }

      syslog(4, "reading from %s %s: %m", v64, v65);
      *__error() = v63;
LABEL_122:
      v39 = v107;
LABEL_123:
      v62 = *__error();
LABEL_124:
      *(a1 + 68) = v62;
      v8 = 0xFFFFFFFFLL;
      goto LABEL_171;
    }

    v61 = ftruncate(v41, v53) >> 31;
    v39 = v107;
    goto LABEL_111;
  }

  v8 = 0xFFFFFFFFLL;
LABEL_172:
  v78 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t copyfile_internal(void *a1, int a2)
{
  v186 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 6);
  if (v3 < 0 || (a1[2] & 0x80000000) != 0)
  {
    if (*(a1 + 69))
    {
      v13 = *__error();
      syslog(7, "%s:%d:%s() file descriptors not open (src: %d, dst: %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1548, "copyfile_internal", *(a1 + 4), *(a1 + 6));
      *__error() = v13;
    }

    *(a1 + 68) = 22;
    goto LABEL_26;
  }

  if ((a2 & 0x400000) != 0)
  {
    v5 = copyfile_pack(a1);
    if ((v5 & 0x80000000) != 0)
    {
      v16 = a1[1];
      if (v16)
      {
        unlink(v16);
      }
    }

    goto LABEL_27;
  }

  if ((a2 & 0x800000) != 0)
  {
    if (a1[16] >= 65554)
    {
      v17 = 65554;
    }

    else
    {
      v17 = a1[16];
    }

    v18 = malloc_type_calloc(1uLL, v17, 0x936D7ACCuLL);
    if (!v18)
    {
      if (*(a1 + 69))
      {
        v33 = *__error();
        syslog(7, "%s:%d:%s() copyfile_unpack: calloc(1, %zu) returned NULL\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4688, "copyfile_unpack", v17);
        *__error() = v33;
      }

      goto LABEL_26;
    }

    v19 = v18;
    v20 = pread(*(a1 + 4), v18, v17, 0);
    v21 = v20;
    if (v20 < 0)
    {
      if (*(a1 + 69))
      {
        v34 = *__error();
        syslog(7, "%s:%d:%s() pread returned: %zd\n");
LABEL_78:
        *__error() = v34;
      }
    }

    else
    {
      if (v20 < v17)
      {
        if (*(a1 + 69))
        {
          v22 = *__error();
          syslog(7, "%s:%d:%s() pread couldn't read entire header: %d of %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4706, "copyfile_unpack", v21, a1[16]);
          *__error() = v22;
        }

        goto LABEL_79;
      }

      if (v20 >= 0x52 && *v19 == 118883584 && *(v19 + 4) == 512 && *(v19 + 24) == 512 && *(v19 + 26) == 150994944)
      {
        swap_adhdr(v19);
        v35 = flistxattr(*(a1 + 6), 0, 0, 0);
        v36 = v35;
        if (v35 < 1)
        {
          if (v35 < 0 && *__error() != 45 && *__error() != 1)
          {
            v5 = 0;
            goto LABEL_80;
          }
        }

        else
        {
          v5 = malloc_type_malloc(v35, 0x100004077774924uLL);
          if (!v5)
          {
            *(a1 + 68) = 12;
            goto LABEL_80;
          }

          v37 = flistxattr(*(a1 + 6), v5, v36, 0);
          if (v37 >= 1)
          {
            v38 = v5 + v37;
            v39 = v5;
            do
            {
              fremovexattr(*(a1 + 6), v39, 0);
              v39 += strlen(v39) + 1;
            }

            while (v39 < v38);
          }

          free(v5);
        }

        if (*(v19 + 34) >= 0x21u)
        {
          if (v17 <= 0x77)
          {
            v34 = *__error();
            syslog(4, "bad attribute header:  %zu < %zu: %m");
            goto LABEL_78;
          }

          swap_attrhdr(v19);
          if (*(v19 + 84) != 1096045650)
          {
            if ((*(a1 + 195) & 0x40) == 0)
            {
              goto LABEL_79;
            }

            v34 = *__error();
            syslog(4, "bad attribute header: %m");
            goto LABEL_78;
          }

          v121 = *(v19 + 118);
          if (*(v19 + 118))
          {
            v122 = 0;
            sizea = 0;
            v123 = v19 + v17;
            v124 = (v19 + 120);
            while (1)
            {
              if (v124 >= v123 || v124 < v19 || &v124[1] + 4 > v123)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v144 = *__error();
                  syslog(4, "Incomplete or corrupt attribute entry: %m");
                  goto LABEL_403;
                }

LABEL_404:
                *(a1 + 68) = 22;
LABEL_353:
                v5 = 0xFFFFFFFFLL;
                v130 = v19;
                goto LABEL_433;
              }

              v125 = vrev32_s8(*v124);
              *v124 = v125;
              v124[1].i16[0] = bswap32(v124[1].u16[0]) >> 16;
              v126 = v124[1].u8[2];
              if (v126 <= 1)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v144 = *__error();
                  v158 = v124[1].u8[2];
                  syslog(4, "Corrupt attribute entry (only %d bytes): %m");
LABEL_403:
                  *__error() = v144;
                }

                goto LABEL_404;
              }

              __dsta = v122;
              if (v126 >= 0x81)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v159 = *__error();
                  v160 = v124[1].u8[2];
                  syslog(4, "Corrupt attribute entry (name length is %d bytes): %m");
                  goto LABEL_411;
                }

                goto LABEL_412;
              }

              if (&v124[1] + v126 + 3 > v123)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v159 = *__error();
                  syslog(4, "Incomplete or corrupt attribute entry: %m", v169);
                  goto LABEL_411;
                }

LABEL_412:
                v161 = 22;
                goto LABEL_416;
              }

              if (v124[1].i8[(v126 - 1) + 3])
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v159 = *__error();
                  syslog(4, "Corrupt attribute entry (name is not NUL-terminated): %m", v169);
LABEL_411:
                  *__error() = v159;
                }

                goto LABEL_412;
              }

              if (*(a1 + 69) < 3u)
              {
                v128 = v125.u32[1];
              }

              else
              {
                v127 = *__error();
                syslog(7, "%s:%d:%s() extracting %s (%d bytes) at offset %u\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4878, "copyfile_unpack", &v124[1] + 3, v124->i32[1], v124->i32[0]);
                *__error() = v127;
                v128 = v124->u32[1];
              }

              v129 = malloc_type_malloc(v128, 0xFB7792E5uLL);
              if (!v129)
              {
                if (*(a1 + 69))
                {
                  v162 = *__error();
                  syslog(7, "%s:%d:%s() no memory for %u bytes\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4882, "copyfile_unpack", v124->i32[1]);
                  *__error() = v162;
                }

                v161 = 12;
LABEL_416:
                *(a1 + 68) = v161;
                v5 = 0xFFFFFFFFLL;
                v130 = v19;
LABEL_421:
                v122 = __dsta;
LABEL_433:
                free(v130);
                if (v122)
                {
LABEL_434:
                  v44 = v122;
LABEL_81:
                  free(v44);
                }

                if ((v5 & 0x80000000) == 0)
                {
                  goto LABEL_27;
                }

LABEL_26:
                v5 = 0xFFFFFFFFLL;
                goto LABEL_27;
              }

              v130 = v129;
              v131 = pread(*(a1 + 4), v129, v124->u32[1], v124->u32[0]);
              v132 = v124->u32[1];
              if (v131 != v132)
              {
                if (*(a1 + 69))
                {
                  v163 = *__error();
                  syslog(7, "%s:%d:%s() failed to read %u bytes at offset %u\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4888, "copyfile_unpack", v124->i32[1], v124->i32[0]);
                  *__error() = v163;
                }

                *(a1 + 68) = 22;
                goto LABEL_420;
              }

              v133 = v131;
              if (!strcmp(&v124[1] + 3, "figgledidiggledy"))
              {
                goto LABEL_348;
              }

              if (strcmp(&v124[1] + 3, "com.apple.acl.text"))
              {
                v5 = copyfile_unpack_xattr(a1, v124, v130);
                if (v5 == -1)
                {
                  goto LABEL_420;
                }

                goto LABEL_349;
              }

              if (!v132)
              {
LABEL_348:
                v5 = 0;
              }

              else
              {
                __dsta = malloc_type_malloc(v133, 0x716E830CuLL);
                if (!__dsta)
                {
                  __dsta = 0;
LABEL_420:
                  free(v19);
                  v5 = 0xFFFFFFFFLL;
                  goto LABEL_421;
                }

                memcpy(__dsta, v130, v124->u32[1]);
                v5 = 0;
                sizea = v124->u32[1];
              }

LABEL_349:
              free(v130);
              v124 = (v124 + ((v124[1].u8[2] + 14) & 0x1FC));
              --v121;
              v122 = __dsta;
              if (!v121)
              {
                goto LABEL_352;
              }
            }
          }
        }

        sizea = 0;
        v122 = 0;
        v5 = 0;
LABEL_352:
        v134 = *(v19 + 30);
        if (v17 - 32 < v134)
        {
          goto LABEL_353;
        }

        v135 = v122;
        if (*(v19 + v134) | *(v19 + v134 + 8) | *(v19 + v134 + 16) | *(v19 + v134 + 24))
        {
          v136 = *(v19 + 30);
          if (*(a1 + 69) >= 3u)
          {
            v137 = *__error();
            syslog(7, "%s:%d:%s()  extracting %s (32 bytes)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4961, "copyfile_unpack", "com.apple.FinderInfo");
            *__error() = v137;
          }

          v138 = a1[26];
          if (v138)
          {
            a1[31] = "com.apple.FinderInfo";
            v139 = v138(5, 1, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v139 == 1)
            {
              goto LABEL_377;
            }

            if (v139 == 2)
            {
              goto LABEL_369;
            }
          }

          v140 = fsetxattr(*(a1 + 6), "com.apple.FinderInfo", (v19 + *(v19 + 30)), 0x20uLL, 0, 0);
          v141 = a1[26];
          if (v140)
          {
            v5 = v140;
            if (!v141)
            {
              goto LABEL_432;
            }

            a1[31] = "com.apple.FinderInfo";
            v142 = v141(5, 3, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v142 != 2)
            {
              goto LABEL_432;
            }

            goto LABEL_369;
          }

          if (v141)
          {
            a1[31] = "com.apple.FinderInfo";
            v143 = v141(5, 2, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v143 == 2)
            {
LABEL_369:
              *(a1 + 68) = 89;
LABEL_370:
              v5 = 0xFFFFFFFFLL;
              goto LABEL_432;
            }
          }

          v5 = 0;
          if ((*(v19 + v136 + 8) & 0x40) != 0)
          {
            *(a1 + 49) |= 2u;
          }
        }

LABEL_377:
        if (*(v19 + 38) != 2)
        {
          goto LABEL_428;
        }

        v145 = *(v19 + 46);
        if (!v145)
        {
          goto LABEL_428;
        }

        v146 = *(v19 + 42);
        v147 = malloc_type_malloc(*(v19 + 46), 0x8DA8306AuLL);
        if (!v147)
        {
          if (*(a1 + 69))
          {
            v153 = *__error();
            syslog(7, "%s:%d:%s() could not allocate %zu bytes for rsrcforkdata\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5029, "copyfile_unpack", v145);
            *__error() = v153;
          }

          v5 = 0xFFFFFFFFLL;
          goto LABEL_428;
        }

        v148 = v147;
        if (fstat(*(a1 + 6), &v185) < 0)
        {
          if (*(a1 + 69))
          {
            v152 = *__error();
            syslog(7, "%s:%d:%s() couldn't stat destination file\n");
            goto LABEL_424;
          }

LABEL_426:
          v5 = 0xFFFFFFFFLL;
          goto LABEL_427;
        }

        v149 = pread(*(a1 + 4), v148, v145, v146);
        v150 = v149;
        if (v149 < v145)
        {
          v151 = *(a1 + 69);
          if (v149 == -1)
          {
            if (v151)
            {
              v152 = *__error();
              syslog(7, "%s:%d:%s() couldn't read resource fork\n");
              goto LABEL_424;
            }
          }

          else if (v151)
          {
            v152 = *__error();
            syslog(7, "%s:%d:%s() couldn't read resource fork (only read %d bytes of %d)\n");
LABEL_424:
            v5 = 0xFFFFFFFFLL;
LABEL_425:
            *__error() = v152;
            goto LABEL_427;
          }

          goto LABEL_426;
        }

        v154 = a1[26];
        if (!v154)
        {
          goto LABEL_454;
        }

        a1[31] = "com.apple.ResourceFork";
        v155 = v154(5, 1, a1, *a1, a1[1], a1[27]);
        a1[31] = 0;
        if (v155 == 1)
        {
LABEL_427:
          free(v148);
LABEL_428:
          if (v135)
          {
            v122 = v135;
            v5 = copyfile_unpack_acl(a1, sizea, v135);
            if (v5 == -1)
            {
              free(v19);
              v5 = 0xFFFFFFFFLL;
              goto LABEL_434;
            }
          }

          if ((a1[24] & 2) != 0)
          {
            copyfile_stat(a1);
            v5 = 0;
          }

LABEL_432:
          v130 = v19;
          v122 = v135;
          goto LABEL_433;
        }

        if (v155 != 2)
        {
LABEL_454:
          if (fsetxattr(*(a1 + 6), "com.apple.ResourceFork", v148, v150, 0, 0))
          {
            if (v150 == 286 && (v185.f_iosize & 0xF000) == 0x4000 && !memcmp(v148, &empty_rsrcfork_header, 0x11EuLL))
            {
              if (*(a1 + 69) >= 2u)
              {
                v168 = *__error();
                syslog(7, "%s:%d:%s() not setting empty resource fork on directory\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5086, "copyfile_unpack");
                v152 = 0;
                v5 = 0;
                *__error() = v168;
                goto LABEL_425;
              }
            }

            else
            {
              v156 = a1[26];
              if (!v156 || (a1[31] = "com.apple.ResourceFork", v157 = v156(5, 3, a1, *a1, a1[1], a1[27]), a1[31] = 0, v157))
              {
                if (*(a1 + 69))
                {
                  v152 = *__error();
                  syslog(7, "%s:%d:%s() error %d setting resource fork attribute\n");
                  goto LABEL_424;
                }

                goto LABEL_426;
              }
            }

            v152 = 0;
LABEL_451:
            v5 = 0;
            goto LABEL_425;
          }

          v164 = a1[26];
          if (!v164 || (a1[31] = "com.apple.ResourceFork", v165 = v164(5, 2, a1, *a1, a1[1], a1[27]), a1[31] = 0, v165 != 2))
          {
            if (*(a1 + 69) >= 3u)
            {
              v166 = *__error();
              syslog(7, "%s:%d:%s() extracting %s (%d bytes)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5117, "copyfile_unpack", "com.apple.ResourceFork", v145);
              *__error() = v166;
            }

            if ((a1[24] & 2) != 0 || (acl[1] = 0, acl[2] = 0, acl[0] = 0x140000000005, *&v184.st_dev = *v185.f_fsid.val, *&v184.st_uid = *&v185.f_files, !fsetattrlist(*(a1 + 6), acl, &v184, 0x20uLL, 0)))
            {
              v5 = 0;
              goto LABEL_427;
            }

            v152 = *__error();
            v167 = a1[1];
            if (!v167)
            {
              v167 = "(null dst)";
            }

            syslog(4, "%s: set times: %m", v167);
            goto LABEL_451;
          }
        }

        *(a1 + 68) = 89;
        free(v148);
        goto LABEL_370;
      }

      if ((*(a1 + 195) & 0x40) != 0)
      {
        v34 = *__error();
        syslog(4, "Not a valid Apple Double header: %m");
        goto LABEL_78;
      }
    }

LABEL_79:
    v5 = 0xFFFFFFFFLL;
LABEL_80:
    v44 = v19;
    goto LABEL_81;
  }

  if ((a2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v23 = flistxattr(v3, 0, 0, 0);
  v24 = v23;
  if (v23 < 1)
  {
    if (v23 < 0)
    {
      goto LABEL_123;
    }

    goto LABEL_101;
  }

  v25 = 0;
  v26 = 0;
  v27 = -3;
  do
  {
    if (v24 <= v26)
    {
      v24 = v26;
      v29 = v25;
    }

    else
    {
      if (v24 >= 0x2000001)
      {
        v28 = *__error();
        syslog(4, "destination's xattr list size (%zu) exceeds the threshold (%d); trying to allocate: %m", v24, 0x2000000);
        *__error() = v28;
      }

      v29 = malloc_type_realloc(v25, v24, 0x6CB93339uLL);
      if (!v29)
      {
LABEL_127:
        if (!v25)
        {
          goto LABEL_228;
        }

        goto LABEL_227;
      }
    }

    v26 = v24;
    v30 = flistxattr(*(a1 + 6), v29, v24, 0);
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30)
      {
        v45 = &v29[v30 - 1];
        if (*v45)
        {
          *v45 = 0;
        }

        v46 = v29;
        do
        {
          if (strncmp(v46, "figgledidiggledy", v45 - v46))
          {
            fremovexattr(*(a1 + 6), v46, 0);
          }

          v46 += strlen(v46) + 1;
        }

        while (v46 <= v45);
      }

      goto LABEL_99;
    }

    if (*__error() != 34 || v27 == 0)
    {
      goto LABEL_99;
    }

    v32 = flistxattr(*(a1 + 6), 0, 0, 0);
    v24 = v32;
    ++v27;
    v25 = v29;
  }

  while (v32 >= 1);
  if (v32 < 0)
  {
    if (v29)
    {
      free(v29);
    }

    goto LABEL_123;
  }

LABEL_99:
  if (v29)
  {
    free(v29);
  }

LABEL_101:
  if ((a1[24] & 8) != 0 && (*(a1 + 148) & 0x20) != 0 && doesdecmpfs(*(a1 + 4)))
  {
    v47 = doesdecmpfs(*(a1 + 6));
    v48 = !v47;
    v49 = 32 * v47;
  }

  else
  {
    v49 = 0;
    v48 = 1;
  }

  v50 = flistxattr(*(a1 + 4), 0, 0, v49);
  if (v50 < 1)
  {
    goto LABEL_122;
  }

  v173 = v48;
  v25 = 0;
  v51 = 0;
  v52 = -3;
  while (1)
  {
    if (v50 <= v51)
    {
      v50 = v51;
      v54 = v25;
    }

    else
    {
      if (v50 >= 0x2000001)
      {
        v53 = *__error();
        syslog(4, "source's xattr list size (%zu) exceeds the threshold (%d); trying to allocate: %m", v50, 0x2000000);
        *__error() = v53;
      }

      v54 = malloc_type_realloc(v25, v50, 0x181ABAFuLL);
      if (!v54)
      {
        goto LABEL_127;
      }
    }

    v51 = v50;
    v55 = flistxattr(*(a1 + 4), v54, v50, v49);
    v5 = v55;
    if ((v55 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 34 || v52 == 0)
    {
      goto LABEL_221;
    }

    v50 = flistxattr(*(a1 + 4), 0, 0, v49);
    ++v52;
    v25 = v54;
    if (v50 <= 0)
    {
      if (v54)
      {
        free(v54);
      }

LABEL_122:
      if (v50)
      {
LABEL_123:
        if (*__error() != 45)
        {
          if (*__error() == 1)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0xFFFFFFFFLL;
          }

          goto LABEL_321;
        }
      }

LABEL_6:
      v5 = 0;
LABEL_7:
      if ((a2 & 0x8000008) != 0)
      {
        v5 = copyfile_data(a1, 0);
        if ((v5 & 0x80000000) != 0)
        {
          v40 = *__error();
          syslog(4, "error processing data: %m");
          *__error() = v40;
          v41 = a1[1];
          if (v41 && unlink(v41))
          {
            v42 = *__error();
            v43 = *a1;
            if (!*a1)
            {
              v43 = "(null src)";
            }

            syslog(4, "%s: remove: %m", v43);
            *__error() = v42;
          }

          goto LABEL_27;
        }
      }

      if ((a2 & 3) == 0)
      {
        goto LABEL_283;
      }

      acl[0] = 0;
      obj_p = 0;
      acl_p = 0;
      v6 = filesec_init();
      if (!v6)
      {
        v5 = 0xFFFFFFFFLL;
        goto LABEL_285;
      }

      v7 = v6;
      if ((a1[24] & 1) == 0)
      {
        goto LABEL_12;
      }

      if (filesec_get_property(a1[23], FILESEC_ACL, acl))
      {
        if (*__error() == 2)
        {
          acl[0] = 0;
          goto LABEL_90;
        }

LABEL_91:
        v5 = 0xFFFFFFFFLL;
LABEL_276:
        filesec_free(v7);
        if (acl[0])
        {
          acl_free(acl[0]);
        }

        if (obj_p)
        {
          acl_free(obj_p);
        }

        if (acl_p)
        {
          acl_free(acl_p);
        }

        if ((v5 & 0x80000000) == 0)
        {
LABEL_283:
          if ((a2 & 2) != 0)
          {
            copyfile_stat(a1);
            v5 = 0;
          }

          goto LABEL_27;
        }

LABEL_285:
        v112 = *__error();
        syslog(4, "error processing security information: %m");
        goto LABEL_286;
      }

LABEL_90:
      if (fstatx_np(*(a1 + 6), &v184, v7))
      {
        goto LABEL_91;
      }

      if (filesec_get_property(v7, FILESEC_ACL, &obj_p))
      {
        if (*__error() != 2)
        {
          goto LABEL_91;
        }

        obj_p = 0;
        v99 = 1;
      }

      else
      {
        v99 = obj_p == 0;
      }

      if (!acl[0] && v99)
      {
LABEL_12:
        v5 = 0;
      }

      else
      {
        acl_p = acl_init(4);
        if (!acl_p)
        {
          goto LABEL_91;
        }

        if (acl[0])
        {
          *&v185.f_bsize = 0;
          entry_p = 0;
          v5 = 0;
          if (!acl_get_entry(acl[0], 0, &v185))
          {
            v5 = 0;
            do
            {
              flagset_p = 0;
              acl_get_flagset_np(*&v185.f_bsize, &flagset_p);
              if (!acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
              {
                if (acl_create_entry(&acl_p, &entry_p) == -1)
                {
                  goto LABEL_91;
                }

                v100 = acl_copy_entry(entry_p, *&v185.f_bsize);
                if (v100 == -1)
                {
                  goto LABEL_91;
                }

                v5 = v100;
                if (*(a1 + 69) >= 2u)
                {
                  v101 = *__error();
                  v102 = *a1;
                  v103 = a1[1];
                  if (!*a1)
                  {
                    v102 = "(null src)";
                  }

                  if (!v103)
                  {
                    v103 = "(null tmp)";
                  }

                  syslog(7, "%s:%d:%s() copied acl entry from %s to %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3193, "copyfile_security", v102, v103);
                  *__error() = v101;
                }
              }

              if (*&v185.f_bsize)
              {
                v104 = -1;
              }

              else
              {
                v104 = 0;
              }
            }

            while (!acl_get_entry(acl[0], v104, &v185));
          }
        }

        else
        {
          v5 = 0;
        }

        if (obj_p)
        {
          *&v185.f_bsize = 0;
          flagset_p = 0;
          entry_p = 0;
          if (!acl_get_entry(obj_p, 0, &v185))
          {
            do
            {
              acl_get_flagset_np(*&v185.f_bsize, &flagset_p);
              if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
              {
                if (acl_create_entry(&acl_p, &entry_p) == -1)
                {
                  goto LABEL_91;
                }

                v113 = acl_copy_entry(entry_p, *&v185.f_bsize);
                if (v113 == -1)
                {
                  goto LABEL_91;
                }

                v5 = v113;
                if (a1 && *(a1 + 69) >= 2u)
                {
                  v114 = *__error();
                  v115 = *a1;
                  v116 = a1[1];
                  if (!*a1)
                  {
                    v115 = "(null dst)";
                  }

                  if (!v116)
                  {
                    v116 = "(null tmp)";
                  }

                  syslog(7, "%s:%d:%s() copied acl entry from %s to %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3217, "copyfile_security", v115, v116);
                  *__error() = v114;
                }
              }

              if (*&v185.f_bsize)
              {
                v117 = -1;
              }

              else
              {
                v117 = 0;
              }
            }

            while (!acl_get_entry(obj_p, v117, &v185));
          }
        }

        v118 = filesec_set_property(a1[23], FILESEC_ACL, &acl_p);
        if (a1 && !v118 && *(a1 + 69) >= 3u)
        {
          v119 = *__error();
          syslog(7, "%s:%d:%s() altered acl\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3224, "copyfile_security");
          *__error() = v119;
        }
      }

      v8 = filesec_dup(a1[23]);
      if (!v8)
      {
        goto LABEL_91;
      }

      v9 = v8;
      v10 = *(a1 + 18);
      if ((a1[24] & 2) == 0 || (v11 = *(a1 + 49), (v11 & 0x4000) != 0))
      {
        v12 = 1;
      }

      else if ((v11 & 0x8000) != 0 || fstatfs(*(a1 + 4), &v185) != -1 && (v185.f_flags & 8) != 0 || (v12 = 1, fstatfs(*(a1 + 6), &v185) != -1) && (v185.f_flags & 8) != 0)
      {
        LOWORD(v185.f_bsize) = 0;
        if (filesec_get_property(v9, FILESEC_MODE, &v185) || (v185.f_bsize & 0xC00) == 0)
        {
          v12 = 1;
        }

        else
        {
          LOWORD(v185.f_bsize) &= 0xF3FFu;
          v12 = filesec_set_property(v9, FILESEC_MODE, &v185) == 0;
        }

        v10 &= 0xF3FFu;
      }

      v105 = a1[24] & 3;
      if (v105 > 1)
      {
        if (v105 == 2)
        {
          fchmod(*(a1 + 6), v10);
        }

        else
        {
LABEL_258:
          if (!v12 || fchmodx_np(*(a1 + 6), v9) < 0)
          {
            *&v185.f_bsize = 0;
            if ((a1[24] & 2) != 0 && fchmod(*(a1 + 6), v10) == -1)
            {
              v106 = *__error();
              v107 = "(null string)";
              v108 = a1[1];
              if (!v108)
              {
                v108 = "(null string)";
              }

              if (*a1)
              {
                v107 = *a1;
              }

              syslog(4, "could not change mode of destination file %s to match source file %s: %m", v108, v107);
              *__error() = v106;
            }

            fchown(*(a1 + 6), *(a1 + 12), *(a1 + 13));
            if (!filesec_get_property(v9, FILESEC_ACL, &v185))
            {
              if (MEMORY[0x29C2B03F0](*(a1 + 6), *&v185.f_bsize) == -1)
              {
                v109 = *__error();
                v110 = "(null string)";
                v111 = a1[1];
                if (!v111)
                {
                  v111 = "(null string)";
                }

                if (*a1)
                {
                  v110 = *a1;
                }

                syslog(4, "could not apply acl to destination file %s from source file %s: %m", v111, v110);
                *__error() = v109;
              }

              acl_free(*&v185.f_bsize);
            }
          }
        }
      }

      else if (v105)
      {
        filesec_set_property(v9, FILESEC_OWNER, 0);
        filesec_set_property(v9, FILESEC_GROUP, 0);
        filesec_set_property(v9, FILESEC_MODE, 0);
        goto LABEL_258;
      }

      filesec_free(v9);
      goto LABEL_276;
    }
  }

  if (!v55)
  {
LABEL_221:
    if (v54)
    {
      free(v54);
    }

    goto LABEL_321;
  }

  v57 = &v54[v55 - 1];
  if (*v57)
  {
    *v57 = 0;
  }

  v58 = malloc_type_malloc(0x1000uLL, 0x89F80090uLL);
  if (!v58)
  {
    v25 = v54;
LABEL_227:
    free(v25);
LABEL_228:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_322;
  }

  v59 = v58;
  v60 = 0;
  size = 4096;
  v61 = v54;
  v172 = &v54[v5 - 1];
  while (1)
  {
    v62 = a1[31];
    if (v62)
    {
      free(v62);
      a1[31] = 0;
    }

    v63 = v57 - v61;
    if (strncmp(v61, "figgledidiggledy", v57 - v61))
    {
      v64 = *(a1 + 70);
      if (!v64 || xattr_preserve_for_intent(v61, v64))
      {
        a1[31] = strdup(v61);
        v65 = a1[26];
        if (!v65)
        {
          goto LABEL_143;
        }

        v66 = v65(5, 1, a1, *a1, a1[1], a1[27]);
        if (v66 != 1)
        {
          break;
        }
      }
    }

LABEL_209:
    v71 = v59;
LABEL_210:
    v61 += strlen(v61) + 1;
    v59 = v71;
    v5 = v60;
    if (v61 > v57)
    {
      goto LABEL_317;
    }
  }

  if (v66 == 2)
  {
    goto LABEL_315;
  }

LABEL_143:
  if (strncmp(v61, "com.apple.ResourceFork", v57 - v61))
  {
    __dst = v60;
    v67 = fgetxattr(*(a1 + 4), v61, 0, 0, 0, v49);
    if (v67 < 0)
    {
      v71 = v59;
LABEL_174:
      v60 = __dst;
      goto LABEL_210;
    }

    v68 = v67;
    v69 = -3;
    while (1)
    {
      if (v68 <= size)
      {
        v71 = v59;
        v68 = size;
      }

      else
      {
        if (v68 >= 0x2000001)
        {
          v70 = *__error();
          syslog(4, "xattr named %s has size (%zu), which exceeds the threshold (%d); trying to allocate: %m", v61, v68, 0x2000000);
          *__error() = v70;
        }

        v71 = malloc_type_realloc(v59, v68, 0x84D193BuLL);
        if (!v71)
        {
          free(v59);
          size = 0;
          v57 = v172;
          goto LABEL_187;
        }
      }

      size = v68;
      v72 = fgetxattr(*(a1 + 4), v61, v71, v68, 0, v49);
      if ((v72 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() == 34 && v69 != 0)
      {
        v68 = fgetxattr(*(a1 + 4), v61, 0, 0, 0, v49);
        ++v69;
        v59 = v71;
        if ((v68 & 0x8000000000000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_158;
    }

    v85 = v72;
    v57 = v172;
    v60 = __dst;
    if (!strncmp(v61, "com.apple.decmpfs", v63))
    {
      if (v85 < 0x10 || *v71 != 1668116582)
      {
        goto LABEL_210;
      }

      v87 = v71[1];
      if ((v87 - 7) >= 8 && (v87 - 3) >= 2)
      {
        if (v87 == 5)
        {
          if (*(a1 + 69) >= 3u)
          {
            v97 = *__error();
            if (*a1)
            {
              v98 = *a1;
            }

            syslog(7, "%s:%d:%s() compression_type <5> on attribute com.apple.decmpfs for src file %s is not copied.\n");
LABEL_220:
            *__error() = v97;
          }

LABEL_158:
          v57 = v172;
          goto LABEL_174;
        }

        v97 = *__error();
        *a1;
        v170 = v71[1];
        syslog(4, "Invalid compression_type <%d> on attribute %s for src file %s: %m");
        goto LABEL_220;
      }

      if (!v173)
      {
        *(a1 + 49) |= 4u;
      }
    }

    if (fsetxattr(*(a1 + 6), v61, v71, v85, 0, v49) < 0)
    {
      if (*__error() == 1 && !strcmp(v61, "com.apple.root.installed"))
      {
        goto LABEL_210;
      }

      v86 = a1[26];
      if (!v86)
      {
        v96 = *__error();
        syslog(4, "could not set attributes %s on destination file descriptor: %m", v61);
        *__error() = v96;
LABEL_187:
        v60 = 0xFFFFFFFFLL;
        goto LABEL_210;
      }

      if (v86(5, 3, a1, *a1, a1[1], a1[27]) == 2)
      {
        v60 = 0xFFFFFFFFLL;
LABEL_316:
        *(a1 + 68) = 89;
        v59 = v71;
        v5 = v60;
        goto LABEL_317;
      }
    }

    v59 = v71;
    goto LABEL_207;
  }

  if ((*(a1 + 197) & 4) == 0)
  {
    v74 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, v49);
    if (v74 < 0)
    {
      v60 = 0;
      v5 = 45;
LABEL_203:
      if (*(a1 + 69) >= 2u)
      {
        __dstb = *__error();
        v92 = v60;
        v93 = *(a1 + 68);
        v94 = __error();
        v171 = v93;
        v60 = v92;
        syslog(7, "%s:%d:%s() Resource fork copy (fsetxattr) failed (%d - state %d - errno %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3731, "copyfile_xattr", v5, v171, *v94);
        *__error() = __dstb;
      }

      v84 = *(a1 + 68);
      goto LABEL_206;
    }

    v75 = size;
    if (size < 0x100000 && v74 > size)
    {
      if (v74 >= 0x100000)
      {
        v76 = 0x100000;
      }

      else
      {
        v76 = v74;
      }

      v77 = v76;
      v59 = reallocf(v59, v76);
      if (!v59)
      {
        v91 = *__error();
        syslog(4, "realloc for resource fork failed: %m");
        size = 0;
        *__error() = v91;
LABEL_202:
        v60 = 0xFFFFFFFFLL;
        v5 = 0xFFFFFFFFLL;
        goto LABEL_203;
      }

      v75 = v77;
    }

    size = v75;
    v78 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v59, v75, 0, v49);
    if (v78 < 1)
    {
      v80 = 1;
      goto LABEL_194;
    }

    v79 = 0;
    do
    {
      if (fsetxattr(*(a1 + 6), "com.apple.ResourceFork", v59, v78, v79, v49) < 0)
      {
        v89 = *__error();
        syslog(4, "writing to resource fork got error: %m");
        *__error() = v89;
        v90 = a1[26];
        if (v90)
        {
          if (v90(5, 3, a1, *a1, a1[1], a1[27]) != 2)
          {
            goto LABEL_200;
          }

          *(a1 + 68) = 89;
        }

        goto LABEL_202;
      }

      v79 += v78;
      v78 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v59, size, v79, v49);
    }

    while (v78 >= 1);
    v80 = v79 == 0;
LABEL_194:
    if ((v78 & 0x8000000000000000) == 0 || (v88 = *__error(), syslog(4, "resource fork getxattr failed: %m"), *__error() = v88, v80))
    {
LABEL_200:
      v60 = 0;
      goto LABEL_207;
    }

    goto LABEL_202;
  }

  v60 = copyfile_data(a1, 1);
  if (!v60)
  {
LABEL_207:
    v95 = a1[26];
    if (v95 && v95(5, 2, a1, *a1, a1[1], a1[27]) == 2)
    {
      v60 = 0xFFFFFFFFLL;
LABEL_315:
      v71 = v59;
      goto LABEL_316;
    }

    goto LABEL_209;
  }

  if (*(a1 + 69) >= 2u)
  {
    v81 = *__error();
    v82 = *(a1 + 68);
    v83 = __error();
    syslog(7, "%s:%d:%s() Resource fork copy (fd) failed (%d - state %d - errno %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3713, "copyfile_xattr", v60, v82, *v83);
    *__error() = v81;
  }

  v84 = *(a1 + 68);
  v5 = v60;
LABEL_206:
  if (v84 != 89)
  {
    goto LABEL_207;
  }

LABEL_317:
  if (v54)
  {
    free(v54);
  }

  free(v59);
  v120 = a1[31];
  if (v120)
  {
    free(v120);
    a1[31] = 0;
  }

LABEL_321:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_322:
  if (*__error() != 45 && *__error() != 1)
  {
    v112 = *__error();
    syslog(4, "error processing extended attributes: %m");
LABEL_286:
    *__error() = v112;
  }

LABEL_27:
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t copyfile_stat(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 36);
  v3 = v2 & 0xFFF;
  v4 = *(a1 + 196);
  if ((v4 & 0x4000) == 0)
  {
    if ((v4 & 0x8000) != 0 || (fstatfs(*(a1 + 16), &v13) != -1 ? (v5 = (v13.f_flags & 8) == 0) : (v5 = 1), !v5 || (fstatfs(*(a1 + 24), &v13) != -1 ? (v6 = (v13.f_flags & 8) == 0) : (v6 = 1), !v6)))
    {
      v3 = v2 & 0x3FF;
    }
  }

  v12[1] = 0;
  v12[2] = 0;
  v12[0] = 0x140000000005;
  v7 = *(a1 + 64);
  *&v13.f_bsize = *(a1 + 80);
  *&v13.f_bfree = v7;
  fsetattrlist(*(a1 + 24), v12, &v13, 0x20uLL, 0);
  fchown(*(a1 + 24), *(a1 + 48), *(a1 + 52));
  fchmod(*(a1 + 24), v3);
  v8 = *(a1 + 148);
  if ((*(a1 + 192) & 0x10000000) != 0)
  {
    v9 = 1573056;
  }

  else
  {
    v9 = 1572992;
  }

  result = copyfile_set_bsdflags(a1, (*(a1 + 196) << 14) & 0x8000 | v8 & 0xFFE7FF3F, v9);
  if ((v8 & 0x60026) == 0x20)
  {
    result = fsetattrlist(*(a1 + 24), v12, &v13, 0x20uLL, 0);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t copyfile_open(const char **a1, std::error_code *a2)
{
  v102 = *MEMORY[0x29EDCA608];
  if (*a1 && *(a1 + 4) == -2)
  {
    v3 = MEMORY[0x29EDCA648];
    if ((a1[24] & 0x40000) == 0)
    {
      v3 = MEMORY[0x29EDCA668];
    }

    v4 = a1[23];
    if (v3())
    {
      v5 = *__error();
      v6 = *a1;
      syslog(4, "stat on %s: %m");
LABEL_148:
      *__error() = v5;
      goto LABEL_161;
    }

    v16 = *(a1 + 18) & 0xF000;
    switch(v16)
    {
      case 16384:
        v7 = 0;
        v17 = 1;
        v18 = 1;
        break;
      case 40960:
        v40 = 0;
        v18 = 0;
        v7 = 0;
        v41 = *(a1 + 48);
        v42 = 0x200000;
        v17 = 1;
        v43 = 0x200000;
LABEL_68:
        if ((v41 & 0x400000) != 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = v42;
        }

        if ((v41 & 0x400000) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v18;
        }

        v45 = open(*a1, v44, 0);
        *(a1 + 4) = v45;
        if (v45 < 0)
        {
          v5 = *__error();
          v48 = *a1;
LABEL_147:
          syslog(4, "open on %s: %m");
          goto LABEL_148;
        }

        if (*(a1 + 69) >= 2u)
        {
          v46 = *__error();
          syslog(7, "%s:%d:%s() open successful on source (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1959, "copyfile_open", *a1);
          *__error() = v46;
          v45 = *(a1 + 4);
        }

        *(a1 + 49) |= 0x80u;
        if (fstat(v45, &v100))
        {
          v5 = *__error();
          v47 = *a1;
          syslog(4, "fstat on open fd failed for %s\n: %m");
          goto LABEL_148;
        }

        if (*(a1 + 8) == v100.st_dev && a1[5] == v100.st_ino)
        {
          v61 = *(a1 + 18) & 0xF000;
          if (v61 == (v100.st_mode & 0xF000))
          {
            if ((*(a1 + 198) & 2) != 0)
            {
              if (!a1[32])
              {
                *__error() = 2;
                *(a1 + 68) = 2;
                v60 = *__error();
                syslog(4, "missing FTS entry during recursive copy\n: %m");
                goto LABEL_112;
              }

              if (!lstat(*a1, &v100))
              {
                v87 = 0;
                v88 = *(a1[32] + 44);
                if (v88 > 0xB)
                {
                  if (v88 - 12 <= 1)
                  {
                    v87 = -24576;
                  }
                }

                else if (v88 == 1 || v88 == 6)
                {
                  v87 = 0x4000;
                }

                else if (v88 == 8)
                {
                  v87 = 0x8000;
                }

                if ((*(a1 + 198) & 4) != 0)
                {
                  LOWORD(v61) = -24576;
                }

                else
                {
                  LOWORD(v61) = v87;
                }

LABEL_189:
                if ((v100.st_mode & 0xF000) != v61)
                {
                  *__error() = 9;
                  *(a1 + 68) = 9;
                  v5 = *__error();
                  v99 = *a1;
                  syslog(4, "file type (%u) does not match expected %u on %s\n: %m");
                  goto LABEL_148;
                }

                if (v17)
                {
                  goto LABEL_206;
                }

                v89 = *(a1 + 48);
                if ((v89 & 4) == 0)
                {
                  goto LABEL_206;
                }

                if ((v89 & 8) != 0 && (*(a1 + 148) & 0x20) != 0)
                {
                  v90 = 32 * doesdecmpfs(*(a1 + 4));
                  v89 = *(a1 + 48);
                }

                else
                {
                  v90 = 0;
                }

                v91 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, (v89 >> 18) & 1 | v90);
                *__error() = 0;
                if (v91 <= 0x100000)
                {
                  goto LABEL_206;
                }

                if (*(a1 + 69) >= 2u)
                {
                  v92 = *__error();
                  syslog(7, "%s:%d:%s() %s has large resource fork, will use namedfork to copy\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2083, "copyfile_open", *a1);
                  *__error() = v92;
                }

                snprintf(&v101, 0x400uLL, "%s%s", *a1, "/..namedfork/rsrc");
                v93 = malloc_type_malloc(0x90uLL, 0x1000040B72DA15FuLL);
                a1[22] = v93;
                if (v93)
                {
                  v94 = MEMORY[0x29EDCA6A8];
                  if ((a1[24] & 0x40000) == 0)
                  {
                    v94 = MEMORY[0x29EDCA6B8];
                  }

                  if (v94(&v101, v93))
                  {
                    v95 = *__error();
                    syslog(4, "stat on %s: %m", &v101);
                    *__error() = v95;
                    free(a1[22]);
                    a1[22] = 0;
                  }

                  else if (a1[22])
                  {
                    v97 = open(&v101, v44, 0);
                    *(a1 + 5) = v97;
                    if ((v97 & 0x80000000) == 0)
                    {
                      if (*(a1 + 69) >= 2u)
                      {
                        v98 = *__error();
                        syslog(7, "%s:%d:%s() open successful on source rsrc (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2111, "copyfile_open", &v101);
                        *__error() = v98;
                      }

                      *(a1 + 49) |= 0x400u;
                      goto LABEL_206;
                    }
                  }
                }

                v96 = *__error();
                syslog(4, "malloc/stat/open on %s: %m", &v101);
                *__error() = v96;
                *__error() = 0;
LABEL_206:
                v9 = v40 | ((v41 & 0x400000) >> 22);
                goto LABEL_8;
              }
            }

            else
            {
              v62 = MEMORY[0x29EDCA6A8];
              if ((a1[24] & 0x40000) == 0)
              {
                v62 = MEMORY[0x29EDCA6B8];
              }

              if (!v62(*a1, &v100))
              {
                goto LABEL_189;
              }
            }

            v5 = *__error();
            v85 = *a1;
            syslog(4, "repeat stat on %s\n: %m");
            goto LABEL_148;
          }
        }

        v66 = *__error();
        syslog(4, "file %s changed behind our feet: %m", *a1);
        *__error() = v66;
        v49 = 9;
LABEL_160:
        *(a1 + 68) = v49;
        goto LABEL_161;
      case 32768:
        v17 = 0;
        v18 = 0;
        v7 = 1;
        break;
      default:
        if (strcmp(*a1, "/dev/null") || (a1[24] & 7) == 0)
        {
          v49 = 45;
          goto LABEL_160;
        }

        v7 = 0;
        v18 = 0;
        v17 = 1;
        break;
    }

    v42 = 0;
    v41 = *(a1 + 48);
    v43 = (v41 >> 10) & 0x100;
    v40 = 1;
    goto LABEL_68;
  }

  v7 = 0;
  v8 = 0;
  LOBYTE(v9) = 1;
LABEL_8:
  v10 = a1[1];
  if (!v10 || *(a1 + 6) != -2)
  {
    goto LABEL_154;
  }

  v11 = *(a1 + 48);
  if ((v11 & 0x8000008) != 0)
  {
    v12 = 2561;
  }

  else
  {
    v12 = 2560;
  }

  if ((v11 & 0x800000) != 0)
  {
    v13 = 2560;
  }

  else
  {
    v13 = v12;
  }

  if ((v11 & 0x400000) != 0)
  {
    v14 = 2561;
  }

  else
  {
    v14 = v13;
  }

  if ((v11 & 0x200000) != 0 && remove(v10, a2) < 0 && *__error() != 2)
  {
    v5 = *__error();
    v65 = a1[1];
    syslog(4, "%s: remove: %m");
    goto LABEL_148;
  }

  if ((*(a1 + 194) & 8) != 0)
  {
    v19 = lstat(a1[1], &v101);
    if ((v101.f_iosize & 0xF000) == 0xA000)
    {
      v20 = 0x200000;
    }

    else
    {
      v20 = 256;
    }

    if (v19 == -1)
    {
      v15 = 256;
    }

    else
    {
      v15 = v20;
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = *(a1 + 49);
  if ((v21 & 8) == 0)
  {
    v22 = fstatfs(*(a1 + 4), &v101);
    if (v22 == -1 || (v101.f_flags & 0x80) == 0)
    {
      if (v22 == -1)
      {
        v5 = *__error();
        v67 = *a1;
        goto LABEL_128;
      }

      v23 = *(a1 + 49);
    }

    else
    {
      v23 = *(a1 + 49) | 0x10;
    }

    v21 = v23 | 8;
    *(a1 + 49) = v21;
  }

  v24 = 0xFFFFFFFFLL;
  v25 = v8 | v7;
  if (v8 | v7)
  {
    if ((v21 & 0x210) == 0x10)
    {
      v24 = fcntl(*(a1 + 4), 63);
      if ((v24 & 0x80000000) != 0)
      {
        v5 = *__error();
        v38 = *a1;
        v39 = *__error();
        syslog(4, "GET_PROT_CLASS failed on (%s) with error <%d>: %m");
        goto LABEL_148;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    v28 = a1[16];
    if (v28)
    {
      v29 = (v28 + 1);
    }

    else
    {
      v29 = 1025;
    }

    v30 = malloc_type_calloc(1uLL, v29, 0x71385709uLL);
    if (v30)
    {
      v31 = v30;
      if (readlink(*a1, v30, v29 - 1) == -1)
      {
        v70 = *__error();
        v71 = *a1;
        syslog(4, "cannot readlink %s: %m");
      }

      else
      {
        if (symlink(v31, a1[1]) != -1 || *__error() == 17 && (*(a1 + 194) & 2) == 0)
        {
          free(v31);
          v32 = open(a1[1], 0x200000);
          *(a1 + 6) = v32;
          if (v32 == -1)
          {
            v5 = *__error();
            v76 = a1[1];
            syslog(4, "Cannot open symlink %s for reading: %m");
            goto LABEL_148;
          }

          i = 0;
          goto LABEL_57;
        }

        v70 = *__error();
        v74 = a1[1];
        syslog(4, "Cannot make symlink %s: %m");
      }

      *__error() = v70;
      free(v31);
LABEL_161:
      result = 0xFFFFFFFFLL;
      goto LABEL_162;
    }

    v60 = *__error();
    syslog(4, "cannot allocate %zd bytes: %m");
LABEL_112:
    *__error() = v60;
    goto LABEL_161;
  }

  if (!v8)
  {
    for (i = 0; ; i = 1)
    {
      v50 = v14 & 0xFFFFF9FE;
      while (1)
      {
        while (1)
        {
          v51 = a1[1];
          v52 = *(a1 + 18) | 0x80u;
          if ((statfs(v51, &v101) != -1 || *__error() == 2 && dirname_r(v51, &v100) && statfs(&v100, &v101) != -1) && (v101.f_flags & 0x80) != 0)
          {
            v53 = open_dprotected_np(v51, v14 | v15, v24, 0, v52);
          }

          else
          {
            v53 = open(v51, v14 | v15, v52);
          }

          *(a1 + 6) = v53;
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          v54 = *__error();
          if (v54 != 13)
          {
            break;
          }

          if (chmod(a1[1], *(a1 + 18) & 0xF7F | 0x80))
          {
            if (*__error() == 2)
            {
              *__error() = 13;
            }

LABEL_146:
            v5 = *__error();
            v75 = a1[1];
            goto LABEL_147;
          }

          *(a1 + 49) |= 0x1000u;
        }

        if (v54 != 21)
        {
          break;
        }

        if (*(a1 + 69) >= 3u)
        {
          v55 = *__error();
          syslog(7, "%s:%d:%s() open failed because it is a directory (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2301, "copyfile_open", a1[1]);
          *__error() = v55;
        }

        v56 = *(a1 + 48);
        if ((v56 & 0x20000) != 0)
        {
          v14 = v50;
          if ((v56 & 0x800000) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v14 = v50;
          if ((v56 & 0x800008) == 8)
          {
            goto LABEL_146;
          }
        }
      }

      if (v54 != 17)
      {
        goto LABEL_146;
      }

      if (*(a1 + 69) >= 3u)
      {
        v57 = *__error();
        syslog(7, "%s:%d:%s() open failed, retrying (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2268, "copyfile_open", a1[1]);
        *__error() = v57;
      }

      v58 = *(a1 + 48);
      if ((v58 & 0x20000) != 0)
      {
        goto LABEL_146;
      }

      v14 &= ~0x200u;
      if ((v58 & 0x400008) != 0)
      {
        if (*(a1 + 69) >= 4u)
        {
          v59 = *__error();
          syslog(7, "%s:%d:%s() truncating existing file (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2278, "copyfile_open", a1[1]);
          *__error() = v59;
        }

        v14 |= 0x400u;
      }
    }
  }

  if (mkdir(a1[1], *(a1 + 18) & 0xE3F | 0x1C0) == -1)
  {
    if (*__error() != 17 || (*(a1 + 194) & 2) != 0)
    {
      v5 = *__error();
      v72 = a1[1];
      syslog(4, "Cannot make directory %s: %m");
      goto LABEL_148;
    }

    if (*(a1 + 198))
    {
      if (lstat(a1[1], &v101) == -1)
      {
        v69 = "Cannot lstat destination %s: %m";
        goto LABEL_176;
      }

      if ((v101.f_iosize & 0xF000) == 0xA000)
      {
        *__error() = 9;
        *(a1 + 68) = 9;
        v69 = "Destination %s already exists as a symlink, refusing to copy: %m";
LABEL_176:
        v86 = *__error();
        syslog(4, v69, a1[1]);
        *__error() = v86;
        goto LABEL_161;
      }
    }
  }

  v26 = open(a1[1], v15);
  *(a1 + 6) = v26;
  if (v26 == -1)
  {
    v5 = *__error();
    v73 = a1[1];
    syslog(4, "Cannot open directory %s for reading: %m");
    goto LABEL_148;
  }

  i = 1;
LABEL_57:
  if (*(a1 + 69) >= 2u)
  {
    v33 = *__error();
    syslog(7, "%s:%d:%s() open successful on destination (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2312, "copyfile_open", a1[1]);
    *__error() = v33;
  }

  v34 = *(a1 + 49);
  LOWORD(v35) = v34 | 0x100;
  *(a1 + 49) = v34 | 0x100;
  if ((v34 & 0x10) == 0)
  {
    goto LABEL_60;
  }

  if ((v34 & 0x20) == 0)
  {
    v63 = fstatfs(*(a1 + 6), &v101);
    if (v63 != -1 && (v101.f_flags & 0x80) != 0)
    {
      v64 = *(a1 + 49) | 0x40;
LABEL_165:
      v35 = v64 | 0x20;
      *(a1 + 49) = v35;
      goto LABEL_166;
    }

    if (v63 != -1)
    {
      v64 = *(a1 + 49);
      goto LABEL_165;
    }

    v5 = *__error();
    v84 = a1[1];
LABEL_128:
    v68 = *__error();
    syslog(4, "failed to determine copy protection on (%s) with error <%d>: %m");
    goto LABEL_148;
  }

LABEL_166:
  if (v25 != 0 && (i & 1) != 0 && (v35 & 0x240) == 0x40)
  {
    if (fcntl(*(a1 + 6), 64, v24))
    {
      v5 = *__error();
      v82 = a1[1];
      v83 = *__error();
      syslog(4, "SET_PROT_CLASS failed on (%s) with error <%d>: %m");
      goto LABEL_148;
    }

    v35 = *(a1 + 49);
  }

LABEL_60:
  if ((v35 & 0x400) != 0)
  {
    snprintf(&v101, 0x400uLL, "%s%s", a1[1], "/..namedfork/rsrc");
    v36 = open(&v101, 1537, *(a1 + 18) | 0x80u);
    *(a1 + 7) = v36;
    if (v36 == -1)
    {
      v77 = *__error();
      syslog(4, "open on %s: %m", &v101);
      *__error() = v77;
      free(a1[22]);
      a1[22] = 0;
      if (close(*(a1 + 5)))
      {
        v78 = *__error();
        syslog(4, "error closing source rsrc file descriptor: %m");
        *__error() = v78;
      }

      v37 = 0;
      *(a1 + 5) = -1;
      *(a1 + 49) &= ~0x400u;
      goto LABEL_153;
    }

    if (*(a1 + 69) >= 2u)
    {
      v37 = *__error();
      syslog(7, "%s:%d:%s() open successful on destination rsrc (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2373, "copyfile_open", &v101);
LABEL_153:
      *__error() = v37;
    }
  }

LABEL_154:
  if ((a1[3] & 0x80000000) != 0 || (a1[2] & 0x80000000) != 0)
  {
    if (*(a1 + 69))
    {
      v80 = *__error();
      syslog(7, "%s:%d:%s() file descriptors not open (src: %d, dst: %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2381, "copyfile_open", *(a1 + 4), *(a1 + 6));
      *__error() = v80;
    }

    v49 = 22;
    goto LABEL_160;
  }

  result = 0;
LABEL_162:
  v81 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t copyfile_set_bsdflags(uint64_t a1, int a2, int a3)
{
  if (fstat(*(a1 + 24), &v14))
  {
    if (a3)
    {
      if (*(a1 + 276))
      {
        v6 = *__error();
        v12 = *__error();
        syslog(7, "%s:%d:%s() couldn't stat destination file for st_flags (%d)\n");
LABEL_20:
        *__error() = v6;
        return *__error();
      }

      return *__error();
    }

    v7 = 0;
  }

  else
  {
    v7 = v14.st_flags & a3;
  }

  v8 = 4;
  do
  {
    v9 = v7 | a2;
    v15[0] = v14.st_flags;
    v15[1] = v7 | a2;
    v16 = -1;
    *__error() = 0;
    if (ffsctl(*(a1 + 24), 0xC00C4114uLL, v15, 0))
    {
      if (*__error() != 35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14.st_flags == v16)
      {
        return 0;
      }

      v14.st_flags = v16;
      v7 = v16 & a3;
    }

    --v8;
  }

  while (v8);
  v9 = v7 | a2;
LABEL_15:
  result = fchflags(*(a1 + 24), v9);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 276))
  {
    v6 = *__error();
    if (*(a1 + 8))
    {
      v11 = *(a1 + 8);
    }

    v13 = *__error();
    syslog(7, "%s:%d:%s() fchflags failed on %s (%d)\n");
    goto LABEL_20;
  }

  return *__error();
}

void reset_security(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 24);
  if ((v1 & 0x80000000) == 0)
  {
    v3 = *(a1 + 16);
    if (v3 < 0 || (*(a1 + 192) & 2) == 0)
    {
      v3 = v1;
    }

    fstat(v3, &v12);
    if ((*(a1 + 196) & 1) == 0)
    {
      v4 = *(a1 + 24);
      v15 = 0;
      v5 = filesec_init();
      if (v5)
      {
        if (fstatx_np(v4, &v13, v5))
        {
          if (*__error() != 45)
          {
LABEL_10:
            if (v15)
            {
              acl_free(v15);
            }

            if (v5)
            {
              filesec_free(v5);
            }

            goto LABEL_14;
          }
        }

        else
        {
          if (filesec_get_property(v5, FILESEC_ACL, &v15) || acl_get_entry(v15, 0, &entry_p))
          {
            goto LABEL_10;
          }

          v7 = entry_p;
          v8 = geteuid();
          mbr_uid_to_uuid(v8, uu);
          qualifier = acl_get_qualifier(v7);
          v10 = 1;
          v18 = acl_init(1);
          if (v18)
          {
            add_uberace(&v18);
            if (!acl_get_entry(v18, 0, &v17))
            {
              acl_get_permset(v17, &permset_p);
              acl_get_tag_type(v7, &tag_type_p);
              acl_get_permset(v7, &v20);
              if (tag_type_p == ACL_EXTENDED_ALLOW && *qualifier == *uu && qualifier[1] == *&uu[8])
              {
                v10 = *permset_p != *v20;
              }
            }
          }

          if (qualifier)
          {
            acl_free(qualifier);
          }

          if (v18)
          {
            acl_free(v18);
          }

          if (v10)
          {
            goto LABEL_10;
          }

          *uu = v12.st_mode & 0xFFF;
          if (!acl_delete_entry(v15, entry_p) && !filesec_set_property(v5, FILESEC_ACL, &v15) && !filesec_set_property(v5, FILESEC_MODE, uu) && !fchmodx_np(v4, v5))
          {
            goto LABEL_10;
          }
        }
      }

      fchmod(v4, v12.st_mode & 0xFFF);
      goto LABEL_10;
    }
  }

LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
}

int copyfile_state_free(copyfile_state_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2)
  {
    filesec_free(v2);
  }

  v3 = *(a1 + 29);
  if (v3)
  {
    filesec_free(v3);
  }

  v4 = *(a1 + 30);
  if (v4)
  {
    filesec_free(v4);
  }

  if (*a1)
  {
    v5 = *(a1 + 4);
    if (v5 < 0 || (close(v5), *a1))
    {
      v6 = *(a1 + 5);
      if ((v6 & 0x80000000) == 0)
      {
        close(v6);
      }
    }
  }

  if (!*(a1 + 1))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 6);
  if (v7 < 0)
  {
    v8 = 0;
  }

  else
  {
    if (close(v7))
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (!*(a1 + 1))
    {
      goto LABEL_24;
    }
  }

  v10 = *(a1 + 7);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v8 < 0)
  {
LABEL_26:
    v11 = *__error();
    syslog(4, "error closing files: %m");
    *__error() = v11;
    v9 = -1;
    goto LABEL_27;
  }

LABEL_25:
  v9 = 0;
LABEL_27:
  v12 = *(a1 + 31);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 22);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 1);
  if (v14)
  {
    free(v14);
  }

  if (*a1)
  {
    free(*a1);
  }

  free(a1);
  return v9;
}

int fcopyfile(int from_fd, int to_fd, copyfile_state_t a3, copyfile_flags_t flags)
{
  v23 = a3;
  if ((to_fd | from_fd) < 0)
  {
    v18 = __error();
    v19 = 22;
LABEL_28:
    *v18 = v19;
    return -1;
  }

  if ((copyfile_preamble(&v23, flags) & 0x80000000) != 0)
  {
    return -1;
  }

  v8 = v23;
  if (v23 && *(v23 + 69) >= 2u)
  {
    v9 = *__error();
    syslog(7, "%s:%d:%s() set src_fd <- %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1042, "fcopyfile", from_fd);
    *__error() = v9;
  }

  if (*(v8 + 4) == -2)
  {
    *(v8 + 4) = from_fd;
    if (fstatx_np(from_fd, (v8 + 32), *(v8 + 23)))
    {
      if (*__error() != 45 && *__error() != 1)
      {
        v21 = *__error();
        syslog(4, "fstatx_np on src fd %d: %m", *(v8 + 4));
        *__error() = v21;
        return -1;
      }

      fstat(*(v8 + 4), (v8 + 32));
    }
  }

  v10 = *(v8 + 18) & 0xF000;
  if (v10 != 0x4000 && v10 != 0x8000 && v10 != 40960)
  {
    v18 = __error();
    v19 = 45;
    goto LABEL_28;
  }

  if (*(v8 + 69) >= 2u)
  {
    v11 = *__error();
    syslog(7, "%s:%d:%s() set dst_fd <- %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1070, "fcopyfile", to_fd);
    *__error() = v11;
  }

  v12 = *(v8 + 6);
  if (v12 == -2)
  {
    *(v8 + 6) = to_fd;
    v12 = to_fd;
  }

  v13 = fstat(v12, &v22);
  fchmod(*(v8 + 6), v22.st_mode & 0xE7F | 0x180);
  v14 = copyfile_internal(v8, flags);
  if ((v13 & 0x80000000) == 0 && (*(v8 + 192) & 2) == 0)
  {
    v15 = *__error();
    fchmod(*(v8 + 6), v22.st_mode & 0xFFF);
    *__error() = v15;
  }

  v16 = *(v8 + 68);
  if (v16)
  {
    *__error() = v16;
    *(v8 + 68) = 0;
  }

  if (!a3)
  {
    v17 = *__error();
    copyfile_state_free(v8);
    *__error() = v17;
  }

  if ((v14 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  return v14;
}

_filesec *copyfile_fix_perms(filesec_t *a1)
{
  obj_p = 0;
  v1 = filesec_dup(*a1);
  v2 = v1;
  if (v1)
  {
    if (!filesec_get_property(v1, FILESEC_ACL, &obj_p) && (add_uberace(&obj_p) || filesec_set_property(v2, FILESEC_ACL, &obj_p)) || !filesec_get_property(v2, FILESEC_MODE, &v5) && (~v5 & 0x180) != 0 && (v5 |= 0x180u, filesec_set_property(v2, FILESEC_MODE, &v5)))
    {
      filesec_free(v2);
      v2 = 0;
    }

    if (obj_p)
    {
      acl_free(obj_p);
    }
  }

  return v2;
}

int copyfile_state_get(copyfile_state_t s, uint32_t flag, void *dst)
{
  if (dst)
  {
    switch(flag)
    {
      case 1u:
        result = 0;
        v5 = *(s + 4);
        goto LABEL_21;
      case 2u:
        result = 0;
        v8 = *s;
        goto LABEL_25;
      case 3u:
        result = 0;
        v5 = *(s + 6);
        goto LABEL_21;
      case 4u:
        result = 0;
        v8 = *(s + 1);
        goto LABEL_25;
      case 5u:
        result = 0;
        v8 = *(s + 28);
        goto LABEL_25;
      case 6u:
        result = 0;
        v8 = *(s + 26);
        goto LABEL_25;
      case 7u:
        result = 0;
        v8 = *(s + 27);
        goto LABEL_25;
      case 8u:
        result = 0;
        v8 = *(s + 33);
        goto LABEL_25;
      case 9u:
        result = 0;
        v8 = *(s + 31);
        goto LABEL_25;
      case 0xAu:
        result = 0;
        v9 = (*(s + 49) >> 11) & 1;
        goto LABEL_28;
      case 0xBu:
      case 0xDu:
        result = 0;
        v5 = *(s + 71);
        goto LABEL_21;
      case 0xCu:
        result = 0;
        v5 = *(s + 72);
        goto LABEL_21;
      case 0xEu:
        result = 0;
        v9 = (*(s + 49) >> 13) & 1;
LABEL_28:
        *dst = v9;
        return result;
      case 0xFu:
        result = 0;
        v5 = (*(s + 49) >> 9) & 1;
        goto LABEL_21;
      case 0x10u:
        result = 0;
        v5 = (*(s + 49) >> 14) & 1;
        goto LABEL_21;
      case 0x11u:
        result = 0;
        v8 = *(s + 32);
LABEL_25:
        *dst = v8;
        return result;
      case 0x12u:
        result = 0;
        v5 = HIWORD(*(s + 49)) & 1;
        goto LABEL_21;
      default:
        if (flag != 256)
        {
          v6 = __error();
          v7 = 22;
          goto LABEL_5;
        }

        result = 0;
        v5 = *(s + 70);
LABEL_21:
        *dst = v5;
        break;
    }
  }

  else
  {
    v6 = __error();
    v7 = 14;
LABEL_5:
    *v6 = v7;
    return -1;
  }

  return result;
}

int copyfile_state_set(copyfile_state_t s, uint32_t flag, const void *src)
{
  if (src)
  {
    switch(flag)
    {
      case 1u:
        result = 0;
        *(s + 4) = *src;
        return result;
      case 2u:
        v9 = strdup(src);
        result = 0;
        *s = v9;
        return result;
      case 3u:
        result = 0;
        *(s + 6) = *src;
        return result;
      case 4u:
        v8 = strdup(src);
        result = 0;
        *(s + 1) = v8;
        return result;
      case 5u:
        if (*(s + 28))
        {
          *(s + 28) = 0;
        }

        if (!*src)
        {
          return 0;
        }

        result = 0;
        *(s + 28) = 0;
        return result;
      case 6u:
        result = 0;
        *(s + 26) = src;
        return result;
      case 7u:
        result = 0;
        *(s + 27) = src;
        return result;
      case 8u:
      case 9u:
      case 0xAu:
      case 0x11u:
        goto LABEL_8;
      case 0xBu:
        result = 0;
        *(s + 71) = *src;
        return result;
      case 0xCu:
        result = 0;
        v10 = *src;
        goto LABEL_27;
      case 0xDu:
        result = 0;
        v10 = *src;
        *(s + 71) = *src;
LABEL_27:
        *(s + 72) = v10;
        return result;
      case 0xEu:
        if (*src != 1)
        {
          return 0;
        }

        result = 0;
        v7 = *(s + 49) | 0x2000;
LABEL_34:
        *(s + 49) = v7;
        return result;
      case 0xFu:
        v12 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v12 | 0x200;
        }

        else
        {
          v7 = v12 & 0xFFFFFDFF;
        }

        goto LABEL_34;
      case 0x10u:
        v13 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v13 | 0x4000;
        }

        else
        {
          v7 = v13 & 0xFFFFBFFF;
        }

        goto LABEL_34;
      case 0x12u:
        v11 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v11 | 0x10000;
        }

        else
        {
          v7 = v11 & 0xFFFEFFFF;
        }

        goto LABEL_34;
      default:
        if (flag == 256)
        {
          result = 0;
          *(s + 70) = *src;
          return result;
        }

LABEL_8:
        v5 = __error();
        v6 = 22;
        break;
    }
  }

  else
  {
    v5 = __error();
    v6 = 14;
  }

  *v5 = v6;
  return -1;
}

uint64_t add_uberace(acl_t *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = getuid();
  if (mbr_uid_to_uuid(v2, uu))
  {
    goto LABEL_27;
  }

  result = acl_create_entry_np(a1, &entry_p, 0);
  if (result != -1)
  {
    if (acl_get_permset(entry_p, &permset_p) == -1)
    {
      v4 = "acl_get_permset: %m";
    }

    else if (acl_clear_perms(permset_p) == -1)
    {
      v4 = "acl_clear_permset: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_DATA) == -1)
    {
      v4 = "add ACL_WRITE_DATA: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_ATTRIBUTES) == -1)
    {
      v4 = "add ACL_WRITE_ATTRIBUTES: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_EXTATTRIBUTES) == -1)
    {
      v4 = "add ACL_WRITE_EXTATTRIBUTES: %m";
    }

    else if (acl_add_perm(permset_p, ACL_APPEND_DATA) == -1)
    {
      v4 = "add ACL_APPEND_DATA: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_SECURITY) == -1)
    {
      v4 = "add ACL_WRITE_SECURITY: %m";
    }

    else if (acl_add_perm(permset_p, ACL_SYNCHRONIZE) == -1)
    {
      v4 = "add ACL_SYNCHRONIZE: %m";
    }

    else if (acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW) == -1)
    {
      v4 = "set ACL_EXTENDED_ALLOW: %m";
    }

    else if (acl_set_permset(entry_p, permset_p) == -1)
    {
      v4 = "acl_set_permset: %m";
    }

    else
    {
      if (acl_set_qualifier(entry_p, uu) != -1)
      {
        result = 0;
        goto LABEL_28;
      }

      v4 = "acl_set_qualifier: %m";
    }

    v5 = *__error();
    syslog(4, v4);
    *__error() = v5;
LABEL_27:
    result = 0xFFFFFFFFLL;
  }

LABEL_28:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t copyfile_pack(void *a1)
{
  v132[1] = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x10012uLL, 0x1000040A9FC9F90uLL);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10012uLL, 0x44AFB0AEuLL);
  if (!v4)
  {
    free(v3);
LABEL_15:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_191;
  }

  v5 = v4;
  v130 = v4 + 65554;
  *v3 = 0x2000000051607;
  *(v3 + 12) = 2;
  *(v3 + 26) = xmmword_299C6D600;
  *(v3 + 42) = 82;
  *(v3 + 1) = *"Mac OS X        ";
  *(v3 + 84) = 1096045650;
  *(v3 + 24) = 120;
  v6 = (v3 + 15);
  v7 = *(a1 + 48);
  if (v7)
  {
    v132[0] = 0;
    if (filesec_get_property(a1[23], FILESEC_ACL, v132) < 0)
    {
      if (*(a1 + 69) < 2u)
      {
        v8 = 0;
      }

      else
      {
        v27 = *__error();
        v28 = __error();
        syslog(7, "%s:%d:%s() no acl entries found (errno = %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5417, "copyfile_pack", *v28);
        v8 = 0;
        *__error() = v27;
      }
    }

    else
    {
      strcpy(v5, "com.apple.acl.text");
      v130 = v5 + 19;
      v8 = 19;
    }

    if (v132[0])
    {
      acl_free(v132[0]);
    }

    if ((a1[24] & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_36:
    v29 = 0;
    goto LABEL_69;
  }

  v8 = 0;
  if ((v7 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_5:
  v9 = 65554 - v8;
  v10 = flistxattr(*(a1 + 4), &v5[v8], 65554 - v8, 0);
  if (v10 <= 0 && *(a1 + 69) >= 2u)
  {
    v11 = *__error();
    v12 = __error();
    syslog(7, "%s:%d:%s() no extended attributes found (%d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5433, "copyfile_pack", *v12);
    *__error() = v11;
  }

  if (v10 >= v9)
  {
    v13 = 65554 - v8;
  }

  else
  {
    v13 = v10;
  }

  if (v10 <= v9)
  {
    v9 = v13;
  }

  else if (*(a1 + 69))
  {
    v14 = *__error();
    syslog(7, "%s:%d:%s() extended attribute list too long\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5437, "copyfile_pack");
    *__error() = v14;
  }

  v16 = (v9 & ~(v9 >> 63)) + v8;
  if (v16 > 0x10012)
  {
    goto LABEL_183;
  }

  v127 = v5;
  v128 = v8;
  v130 = &v5[v16];
  if (v9 >= 1 && !*v130)
  {
    v17 = malloc_type_calloc(0xAuLL, 8uLL, 0x10040436913F5uLL);
    if (v17)
    {
      v18 = v17;
      v19 = v127;
      *v18 = v127;
      v20 = memchr(v19, 0, v16);
      if (v20)
      {
        v21 = v20;
        v22 = 10;
        v23 = 1;
        do
        {
          if (v23 == v22)
          {
            v22 += 10;
            v24 = malloc_type_realloc(v18, 8 * v22, 0x80040B8603338uLL);
            if (!v24)
            {
              goto LABEL_44;
            }

            v18 = v24;
          }

          v25 = v23 + 1;
          v18[v23] = v21 + 1;
          v21 = memchr(v21 + 1, 0, v130 - (v21 + 1));
          ++v23;
        }

        while (v21);
        v26 = v25 - 1;
      }

      else
      {
        v26 = 0;
      }

      v30 = v26;
      qsort_b(v18, v26, 8uLL, &__block_literal_global);
      v31 = malloc_type_malloc(v16, 0xE75E526DuLL);
      if (v31)
      {
        v32 = v31;
        v129 = v3;
        if (v30)
        {
          v33 = v18;
          v34 = v31;
          do
          {
            v35 = *v33++;
            v36 = strlen(v35) + 1;
            memcpy(v34, v35, v36);
            v34 += v36;
            --v30;
          }

          while (v30);
        }

        __memcpy_chk();
        free(v32);
        v3 = v129;
      }

      free(v18);
    }
  }

LABEL_44:
  if (v16)
  {
    v37 = v3;
    v38 = 0;
    v39 = 120;
    v40 = v6;
    v41 = v127;
    while (1)
    {
      v42 = strlen(v41) + 1;
      if (!strcmp(v41, "com.apple.FinderInfo") || !strcmp(v41, "com.apple.ResourceFork"))
      {
        goto LABEL_64;
      }

      if (!strcmp(v41, "figgledidiggledy"))
      {
        v38 = 1;
      }

      if (v42 >= 0x80)
      {
        v42 = 128;
      }

      v43 = *(a1 + 70);
      if (v43 && !xattr_preserve_for_intent(v41, v43))
      {
        v49 = v130;
        memmove(v41, &v41[v42], v130 - &v41[v42]);
        v130 = &v49[-v42];
        v42 = 0;
LABEL_64:
        v3 = v37;
        goto LABEL_65;
      }

      if (a1[26])
      {
        MEMORY[0x2A1C7C4A8]();
        v44 = &v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        memmove(v44, v41, v42);
        v44[v42 - 1] = 0;
        a1[31] = v44;
        v45 = (a1[26])(5, 1, a1, *a1, a1[1], a1[27]);
        a1[31] = 0;
        if (v45 == 1)
        {
          v48 = v130;
          memmove(v41, &v41[v42], v130 - &v41[v42]);
          v130 = &v48[-v42];
          v42 = 0;
          v3 = v37;
          goto LABEL_65;
        }

        if (v45 == 2)
        {
          *(a1 + 68) = 89;
          v15 = 0xFFFFFFFFLL;
          v66 = 0;
          goto LABEL_210;
        }
      }

      v40[1].i8[2] = v42;
      v40[1].i16[0] = 0;
      if (&v41[v42] > v130)
      {
        v66 = 0;
        v15 = 0xFFFFFFFFLL;
LABEL_210:
        v3 = v37;
LABEL_211:
        v5 = v127;
        goto LABEL_187;
      }

      memmove(&v40[1] + 3, v41, v42);
      if (*(a1 + 69) >= 2u)
      {
        v46 = *__error();
        syslog(7, "%s:%d:%s() copied name [%s]\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5506, "copyfile_pack", &v40[1] + 3);
        *__error() = v46;
      }

      v47 = (v42 + 14) & 0x1FC;
      v39 += v47;
      v3 = v37;
      if (v39 >= 65554)
      {
LABEL_202:
        v66 = 0;
LABEL_203:
        v15 = 0xFFFFFFFFLL;
        goto LABEL_211;
      }

      ++*(v37 + 59);
      *(v37 + 24) += v47;
LABEL_65:
      v41 += v42;
      v40 = (v3 + v39);
      if (v41 >= v130)
      {
        v29 = v38 != 0;
        v3 = v37;
        goto LABEL_68;
      }
    }
  }

  v29 = 0;
LABEL_68:
  v5 = v127;
  v8 = v128;
LABEL_69:
  if (a1[28] && !v29)
  {
    strlcpy(&v5[v8], "figgledidiggledy", 65554 - v8);
  }

  if (v5 >= v130)
  {
    v15 = 0;
    v99 = 1;
LABEL_152:
    v100 = *(v3 + 24);
    v101 = *(v3 + 25) + v100;
    *(v3 + 42) = v101;
    *(v3 + 34) = v101 - *(v3 + 30);
    *(v3 + 23) = v101;
    if (v99)
    {
      goto LABEL_176;
    }

    v102 = a1[26];
    if (v102)
    {
      a1[31] = "com.apple.ResourceFork";
      v103 = 1;
      v104 = v102(5, 1, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v104 == 1)
      {
        v107 = 0;
        goto LABEL_170;
      }

      if (v104 == 2)
      {
        goto LABEL_165;
      }
    }

    v105 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, 0);
    if ((v105 & 0x8000000000000000) != 0)
    {
      if ((*(a1 + 195) & 0x40) != 0)
      {
        v109 = *__error();
        v110 = __error();
        syslog(4, "skipping attr %s due to error %d: %m", "com.apple.ResourceFork", *v110);
        goto LABEL_185;
      }

      goto LABEL_183;
    }

    v106 = v105;
    if (v105 >> 31)
    {
      v107 = 0;
      v108 = 22;
LABEL_166:
      *(a1 + 68) = v108;
      goto LABEL_167;
    }

    v111 = a1[26];
    if (v111)
    {
      a1[31] = "com.apple.ResourceFork";
      a1[33] = 0;
      v112 = v111(5, 4, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v112 == 2)
      {
LABEL_165:
        v107 = 0;
        v108 = 89;
        goto LABEL_166;
      }
    }

    v107 = malloc_type_malloc(v106, 0x8E04C892uLL);
    if (v107)
    {
      if (fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v107, v106, 0, 0) == v106)
      {
        if (pwrite(*(a1 + 6), v107, v106, *(v3 + 42)) != v106 && (*(a1 + 195) & 0x40) != 0)
        {
          v122 = *__error();
          syslog(4, "couldn't write resource fork: %m");
          *__error() = v122;
        }

        v123 = a1[26];
        if (!v123 || v123(5, 2, a1, *a1, a1[1], a1[27]) != 2)
        {
          if (*(a1 + 69) >= 3u)
          {
            v124 = *__error();
            syslog(7, "%s:%d:%s() copied %zd bytes of %s data @ offset 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5322, "copyfile_pack_rsrcfork", v106, "com.apple.ResourceFork", *(v3 + 42));
            *__error() = v124;
          }

          *(v3 + 46) = v106;
          v103 = 1;
LABEL_170:
          if (a1[31])
          {
            a1[31] = 0;
          }

          if (v107)
          {
            free(v107);
          }

          if (v103)
          {
            v15 = 0;
            v100 = *(v3 + 24);
LABEL_176:
            v114 = v100;
            len_p = v100;
            swap_adhdr(v3);
            v115 = *(v3 + 84);
            *(v3 + 84) = vrev32q_s8(v115);
            *(v3 + 25) = bswap32(*(v3 + 25));
            *(v3 + 58) = bswap32(*(v3 + 58)) >> 16;
            i = *(v3 + 59);
            v117 = bswap32(i) >> 16;
            *(v3 + 59) = v117;
            if (v115.i32[0] == 1381258305)
            {
              LOWORD(i) = v117;
            }

            for (i = i; i; --i)
            {
              v118 = (v6[1].u8[2] + 14) & 0x1FC;
              *v6 = vrev32_s8(*v6);
              v6[1].i16[0] = bswap32(v6[1].u16[0]) >> 16;
              v6 = (v6 + v118);
            }

            v119 = pwrite(*(a1 + 6), v3, v114, 0);
            if (v119 == len_p)
            {
              v66 = 0;
              goto LABEL_187;
            }

            if ((*(a1 + 195) & 0x40) == 0)
            {
              goto LABEL_183;
            }

            v109 = *__error();
            syslog(4, "couldn't write file header: %m");
LABEL_185:
            v66 = 0;
            *__error() = v109;
            goto LABEL_186;
          }

LABEL_183:
          v66 = 0;
LABEL_186:
          v15 = 0xFFFFFFFFLL;
          goto LABEL_187;
        }

LABEL_167:
        v113 = a1[26];
        if (v113)
        {
          v103 = v113(5, 3, a1, *a1, a1[1], a1[27]) == 0;
        }

        else
        {
          v103 = 0;
        }

        goto LABEL_170;
      }

      if ((*(a1 + 195) & 0x40) == 0)
      {
        goto LABEL_167;
      }

      v125 = *__error();
      syslog(4, "couldn't read entire resource fork: %m");
    }

    else
    {
      v125 = *__error();
      syslog(4, "malloc: %m");
    }

    *__error() = v125;
    goto LABEL_167;
  }

  LODWORD(v128) = 0;
  v15 = 0;
  v50 = "com.apple.acl.text";
  v51 = v6;
  v127 = v5;
  v52 = v5;
  v53 = "com.apple.FinderInfo";
  v129 = v3;
  while (1)
  {
    v54 = strlen(v52);
    if (!strcmp(v52, v50))
    {
      v132[0] = 0;
      if (filesec_get_property(a1[23], FILESEC_ACL, v132) < 0)
      {
        if (*__error() != 2 && (*(a1 + 195) & 0x40) != 0)
        {
          v76 = *__error();
          syslog(4, "getting acl: %m");
          *__error() = v76;
        }

        v66 = 0;
        len_p = 0;
      }

      else
      {
        v60 = v54;
        v61 = v15;
        v15 = v50;
        v62 = v53;
        v63 = acl_to_text(v132[0], &len_p);
        if (v63)
        {
          v64 = v63;
          v65 = malloc_type_malloc(++len_p, 0x40435213uLL);
          v66 = v65;
          if (v65)
          {
            memcpy(v65, v64, len_p);
          }

          else
          {
            len_p = 0;
          }

          acl_free(v64);
        }

        else
        {
          v66 = 0;
        }

        if (*(a1 + 69) >= 2u)
        {
          v77 = *__error();
          syslog(7, "%s:%d:%s() copied acl (%ld) %p\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5227, "copyfile_pack_acl", len_p, v66);
          *__error() = v77;
        }

        v53 = v62;
        v50 = v15;
        LODWORD(v15) = v61;
        v54 = v60;
        v3 = v129;
      }

      if (v132[0])
      {
        acl_free(v132[0]);
      }

LABEL_119:
      v78 = len_p;
      v51->i32[1] = len_p;
      v79 = *(v3 + 25);
      v80 = (v79 + *(v3 + 24));
      v51->i32[0] = v80;
      *(v3 + 25) = v79 + v78;
      v81 = pwrite(*(a1 + 6), v66, v78, v80);
      if (v81 == len_p)
      {
        v15 = v15;
      }

      else
      {
        v15 = 1;
      }

      free(v66);
      if (*(a1 + 69) >= 3u)
      {
        v59 = *__error();
        syslog(7, "%s:%d:%s() copied %ld bytes of %s data @ offset 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5729, "copyfile_pack", len_p, v52, v51->i32[0]);
LABEL_124:
        *__error() = v59;
      }

LABEL_125:
      v51 = (v51 + ((v51[1].u8[2] + 14) & 0x1FC));
      goto LABEL_126;
    }

    if (a1[28] && !strcmp(v52, "figgledidiggledy"))
    {
      v66 = 0;
      goto LABEL_119;
    }

    if (strcmp(v52, v53))
    {
      break;
    }

    v67 = a1[26];
    if (v67)
    {
      a1[31] = v53;
      v68 = v67(5, 1, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v68 == 1)
      {
        goto LABEL_126;
      }

      if (v68 == 2)
      {
        goto LABEL_159;
      }

      a1[33] = 0;
      v69 = (a1[26])(5, 4, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v69 == 2)
      {
        goto LABEL_159;
      }
    }

    v70 = fgetxattr(*(a1 + 4), v52, v3 + *(v3 + 30), 0x20uLL, 0, 0);
    len_p = v70;
    if (v70 < 0)
    {
      v82 = a1[26];
      if (v82)
      {
        a1[31] = strdup(v52);
        v83 = v82(5, 3, a1, *a1, a1[1], a1[27]);
        v84 = a1[31];
        if (v84)
        {
          free(v84);
          a1[31] = 0;
        }

        if (v83 == 2)
        {
          goto LABEL_202;
        }
      }

      if ((*(a1 + 195) & 0x40) == 0)
      {
        goto LABEL_126;
      }

      v85 = *__error();
      v86 = *__error();
      syslog(4, "skipping attr %s due to error %d: %m");
      goto LABEL_143;
    }

    v71 = *(a1 + 48);
    if (v70 == 32)
    {
      if ((v71 & 0x40000000) != 0)
      {
        v72 = *__error();
        syslog(4, " copied 32 bytes of %s data @ offset 0x%08x: %m", v53, *(v3 + 30));
        *__error() = v72;
      }

      v73 = a1[26];
      if (v73)
      {
        a1[31] = strdup(v52);
        v74 = v73(5, 2, a1, *a1, a1[1], a1[27]);
        v75 = a1[31];
        if (v75)
        {
          free(v75);
          a1[31] = 0;
        }

        if (v74 == 2)
        {
          goto LABEL_202;
        }
      }

      goto LABEL_126;
    }

    if ((v71 & 0x40000000) != 0)
    {
      v85 = *__error();
      syslog(4, "unexpected size (%ld) for %s: %m");
LABEL_143:
      *__error() = v85;
    }

LABEL_126:
    v52 += v54 + 1;
    if (v52 >= v130)
    {
      v99 = v128 == 0;
      v5 = v127;
      goto LABEL_152;
    }
  }

  if (!strcmp(v52, "com.apple.ResourceFork"))
  {
    LODWORD(v128) = 1;
    goto LABEL_126;
  }

  v55 = a1[26];
  if (v55)
  {
    a1[31] = strdup(v52);
    a1[33] = 0;
    v56 = v55(5, 4, a1, *a1, a1[1], a1[27]);
    v57 = a1[31];
    if (v57)
    {
      free(v57);
      a1[31] = 0;
    }

    if (v56 == 2)
    {
LABEL_159:
      v66 = 0;
      *(a1 + 68) = 89;
      goto LABEL_203;
    }
  }

  v58 = fgetxattr(*(a1 + 4), v52, 0, 0, 0, 0);
  len_p = v58;
  if (!v58)
  {
    goto LABEL_125;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
    if ((*(a1 + 195) & 0x40) != 0)
    {
      v87 = *__error();
      v88 = __error();
      syslog(4, "skipping attr %s due to error %d: %m", v52, *v88);
      *__error() = v87;
    }

    v89 = a1[26];
    if (v89)
    {
      a1[31] = strdup(v52);
      v90 = v89(5, 3, a1, *a1, a1[1], a1[27]);
      v91 = a1[31];
      if (v91)
      {
        free(v91);
        a1[31] = 0;
      }

      if (v90 == 2)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_125;
  }

  if (v58 >= 0x1000001)
  {
    if ((*(a1 + 195) & 0x40) != 0)
    {
      v59 = *__error();
      syslog(4, "skipping attr %s (too big): %m", v52);
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v92 = malloc_type_malloc(v58, 0x6505565EuLL);
  if (!v92)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_126;
  }

  v66 = v92;
  v93 = v54;
  v94 = v15;
  v15 = v50;
  v95 = v53;
  len_p = fgetxattr(*(a1 + 4), v52, v92, len_p, 0, 0);
  v96 = a1[26];
  if (!v96)
  {
    goto LABEL_149;
  }

  a1[31] = strdup(v52);
  v97 = v96(5, 2, a1, *a1, a1[1], a1[27]);
  v98 = a1[31];
  if (v98)
  {
    free(v98);
    a1[31] = 0;
  }

  if (v97 != 2)
  {
LABEL_149:
    v53 = v95;
    v50 = v15;
    LODWORD(v15) = v94;
    v54 = v93;
    v3 = v129;
    goto LABEL_119;
  }

  *(a1 + 68) = 89;
  v15 = 0xFFFFFFFFLL;
  v5 = v127;
  v3 = v129;
LABEL_187:
  free(v3);
  free(v5);
  if (v66)
  {
    free(v66);
  }

  if (!v15)
  {
    copyfile_stat(a1);
  }

LABEL_191:
  v120 = *MEMORY[0x29EDCA608];
  return v15;
}

int8x8_t swap_adhdr(int8x8_t *a1)
{
  LODWORD(v1) = a1[3].u16[0];
  v2 = bswap32(v1) >> 16;
  result = *a1;
  v4 = vrev32_s8(*a1);
  if (a1->u32[0] != 333319)
  {
    LOWORD(v1) = v2;
  }

  *a1 = v4;
  a1[3].i16[0] = v2;
  if (v1)
  {
    v1 = v1;
    v5 = (&a1[4] + 2);
    do
    {
      result = vrev32_s8(*(v5 - 2));
      *(v5 - 1) = result;
      *v5 = bswap32(*v5);
      v5 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

int8x16_t swap_attrhdr(uint64_t a1)
{
  result = vrev32q_s8(*(a1 + 84));
  *(a1 + 84) = result;
  *(a1 + 100) = bswap32(*(a1 + 100));
  *(a1 + 116) = bswap32(*(a1 + 116)) >> 16;
  *(a1 + 118) = bswap32(*(a1 + 118)) >> 16;
  return result;
}

uint64_t copyfile_unpack_xattr(void *a1, uint64_t a2, void *value)
{
  if (!*(a1 + 70) && xattr_preserve_for_intent((a2 + 11), 0) != 1)
  {
    return 0;
  }

  v6 = a1[26];
  if (v6)
  {
    a1[31] = strdup((a2 + 11));
    a1[33] = 0;
    v7 = v6(5, 1, a1, *a1, a1[1], a1[27]);
    v8 = a1[31];
    if (v8)
    {
      free(v8);
      a1[31] = 0;
    }

    if (v7 == 2)
    {
      goto LABEL_12;
    }
  }

  v9 = (a2 + 11);
  v10 = fsetxattr(*(a1 + 6), (a2 + 11), value, *(a2 + 4), 0, 0);
  v11 = *__error();
  if (v10 != -1 || v11 == 1 && !strcmp((a2 + 11), "com.apple.root.installed"))
  {
    v12 = a1[26];
    *__error() = v11;
    if (v12)
    {
      a1[31] = strdup((a2 + 11));
      a1[33] = *(a2 + 4);
      v13 = (a1[26])(5, 2, a1, *a1, a1[1], a1[27]);
      v14 = a1[31];
      if (v14)
      {
        free(v14);
        a1[31] = 0;
      }

      if (v13 == 2)
      {
LABEL_12:
        *(a1 + 68) = 89;
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  *__error() = v11;
  if ((*(a1 + 195) & 0x40) != 0)
  {
    v16 = *__error();
    syslog(4, "error %d setting attribute %s: %m", v11, v9);
    *__error() = v16;
  }

  v17 = a1[26];
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  a1[31] = strdup(v9);
  v18 = v17(5, 3, a1, *a1, a1[1], a1[27]);
  v19 = a1[31];
  if (v19)
  {
    free(v19);
    a1[31] = 0;
  }

  if (v18 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t copyfile_unpack_acl(uint64_t a1, unsigned int a2, char *buf_p)
{
  if (buf_p[a2 - 1])
  {
    v6 = malloc_type_malloc(a2 + 1, 0x19B2062DuLL);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    memcpy(v6, buf_p, a2);
    v7[a2] = 0;
    v22[0] = acl_from_text(v7);
    free(v7);
    if (v22[0])
    {
      goto LABEL_4;
    }

    return 0;
  }

  v22[0] = acl_from_text(buf_p);
  if (!v22[0])
  {
    return 0;
  }

LABEL_4:
  v8 = filesec_init();
  if (!v8 || (v9 = fstatx_np(*(a1 + 24), &v21, v8), (v9 & 0x80000000) != 0) || (v10 = v9, filesec_set_property(v8, FILESEC_ACL, v22) < 0))
  {
LABEL_36:
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
    while (fchmodx_np(*(a1 + 24), v8) < 0)
    {
      if (*__error() != 45 || (v11 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_ACL, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v13 = *__error();
          v14 = *(a1 + 8);
          if (!v14)
          {
            v14 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting acl attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1867, "copyfile_unset_acl", v14);
          *__error() = v13;
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_UUID, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v15 = *__error();
          v16 = *(a1 + 8);
          if (!v16)
          {
            v16 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting uuid attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1872, "copyfile_unset_acl", v16);
          *__error() = v15;
        }

        v12 = 1;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_GRPUUID, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v17 = *__error();
          v18 = *(a1 + 8);
          if (!v18)
          {
            v18 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting group uuid attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1877, "copyfile_unset_acl", v18);
          *__error() = v17;
        }

LABEL_35:
        v19 = *__error();
        syslog(4, "setting security information: %m");
        *__error() = v19;
        goto LABEL_36;
      }

      v11 = 0;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    if (!v10)
    {
      *(a1 + 196) |= 0x1000u;
    }
  }

  acl_free(v22[0]);
  filesec_free(v8);
  return v10;
}

BOOL doesdecmpfs(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = 0;
  if (!fstatfs(a1, &v5))
  {
    __strlcpy_chk();
    v4[2] = 0;
    v4[0] = 5;
    v4[1] = 0x20000;
    if (getattrlist(v6, v4, v3, 0x24uLL, 0) != -1 && (v3[6] & 1) != 0 && (v3[22] & 1) != 0)
    {
      result = 1;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

char *__cdecl xattr_name_with_flags(const char *a1, xattr_flags_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  __s = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 35;
  v3 = 67;
  v4 = &byte_299C6D738;
  v5 = 1;
  v6 = v17;
  do
  {
    if ((*(v4 - 1) & a2) != 0)
    {
      *v6 = v3;
      if (v5 >= 65)
      {
        v8 = __error();
        result = 0;
        *v8 = 63;
        goto LABEL_19;
      }

      ++v5;
    }

    v7 = *v4;
    v4 += 8;
    v3 = v7;
    v6 = &v16 + v5;
  }

  while (v7);
  if (v5 != 1)
  {
    v10 = nameInDefaultList(a1);
    if (v10 && !strcmp(v10, v17))
    {
      v11 = strdup(a1);
      __s = v11;
      if (v11)
      {
LABEL_13:
        if (strlen(v11) >= 0x80)
        {
          free(v11);
          __s = 0;
          v12 = __error();
          v13 = 63;
LABEL_17:
          *v12 = v13;
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      asprintf(&__s, "%s%s", a1, &v16);
      v11 = __s;
      if (__s)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v12 = __error();
    v13 = 12;
    goto LABEL_17;
  }

  __s = strdup(a1);
  if (!__s)
  {
    goto LABEL_16;
  }

LABEL_18:
  result = __s;
LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

int xattr_intent_with_flags(xattr_operation_intent_t a1, xattr_flags_t a2)
{
  v2 = 1;
  v3 = &dword_29F286D98;
  while (v2 != a1)
  {
    v4 = *v3;
    v3 += 4;
    v2 = v4;
    if (!v4)
    {
      return (a2 & 4) == 0;
    }
  }

  return (*(*(v3 - 1) + 16))();
}

int xattr_preserve_for_intent(const char *a1, xattr_operation_intent_t a2)
{
  v3 = xattr_flags_from_name(a1);
  v4 = 1;
  v5 = &dword_29F286D98;
  while (v4 != a2)
  {
    v6 = *v5;
    v5 += 4;
    v4 = v6;
    if (!v6)
    {
      return (v3 & 4) == 0;
    }
  }

  v8 = *(*(v5 - 1) + 16);

  return v8();
}

uint64_t __nameInDefaultList_block_invoke()
{
  result = _xpc_runtime_is_app_sandboxed();
  v1 = defaultUnboxedPropertyTable;
  if (result)
  {
    v1 = defaultSandboxedPropertyTable;
  }

  defaultPropertyTable = v1;
  return result;
}