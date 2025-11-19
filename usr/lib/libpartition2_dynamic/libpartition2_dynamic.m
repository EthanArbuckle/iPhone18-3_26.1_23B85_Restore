void sub_2997D2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2997D3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2997D320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v5, 8);
}

void __destroy_helper_block_e8_32s40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

uint64_t _lp2_delete_directory_contents(const char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  value = 0;
  v2 = removefile_state_alloc();
  removefile_state_set(v2, 1u, _lp2_delete_directory_contents_confirm);
  removefile_state_set(v2, 2u, &value);
  removefile_state_set(v2, 3u, _lp2_delete_directory_contents_error);
  removefile_state_set(v2, 4u, &value);
  _os_log_pack_size();
  MEMORY[0x2A1C7C4A8]();
  v3 = _os_log_pack_fill();
  *v3 = 136380675;
  *(v3 + 4) = a1;
  _LPLogPack(1);
  if (removefile(a1, v2, 3u))
  {
    if (!value)
    {
      value = *__error();
    }
  }

  else
  {
    strcpy(path, ".XXXXXXXX");
    v4 = open(a1, 1048832);
    if (v4 == -1)
    {
      v8 = *__error();
    }

    else
    {
      v5 = v4;
      v6 = mkstempsat_np(v4, path, 8);
      if (v6 == -1)
      {
        v8 = *__error();
      }

      else
      {
        v7 = v6;
        if (unlinkat(v5, path, 0) || fcopyfile(v7, v5, 0, 5u))
        {
          v8 = *__error();
        }

        else
        {
          v8 = 0;
        }

        close(v7);
      }

      close(v5);
    }

    value = v8;
    if (v8)
    {
      _os_log_pack_size();
      MEMORY[0x2A1C7C4A8]();
      v9 = _os_log_pack_fill();
      v10 = strerror(value);
      *v9 = 136380931;
      *(v9 + 4) = a1;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v10;
      _LPLogPack(1);
    }
  }

  _os_log_pack_size();
  MEMORY[0x2A1C7C4A8]();
  v11 = _os_log_pack_fill();
  v12 = value;
  v13 = "failed";
  *v11 = 136381187;
  *(v11 + 4) = a1;
  if (!v12)
  {
    v13 = "succeeded";
  }

  *(v11 + 12) = 2080;
  *(v11 + 14) = v13;
  *(v11 + 22) = 1024;
  *(v11 + 24) = v12;
  _LPLogPack(1);
  removefile_state_free(v2);
  result = value;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _execForLibpartition(const char **a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v32 = 0;
  *v34 = -1;
  if (pipe(v34))
  {
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v2 = _os_log_pack_fill();
    v3 = *a1;
    v4 = __error();
    v5 = strerror(*v4);
    *v2 = 136315394;
    *(v2 + 4) = v3;
    *(v2 + 12) = 2080;
    *(v2 + 14) = v5;
    _LPLogPack(1);
    v6 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0;
  posix_spawn_file_actions_init(&v31);
  posix_spawn_file_actions_adddup2(&v31, v34[1], 1);
  posix_spawn_file_actions_addclose(&v31, v34[0]);
  posix_spawnattr_init(&v30);
  posix_spawnattr_setflags(&v30, 0x4000);
  v7 = posix_spawn(&v32, *a1, &v31, 0, a1, 0);
  if (v7)
  {
    v6 = v7;
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v8 = _os_log_pack_fill();
    v9 = *a1;
    v10 = strerror(v6);
    *v8 = 136315394;
    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    _LPLogPack(1);
    close(v34[0]);
    goto LABEL_5;
  }

  bzero(v33, 0x400uLL);
  v13 = v34[0];
  close(v34[1]);
  v34[1] = -1;
  v14 = read(v13, v33, 0x400uLL);
  if (v14 >= 1)
  {
    do
    {
      execlogfunction(v14, v15, v16, v17, v18, v19, v20, v21, v14);
      v14 = read(v13, v33, 0x400uLL);
    }

    while (v14 > 0);
  }

  v29 = 0;
  if (waitpid(v32, &v29, 0) == -1)
  {
    v6 = *__error();
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v22 = _os_log_pack_fill();
    v23 = *a1;
    v24 = __error();
    v25 = strerror(*v24);
    *v22 = 136315394;
    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    *(v22 + 14) = v25;
    _LPLogPack(1);
  }

  else
  {
    if ((v29 & 0x7F) == 0x7F)
    {
      _os_log_pack_size();
      MEMORY[0x2A1C7C4A8]();
      v26 = _os_log_pack_fill();
      v27 = *a1;
      v28 = v29 >> 8;
    }

    else
    {
      if ((v29 & 0x7F) == 0)
      {
        v6 = BYTE1(v29);
        goto LABEL_5;
      }

      _os_log_pack_size();
      MEMORY[0x2A1C7C4A8]();
      v26 = _os_log_pack_fill();
      v27 = *a1;
      v28 = v29 & 0x7F;
    }

    *v26 = 136315394;
    *(v26 + 4) = v27;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v28;
    _LPLogPack(1);
    v6 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawnattr_destroy(&v30);
  posix_spawn_file_actions_destroy(&v31);
  if (v34[1] != -1)
  {
    close(v34[1]);
  }

LABEL_7:
  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

char *___is_running_in_ramdisk_block_invoke()
{
  v4 = *MEMORY[0x29EDCA608];
  bzero(__s1, 0x400uLL);
  v2 = 1024;
  result = sysctlbyname("kern.bootargs", __s1, &v2, 0, 0);
  if (!result)
  {
    result = strstr(__s1, "-restore");
    if (result)
    {
      _is_running_in_ramdisk_is_ramdisk = 1;
    }
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _lp2_delete_directory_contents_error(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = __error();
  v6 = *v5;
  *a3 = *v5;
  _os_log_pack_size();
  MEMORY[0x2A1C7C4A8]();
  v7 = _os_log_pack_fill();
  v8 = strerror(v6);
  *v7 = 136380931;
  *(v7 + 4) = a2;
  *(v7 + 12) = 2080;
  *(v7 + 14) = v8;
  _LPLogPack(1);
  v9 = *MEMORY[0x29EDCA608];
  return 2;
}

void execlogfunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%.*s" arguments:&a9];
  _os_log_pack_size();
  MEMORY[0x2A1C7C4A8]();
  v10 = _os_log_pack_fill();
  *v10 = 138412290;
  *(v10 + 4) = v9;
  _LPLogPack(3);

  v11 = *MEMORY[0x29EDCA608];
}

id _LPLogObject()
{
  if (_LPLogObject_onceToken != -1)
  {
    _LPLogObject_cold_1();
  }

  v1 = _LPLogObject_obj;

  return v1;
}

void _LPLogPack(int a1)
{
  if (sLogLevel >= a1)
  {
    v2 = _LPLogObject();
    v3 = os_log_pack_compose();

    if (sLogToStandardOut == 1)
    {
      fprintf(*MEMORY[0x29EDCA620], "%s\n", v3);
    }

    if (sLogToOSLog == 1)
    {
      v4 = _LPLogObject();
      os_log_pack_send();
    }

    if (sLogToConsole == 1)
    {
      dprintf(sConsoleFD, "%s\n", v3);
    }

    free(v3);
  }
}

uint64_t LPLogSetOutput(char a1)
{
  sLogToStandardOut = a1 & 1;
  sLogToOSLog = (a1 & 2) != 0;
  sLogToConsole = (a1 & 4) != 0;
  result = sConsoleFD;
  if ((a1 & 4) != 0)
  {
    if (sConsoleFD == -1)
    {
      result = open("/dev/console", 10);
      sConsoleFD = result;
      if (result == -1)
      {
        sLogToConsole = 0;
      }
    }
  }

  else
  {
    if (sConsoleFD != -1)
    {
      result = close(sConsoleFD);
    }

    sConsoleFD = -1;
  }

  return result;
}

BOOL iterateSafely(uint64_t a1, int a2, id a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  if (a2 < 1)
  {
    v10 = 0;
LABEL_10:
    _os_log_pack_size();
    MEMORY[0x2A1C7C4A8]();
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "_Bool iterateSafely(io_iterator_t, int, void (^__strong)(io_object_t), void (^__strong)(void))";
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2;
    _LPLogPack(1);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = IOIteratorNext(a1);
      if (v11)
      {
        v12 = v11;
        do
        {
          v7[2](v7, v12);
          IOObjectRelease(v12);
          v12 = IOIteratorNext(a1);
        }

        while (v12);
      }

      if (IOIteratorIsValid(a1))
      {
        break;
      }

      MEMORY[0x29C29F210](a1);
      v8[2](v8);
      v10 = ++v9 < a2;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v10;
}