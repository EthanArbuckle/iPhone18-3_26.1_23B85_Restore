uint64_t simple_session_create(uint64_t a1)
{
  v2 = [SimpleSession alloc];

  return [(SimpleSession *)v2 initWithFlags:a1];
}

uint64_t simple_session_set_homedir_size(void *a1, uint64_t a2, CFErrorRef *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = [v5 session];
  v7 = session_set_homedir_size(v6, a2);

  if (v7)
  {
    v8 = _simple_session_log();

    if (v8)
    {
      v9 = _simple_session_log();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("simple_session_set_homedir_size", "simple_session.m", 73, "com.apple.security.cryptex.posix", v7, 0, v10);
    free(v10);
    if (a3 && Error)
    {
      v12 = _simple_session_log();

      if (v12)
      {
        v13 = _simple_session_log();
        os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        v14 = _os_log_send_and_compose_impl();
      }

      else
      {
        v14 = _os_log_send_and_compose_impl();
      }

      v16 = createError("simple_session_set_homedir_size", "simple_session.m", 78, "com.apple.security.cryptex", 14, Error, v14);
      free(v14);
      *a3 = v16;
      goto LABEL_13;
    }

    if (Error)
    {
LABEL_13:
      CFRelease(Error);
      v15 = 0;
      goto LABEL_14;
    }
  }

  v15 = 1;
LABEL_14:

  v17 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_2986C1658(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

id _simple_session_log()
{
  if (_simple_session_log_onceToken != -1)
  {
    _simple_session_log_cold_1();
  }

  v1 = _simple_session_log_trampoline_log;

  return v1;
}

uint64_t simple_session_add_session_environment(void *a1, void *a2, CFErrorRef *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v7 = [v5 session];
  v8 = session_add_session_environment(v7, v6);

  if (v8)
  {
    v9 = _simple_session_log();

    if (v9)
    {
      v10 = _simple_session_log();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      v11 = _os_log_send_and_compose_impl();
    }

    Error = createError("simple_session_add_session_environment", "simple_session.m", 91, "com.apple.security.cryptex.posix", v8, 0, v11);
    free(v11);
    if (a3 && Error)
    {
      v13 = _simple_session_log();

      if (v13)
      {
        v14 = _simple_session_log();
        os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        v15 = _os_log_send_and_compose_impl();
      }

      else
      {
        v15 = _os_log_send_and_compose_impl();
      }

      v17 = createError("simple_session_add_session_environment", "simple_session.m", 96, "com.apple.security.cryptex", 14, Error, v15);
      free(v15);
      *a3 = v17;
      goto LABEL_13;
    }

    if (Error)
    {
LABEL_13:
      CFRelease(Error);
      v16 = 0;
      goto LABEL_14;
    }
  }

  v16 = 1;
LABEL_14:

  v18 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_2986C19B0(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t simple_session_activate(void *a1, CFErrorRef *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = [v3 session];
  v5 = session_activate(v4);

  if (v5)
  {
    v6 = _simple_session_log();

    if (v6)
    {
      v7 = _simple_session_log();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("simple_session_activate", "simple_session.m", 110, "com.apple.security.cryptex.posix", v5, 0, v8);
  }

  else
  {
    v9 = [v3 session];
    v10 = session_start(v9);

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = _simple_session_log();

    if (v11)
    {
      v12 = _simple_session_log();
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("simple_session_activate", "simple_session.m", 117, "com.apple.security.cryptex.posix", v10, 0, v8);
  }

  v14 = Error;
  free(v8);
  if (a2 && v14)
  {
    v15 = _simple_session_log();

    if (v15)
    {
      v16 = _simple_session_log();
      os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      v17 = _os_log_send_and_compose_impl();
    }

    else
    {
      v17 = _os_log_send_and_compose_impl();
    }

    v19 = createError("simple_session_activate", "simple_session.m", 124, "com.apple.security.cryptex", 14, v14, v17);
    free(v17);
    *a2 = v19;
    goto LABEL_19;
  }

  if (v14)
  {
LABEL_19:
    CFRelease(v14);
    v18 = 0;
    goto LABEL_20;
  }

LABEL_16:
  v18 = 1;
LABEL_20:

  v20 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t simple_session_stop(void *a1, CFErrorRef *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = [v3 session];
  v5 = session_stop(v4);

  if (v5)
  {
    v6 = _simple_session_log();

    if (v6)
    {
      v7 = _simple_session_log();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("simple_session_stop", "simple_session.m", 139, "com.apple.security.cryptex.posix", v5, 0, v8);
    free(v8);
    if (a2 && Error)
    {
      v10 = _simple_session_log();

      if (v10)
      {
        v11 = _simple_session_log();
        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        v12 = _os_log_send_and_compose_impl();
      }

      else
      {
        v12 = _os_log_send_and_compose_impl();
      }

      v14 = createError("simple_session_stop", "simple_session.m", 146, "com.apple.security.cryptex", 14, Error, v12);
      free(v12);
      *a2 = v14;
      goto LABEL_13;
    }

    if (Error)
    {
LABEL_13:
      CFRelease(Error);
      v13 = 0;
      goto LABEL_14;
    }
  }

  v13 = 1;
LABEL_14:

  v15 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_2986C20D8(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

char *simple_session_copy_homedir(void *a1)
{
  v1 = [a1 session];
  homedir = session_get_homedir(v1);
  v3 = strdup(homedir);

  return v3;
}

uint64_t simple_session_get_uuid(void *a1, unsigned __int8 *a2)
{
  v3 = [a1 session];
  uuid = session_get_uuid(v3, a2);

  return uuid;
}

uint64_t simple_session_get_uid(void *a1)
{
  v1 = [a1 session];
  uid = session_get_uid(v1);

  return uid;
}

char *simple_session_copy_name(void *a1)
{
  v1 = [a1 session];
  name = session_get_name(v1);
  v3 = strdup(name);

  return v3;
}

uint64_t ___simple_session_log_block_invoke()
{
  _simple_session_log_trampoline_log = os_log_create("com.apple.libcryptex", "simple_session_spi");

  return MEMORY[0x2A1C71028]();
}

CFErrorRef img4_chip_instance_from_xpc(void *a1, uint64_t a2)
{
  v44[2] = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = v3;
  v44[0] = 0;
  *(v44 + 6) = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v43, 0, 19);
  if (!v3)
  {
    LOWORD(v36) = 0;
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 94, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v3, "img4_chip_omit", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_omit";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 98, "com.apple.security.cryptex", 11, 0, v5);
LABEL_23:
    v11 = Error;
    free(v5);
    goto LABEL_24;
  }

  v7 = v35;
  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cepo", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v8 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_bord", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v9 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_chip", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v10 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_sdom", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = v35;
  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_ecid", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_ecid";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 103, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v14 = v35;
  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cpro", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_cpro";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v15);
LABEL_79:
    v20 = v16;
    free(v15);
    v11 = v20;
    goto LABEL_24;
  }

  v17 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_cpro";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_csec", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_csec";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v18 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_csec";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_epro", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_epro";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v33 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_epro";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esec", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_esec";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v32 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_esec";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_iuou", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_iuou";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v31 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_iuou";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_rsch", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_rsch";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v30 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_rsch";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_euou", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_euou";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v29 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_euou";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esdm", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_esdm";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v28 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_esdm";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fpgt", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_fpgt";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v27 = v35;
  if (v35 >= 2)
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_fpgt";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fchp", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_fchp";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v26 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_fchp";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_type", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_type";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v25 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_type";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_styp", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_styp";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v24 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_styp";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v35 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_clas", &v35))
  {
    v36 = 136315138;
    v37 = "img4_chip_clas";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v19 = v35;
  if (HIDWORD(v35))
  {
    v36 = 134218242;
    v37 = v35;
    v38 = 2080;
    v39 = "img4_chip_clas";
    v15 = _os_log_send_and_compose_impl();
    v16 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v15);
    goto LABEL_79;
  }

  v21 = v40;
  *(a2 + 77) = v41;
  v22 = v43[0];
  *(a2 + 93) = v42;
  *(a2 + 109) = v22;
  *a2 = 6;
  *(a2 + 2) = v44[0];
  *(a2 + 8) = *(v44 + 6);
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 28) = v9;
  *(a2 + 32) = v10;
  *(a2 + 36) = v34;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 49) = v18 & 1;
  *(a2 + 50) = v33 & 1;
  *(a2 + 51) = v32 & 1;
  *(a2 + 52) = v31 & 1;
  *(a2 + 53) = v30 & 1;
  *(a2 + 54) = v29 & 1;
  *(a2 + 56) = v28;
  *(a2 + 60) = v27 & 1;
  v23 = *(v43 + 15);
  *(a2 + 61) = v21;
  *(a2 + 124) = v23;
  *(a2 + 128) = v26;
  *(a2 + 132) = v25;
  *(a2 + 136) = v24;
  *(a2 + 140) = v19;
  v11 = 0;
LABEL_24:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

uint64_t _IORegistryExchangeWithFirstChildOfClass(io_object_t *a1, const char *a2)
{
  object = 0;
  v2 = 2;
  if (a1 && a2)
  {
    if (!MEMORY[0x29C28E480](*a1, "IOService", &object))
    {
      v6 = IOIteratorNext(object);
      if (v6)
      {
        v7 = v6;
        while (!IOObjectConformsTo(v7, a2))
        {
          IOObjectRelease(v7);
          v7 = IOIteratorNext(object);
          if (!v7)
          {
            v2 = 2;
            goto LABEL_4;
          }
        }

        IOObjectRelease(*a1);
        v2 = 0;
        *a1 = v7;
      }
    }

LABEL_4:
    if (object)
    {
      IOObjectRelease(object);
    }
  }

  return v2;
}

uint64_t _cryptex_install_core(void *a1, uint64_t a2)
{
  v75 = *MEMORY[0x29EDCA608];
  v3 = _g;
  v43 = *(a1[22] + 24);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 32;
  if (a2)
  {
    v42 = *(a2 + 64);
    if (_cryptex_attr_get_persistence(a2) >= 3)
    {
      v5 = a1[2];
      v6 = *__error();
      v7 = a1[4];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "[anonymous]";
        if (v5)
        {
          v8 = v5;
        }

        *buf = 136446210;
        v45 = v8;
        _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Installing as ephemeral", buf, 0xCu);
      }

      *__error() = v6;
    }

    _cryptex_attr_get_nonce_persistence(a2);
  }

  image_asset = cryptex_core_get_image_asset();
  if (!image_asset)
  {
    v15 = a1[2];
    v16 = *__error();
    v17 = a1[4];
    v18 = 22;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = "[anonymous]";
      if (v15)
      {
        v19 = v15;
      }

      *buf = 136446466;
      v45 = v19;
      v46 = 1024;
      LODWORD(v47) = 22;
      v20 = "%{public}s: cryptex doesn't contain image asset: %{darwin.errno}d";
      goto LABEL_23;
    }

LABEL_24:
    v23 = 0;
    v24 = 0;
    goto LABEL_46;
  }

  v10 = *(image_asset + 16);
  tc_asset = cryptex_core_get_tc_asset();
  if (!tc_asset)
  {
    v21 = a1[2];
    v16 = *__error();
    v17 = a1[4];
    v18 = 22;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = "[anonymous]";
      if (v21)
      {
        v22 = v21;
      }

      *buf = 136446466;
      v45 = v22;
      v46 = 1024;
      LODWORD(v47) = 22;
      v20 = "%{public}s: cryptex doesn't contain trust cache: %{darwin.errno}d";
LABEL_23:
      _os_log_impl(&dword_2986C0000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v12 = *(tc_asset + 16);
  info_asset = cryptex_core_get_info_asset();
  if (info_asset)
  {
    v14 = *(info_asset + 16);
  }

  volumehash_asset = cryptex_core_get_volumehash_asset();
  if (volumehash_asset)
  {
    v26 = *(volumehash_asset + 16);
  }

  asset = cryptex_core_get_asset();
  if (cryptex_core_get_asset())
  {
    v28 = *(asset + 16);
  }

  v24 = xpc_dictionary_create(0, 0, 0);
  result = MEMORY[0x29C28F4F0]();
  if (result != MEMORY[0x29EDCAA00])
  {
    __break(1u);
    return result;
  }

  v23 = _cryptex_copy_connected_actor(v3, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_install_pack();
  v30 = cryptex_actor_trap();
  if (v30)
  {
    v18 = v30;
    v31 = v23[2];
    v16 = *__error();
    v32 = v23[4];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = "[anonymous]";
      if (v31)
      {
        v33 = v31;
      }

      *buf = 136446466;
      v45 = v33;
      v46 = 1024;
      LODWORD(v47) = v18;
      v34 = "%{public}s: install rpc: %{darwin.errno}d";
LABEL_40:
      _os_log_impl(&dword_2986C0000, v32, OS_LOG_TYPE_ERROR, v34, buf, 0x12u);
    }
  }

  else
  {
    v35 = codex_install_reply_unpack();
    if (!v35)
    {
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      v38 = v23[2];
      v16 = *__error();
      v39 = v23[4];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = "[anonymous]";
        if (v38)
        {
          v40 = v38;
        }

        *buf = 136446722;
        v45 = v40;
        v46 = 2080;
        v47 = 0;
        v48 = 2080;
        v49 = 0;
        _os_log_impl(&dword_2986C0000, v39, OS_LOG_TYPE_DEBUG, "%{public}s: installed cryptex: name = %s, mount path = %s", buf, 0x20u);
      }

      v18 = 0;
      goto LABEL_46;
    }

    v18 = v35;
    v36 = v23[2];
    v16 = *__error();
    v32 = v23[4];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = "[anonymous]";
      if (v36)
      {
        v37 = v36;
      }

      *buf = 136446466;
      v45 = v37;
      v46 = 1024;
      LODWORD(v47) = v18;
      v34 = "%{public}s: bad reply from daemon: %{darwin.errno}d";
      goto LABEL_40;
    }
  }

LABEL_46:
  *__error() = v16;
  rpc_destroy(&v50);
  rpc_destroy(v73);
  if (v24)
  {
    os_release(v24);
  }

  if (v23)
  {
    os_release(v23);
  }

  v41 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t _cryptex_copy_list_lossy(void *a1, void *a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v34 = 0;
  v4 = cryptex_actor_create();
  v5 = v4[4];
  v6 = hdi_copy_mounted(&v34, &v33, v5);
  if (v6)
  {
    v7 = v6;
    v8 = v4[2];
    v9 = *__error();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 136446466;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_impl(&dword_2986C0000, v5, OS_LOG_TYPE_ERROR, "%{public}s: copy attached dmgs: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v9;
LABEL_37:
    os_release(v4);
    v28 = v7;
    goto LABEL_38;
  }

  v11 = v33;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v12 = malloc_type_calloc(v11, 0xE10uLL, 0x8A375538uLL);
      if (v12)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v12 = malloc_type_calloc(v11, 0xE10uLL, 0x8709206FuLL);
    if (!v12)
    {
      _cryptex_copy_list_lossy_cold_1(v39, buf);
    }
  }

  v13 = v12;
  v31 = a1;
  v32 = a2;
  if (v33)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v34 + 3582 * v14;
      bzero(buf, 0xE10uLL);
      *__src = 0u;
      *v37 = 0u;
      v17 = v4[2];
      v18 = *__error();
      v19 = v4[4];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v39 = 136446466;
        v20 = "[anonymous]";
        if (v17)
        {
          v20 = v17;
        }

        v40 = v20;
        v41 = 2080;
        v42 = v16;
        _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: mount: %s", v39, 0x16u);
      }

      *__error() = v18;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v21 = strdup(v16);
          if (v21)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v21 = strdup(v16);
        if (!v21)
        {
          _cryptex_copy_list_lossy_cold_2(v16, &v35, v39);
        }
      }

      v22 = v21;
      v23 = cryptex_core_parse_hdiid();
      v24 = *__error();
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v23)
      {
        if (v25)
        {
          *v39 = 136446466;
          v26 = "[anonymous]";
          if (v17)
          {
            v26 = v17;
          }

          v40 = v26;
          v41 = 2080;
          v42 = v16;
          _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: not a cryptex: %s", v39, 0x16u);
        }

        *__error() = v24;
      }

      else
      {
        if (v25)
        {
          *v39 = 136446466;
          v27 = "[anonymous]";
          if (v17)
          {
            v27 = v17;
          }

          v40 = v27;
          v41 = 2080;
          v42 = v16;
          _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: found cryptex: %s", v39, 0x16u);
        }

        *__error() = v24;
        strncpy(&buf[8], __src[1], 0xFFuLL);
        strncpy(&buf[263], v37[0], 0xFFuLL);
        strncpy(&buf[518], v16 + 510, 0x400uLL);
        strncpy(&buf[1542], v16 + 1534, 0x400uLL);
        strncpy(&buf[2566], v16 + 2558, 0x400uLL);
        memcpy(&v13[3600 * v15++], buf, 0xE10uLL);
      }

      free(v22);
      ++v14;
    }

    while (v14 < v33);
  }

  else
  {
    v15 = 0;
  }

  v7 = 0;
  v28 = 0;
  *v31 = v13;
  *v32 = v15;
  if (v4)
  {
    goto LABEL_37;
  }

LABEL_38:
  free(v34);
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t _cryptex_copy_list(void *a1, size_t *a2)
{
  v97 = *MEMORY[0x29EDCA608];
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 32;
  v4 = _cryptex_copy_connected_actor(_g, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_list_pack();
  v5 = cryptex_actor_trap();
  if (v5)
  {
    v6 = v5;
    v7 = v4[2];
    v8 = *__error();
    v9 = v4[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      *buf = 136446466;
      v90 = v10;
      v91 = 1024;
      LODWORD(v92) = v6;
      v11 = "%{public}s: list rpc: %{darwin.errno}d";
LABEL_11:
      _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = codex_list_reply_unpack();
  if (v12)
  {
    v6 = v12;
    v13 = v4[2];
    v8 = *__error();
    v9 = v4[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = "[anonymous]";
      if (v13)
      {
        v14 = v13;
      }

      *buf = 136446466;
      v90 = v14;
      v91 = 1024;
      LODWORD(v92) = v6;
      v11 = "%{public}s: bad reply from daemon: %{darwin.errno}d";
      goto LABEL_11;
    }

LABEL_12:
    *__error() = v8;
    goto LABEL_13;
  }

  v56 = a1;
  v57 = a2;
  count = xpc_array_get_count(0);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v18 = malloc_type_calloc(count, 0xE10uLL, 0x8A375538uLL);
      if (v18)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v18 = malloc_type_calloc(count, 0xE10uLL, 0x8709206FuLL);
    if (!v18)
    {
      _cryptex_copy_list_lossy_cold_1(&v63, buf);
    }
  }

  v19 = v18;
  if (!count)
  {
LABEL_51:
    v6 = 0;
    *v56 = v19;
    *v57 = count;
    v19 = 0;
    goto LABEL_68;
  }

  v20 = 0;
  v6 = 0;
  v21 = 0;
  v60 = count;
  while (1)
  {
    value = xpc_array_get_value(0, v21);
    v23 = value;
    if (!value || MEMORY[0x29C28F4F0](value) != MEMORY[0x29EDCA9E0])
    {
      v45 = v4[2];
      v46 = *__error();
      v47 = v4[4];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v48 = "[anonymous]";
        if (v45)
        {
          v48 = v45;
        }

        v90 = v48;
        v91 = 2048;
        v92 = v21;
        v93 = 2112;
        v94 = v23;
        v95 = 1024;
        v96 = 72;
        v49 = "%{public}s: bad reply from daemon: i = %lu, entry = %@: %{darwin.errno}d";
        goto LABEL_60;
      }

LABEL_61:
      *__error() = v46;
      goto LABEL_67;
    }

    v24 = _xpc_plist_value_copy(&_codex_list_name, v23);
    if (!v24)
    {
      v50 = v4[2];
      v46 = *__error();
      v47 = v4[4];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v51 = "[anonymous]";
        if (v50)
        {
          v51 = v50;
        }

        v90 = v51;
        v91 = 2048;
        v92 = v21;
        v93 = 2112;
        v94 = 0;
        v95 = 1024;
        v96 = 72;
        v49 = "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d";
LABEL_60:
        _os_log_impl(&dword_2986C0000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0x26u);
        goto LABEL_61;
      }

      goto LABEL_61;
    }

    v25 = v24;
    v26 = _xpc_plist_value_copy(&_codex_list_version, v23);
    if (!v26)
    {
      break;
    }

    v27 = v26;
    v28 = _xpc_plist_value_copy(&_codex_list_devpath, v23);
    if (v28)
    {
      v29 = v28;
      xstring = _xpc_plist_value_copy(&_codex_list_subdevpath, v23);
      if (xstring)
      {
        v30 = _xpc_plist_value_copy(&_codex_list_mntpath, v23);
        v61 = v30 != 0;
        if (v30)
        {
          v31 = v30;
          v58 = _xpc_plist_value_copy(&_codex_list_error, v23);
          v59 = xpc_int64_get_value(v58);
          *&v19[v20] = 0;
          xpc_string_get_string_ptr(v25);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v27);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v29);
          __strlcpy_chk();
          xpc_string_get_string_ptr(xstring);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v31);
          __strlcpy_chk();
          *&v19[v20 + 3592] = v59;
          if (v58)
          {
            os_release(v58);
          }

          os_release(v31);
        }

        else
        {
          v41 = v4[2];
          v42 = *__error();
          v43 = v4[4];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v44 = "[anonymous]";
            if (v41)
            {
              v44 = v41;
            }

            v90 = v44;
            v91 = 2048;
            v92 = v21;
            v93 = 2112;
            v94 = 0;
            v95 = 1024;
            v96 = 72;
            _os_log_impl(&dword_2986C0000, v43, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
          }

          *__error() = v42;
          v6 = 72;
        }

        os_release(xstring);
      }

      else
      {
        v37 = v4[2];
        v38 = *__error();
        v39 = v4[4];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v40 = "[anonymous]";
          if (v37)
          {
            v40 = v37;
          }

          v90 = v40;
          v91 = 2048;
          v92 = v21;
          v93 = 2112;
          v94 = 0;
          v95 = 1024;
          v96 = 72;
          _os_log_impl(&dword_2986C0000, v39, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
        }

        v61 = 0;
        *__error() = v38;
        v6 = 72;
      }

      count = v60;
      os_release(v29);
      v36 = v61;
    }

    else
    {
      v32 = v4[2];
      v33 = *__error();
      v34 = v4[4];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v35 = "[anonymous]";
        if (v32)
        {
          v35 = v32;
        }

        v90 = v35;
        v91 = 2048;
        v92 = v21;
        v93 = 2112;
        v94 = 0;
        v95 = 1024;
        v96 = 72;
        _os_log_impl(&dword_2986C0000, v34, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
      }

      v36 = 0;
      *__error() = v33;
      v6 = 72;
      count = v60;
    }

    os_release(v27);
    os_release(v25);
    if (!v36)
    {
      goto LABEL_68;
    }

    ++v21;
    v20 += 3600;
    if (count == v21)
    {
      goto LABEL_51;
    }
  }

  v52 = v4[2];
  v53 = *__error();
  v54 = v4[4];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v55 = "[anonymous]";
    if (v52)
    {
      v55 = v52;
    }

    v90 = v55;
    v91 = 2048;
    v92 = v21;
    v93 = 2112;
    v94 = 0;
    v95 = 1024;
    v96 = 72;
    _os_log_impl(&dword_2986C0000, v54, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
  }

  *__error() = v53;
  os_release(v25);
LABEL_67:
  v6 = 72;
LABEL_68:
  free(v19);
LABEL_13:
  rpc_destroy(&v64);
  rpc_destroy(v87);
  if (v4)
  {
    os_release(v4);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

void _cryptex_signing_service_dealloc(uint64_t a1)
{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1 + 288;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3 + 40 * v2;
    close_drop_optional_np();
    v7 = *(v6 + 8);
    if (v7 != -1 && munmap(v7, *(v6 + 16)) == -1)
    {
      _cryptex_signing_service_dealloc_cold_1(&v11, v12);
    }

    free(*(v6 + 32));
    v4 = 0;
    *(v6 + 32) = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  free(*(a1 + 48));
  *(a1 + 48) = 0;
  v8 = *(a1 + 280);
  if (v8)
  {
    dispatch_release(v8);
  }

  img4_buff_dealloc();
  v9 = *(a1 + 56);
  if (v9)
  {
    os_release(v9);
  }

  v10 = *MEMORY[0x29EDCA608];

  object_proto_destroy(a1 + 16);
}

uint64_t cryptex_signing_service_create(uint64_t a1)
{
  v2 = _cryptex_signing_service_alloc();
  *(v2 + 56) = 0;
  *(v2 + 40) = a1;
  v3 = img4_chip_select_personalized_ap();
  v4 = MEMORY[0x29EDC96E0];
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  *(v2 + 80) = ccsha384_di();
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 280) = dispatch_semaphore_create(0);
  *(v2 + 316) = -1;
  *(v2 + 296) = -1;
  *(v2 + 356) = -1;
  *(v2 + 336) = -1;
  object_proto_init(v2 + 16, "com.apple.security.libcryptex", "signing-service");
  return v2;
}

CFErrorRef cryptex_signing_service_set_cryptex_core(uint64_t a1, void *object)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = os_retain(object);
  *(a1 + 56) = v3;
  v4 = v3[21];
  if (v4 && (*(v4 + 40) & 1) != 0)
  {
    cryptex_signing_service_set_tss_url(a1, "https://diavlo.apple.com:443");
  }

  nonce_domain = cryptex_core_get_nonce_domain();
  v6 = nonce_domain;
  if (nonce_domain || !*(a1 + 72))
  {
    v7 = nonce_domain;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v8 = *(a1 + 16);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      *buf = 136446466;
      v24 = v8;
      v25 = 1024;
      LODWORD(v26) = v6;
    }

    else
    {
      v12 = *(a1 + 16);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *buf = 136446466;
      v24 = v12;
      v25 = 1024;
      LODWORD(v26) = nonce_domain;
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = 382;
    goto LABEL_19;
  }

  v9 = cryptex_core_copy_nonce_domain_desc();
  if (v9)
  {
    v10 = v9;
    v7 = v9;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *buf = 136446466;
      v24 = v11;
      v25 = 1024;
      LODWORD(v26) = v10;
    }

    else
    {
      v22 = *(a1 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446466;
      v24 = v22;
      v25 = 1024;
      LODWORD(v26) = v9;
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = 389;
LABEL_19:
    Error = createError("cryptex_signing_service_set_cryptex_core", "signing_service.c", v14, "com.apple.security.cryptex.posix", v7, 0, v13);
    free(v13);
    goto LABEL_20;
  }

  v18 = *(a1 + 16);
  v19 = *__error();
  v20 = *(a1 + 32);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = "[anonymous]";
    if (v18)
    {
      v21 = v18;
    }

    *buf = 136446466;
    v24 = v21;
    v25 = 2080;
    v26 = 0;
    _os_log_impl(&dword_2986C0000, v20, OS_LOG_TYPE_DEBUG, "%{public}s: signing with nonce from %s", buf, 0x16u);
  }

  Error = 0;
  *__error() = v19;
LABEL_20:
  free(0);
  v16 = *MEMORY[0x29EDCA608];
  return Error;
}

char *cryptex_signing_service_set_tss_url(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  free(*(a1 + 48));
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      cryptex_signing_service_set_tss_url_cold_1(a2, &v6, v7);
    }
  }

  *(a1 + 48) = result;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_signing_service_set_image(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40 * *(a2 + 40);
  v4 = *(v3 + 316);
  *(v3 + 288) = a2;
  result = _xferfd_unguarded(a3);
  *(v3 + 316) = result;
  if ((v4 & 0x80000000) == 0)
  {
    result = close(v4);
    if (result == -1)
    {
      cryptex_signing_service_set_image_cold_1(&v7, v8);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void cryptex_signing_service_set_image_bytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 40 * *(a2 + 40);
  v7 = *(v6 + 320);
  v8 = memdup2_np();
  *(v6 + 288) = a2;
  *(v6 + 320) = v8;
  *(v6 + 304) = a4;
  *(v6 + 312) = a4;

  free(v7);
}

void *cryptex_signing_service_set_sso_ticket(void *a1, const void *a2, size_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v6 = malloc_type_malloc(a3, 0x5C008F58uLL);
      if (v6)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v6 = malloc_type_malloc(a3, 0x2F48DA65uLL);
    if (!v6)
    {
      cryptex_signing_service_set_sso_ticket_cold_1(&v9, v10);
    }
  }

  a1[12] = v6;
  a1[13] = a3;
  a1[14] = _cryptex_signing_service_buff_dealloc;
  result = memcpy(v6, a2, a3);
  a1[15] = a1 + 11;
  a1[5] &= ~1uLL;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

CFErrorRef cryptex_signing_service_sign(uint64_t a1)
{
  v111 = *MEMORY[0x29EDCA608];
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  v110 = 0x3000000000;
  v2 = *(a1 + 56);
  if (!v2 || (v3 = *(v2 + 168)) == 0)
  {
    v19 = *(a1 + 16);
    v20 = *__error();
    v21 = *(a1 + 32);
    v22 = 1;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = "[anonymous]";
      if (v19)
      {
        v23 = v19;
      }

      *buf = 136446466;
      *&buf[4] = v23;
      *&buf[12] = 1024;
      *&buf[14] = 1;
      v24 = "%{public}s: caller did not provide chip instance: %{darwin.errno}d";
      goto LABEL_18;
    }

LABEL_19:
    *__error() = v20;
    v25 = v22;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v26 = *(a1 + 16);
      if (!v26)
      {
        v26 = "[anonymous]";
      }
    }

    else
    {
      v26 = *(a1 + 16);
      if (!v26)
      {
        v26 = "[anonymous]";
      }
    }

    *buf = 136446466;
    *&buf[4] = v26;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    v27 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_signing_service_sign", "signing_service.c", 571, "com.apple.security.cryptex.posix", v25, 0, v27);
    free(v27);
    MEMORY[0x29C28E9F0](0);
    goto LABEL_74;
  }

  v4 = *(v3 + 192);
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  v7 = *__error();
  v8 = *(a1 + 32);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v4)
  {
    if (v9)
    {
      v29 = "[anonymous]";
      if (v6)
      {
        v29 = v6;
      }

      *buf = 136446210;
      *&buf[4] = v29;
      _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip environment", buf, 0xCu);
    }

    *__error() = v7;
    *(a1 + 64) = *(*(*(a1 + 56) + 168) + 1160);
    v30 = img4_chip_instantiate();
    if (!v30)
    {
      *(a1 + 272) = a1 + 128;
      v82 = *(a1 + 56);
      goto LABEL_9;
    }

    v22 = v30;
    v31 = *(a1 + 16);
    v20 = *__error();
    v21 = *(a1 + 32);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v32 = "[anonymous]";
      if (v31)
      {
        v32 = v31;
      }

      *buf = 136446466;
      *&buf[4] = v32;
      *&buf[12] = 1024;
      *&buf[14] = v22;
      v24 = "%{public}s: failed to instantiate chip: %{darwin.errno}d";
LABEL_18:
      _os_log_impl(&dword_2986C0000, v21, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v10 = "[anonymous]";
    if (v6)
    {
      v10 = v6;
    }

    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip instance", buf, 0xCu);
  }

  *__error() = v7;
  *(a1 + 272) = *(*(*(a1 + 56) + 168) + 192);
LABEL_9:
  v11 = *(a1 + 40) & 2;
  cryptex_core_is_cryptex1();
  v12 = cryptex_tss_create();
  v13 = *(a1 + 72);
  v14 = img4_nonce_domain_copy_nonce();
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = *(a1 + 32);
    if (v17)
    {
      os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      v18 = *v5;
      if (!*v5)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v18;
      *&buf[12] = 1024;
      *&buf[14] = v15;
    }

    else
    {
      v49 = *v5;
      if (!*v5)
      {
        v49 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v49;
      *&buf[12] = 1024;
      *&buf[14] = v14;
    }

    v50 = _os_log_send_and_compose_impl();
    v51 = 587;
    goto LABEL_48;
  }

  if (*(a1 + 48))
  {
    cryptex_tss_set_url();
  }

  v33 = *(a1 + 120);
  if (v33)
  {
    v34 = *(v33 + 8);
    v35 = *(v33 + 16);
    cryptex_tss_set_data();
  }

  v36 = *(a1 + 56);
  if (cryptex_core_is_cryptex1())
  {
    v37 = *(a1 + 56);
    if (v37)
    {
      if (*(v37 + 216))
      {
        v38 = CFNumberCreate(0, kCFNumberLongType, (*(a1 + 272) + 32));
        v39 = CFNumberCreate(0, kCFNumberLongLongType, (*(a1 + 272) + 40));
        v40 = _AMAuthInstallCryptex1CopyUDID(v38, v39);
        CFDataGetBytePtr(v40);
        CFDataGetLength(v40);
        cryptex_tss_set_data();
        v41 = *(*(a1 + 272) + 128);
        cryptex_tss_set_u32();
        v42 = *(*(*(a1 + 56) + 216) + 44);
        cryptex_tss_set_u32();
        v43 = *(*(a1 + 272) + 132);
        cryptex_tss_set_u32();
        v44 = *(*(a1 + 272) + 140);
        cryptex_tss_set_u32();
        v45 = *(*(a1 + 272) + 48);
        cryptex_tss_set_BOOL();
        cryptex_tss_set_dgst();
        v46 = *(*(*(a1 + 56) + 216) + 40);
        cryptex_tss_set_u32();
        v47 = *(*(*(a1 + 56) + 216) + 48);
        cryptex_tss_set_string();
        v48 = *(*(*(a1 + 56) + 216) + 56);
        cryptex_tss_set_string();
        if (*(*(*(a1 + 56) + 216) + 65) == 1)
        {
          cryptex_tss_set_BOOL();
        }

        else
        {
          _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(a1);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        goto LABEL_51;
      }

      v92 = *(a1 + 16);
      v84 = *__error();
      v85 = *(a1 + 32);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v93 = "[anonymous]";
        if (v92)
        {
          v93 = v92;
        }

        *buf = 136446466;
        *&buf[4] = v93;
        *&buf[12] = 1024;
        *&buf[14] = 22;
        v87 = "%{public}s: Invalid core Cryptex1 properties.: %{darwin.errno}d";
LABEL_88:
        _os_log_impl(&dword_2986C0000, v85, OS_LOG_TYPE_ERROR, v87, buf, 0x12u);
      }
    }

    else
    {
      v83 = *(a1 + 16);
      v84 = *__error();
      v85 = *(a1 + 32);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = "[anonymous]";
        if (v83)
        {
          v86 = v83;
        }

        *buf = 136446466;
        *&buf[4] = v86;
        *&buf[12] = 1024;
        *&buf[14] = 22;
        v87 = "%{public}s: Invalid cryptex core.: %{darwin.errno}d";
        goto LABEL_88;
      }
    }

    *__error() = v84;
    v94 = *(a1 + 32);
    if (v94)
    {
      os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
      v95 = *v5;
      if (!*v5)
      {
        v95 = "[anonymous]";
      }
    }

    else
    {
      v95 = *v5;
      if (!*v5)
      {
        v95 = "[anonymous]";
      }
    }

    *buf = 136446466;
    *&buf[4] = v95;
    *&buf[12] = 1024;
    *&buf[14] = 22;
    v50 = _os_log_send_and_compose_impl();
    v51 = 606;
    v52 = 22;
    goto LABEL_49;
  }

  v105 = 0u;
  memset(buf, 0, sizeof(buf));
  *&v106 = 0x3000000000;
  _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(a1);
  v53 = *(*(a1 + 272) + 40);
  cryptex_tss_set_u64();
  v54 = *(*(a1 + 272) + 49);
  cryptex_tss_set_BOOL();
  cryptex_tss_set_dgst();
  cryptex_tss_set_dgst();
LABEL_51:
  if ((*(a1 + 40) & 2) != 0)
  {
    cryptex_tss_set_BOOL();
  }

  v55 = MEMORY[0x29EDC9678];
  v56 = 64;
  while (1)
  {
    v57 = *(*(a1 + 56) + v56);
    v105 = 0u;
    v106 = 0u;
    memset(buf, 0, sizeof(buf));
    if (!v57)
    {
      v71 = *(a1 + 16);
      v72 = *__error();
      v73 = *(a1 + 32);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        v74 = "[anonymous]";
        if (v71)
        {
          v74 = v71;
        }

        v75 = *(*v55 + 40);
        *v98 = 136446466;
        v99 = v74;
        v100 = 2080;
        v101 = v75;
        _os_log_impl(&dword_2986C0000, v73, OS_LOG_TYPE_DEBUG, "%{public}s: no asset of type: %s", v98, 0x16u);
      }

      *__error() = v72;
      goto LABEL_68;
    }

    if ((**(v57 + 8) & 0x14) == 0)
    {
      break;
    }

LABEL_68:
    v55 += 8;
    v56 += 8;
    if (v56 == 160)
    {
      v76 = *(a1 + 56);
      info_asset = cryptex_core_get_info_asset();
      if (info_asset)
      {
        v78 = *(info_asset + 16);
        cryptex_tss_set_info_from_file();
      }

      v79 = *(*(a1 + 56) + 208);
      cryptex_tss_set_im4m_array();
      cryptex_tss_submit();
      Error = 0;
      goto LABEL_72;
    }
  }

  v58 = *(a1 + 16);
  v59 = *__error();
  v60 = *(a1 + 32);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    v61 = "[anonymous]";
    if (v58)
    {
      v61 = v58;
    }

    v62 = *(*(v57 + 8) + 40);
    *v98 = 136446466;
    v99 = v61;
    v100 = 2080;
    v101 = v62;
    _os_log_impl(&dword_2986C0000, v60, OS_LOG_TYPE_DEBUG, "%{public}s: stamping asset: %s", v98, 0x16u);
  }

  *__error() = v59;
  v63 = *(a1 + 80);
  generic_digest = cryptex_asset_create_generic_digest();
  if (!generic_digest)
  {
    v65 = *(*(v57 + 8) + 48);
    cryptex_tss_set_object_dgst();
    if (*(*(a1 + 56) + 176) != MEMORY[0x29EDC9638])
    {
      v66 = *(*(v57 + 8) + 48);
      v67 = *(*(a1 + 272) + 50);
      cryptex_tss_set_object_BOOL();
      v68 = *(*(v57 + 8) + 48);
      v69 = *(*(a1 + 272) + 51);
      cryptex_tss_set_object_BOOL();
      v70 = *(*(v57 + 8) + 48);
      cryptex_tss_set_object_BOOL();
    }

    goto LABEL_68;
  }

  v88 = generic_digest;
  v16 = generic_digest;
  v89 = *(a1 + 32);
  if (v89)
  {
    os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
    v90 = *v5;
    if (!*v5)
    {
      v90 = "[anonymous]";
    }

    v91 = *(*(v57 + 8) + 40);
    *v98 = 136446722;
    v99 = v90;
    v100 = 2080;
    v101 = v91;
    v102 = 1024;
    v103 = v88;
  }

  else
  {
    v96 = *v5;
    if (!*v5)
    {
      v96 = "[anonymous]";
    }

    v97 = *(*(v57 + 8) + 40);
    *v98 = 136446722;
    v99 = v96;
    v100 = 2080;
    v101 = v97;
    v102 = 1024;
    v103 = generic_digest;
  }

  v50 = _os_log_send_and_compose_impl();
  v51 = 644;
LABEL_48:
  v52 = v16;
LABEL_49:
  Error = createError("cryptex_signing_service_sign", "signing_service.c", v51, "com.apple.security.cryptex.posix", v52, 0, v50);
  free(v50);
LABEL_72:
  MEMORY[0x29C28E9F0](v12);
  if (v12)
  {
    os_release(v12);
  }

LABEL_74:
  v80 = *MEMORY[0x29EDCA608];
  return Error;
}

CFIndex cryptex_signing_service_trust(uint64_t a1)
{
  v83 = *MEMORY[0x29EDCA608];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0x3000000000;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v78 = 0x3000000000;
  v2 = *(a1 + 64);
  v3 = img4_chip_instantiate();
  if (v3)
  {
    TopLevelPosixError = v3;
    v5 = *(a1 + 16);
    v6 = *__error();
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446466;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = TopLevelPosixError;
      _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to instantiate chip: %{darwin.errno}d", buf, 0x12u);
    }

    v9 = __error();
    v10 = 0;
    goto LABEL_46;
  }

  *(a1 + 272) = a1 + 128;
  v11 = *(a1 + 40);
  v10 = cryptex_tss_create();
  if (*(a1 + 72))
  {
    v12 = img4_nonce_domain_copy_nonce();
    if (v12)
    {
      TopLevelPosixError = v12;
      v13 = *(a1 + 16);
      v6 = *__error();
      v14 = *(a1 + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "[anonymous]";
        if (v13)
        {
          v15 = v13;
        }

        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = TopLevelPosixError;
        v16 = "%{public}s: failed to copy nonce: %{darwin.errno}d";
        v17 = buf;
        v18 = v14;
        v19 = 18;
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else
  {
    cryptex_tss_set_BOOL();
  }

  if (*(a1 + 48))
  {
    cryptex_tss_set_url();
  }

  v20 = *(a1 + 120);
  if (v20)
  {
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    cryptex_tss_set_data();
  }

  v23 = *(*(a1 + 272) + 28);
  cryptex_tss_set_u32();
  v24 = *(*(a1 + 272) + 32);
  cryptex_tss_set_u32();
  v25 = *(*(a1 + 272) + 36);
  cryptex_tss_set_u32();
  v26 = *(*(a1 + 272) + 40);
  cryptex_tss_set_u64();
  v27 = *(*(a1 + 272) + 48);
  cryptex_tss_set_BOOL();
  v28 = *(*(a1 + 272) + 49);
  cryptex_tss_set_BOOL();
  v29 = *(a1 + 272);
  if ((*(v29 + 17) & 0x10) == 0)
  {
    v30 = *(v29 + 56);
    cryptex_tss_set_u32();
  }

  cryptex_tss_set_dgst();
  cryptex_tss_set_dgst();
  cryptex_tss_set_BOOL();
  MEMORY[0x29C28E9F0](v10);
  v31 = 0;
  v32 = 1;
  while (1)
  {
    v33 = v32;
    v34 = _image_specs[v31];
    v35 = (a1 + 288 + 40 * v31);
    v73 = 0u;
    v74 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((*(v35 + 7) & 0x80000000) != 0)
    {
      v43 = v35[4];
      v44 = *(a1 + 16);
      v37 = *__error();
      v45 = *(a1 + 32);
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);
      if (!v43)
      {
        if (v46)
        {
          v57 = *v34;
          v58 = "[anonymous]";
          if (v44)
          {
            v58 = v44;
          }

          *v66 = 136446466;
          v67 = v58;
          v68 = 2080;
          v69 = v57;
          _os_log_impl(&dword_2986C0000, v45, OS_LOG_TYPE_DEBUG, "%{public}s: object not present: %s", v66, 0x16u);
        }

        *__error() = v37;
        goto LABEL_33;
      }

      v40 = _cryptex_signing_service_read_buff;
      if (v46)
      {
        v47 = *v34;
        v48 = "[anonymous]";
        if (v44)
        {
          v48 = v44;
        }

        *v66 = 136446466;
        v67 = v48;
        v68 = 2080;
        v69 = v47;
        _os_log_impl(&dword_2986C0000, v45, OS_LOG_TYPE_DEBUG, "%{public}s: object is a buffer: %s", v66, 0x16u);
        v40 = _cryptex_signing_service_read_buff;
      }
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *__error();
      v38 = *(a1 + 32);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
      v40 = _cryptex_signing_service_read_fd;
      if (v39)
      {
        v41 = *v34;
        v42 = "[anonymous]";
        if (v36)
        {
          v42 = v36;
        }

        *v66 = 136446466;
        v67 = v42;
        v68 = 2080;
        v69 = v41;
        _os_log_impl(&dword_2986C0000, v38, OS_LOG_TYPE_DEBUG, "%{public}s: object is a fd: %s", v66, 0x16u);
        v40 = _cryptex_signing_service_read_fd;
      }
    }

    v49 = v40;
    *__error() = v37;
    v50 = v49(a1, v35, buf);
    if (v50)
    {
      break;
    }

    v51 = (*v35)[1];
    cryptex_tss_set_object_dgst();
    v52 = (*v35)[1];
    v53 = *(*(a1 + 272) + 50);
    cryptex_tss_set_object_BOOL();
    v54 = (*v35)[1];
    v55 = *(*(a1 + 272) + 51);
    cryptex_tss_set_object_BOOL();
    v56 = (*v35)[1];
    cryptex_tss_set_object_BOOL();
LABEL_33:
    v32 = 0;
    v31 = 1;
    if ((v33 & 1) == 0)
    {
      v59 = ctx_new(a1, 0x20uLL);
      cryptex_tss_submit();
      dispatch_semaphore_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
      TopLevelPosixError = _CFErrorGetTopLevelPosixError(v59[2]);
      goto LABEL_47;
    }
  }

  TopLevelPosixError = v50;
  v60 = *(a1 + 16);
  v6 = *__error();
  v61 = *(a1 + 32);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = "[anonymous]";
    if (v60)
    {
      v62 = v60;
    }

    v63 = **v35;
    *v66 = 136446722;
    v67 = v62;
    v68 = 2080;
    v69 = v63;
    v70 = 1024;
    v71 = TopLevelPosixError;
    v16 = "%{public}s: failed to compute digest: %s: %{darwin.errno}d";
    v17 = v66;
    v18 = v61;
    v19 = 28;
LABEL_44:
    _os_log_impl(&dword_2986C0000, v18, OS_LOG_TYPE_ERROR, v16, v17, v19);
  }

LABEL_45:
  v9 = __error();
LABEL_46:
  v59 = 0;
  *v9 = v6;
LABEL_47:
  MEMORY[0x29C28E9F0](v10);
  ctx_destroy(v59);
  if (v10)
  {
    os_release(v10);
  }

  v64 = *MEMORY[0x29EDCA608];
  return TopLevelPosixError;
}

uint64_t _cryptex_signing_service_read_fd(void *a1, uint64_t **a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  memset(&v28, 0, sizeof(v28));
  v6 = (*(a1[10] + 8) + *(a1[10] + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8]();
  bzero(&v26 - v7, v8);
  if (*a1[10] >= 0x31uLL)
  {
    _cryptex_signing_service_read_fd_cold_2(&v27, buf);
  }

  if (fstat(*(a2 + 7), &v28))
  {
    v9 = *__error();
    v10 = a1[2];
    v11 = *__error();
    v12 = a1[4];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = "[anonymous]";
      if (v10)
      {
        v13 = v10;
      }

      v14 = **a2;
      *buf = 136446722;
      v30 = v13;
      v31 = 2080;
      v32 = v14;
      v33 = 1024;
      v34 = v9;
      v15 = "%{public}s: failed to stat object: %s: %{darwin.errno}d";
LABEL_7:
      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x1Cu);
    }
  }

  else
  {
    st_size = v28.st_size;
    if (v28.st_size < 0)
    {
      _cryptex_signing_service_read_fd_cold_1();
    }

    v17 = mmap(0, v28.st_size, 1, 1, *(a2 + 7), 0);
    if (v17 != -1)
    {
      v18 = v17;
      v19 = a1[10];
      ccdigest_init();
      v20 = a1[10];
      ccdigest_update();
      (*(a1[10] + 56))();
      v9 = 0;
      *(a3 + 8) = *a1[10];
      a2[1] = v18;
      a2[2] = st_size;
      *(a2 + 6) = st_size;
      goto LABEL_12;
    }

    v9 = *__error();
    v23 = a1[2];
    v11 = *__error();
    v12 = a1[4];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = "[anonymous]";
      if (v23)
      {
        v24 = v23;
      }

      v25 = **a2;
      *buf = 136446722;
      v30 = v24;
      v31 = 2080;
      v32 = v25;
      v33 = 1024;
      v34 = v9;
      v15 = "%{public}s: failed to map asset into memory: %s: %{darwin.errno}d";
      goto LABEL_7;
    }
  }

  *__error() = v11;
LABEL_12:
  v21 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t _cryptex_signing_service_read_buff(void *a1, uint64_t **a2, uint64_t a3)
{
  v47[8] = *MEMORY[0x29EDCA608];
  v42 = 0;
  v41 = 0;
  v6 = (*(a1[10] + 8) + *(a1[10] + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8]();
  bzero(&v39 - v7, v8);
  v9 = *(a2 + 5);
  v10 = a1[2];
  v11 = *__error();
  v12 = a1[4];
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = "[anonymous]";
      v14 = a2[2];
      if (v10)
      {
        v13 = v10;
      }

      *buf = 136446978;
      v44 = v13;
      v45 = 2048;
      *v46 = v14;
      *&v46[8] = 1024;
      LODWORD(v47[0]) = -1;
      WORD2(v47[0]) = 1024;
      *(v47 + 6) = 34;
      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, "%{public}s: payload too large: actual = %lu, expected <= %u: %{darwin.errno}d", buf, 0x22u);
    }

    *__error() = v11;
    v15 = 34;
    goto LABEL_31;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = "[anonymous]";
    if (v10)
    {
      v16 = v10;
    }

    v17 = (*a2)[2];
    v18 = a2[2];
    *buf = 136446722;
    v44 = v16;
    v45 = 2080;
    *v46 = v17;
    *&v46[8] = 2048;
    v47[0] = v18;
    _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: wrapping object: 4cc = %s, length = %lu", buf, 0x20u);
  }

  *__error() = v11;
  v19 = (*a2)[2];
  v20 = a2[4];
  v21 = *(a2 + 6);
  Payload = Img4EncodeCreatePayload();
  v23 = Payload;
  if (Payload > 102)
  {
    if (Payload != 103)
    {
      if (Payload == 104)
      {
        v15 = 14;
        goto LABEL_26;
      }

      if (Payload == 105)
      {
        v15 = 78;
        goto LABEL_26;
      }
    }

LABEL_20:
    v15 = 104;
    goto LABEL_26;
  }

  if (Payload != 100)
  {
    if (Payload == 101)
    {
      v15 = 22;
      goto LABEL_26;
    }

    if (Payload == 102)
    {
      v15 = 12;
LABEL_26:
      v28 = a1[2];
      v29 = *__error();
      v30 = a1[4];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = "[anonymous]";
        *buf = 136446722;
        if (v28)
        {
          v31 = v28;
        }

        v44 = v31;
        v45 = 1024;
        *v46 = v23;
        *&v46[4] = 1024;
        *&v46[6] = v15;
        _os_log_impl(&dword_2986C0000, v30, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap object: %d: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v29;
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v24 = mmap(0, v41, 3, 4098, -1, 0);
  if (v24 == -1)
  {
    v15 = *__error();
    v34 = a1[2];
    v35 = *__error();
    v36 = a1[4];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = "[anonymous]";
      if (v34)
      {
        v37 = v34;
      }

      v38 = **a2;
      *buf = 136446722;
      v44 = v37;
      v45 = 2080;
      *v46 = v38;
      *&v46[8] = 1024;
      LODWORD(v47[0]) = v15;
      _os_log_impl(&dword_2986C0000, v36, OS_LOG_TYPE_ERROR, "%{public}s: failed to map anonymous buffer for object: %s: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v35;
  }

  else
  {
    v25 = v24;
    memcpy(v24, v42, v41);
    v26 = a1[10];
    ccdigest_init();
    if (*a1[10] >= 0x31uLL)
    {
      _cryptex_signing_service_read_fd_cold_2(&v40, buf);
    }

    ccdigest_update();
    (*(a1[10] + 56))();
    v15 = 0;
    *(a3 + 8) = *a1[10];
    v27 = v41;
    a2[1] = v25;
    a2[2] = v27;
    *(a2 + 6) = v27;
  }

LABEL_31:
  free(v42);
  v32 = *MEMORY[0x29EDCA608];
  return v15;
}

intptr_t _cryptex_signing_service_trust_continue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4 = a4;
  v48 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  if (a3)
  {
    if (*(v5 + 32))
    {
      os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR);
      v7 = *(v5 + 16);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      *v46 = 136446210;
      *&v46[4] = v7;
    }

    else
    {
      v22 = *(v5 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *v46 = 136446210;
      *&v46[4] = v22;
    }

    v23 = _os_log_send_and_compose_impl();
    v24 = "com.apple.security.cryptex";
    v25 = 280;
    v26 = 5;
    v27 = a3;
LABEL_22:
    Error = createError("_cryptex_signing_service_trust_continue", "signing_service.c", v25, v24, v26, v27, v23);
    free(v23);
    goto LABEL_39;
  }

  if (!MEMORY[0x2A1C7B548])
  {
    if (*(v5 + 32))
    {
      os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR);
      v28 = *(v5 + 16);
      if (!v28)
      {
        v28 = "[anonymous]";
      }
    }

    else
    {
      v28 = *(v5 + 16);
      if (!v28)
      {
        v28 = "[anonymous]";
      }
    }

    *v46 = 136446466;
    *&v46[4] = v28;
    *&v46[12] = 1024;
    *&v46[14] = 78;
    v23 = _os_log_send_and_compose_impl();
    v24 = "com.apple.security.cryptex.posix";
    v25 = 287;
    v26 = 78;
    v27 = 0;
    goto LABEL_22;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = (v5 + 288 + 40 * v9);
    v12 = *v11;
    *v46 = 0;
    *&v46[8] = v11[1];
    v13 = *(a2 + 64);
    v39 = *(a2 + 56);
    v14 = v10;
    *&v46[16] = v11[2];
    v47 = 0;
    if (v12)
    {
      if (v12[4])
      {
        break;
      }
    }

LABEL_16:
    v10 = 0;
    v9 = 1;
    if ((v14 & 1) == 0)
    {
      Error = 0;
      goto LABEL_38;
    }
  }

  v15 = img4_runtime_execute_object();
  if (!v15)
  {
    v16 = *(v5 + 16);
    v17 = *__error();
    v18 = *(v5 + 32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = "[anonymous]";
      if (v16)
      {
        v19 = v16;
      }

      v20 = **v11;
      *buf = 136446466;
      v41 = v19;
      v42 = 2080;
      v43 = v20;
      _os_log_impl(&dword_2986C0000, v18, OS_LOG_TYPE_DEBUG, "%{public}s: executed object: %s", buf, 0x16u);
    }

    *__error() = v17;
    goto LABEL_16;
  }

  v29 = v15;
  v30 = v15;
  if (*(v5 + 32))
  {
    os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR);
    v31 = *(v5 + 16);
    if (!v31)
    {
      v31 = "[anonymous]";
    }

    v32 = **v11;
    *buf = 136446722;
    v41 = v31;
    v42 = 2080;
    v43 = v32;
    v44 = 1024;
    v45 = v29;
  }

  else
  {
    v33 = *(v5 + 16);
    if (!v33)
    {
      v33 = "[anonymous]";
    }

    v34 = **v11;
    *buf = 136446722;
    v41 = v33;
    v42 = 2080;
    v43 = v34;
    v44 = 1024;
    v45 = v15;
  }

  v35 = _os_log_send_and_compose_impl();
  Error = createError("_cryptex_signing_service_trust_continue", "signing_service.c", 319, "com.apple.security.cryptex.posix", v30, 0, v35);
  free(v35);
LABEL_38:
  v4 = a4;
LABEL_39:
  v4[2] = Error;
  result = dispatch_semaphore_signal(*(v5 + 280));
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(uint64_t a1)
{
  v2 = *(*(a1 + 272) + 28);
  cryptex_tss_set_u32();
  v3 = *(*(a1 + 272) + 32);
  cryptex_tss_set_u32();
  v4 = *(*(a1 + 272) + 36);
  cryptex_tss_set_u32();
  v5 = *(*(a1 + 272) + 48);

  return cryptex_tss_set_BOOL();
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t _hdi_copy_device_nodes(NSObject *a1, io_object_t object, const char **a3, void *a4, void *a5)
{
  v8 = object;
  v53 = *MEMORY[0x29EDCA608];
  if (IOObjectRetain(object))
  {
    _hdi_copy_device_nodes_cold_1(&v51, buf);
  }

  entry = v8;
  if (IOObjectRetain(v8))
  {
    _hdi_copy_device_nodes_cold_1(&v51, buf);
  }

  objecta = v8;
  if (_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainerScheme") || _IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSMedia"))
  {
    v10 = "hfs";
  }

  else
  {
    v10 = "hfs";
    if (!_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainer") && !_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSVolume"))
    {
      v10 = "apfs";
      v8 = objecta;
    }
  }

  v11 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"BSD Name", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty || (v13 = CFProperty, v14 = CFGetTypeID(CFProperty), v14 != CFStringGetTypeID()))
  {
    _hdi_copy_device_nodes_cold_6();
  }

  v43 = v10;
  v45 = a3;
  v46 = a5;
  v15 = *__error();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "subdevice node = %@", buf, 0xCu);
  }

  v44 = v13;
  v16 = __error();
  v48 = 0;
  v17 = MEMORY[0x29EDB8F00];
  *v16 = v15;
  v18 = *v17;
  v19 = @"Whole";
  v47 = v11;
  do
  {
    v20 = IORegistryEntryCreateCFProperty(entry, v19, v11, 0);
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = *__error();
    v25 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v23 == v18)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "found whole disk node", buf, 2u);
      }

      *__error() = v24;
      v32 = IORegistryEntryCreateCFProperty(entry, @"BSD Name", v11, 0);
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          v35 = v33;
        }

        else
        {
          v35 = 0;
        }

        if (!a4)
        {
LABEL_57:
          _hdi_copy_device_nodes_cold_5();
        }
      }

      else
      {
        v35 = 0;
        if (!a4)
        {
          goto LABEL_57;
        }
      }

      v40 = *__error();
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v35;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "devnode = %@", buf, 0xCu);
      }

      v48 = v35;
      v30 = 0;
      v31 = 0;
      *__error() = v40;
      v26 = entry;
    }

    else
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "not whole disk node", buf, 2u);
      }

      *__error() = v24;
      v26 = entry;
      ParentEntry = IORegistryEntryGetParentEntry(entry, "IOService", &entry);
      if (ParentEntry)
      {
        v28 = ParentEntry;
        if (ParentEntry == -536870208)
        {
          v29 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "found root node, stopping", buf, 2u);
          }

          v30 = 0;
          *__error() = v29;
          v31 = 2;
        }

        else
        {
          v36 = v18;
          v37 = v19;
          v38 = a4;
          v39 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v28;
            _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", buf, 8u);
          }

          v30 = 0;
          *__error() = v39;
          v31 = 83;
          a4 = v38;
          v19 = v37;
          v18 = v36;
          v11 = v47;
        }
      }

      else
      {
        v31 = 35;
        v30 = 1;
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v26 && IOObjectRelease(v26))
    {
      _hdi_copy_device_nodes_cold_3(&v51, buf);
    }
  }

  while ((v30 & 1) != 0);
  if (v23 == v18)
  {
    if (v45)
    {
      *v45 = v43;
    }

    *a4 = v48;
    *v46 = v44;
  }

  if (objecta && IOObjectRelease(objecta))
  {
    _hdi_copy_device_nodes_cold_3(&v51, buf);
  }

  v41 = *MEMORY[0x29EDCA608];
  return v31;
}

uint64_t hdi_copy_mounted(void *a1, void *a2, NSObject *a3)
{
  v49 = *MEMORY[0x29EDCA608];
  notification = 0;
  v6 = getfsstat(0, 0, 2);
  if ((v6 & 0x80000000) != 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v46) = v10;
      _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
    v13 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = v6;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = malloc_type_calloc(v8, 0x878uLL, 0x8A375538uLL);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = malloc_type_calloc(v8, 0x878uLL, 0x8709206FuLL);
    if (!v9)
    {
      hdi_copy_mounted_cold_1(v44, buf);
    }
  }

  v13 = v9;
  if (getfsstat(v9, 2168 * v7, 2) < 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v46) = v10;
      _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
LABEL_16:
    v15 = 0;
    *v12 = v11;
    goto LABEL_59;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8A375538uLL);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8709206FuLL);
    if (!v14)
    {
      hdi_copy_mounted_cold_2(v44, buf);
    }
  }

  v15 = v14;
  v16 = IONotificationPortCreate(0);
  if (!v16)
  {
    hdi_copy_mounted_cold_7();
  }

  v17 = v16;
  v18 = IOServiceMatching("IOMedia");
  v19 = IOServiceAddMatchingNotification(v17, "IOServiceMatched", v18, 0, 0, &notification);
  if (!v19)
  {
    v36 = a1;
    v37 = a2;
    v38 = 0;
    v35 = v8;
    while (1)
    {
      v22 = IOIteratorNext(notification);
      if (!v22)
      {
        v10 = 0;
        *v36 = v15;
        *v37 = v38;
        v15 = 0;
        goto LABEL_58;
      }

      v23 = v22;
      v39 = 0;
      cf = 0;
      memset(v44, 0, 255);
      memset(v43, 0, 255);
      memset(v42, 0, 255);
      v24 = IORegistryEntrySearchCFProperty(v22, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v24 && !IOObjectConformsTo(v23, "AppleAPFSVolume") && !IOObjectConformsTo(v23, "AppleAPFSMedia") && !IOObjectConformsTo(v23, "AppleAPFSContainerScheme") && !IOObjectConformsTo(v23, "AppleAPFSContainer"))
      {
        v25 = *__error();
        if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v24;
          _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_DEBUG, "found property: %@", buf, 0xCu);
        }

        *__error() = v25;
        v26 = _hdi_copy_device_nodes(a3, v23, 0, &cf, &v39);
        v27 = *__error();
        if (v26)
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v46) = v26;
            _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", buf, 8u);
          }

          *__error() = v27;
        }

        else
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v46 = cf;
            v47 = 2112;
            v48 = v39;
            _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_DEBUG, "found dev nodes: dev = %@, sub = %@", buf, 0x16u);
          }

          *__error() = v27;
          if (!_CFStringGetUTF8String(v24, v44, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          if (!_CFStringGetUTF8String(cf, v43, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          v34 = a3;
          v28 = v39;
          if (!_CFStringGetUTF8String(v39, v42, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          f_mntfromname = v13->f_mntfromname;
          v30 = v35;
          if (!v7)
          {
            a3 = v34;
            goto LABEL_49;
          }

          while (1)
          {
            bzero(buf, 0x400uLL);
            snprintf(buf, 0x400uLL, "%s%s", "/dev/", v42);
            if (!strcmp(f_mntfromname, buf))
            {
              break;
            }

            f_mntfromname += 2168;
            if (!--v30)
            {
              goto LABEL_47;
            }
          }

          v31 = &v15[3582 * v38];
          __strlcpy_chk();
          snprintf(v31 + 510, 0x400uLL, "%s%s", "/dev/", v43);
          snprintf(v31 + 1534, 0x400uLL, "%s%s", "/dev/", v42);
          strlcpy(v31 + 2558, f_mntfromname - 1024, 0x400uLL);
          ++v38;
LABEL_47:
          a3 = v34;
        }
      }

      v28 = v39;
LABEL_49:
      if (v28)
      {
        CFRelease(v28);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (IOObjectRelease(v23))
      {
        _hdi_copy_device_nodes_cold_3(v44, buf);
      }
    }
  }

  v20 = v19;
  *__error() = 83;
  v21 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v46) = v20;
    _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
  }

  *__error() = v21;
  v10 = 0xFFFFFFFFLL;
LABEL_58:
  IONotificationPortDestroy(v17);
LABEL_59:
  if (notification && IOObjectRelease(notification))
  {
    _hdi_copy_device_nodes_cold_3(v44, buf);
  }

  free(v15);
  free(v13);
  v32 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_10()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t cryptex_event_mask_ext_to_int(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v19[0] = &unk_2A1F01238;
  v19[1] = &unk_2A1F01250;
  v20[0] = &unk_2A1F01238;
  v20[1] = &unk_2A1F01250;
  v19[2] = &unk_2A1F01268;
  v19[3] = &unk_2A1F01280;
  v20[2] = &unk_2A1F01268;
  v20[3] = &unk_2A1F01280;
  v19[4] = &unk_2A1F01298;
  v20[4] = &unk_2A1F01298;
  obj = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (([v7 unsignedLongLongValue] & a1) != 0)
        {
          v17[0] = &unk_2A1F01238;
          v17[1] = &unk_2A1F01250;
          v18[0] = &unk_2A1F01238;
          v18[1] = &unk_2A1F01250;
          v17[2] = &unk_2A1F01268;
          v17[3] = &unk_2A1F01280;
          v18[2] = &unk_2A1F01268;
          v18[3] = &unk_2A1F01280;
          v17[4] = &unk_2A1F01298;
          v18[4] = &unk_2A1F01298;
          v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
          v9 = [v8 objectForKeyedSubscript:v7];
          v4 |= [v9 unsignedLongLongValue];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t cryptex_event_type_int_to_ext(uint64_t a1)
{
  v13[5] = *MEMORY[0x29EDCA608];
  v12[0] = &unk_2A1F01238;
  v12[1] = &unk_2A1F01250;
  v13[0] = &unk_2A1F01238;
  v13[1] = &unk_2A1F01250;
  v12[2] = &unk_2A1F01268;
  v12[3] = &unk_2A1F01280;
  v13[2] = &unk_2A1F01268;
  v13[3] = &unk_2A1F01280;
  v12[4] = &unk_2A1F01298;
  v13[4] = &unk_2A1F01298;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a1];
  v4 = [v2 allKeysForObject:v3];

  if ([v4 count] >= 2)
  {
    cryptex_event_type_int_to_ext_cold_1(&v10, v11);
  }

  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedLongLongValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

CryptexEventSubscriber *cryptex_event_subscribe_with_name(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, CFErrorRef *a6)
{
  v35 = *MEMORY[0x29EDCA608];
  v11 = a4;
  v12 = a5;
  if (!a1)
  {
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    LOWORD(v29) = 0;
    v20 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_event_subscribe_with_name", "event.m", 275, "com.apple.security.cryptex", 3, 0, v20);
LABEL_16:
    v24 = Error;
    free(v20);
    v15 = 0;
LABEL_17:
    v25 = v24 != 0;
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = [CryptexEventSubscriber alloc];
  v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  v15 = [(CryptexEventSubscriber *)v13 initWithFlags:a3 name:v14];

  if (!v15)
  {
    v22 = [0 log];

    if (v22)
    {
      v23 = [0 log];
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      LOWORD(v29) = 0;
      v20 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v29) = 0;
      v20 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_event_subscribe_with_name", "event.m", 283, "com.apple.security.cryptex", 3, 0, v20);
    goto LABEL_16;
  }

  v16 = [(CryptexEventSubscriber *)v15 registerForEvents:a2 onQueue:v11 withCompletion:v12];
  if (!v16)
  {
    v24 = 0;
    goto LABEL_17;
  }

  v17 = [(CryptexEventSubscriber *)v15 log];

  if (v17)
  {
    v18 = [(CryptexEventSubscriber *)v15 log];
    os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    v29 = 136315650;
    v30 = a1;
    v31 = 2048;
    v32 = a2;
    v33 = 2112;
    v34 = v16;
    LODWORD(v28) = 32;
    v19 = _os_log_send_and_compose_impl();
  }

  else
  {
    v29 = 136315650;
    v30 = a1;
    v31 = 2048;
    v32 = a2;
    v33 = 2112;
    v34 = v16;
    LODWORD(v28) = 32;
    v19 = _os_log_send_and_compose_impl();
  }

  v24 = createError("cryptex_event_subscribe_with_name", "event.m", 293, "com.apple.security.cryptex", 3, v16, v19);
  free(v19);

  if (v24)
  {
    [(CryptexEventSubscriber *)v15 cancel:&v29];

    v15 = 0;
    v25 = 1;
    if (a6)
    {
LABEL_18:
      if (v25)
      {
        v24 = v24;
        *a6 = v24;
      }
    }
  }

LABEL_20:

  v26 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t cryptex_msm_get_string(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 16;
  v3 = a1 + 24;
  if (a2 != 3)
  {
    v3 = a1 + 32;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = a1 + 8;
  if (!a2)
  {
    v4 = a1;
  }

  if (a2 <= 1)
  {
    v2 = v4;
  }

  return *v2;
}

void cryptex_msm_destroy(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    free(*v1);
    free(v1[1]);
    free(v1[2]);
    free(v1[3]);
    free(v1[4]);
    free(v1);
    *a1 = 0;
  }
}

void cryptex_msm_array_destroy(void ***a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *v4++;
      v6 = v5;
      cryptex_msm_destroy(&v6);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t cryptex_install_4MSM(_DWORD *a1, char a2, char ***a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDC9630];
  v6 = a2 & 1;
  v7 = cryptex_attr_create();
  cryptex_attr_set_persistence(v7, 2 * v6);
  cryptex_attr_set_nonce_persistence(v7, v6);
  bzero(v16, 0xE10uLL);
  if ((*a1 & 0x80000000) != 0 || (a1[1] & 0x80000000) != 0)
  {
    v8 = 0;
    v13 = 22;
  }

  else
  {
    v8 = cryptex_core_create();
    v9 = a1[*(v5 + 24)];
    cryptex_asset_new_borrowed();
    cryptex_core_set_asset();
    v10 = a1[*(MEMORY[0x29EDC9660] + 24)];
    cryptex_asset_new_borrowed();
    cryptex_core_set_asset();
    if ((a1[2] & 0x80000000) == 0)
    {
      v11 = a1[*(MEMORY[0x29EDC9628] + 24)];
      cryptex_asset_new_borrowed();
      cryptex_core_set_asset();
    }

    if ((a1[3] & 0x80000000) == 0)
    {
      v12 = a1[*(MEMORY[0x29EDC9658] + 24)];
      cryptex_asset_new_borrowed();
      cryptex_core_set_asset();
    }

    v13 = _cryptex_install_core(v8, v7);
    if (!v13)
    {
      *a3 = _cryptex_msm_new_from_info(v16);
    }
  }

  if (v7)
  {
    os_release(v7);
  }

  if (v8)
  {
    os_release(v8);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

char **_cryptex_msm_new_from_info(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_msm_new_from_info_cold_6(&v11, v12);
  }

  v3 = v2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = strdup(a1 + 8);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = strdup(a1 + 8);
    if (!v4)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 8);
    }
  }

  *v3 = v4;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(a1 + 263);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(a1 + 263);
    if (!v5)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 263);
    }
  }

  v3[1] = v5;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v6 = strdup(a1 + 518);
      if (v6)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v6 = strdup(a1 + 518);
    if (!v6)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 518);
    }
  }

  v3[2] = v6;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v7 = strdup(a1 + 1542);
      if (v7)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v7 = strdup(a1 + 1542);
    if (!v7)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 1542);
    }
  }

  v3[3] = v7;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v8 = strdup(a1 + 2566);
      if (v8)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v8 = strdup(a1 + 2566);
    if (!v8)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 2566);
    }
  }

  v3[4] = v8;
  v9 = *MEMORY[0x29EDCA608];
  return v3;
}

CFIndex cryptex_uninstall_4MSM(uint64_t a1)
{
  cf = 0;
  v2 = cryptex_attr_create();
  cryptex_attr_set_uninstall_flags(v2, 1);
  if (!cryptex_uninstall(a1, 0, v2, &cf))
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  TopLevelPosixError = 0;
  if (v2)
  {
LABEL_5:
    os_release(v2);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

uint64_t cryptex_copy_list_4MSM(uint64_t a1, void *a2, size_t *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  v5 = _cryptex_copy_connected_actor(_g, MEMORY[0x29EDC9680]);
  if (_cryptex_copy_list(&v21, &v20))
  {
    v22 = 0;
    v23 = 0;
    v6 = _cryptex_copy_list_lossy(&v23, &v22);
    if (!v6)
    {
      v7 = v22;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v8 = malloc_type_calloc(v7, 8uLL, 0x8A375538uLL);
          if (v8)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v8 = malloc_type_calloc(v7, 8uLL, 0x8709206FuLL);
        if (!v8)
        {
          cryptex_copy_list_4MSM_cold_1(&v24, v25);
        }
      }

      v15 = v8;
      if (v22)
      {
        v16 = 0;
        for (i = 0; i < v22; ++i)
        {
          v15[i] = _cryptex_msm_new_from_info(v23 + v16);
          v16 += 3600;
        }
      }

      free(v23);
      v6 = 0;
      *a3 = v22;
      *a2 = v15;
    }
  }

  else
  {
    v9 = v20;
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v10 = malloc_type_calloc(v9, 8uLL, 0x8A375538uLL);
        if (v10)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v10 = malloc_type_calloc(v9, 8uLL, 0x8709206FuLL);
      if (!v10)
      {
        cryptex_copy_list_4MSM_cold_1(&v24, v25);
      }
    }

    v11 = v10;
    v12 = v20;
    if (v20)
    {
      v13 = 0;
      for (j = 0; j < v20; ++j)
      {
        v11[j] = _cryptex_msm_new_from_info(v21 + v13);
        v12 = v20;
        v13 += 3600;
      }
    }

    v6 = 0;
    *a2 = v11;
    *a3 = v12;
  }

  free(v21);
  if (v5)
  {
    os_release(v5);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_4_0()
{
  *v0 = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  v2 = *v0;

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_6(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

size_t OUTLINED_FUNCTION_8(const char *__s)
{

  return strlen(__s);
}

uint64_t session_create_from_core(uint64_t a1)
{
  v2 = _session_alloc();
  object_proto_init(v2 + 16, "com.apple.security.libcryptex", "cryptex.session");
  *(v2 + 88) = dispatch_queue_create("com.apple.security.libcryptex.session_handler", 0);
  *(v2 + 96) = 0;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = a1;
  *(v2 + 104) = 0;
  return v2;
}

uint64_t daemon_for_session_subsystem(_DWORD *a1)
{
  actor = cryptex_subsystem_create_actor();
  v3 = cryptex_actor_connect();
  *a1 = v3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      daemon_for_session_subsystem_cold_1();
    }

    return 0;
  }

  return actor;
}

void session_activate_endpoint(uint64_t a1)
{
  v2 = xpc_connection_create_from_endpoint(*(*(a1 + 40) + 88));
  *(a1 + 80) = v2;
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = __session_activate_endpoint_block_invoke;
  handler[3] = &__block_descriptor_tmp_10;
  handler[4] = a1;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_set_target_queue(*(a1 + 80), *(a1 + 88));
  xpc_connection_activate(*(a1 + 80));
}

void __session_activate_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C28F4F0](a2);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (v4 == MEMORY[0x29EDCAA18] && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
      *buf = 134218242;
      v23 = v5;
      v24 = 2080;
      v25 = string;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Connection %p error: %s", buf, 0x16u);
    }

    goto LABEL_19;
  }

  value = xpc_dictionary_get_value(a2, "object");
  int64 = xpc_dictionary_get_int64(a2, "event");
  *(*(a1 + 32) + 64) = xpc_dictionary_get_int64(a2, "reason");
  uint64 = xpc_dictionary_get_uint64(a2, "code");
  v10 = *(a1 + 32);
  *(v10 + 72) = uint64;
  if (int64 == 32)
  {
    v11 = xpc_dictionary_get_int64(a2, "error_event");
    v10 = *(a1 + 32);
    *(v10 + 104) = v11;
  }

  if (value)
  {
    v12 = cryptex_session_core_create_from_xpc();
    v10 = *(a1 + 32);
    if (v12)
    {
      v13 = v12;
      if (*(v10 + 40))
      {
        cryptex_session_core_merge();
      }

      os_release(v13);
      v10 = *(a1 + 32);
    }
  }

  v14 = *(v10 + 48);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = *(v10 + 56);
  if (v15 != 64 && (v15 & int64) < 1)
  {
    goto LABEL_19;
  }

  v17 = *(v10 + 96);
  if (v17)
  {
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 0x40000000;
    v21[2] = __session_activate_endpoint_block_invoke_2;
    v21[3] = &__block_descriptor_tmp;
    v21[4] = v10;
    v21[5] = int64;
    dispatch_sync(v17, v21);
LABEL_19:
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  v19 = *(v14 + 16);
  v20 = *MEMORY[0x29EDCA608];

  v19(v14, int64);
}

uint64_t _CFCreateAssertImpl(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

char *_CFStringCopyUTF8String(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding <= -2)
  {
    _CFStringCopyUTF8String_cold_1();
  }

  v4 = MaximumSizeForEncoding;
  v5 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x55514AAEuLL);
  if (v5)
  {
    v6 = v5;
    CString = CFStringGetCString(a1, v5, v4 + 1, 0x8000100u);
    if (CString)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (CString)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  free(v5);
  return v8;
}

char *_CFStringGetUTF8String(const __CFString *a1, char *a2, CFIndex a3)
{
  if (a3 < 0)
  {
    _CFStringGetUTF8String_cold_1();
  }

  if (CFStringGetCString(a1, a2, a3, 0x8000100u))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_29EEA76F0;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x29EDB8F68];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

CFIndex _CFErrorGetTopLevelPosixError(const void *a1)
{
  Code = a1;
  if (a1)
  {
    v2 = _CFErrorCopyTopLevelErrorWithDomain(a1, @"com.apple.security.cryptex.posix");
    v3 = v2;
    if (v2)
    {
      Domain = CFErrorGetDomain(v2);
      if (CFEqual(Domain, @"com.apple.security.cryptex.posix"))
      {
        Code = CFErrorGetCode(v3);
        goto LABEL_10;
      }
    }

    v5 = CFErrorGetDomain(Code);
    if (CFEqual(v5, @"com.apple.security.cryptex"))
    {
      v6 = CFErrorGetCode(Code);
      if (v6 <= 0x26)
      {
        Code = dword_2986E85A8[v6 & 0x3F];
        if (!v3)
        {
          return Code;
        }

        goto LABEL_10;
      }
    }

    Code = 0xFFFFFFFFLL;
    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return Code;
}

uint64_t _CFErrorHasDomainAndCode(const void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFErrorGetTypeID();
    v8 = 0;
    if (a2 && v6 == TypeID)
    {
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 0x40000000;
      v10[2] = ___CFErrorHasDomainAndCode_block_invoke;
      v10[3] = &unk_29EEA7718;
      v10[5] = a2;
      v10[6] = a3;
      v10[4] = &v11;
      _CFErrorIterUnderlying(a1, v10);
      v8 = *(v12 + 24);
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

uint64_t _cryptex_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_attr_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_attr_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_bundle_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_bundle_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_su_preboot_bundle_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_su_preboot_bundle_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_signing_service_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_signing_service_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _session_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _session_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *_cryptex_copy_connected_actor(uint64_t a1, void *a2)
{
  v4 = (a1 + 24 * *a2);
  os_unfair_lock_lock(v4 + 4);
  v5 = _cryptex_copy_connected_actor_locked(a1, a2);
  os_unfair_lock_unlock(v4 + 4);
  return v5;
}

void *_cryptex_copy_connected_actor_locked(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = a1 + 24 * *a2;
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  actor = v5;
  if (!v5)
  {
    actor = cryptex_subsystem_create_actor();
    *v4 = actor;
    v7 = cryptex_actor_connect();
    v8 = actor[2];
    v9 = *__error();
    v10 = actor[4];
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "[anonymous]";
        v12 = a2[2];
        if (v8)
        {
          v11 = v8;
        }

        v21 = 136446722;
        v22 = v11;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v7;
        v13 = "%{public}s: connect: %s: %{darwin.errno}d";
        v14 = v10;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 28;
LABEL_11:
        _os_log_impl(&dword_2986C0000, v14, v15, v13, &v21, v16);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      v18 = a2[2];
      if (v8)
      {
        v17 = v8;
      }

      v21 = 136446466;
      v22 = v17;
      v23 = 2080;
      v24 = v18;
      v13 = "%{public}s: connect: %s: success";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 22;
      goto LABEL_11;
    }

    *__error() = v9;
  }

  result = actor;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void _cryptex_bundle_dealloc(void *a1)
{
  close_drop_optional_np();
  close_drop_optional_np();
  v2 = a1[10];
  if (v2)
  {
    os_release(v2);
  }

  v4 = (a1 + 8);
  v3 = a1[8];
  v15 = v3;
  if (v3)
  {
    do
    {
      v5 = *v4;
      if (*v4 == v3)
      {
        v6 = (a1 + 8);
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5 != v3);
      }

      v7 = *v3;
      *v6 = *v5;
      *v3 = -1;
      _cryptex_list_elm_destroy(&v15);
      v15 = v7;
      v3 = v7;
    }

    while (v7);
  }

  v9 = a1 + 9;
  v8 = a1[9];
  v14 = v8;
  if (v8)
  {
    do
    {
      v10 = *v9;
      if (*v9 == v8)
      {
        v12 = a1 + 9;
      }

      else
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 16);
        }

        while (v10 != v8);
        v12 = (v11 + 16);
      }

      v13 = *(v8 + 16);
      *v12 = *(v10 + 16);
      *(v8 + 16) = -1;
      _cryptex_bundle_asset_destroy(&v14);
      v14 = v13;
      v8 = v13;
    }

    while (v13);
  }

  object_proto_destroy((a1 + 2));
}

void _cryptex_list_elm_destroy(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    os_release(v1[1]);
    free(v1);
    *a1 = 0;
  }
}

void _cryptex_bundle_asset_destroy(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 24);
    cryptex_asset_destroy();
    free(*v1);
    free(*(v1 + 8));
    free(v1);
    *a1 = 0;
  }
}

uint64_t _cryptex_bundle_new_asset_from_object(int a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = _xpc_plist_value_copy(&_path, a3);
  if (v7)
  {
    v8 = v7;
    string_ptr = xpc_string_get_string_ptr(v7);
    v10 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 40);
      *buf = 136315394;
      v22 = v11;
      v23 = 2080;
      v24 = string_ptr;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s => %s", buf, 0x16u);
    }

    *__error() = v10;
    v12 = openat(a1, string_ptr, 0);
    v19 = v12;
    if (v12 < 0)
    {
      v14 = v12;
      v13 = *__error();
      v16 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v22) = v13;
        _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v16;
    }

    else
    {
      v13 = 0;
      *a4 = cryptex_asset_new();
      v14 = v19;
    }

    if (v14 != -1 && close(v14) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v20, buf);
    }

    os_release(v8);
  }

  else
  {
    v15 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "Path";
      v23 = 1024;
      LODWORD(v24) = 212;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "missing property: %s: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v15;
    v13 = 212;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

void *_cryptex_list_find_cryptex_elm(void *a1, uint64_t a2, const char *a3, int a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (*a1)
  {
    do
    {
      v7 = v6[1];
      v8 = _cryptex_identity_copy_description(v7 + 56);
      v9 = *(v7 + 16);
      v10 = *__error();
      v11 = *(v7 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        v26 = v12;
        v27 = 2080;
        v28 = v8;
        _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: cryptex identity: %s", buf, 0x16u);
      }

      *__error() = v10;
      if (_cryptex_identity_matches_host(v7 + 56, a2))
      {
        if (a3)
        {
          if (!strcmp(a3, *(v7 + 16)))
          {
            goto LABEL_45;
          }
        }

        else if (*(v7 + 40))
        {
LABEL_45:
          free(v8);
          goto LABEL_46;
        }
      }

      free(v8);
      v6 = *v6;
    }

    while (v6);
  }

  if (a4)
  {
    v13 = *a1;
    if (*a1)
    {
      v6 = 0;
      while (1)
      {
        v14 = v13[1];
        v15 = _cryptex_identity_matches_host(v14 + 56, a2);
        if (a3)
        {
          v16 = strcmp(a3, *(v14 + 16)) == 0;
          if (a2)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v16 = 0;
          if (a2)
          {
LABEL_19:
            if (*(v14 + 56))
            {
              v17 = *(v14 + 64);
              if ((v17 & 2) != 0)
              {
                v18 = (v17 >> 2) & 1;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            if (*a2)
            {
              v19 = (*(a2 + 8) & 2) == 0 || (*(a2 + 8) & 4) == 0;
            }

            else
            {
              v19 = 1;
            }

            if (_cryptex_identity_matches_host(v14 + 56, a2) || ((v19 | v18 ^ 1) & 1) == 0 && (*(v14 + 64) & 1) != 0 && _cryptex_identity_equal_cryptex1(a2, (v14 + 56)) && _cryptex_identity_equal_cryptex1_chipid(a2, (v14 + 56)) || (v18 & 1) == 0 && (*(v14 + 64)) && ((*(v14 + 40) | v16))
            {
              v20 = *__error();
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "found a generic cryptex match", buf, 2u);
              }

              *__error() = v20;
              if (v15 || v16 || v6 == 0)
              {
                v6 = v13;
              }
            }
          }
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v6 = 0;
LABEL_46:
  v21 = *MEMORY[0x29EDCA608];
  return v6;
}

BOOL _cryptex_identity_matches_host(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = _cryptex_identity_equal_device(a2, a1);
      if (result)
      {
        if (!*a2 || !*a1)
        {
          return 1;
        }

        if ((*(a2 + 8) & 2) != 0 && (*(a1 + 8) & 2) != 0)
        {
          result = _cryptex_identity_equal_cryptex1(a2, a1);
          if (!result)
          {
            return result;
          }

          if (!*a2)
          {
            return 1;
          }
        }

        if (!*a1)
        {
          return 1;
        }

        if ((*(a2 + 8) & 4) == 0)
        {
          return 1;
        }

        if ((*(a1 + 8) & 4) == 0)
        {
          return 1;
        }

        result = _cryptex_identity_equal_cryptex1_chipid(a2, a1);
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

char **_cryptex_bundle_asset_new(uint64_t a1, const char *a2, const char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x8709206FuLL);
  if (!v6)
  {
    _cryptex_bundle_asset_new_cold_3(&v14, v15);
  }

  v7 = v6;
  v8 = cryptex_asset_copy();
  v7[3] = v8;
  v9 = *(a1 + 16);
  *(v8 + 16) = dup_np();
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v10 = strdup(a2);
      if (v10)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v10 = strdup(a2);
    if (!v10)
    {
      _cryptex_bundle_asset_new_cold_1(a2, &v14, v15);
    }
  }

  *v7 = v10;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v11 = strdup(a3);
      if (v11)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v11 = strdup(a3);
    if (!v11)
    {
      _cryptex_bundle_asset_new_cold_1(a3, &v14, v15);
    }
  }

  v7[1] = v11;
  v12 = *MEMORY[0x29EDCA608];
  return v7;
}

void *_cryptex_list_elm_new(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_list_elm_new_cold_1(&v6, v7);
  }

  v3 = v2;
  v2[1] = os_retain(a1);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

void *cryptex_bundle_create(uint64_t a1)
{
  v2 = _cryptex_bundle_alloc();
  v2[5] = a1;
  v2[6] = -1;
  v2[8] = 0;
  v2[9] = 0;
  object_proto_init((v2 + 2), "com.apple.security.libcryptex", "bundle");
  return v2;
}

void *cryptex_bundle_create_with_directory(uint64_t a1, uint64_t a2)
{
  v3 = _cryptex_bundle_alloc();
  v3[5] = a2;
  v3[6] = -1;
  v3[8] = 0;
  v3[9] = 0;
  object_proto_init((v3 + 2), "com.apple.security.libcryptex", "bundle");
  *(v3 + 12) = claimfd_np();
  return v3;
}

uint64_t cryptex_bundle_copy_cryptex2(uint64_t a1, _OWORD *a2, const char *a3, void **a4, CFTypeRef *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v10 = _cryptex_bundle_init(a1);
  if (v10)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *v31 = 136446210;
      *&v31[4] = v11;
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *v31 = 136446210;
      *&v31[4] = v18;
    }

    v19 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_copy_cryptex2", "bundle.c", 1341, "com.apple.security.cryptex", 6, v10, v19);
    v12 = 0;
  }

  else
  {
    v12 = _cryptex_identity_copy_description(a2);
    v13 = a2[1];
    *v31 = *a2;
    *&v31[16] = v13;
    v32 = a2[2];
    cryptex_elm = _cryptex_list_find_cryptex_elm((a1 + 64), v31, a3, 1);
    if (cryptex_elm)
    {
      v15 = cryptex_elm;
      v16 = *(cryptex_elm[1] + 48);
      if (!cryptex_core_open())
      {
        *a4 = os_retain(v15[1]);
        free(v12);
        v23 = 1;
        goto LABEL_40;
      }

      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v17 = *(a1 + 16);
        if (!v17)
        {
          v17 = "[anonymous]";
        }

        *v31 = 136446210;
        *&v31[4] = v17;
      }

      else
      {
        v24 = *(a1 + 16);
        if (!v24)
        {
          v24 = "[anonymous]";
        }

        *v31 = 136446210;
        *&v31[4] = v24;
      }

      v19 = _os_log_send_and_compose_impl();
      v25 = 1364;
      v26 = 6;
    }

    else
    {
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v21 = *(a1 + 16);
        if (!v21)
        {
          v21 = "[anonymous]";
        }

        v22 = "default";
        *v31 = 136446722;
        *&v31[4] = v21;
        *&v31[12] = 2080;
        *&v31[14] = v12;
        if (a3)
        {
          v22 = a3;
        }

        *&v31[22] = 2080;
        *&v31[24] = v22;
      }

      else
      {
        v27 = *(a1 + 16);
        if (!v27)
        {
          v27 = "[anonymous]";
        }

        v28 = "default";
        *v31 = 136446722;
        *&v31[4] = v27;
        *&v31[12] = 2080;
        if (a3)
        {
          v28 = a3;
        }

        *&v31[14] = v12;
        *&v31[22] = 2080;
        *&v31[24] = v28;
      }

      v19 = _os_log_send_and_compose_impl();
      v25 = 1354;
      v26 = 8;
    }

    Error = createError("cryptex_bundle_copy_cryptex2", "bundle.c", v25, "com.apple.security.cryptex", v26, 0, v19);
  }

  free(v19);
  if (a5 && Error)
  {
    *a5 = CFRetain(Error);
    free(v12);
  }

  else
  {
    free(v12);
    if (!Error)
    {
      v23 = 1;
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  CFRelease(Error);
  v23 = 0;
  if (v10)
  {
LABEL_39:
    CFRelease(v10);
  }

LABEL_40:
  v29 = *MEMORY[0x29EDCA608];
  return v23;
}

void *_cryptex_bundle_init(uint64_t a1)
{
  v223 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    goto LABEL_2;
  }

  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    v3 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_restore, 0, 0, (a1 + 52));
    if (v3)
    {
      Error = v3;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v5 = "[anonymous]";
        if (*(a1 + 16))
        {
          v5 = *(a1 + 16);
        }
      }

      else
      {
        v5 = "[anonymous]";
        if (*(a1 + 16))
        {
          v5 = *(a1 + 16);
        }
      }

      v219[0].st_dev = 136446466;
      *&v219[0].st_mode = v5;
      WORD2(v219[0].st_ino) = 2080;
      *(&v219[0].st_ino + 6) = "Restore";
      v11 = _os_log_send_and_compose_impl();
      v12 = 902;
      goto LABEL_352;
    }

    LODWORD(v218) = -1;
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v8 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_manifest, 0, 0, &v218);
    v9 = &loc_2986E8000;
    if (v8)
    {
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v10 = "[anonymous]";
        if (*(a1 + 16))
        {
          v10 = *(a1 + 16);
        }

        v219[0].st_dev = 136446210;
        *&v219[0].st_mode = v10;
      }

      else
      {
        v23 = "[anonymous]";
        if (*(a1 + 16))
        {
          v23 = *(a1 + 16);
        }

        v219[0].st_dev = 136446210;
        *&v219[0].st_mode = v23;
      }

      v24 = _os_log_send_and_compose_impl();
      Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 89, "com.apple.security.cryptex", 6, v8, v24);
      free(v24);
      v14 = v218;
    }

    else
    {
      v13 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG);
      v14 = v218;
      if (v13)
      {
        bzero(v219, 0x400uLL);
        if (!realpath_np())
        {
          v15 = *(a1 + 16);
          v16 = *__error();
          v17 = *(a1 + 32);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = "[anonymous]";
            if (v15)
            {
              v18 = v15;
            }

            *buf = 136446466;
            *&buf[4] = v18;
            *&buf[12] = 2080;
            *&buf[14] = v219;
            _os_log_impl(&dword_2986C0000, v17, OS_LOG_TYPE_DEBUG, "%{public}s: reading manifest: %s", buf, 0x16u);
          }

          *__error() = v16;
        }
      }

      file = _read_file(v14, v221);
      if (file)
      {
        v20 = file;
        v21 = file;
        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v22 = *(a1 + 16);
          if (!v22)
          {
            v22 = "[anonymous]";
          }

          v219[0].st_dev = 136446466;
          *&v219[0].st_mode = v22;
          WORD2(v219[0].st_ino) = 1024;
          *(&v219[0].st_ino + 6) = v20;
        }

        else
        {
          v27 = *(a1 + 16);
          if (!v27)
          {
            v27 = "[anonymous]";
          }

          v219[0].st_dev = 136446466;
          *&v219[0].st_mode = v27;
          WORD2(v219[0].st_ino) = 1024;
          *(&v219[0].st_ino + 6) = file;
        }

        v28 = _os_log_send_and_compose_impl();
        Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 105, "com.apple.security.cryptex.posix", v21, 0, v28);
        v29 = v28;
      }

      else
      {
        v25 = xpc_create_from_plist();
        if (v25)
        {
          v26 = v25;
          *(a1 + 80) = xpc_retain(v25);
          buff_destroy(v221);
          os_release(v26);
          Error = 0;
          goto LABEL_46;
        }

        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v200 = *(a1 + 16);
          if (!v200)
          {
            v200 = "[anonymous]";
          }
        }

        else
        {
          v200 = *(a1 + 16);
          if (!v200)
          {
            v200 = "[anonymous]";
          }
        }

        v219[0].st_dev = 136446466;
        *&v219[0].st_mode = v200;
        WORD2(v219[0].st_ino) = 1024;
        *(&v219[0].st_ino + 6) = 212;
        v206 = _os_log_send_and_compose_impl();
        Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 112, "com.apple.security.cryptex.posix", 212, 0, v206);
        v29 = v206;
      }

      free(v29);
    }

    buff_destroy(v221);
LABEL_46:
    if (v14 != -1 && close(v14) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(v221, v219);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (Error)
    {
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v30 = "[anonymous]";
        if (*(a1 + 16))
        {
          v30 = *(a1 + 16);
        }

        v219[0].st_dev = 136446210;
        *&v219[0].st_mode = v30;
      }

      else
      {
        v198 = "[anonymous]";
        if (*(a1 + 16))
        {
          v198 = *(a1 + 16);
        }

        v219[0].st_dev = 136446210;
        *&v219[0].st_mode = v198;
      }

      v11 = _os_log_send_and_compose_impl();
      v12 = 911;
      goto LABEL_352;
    }

    v31 = _xpc_plist_value_copy(&_build_identities, *(a1 + 80));
    if (!v31)
    {
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v199 = *(a1 + 16);
        if (!v199)
        {
          v199 = "[anonymous]";
        }
      }

      else
      {
        v199 = *(a1 + 16);
        if (!v199)
        {
          v199 = "[anonymous]";
        }
      }

      v219[0].st_dev = 136446466;
      *&v219[0].st_mode = v199;
      WORD2(v219[0].st_ino) = 1024;
      *(&v219[0].st_ino + 6) = 212;
      v201 = _os_log_send_and_compose_impl();
      Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 739, "com.apple.security.cryptex.posix", 212, 0, v201);
      free(v201);
LABEL_343:
      if (!Error)
      {
        goto LABEL_2;
      }

      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v202 = "[anonymous]";
        if (*(a1 + 16))
        {
          v202 = *(a1 + 16);
        }

        v219[0].st_dev = v9[167];
        *&v219[0].st_mode = v202;
      }

      else
      {
        v203 = "[anonymous]";
        if (*(a1 + 16))
        {
          v203 = *(a1 + 16);
        }

        v219[0].st_dev = v9[167];
        *&v219[0].st_mode = v203;
      }

      v11 = _os_log_send_and_compose_impl();
      v12 = 920;
LABEL_352:
      empty = createError("_cryptex_bundle_init", "bundle.c", v12, "com.apple.security.cryptex", 6, Error, v11);
      free(v11);
      CFRelease(Error);
      goto LABEL_353;
    }

    v32 = v31;
    if (xpc_array_get_count(v31))
    {
      Error = 0;
      v33 = 0;
      xarray = 0;
      v215 = v32;
      while (1)
      {
        *buf = 1;
        memset(&buf[8], 0, 40);
        v34 = _xpc_plist_value_copy_at(_build_identity, v32, v33);
        v35 = v34;
        if (!v34)
        {
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v39 = *(a1 + 16);
            v219[0].st_dev = 136446466;
            if (!v39)
            {
              v39 = "[anonymous]";
            }

            *&v219[0].st_mode = v39;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 212;
          }

          else
          {
            v54 = *(a1 + 16);
            if (!v54)
            {
              v54 = "[anonymous]";
            }

            v219[0].st_dev = 136446466;
            *&v219[0].st_mode = v54;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 212;
          }

          v51 = _os_log_send_and_compose_impl();
          v53 = 760;
          v52 = 212;
          goto LABEL_83;
        }

        v36 = _cryptex_identity_init_from_dict(v34, *(a1 + 32), buf, 1);
        if (v36)
        {
          v37 = v36;
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v38 = *(a1 + 16);
            v219[0].st_dev = 136446466;
            if (!v38)
            {
              v38 = "[anonymous]";
            }

            *&v219[0].st_mode = v38;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = v37;
          }

          else
          {
            v50 = *(a1 + 16);
            if (!v50)
            {
              v50 = "[anonymous]";
            }

            v219[0].st_dev = 136446466;
            *&v219[0].st_mode = v50;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = v36;
          }

          v51 = _os_log_send_and_compose_impl();
          v52 = v37;
          v53 = 767;
LABEL_83:
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", v53, "com.apple.security.cryptex.posix", v52, 0, v51);
          v55 = 0;
          object = 0;
          v56 = 0;
LABEL_84:
          free(v51);
          free(v56);
          v57 = 2;
          goto LABEL_85;
        }

        v40 = _cryptex_identity_copy_description(buf);
        if (!v40)
        {
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v58 = *(a1 + 16);
            v219[0].st_dev = 136446466;
            if (!v58)
            {
              v58 = "[anonymous]";
            }

            *&v219[0].st_mode = v58;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 12;
          }

          else
          {
            v92 = *(a1 + 16);
            if (!v92)
            {
              v92 = "[anonymous]";
            }

            v219[0].st_dev = 136446466;
            *&v219[0].st_mode = v92;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 12;
          }

          v51 = _os_log_send_and_compose_impl();
          v53 = 775;
          v52 = 12;
          goto LABEL_83;
        }

        v41 = v40;
        v42 = _xpc_plist_value_copy(&_info, v35);
        v216 = v42;
        v214 = v41;
        if (v42)
        {
          v43 = _xpc_plist_value_copy(&_variant, v42);
          if (v43)
          {
            goto LABEL_105;
          }

          v44 = *(a1 + 16);
          v45 = *__error();
          v46 = *(a1 + 32);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = "[anonymous]";
            if (v44)
            {
              v47 = v44;
            }

            v219[0].st_dev = 136446210;
            *&v219[0].st_mode = v47;
            v48 = v46;
            v49 = "%{public}s: no variant, using generic variant";
LABEL_103:
            _os_log_impl(&dword_2986C0000, v48, OS_LOG_TYPE_DEBUG, v49, v219, 0xCu);
          }
        }

        else
        {
          v59 = *(a1 + 16);
          v45 = *__error();
          v60 = *(a1 + 32);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v61 = "[anonymous]";
            if (v59)
            {
              v61 = v59;
            }

            v219[0].st_dev = 136446210;
            *&v219[0].st_mode = v61;
            v48 = v60;
            v49 = "%{public}s: no info, using generic variant";
            goto LABEL_103;
          }
        }

        v62 = __error();
        v43 = 0;
        *v62 = v45;
LABEL_105:
        object = v43;
        v63 = *(a1 + 16);
        v64 = *__error();
        v65 = *(a1 + 32);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v219[0].st_dev = 136446722;
          v66 = "[anonymous]";
          if (v63)
          {
            v66 = v63;
          }

          *&v219[0].st_mode = v66;
          WORD2(v219[0].st_ino) = 2048;
          *(&v219[0].st_ino + 6) = v33;
          HIWORD(v219[0].st_gid) = 2080;
          *&v219[0].st_rdev = v214;
          _os_log_impl(&dword_2986C0000, v65, OS_LOG_TYPE_DEBUG, "%{public}s: identity[%lu]: %s", v219, 0x20u);
        }

        *__error() = v64;
        if (object)
        {
          string_ptr = xpc_string_get_string_ptr(object);
        }

        else
        {
          string_ptr = 0;
        }

        v68 = *(a1 + 16);
        v69 = *__error();
        v70 = *(a1 + 32);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = "[anonymous]";
          if (v68)
          {
            v71 = v68;
          }

          v219[0].st_dev = 136446722;
          *&v219[0].st_mode = v71;
          v72 = "generic";
          if (string_ptr)
          {
            v72 = string_ptr;
          }

          WORD2(v219[0].st_ino) = 2048;
          *(&v219[0].st_ino + 6) = v33;
          HIWORD(v219[0].st_gid) = 2080;
          *&v219[0].st_rdev = v72;
          _os_log_impl(&dword_2986C0000, v70, OS_LOG_TYPE_DEBUG, "%{public}s: variant[%lu] = %s", v219, 0x20u);
        }

        *__error() = v69;
        *&v219[0].st_dev = *buf;
        *&v219[0].st_uid = *&buf[16];
        v219[0].st_atimespec = *&buf[32];
        if (_cryptex_list_find_cryptex_elm((a1 + 64), v219, string_ptr, 0))
        {
          v55 = v216;
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v73 = *(a1 + 16);
            v219[0].st_dev = 136447234;
            if (!v73)
            {
              v73 = "[anonymous]";
            }

            *&v219[0].st_mode = v73;
            WORD2(v219[0].st_ino) = 2048;
            *(&v219[0].st_ino + 6) = v33;
            HIWORD(v219[0].st_gid) = 2080;
            *&v219[0].st_rdev = v214;
            LOWORD(v219[0].st_atimespec.tv_sec) = 2080;
            *(&v219[0].st_atimespec.tv_sec + 2) = string_ptr;
            WORD1(v219[0].st_atimespec.tv_nsec) = 1024;
            HIDWORD(v219[0].st_atimespec.tv_nsec) = 22;
            v56 = v214;
          }

          else
          {
            v91 = *(a1 + 16);
            if (!v91)
            {
              v91 = "[anonymous]";
            }

            v219[0].st_dev = 136447234;
            *&v219[0].st_mode = v91;
            WORD2(v219[0].st_ino) = 2048;
            *(&v219[0].st_ino + 6) = v33;
            HIWORD(v219[0].st_gid) = 2080;
            v56 = v214;
            *&v219[0].st_rdev = v214;
            LOWORD(v219[0].st_atimespec.tv_sec) = 2080;
            *(&v219[0].st_atimespec.tv_sec + 2) = string_ptr;
            WORD1(v219[0].st_atimespec.tv_nsec) = 1024;
            HIDWORD(v219[0].st_atimespec.tv_nsec) = 22;
          }

          v51 = _os_log_send_and_compose_impl();
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 804, "com.apple.security.cryptex.posix", 22, 0, v51);
          v32 = v215;
          goto LABEL_84;
        }

        v55 = v216;
        xdict = _xpc_plist_value_copy(&_manifest, v35);
        if (!xdict)
        {
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v93 = *(a1 + 16);
            v219[0].st_dev = 136446466;
            if (!v93)
            {
              v93 = "[anonymous]";
            }

            *&v219[0].st_mode = v93;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 212;
          }

          else
          {
            v102 = *(a1 + 16);
            if (!v102)
            {
              v102 = "[anonymous]";
            }

            v219[0].st_dev = 136446466;
            *&v219[0].st_mode = v102;
            WORD2(v219[0].st_ino) = 1024;
            *(&v219[0].st_ino + 6) = 212;
          }

          v51 = _os_log_send_and_compose_impl();
          v56 = v214;
          v32 = v215;
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 812, "com.apple.security.cryptex.posix", 212, 0, v51);
          goto LABEL_84;
        }

        *&v219[0].st_dev = *buf;
        *&v219[0].st_uid = *&buf[16];
        v219[0].st_atimespec = *&buf[32];
        v212 = _cryptex_create(v219, string_ptr, string_ptr == 0);
        v74 = _xpc_plist_value_copy(&_signatures, v35);
        v209 = v74;
        if (v74)
        {
          v75 = v74;
          xarraya = xpc_array_create(0, 0);
          if (xpc_array_get_count(v75))
          {
            v32 = v215;
            if (xpc_array_get_count(v75))
            {
              v76 = 0;
              while (1)
              {
                memset(v219, 0, 144);
                string = xpc_array_get_string(v75, v76);
                v77 = openat(*(a1 + 52), string, 0);
                if (v77 < 0)
                {
                  break;
                }

                v78 = v77;
                if (fstat(v77, v219) == -1)
                {
                  v105 = *__error();
                  if (*(a1 + 32))
                  {
                    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v106 = *(a1 + 16);
                    *v221 = 136446722;
                    if (!v106)
                    {
                      v106 = "[anonymous]";
                    }

                    *&v221[4] = v106;
                    *&v221[12] = 2080;
                    *&v221[14] = string;
                    *&v221[22] = 1024;
                    *&v221[24] = v105;
                  }

                  else
                  {
                    v114 = *(a1 + 16);
                    if (!v114)
                    {
                      v114 = "[anonymous]";
                    }

                    *v221 = 136446722;
                    *&v221[4] = v114;
                    *&v221[12] = 2080;
                    *&v221[14] = string;
                    *&v221[22] = 1024;
                    *&v221[24] = v105;
                  }

                  v111 = _os_log_send_and_compose_impl();
                  v9 = &loc_2986E8000;
                  v112 = v105;
                  v113 = 582;
                  goto LABEL_205;
                }

                st_size = v219[0].st_size;
                if (v219[0].st_size < 0)
                {
                  _cryptex_signing_service_read_fd_cold_1();
                }

                if (HIDWORD(v219[0].st_size))
                {
                  if (*(a1 + 32))
                  {
                    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v107 = *(a1 + 16);
                    *v221 = 136446978;
                    if (!v107)
                    {
                      v107 = "[anonymous]";
                    }

                    *&v221[4] = v107;
                    *&v221[12] = 2048;
                    *&v221[14] = st_size;
                    *&v221[22] = 1024;
                    *&v221[24] = -1;
                    *&v221[28] = 1024;
                    *&v221[30] = 34;
                  }

                  else
                  {
                    v115 = *(a1 + 16);
                    if (!v115)
                    {
                      v115 = "[anonymous]";
                    }

                    *v221 = 136446978;
                    *&v221[4] = v115;
                    *&v221[12] = 2048;
                    *&v221[14] = v219[0].st_size;
                    *&v221[22] = 1024;
                    *&v221[24] = -1;
                    *&v221[28] = 1024;
                    *&v221[30] = 34;
                  }

                  v111 = _os_log_send_and_compose_impl();
                  v9 = &loc_2986E8000;
                  v113 = 593;
                  v112 = 34;
                  goto LABEL_205;
                }

                v80 = mmap(0, v219[0].st_size, 1, 1, v78, 0);
                if (v80 == -1)
                {
                  v108 = *__error();
                  if (*(a1 + 32))
                  {
                    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v109 = *(a1 + 16);
                    *v221 = 136446722;
                    if (!v109)
                    {
                      v109 = "[anonymous]";
                    }

                    *&v221[4] = v109;
                    *&v221[12] = 2080;
                    *&v221[14] = string;
                    *&v221[22] = 1024;
                    *&v221[24] = v108;
                  }

                  else
                  {
                    v116 = *(a1 + 16);
                    if (!v116)
                    {
                      v116 = "[anonymous]";
                    }

                    *v221 = 136446722;
                    *&v221[4] = v116;
                    *&v221[12] = 2080;
                    *&v221[14] = string;
                    *&v221[22] = 1024;
                    *&v221[24] = v108;
                  }

                  v111 = _os_log_send_and_compose_impl();
                  v9 = &loc_2986E8000;
                  v112 = v108;
                  v113 = 602;
                  goto LABEL_205;
                }

                v81 = v80;
                v82 = xpc_data_create(v80, st_size);
                xpc_array_append_value(xarraya, v82);
                v83 = *(a1 + 16);
                v208 = *__error();
                v84 = *(a1 + 32);
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  *v221 = 136446466;
                  v85 = "[anonymous]";
                  if (v83)
                  {
                    v85 = v83;
                  }

                  *&v221[4] = v85;
                  *&v221[12] = 2080;
                  *&v221[14] = string;
                  _os_log_impl(&dword_2986C0000, v84, OS_LOG_TYPE_DEFAULT, "%{public}s: added %s to ccx_im4m_array", v221, 0x16u);
                }

                *__error() = v208;
                v32 = v215;
                if (munmap(v81, st_size) == -1)
                {
                  _cryptex_bundle_init_cold_2(&v218, v221);
                }

                v55 = v216;
                v75 = v209;
                if (v82)
                {
                  os_release(v82);
                }

                if (++v76 >= xpc_array_get_count(v209))
                {
                  goto LABEL_141;
                }
              }

              v103 = *__error();
              if (*(a1 + 32))
              {
                os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                v104 = *(a1 + 16);
                *v221 = 136446722;
                if (!v104)
                {
                  v104 = "[anonymous]";
                }

                *&v221[4] = v104;
                *&v221[12] = 2080;
                *&v221[14] = string;
                *&v221[22] = 1024;
                *&v221[24] = v103;
              }

              else
              {
                v110 = *(a1 + 16);
                if (!v110)
                {
                  v110 = "[anonymous]";
                }

                *v221 = 136446722;
                *&v221[4] = v110;
                *&v221[12] = 2080;
                *&v221[14] = string;
                *&v221[22] = 1024;
                *&v221[24] = v103;
              }

              v111 = _os_log_send_and_compose_impl();
              v9 = &loc_2986E8000;
              v112 = v103;
              v113 = 574;
LABEL_205:
              v117 = createError("_cryptex_bundle_populate_signatures", "bundle.c", v113, "com.apple.security.cryptex.posix", v112, 0, v111);
              free(v111);
              *(v212[6] + 208) = 0;
              v90 = v117;
LABEL_206:
              if (xarraya)
              {
                os_release(xarraya);
              }

              if (v90)
              {
                xarray = v90;
                if (*(a1 + 32))
                {
                  os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                  v118 = *(a1 + 16);
                  if (!v118)
                  {
                    v118 = "[anonymous]";
                  }

                  v219[0].st_dev = 136446210;
                  *&v219[0].st_mode = v118;
                }

                else
                {
                  v153 = *(a1 + 16);
                  if (!v153)
                  {
                    v153 = "[anonymous]";
                  }

                  v219[0].st_dev = 136446210;
                  *&v219[0].st_mode = v153;
                }

                v154 = _os_log_send_and_compose_impl();
                Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 831, "com.apple.security.cryptex", 6, xarray, v154);
                free(v154);
LABEL_276:
                v57 = 2;
                goto LABEL_277;
              }

              goto LABEL_213;
            }

LABEL_141:
            *(v212[6] + 208) = xpc_copy(xarraya);
            v86 = *(a1 + 16);
            v87 = *__error();
            v88 = *(a1 + 32);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              if (!v86)
              {
                v86 = "[anonymous]";
              }

              count = xpc_array_get_count(xarraya);
              v219[0].st_dev = 136446466;
              *&v219[0].st_mode = v86;
              WORD2(v219[0].st_ino) = 2048;
              *(&v219[0].st_ino + 6) = count;
              _os_log_impl(&dword_2986C0000, v88, OS_LOG_TYPE_DEFAULT, "%{public}s: added %lu signatures", v219, 0x16u);
            }

            v90 = 0;
            *__error() = v87;
            v9 = &loc_2986E8000;
          }

          else
          {
            v98 = *(a1 + 16);
            v99 = *__error();
            v100 = *(a1 + 32);
            v32 = v215;
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = "[anonymous]";
              if (v98)
              {
                v101 = v98;
              }

              v219[0].st_dev = 136446210;
              *&v219[0].st_mode = v101;
              _os_log_impl(&dword_2986C0000, v100, OS_LOG_TYPE_DEFAULT, "%{public}s: Signatures array empty", v219, 0xCu);
            }

            v90 = 0;
            *__error() = v99;
            *(v212[6] + 208) = 0;
          }

          v55 = v216;
          goto LABEL_206;
        }

        v94 = *(a1 + 16);
        v95 = *__error();
        v96 = *(a1 + 32);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v219[0].st_dev = 136446722;
          v97 = "[anonymous]";
          if (v94)
          {
            v97 = v94;
          }

          *&v219[0].st_mode = v97;
          WORD2(v219[0].st_ino) = 2080;
          *(&v219[0].st_ino + 6) = v214;
          HIWORD(v219[0].st_gid) = 2080;
          *&v219[0].st_rdev = string_ptr;
          _os_log_impl(&dword_2986C0000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s: no Signatures found for:\nidentity: %s\nvariant = %s", v219, 0x20u);
        }

        *__error() = v95;
        *(v212[6] + 208) = 0;
        v55 = v216;
LABEL_213:
        v119 = 0;
        while (1)
        {
          v120 = *(MEMORY[0x29EDC9678] + v119);
          *v221 = 0;
          if ((*v120 & 0x10) != 0)
          {
            v131 = *(a1 + 16);
            v132 = *__error();
            v133 = *(a1 + 32);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              v134 = *(v120 + 40);
              v135 = "[anonymous]";
              if (v131)
              {
                v135 = v131;
              }

              v219[0].st_dev = 136446466;
              *&v219[0].st_mode = v135;
              WORD2(v219[0].st_ino) = 2080;
              *(&v219[0].st_ino + 6) = v134;
              v136 = v133;
              v137 = "%{public}s: skipping internal asset type: %s";
LABEL_231:
              _os_log_impl(&dword_2986C0000, v136, OS_LOG_TYPE_DEBUG, v137, v219, 0x16u);
            }

LABEL_232:
            *__error() = v132;
            goto LABEL_233;
          }

          dictionary = xpc_dictionary_get_dictionary(xdict, *(v120 + 48));
          if (!dictionary)
          {
            v138 = *(a1 + 16);
            v132 = *__error();
            v139 = *(a1 + 32);
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
            {
              v140 = *(v120 + 48);
              v141 = "[anonymous]";
              if (v138)
              {
                v141 = v138;
              }

              v219[0].st_dev = 136446466;
              *&v219[0].st_mode = v141;
              WORD2(v219[0].st_ino) = 2080;
              *(&v219[0].st_ino + 6) = v140;
              v136 = v139;
              v137 = "%{public}s: object not present; skipping: %s";
              goto LABEL_231;
            }

            goto LABEL_232;
          }

          v122 = _xpc_plist_value_copy(&_info, dictionary);
          if (!v122)
          {
            break;
          }

          v123 = v122;
          v124 = _cryptex_bundle_new_asset_from_object(*(a1 + 52), v120, v122, v221);
          if (v124)
          {
            v156 = v124;
            if (*(a1 + 32))
            {
              os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
              v157 = *(a1 + 16);
              v158 = *(v120 + 40);
              if (!v157)
              {
                v157 = "[anonymous]";
              }

              v219[0].st_dev = 136446722;
              *&v219[0].st_mode = v157;
              WORD2(v219[0].st_ino) = 2080;
              *(&v219[0].st_ino + 6) = v158;
              HIWORD(v219[0].st_gid) = 1024;
              v219[0].st_rdev = v156;
            }

            else
            {
              v169 = *(a1 + 16);
              if (!v169)
              {
                v169 = "[anonymous]";
              }

              v170 = *(v120 + 40);
              v219[0].st_dev = 136446722;
              *&v219[0].st_mode = v169;
              WORD2(v219[0].st_ino) = 2080;
              *(&v219[0].st_ino + 6) = v170;
              HIWORD(v219[0].st_gid) = 1024;
              v219[0].st_rdev = v124;
            }

            v171 = _os_log_send_and_compose_impl();
            v168 = createError("_cryptex_bundle_populate_assets", "bundle.c", 499, "com.apple.security.cryptex.posix", v156, 0, v171);
            free(v171);
            os_release(v123);
            v32 = v215;
            goto LABEL_289;
          }

          v125 = *(a1 + 16);
          v126 = *__error();
          v127 = *(a1 + 32);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
          {
            v128 = *(v120 + 40);
            v129 = "[anonymous]";
            if (v125)
            {
              v129 = v125;
            }

            v219[0].st_dev = 136446466;
            *&v219[0].st_mode = v129;
            WORD2(v219[0].st_ino) = 2080;
            *(&v219[0].st_ino + 6) = v128;
            _os_log_impl(&dword_2986C0000, v127, OS_LOG_TYPE_DEBUG, "%{public}s: adding asset: %s", v219, 0x16u);
          }

          *__error() = v126;
          v130 = v212[6];
          cryptex_core_set_asset();
          os_release(v123);
LABEL_233:
          v32 = v215;
          v55 = v216;
          v119 += 8;
          if (v119 == 96)
          {
            goto LABEL_234;
          }
        }

        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v155 = *(a1 + 16);
          v219[0].st_dev = 136446722;
          if (!v155)
          {
            v155 = "[anonymous]";
          }

          *&v219[0].st_mode = v155;
          WORD2(v219[0].st_ino) = 2080;
          *(&v219[0].st_ino + 6) = "Info";
          HIWORD(v219[0].st_gid) = 1024;
          v219[0].st_rdev = 212;
        }

        else
        {
          v164 = *(a1 + 16);
          if (!v164)
          {
            v164 = "[anonymous]";
          }

          v219[0].st_dev = 136446722;
          *&v219[0].st_mode = v164;
          WORD2(v219[0].st_ino) = 2080;
          *(&v219[0].st_ino + 6) = "Info";
          HIWORD(v219[0].st_gid) = 1024;
          v219[0].st_rdev = 212;
        }

        v165 = _os_log_send_and_compose_impl();
        v32 = v215;
        v166 = createError("_cryptex_bundle_populate_assets", "bundle.c", 490, "com.apple.security.cryptex.posix", 212, 0, v165);
        v167 = v165;
        v168 = v166;
        free(v167);
LABEL_289:
        if (!v168)
        {
LABEL_234:
          v142 = v212[6];
          if (cryptex_core_get_num_assets())
          {
            v9 = &loc_2986E8000;
            if (v212[6])
            {
              v143 = cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset() != 0;
              if (cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset())
              {
                if (v143)
                {
                  goto LABEL_244;
                }

LABEL_301:
                v175 = v212;
                _cryptex_bundle_add_cryptex_assets(a1, v212);
                v176 = v212[6];
                if (cryptex_core_is_cryptex1())
                {
                  v177 = _cryptex_populate_cryptex1_properties(a1, v212, v35);
                  if (v177)
                  {
                    v178 = v177;
                    if (*(a1 + 32))
                    {
                      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                      v179 = *(a1 + 16);
                      v219[0].st_dev = 136446466;
                      if (!v179)
                      {
                        v179 = "[anonymous]";
                      }

                      *&v219[0].st_mode = v179;
                      WORD2(v219[0].st_ino) = 1024;
                      *(&v219[0].st_ino + 6) = v178;
                    }

                    else
                    {
                      v197 = *(a1 + 16);
                      if (!v197)
                      {
                        v197 = "[anonymous]";
                      }

                      v219[0].st_dev = 136446466;
                      *&v219[0].st_mode = v197;
                      WORD2(v219[0].st_ino) = 1024;
                      *(&v219[0].st_ino + 6) = v177;
                    }

                    v161 = _os_log_send_and_compose_impl();
                    v163 = v178;
                    v162 = 865;
                    goto LABEL_275;
                  }

                  v180 = *(a1 + 16);
                  v181 = *__error();
                  v182 = *(a1 + 32);
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
                  {
                    v183 = "[anonymous]";
                    if (v180)
                    {
                      v183 = v180;
                    }

                    v184 = *(*(v212[6] + 216) + 40);
                    v219[0].st_dev = 136446722;
                    *&v219[0].st_mode = v183;
                    WORD2(v219[0].st_ino) = 2048;
                    *(&v219[0].st_ino + 6) = v33;
                    HIWORD(v219[0].st_gid) = 1024;
                    v219[0].st_rdev = v184;
                    _os_log_impl(&dword_2986C0000, v182, OS_LOG_TYPE_DEBUG, "%{public}s: nonce domain handle[%lu]: %u", v219, 0x1Cu);
                  }

                  *__error() = v181;
                  v185 = *(a1 + 16);
                  v186 = *__error();
                  v187 = *(a1 + 32);
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
                  {
                    v188 = "[anonymous]";
                    if (v185)
                    {
                      v188 = v185;
                    }

                    v189 = *(*(v212[6] + 216) + 48);
                    v219[0].st_dev = 136446722;
                    *&v219[0].st_mode = v188;
                    WORD2(v219[0].st_ino) = 2048;
                    *(&v219[0].st_ino + 6) = v33;
                    HIWORD(v219[0].st_gid) = 2080;
                    *&v219[0].st_rdev = v189;
                    _os_log_impl(&dword_2986C0000, v187, OS_LOG_TYPE_DEBUG, "%{public}s: Cryptex1 version[%lu]: %s", v219, 0x20u);
                  }

                  *__error() = v186;
                  v190 = *(a1 + 16);
                  v191 = *__error();
                  v192 = *(a1 + 32);
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
                  {
                    v193 = "[anonymous]";
                    if (v190)
                    {
                      v193 = v190;
                    }

                    v194 = *(*(v212[6] + 216) + 56);
                    v219[0].st_dev = 136446722;
                    *&v219[0].st_mode = v193;
                    WORD2(v219[0].st_ino) = 2048;
                    *(&v219[0].st_ino + 6) = v33;
                    HIWORD(v219[0].st_gid) = 2080;
                    *&v219[0].st_rdev = v194;
                    _os_log_impl(&dword_2986C0000, v192, OS_LOG_TYPE_DEBUG, "%{public}s: Cryptex1 preauth version[%lu]: %s", v219, 0x20u);
                  }

                  *__error() = v191;
                  v55 = v216;
                  v175 = v212;
                }

                v195 = _cryptex_list_elm_new(v175);
                *v195 = *(a1 + 64);
                *(a1 + 64) = v195;
                v196 = v175[6];
                cryptex_core_close();
                v57 = 0;
                xarray = 0;
LABEL_277:
                os_release(v212);
                goto LABEL_278;
              }

              if (cryptex_core_get_asset() == 0 || !v143)
              {
                goto LABEL_301;
              }

LABEL_244:
              v144 = *(a1 + 16);
              v145 = *__error();
              v146 = *(a1 + 32);
              if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
              {
                v219[0].st_dev = 136446466;
                v147 = "[anonymous]";
                if (v144)
                {
                  v147 = v144;
                }

                *&v219[0].st_mode = v147;
                WORD2(v219[0].st_ino) = 1024;
                *(&v219[0].st_ino + 6) = 45;
                _os_log_impl(&dword_2986C0000, v146, OS_LOG_TYPE_ERROR, "%{public}s: Invalid bundle contents: mixed Cryptex1 and legacy assets.: %{darwin.errno}d", v219, 0x12u);
              }

              *__error() = v145;
              v148 = 45;
              v55 = v216;
            }

            else
            {
              v148 = 22;
            }

            if (*(a1 + 32))
            {
              os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
              v159 = *(a1 + 16);
              v219[0].st_dev = 136446466;
              if (!v159)
              {
                v159 = "[anonymous]";
              }

              *&v219[0].st_mode = v159;
              WORD2(v219[0].st_ino) = 1024;
              *(&v219[0].st_ino + 6) = v148;
            }

            else
            {
              v160 = *(a1 + 16);
              if (!v160)
              {
                v160 = "[anonymous]";
              }

              v219[0].st_dev = 136446466;
              *&v219[0].st_mode = v160;
              WORD2(v219[0].st_ino) = 1024;
              *(&v219[0].st_ino + 6) = v148;
            }

            v161 = _os_log_send_and_compose_impl();
            v162 = 854;
            v163 = v148;
LABEL_275:
            Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", v162, "com.apple.security.cryptex.posix", v163, 0, v161);
            free(v161);
            xarray = 0;
            goto LABEL_276;
          }

          v149 = v212[2];
          v150 = *__error();
          v151 = v212[4];
          v9 = &loc_2986E8000;
          if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
          {
            v219[0].st_dev = 136446722;
            v152 = "[anonymous]";
            if (v149)
            {
              v152 = v149;
            }

            *&v219[0].st_mode = v152;
            WORD2(v219[0].st_ino) = 2048;
            *(&v219[0].st_ino + 6) = v33;
            HIWORD(v219[0].st_gid) = 2082;
            *&v219[0].st_rdev = v214;
            _os_log_impl(&dword_2986C0000, v151, OS_LOG_TYPE_INFO, "%{public}s: Build identity %lu (%{public}s) is not a cryptex. Skipping.", v219, 0x20u);
          }

          xarray = 0;
          *__error() = v150;
          v57 = 5;
          v55 = v216;
          goto LABEL_277;
        }

        xarray = v168;
        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v172 = *(a1 + 16);
          if (!v172)
          {
            v172 = "[anonymous]";
          }

          v219[0].st_dev = 136446210;
          *&v219[0].st_mode = v172;
        }

        else
        {
          v173 = *(a1 + 16);
          if (!v173)
          {
            v173 = "[anonymous]";
          }

          v219[0].st_dev = 136446210;
          *&v219[0].st_mode = v173;
        }

        v174 = _os_log_send_and_compose_impl();
        v9 = &loc_2986E8000;
        Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 841, "com.apple.security.cryptex", 6, xarray, v174);
        free(v174);
        v57 = 2;
        if (v212)
        {
          goto LABEL_277;
        }

LABEL_278:
        free(v214);
        if (v209)
        {
          os_release(v209);
        }

        os_release(xdict);
LABEL_85:
        if (object)
        {
          os_release(object);
        }

        if (v55)
        {
          os_release(v55);
        }

        if (v35)
        {
          os_release(v35);
        }

        if ((v57 == 5 || !v57) && ++v33 < xpc_array_get_count(v32))
        {
          continue;
        }

        os_release(v32);
        if (xarray)
        {
          CFRelease(xarray);
        }

        goto LABEL_343;
      }
    }

    v7 = v32;
LABEL_13:
    os_release(v7);
LABEL_2:
    empty = 0;
    goto LABEL_353;
  }

  empty = xpc_dictionary_create_empty();
  v6 = xpc_array_create_empty();
  xpc_dictionary_set_value(empty, "BuildIdentities", v6);
  *(a1 + 80) = xpc_retain(empty);
  if (v6)
  {
    os_release(v6);
  }

  if (empty)
  {
    v7 = empty;
    goto LABEL_13;
  }

LABEL_353:
  v204 = *MEMORY[0x29EDCA608];
  return empty;
}

uint64_t cryptex_bundle_copy_cryptex_for_chip2(uint64_t a1, uint64_t a2, const char *a3, void **a4, CFTypeRef *a5)
{
  v29 = *MEMORY[0x29EDCA608];
  cf = 0;
  *&v25[0] = 1;
  memset(v25 + 8, 0, 40);
  v9 = cryptex_identity_set_chip(v25, a2);
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v12 = *(a1 + 16);
      *v27 = 136446722;
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *&v27[4] = v12;
      *&v27[12] = 1024;
      *&v27[14] = v10;
      *&v27[18] = 1024;
      *&v27[20] = v10;
    }

    else
    {
      v14 = "[anonymous]";
      if (*(a1 + 16))
      {
        v14 = *(a1 + 16);
      }

      *v27 = 136446722;
      *&v27[4] = v14;
      *&v27[12] = 1024;
      *&v27[14] = v9;
      *&v27[18] = 1024;
      *&v27[20] = v9;
    }

    v15 = _os_log_send_and_compose_impl();
    v16 = "com.apple.security.cryptex.posix";
    v17 = 1396;
    v18 = v11;
    v19 = 0;
  }

  else
  {
    *v27 = v25[0];
    *&v27[16] = v25[1];
    v28 = v25[2];
    if (cryptex_bundle_copy_cryptex2(a1, v27, a3, a4, &cf))
    {
      goto LABEL_24;
    }

    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *v27 = 136446210;
      *&v27[4] = v13;
    }

    else
    {
      v20 = *(a1 + 16);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *v27 = 136446210;
      *&v27[4] = v20;
    }

    v15 = _os_log_send_and_compose_impl();
    v19 = cf;
    v16 = "com.apple.security.cryptex";
    v17 = 1403;
    v18 = 8;
  }

  Error = createError("cryptex_bundle_copy_cryptex_for_chip2", "bundle.c", v17, v16, v18, v19, v15);
  free(v15);
  if (a5 && Error)
  {
    *a5 = CFRetain(Error);
LABEL_23:
    CFRelease(Error);
    v22 = 0;
    goto LABEL_25;
  }

  if (Error)
  {
    goto LABEL_23;
  }

LABEL_24:
  v22 = 1;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t cryptex_bundle_set_cryptex2(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v115 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 40) & 2) != 0)
  {
    if (*(a2 + 32))
    {
      os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
      v9 = *(a2 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v9;
    }

    else
    {
      v19 = *(a2 + 16);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v19;
    }

    v20 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_set_cryptex2", "bundle.c", 1427, "com.apple.security.cryptex", 10, 0, v20);
    v7 = 0;
LABEL_25:
    free(v20);
    if (a3 && Error)
    {
      *a3 = CFRetain(Error);
    }

    else if (!Error)
    {
      v23 = 1;
      if (!v7)
      {
        goto LABEL_121;
      }

      goto LABEL_30;
    }

    CFRelease(Error);
    v23 = 0;
    if (!v7)
    {
      goto LABEL_121;
    }

LABEL_30:
    CFRelease(v7);
    goto LABEL_121;
  }

  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v8 = *(a1 + 16);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v8;
    }

    else
    {
      v22 = *(a1 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v22;
    }

    v20 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_set_cryptex2", "bundle.c", 1436, "com.apple.security.cryptex", 6, v7, v20);
    goto LABEL_25;
  }

  v10 = (a1 + 64);
  v11 = *(a2 + 16);
  v12 = *(a2 + 72);
  applier = *(a2 + 56);
  v106 = v12;
  v107 = *(a2 + 88);
  cryptex_elm = _cryptex_list_find_cryptex_elm((a1 + 64), &applier, v11, 0);
  v102 = a1;
  v103 = cryptex_elm;
  if (cryptex_elm)
  {
    v14 = cryptex_elm;
    v15 = cryptex_elm[1];
    value = xpc_dictionary_get_value(*(a1 + 80), "BuildIdentities");
    empty = xpc_array_create_empty();
    *&applier = MEMORY[0x29EDCA5F8];
    *(&applier + 1) = 0x40000000;
    *&v106 = ___cryptex_bundle_manifest_remove_build_identity_block_invoke;
    *(&v106 + 1) = &__block_descriptor_tmp_1;
    *&v107 = a1;
    *(&v107 + 1) = v15;
    v108 = empty;
    xpc_array_apply(value, &applier);
    xpc_dictionary_set_value(*(a1 + 80), "BuildIdentities", empty);
    if (empty)
    {
      os_release(empty);
    }

    for (i = *v10; i != v14; i = *i)
    {
      v10 = i;
    }

    *v10 = *i;
    *v14 = -1;
    _cryptex_list_elm_destroy(&v103);
  }

  v24 = *(a2 + 72);
  applier = *(a2 + 56);
  v106 = v24;
  v107 = *(a2 + 88);
  v104 = 0;
  v25 = xpc_dictionary_create_empty();
  v26 = _cryptex_identity_copy_description(&applier);
  if (BYTE8(applier))
  {
    v34 = *(a1 + 16);
    v31 = *__error();
    v35 = *(a1 + 32);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = "[anonymous]";
      if (v34)
      {
        v36 = v34;
      }

      *buf = 136446210;
      v110 = v36;
      _os_log_impl(&dword_2986C0000, v35, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding generic identity to manifest", buf, 0xCu);
    }

    v99 = 0;
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v27 = xpc_string_create_with_format("%#x", *(a2 + 72));
    v28 = xpc_string_create_with_format("%#x", *(a2 + 76));
    v29 = xpc_string_create_with_format("%#x", *(a2 + 80));
    v99 = v27;
    xpc_dictionary_set_value(v25, "ApBoardID", v27);
    v97 = v28;
    xpc_dictionary_set_value(v25, "ApChipID", v28);
    v96 = v29;
    xpc_dictionary_set_value(v25, "ApSecurityDomain", v29);
    v30 = *(a1 + 16);
    v31 = *__error();
    v32 = *(a1 + 32);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = "[anonymous]";
      if (v30)
      {
        v33 = v30;
      }

      *buf = 136446466;
      v110 = v33;
      v111 = 2080;
      v112 = v26;
      _os_log_impl(&dword_2986C0000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: identity: %s", buf, 0x16u);
    }
  }

  *__error() = v31;
  v37 = *(*(a2 + 48) + 216);
  if (v37)
  {
    v38 = xpc_int64_create(*(v37 + 40));
    v39 = xpc_string_create(*(v37 + 56));
    v40 = xpc_string_create(*(v37 + 48));
    v95 = v38;
    xpc_dictionary_set_value(v25, "Cryptex1,NonceDomain", v38);
    v94 = v39;
    xpc_dictionary_set_value(v25, "Cryptex1,PreauthorizationVersion", v39);
    object = v40;
    xpc_dictionary_set_value(v25, "Cryptex1,Version", v40);
    xpc_dictionary_set_BOOL(v25, "Cryptex1,UseProductClass", *(v37 + 65));
    if ((BYTE8(applier) & 4) != 0)
    {
      v93 = xpc_string_create_with_format("%#x", *(a2 + 84));
      xpc_dictionary_set_value(v25, "Cryptex1,ChipID", v93);
      if ((BYTE8(applier) & 2) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v93 = 0;
      if ((BYTE8(applier) & 2) != 0)
      {
LABEL_47:
        v41 = xpc_int64_create(*(a2 + 92));
        v42 = xpc_int64_create(*(a2 + 88));
        v43 = xpc_string_create_with_format("%#x", *(a2 + 96));
        v91 = v42;
        xpc_dictionary_set_value(v25, "Cryptex1,Type", v42);
        v90 = v41;
        xpc_dictionary_set_value(v25, "Cryptex1,SubType", v41);
        v89 = v43;
        xpc_dictionary_set_value(v25, "Cryptex1,ProductClass", v43);
        goto LABEL_51;
      }
    }

    v90 = 0;
    v91 = 0;
    v89 = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v95 = 0;
    object = 0;
  }

LABEL_51:
  v44 = *(a2 + 48);
  if (cryptex_core_get_info_asset())
  {
    v45 = *(a2 + 48);
    cryptex_core_parse_info_asset();
    if (v104 == 1)
    {
      xpc_dictionary_set_BOOL(v25, "Cryptex1,DataOnly", 1);
    }
  }

  v100 = v25;
  v98 = v26;
  if (*(a2 + 40))
  {
    v52 = *(a1 + 16);
    v48 = *__error();
    v53 = *(a1 + 32);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = "[anonymous]";
      if (v52)
      {
        v54 = v52;
      }

      *buf = 136446210;
      v110 = v54;
      _os_log_impl(&dword_2986C0000, v53, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding generic variant to manifest", buf, 0xCu);
    }

    v87 = 0;
    v88 = 0;
  }

  else
  {
    v46 = xpc_dictionary_create_empty();
    v87 = xpc_string_create(*(a2 + 16));
    xpc_dictionary_set_value(v46, "Variant", v87);
    v88 = v46;
    xpc_dictionary_set_value(v25, "Info", v46);
    v47 = *(a1 + 16);
    v48 = *__error();
    v49 = *(a1 + 32);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = "[anonymous]";
      v51 = *(a2 + 16);
      if (v47)
      {
        v50 = v47;
      }

      *buf = 136446466;
      v110 = v50;
      v111 = 2080;
      v112 = v51;
      _os_log_impl(&dword_2986C0000, v49, OS_LOG_TYPE_DEBUG, "%{public}s: variant: %s", buf, 0x16u);
    }
  }

  *__error() = v48;
  v55 = MEMORY[0x29EDC9678];
  v56 = 64;
  xdict = xpc_dictionary_create_empty();
  do
  {
    v57 = xpc_dictionary_create_empty();
    v58 = xpc_dictionary_create_empty();
    v59 = *(*(a2 + 48) + v56);
    if (!v59)
    {
      v70 = *(a2 + 16);
      v62 = *__error();
      v71 = *(a2 + 32);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = "[anonymous]";
        if (v70)
        {
          v72 = v70;
        }

        v73 = *(*v55 + 40);
        *buf = 136446466;
        v110 = v72;
        v111 = 2080;
        v112 = v73;
        v74 = v71;
        v75 = "%{public}s: no asset of type: %s";
        goto LABEL_81;
      }

LABEL_82:
      *__error() = v62;
      goto LABEL_83;
    }

    v60 = **(v59 + 8);
    v61 = *(v102 + 16);
    v62 = *__error();
    v63 = *(v102 + 32);
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
    if ((v60 & 0x10) != 0)
    {
      if (v64)
      {
        v76 = "[anonymous]";
        if (v61)
        {
          v76 = v61;
        }

        v77 = *(*(v59 + 8) + 40);
        *buf = 136446466;
        v110 = v76;
        v111 = 2080;
        v112 = v77;
        v74 = v63;
        v75 = "%{public}s: skip adding internal asset %s";
LABEL_81:
        _os_log_impl(&dword_2986C0000, v74, OS_LOG_TYPE_DEBUG, v75, buf, 0x16u);
        goto LABEL_82;
      }

      goto LABEL_82;
    }

    if (v64)
    {
      v65 = "[anonymous]";
      if (v61)
      {
        v65 = v61;
      }

      v66 = *(*(v59 + 8) + 40);
      v67 = *(v59 + 32);
      *buf = 136446722;
      v110 = v65;
      v111 = 2080;
      v112 = v66;
      v113 = 2080;
      v114 = v67;
      _os_log_impl(&dword_2986C0000, v63, OS_LOG_TYPE_DEBUG, "%{public}s: adding asset: type = %s, name = %s", buf, 0x20u);
    }

    *__error() = v62;
    v68 = _cryptex_bundle_default_asset_path(a2, v59);
    v69 = xpc_string_create(v68);
    xpc_dictionary_set_value(v58, "Path", v69);
    xpc_dictionary_set_value(v57, "Info", v58);
    xpc_dictionary_set_value(xdict, *(*v55 + 48), v57);
    free(v68);
    if (v69)
    {
      os_release(v69);
    }

LABEL_83:
    if (v58)
    {
      os_release(v58);
    }

    if (v57)
    {
      os_release(v57);
    }

    v55 += 8;
    v56 += 8;
  }

  while (v56 != 160);
  xpc_dictionary_set_value(v100, "Manifest", xdict);
  v78 = xpc_copy_clean_description();
  v79 = *(v102 + 16);
  v80 = *__error();
  v81 = *(v102 + 32);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    v82 = "[anonymous]";
    if (v79)
    {
      v82 = v79;
    }

    *buf = 136446466;
    v110 = v82;
    v111 = 2080;
    v112 = v78;
    _os_log_impl(&dword_2986C0000, v81, OS_LOG_TYPE_DEBUG, "%{public}s: adding build identity:\n%s", buf, 0x16u);
  }

  *__error() = v80;
  v83 = xpc_dictionary_get_value(*(v102 + 80), "BuildIdentities");
  xpc_array_append_value(v83, v100);
  free(v98);
  free(v78);
  if (object)
  {
    os_release(object);
  }

  if (v94)
  {
    os_release(v94);
  }

  if (v95)
  {
    os_release(v95);
  }

  if (v89)
  {
    os_release(v89);
  }

  if (v90)
  {
    os_release(v90);
  }

  if (v91)
  {
    os_release(v91);
  }

  if (v93)
  {
    os_release(v93);
  }

  if (v96)
  {
    os_release(v96);
  }

  if (v97)
  {
    os_release(v97);
  }

  if (v99)
  {
    os_release(v99);
  }

  if (xdict)
  {
    os_release(xdict);
  }

  if (v87)
  {
    os_release(v87);
  }

  if (v88)
  {
    os_release(v88);
  }

  if (v100)
  {
    os_release(v100);
  }

  v84 = _cryptex_list_elm_new(a2);
  *v84 = *(v102 + 64);
  *(v102 + 64) = v84;
  _cryptex_bundle_add_cryptex_assets(v102, a2);
  v23 = 1;
LABEL_121:
  v85 = *MEMORY[0x29EDCA608];
  return v23;
}

void _cryptex_bundle_add_cryptex_assets(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x29EDC9678];
  v29 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = *(v5 + 8 * v4);
    if ((*v6 & 0x10) != 0)
    {
      v17 = a1[2];
      v18 = *__error();
      v19 = a1[4];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(v6 + 40);
        v21 = "[anonymous]";
        if (v17)
        {
          v21 = v17;
        }

        *buf = 136446466;
        v26 = v21;
        v27 = 2080;
        v28 = v20;
        _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding internal asset %s", buf, 0x16u);
      }

      *__error() = v18;
    }

    else
    {
      v7 = *(*(a2 + 48) + 8 * v4 + 64);
      if (v7)
      {
        __s2 = 0;
        v8 = *(a2 + 16);
        if (asprintf(&__s2, "__%s_%s", v8, *(*(v7 + 8) + 40)) < 0)
        {
          _cryptex_bundle_add_cryptex_assets_cold_1(&v24, buf);
        }

        v9 = __s2;
        v10 = a1[9];
        if (v10)
        {
          while (strcmp(*v10, v9))
          {
            v10 = *(v10 + 16);
            if (!v10)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          v11 = _cryptex_bundle_default_asset_path(a2, v7);
          v12 = a1[2];
          v13 = *__error();
          v14 = a1[4];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v15 = "[anonymous]";
            if (v12)
            {
              v15 = v12;
            }

            v26 = v15;
            v27 = 2080;
            v28 = v9;
            _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: adding cryptex bundle asset: %s", buf, 0x16u);
          }

          *__error() = v13;
          v16 = _cryptex_bundle_asset_new(v7, v9, v11);
          v16[2] = a1[9];
          a1[9] = v16;
          free(v11);
        }

        free(v9);
      }
    }

    ++v4;
  }

  while (v4 != 12);
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t cryptex_bundle_write2(uint64_t a1, _DWORD *a2, CFTypeRef *a3)
{
  v59 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 48);
  v47 = *(a1 + 48);
  if ((*a2 & 0x80000000) != 0)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v9;
    }

    else
    {
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v15;
    }

    v16 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_write2", "bundle.c", 1480, "com.apple.security.cryptex", 11, 0, v16);
    free(v16);
    v7 = 0;
    goto LABEL_52;
  }

  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v8 = *(a1 + 16);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v8;
    }

    else
    {
      v12 = *(a1 + 16);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v12;
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = 1489;
    goto LABEL_51;
  }

  *(a1 + 48) = claimfd_np();
  v10 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_restore, 512, 493, v5 + 1);
  if (v10)
  {
    v7 = v10;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v11;
    }

    else
    {
      v20 = *(a1 + 16);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v20;
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = 1500;
    goto LABEL_51;
  }

  v18 = _cryptex_bundle_write_manifest(a1);
  if (v18)
  {
    v7 = v18;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v19 = *(a1 + 16);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v19;
    }

    else
    {
      v27 = *(a1 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *v49 = 136446210;
      v50 = v27;
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = 1509;
    goto LABEL_51;
  }

  v21 = *(a1 + 72);
  if (!v21)
  {
LABEL_46:
    v7 = 0;
    goto LABEL_101;
  }

  bzero(v49, 0x400uLL);
  while (1)
  {
    v22 = dirname_r(*(v21 + 8), v49);
    if (!v22)
    {
      v32 = *__error();
      v33 = v32;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v34 = *(a1 + 16);
        if (!v34)
        {
          v34 = "[anonymous]";
        }
      }

      else
      {
        v34 = *(a1 + 16);
        if (!v34)
        {
          v34 = "[anonymous]";
        }
      }

      v53 = 136446466;
      v54 = v34;
      v55 = 1024;
      LODWORD(v56) = v32;
      v41 = _os_log_send_and_compose_impl();
      v42 = 1089;
      goto LABEL_95;
    }

    v23 = v22;
    v24 = mkpathat_np(v5[1], v22, 0x1EDu);
    if (v24)
    {
      v25 = v24 == 17;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v39 = v24;
      v33 = v24;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v40 = *(a1 + 16);
        v53 = 136446722;
        if (!v40)
        {
          v40 = "[anonymous]";
        }

        v54 = v40;
        v55 = 2080;
        v56 = v23;
        v57 = 1024;
        v58 = v39;
      }

      else
      {
        v45 = *(a1 + 16);
        if (!v45)
        {
          v45 = "[anonymous]";
        }

        v53 = 136446722;
        v54 = v45;
        v55 = 2080;
        v56 = v23;
        v57 = 1024;
        v58 = v24;
      }

      v41 = _os_log_send_and_compose_impl();
      v42 = 1100;
LABEL_95:
      v7 = createError("_cryptex_bundle_write_assets", "bundle.c", v42, "com.apple.security.cryptex.posix", v33, 0, v41);
      free(v41);
      goto LABEL_96;
    }

    v26 = openat(v5[1], *(v21 + 8), 514, 438);
    if (v26 < 0)
    {
      v35 = *__error();
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v36 = *(a1 + 16);
        if (!v36)
        {
          v36 = "[anonymous]";
        }
      }

      else
      {
        v36 = *(a1 + 16);
        if (!v36)
        {
          v36 = "[anonymous]";
        }
      }

      v53 = 136446466;
      v54 = v36;
      v55 = 1024;
      LODWORD(v56) = v35;
      v43 = _os_log_send_and_compose_impl();
      v7 = createError("_cryptex_bundle_write_assets", "bundle.c", 1109, "com.apple.security.cryptex.posix", v35, 0, v43);
      free(v43);
      if (v26 != -1)
      {
        goto LABEL_89;
      }

      goto LABEL_96;
    }

    if (lseek(*(*(v21 + 24) + 16), 0, 0) == -1)
    {
      cryptex_bundle_write2_cold_2(&v48, &v53);
    }

    if (fcopyfile(*(*(v21 + 24) + 16), v26, 0, 0xFu) < 0)
    {
      break;
    }

    if (close(v26) == -1)
    {
      goto LABEL_90;
    }

    v21 = *(v21 + 16);
    if (!v21)
    {
      goto LABEL_46;
    }
  }

  v37 = *__error();
  if (*(a1 + 32))
  {
    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    v38 = *(a1 + 16);
    if (!v38)
    {
      v38 = "[anonymous]";
    }
  }

  else
  {
    v38 = *(a1 + 16);
    if (!v38)
    {
      v38 = "[anonymous]";
    }
  }

  v53 = 136446466;
  v54 = v38;
  v55 = 1024;
  LODWORD(v56) = v37;
  v44 = _os_log_send_and_compose_impl();
  v7 = createError("_cryptex_bundle_write_assets", "bundle.c", 1121, "com.apple.security.cryptex.posix", v37, 0, v44);
  free(v44);
LABEL_89:
  if (close(v26) == -1)
  {
LABEL_90:
    _cryptex_bundle_new_asset_from_object_cold_1(&v48, &v53);
  }

LABEL_96:
  if (!v7)
  {
LABEL_101:
    Error = 0;
    goto LABEL_52;
  }

  if (*(a1 + 32))
  {
    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    v46 = *(a1 + 16);
    if (!v46)
    {
      v46 = "[anonymous]";
    }
  }

  else
  {
    v46 = *(a1 + 16);
    if (!v46)
    {
      v46 = "[anonymous]";
    }
  }

  *v49 = 136446466;
  v50 = v46;
  v51 = 1024;
  v52 = -1;
  v13 = _os_log_send_and_compose_impl();
  v14 = 1520;
LABEL_51:
  Error = createError("cryptex_bundle_write2", "bundle.c", v14, "com.apple.security.cryptex", 7, v7, v13);
  free(v13);
LABEL_52:
  v28 = v47;
  if (*v5 != v47)
  {
    close_drop_np();
    close_drop_optional_np();
    v28 = v47;
  }

  *v5 = v28;
  if (a3 && Error)
  {
    *a3 = CFRetain(Error);
    goto LABEL_58;
  }

  if (Error)
  {
LABEL_58:
    CFRelease(Error);
    v29 = 0;
    if (v7)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v29 = 1;
    if (v7)
    {
LABEL_59:
      CFRelease(v7);
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return v29;
}

CFErrorRef _cryptex_bundle_open(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + *(a2 + 8));
  if (v6 < 0)
  {
    _cryptex_bundle_open_cold_1(&v29, &v30, a2);
  }

  v10 = ((*a2 & 1) << 20) | a3;
  if ((a3 & 0x200) == 0 || (v10 & 0x100000) == 0)
  {
    goto LABEL_9;
  }

  v11 = mkdirat(v6, *(a2 + 16), a4);
  if ((v11 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v12 = *__error();
  if (!v12 || v12 == 17)
  {
    v10 &= ~0x200u;
LABEL_9:
    v13 = openat(v6, *(a2 + 16), v10, a4);
    v28 = v13;
    if (v13 < 0)
    {
      v15 = v13;
      v16 = *__error();
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        if (*(a1 + 16))
        {
          v17 = *(a1 + 16);
        }

        else
        {
          v17 = "[anonymous]";
        }
      }

      else if (*(a1 + 16))
      {
        v17 = *(a1 + 16);
      }

      else
      {
        v17 = "[anonymous]";
      }

      v20 = *(a2 + 16);
      v21 = *__error();
      v30 = 136446722;
      v31 = v17;
      v32 = 2080;
      v33 = v20;
      v34 = 1024;
      v35 = v21;
      v22 = _os_log_send_and_compose_impl();
      Error = createError("_cryptex_bundle_open", "bundle.c", 1228, "com.apple.security.cryptex.posix", v16, 0, v22);
      free(v22);
    }

    else
    {
      Error = 0;
      *a5 = claimfd_np();
      v15 = v28;
    }

    if (v15 != -1 && close(v15) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v29, &v30);
    }

    goto LABEL_30;
  }

  if (*(a1 + 32))
  {
    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    v18 = *(a1 + 16);
    v19 = *(a2 + 16);
    v30 = 136446722;
    if (!v18)
    {
      v18 = "[anonymous]";
    }

    v31 = v18;
    v32 = 2080;
    v33 = v19;
    v34 = 1024;
    v35 = v11;
  }

  else
  {
    v23 = *(a1 + 16);
    if (!v23)
    {
      v23 = "[anonymous]";
    }

    v24 = *(a2 + 16);
    v30 = 136446722;
    v31 = v23;
    v32 = 2080;
    v33 = v24;
    v34 = 1024;
    v35 = v11;
  }

  v25 = _os_log_send_and_compose_impl();
  Error = createError("_cryptex_bundle_open", "bundle.c", 1218, "com.apple.security.cryptex.posix", v11, 0, v25);
  free(v25);
LABEL_30:
  v26 = *MEMORY[0x29EDCA608];
  return Error;
}

CFErrorRef _cryptex_bundle_write_manifest(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  error = 0;
  __fd = -1;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v2 = *(a1 + 80);
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v3)
  {
    v10 = *(a1 + 80);
    v11 = xpc_copy_debug_description();
    v12 = v11;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v13 = *(a1 + 16);
      v39 = 136446722;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = "[anonymous]";
      }

      v40 = v14;
      v41 = 2080;
      v42 = v12;
      v43 = 1024;
      v44 = 214;
    }

    else
    {
      v24 = "[anonymous]";
      if (*(a1 + 16))
      {
        v24 = *(a1 + 16);
      }

      v39 = 136446722;
      v40 = v24;
      v41 = 2080;
      v42 = v11;
      v43 = 1024;
      v44 = 214;
    }

    v25 = _os_log_send_and_compose_impl();
    v26 = createError("_cryptex_bundle_write_manifest", "bundle.c", 373, "com.apple.security.cryptex.posix", 214, 0, v25);
    free(v25);
    free(v12);
    goto LABEL_39;
  }

  v4 = CFPropertyListCreateData(0, v3, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (!v4)
  {
    v15 = CFErrorCopyFailureReason(error);
    v16 = v15;
    if (v15)
    {
      v17 = _CFStringCopyUTF8String(v15);
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = "unknown failure";
    }

    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v29 = *(a1 + 16);
      v39 = 136446722;
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = "[anonymous]";
      }

      v40 = v30;
      v41 = 2080;
      v42 = v18;
      v43 = 1024;
      v44 = 222;
    }

    else
    {
      v31 = "[anonymous]";
      if (*(a1 + 16))
      {
        v31 = *(a1 + 16);
      }

      v39 = 136446722;
      v40 = v31;
      v41 = 2080;
      v42 = v18;
      v43 = 1024;
      v44 = 222;
    }

    v32 = _os_log_send_and_compose_impl();
    v26 = createError("_cryptex_bundle_write_manifest", "bundle.c", 393, "com.apple.security.cryptex.posix", 222, 0, v32);
    free(v32);
    free(v17);
    if (v16)
    {
      CFRelease(v16);
    }

LABEL_39:
    buff_destroy(v45);
    v5 = 0;
    v8 = 0;
    goto LABEL_47;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v5);
  buff_init_signed(v45, 0, 0, BytePtr, Length);
  v8 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_manifest, 513, 438, &__fd);
  if (v8)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v39 = 136446210;
      v40 = v9;
    }

    else
    {
      v27 = *(a1 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v39 = 136446210;
      v40 = v27;
    }

    v28 = _os_log_send_and_compose_impl();
    v26 = createError("_cryptex_bundle_write_manifest", "bundle.c", 406, "com.apple.security.cryptex", 6, v8, v28);
    free(v28);
    v19 = __fd;
  }

  else
  {
    v19 = __fd;
    v20 = _write_file(__fd, v45);
    if (v20)
    {
      v21 = v20;
      v22 = v20;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v23 = *(a1 + 16);
        if (!v23)
        {
          v23 = "[anonymous]";
        }

        v39 = 136446466;
        v40 = v23;
        v41 = 1024;
        LODWORD(v42) = v21;
      }

      else
      {
        v33 = *(a1 + 16);
        if (!v33)
        {
          v33 = "[anonymous]";
        }

        v39 = 136446466;
        v40 = v33;
        v41 = 1024;
        LODWORD(v42) = v20;
      }

      v34 = _os_log_send_and_compose_impl();
      v26 = createError("_cryptex_bundle_write_manifest", "bundle.c", 413, "com.apple.security.cryptex.posix", v22, 0, v34);
      free(v34);
    }

    else
    {
      v26 = 0;
    }
  }

  buff_destroy(v45);
  if (v19 != -1 && close(v19) == -1)
  {
    _cryptex_bundle_new_asset_from_object_cold_1(&v39, v45);
  }

LABEL_47:
  if (error)
  {
    CFRelease(error);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v35 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t cryptex_bundle_copy_build_manifest2(uint64_t a1, xpc_object_t *a2, CFTypeRef *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 16);
    v9 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_copy_build_manifest2", "bundle.c", 1552, "com.apple.security.cryptex", 6, v7, v9);
    free(v9);
    if (a3 && Error)
    {
      *a3 = CFRetain(Error);
    }

    else if (!Error)
    {
      v8 = 1;
      goto LABEL_10;
    }

    CFRelease(Error);
    v8 = 0;
LABEL_10:
    CFRelease(v7);
    goto LABEL_11;
  }

  *a2 = xpc_retain(*(a1 + 80));
  v8 = 1;
LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t cryptex_bundle_update_build_manifest2(uint64_t a1, void *a2, int a3, CFTypeRef *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 80);
  if (v6)
  {
    if (v6 != a2)
    {
      xpc_release(v6);
      *(a1 + 80) = a2;
    }

    if (!a3 || (v9 = _cryptex_bundle_write_manifest(a1)) == 0)
    {
      v11 = 1;
      goto LABEL_19;
    }

    v10 = v9;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 16);
    v12 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_update_build_manifest2", "bundle.c", 1595, "com.apple.security.cryptex", 7, v10, v12);
  }

  else
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 16);
    v12 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_bundle_update_build_manifest2", "bundle.c", 1580, "com.apple.security.cryptex", 6, 0, v12);
    v10 = 0;
  }

  free(v12);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  else if (!Error)
  {
    v11 = 1;
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  CFRelease(Error);
  v11 = 0;
  if (v10)
  {
LABEL_18:
    CFRelease(v10);
  }

LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

CFIndex cryptex_bundle_copy_cryptex(uint64_t a1, _OWORD *a2, const char *a3, void **a4)
{
  v8 = 0;
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = a2[2];
  if (cryptex_bundle_copy_cryptex2(a1, v7, a3, a4, &v8))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v8);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_copy_cryptex_for_chip(uint64_t a1, uint64_t a2, const char *a3, void **a4)
{
  cf = 0;
  if (cryptex_bundle_copy_cryptex_for_chip2(a1, a2, a3, a4, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_set_cryptex(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (cryptex_bundle_set_cryptex2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_write(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  if (cryptex_bundle_write2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_copy_build_manifest(uint64_t a1, xpc_object_t *a2)
{
  cf = 0;
  if (cryptex_bundle_copy_build_manifest2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_update_build_manifest(uint64_t a1, void *a2, int a3)
{
  cf = 0;
  if (cryptex_bundle_update_build_manifest2(a1, a2, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

uint64_t _cryptex_populate_cryptex1_properties(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x29EDCA608];
  v6 = _xpc_plist_value_copy(&_cryptex1_nonce_domain, a3);
  if (v6)
  {
    v7 = v6;
    if (xpc_int64_get_value(v6) >> 32)
    {
      v8 = *(a1 + 16);
      v9 = *__error();
      v10 = *(a1 + 32);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "[anonymous]";
        if (v8)
        {
          v11 = v8;
        }

        *buf = 136446722;
        v60 = v11;
        v61 = 2080;
        v62 = "Cryptex1,NonceDomain";
        v63 = 1024;
        v64 = 84;
        _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v9;
      v12 = 84;
      goto LABEL_64;
    }

    v17 = _xpc_plist_value_copy(&_cryptex1_version, a3);
    if (!v17)
    {
      v25 = *(a1 + 16);
      v26 = *__error();
      v27 = *(a1 + 32);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = "[anonymous]";
        if (v25)
        {
          v28 = v25;
        }

        *buf = 136446722;
        v60 = v28;
        v61 = 2080;
        v62 = "Cryptex1,Version";
        v63 = 1024;
        v64 = 22;
        _os_log_impl(&dword_2986C0000, v27, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v26;
      v12 = 22;
      goto LABEL_64;
    }

    v18 = v17;
    if (!xpc_string_get_string_ptr(v17))
    {
      v29 = *(a1 + 16);
      v30 = *__error();
      v31 = *(a1 + 32);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = "[anonymous]";
        if (v29)
        {
          v32 = v29;
        }

        *buf = 136446722;
        v60 = v32;
        v61 = 2080;
        v62 = "Cryptex1,Version";
        v63 = 1024;
        v64 = 22;
        _os_log_impl(&dword_2986C0000, v31, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v30;
      v12 = 22;
      goto LABEL_63;
    }

    v19 = _xpc_plist_value_copy(&_cryptex1_styp, a3);
    object = v19;
    if (v19)
    {
      if (xpc_int64_get_value(v19) >> 32)
      {
        v20 = *(a1 + 16);
        v21 = *__error();
        v22 = *(a1 + 32);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = "[anonymous]";
          if (v20)
          {
            v23 = v20;
          }

          *buf = 136446722;
          v60 = v23;
          v61 = 2080;
          v62 = "Cryptex1,SubType";
          v63 = 1024;
          v64 = 22;
          _os_log_impl(&dword_2986C0000, v22, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v21;
        v12 = 22;
        v24 = object;
LABEL_62:
        os_release(v24);
LABEL_63:
        os_release(v18);
LABEL_64:
        os_release(v7);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = *(a1 + 16);
      v34 = *__error();
      v35 = *(a1 + 32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = "[anonymous]";
        if (v33)
        {
          v36 = v33;
        }

        *buf = 136446466;
        v60 = v36;
        v61 = 1024;
        LODWORD(v62) = 0;
        _os_log_impl(&dword_2986C0000, v35, OS_LOG_TYPE_INFO, "%{public}s: Assuming default SubType: %u", buf, 0x12u);
      }

      *__error() = v34;
    }

    v37 = _xpc_plist_value_copy(&_cryptex1_preauthorization_version, a3);
    if (v37)
    {
      v38 = v37;
      if (xpc_string_get_string_ptr(v37))
      {
        v39 = _xpc_plist_value_copy(&_cryptex1_use_product_class, a3);
        v40 = v39;
        if (v39)
        {
          xpc_BOOL_get_value(v39);
        }

        v49 = cryptex_core_cx1_properties_create();
        if (v49)
        {
          v50 = v49;
          v51 = a2[6];
          cryptex_core_set_cryptex1_properties();
          os_release(v50);
          v12 = 0;
        }

        else
        {
          v52 = a2[2];
          v53 = *__error();
          v54 = a2[4];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = "[anonymous]";
            if (v52)
            {
              v55 = v52;
            }

            *buf = 136446466;
            v60 = v55;
            v61 = 1024;
            LODWORD(v62) = 12;
            _os_log_impl(&dword_2986C0000, v54, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
          }

          *__error() = v53;
          v12 = 12;
        }

        if (v40)
        {
          os_release(v40);
        }
      }

      else
      {
        v45 = *(a1 + 16);
        v46 = *__error();
        v47 = *(a1 + 32);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = "[anonymous]";
          if (v45)
          {
            v48 = v45;
          }

          *buf = 136446722;
          v60 = v48;
          v61 = 2080;
          v62 = "Cryptex1,PreauthorizationVersion";
          v63 = 1024;
          v64 = 22;
          _os_log_impl(&dword_2986C0000, v47, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v46;
        v12 = 22;
      }

      os_release(v38);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *__error();
      v43 = *(a1 + 32);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = "[anonymous]";
        if (v41)
        {
          v44 = v41;
        }

        *buf = 136446722;
        v60 = v44;
        v61 = 2080;
        v62 = "Cryptex1,PreauthorizationVersion";
        v63 = 1024;
        v64 = 22;
        _os_log_impl(&dword_2986C0000, v43, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v42;
      v12 = 22;
    }

    v24 = object;
    if (!object)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v13 = *(a1 + 16);
  v14 = *__error();
  v15 = *(a1 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = "[anonymous]";
    if (v13)
    {
      v16 = v13;
    }

    *buf = 136446722;
    v60 = v16;
    v61 = 2080;
    v62 = "Cryptex1,NonceDomain";
    v63 = 1024;
    v64 = 22;
    _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v14;
  v12 = 22;
LABEL_65:
  v56 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ___cryptex_bundle_manifest_remove_build_identity_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v31 = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(xdict, "Info");
  string = xpc_dictionary_get_string(value, "Variant");
  v7 = xpc_dictionary_get_string(xdict, "ApBoardID");
  v8 = xpc_dictionary_get_string(xdict, "ApChipID");
  v9 = xpc_dictionary_get_string(xdict, "ApSecurityDomain");
  v10 = _strtou32(v7, 0, 0);
  if (*__error())
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v14 = *__error();
      v25 = 136446722;
      v26 = v11;
      v27 = 2080;
      v28 = v7;
      v29 = 1024;
      v30 = v14;
      v15 = "%{public}s: unable to convert to uint for BORD: %s: %{darwin.errno}d";
LABEL_16:
      _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_ERROR, v15, &v25, 0x1Cu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v16 = _strtou32(v8, 0, 0);
  if (*__error())
  {
    v17 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v18 = *__error();
      v25 = 136446722;
      v26 = v17;
      v27 = 2080;
      v28 = v8;
      v29 = 1024;
      v30 = v18;
      v15 = "%{public}s: unable to convert to uint for CHIP: %s: %{darwin.errno}d";
      goto LABEL_16;
    }

LABEL_17:
    *__error() = v12;
    goto LABEL_18;
  }

  v19 = _strtou32(v9, 0, 0);
  if (*__error())
  {
    v20 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = *__error();
      v25 = 136446722;
      v26 = v20;
      v27 = 2080;
      v28 = v9;
      v29 = 1024;
      v30 = v21;
      v15 = "%{public}s: unable to convert to uint for SDOM: %s: %{darwin.errno}d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v24 = *(a1 + 40);
  if (strcmp(*(v24 + 16), string) || *(v24 + 72) != v10 || *(v24 + 76) != v16 || *(v24 + 80) != v19)
  {
    xpc_array_append_value(*(a1 + 48), xdict);
  }

LABEL_18:
  v22 = *MEMORY[0x29EDCA608];
  return 1;
}

char *_cryptex_bundle_default_asset_path(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v5 = *(*(a2 + 8) + 40);
  v6 = 0;
  if (asprintf(&v6, "%s/%s/%s", "Cryptex", v2, v5) < 0)
  {
    _cryptex_bundle_add_cryptex_assets_cold_1(&v7, v8);
  }

  result = v6;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

double OUTLINED_FUNCTION_1_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t collation_create_for_user(uint64_t a1)
{
  v2 = [Collation alloc];

  return [(Collation *)v2 initForUser:a1];
}

uint64_t collation_get_id(void *a1)
{
  v1 = [a1 ccore];
  v2 = [v1 getID];

  return v2;
}

void collation_foreach(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 ccore];
  [v4 enumerateElements:v3];
}

void *collation_get_description(void *a1)
{
  v1 = a1;
  v2 = [v1 package];
  v10 = 0;
  v3 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v2 options:1 error:&v10];
  if (v10)
  {
    v4 = [v1 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      collation_get_description_cold_1();
    }
  }

  v5 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v3 encoding:4];
  [v1 setColl_description:v5];

  v6 = [v1 coll_description];

  if (v6)
  {
    v7 = [v1 coll_description];
    v8 = [v7 UTF8String];
  }

  else
  {
    v8 = &unk_2986EE629;
  }

  return v8;
}

char *collation_copy_mount_point_for_cryptex_bundle_id(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:a2];
  v6 = [v4 mountPointOfBundleID:v5];

  if (v6)
  {
    v7 = [v6 UTF8String];
  }

  else
  {
    v7 = &unk_2986EE629;
  }

  v8 = strdup(v7);

  return v8;
}

char *collation_copy_search_path(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];
  if (a3)
  {
    a3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a3];
  }

  v7 = [v5 getValidPaths:v6 forLabels:a3];
  v8 = strdup([v7 UTF8String]);

  return v8;
}

uint64_t collation_element_scope_get_description(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC9620] scopeToString:a1];
  v2 = [v1 UTF8String];

  return v2;
}

uint64_t cryptex_mount(void *a1, void *a2, char **a3, CFTypeRef *a4)
{
  v99 = *MEMORY[0x29EDCA608];
  v6 = a2;
  cf[0] = 0;
  v85 = dispatch_get_global_queue(0, 0);
  persistence = _cryptex_attr_get_persistence(v6);
  if (persistence)
  {
    v8 = _mount_log();

    if (v8)
    {
      v9 = _mount_log();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      *buf = 134217984;
      *&buf[4] = persistence;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 134217984;
      *&buf[4] = persistence;
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 49, "com.apple.security.cryptex", 2, 0, v10);
    v18 = 0;
    v17 = 0;
    v11 = 0;
    goto LABEL_55;
  }

  v11 = _cryptex_get_core(a1);
  if ((cryptex_core_is_cryptex1() & 1) == 0)
  {
    v26 = _mount_log();

    if (v26)
    {
      v27 = _mount_log();
      os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 57, "com.apple.security.cryptex", 2, 0, v10);
    goto LABEL_54;
  }

  asset = cryptex_core_get_asset();
  if (!asset)
  {
    v29 = _mount_log();

    if (v29)
    {
      v30 = _mount_log();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 64, "com.apple.security.cryptex", 2, 0, v10);
    goto LABEL_54;
  }

  image_asset = cryptex_core_get_image_asset();
  if (!image_asset)
  {
    v31 = _mount_log();

    if (v31)
    {
      v32 = _mount_log();
      os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 71, "com.apple.security.cryptex", 2, 0, v10);
    goto LABEL_54;
  }

  tc_asset = cryptex_core_get_tc_asset();
  if (!tc_asset)
  {
    v33 = _mount_log();

    if (v33)
    {
      v34 = _mount_log();
      os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 78, "com.apple.security.cryptex", 2, 0, v10);
    goto LABEL_54;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v35 = _mount_log();

    if (v35)
    {
      v36 = _mount_log();
      os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 85, "com.apple.security.cryptex", 2, 0, v10);
    goto LABEL_54;
  }

  __s1 = cryptex_core_get_volumehash_asset();
  if (!__s1)
  {
    v16 = _mount_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_INFO, "No volume root hash present.", buf, 2u);
    }
  }

  v17 = cryptex_core_get_cryptex1_properties();
  if (!v17)
  {
    v37 = _mount_log();

    if (v37)
    {
      v38 = _mount_log();
      os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_mount", "cryptex_mount.m", 97, "com.apple.security.cryptex", 2, 0, v10);
LABEL_54:
    Error = v28;
    v18 = 0;
    v17 = 0;
LABEL_55:
    v48 = 0;
    v42 = 0;
LABEL_56:
    v46 = 0;
    goto LABEL_57;
  }

  v18 = cryptex_core_cx1_copy_xpc_dictionary();
  if (!v18)
  {
    v39 = _mount_log();

    if (v39)
    {
      v40 = _mount_log();
      os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 104, "com.apple.security.cryptex", 2, 0, v10);
    v18 = 0;
    goto LABEL_55;
  }

  v19 = *(image_asset + 16);
  v20 = *(tc_asset + 16);
  v21 = *(info_asset + 16);
  v22 = *(asset + 16);
  v23 = *(*(image_asset + 8) + 24);
  if (__s1)
  {
    v24 = *(__s1 + 4);
  }

  mount_request = mount_interface_create_mount_request();
  v42 = 0;
  if (mount_request)
  {
    v43 = _mount_log();

    if (v43)
    {
      v44 = _mount_log();
      os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v54 = createError("cryptex_mount", "cryptex_mount.m", 122, "com.apple.security.cryptex", 2, mount_request, v10);
    v48 = 0;
    v46 = 0;
LABEL_67:
    Error = v54;
    goto LABEL_57;
  }

  connection = cryptex_xpc_create_connection();
  v46 = connection;
  if (!connection)
  {
    v55 = _mount_log();

    if (v55)
    {
      v56 = _mount_log();
      os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 129, "com.apple.security.cryptex", 2, 0, v10);
    v48 = 0;
    goto LABEL_56;
  }

  v47 = xpc_connection_send_message_with_reply_sync(connection, v42);
  v48 = v47;
  if (v47)
  {
    if (MEMORY[0x29C28F4F0](v47) == MEMORY[0x29EDCAA18])
    {
      v10 = xpc_copy_debug_description();
      v59 = _mount_log();

      if (v59)
      {
        v60 = _mount_log();
        os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        *buf = 136315138;
        *&buf[4] = v10;
        __s1a = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 136315138;
        *&buf[4] = v10;
        __s1a = _os_log_send_and_compose_impl();
      }

      v61 = createError("cryptex_mount", "cryptex_mount.m", 141, "com.apple.security.cryptex", 2, 0, __s1a);
    }

    else
    {
      if (MEMORY[0x29C28F4F0](v48) == MEMORY[0x29EDCAA00])
      {
        cferr = _xpc_dictionary_try_get_cferr(v48, "MOUNT:ERROR_DICT", cf);
        if ((cferr | 2) == 2)
        {
          Error = cf[0];
          if (cf[0] && (_CFErrorHasDomainAndCode(cf[0], @"com.apple.security.cryptex", 1) & 1) == 0)
          {
            v67 = _mount_log();

            if (v67)
            {
              v68 = _mount_log();
              os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
              *buf = 138543362;
              *&buf[4] = cf[0];
              v10 = _os_log_send_and_compose_impl();
            }

            else
            {
              *buf = 138543362;
              *&buf[4] = cf[0];
              v10 = _os_log_send_and_compose_impl();
            }

            v54 = createError("cryptex_mount", "cryptex_mount.m", 173, "com.apple.security.cryptex", 2, cf[0], v10);
          }

          else
          {
            __s1b = xpc_dictionary_get_string(v48, "MOUNT:MOUNTPATH_STR");
            if (__s1b)
            {
              if (a3)
              {
                v80 = Error;
                if (_dispatch_is_multithreaded())
                {
                  while (1)
                  {
                    v63 = strdup(__s1b);
                    if (v63)
                    {
                      break;
                    }

                    __os_temporary_resource_shortage();
                  }

                  v71 = v63;
                }

                else
                {
                  v71 = strdup(__s1b);
                  __s1c = strlen(__s1b);
                  if (!v71)
                  {
                    cf[1] = 0;
                    v97 = 0u;
                    v98 = 0u;
                    v95 = 0u;
                    v96 = 0u;
                    *buf = 0u;
                    v72 = MEMORY[0x29EDCA988];
                    v73 = MEMORY[0x29EDCA988];
                    os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
                    v74 = __error();
                    v75 = strerror(*v74);
                    v88 = 136315650;
                    v89 = "known-constant allocation";
                    v90 = 2048;
                    v91 = __s1c;
                    v92 = 2080;
                    v93 = v75;
                    v76 = MEMORY[0x29EDCA988];
                    _os_log_send_and_compose_impl();

                    v77 = _os_crash_msg();
                    cryptex_mount_cold_1(v77);
                  }
                }

                *a3 = v71;
                Error = v80;
              }

              if (!Error)
              {
                v51 = 1;
                goto LABEL_60;
              }

              v78 = _mount_log();

              if (v78)
              {
                v79 = _mount_log();
                os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
                *buf = 0;
                v10 = _os_log_send_and_compose_impl();
              }

              else
              {
                *buf = 0;
                v10 = _os_log_send_and_compose_impl();
              }

              v54 = createError("cryptex_mount", "cryptex_mount.m", 192, "com.apple.security.cryptex", 1, 0, v10);
            }

            else
            {
              v69 = _mount_log();

              if (v69)
              {
                v70 = _mount_log();
                os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
                *buf = 136315138;
                *&buf[4] = "MOUNT:MOUNTPATH_STR";
                v10 = _os_log_send_and_compose_impl();
              }

              else
              {
                *buf = 136315138;
                *&buf[4] = "MOUNT:MOUNTPATH_STR";
                v10 = _os_log_send_and_compose_impl();
              }

              v54 = createError("cryptex_mount", "cryptex_mount.m", 181, "com.apple.security.cryptex", 2, 0, v10);
            }
          }
        }

        else
        {
          v64 = _mount_log();

          if (v64)
          {
            v65 = _mount_log();
            os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
            *buf = 67109120;
            *&buf[4] = cferr;
            v66 = v65;
            v10 = _os_log_send_and_compose_impl();
          }

          else
          {
            *buf = 67109120;
            *&buf[4] = cferr;
            v10 = _os_log_send_and_compose_impl();
          }

          v54 = createError("cryptex_mount", "cryptex_mount.m", 160, "com.apple.security.cryptex", 2, 0, v10);
        }

        goto LABEL_67;
      }

      v10 = xpc_copy_debug_description();
      v49 = _mount_log();

      if (v49)
      {
        v50 = _mount_log();
        os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        *buf = 136315138;
        *&buf[4] = v10;
        __s1a = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 136315138;
        *&buf[4] = v10;
        __s1a = _os_log_send_and_compose_impl();
      }

      v61 = createError("cryptex_mount", "cryptex_mount.m", 146, "com.apple.security.cryptex", 2, 0, __s1a);
    }

    Error = v61;
    free(__s1a);
    goto LABEL_57;
  }

  v57 = _mount_log();

  if (v57)
  {
    v58 = _mount_log();
    os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
    *buf = 0;
    v10 = _os_log_send_and_compose_impl();
  }

  else
  {
    *buf = 0;
    v10 = _os_log_send_and_compose_impl();
  }

  Error = createError("cryptex_mount", "cryptex_mount.m", 136, "com.apple.security.cryptex", 2, 0, v10);
  v48 = 0;
LABEL_57:
  free(v10);
  v51 = 0;
  if (a4 && Error)
  {
    v51 = 0;
    *a4 = CFRetain(Error);
  }

LABEL_60:

  if (Error)
  {
    CFRelease(Error);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v52 = *MEMORY[0x29EDCA608];
  return v51;
}