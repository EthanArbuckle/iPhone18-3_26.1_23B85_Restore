os_log_t __eligibility_log_handle_block_invoke()
{
  result = os_log_create("com.apple.os_eligibility", "library");
  eligibility_log_handle_log_handle = result;
  return result;
}

void eligibility_xpc_set_message_type(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C2B2380](a2) == MEMORY[0x29EDCAA00])
  {
    v6 = *MEMORY[0x29EDCA608];

    xpc_dictionary_set_uint64(a2, "eligibility_message_type", a1);
  }

  else
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v4 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "eligibility_xpc_set_message_type";
      _os_log_error_impl(&dword_299DEF000, v4, OS_LOG_TYPE_ERROR, "%s: xpc message type must be a dictionary", &v7, 0xCu);
    }

    v5 = *MEMORY[0x29EDCA608];
  }
}

int64_t eligibility_xpc_send_message_with_reply(void *a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  mach_service = xpc_connection_create_mach_service("com.apple.eligibilityd", 0, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_7);
  xpc_connection_activate(mach_service);
  v5 = xpc_connection_send_message_with_reply_sync(mach_service, a1);
  v6 = MEMORY[0x29C2B2380]();
  if (v6)
  {
    v7 = v6 == MEMORY[0x29EDCAA18];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x29EDCA9C8]);
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v9 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      if (!string)
      {
        string = "unknown error";
      }

      if (MEMORY[0x29C2B2380](a1) == MEMORY[0x29EDCAA00])
      {
        uint64 = xpc_dictionary_get_uint64(a1, "eligibility_message_type");
      }

      else
      {
        if (eligibility_log_handle_once_token != -1)
        {
          dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
        }

        v14 = eligibility_log_handle_log_handle;
        if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315138;
          v16 = "eligibility_xpc_get_message_type";
          _os_log_error_impl(&dword_299DEF000, v14, OS_LOG_TYPE_ERROR, "%s: xpc message type must be a dictionary", &v15, 0xCu);
        }

        uint64 = 0;
      }

      v15 = 136315650;
      v16 = "eligibility_xpc_send_message_with_reply";
      v17 = 2048;
      v18 = uint64;
      v19 = 2080;
      v20 = string;
      _os_log_error_impl(&dword_299DEF000, v9, OS_LOG_TYPE_ERROR, "%s: Error returned trying to send xpc message %llu: %s", &v15, 0x20u);
    }

    int64 = 54;
    if (!mach_service)
    {
      goto LABEL_14;
    }

LABEL_13:
    xpc_release(mach_service);
    goto LABEL_14;
  }

  if (v6 != MEMORY[0x29EDCAA00])
  {
    int64 = 0xFFFFFFFFLL;
    if (!mach_service)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  int64 = xpc_dictionary_get_int64(v5, "errorNum");
  if (mach_service)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v5)
  {
    if (!a2 || int64)
    {
      xpc_release(v5);
    }

    else
    {
      *a2 = v5;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return int64;
}

int64_t os_eligibility_set_input(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(1uLL, v6);
  xpc_dictionary_set_uint64(v6, "input", a1);
  if (a2)
  {
    xpc_dictionary_set_value(v6, "value", a2);
  }

  xpc_dictionary_set_uint64(v6, "status", a3);
  v7 = eligibility_xpc_send_message_with_reply(v6, 0);
  xpc_release(v6);
  return v7;
}

int64_t os_eligibility_reset_domain(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(2uLL, v2);
  xpc_dictionary_set_uint64(v2, "domain", a1);
  v3 = eligibility_xpc_send_message_with_reply(v2, 0);
  xpc_release(v2);
  return v3;
}

int64_t os_eligibility_reset_all_domains()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(5uLL, v0);
  v1 = eligibility_xpc_send_message_with_reply(v0, 0);
  xpc_release(v0);
  return v1;
}

int64_t os_eligibility_force_domain_answer(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(3uLL, v6);
  xpc_dictionary_set_uint64(v6, "domain", a1);
  xpc_dictionary_set_uint64(v6, "answer", a2);
  if (a3)
  {
    xpc_dictionary_set_value(v6, "context", a3);
  }

  v7 = eligibility_xpc_send_message_with_reply(v6, 0);
  xpc_release(v6);
  return v7;
}

int64_t os_eligibility_force_domain_set_answers(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(6uLL, v6);
  xpc_dictionary_set_uint64(v6, "domainSet", a1);
  xpc_dictionary_set_uint64(v6, "answer", a2);
  if (a3)
  {
    xpc_dictionary_set_value(v6, "context", a3);
  }

  v7 = eligibility_xpc_send_message_with_reply(v6, 0);
  xpc_release(v6);
  return v7;
}

int64_t os_eligibility_set_test_mode(BOOL a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(9uLL, v2);
  xpc_dictionary_set_BOOL(v2, "enabled", a1);
  v3 = eligibility_xpc_send_message_with_reply(v2, 0);
  xpc_release(v2);
  return v3;
}

uint64_t load_eligibility_answers(const char *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v11 = 0;
  if (a1 == 1)
  {
    v12 = 0;
    if (asprintf(&v12, "%s%s", "/", "/private/var/db/eligibilityd/eligibility.plist") == -1)
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v4 = eligibility_log_handle_log_handle;
      if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "copy_eligibility_domain_public_answer_plist_path";
        v15 = 2080;
        v16 = "/private/var/db/eligibilityd/eligibility.plist";
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (a1)
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v8 = eligibility_log_handle_log_handle;
      if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v14 = "copy_eligibility_file_path";
        v15 = 2048;
        v16 = a1;
        v6 = 22;
        _os_log_fault_impl(&dword_299DEF000, v8, OS_LOG_TYPE_FAULT, "%s: Unknown eligibility answer file type: %llu", buf, 0x16u);
        v5 = 0;
        v7 = 0;
        goto LABEL_19;
      }

      v5 = 0;
      goto LABEL_18;
    }

    v12 = 0;
    if (asprintf(&v12, "%s%s", "/", "/private/var/db/os_eligibility/eligibility.plist") == -1)
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v4 = eligibility_log_handle_log_handle;
      if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "copy_eligibility_domain_answer_plist_path";
        v15 = 2080;
        v16 = "/private/var/db/os_eligibility/eligibility.plist";
LABEL_28:
        _os_log_error_impl(&dword_299DEF000, v4, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
      }
    }
  }

  v5 = v12;
  if (!v12)
  {
LABEL_18:
    v7 = 0;
    v6 = 22;
    goto LABEL_19;
  }

  v6 = load_eligibility_plist(v12, &v11);
  v7 = v11;
LABEL_19:
  free(v5);
  if (a2 && !v6 && v7)
  {
    *a2 = v7;
  }

  else if (v7)
  {
    xpc_release(v7);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t load_eligibility_plist(const char *a1, void *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  memset(&v31.st_size, 0, 48);
  v4 = open(a1, 0x20000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    if (fstat(v4, &v31))
    {
      v6 = *__error();
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v7 = eligibility_log_handle_log_handle;
      if (!os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v28 = strerror(v6);
      *buf = 136315906;
      v33 = "load_eligibility_plist";
      v34 = 2080;
      v35 = a1;
      v36 = 2080;
      v37 = v28;
      v38 = 1024;
      v39 = v6;
      v24 = "%s: Failed to stat %s: %s(%d)";
      v25 = v7;
      v26 = 38;
LABEL_33:
      _os_log_error_impl(&dword_299DEF000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
LABEL_6:
      v8 = 0;
LABEL_36:
      close(v5);
      if (v8 && a2 && !v6)
      {
        *a2 = v8;
      }

      else if (v8)
      {
        xpc_release(v8);
      }

      goto LABEL_42;
    }

    st_size = v31.st_size;
    if (v31.st_size >> 31)
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v11 = eligibility_log_handle_log_handle;
      if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "load_eligibility_plist";
        v34 = 2048;
        v35 = st_size;
        _os_log_error_impl(&dword_299DEF000, v11, OS_LOG_TYPE_ERROR, "%s: eligibility plist is too large (%zu)", buf, 0x16u);
      }

      v8 = 0;
      v6 = 27;
      goto LABEL_36;
    }

    v12 = mmap(0, v31.st_size, 1, 1026, v5, 0);
    if (v12 == -1)
    {
      v6 = *__error();
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v22 = eligibility_log_handle_log_handle;
      if (!os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v23 = strerror(v6);
      *buf = 136315650;
      v33 = "load_eligibility_plist";
      v34 = 2080;
      v35 = a1;
      v36 = 2080;
      v37 = v23;
      v24 = "%s: Failed to map file at %s; error: %s";
      v25 = v22;
      v26 = 32;
      goto LABEL_33;
    }

    v13 = v12;
    v14 = xpc_create_from_plist();
    v8 = v14;
    if (v14)
    {
      v15 = MEMORY[0x29C2B2380](v14);
      if (v15 == MEMORY[0x29EDCAA00])
      {
        v6 = 0;
        goto LABEL_35;
      }

      v16 = v15;
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v17 = eligibility_log_handle_log_handle;
      if (!os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v6 = 0xFFFFFFFFLL;
LABEL_35:
        munmap(v13, st_size);
        goto LABEL_36;
      }

      name = xpc_type_get_name(v16);
      *buf = 136315394;
      v33 = "load_eligibility_plist";
      v34 = 2080;
      v35 = name;
      v19 = "%s: Expected plist to be a dictionary but instead was a %s";
      v20 = v17;
      v21 = 22;
    }

    else
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v27 = eligibility_log_handle_log_handle;
      if (!os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 136315138;
      v33 = "load_eligibility_plist";
      v19 = "%s: Failed to parse property list";
      v20 = v27;
      v21 = 12;
    }

    _os_log_error_impl(&dword_299DEF000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_31;
  }

  v6 = *__error();
  if (eligibility_log_handle_once_token != -1)
  {
    dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
  }

  v9 = eligibility_log_handle_log_handle;
  if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v33 = "load_eligibility_plist";
    v34 = 2080;
    v35 = a1;
    v36 = 2080;
    v37 = strerror(v6);
    v38 = 1024;
    v39 = v6;
    _os_log_error_impl(&dword_299DEF000, v9, OS_LOG_TYPE_ERROR, "%s: Failed to open %s: %s(%d)", buf, 0x26u);
  }

LABEL_42:
  v29 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t os_eligibility_get_domain_answer(const char *a1, int64_t *a2, int64_t *a3, void *a4, xpc_object_t *a5)
{
  v40 = *MEMORY[0x29EDCA608];
  xdict = 0;
  v8 = a1 - 1;
  if ((a1 - 1) > 0x84)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v15 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "os_eligibility_get_domain_answer";
      v36 = 2048;
      v37 = a1;
      v14 = 22;
      _os_log_error_impl(&dword_299DEF000, v15, OS_LOG_TYPE_ERROR, "%s: Invalid domain %llu", buf, 0x16u);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 22;
    }

    goto LABEL_8;
  }

  v11 = off_29F28ED00[v8];
  if (load_eligibility_answers(*(&unk_299DF2C40 + v8), &xdict))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_8:
    int64 = 1;
    goto LABEL_9;
  }

  dictionary = xpc_dictionary_get_dictionary(xdict, v11);
  if (!dictionary)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v23 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v35 = "os_eligibility_get_domain_answer";
      v36 = 2080;
      v37 = v11;
      v38 = 2048;
      v39 = a1;
      _os_log_error_impl(&dword_299DEF000, v23, OS_LOG_TYPE_ERROR, "%s: Domain %s(%llu) missing from plist", buf, 0x20u);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v21 = dictionary;
  int64 = xpc_dictionary_get_int64(dictionary, "os_eligibility_answer_t");
  if (int64 < 0)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v24 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "os_eligibility_get_domain_answer";
      v36 = 2080;
      v37 = v11;
      _os_log_error_impl(&dword_299DEF000, v24, OS_LOG_TYPE_ERROR, "%s: Unable to read eligibility answer for domain: %s", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_52;
  }

  if (a3)
  {
    v22 = xpc_dictionary_get_int64(v21, "os_eligibility_answer_source_t");
    v12 = v22;
    if (v22 >= 0)
    {
      *a3 = v22;
      goto LABEL_39;
    }

    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v27 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "os_eligibility_get_domain_answer";
      v36 = 2080;
      v37 = v11;
      _os_log_error_impl(&dword_299DEF000, v27, OS_LOG_TYPE_ERROR, "%s: Unable to read eligibility source for domain: %s", buf, 0x16u);
    }

LABEL_52:
    v13 = 0;
    v14 = 33;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_39:
  if (a4 && (value = xpc_dictionary_get_value(v21, "status")) != 0)
  {
    v13 = xpc_retain(value);
  }

  else
  {
    v13 = 0;
  }

  if (a5 && (v26 = xpc_dictionary_get_dictionary(v21, "context")) != 0)
  {
    v14 = 0;
    *a5 = xpc_retain(v26);
  }

  else
  {
    v14 = 0;
  }

LABEL_9:
  if (a2)
  {
    *a2 = int64;
  }

  if (a4)
  {
    if (v12 != 2 && !v13)
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      v13 = v17;
      v18 = "OS_ELIGIBILITY_INPUT_PHONE_APP_REMOVAL";
      switch(v8)
      {
        case 0uLL:
        case 0x39uLL:
          goto LABEL_36;
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xDuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x1AuLL:
        case 0x1BuLL:
        case 0x1FuLL:
        case 0x20uLL:
        case 0x21uLL:
        case 0x22uLL:
        case 0x23uLL:
        case 0x2CuLL:
        case 0x30uLL:
        case 0x31uLL:
        case 0x34uLL:
        case 0x3BuLL:
        case 0x3EuLL:
        case 0x40uLL:
        case 0x41uLL:
        case 0x43uLL:
        case 0x46uLL:
        case 0x7BuLL:
        case 0x82uLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          goto LABEL_16;
        case 9uLL:
        case 0xCuLL:
        case 0xEuLL:
        case 0x18uLL:
        case 0x19uLL:
          v19 = "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING";
          goto LABEL_17;
        case 0x11uLL:
          v30 = "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING";
          goto LABEL_72;
        case 0x14uLL:
          v28 = "OS_ELIGIBILITY_INPUT_CHINA_CELLULAR";
          goto LABEL_60;
        case 0x1CuLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          v30 = "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION";
LABEL_72:
          xpc_dictionary_set_int64(v13, v30, 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_CLASS", 1);
          v18 = "OS_ELIGIBILITY_INPUT_DEVICE_LOCALE";
          goto LABEL_63;
        case 0x1EuLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          v18 = "OS_ELIGIBILITY_INPUT_DEVICE_LANGUAGE";
          goto LABEL_63;
        case 0x24uLL:
        case 0x2EuLL:
        case 0x2FuLL:
        case 0x33uLL:
        case 0x35uLL:
        case 0x36uLL:
        case 0x37uLL:
        case 0x38uLL:
        case 0x3AuLL:
        case 0x3DuLL:
        case 0x77uLL:
        case 0x83uLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
LABEL_36:
          v18 = "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION";
          goto LABEL_63;
        case 0x25uLL:
          v29 = "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING";
          goto LABEL_62;
        case 0x26uLL:
          goto LABEL_61;
        case 0x2AuLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_BIRTHDATE", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_CLASS", 1);
          goto LABEL_69;
        case 0x32uLL:
LABEL_69:
          v18 = "OS_ELIGIBILITY_INPUT_PRECISE_LOCATION";
          goto LABEL_63;
        case 0x42uLL:
        case 0x7EuLL:
        case 0x7FuLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          v28 = "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION";
LABEL_60:
          xpc_dictionary_set_int64(v13, v28, 1);
LABEL_61:
          v29 = "OS_ELIGIBILITY_INPUT_DEVICE_CLASS";
          goto LABEL_62;
        case 0x48uLL:
          goto LABEL_63;
        case 0x78uLL:
        case 0x81uLL:
        case 0x84uLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          goto LABEL_55;
        case 0x79uLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_AND_SIRI_LANGUAGE_MATCH", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_CLASS", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_LANGUAGE", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_REGION_CODE", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_EXTERNAL_BOOT_DRIVE", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_GENERATIVE_MODEL_SYSTEM", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_SHARED_IPAD", 1);
          v18 = "OS_ELIGIBILITY_INPUT_SIRI_LANGUAGE";
          goto LABEL_63;
        case 0x7AuLL:
        case 0x7CuLL:
          xpc_dictionary_set_int64(v17, "OS_ELIGIBILITY_INPUT_DEVICE_CLASS", 1);
          xpc_dictionary_set_int64(v13, "OS_ELIGIBILITY_INPUT_DEVICE_REGION_CODE", 1);
          v18 = "OS_ELIGIBILITY_INPUT_EXTERNAL_BOOT_DRIVE";
          goto LABEL_63;
        case 0x7DuLL:
LABEL_55:
          v29 = "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION";
LABEL_62:
          xpc_dictionary_set_int64(v13, v29, 1);
          v18 = "OS_ELIGIBILITY_INPUT_DEVICE_REGION_CODE";
          goto LABEL_63;
        case 0x80uLL:
LABEL_16:
          v19 = "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION";
LABEL_17:
          xpc_dictionary_set_int64(v13, v19, 1);
          v18 = "OS_ELIGIBILITY_INPUT_DEVICE_CLASS";
LABEL_63:
          xpc_dictionary_set_int64(v13, v18, 1);
          break;
        default:
          break;
      }
    }

    *a4 = v13;
  }

  else if (v13)
  {
    xpc_release(v13);
  }

  if (xdict)
  {
    xpc_release(xdict);
  }

  v31 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t os_eligibility_get_all_domain_answers(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v12 = 0;
  if (asprintf(&v12, "%s%s", "/", "/private/var/db/os_eligibility/eligibility.plist") == -1)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v3 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "copy_eligibility_domain_answer_plist_path";
      v15 = 2080;
      v16 = "/private/var/db/os_eligibility/eligibility.plist";
      _os_log_error_impl(&dword_299DEF000, v3, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v4 = v12;
  v12 = 0;
  if (asprintf(&v12, "%s%s", "/", "/private/var/db/eligibilityd/eligibility.plist") == -1)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v5 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "copy_eligibility_domain_public_answer_plist_path";
      v15 = 2080;
      v16 = "/private/var/db/eligibilityd/eligibility.plist";
      _os_log_error_impl(&dword_299DEF000, v5, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v6 = v12;
  appended = _append_plist_keys_to_dictionary(v4, v2);
  if (appended)
  {
    v8 = appended;
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v9 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "os_eligibility_get_all_domain_answers";
      v15 = 2080;
      v16 = v4;
      v17 = 1024;
      v18 = v8;
LABEL_27:
      _os_log_error_impl(&dword_299DEF000, v9, OS_LOG_TYPE_ERROR, "%s: Failed to load in plist %s: error=%d", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = _append_plist_keys_to_dictionary(v6, v2);
    if (v8)
    {
      if (eligibility_log_handle_once_token != -1)
      {
        dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
      }

      v9 = eligibility_log_handle_log_handle;
      if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "os_eligibility_get_all_domain_answers";
        v15 = 2080;
        v16 = v6;
        v17 = 1024;
        v18 = v8;
        goto LABEL_27;
      }
    }
  }

  free(v4);
  free(v6);
  if (!a1 || v8)
  {
    if (v2)
    {
      xpc_release(v2);
    }
  }

  else
  {
    *a1 = v2;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t _append_plist_keys_to_dictionary(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  xdict = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = load_eligibility_plist(a1, &xdict);
  if (*(v11 + 6))
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v4 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v11 + 6);
      *buf = 136315650;
      v16 = "_append_plist_keys_to_dictionary";
      v17 = 2080;
      v18 = a1;
      v19 = 1024;
      v20 = v5;
      _os_log_error_impl(&dword_299DEF000, v4, OS_LOG_TYPE_ERROR, "%s: Failed to read in plist %s: error=%d", buf, 0x1Cu);
    }
  }

  else
  {
    applier[0] = MEMORY[0x29EDCA5F8];
    applier[1] = 0x40000000;
    applier[2] = ___append_plist_keys_to_dictionary_block_invoke;
    applier[3] = &unk_29F28F130;
    applier[4] = &v10;
    applier[5] = a2;
    xpc_dictionary_apply(xdict, applier);
  }

  if (xdict)
  {
    xpc_release(xdict);
    xdict = 0;
  }

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

BOOL ___append_plist_keys_to_dictionary_block_invoke(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v13 = *MEMORY[0x29EDCA608];
  int64 = xpc_dictionary_get_int64(xdict, "os_eligibility_answer_t");
  if (int64 < 0)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v6 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "_append_plist_keys_to_dictionary_block_invoke";
      v11 = 2080;
      v12 = a2;
      _os_log_error_impl(&dword_299DEF000, v6, OS_LOG_TYPE_ERROR, "%s: Unable to read eligibility answer for domain: %s", &v9, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 33;
  }

  else
  {
    xpc_dictionary_set_uint64(*(a1 + 40), a2, int64);
  }

  result = ((int64 >> 63) & 1) == 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t os_eligibility_get_internal_state(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  xdict = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(4uLL, v2);
  v3 = eligibility_xpc_send_message_with_reply(v2, &xdict);
  if (!v3)
  {
    dictionary = xpc_dictionary_get_dictionary(xdict, "internalStateDictionary");
    v5 = dictionary;
    if (dictionary)
    {
      xpc_retain(dictionary);
    }

    *a1 = v5;
  }

  if (xdict)
  {
    xpc_release(xdict);
  }

  xpc_release(v2);
  return v3;
}

uint64_t os_eligibility_get_state_dump(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  xdict = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(7uLL, v2);
  v3 = eligibility_xpc_send_message_with_reply(v2, &xdict);
  if (!v3)
  {
    dictionary = xpc_dictionary_get_dictionary(xdict, "stateDumpDictionary");
    v5 = dictionary;
    if (dictionary)
    {
      xpc_retain(dictionary);
    }

    *a1 = v5;
  }

  if (xdict)
  {
    xpc_release(xdict);
  }

  xpc_release(v2);
  return v3;
}

uint64_t os_eligibility_dump_sysdiagnose_data_to_dir(const char *a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  eligibility_xpc_set_message_type(8uLL, v2);
  xpc_dictionary_set_string(v2, "dirPath", a1);
  v3 = eligibility_xpc_send_message_with_reply(v2, 0);
  xpc_release(v2);
  return v3;
}

xpc_object_t os_eligibility_precise_locations()
{
  objects[4] = *MEMORY[0x29EDCA608];
  objects[0] = xpc_string_create("CA-AB");
  objects[1] = xpc_string_create("CA-NB");
  objects[2] = xpc_string_create("CA-NS");
  objects[3] = xpc_string_create("US-UT");
  v0 = xpc_array_create(objects, 4uLL);
  for (i = 0; i < xpc_array_get_count(v0); ++i)
  {
    xpc_release(objects[i]);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v0;
}

char *os_eligibility_get_domain_notification_name(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 0x85)
  {
    if (eligibility_log_handle_once_token != -1)
    {
      dispatch_once(&eligibility_log_handle_once_token, &__block_literal_global);
    }

    v3 = eligibility_log_handle_log_handle;
    if (os_log_type_enabled(eligibility_log_handle_log_handle, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "os_eligibility_get_domain_notification_name";
      v7 = 2048;
      v8 = a1;
      _os_log_error_impl(&dword_299DEF000, v3, OS_LOG_TYPE_ERROR, "%s: Unable to convert domain to notification string: %llu", &v5, 0x16u);
    }

    result = 0;
  }

  else
  {
    result = (&off_29F28F150)[a1 - 1];
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t os_eligibility_domain_for_name(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!strcmp(result, "OS_ELIGIBILITY_DOMAIN_INVALID"))
    {
      return 0;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ACTINIUM"))
    {
      return 90;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_AI_LABELING"))
    {
      return 133;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ALUMINUM"))
    {
      return 14;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_AMERICIUM"))
    {
      return 96;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ANTIMONY"))
    {
      return 52;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ARGON"))
    {
      return 19;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ARSENIC"))
    {
      return 34;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ASTATINE"))
    {
      return 86;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BARIUM"))
    {
      return 57;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BERKELIUM"))
    {
      return 98;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BERYLLIUM"))
    {
      return 5;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BISMUTH"))
    {
      return 84;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BOHRIUM"))
    {
      return 108;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BORON"))
    {
      return 6;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_BROMINE"))
    {
      return 36;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CADMIUM"))
    {
      return 49;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CALCIUM"))
    {
      return 21;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CALIFORNIUM"))
    {
      return 99;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CARBON"))
    {
      return 7;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CERIUM"))
    {
      return 59;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CESIUM"))
    {
      return 56;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CHLORINE"))
    {
      return 18;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CHROMIUM"))
    {
      return 25;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_COBALT"))
    {
      return 28;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_COPERNICIUM"))
    {
      return 113;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_COPPER"))
    {
      return 30;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CORE_NFC_PAYMENT_TAG_READER"))
    {
      return 132;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_CURIUM"))
    {
      return 97;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_DARMSTADTIUM"))
    {
      return 111;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_DUBNIUM"))
    {
      return 106;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_DYSPROSIUM"))
    {
      return 67;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_EINSTEINIUM"))
    {
      return 100;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ERBIUM"))
    {
      return 69;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_EUROPIUM"))
    {
      return 64;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FERMIUM"))
    {
      return 101;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FLEROVIUM"))
    {
      return 115;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FLUORINE"))
    {
      return 10;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FORCED_SHUTTER_SOUND"))
    {
      return 126;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FOUNDATION_MODELS"))
    {
      return 130;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_FRANCIUM"))
    {
      return 88;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_GADOLINIUM"))
    {
      return 65;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_GALLIUM"))
    {
      return 32;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_GERMANIUM"))
    {
      return 33;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_GOLD"))
    {
      return 80;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_GREYMATTER"))
    {
      return 122;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HAFNIUM"))
    {
      return 73;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HASSIUM"))
    {
      return 109;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HELIUM"))
    {
      return 3;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HIGHLIGHTS_MARKETPLACES"))
    {
      return 129;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HOLMIUM"))
    {
      return 68;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_HYDROGEN"))
    {
      return 2;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_INDIUM"))
    {
      return 50;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_IODINE"))
    {
      return 54;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_IRIDIUM"))
    {
      return 78;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_IRON"))
    {
      return 27;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_KRYPTON"))
    {
      return 37;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LANTHANUM"))
    {
      return 58;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LAWRENCIUM"))
    {
      return 104;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LEAD"))
    {
      return 83;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LITHIUM"))
    {
      return 4;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LIVERMORIUM"))
    {
      return 117;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LOTX"))
    {
      return 1;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_LUTETIUM"))
    {
      return 72;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MAGNESIUM"))
    {
      return 13;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MANGANESE"))
    {
      return 26;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MEITNERIUM"))
    {
      return 110;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MENDELEVIUM"))
    {
      return 102;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MERCURY"))
    {
      return 81;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MOLYBDENUM"))
    {
      return 43;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_MOSCOVIUM"))
    {
      return 116;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NEODYMIUM"))
    {
      return 61;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NEON"))
    {
      return 11;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NEPTUNIUM"))
    {
      return 94;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NICKEL"))
    {
      return 29;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NIHONIUM"))
    {
      return 114;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NIOBIUM"))
    {
      return 42;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NITROGEN"))
    {
      return 8;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_NOBELIUM"))
    {
      return 103;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_OGANESSON"))
    {
      return 119;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_OSMIUM"))
    {
      return 77;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_OXYGEN"))
    {
      return 9;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PALLADIUM"))
    {
      return 47;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PERSONAL_QA"))
    {
      return 127;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PHOSPHORUS"))
    {
      return 16;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PLATINUM"))
    {
      return 79;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PLUTONIUM"))
    {
      return 95;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PODCASTS_TRANSCRIPTS"))
    {
      return 121;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_POLONIUM"))
    {
      return 85;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_POTASSIUM"))
    {
      return 20;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PRASEODYMIUM"))
    {
      return 60;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PROMETHIUM"))
    {
      return 62;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_PROTACTINIUM"))
    {
      return 92;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RADIUM"))
    {
      return 89;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RADON"))
    {
      return 87;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RHENIUM"))
    {
      return 76;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RHODIUM"))
    {
      return 46;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ROENTGENIUM"))
    {
      return 112;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RUBIDIUM"))
    {
      return 38;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RUTHENIUM"))
    {
      return 45;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_RUTHERFORDIUM"))
    {
      return 105;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SAMARIUM"))
    {
      return 63;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SCANDIUM"))
    {
      return 22;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SEABORGIUM"))
    {
      return 107;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SEARCH_MARKETPLACES"))
    {
      return 124;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SELENIUM"))
    {
      return 35;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SILICON"))
    {
      return 15;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SILVER"))
    {
      return 48;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SIRI_WITH_APP_INTENTS"))
    {
      return 128;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SMS_MMS_RCS_API"))
    {
      return 131;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SODIUM"))
    {
      return 12;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_STRONTIUM"))
    {
      return 39;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SULFUR"))
    {
      return 17;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_SWIFT_ASSIST"))
    {
      return 125;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TANTALUM"))
    {
      return 74;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TECHNETIUM"))
    {
      return 44;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TELLURIUM"))
    {
      return 53;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TENNESSINE"))
    {
      return 118;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TERBIUM"))
    {
      return 66;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TEST"))
    {
      return 120;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_THALLIUM"))
    {
      return 82;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_THORIUM"))
    {
      return 91;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_THULIUM"))
    {
      return 70;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TIN"))
    {
      return 51;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TITANIUM"))
    {
      return 23;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_TUNGSTEN"))
    {
      return 75;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_URANIUM"))
    {
      return 93;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_VANADIUM"))
    {
      return 24;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_XCODE_LLM"))
    {
      return 123;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_XENON"))
    {
      return 55;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_YTTERBIUM"))
    {
      return 71;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_YTTRIUM"))
    {
      return 40;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ZINC"))
    {
      return 31;
    }

    else if (!strcmp(v1, "OS_ELIGIBILITY_DOMAIN_ZIRCONIUM"))
    {
      return 41;
    }

    else
    {
      return 0;
    }
  }

  return result;
}