uint64_t NSStartSearchPathEnumerationStatic(int a1, int a2, int a3)
{
  v4 = a1 - 1;
  if ((a1 - 1) < 0x16 || (result = 0, (a1 & 0xFFFFFFFE) == 0x64) && (v4 = a1 - 78, ((a1 - 78) & 0x80000000) == 0))
  {
    v6 = a2 & ~a3 & 0x1FFF;
    v7 = 1032;
    if (v6 != 1032)
    {
      v7 = a2 & ~a3 & 0x1FFF;
      if ((a2 & ~a3 & 0x408) == 8)
      {
        if (_os_feature_enabled_impl())
        {
          v7 = v6 | 0x400;
        }

        else
        {
          if (LinkedAtLeastSydro_once != -1)
          {
            NSStartSearchPathEnumerationStatic_cold_1();
          }

          if (LinkedAtLeastSydro_result)
          {
            v7 = v6 | 0x4000;
          }

          else
          {
            v7 = v6;
          }
        }
      }

      if ((~v7 & 0xA) == 0)
      {
        v8 = dirInfo[3 * v4 + 1];
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11 && (v9 == v10 || !strcmp(v9, v10)))
        {
          v7 &= ~8u;
        }
      }
    }

    return (v7 + (a1 << 24));
  }

  return result;
}

uint64_t NSGetNextSearchPathEnumerationStatic(unsigned int a1, char *a2)
{
  while (1)
  {
    v2 = a2;
    v3 = a1;
    v51 = *MEMORY[0x1E69E9840];
    v4 = HIBYTE(a1);
    v44 = a1;
    if ((a1 - 0x1000000) >> 25 > 0xA)
    {
      if (a1 >> 25 != 50)
      {
        goto LABEL_25;
      }

      v5 = v4 - 78;
      if (((v4 - 78) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = v4 - 1;
      if (((v4 - 1) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    NextDomain = _getNextDomain(&v44);
    if (!NextDomain)
    {
      goto LABEL_25;
    }

    v7 = NextDomain - 1;
    v8 = &dirInfo[3 * v5];
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == 1)
    {
      while (1)
      {
        v11 = v44 & ~(1 << v7);
        v44 = v11;
        v12 = *(v10 + 8 * v7);
        if (v12)
        {
          break;
        }

        v13 = _getNextDomain(&v44);
        if (!v13)
        {
          goto LABEL_25;
        }

        v7 = v13 - 1;
      }

      v17 = (v8 + 2);
      SearchPathEnumerationStatic = v11 + (v3 & 0xFF000000);
    }

    else
    {
      v14 = v8[2];
      v15 = BYTE2(v3);
      if (BYTE2(v3) >= v9)
      {
        v44 &= ~(1 << v7);
        v16 = _getNextDomain(&v44);
        if (!v16)
        {
          goto LABEL_25;
        }

        v15 = 0;
        v7 = v16 - 1;
      }

      v12 = *(*(v10 + 8 * v7) + 8 * v15);
      v17 = (v14 + 8 * v15);
      SearchPathEnumerationStatic = (v3 & 0xFF000000 | (v15 << 16)) + v44 + 0x10000;
    }

    v19 = *v17;
    v20 = *v12;
    if (v20 == 47 || v20 == 0)
    {
      if (globals != -1)
      {
        NSGetNextSearchPathEnumerationStatic_cold_1();
      }

      if (!qword_1ED448A60)
      {
LABEL_25:
        SearchPathEnumerationStatic = 0;
        goto LABEL_26;
      }

      strlcpy(v2, qword_1ED448A60, 0x400uLL);
    }

    else
    {
      *v2 = 0;
    }

    if (v7 == 4 && SearchPathEnumerationStatic)
    {
      memset(&v43, 0, sizeof(v43));
      v42 = 0;
      v24 = sysconf(71);
      if (v24 < 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v38 = *__error();
          *buf = 136315394;
          v46 = "NSGetNextSearchPathEnumerationStatic";
          v47 = 1024;
          v48 = v38;
          _os_log_impl(&dword_19A0AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: sysconf(_SC_GETPW_R_SIZE_MAX) error: %{errno}d", buf, 0x12u);
        }

        goto LABEL_50;
      }

      v25 = v24;
      v26 = &v41 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = getuid();
      if (getpwuid_r(v27, &v43, v26, v25, &v42))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v28 = getuid();
          v29 = *__error();
          *buf = 136315650;
          v46 = "NSGetNextSearchPathEnumerationStatic";
          v47 = 1024;
          v48 = v28;
          v49 = 1024;
          v50 = v29;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "%s: getpwuid_r(%d) error: %{errno}d";
          v32 = 24;
LABEL_33:
          _os_log_impl(&dword_19A0AC000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
        }
      }

      else
      {
        if (v42)
        {
          strlcat(v2, v43.pw_dir, 0x400uLL);
          goto LABEL_54;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v40 = getuid();
          *buf = 136315394;
          v46 = "NSGetNextSearchPathEnumerationStatic";
          v47 = 1024;
          v48 = v40;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "%s: getpwuid_r returned no results for uid %d";
          v32 = 18;
          goto LABEL_33;
        }
      }

LABEL_50:
      *v2 = 0;
      SearchPathEnumerationStatic = NSGetNextSearchPathEnumerationStatic(SearchPathEnumerationStatic, v2);
      goto LABEL_26;
    }

    if (v7 == 5 && SearchPathEnumerationStatic)
    {
      if (NSGetNextSearchPathEnumerationStatic_containerizedUserPath)
      {
        goto LABEL_40;
      }

      v33 = container_create_or_lookup_path_for_current_user();
      if (v33)
      {
        v34 = v33;
        __strlcpy_chk();
        free(v34);
LABEL_40:
        v35 = &NSGetNextSearchPathEnumerationStatic_containerizedUserPath;
        goto LABEL_47;
      }

      goto LABEL_55;
    }

    if (v7 != 7 || !SearchPathEnumerationStatic)
    {
      strlcat(v2, v12, 0x400uLL);
      goto LABEL_54;
    }

    if (NSGetNextSearchPathEnumerationStatic_systemContainerPath)
    {
      goto LABEL_46;
    }

    v36 = container_system_path_for_identifier();
    if (v36)
    {
      break;
    }

LABEL_55:
    *v2 = 0;
    v39 = *MEMORY[0x1E69E9840];
    a1 = SearchPathEnumerationStatic;
    a2 = v2;
  }

  v37 = v36;
  __strlcpy_chk();
  free(v37);
LABEL_46:
  v35 = &NSGetNextSearchPathEnumerationStatic_systemContainerPath;
LABEL_47:
  strlcpy(v2, v35, 0x400uLL);
LABEL_54:
  strlcat(v2, v19, 0x400uLL);
LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
  return SearchPathEnumerationStatic;
}

char *_dirhelper(int a1, char *__dst, size_t __size)
{
  if (a1 != 1)
  {
    goto LABEL_13;
  }

  if (qword_1ED448A68 != -1)
  {
    __user_local_dirname_cold_1();
  }

  if (!qword_1ED448AD0 || !*qword_1ED448AD0 || strlcpy(__dst, qword_1ED448AD0, __size) >= __size)
  {
    goto LABEL_13;
  }

  if (!qword_1ED448AD8 || !*qword_1ED448AD8)
  {
    return __dst;
  }

  if (strlcat(__dst, qword_1ED448AD8, __size) < __size)
  {
    if (makeDirectory(__dst, 448))
    {
      if (!__dst)
      {
        return 0;
      }

      goto LABEL_17;
    }

    v7 = __error();
    result = 0;
    if (__dst && *v7 == 17)
    {
LABEL_17:
      _dirhelper_update_tmpdir(__dst);
      return __dst;
    }
  }

  else
  {
LABEL_13:
    v6 = __error();
    result = 0;
    *v6 = 22;
  }

  return result;
}

uint64_t _getNextDomain(unsigned int *a1)
{
  v2 = *a1;
  v3 = __clz(__rbit32(*a1));
  if (*a1)
  {
    result = v3 + 1;
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0x400) != 0 && result == 4)
  {
    return 11;
  }

  if ((v2 & 0x800) != 0 && result == 4)
  {
    return 12;
  }

  if (result == 15)
  {
    *a1 = v2 & 0xFFFFBBFF | 0x400;
    return 11;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_once();
}

uint64_t makeDirectory(const char *a1, dev_t a2)
{
  v4 = geteuid();
  v5 = getegid();

  return makeDirectoryWithUIDAndGID(a1, v4, v5, a2);
}

char *_dirhelper_relative(int a1)
{
  if (a1)
  {
    abort();
  }

  getuid();

  return _dirhelper_relative_internal();
}

char *_dirhelper_relative_internal()
{
  MEMORY[0x1EEE9AC00]();
  v1 = v0;
  v3 = v2;
  v43 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  if (!statfs_ext())
  {
    if (v15)
    {
      v5 = 0;
      v6 = 30;
      goto LABEL_38;
    }

    if ((v15 & 0x1000) == 0)
    {
      v6 = 19;
      goto LABEL_41;
    }

    bzero(__source, 0x400uLL);
    if (!_dirhelper(1, __source, 0x400uLL) || statfs_ext() || v14)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v4 = strlcpy(v3, __source, v1);
      if (v4 >= v1)
      {
        v5 = 0;
      }

      else
      {
        v5 = v3;
      }

      v6 = 2 * (v4 >= v1);
      if (v5)
      {
        goto LABEL_16;
      }
    }

    if (v6 != 2)
    {
      getpid();
      if (sandbox_check())
      {
        v6 = 1;
      }
    }

LABEL_16:
    if (v5 || v6)
    {
LABEL_25:
      if (v5)
      {
        if (!v6)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          if (_dirhelper_relative_internal_onceToken_14 != -1)
          {
            _dirhelper_relative_internal_cold_2();
          }

          v5 = 0;
          v6 = 1;
          goto LABEL_38;
        }

        v6 = 2;
LABEL_41:
        if (_log_onceToken_0 != -1)
        {
          _dirhelper_relative_internal_cold_3();
        }

        if (os_log_type_enabled(_log_log_0, OS_LOG_TYPE_ERROR))
        {
          _dirhelper_relative_internal_cold_6();
        }

        v5 = 0;
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    if (_dirhelper_relative_internal_onceToken != -1)
    {
      _dirhelper_relative_internal_cold_1();
    }

    if (v14 == _dirhelper_relative_internal_userDataDevice_0)
    {
      v7 = "/var/mobile/tmp/";
    }

    else
    {
      if (v14 != _dirhelper_relative_internal_sysDataDevice_0)
      {
        goto LABEL_33;
      }

      v7 = "/var/tmp/";
    }

    v5 = v3;
    if (strlcpy(v3, v7, v1) < v1)
    {
      goto LABEL_25;
    }

LABEL_33:
    if (_log_onceToken_0 != -1)
    {
      _dirhelper_relative_internal_cold_3();
    }

    if (os_log_type_enabled(_log_log_0, OS_LOG_TYPE_DEBUG))
    {
      _dirhelper_relative_internal_cold_4();
    }
  }

  v5 = 0;
  v6 = 2;
LABEL_38:
  *__error() = v6;
LABEL_39:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void _dirhelper_init(_BYTE *a1)
{
  if (qword_1ED448A70)
  {
    bzero(qword_1ED448A70, 0x400uLL);
  }

  else
  {
    qword_1ED448A70 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  }

  pthread_mutex_init(&stru_1ED448A78, 0);
  dword_1ED448AB8 = 0;
  if (!qword_1ED448AD0)
  {
    v2 = getenv("TMPDIR");
    if (v2)
    {
      v3 = v2;
      if (*v2)
      {
        v4 = strlen(v2) + 2;
        v5 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
        qword_1ED448AD0 = v5;
        if (v3[strlen(v3) - 1] == 47)
        {
          v6 = snprintf(v5, v4, "%s");
        }

        else
        {
          v6 = snprintf(v5, v4, "%s/");
        }

        if (v4 <= v6)
        {
          free(qword_1ED448AD0);
          qword_1ED448AD0 = 0;
        }

        else if (qword_1ED448AD0)
        {
          return;
        }
      }
    }

    v7 = geteuid();
    v8 = v7;
    if (a1 && *a1 == 1)
    {
      if (v7 == -2)
      {
        v9 = "/var/tmp/";
        goto LABEL_30;
      }

      if (v7 >= 0x1F5)
      {
        v9 = "/var/mobile/tmp/";
LABEL_30:
        qword_1ED448AD0 = strdup(v9);
        if (qword_1ED448AD0)
        {
          return;
        }

        goto LABEL_34;
      }
    }

    else if (v7 != -2 && v7 >= 0x1F5)
    {
      if (getpwuid(v7))
      {
        v10 = getpwuid(v8);
        pw_dir = v10->pw_dir;
        if (pw_dir)
        {
          if (*pw_dir)
          {
            v12 = strlen(v10->pw_dir);
            v13 = v12 + 7;
            v14 = pw_dir[v12 - 1];
            v15 = malloc_type_calloc(v12 + 7, 1uLL, 0x100004077774924uLL);
            v16 = v15;
            v17 = "/tmp/";
            if (v14 == 47)
            {
              v17 = "tmp/";
            }

            if (v13 > snprintf(v15, v13, "%s%s", pw_dir, v17))
            {
              qword_1ED448AD0 = v16;
              if (v16)
              {
                return;
              }

LABEL_34:
              qword_1ED448AD0 = strdup("/var/tmp/");
              return;
            }

            free(v16);
          }
        }
      }
    }

    if (qword_1ED448AD0)
    {
      return;
    }

    goto LABEL_34;
  }
}

uint64_t makeDirectoryWithUIDAndGID(const char *a1, uid_t a2, gid_t a3, dev_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!mkdir(a1, a4))
  {
    if (_log_onceToken != -1)
    {
      makeDirectoryWithUIDAndGID_cold_1();
    }

    v13 = _log_log;
    if (os_log_type_enabled(_log_log, OS_LOG_TYPE_DEFAULT))
    {
      v21.st_dev = 136315394;
      *&v21.st_mode = "makeDirectory";
      WORD2(v21.st_ino) = 2080;
      *(&v21.st_ino + 6) = a1;
      _os_log_impl(&dword_19A0AC000, v13, OS_LOG_TYPE_DEFAULT, "%s: created %s", &v21, 0x16u);
    }

    if (lchown(a1, a2, a3))
    {
      v8 = *__error();
      if (_log_onceToken != -1)
      {
        makeDirectoryWithUIDAndGID_cold_3();
      }

      v14 = _log_log;
      if (!os_log_type_enabled(_log_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v20 = strerror(v8);
      v21.st_dev = 136316162;
      *&v21.st_mode = "makeDirectory";
      WORD2(v21.st_ino) = 1024;
      *(&v21.st_ino + 6) = a2;
      HIWORD(v21.st_uid) = 1024;
      v21.st_gid = a3;
      LOWORD(v21.st_rdev) = 2080;
      *(&v21.st_rdev + 2) = v20;
      WORD1(v21.st_atimespec.tv_sec) = 1024;
      HIDWORD(v21.st_atimespec.tv_sec) = v8;
      v10 = "%s: chown error for uid=%d, gid=%d: %s (%d)";
      v11 = v14;
      v12 = 40;
      goto LABEL_31;
    }

    if (_log_onceToken != -1)
    {
      makeDirectoryWithUIDAndGID_cold_3();
    }

    v16 = _log_log;
    if (os_log_type_enabled(_log_log, OS_LOG_TYPE_INFO))
    {
      v21.st_dev = 136315650;
      *&v21.st_mode = "makeDirectory";
      WORD2(v21.st_ino) = 1024;
      *(&v21.st_ino + 6) = a2;
      HIWORD(v21.st_uid) = 1024;
      v21.st_gid = a3;
      _os_log_impl(&dword_19A0AC000, v16, OS_LOG_TYPE_INFO, "%s: set uid=%d, gid=%d", &v21, 0x18u);
    }

    memset(&v21, 0, sizeof(v21));
    if (!lstat(a1, &v21) && (v21.st_mode & 0x1FF) != a4 && (v21.st_flags & 0x100000) == 0 && lchmod(a1, a4) < 0)
    {
      if (_log_onceToken != -1)
      {
        makeDirectoryWithUIDAndGID_cold_3();
      }

      v17 = _log_log;
      if (os_log_type_enabled(_log_log, OS_LOG_TYPE_ERROR))
      {
        makeDirectoryWithUIDAndGID_cold_6(v17);
      }
    }

LABEL_28:
    v8 = *__error();
    v15 = 1;
    goto LABEL_29;
  }

  if (*__error() == 17)
  {
    goto LABEL_28;
  }

  v8 = *__error();
  if (_log_onceToken != -1)
  {
    makeDirectoryWithUIDAndGID_cold_1();
  }

  v9 = _log_log;
  if (!os_log_type_enabled(_log_log, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  v21.st_dev = 136316162;
  *&v21.st_mode = "makeDirectory";
  WORD2(v21.st_ino) = 2080;
  *(&v21.st_ino + 6) = a1;
  HIWORD(v21.st_gid) = 1024;
  v21.st_rdev = a4;
  *(&v21.st_rdev + 2) = 2080;
  *(&v21.st_rdev + 6) = strerror(v8);
  HIWORD(v21.st_atimespec.tv_sec) = 1024;
  LODWORD(v21.st_atimespec.tv_nsec) = v8;
  v10 = "%s: mkdir: path=%s mode=%o: %s (%d)";
  v11 = v9;
  v12 = 44;
LABEL_31:
  _os_log_error_impl(&dword_19A0AC000, v11, OS_LOG_TYPE_ERROR, v10, &v21, v12);
LABEL_15:
  v15 = 0;
LABEL_29:
  *__error() = v8;
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _set_user_dir_suffix(const char *a1)
{
  if (qword_1ED448A68 == -1)
  {
    if (!a1)
    {
LABEL_18:
      if (!qword_1ED448AD8)
      {
        return 1;
      }

      free(qword_1ED448AD8);
      qword_1ED448AD8 = 0;
      if (!qword_1ED448AD0 || !*qword_1ED448AD0)
      {
        return 1;
      }

      v3 = 1;
      setenv("TMPDIR", qword_1ED448AD0, 1);
      return v3;
    }
  }

  else
  {
    __user_local_dirname_cold_1();
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  if (!*a1)
  {
    goto LABEL_18;
  }

  if (!validate_user_dir_suffix(a1))
  {
    if (_log_onceToken_0 != -1)
    {
      _set_user_dir_suffix_cold_2();
    }

    v6 = _log_log_0;
    if (os_log_type_enabled(_log_log_0, OS_LOG_TYPE_ERROR))
    {
      _set_user_dir_suffix_cold_3(v6);
    }

    goto LABEL_16;
  }

  if (qword_1ED448AD8)
  {
    free(qword_1ED448AD8);
    qword_1ED448AD8 = 0;
  }

  v2 = strlen(a1) + 2;
  v3 = 1;
  v4 = malloc_type_calloc(v2, 1uLL, 0x100004077774924uLL);
  qword_1ED448AD8 = v4;
  if (a1[strlen(a1) - 1] == 47)
  {
    v5 = snprintf(v4, v2, "%s");
  }

  else
  {
    v5 = snprintf(v4, v2, "%s/");
  }

  if (v2 <= v5)
  {
    free(qword_1ED448AD8);
    qword_1ED448AD8 = 0;
LABEL_16:
    v3 = 0;
    *__error() = 22;
  }

  return v3;
}

BOOL validate_user_dir_suffix(uint64_t a1)
{
  v2 = strlen(a1);
  if (strnstr(a1, "/../", v2))
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (*a1 == 46)
    {
      v4 = *(a1 + 1);
      return v4 != 46;
    }
  }

  else if (v2 >= 3)
  {
    if (*a1 == 46 && *(a1 + 1) == 46 && *(a1 + 2) == 47)
    {
      return 0;
    }

    v5 = a1 + v2;
    if (*(a1 + v2 - 3) != 47 || *(v5 - 2) != 46)
    {
      return 1;
    }

    v4 = *(v5 - 1);
    return v4 != 46;
  }

  return 1;
}

uint64_t __LinkedAtLeastSydro_block_invoke()
{
  result = dyld_program_sdk_at_least();
  LinkedAtLeastSydro_result = result;
  return result;
}

char *nextRoot_init()
{
  if (dyld_process_is_restricted())
  {
    v0 = 0;
  }

  else
  {
    v0 = getenv("NEXT_ROOT");
  }

  if (!v0)
  {
    v0 = &unk_19A0AEB3B;
  }

  result = strdup(v0);
  qword_1ED448A60 = result;
  return result;
}

void ___dirhelper_relative_internal_block_invoke_15()
{
  v4 = *MEMORY[0x1E69E9840];
  if (_log_onceToken_0 != -1)
  {
    _set_user_dir_suffix_cold_2();
  }

  v0 = _log_log_0;
  if (os_log_type_enabled(_log_log_0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "_dirhelper_relative_internal_block_invoke";
    _os_log_impl(&dword_19A0AC000, v0, OS_LOG_TYPE_DEFAULT, "%s: this process is sandboxed so will never return /var/tmp/ or /var/mobile/tmp. This message is only logged once per process.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

os_log_t ___log_block_invoke()
{
  result = os_log_create("com.apple.libcoreservices", &unk_19A0AEB3B);
  _log_log = result;
  return result;
}

os_log_t ___log_block_invoke_0()
{
  result = os_log_create("com.apple.libcoreservices", &unk_19A0AEB3B);
  _log_log_0 = result;
  return result;
}

char *__user_local_dirname(int a1, int a2, char *__dst, size_t __size)
{
  if (a2 != 1)
  {
    goto LABEL_7;
  }

  if (qword_1ED448A68 != -1)
  {
    __user_local_dirname_cold_1();
  }

  if (!qword_1ED448AD0 || !*qword_1ED448AD0 || strlcpy(__dst, qword_1ED448AD0, __size) >= __size)
  {
LABEL_7:
    __dst = 0;
    *__error() = 22;
  }

  return __dst;
}

uint64_t _libcoreservices_fork_child()
{
  qword_1ED448A68 = 0;
  qword_1ED448AC0 = 0;
  return _os_once();
}

char *_get_user_dir_suffix()
{
  if (qword_1ED448A68 != -1)
  {
    __user_local_dirname_cold_1();
  }

  result = qword_1ED448AD8;
  if (qword_1ED448AD8)
  {

    return strdup(result);
  }

  return result;
}

char *__user_relative_dirname(uint64_t a1, int a2)
{
  if (a2)
  {
    abort();
  }

  return _dirhelper_relative_internal();
}

uint64_t _dirhelper_update_tmpdir(const char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getenv("TMPDIR");
  v3 = v2;
  if (!v2 || (result = strcmp(v2, a1), result))
  {
    if (_log_onceToken_0 != -1)
    {
      _set_user_dir_suffix_cold_2();
    }

    v5 = _log_log_0;
    if (os_log_type_enabled(_log_log_0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "_dirhelper_update_tmpdir";
      v9 = 2080;
      v10 = v3;
      v11 = 2080;
      v12 = a1;
      _os_log_impl(&dword_19A0AC000, v5, OS_LOG_TYPE_DEFAULT, "%s: old=%s, new=%s", &v7, 0x20u);
    }

    result = setenv("TMPDIR", a1, 1);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___dirhelper_relative_internal_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!statfs_ext())
  {
    _dirhelper_relative_internal_sysDataDevice_0 = 0;
  }

  result = statfs_ext();
  if (!result)
  {
    _dirhelper_relative_internal_userDataDevice_0 = 0;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void makeDirectoryWithUIDAndGID_cold_6(NSObject *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = *__error();
  v6 = 136315650;
  v7 = "makeDirectory";
  v8 = 2080;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  _os_log_error_impl(&dword_19A0AC000, a1, OS_LOG_TYPE_ERROR, "%s: chmod error: %s (%d)", &v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void _dirhelper_relative_internal_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_19A0AC000, v0, OS_LOG_TYPE_DEBUG, "%s: no result for relativepath %s, err=%{errno}d", v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

void _dirhelper_relative_internal_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_19A0AC000, v0, OS_LOG_TYPE_ERROR, "%s: error for relativepath %s: %{errno}d", v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}