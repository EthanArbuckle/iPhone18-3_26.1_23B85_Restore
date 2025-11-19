void realtime_runtime_check_crash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a1;
  v10 = checkers;
  if (checkers)
  {
    v11 = &qword_2A14BFC98;
    do
    {
      a1 = (*(v10 + 8))();
      v12 = *v11++;
      v10 = v12;
    }

    while (v12);
  }

  v13 = per_thread_key(a1, a2);
  pthread_setspecific(v13, 0);
  vsnprintf(__str, 0xFFuLL, v9, &a9);
  _os_crash();
  __break(1u);
}

uint64_t per_thread_key(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals != -1)
  {
    per_thread_key_cold_1(a1, a2);
  }

  return qword_2A14BFCD8;
}

void realtime_runtime_check_start()
{
  if (checkers)
  {
    if (_MergedGlobals != -1)
    {
      per_thread_key_cold_1();
    }

    v0 = qword_2A14BFCD8;
    v1 = pthread_getspecific(qword_2A14BFCD8);
    if (v1)
    {
      realtime_runtime_check_start_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v9 = pthread_setspecific(v0, &root_node);
    v10 = checkers;
    if (checkers)
    {
      v11 = &qword_2A14BFC98;
      do
      {
        v9 = (*v10)(v9);
        v12 = *v11++;
        v10 = v12;
      }

      while (v12);
    }
  }
}

void realtime_runtime_check_stop()
{
  v0 = checkers;
  if (checkers)
  {
    v1 = &qword_2A14BFC98;
    do
    {
      (*(v0 + 8))();
      v2 = *v1++;
      v0 = v2;
    }

    while (v2);
    if (_MergedGlobals != -1)
    {
      per_thread_key_cold_1();
    }

    v3 = qword_2A14BFCD8;
    v4 = pthread_getspecific(qword_2A14BFCD8);
    if (v4 != &root_node)
    {
      realtime_runtime_check_stop_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    pthread_setspecific(v3, 0);
  }
}

uint64_t realtime_runtime_check_push_authorization(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (checkers)
  {
    v5 = result;
    if (_MergedGlobals != -1)
    {
      per_thread_key_cold_1();
    }

    v6 = qword_2A14BFCD8;
    result = pthread_getspecific(qword_2A14BFCD8);
    if (result)
    {
      v7 = *(result + 4) | v5;
      *a3 = v5;
      a3[1] = v7;
      *(a3 + 1) = result;
      result = pthread_setspecific(v6, a3);
      v8 = checkers;
      if (checkers)
      {
        v9 = &qword_2A14BFC98;
        do
        {
          result = (*(v8 + 16))(a3, a2);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

void *realtime_runtime_check_pop_authorization(void *result)
{
  if (checkers)
  {
    v1 = result;
    if (_MergedGlobals != -1)
    {
      per_thread_key_cold_1();
    }

    v2 = qword_2A14BFCD8;
    result = pthread_getspecific(qword_2A14BFCD8);
    if (result)
    {
      if (v1 == &root_node)
      {
        realtime_runtime_check_start_cold_2(result, v3, v4, v5, v6, v7, v8, v9);
      }

      if (result != v1)
      {
        realtime_runtime_check_start_cold_2(result, v3, v4, v5, v6, v7, v8, v9);
      }

      v10 = checkers;
      if (checkers)
      {
        v11 = &qword_2A14BFC98;
        do
        {
          (*(v10 + 24))(v1);
          v12 = *v11++;
          v10 = v12;
        }

        while (v12);
      }

      v13 = v1[1];

      return pthread_setspecific(v2, v13);
    }
  }

  return result;
}

void *realtime_runtime_checker_get_current_thread_storage()
{
  if (_MergedGlobals != -1)
  {
    per_thread_key_cold_1();
  }

  v1 = qword_2A14BFCD8;

  return pthread_getspecific(v1);
}

uint64_t realtime_runtime_check_register_checker(uint64_t a1)
{
  if (realtime_runtime_check_register_checker_once != -1)
  {
    realtime_runtime_check_register_checker_cold_1();
  }

  if (realtime_runtime_check_register_checker_realtime_runtime_check_disabled)
  {
    v2 = __error();
    result = 0;
    v4 = 1;
LABEL_9:
    *v2 = v4;
  }

  else
  {
    v5 = 0;
    while (checkers[v5])
    {
      if (++v5 == 4)
      {
        v2 = __error();
        result = 0;
        v4 = 28;
        goto LABEL_9;
      }
    }

    checkers[v5] = a1;
    return 1;
  }

  return result;
}

void __realtime_runtime_check_register_checker_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2998A2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "librealtime_safety was built with REALTIME_RUNTIME_CHECK_DISABLED, disabling realtime runtime checks", buf, 2u);
  }

  realtime_runtime_check_register_checker_realtime_runtime_check_disabled = 1;
  if (getenv("REALTIME_DISABLE_RUNTIME_CHECK"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_2998A2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "REALTIME_DISABLE_RUNTIME_CHECK is set, disabling realtime runtime checks", v2, 2u);
    }

    realtime_runtime_check_register_checker_realtime_runtime_check_disabled = 1;
  }

  if (getenv("METAL_CAPTURE_ENABLED"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_2998A2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Metal Capture is enabled, disabling realtime runtime checks", v1, 2u);
    }

    realtime_runtime_check_register_checker_realtime_runtime_check_disabled = 1;
  }

  if (getenv("MallocStackLogging"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v0 = 0;
      _os_log_impl(&dword_2998A2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "MallocStackLogging is enabled, disabling realtime runtime checks", v0, 2u);
    }

    realtime_runtime_check_register_checker_realtime_runtime_check_disabled = 1;
  }

  if (_MergedGlobals != -1)
  {
    __realtime_runtime_check_register_checker_block_invoke_cold_1();
  }
}

uint64_t create_thread_key(pthread_key_t *a1)
{
  result = pthread_key_create(a1, 0);
  if (result)
  {
    realtime_runtime_check_crash("can't create pthread key", v2, v3, v4, v5, v6, v7, v8, vars0);
  }

  return result;
}