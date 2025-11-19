int *libSystem_initializer()
{
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_1();
  }

  __libkernel_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_2();
  }

  __libplatform_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_3();
  }

  __pthread_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_4();
  }

  _libc_initializer();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_5();
  }

  _sanitizers_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_6();
  }

  __malloc_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_7();
  }

  _dyld_initializer();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_8();
  }

  __pthread_late_init();
  libdispatch_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_9();
  }

  _libxpc_initializer();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_10();
  }

  setenv("DT_BYPASS_LEAKS_CHECK", "1", 1);
  _libtrace_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_11();
  }

  _container_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_12();
  }

  __libdarwin_init();
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_13();
  }

  os_variant_has_internal_diagnostics();
  __malloc_late_init();
  if (getpid() != 1 && os_variant_allows_internal_security_policies() && _os_feature_enabled_impl())
  {
    __libkernel_init_late();
  }

  if (_simple_getenv())
  {
    v0 = xpc_pipe_create();
    if (!v0)
    {
      v4 = os_log_create("com.apple.libsystem", "duet.prewarm");
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v1 = v0;
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      v3 = empty;
      xpc_pipe_routine();
      xpc_release(v1);
      xpc_release(v3);
      goto LABEL_39;
    }

    xpc_release(v1);
    v4 = os_log_create("com.apple.libsystem", "duet.prewarm");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
LABEL_38:
      libSystem_initializer_cold_14(v4);
    }
  }

LABEL_39:
  if (MEMORY[0xFFFFFC100])
  {
    libSystem_initializer_cold_16();
  }

  result = __error();
  *result = 0;
  return result;
}

uint64_t libSystem_atfork_prepare(char a1)
{
  _dyld_dlopen_atfork_prepare();
  if ((a1 & 1) == 0)
  {
    _pthread_atfork_prepare_handlers();
  }

  _libSC_info_fork_prepare();
  xpc_atfork_prepare();
  dispatch_atfork_prepare();
  _dyld_atfork_prepare();
  _malloc_fork_prepare();
  cc_atfork_prepare();
  v2 = _libc_fork_prepare();

  return __pthread_atfork_prepare(v2);
}

uint64_t libSystem_atfork_parent(char a1)
{
  _pthread_atfork_parent();
  cc_atfork_parent();
  _malloc_fork_parent();
  _libc_fork_parent();
  _dyld_atfork_parent();
  dispatch_atfork_parent();
  xpc_atfork_parent();
  _libSC_info_fork_parent();
  result = _dyld_dlopen_atfork_parent();
  if ((a1 & 1) == 0)
  {

    return __pthread_atfork_parent_handlers(result);
  }

  return result;
}

uint64_t libSystem_atfork_child(char a1)
{
  _mach_fork_child();
  _pthread_atfork_child();
  cc_atfork_child();
  _malloc_fork_child();
  _libc_fork_child();
  _dyld_fork_child();
  dispatch_atfork_child();
  _libcoreservices_fork_child();
  _asl_fork_child();
  _notify_fork_child();
  xpc_atfork_child();
  _libtrace_fork_child();
  _libSC_info_fork_child();
  result = _dyld_dlopen_atfork_child();
  if ((a1 & 1) == 0)
  {

    return __pthread_atfork_child_handlers(result);
  }

  return result;
}

uint64_t libSystem_init_after_boot_tasks_4launchd()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return __libkernel_init_after_boot_tasks();
    }
  }

  return result;
}

const char *__asan_default_options()
{
  v0 = open("/System/Library/Preferences/com.apple.asan.options", 0);
  if (v0 == -1)
  {
    return "color=never:handle_segv=0:handle_sigbus=0:handle_sigill=0:handle_sigfpe=0:external_symbolizer_path=:log_path=stderr:log_exe_name=0:print_module_map=2:detect_odr_violation=0:halt_on_error=1";
  }

  v1 = v0;
  v2 = 1023;
  v3 = &dynamic_asan_opts;
  do
  {
    v4 = read(v1, &dynamic_asan_opts, v2);
    v2 -= v4;
  }

  while (v4 > 0);
  close(v1);
  if (!dynamic_asan_opts)
  {
    return "color=never:handle_segv=0:handle_sigbus=0:handle_sigill=0:handle_sigfpe=0:external_symbolizer_path=:log_path=stderr:log_exe_name=0:print_module_map=2:detect_odr_violation=0:halt_on_error=1";
  }

  return v3;
}