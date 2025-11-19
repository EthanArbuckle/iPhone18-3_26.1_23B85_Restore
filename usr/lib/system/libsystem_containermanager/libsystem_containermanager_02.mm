BOOL container_class_supports_randomized_path(int a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || a1 != 6 && a1 != 1)
  {
    return 1;
  }

  return a2 != 2 && a2 != 7;
}

BOOL container_class_supports_randomized_path_on_current_platform(uint64_t a1, char a2)
{
  active_platform = dyld_get_active_platform();
  if ((a2 & 1) != 0 || active_platform != 6 && active_platform != 1)
  {
    return 1;
  }

  return a1 != 2 && a1 != 7;
}

uint64_t container_class_for_each_normalized_class(uint64_t result)
{
  v1 = result;
  for (i = 0; i != 15; ++i)
  {
    if (i)
    {
      result = (*(v1 + 16))(v1, i);
    }
  }

  return result;
}

uint64_t container_persona_collect_all_ids(void *a1, uint64_t a2, void **a3, size_t *a4)
{
  v7 = 0;
  __src = a1;
  for (i = 1; i != 8; ++i)
  {
    if ((kpersona_find_by_type() & 0x80000000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 - v7;
    }

    v7 += v9;
  }

  qsort_b(__src, v7, 4uLL, &__block_literal_global_564);
  *a3 = __src;
  *a4 = v7;
  return 1;
}

uint64_t __container_persona_collect_all_ids_block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a3 < *a2;
  }
}

uint64_t container_persona_foreach(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = 0;
  __s = 0;
  result = container_persona_collect_all_ids(v35, 64, &__s, &v10);
  v4 = v10;
  v3 = __s;
  if (v10)
  {
    v5 = __s;
    do
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      v12 = 2;
      v6 = *v5;
      v7 = kpersona_info();
      if (v7)
      {
        LODWORD(v13) = *v5;
      }

      result = (*(a1 + 16))(a1, v7 == 0, &v12);
      ++v5;
      --v4;
    }

    while (v4);
  }

  if (v3 != v35 && v3 != 0)
  {
    free(v3);
    result = memset_s(&__s, 8uLL, 0, 8uLL);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_persona_convert_unique_string_to_persona_uid(uint64_t a1)
{
  if (a1)
  {
    kpersona_find();
  }

  return 0xFFFFFFFFLL;
}

uint64_t container_log_handle_for_category(unsigned int a1)
{
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (a1 > 0x17)
  {
    return MEMORY[0x1E69E9C18];
  }

  else
  {
    return container_log_handle_for_category_logHandles[a1];
  }
}

void _container_log_replication_enable_to_uid_relative_path(int a1, const char *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_container_log_replication_enable_to_uid_relative_path_lock);
  v6 = atomic_load(_container_log_replication_enable_to_uid_relative_path_enabled);
  if (!a1)
  {
    if (v6)
    {
      os_trace_get_mode();
      os_trace_set_mode();
      atomic_exchange(_container_log_replication_enable_to_uid_relative_path_enabled, 0);
      (*(gCMFSSeam + 19))(_container_log_replication_enable_to_uid_relative_path_log_fd);
      _container_log_replication_enable_to_uid_relative_path_log_fd = -1;
    }

    goto LABEL_28;
  }

  if (v6)
  {
LABEL_28:
    os_unfair_lock_unlock(&_container_log_replication_enable_to_uid_relative_path_lock);
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  if (a3 == -1)
  {
LABEL_32:
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (!container_paths_create_uid_home_relative(a3, 3, &v15, &v16))
  {
    v10 = container_error_copy_unlocalized_description(v16);
    __s = v10;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v18 = v10;
      _os_log_fault_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_FAULT, "Log replication failed to create directory; error = %s", buf, 0xCu);
      if (!v10)
      {
LABEL_19:
        if (_container_log_replication_enable_to_uid_relative_path_log_fd < 0)
        {
LABEL_23:
          if (v15)
          {
            free(v15);
            memset_s(&v15, 8uLL, 0, 8uLL);
          }

          if (v14)
          {
            free(v14);
            memset_s(&v14, 8uLL, 0, 8uLL);
          }

          container_error_free(v16);
          goto LABEL_28;
        }

LABEL_20:
        if (_container_log_replication_enable_to_uid_relative_path_onceToken != -1)
        {
          dispatch_once(&_container_log_replication_enable_to_uid_relative_path_onceToken, &__block_literal_global_32);
        }

        atomic_fetch_or(_container_log_replication_enable_to_uid_relative_path_enabled, 1u);
        os_trace_get_mode();
        os_trace_set_mode();
        goto LABEL_23;
      }
    }

    else if (!v10)
    {
      goto LABEL_19;
    }

    free(v10);
    memset_s(&__s, 8uLL, 0, 8uLL);
    goto LABEL_19;
  }

  asprintf(&v14, "%s/%s.log", v15, a2);
  if (v14)
  {
    _container_log_replication_enable_to_uid_relative_path_log_fd = (*(gCMFSSeam + 65))(v14, 521, 4, 0);
    v7 = __error();
    if (_container_log_replication_enable_to_uid_relative_path_log_fd < 0)
    {
      v8 = *v7;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v9 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v8;
        _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "Log replication failed to open output stream; error = %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_33:
  _os_crash();
  __break(1u);
}

uint64_t ___container_log_replication_enable_to_uid_relative_path_block_invoke()
{
  result = os_log_set_hook();
  _container_log_replication_enable_to_uid_relative_path_g_log_hook = result;
  return result;
}

uint64_t ___container_log_replication_enable_to_uid_relative_path_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = atomic_load(_container_log_replication_enable_to_uid_relative_path_enabled);
  if (v3)
  {
    v4 = *(a3 + 128);
    if (v4)
    {
      v5 = _container_log_replication_enable_to_uid_relative_path_log_fd;
      if (!strcmp("com.apple.containermanager", v4))
      {
        v6 = os_log_copy_decorated_message();
        v7 = strlen(v6);
        write(v5, v6, v7);
        free(v6);
        fsync(v5);
      }
    }
  }

  result = _container_log_replication_enable_to_uid_relative_path_g_log_hook;
  if (_container_log_replication_enable_to_uid_relative_path_g_log_hook)
  {
    v9 = *(_container_log_replication_enable_to_uid_relative_path_g_log_hook + 16);

    return v9();
  }

  return result;
}

void *container_seam_fs_set_common(void *__src)
{
  result = memcpy(&gCMFSCustomSeamStore, __src, 0x2D0uLL);
  gCMFSSeam = &gCMFSCustomSeamStore;
  return result;
}

void *container_query_create_from_container(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = container_query_create();
    v3 = container_object_get_class(a1);
    container_query_set_class(v2, v3);
    identifier = container_object_get_identifier(a1);
    v5 = xpc_string_create(identifier);
    __s = v5;
    container_query_set_identifiers(v2, v5);
    uid = container_object_get_uid(a1);
    container_query_set_uid(v2, uid);
    persona_unique_string = container_object_get_persona_unique_string(a1);
    if (persona_unique_string)
    {
      container_query_set_persona_unique_string(v2, persona_unique_string);
    }

    is_transient = container_object_is_transient(a1);
    container_query_set_transient(v2, is_transient);
    uuid = container_object_get_uuid(a1);
    if (v2)
    {
      if (v2[15])
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v10 = qword_1ED452B38;
        if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v18 = "_container_query_set_internal_uuid";
          _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", buf, 0xCu);
        }

        _container_query_set_usage_error(v2, 111);
      }

      else
      {
        v13 = uuid;
        _container_query_log_if_error(*v2, "_container_query_set_internal_uuid");
        uuid_copy(v2 + 66, v13);
        v2[2] |= 0x80uLL;
      }
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v12 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v18 = "_container_query_set_internal_uuid";
        _os_log_fault_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", buf, 0xCu);
      }
    }

    *(v2 + 43) = voucher_get_current_persona();
    if (v5)
    {
      xpc_release(v5);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v18 = "container_query_create_from_container";
      _os_log_fault_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container parameter is NULL", buf, 0xCu);
    }

    v2 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

void _container_query_set_usage_error(uint64_t *a1, uint64_t a2)
{
  v3 = container_error_create_with_message(3, a2, 0, 0, 0);
  _container_query_replace_error(a1, v3);

  container_error_free(v3);
}

void *_container_query_replace_error(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  if (v4)
  {
    container_error_reinitialize(v4, v5, *a2, *(a2 + 16), *(a2 + 24), *(a2 + 32));
    result = *a1;
  }

  else
  {
    result = container_error_create_with_message(v5, *a2, *(a2 + 16), *(a2 + 24), *(a2 + 32));
    *a1 = result;
  }

  result[5] = a1;
  return result;
}

void container_query_set_include_other_owners(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 120))
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v3 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "container_query_set_include_other_owners";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_set_include_other_owners");
      *(a1 + 65) = a2;
      *(a1 + 16) |= 0x40uLL;
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "container_query_set_include_other_owners";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_query_operation_set_client(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 120))
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v3 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "container_query_operation_set_client";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_operation_set_client");
      container_free_client(*(a1 + 112));
      *(a1 + 112) = container_copy_client(a2, 0);
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "container_query_operation_set_client";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_query_operation_set_part(uint64_t *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[15])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v3 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "container_query_operation_set_part";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v9, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_operation_set_part");
      if (a2 < 7)
      {
        a1[23] = a2;
        a1[13] |= 8uLL;
      }

      else
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v6 = qword_1ED452B38;
        if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
        {
          v9 = 136315394;
          v10 = "container_query_operation_set_part";
          v11 = 2048;
          v12 = a2;
          _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: invalid container part: %llu", &v9, 0x16u);
        }

        v7 = container_error_create_with_message(3, 38, 0, 0, 0);
        _container_query_replace_error(a1, v7);
      }
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "container_query_operation_set_part";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void container_query_operation_set_part_domain(uint64_t *a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a1[15])
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v4 = qword_1ED452B38;
        if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
        {
          v8 = 136315138;
          v9 = "container_query_operation_set_part_domain";
          _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v8, 0xCu);
        }

        _container_query_set_usage_error(a1, 111);
      }

      else
      {
        _container_query_log_if_error(*a1, "container_query_operation_set_part_domain");
        a1[24] = strndup(a2, 0x400uLL);
      }

      goto LABEL_19;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "container_query_operation_set_part_domain";
      v6 = "%s: SPI MISUSE: domain parameter is NULL";
      goto LABEL_17;
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "container_query_operation_set_part_domain";
      v6 = "%s: SPI MISUSE: query parameter is NULL";
LABEL_17:
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, v6, &v8, 0xCu);
    }
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t container_query_count_results(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v10 = 0x2000000000;
    v11 = 1;
    _container_query_log_if_error(*a1, "container_query_count_results");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v2 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_query_count_results_block_invoke;
      block[3] = &unk_1E86AE670;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "container_query_count_results";
      os_activity_apply(v2, block);
    }

    if (*(*(&buf + 1) + 24) == 1)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
      if (bytes_ptr)
      {
        v4 = bytes_ptr[2];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = -1;
    }

    container_log_ext_error("container_query_count_results", gClientFaultLoggingEnabled, *a1);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "container_query_count_results";
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _container_query_needs_to_be_executed(uint64_t a1)
{
  v1 = 0;
  v5 = 0;
  if ((*(a1 + 102) & 4) != 0)
  {
    if (container_notify_has_changed(*(a1 + 176), &v5))
    {
      v1 = v5;
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v2 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *v4 = 0;
        _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "Notify check failed, assuming that there are changes. THIS CAUSES A PERFORMANCE PENALTY.", v4, 2u);
      }

      v1 = 1;
    }
  }

  return v1 & 1;
}

BOOL __container_query_count_results_block_invoke(void *a1)
{
  result = _container_query_execute(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

BOOL container_query_iterate_results_with_identifier_sync(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2000000000;
    v20 = 1;
    _container_query_log_if_error(*a1, "container_query_iterate_results_with_identifier_sync");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v6 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_query_iterate_results_with_identifier_sync_block_invoke;
      block[3] = &unk_1E86AE6C0;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "container_query_iterate_results_with_identifier_sync";
      os_activity_apply(v6, block);
    }

    if (*(*(&buf + 1) + 24) != 1)
    {
      v9 = 0;
      goto LABEL_25;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
    stored_string = container_frozenset_get_stored_string(bytes_ptr, a2);
    v9 = 1;
    if (stored_string)
    {
      if (bytes_ptr)
      {
        v10 = bytes_ptr[2];
        if (v10)
        {
          v11 = stored_string;
          v9 = 0;
          v12 = 0;
          v13 = 0;
          while (v11 != container_frozenset_get_identifier_of_container_at_index(bytes_ptr, v12))
          {
LABEL_16:
            v9 = ++v12 >= v10;
            if (v10 == v12)
            {
              if (!v13)
              {
                goto LABEL_25;
              }

LABEL_18:
              v13[11] = 0;
              *(v13 + 24) = 0;
              container_object_free(v13);
              goto LABEL_25;
            }
          }

          if (v13)
          {
            if (v13[11])
            {
              goto LABEL_15;
            }

            container_object_free(v13);
          }

          v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
LABEL_15:
          v13[11] = a1;
          *(v13 + 24) = v12;
          if (!(*(a3 + 16))(a3, v13))
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_25:
    container_log_ext_error("container_query_iterate_results_with_identifier_sync", gClientFaultLoggingEnabled, *a1);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v14 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "container_query_iterate_results_with_identifier_sync";
      _os_log_fault_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __container_query_iterate_results_with_identifier_sync_block_invoke(void *a1)
{
  result = _container_query_execute(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t container_query_iterate_results_with_subquery_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x2000000000;
    v42 = 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = 0;
    _container_query_log_if_error(*a1, "container_query_iterate_results_with_subquery_sync");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v6 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_query_iterate_results_with_subquery_sync_block_invoke;
      block[3] = &unk_1E86AE6E8;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "container_query_iterate_results_with_subquery_sync";
      os_activity_apply(v6, block);
    }

    if (*(*(&buf + 1) + 24) == 1)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
      v20 = *(a2 + 32);
      v21 = *(a2 + 48);
      v22 = *(a2 + 64);
      v8 = *(a2 + 16);
      v23 = (v8 & 2) != 0;
      v24 = (v8 & 8) != 0;
      v25 = (v8 & 0x20) != 0;
      if ((v8 & 0x10) != 0)
      {
        v9 = *(a2 + 56);
      }

      else
      {
        v9 = 0;
      }

      v26 = v9;
      if (v8)
      {
        v12 = *(a2 + 24);
      }

      else
      {
        v12 = 0;
      }

      v27 = v12;
      if ((v8 & 4) != 0)
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = 0;
      }

      v28 = v13;
      v29 = 0;
      if (bytes_ptr)
      {
        v14 = bytes_ptr[2];
      }

      else
      {
        v14 = 0;
      }

      v30 = v14;
      *(v37 + 24) = 1;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = __container_query_iterate_results_with_subquery_sync_block_invoke_2;
      v19[3] = &unk_1E86AE710;
      v19[4] = a3;
      v19[5] = &v32;
      v19[6] = &v36;
      v19[7] = a1;
      container_frozenset_enumerate_matches(bytes_ptr, &v20, v19);
      v15 = v33;
      v16 = v33[3];
      if (v16)
      {
        *(v16 + 88) = 0;
        *(v16 + 96) = 0;
        container_object_free(v15[3]);
      }
    }

    container_log_ext_error("container_query_iterate_results_with_subquery_sync", gClientFaultLoggingEnabled, *a1);
    v11 = *(v37 + 24);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v10 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "container_query_iterate_results_with_subquery_sync";
      _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v36, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

BOOL __container_query_iterate_results_with_subquery_sync_block_invoke(void *a1)
{
  result = _container_query_execute(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __container_query_iterate_results_with_subquery_sync_block_invoke_2(void *a1, int a2)
{
  v4 = *(*(a1[5] + 8) + 24);
  if (!v4 || !*(v4 + 88))
  {
    container_object_free(v4);
    *(*(a1[5] + 8) + 24) = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
    v4 = *(*(a1[5] + 8) + 24);
  }

  v5 = a1[7];
  *(v4 + 88) = v5;
  if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 96) = v6;
  v7 = *(*(a1[5] + 8) + 24);
  result = (*(a1[4] + 16))();
  if ((result & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  return result;
}

uint64_t _container_query_get_next_result_sync(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x2000000000;
    v15 = 1;
    _container_query_log_if_error(*a1, "_container_query_get_next_result_sync");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v4 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___container_query_get_next_result_sync_block_invoke;
      block[3] = &unk_1E86AE738;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "_container_query_get_next_result_sync";
      os_activity_apply(v4, block);
    }

    if (*(*(&buf + 1) + 24) == 1)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
      if (bytes_ptr && *(a1 + 144) < bytes_ptr[2])
      {
        v6 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
        v7 = *(a1 + 144);
        v6[11] = a1;
        *(v6 + 24) = v7;
        v8 = (*(a2 + 16))(a2, v6);
        if (v8)
        {
          ++*(a1 + 144);
        }

        v6[11] = 0;
        *(v6 + 24) = 0;
        container_object_free(v6);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    container_log_ext_error("_container_query_get_next_result_sync", gClientFaultLoggingEnabled, *a1);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "_container_query_get_next_result_sync";
      _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL ___container_query_get_next_result_sync_block_invoke(void *a1)
{
  result = _container_query_execute(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void _container_query_reset_iterator(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 144) = 0;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v1 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      v3 = 136315138;
      v4 = "_container_query_reset_iterator";
      _os_log_fault_impl(&dword_1DF28A000, v1, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t container_query_copy(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    v2 = _os_activity_create(&dword_1DF28A000, "container_query_t", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    _container_query_log_if_error(*a1, "container_query_copy");
    v3 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10B0040E5FFA4F8uLL);
    v11[3] = v3;
    if (v3)
    {
      *(v11[3] + 172) = voucher_get_current_persona();
      v4 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_query_copy_block_invoke;
      block[3] = &unk_1E86AE788;
      block[4] = &v10;
      block[5] = a1;
      block[6] = v2;
      os_activity_apply(v4, block);
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "container_query_copy";
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", buf, 0xCu);
    }
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

char *__container_query_copy_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(*(a1[4] + 8) + 24);
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 32);
  if (v4)
  {
    v4 = xpc_retain(v4);
  }

  *(*(*(a1[4] + 8) + 24) + 24) = v4;
  v5 = *(a1[5] + 40);
  if (v5)
  {
    v5 = xpc_retain(v5);
  }

  *(*(*(a1[4] + 8) + 24) + 40) = v5;
  v6 = a1[5];
  *(*(*(a1[4] + 8) + 24) + 48) = *(v6 + 48);
  *(*(*(a1[4] + 8) + 24) + 64) = *(v6 + 64);
  v7 = *(v6 + 56);
  if (v7)
  {
    v7 = strndup(v7, 0x400uLL);
  }

  *(*(*(a1[4] + 8) + 24) + 56) = v7;
  v8 = a1[5];
  *(*(*(a1[4] + 8) + 24) + 65) = *(v8 + 65);
  *(*(*(a1[4] + 8) + 24) + 64) = *(v8 + 64);
  uuid_copy((*(*(a1[4] + 8) + 24) + 66), (v8 + 66));
  v9 = a1[5];
  *(*(*(a1[4] + 8) + 24) + 16) = *(v9 + 16);
  *(*(*(a1[4] + 8) + 24) + 88) = *(v9 + 88);
  *(*(*(a1[4] + 8) + 24) + 96) = *(v9 + 96);
  result = container_copy_client(*(v9 + 112), 0);
  *(*(*(a1[4] + 8) + 24) + 112) = result;
  **(*(a1[4] + 8) + 24) = 0;
  *(*(*(a1[4] + 8) + 24) + 8) = a1[6];
  return result;
}

uint64_t container_disposition(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
LABEL_12:
    v5 = 0;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v3 = a1;
  v4 = container_object_get_class(a1);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    if (v4 > 0xE)
    {
      goto LABEL_11;
    }

    if (((1 << v4) & 0x4ED4) != 0)
    {
      LODWORD(a1) = container_object_get_uid(v3);
      v5 = 2;
      if (!a2)
      {
        return v5;
      }

      goto LABEL_9;
    }

    if (((1 << v4) & 0x12A) == 0)
    {
LABEL_11:
      LODWORD(a1) = 0;
      goto LABEL_12;
    }
  }

  LODWORD(a1) = 0;
  v5 = 1;
  if (a2)
  {
LABEL_9:
    *a2 = a1;
  }

  return v5;
}

uint64_t container_get_class(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_class(a1);
  }

  return a1;
}

uint64_t container_get_uid(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_uid(a1);
  }

  return a1;
}

uint64_t container_disposition_for_array(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v7;
      v10 = 0;
      result = container_disposition(*a1, &v10);
      if (result != 2)
      {
        break;
      }

      v7 = v10;
      if (v8 && v8 != v10)
      {
        result = 0;
        LODWORD(v7) = v8;
        if (a3)
        {
          goto LABEL_16;
        }

        return result;
      }

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_10:
      ++a1;
      v6 = result;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }

    v7 = v8;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (v6 != result)
    {
      result = 3;
LABEL_15:
      if (!a3)
      {
        return result;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  LODWORD(v7) = 0;
  result = 0;
  if (a3)
  {
LABEL_16:
    *a3 = v7;
  }

  return result;
}

BOOL container_object_update_metadata(uint64_t a1, int a2, const char **a3, uint64_t *a4)
{
  if (a1 && (uuid = container_object_get_uuid(a1), !uuid_is_null(uuid)) && container_object_get_identifier(a1) && container_object_get_class(a1) - 1 <= 0xD)
  {
    v12 = container_query_create();
    v13 = container_object_get_class(a1);
    container_query_set_class(v12, v13);
    uid = container_object_get_uid(a1);
    container_query_set_uid(v12, uid);
    is_transient = container_object_is_transient(a1);
    container_query_set_transient(v12, is_transient);
    identifier = container_object_get_identifier(a1);
    v17 = xpc_string_create(identifier);
    __s = v17;
    v18 = container_object_get_class(a1);
    if (v18 == 13 || v18 == 7)
    {
      container_query_set_group_identifiers(v12, v17);
    }

    else
    {
      container_query_set_identifiers(v12, v17);
    }

    persona_unique_string = container_object_get_persona_unique_string(a1);
    if (persona_unique_string)
    {
      container_query_set_persona_unique_string(v12, persona_unique_string);
    }

    if (a2)
    {
      v20 = 0x300000000;
    }

    else
    {
      v20 = 0x100000000;
    }

    container_query_operation_set_flags(v12, v20);
    _container_query_operation_set_private_flags(v12, 3);
    result_at_index = _container_query_get_result_at_index(v12, 0, 1);
    v9 = result_at_index != 0;
    if (result_at_index)
    {
      v22 = result_at_index;
      container_update_with_container(a1, result_at_index);
      if (a3)
      {
        v23 = v22[11];
        if (v23 && (v24 = *(v23 + 128)) != 0)
        {
          string = xpc_array_get_string(v24, *(v22 + 24));
        }

        else
        {
          string = v22[6];
        }

        if (string)
        {
          string = strndup(string, 0x800uLL);
        }

        *a3 = string;
      }

      v10 = 1;
    }

    else if (*v12)
    {
      v10 = **v12;
    }

    else
    {
      v10 = 21;
    }

    container_query_free(v12);
    if (v17)
    {
      xpc_release(v17);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v9 = 0;
    v10 = 11;
  }

  if (a4 && v10 != 1)
  {
    *a4 = v10;
  }

  return v9;
}

void container_update_with_container(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  uuid = container_object_get_uuid(a1);
  if (uuid_is_null(uuid))
  {
    goto LABEL_3;
  }

  v5 = container_object_get_uuid(a2);
  if (uuid_is_null(v5))
  {
    goto LABEL_3;
  }

  v13 = container_object_get_uuid(a1);
  v14 = container_object_get_uuid(a2);
  if (v13 && v14)
  {
    if (*v13 != *v14 || *(v13 + 8) != *(v14 + 8))
    {
      goto LABEL_18;
    }

LABEL_3:
    is_transient = container_object_is_transient(a2);
    __container_object_separate_from_query(a1);
    *(a1 + 109) = is_transient;
    v7 = *(a2 + 88);
    if (v7 && (v8 = *(v7 + 136)) != 0)
    {
      dictionary = xpc_array_get_dictionary(v8, *(a2 + 96));
    }

    else
    {
      dictionary = *(a2 + 80);
    }

    container_object_set_info(a1, dictionary);
    if (container_object_get_path(a2))
    {
      path = container_object_get_path(a2);
      container_object_set_path(a1, path);
    }

    unique_path_component = container_object_get_unique_path_component(a2);
    v12 = *MEMORY[0x1E69E9840];

    container_object_set_unique_path_component(a1, unique_path_component);
    return;
  }

  if (!uuid_compare(v13, v14))
  {
    goto LABEL_3;
  }

LABEL_18:
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v15 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    identifier = container_object_get_identifier(a1);
    v19 = 2080;
    v20 = container_object_get_identifier(a2);
    _os_log_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_DEFAULT, "Skipping update of [%s] from [%s] since UUIDs don't match.", &v17, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t container_get_persona_unique_string(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_persona_unique_string(a1);
  }

  return a1;
}

uint64_t container_get_user_managed_assets_relative_path(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_user_managed_assets_relative_path(a1);
  }

  return a1;
}

uint64_t container_get_creator_codesign_identifier(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_creator_codesign_identifier(a1);
  }

  return a1;
}

uint64_t container_copy_path(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_copy_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_copy_path_block_invoke;
  block[3] = &unk_1E86AE7B0;
  block[5] = &v14;
  block[6] = a1;
  block[4] = &v10;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_copy_path", gClientFaultLoggingEnabled, v6);
  v7 = v15[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void *__container_copy_path_block_invoke(void *a1)
{
  __s = 0;
  v2 = a1[6];
  if (!v2 || (uuid = container_object_get_uuid(a1[6]), uuid_is_null(uuid)) || !container_object_get_identifier(v2) || container_object_get_class(v2) - 1 >= 0xE)
  {
    *(*(a1[4] + 8) + 24) = 11;
    goto LABEL_4;
  }

  path = container_object_get_path(a1[6]);
  v6 = a1[6];
  if (path)
  {
    container_object_sandbox_extension_activate(v6, 1);
    v7 = container_object_get_path(a1[6]);
    if (container_fs_item_exists(v7, 0))
    {
      v8 = container_object_get_path(a1[6]);
      goto LABEL_20;
    }
  }

  else if (*(v6 + 88))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_DEFAULT, "Retrieving the path from a container which was fetched by a query without the CONTAINER_QUERY_FLAGS_RESULT_INCLUDE_PATH option. If you want the path from queried containers, set that option on the query. That will be much faster than what is about to happen...", v10, 2u);
    }
  }

  if (!container_object_update_metadata(a1[6], 0, &__s, (*(a1[4] + 8) + 24)))
  {
    goto LABEL_4;
  }

  v8 = container_object_get_path(a1[6]);
  if (__s)
  {
    container_object_set_sandbox_token(a1[6], __s);
    container_object_sandbox_extension_activate(a1[6], 1);
  }

LABEL_20:
  *(*(a1[5] + 8) + 24) = strdup(v8);
LABEL_4:
  result = __s;
  if (__s)
  {
    free(__s);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t container_is_transient(uint64_t a1, _BYTE *a2)
{
  if (a1 && a2)
  {
    *a2 = container_object_is_transient(a1);
  }

  return 1;
}

uint64_t container_copy_info(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = _os_activity_create(&dword_1DF28A000, "container_copy_info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_copy_info_block_invoke;
  block[3] = &unk_1E86AE7D8;
  block[5] = &v14;
  block[6] = a1;
  block[4] = &v10;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v15;
  v6 = v15[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_copy_info", gClientFaultLoggingEnabled, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

xpc_object_t __container_copy_info_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 88);
  if (v3 && (v4 = *(v3 + 136)) != 0)
  {
    dictionary = xpc_array_get_dictionary(v4, *(v2 + 96));
    v2 = a1[6];
  }

  else
  {
    dictionary = *(v2 + 80);
  }

  v6 = *(v2 + 88);
  if (dictionary)
  {
    if (v6 && (v7 = *(v6 + 136)) != 0)
    {
      v8 = xpc_array_get_dictionary(v7, *(v2 + 96));
    }

    else
    {
      v8 = *(v2 + 80);
    }

    result = xpc_retain(v8);
    *(*(a1[4] + 8) + 24) = result;
  }

  else
  {
    if (v6)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = container_log_handle_for_category_logHandles[0];
      if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving the info from a container which was fetched by a query without the CONTAINER_QUERY_FLAGS_RESULT_INCLUDE_INFO option. If you want the info from queried containers, set that option on the query. That will be much faster than what is about to happen...", v18, 2u);
      }
    }

    result = container_object_update_metadata(a1[6], 1, 0, (*(a1[5] + 8) + 24));
    if (result)
    {
      v11 = a1[6];
      v12 = *(v11 + 88);
      if (v12 && (v13 = *(v12 + 136)) != 0)
      {
        result = xpc_array_get_dictionary(v13, *(v11 + 96));
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *(v11 + 80);
        if (!result)
        {
          return result;
        }
      }

      v14 = a1[6];
      v15 = *(v14 + 88);
      if (v15 && (v16 = *(v15 + 136)) != 0)
      {
        v17 = xpc_array_get_dictionary(v16, *(v14 + 96));
      }

      else
      {
        v17 = *(v14 + 80);
      }

      *(*(a1[4] + 8) + 24) = xpc_retain(v17);
      return container_object_set_info(a1[6], 0);
    }
  }

  return result;
}

xpc_object_t container_get_info(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "container_get_info";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container parameter is NULL", &v8, 0xCu);
    }

    result = 0;
    goto LABEL_13;
  }

  v1 = *(a1 + 88);
  if (!v1 || (v2 = *(v1 + 136)) == 0)
  {
    result = *(a1 + 80);
LABEL_13:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *(a1 + 96);
  v4 = *MEMORY[0x1E69E9840];

  return xpc_array_get_dictionary(v2, v3);
}

xpc_object_t container_get_info_value_for_key(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "container_get_info_value_for_key";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container parameter is NULL", &v11, 0xCu);
      if (a2)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_11:
      if (a2)
      {
        goto LABEL_21;
      }
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "container_get_info_value_for_key";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: key parameter is NULL", &v11, 0xCu);
    }

    goto LABEL_21;
  }

  v3 = *(a1 + 88);
  if (!v3 || (v4 = *(v3 + 136)) == 0)
  {
    dictionary = *(a1 + 80);
    if (dictionary)
    {
      goto LABEL_17;
    }

LABEL_21:
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  dictionary = xpc_array_get_dictionary(v4, *(a1 + 96));
  if (!dictionary)
  {
    goto LABEL_21;
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];

  return xpc_dictionary_get_value(dictionary, a2);
}

uint64_t container_is_new(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  uuid = container_object_get_uuid(a1);
  if (uuid_is_null(uuid) || !container_object_get_identifier(a1) || container_object_get_class(a1) - 1 > 0xD)
  {
    return 0;
  }

  return container_object_is_new(a1);
}

char *container_copy_unlocalized_description(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (a1)
  {
    identifier = container_object_get_identifier(a1);
    v3 = container_object_get_class(a1);
    persona_unique_string = container_object_get_persona_unique_string(a1);
    creator_codesign_identifier = container_object_get_creator_codesign_identifier(a1);
    uid = container_object_get_uid(a1);
    if (container_object_is_transient(a1))
    {
      v7 = "temp-";
    }

    else
    {
      v7 = &unk_1DF2BBE1A;
    }

    if (!persona_unique_string)
    {
      persona_unique_string = &unk_1DF2BBE1A;
    }

    if (creator_codesign_identifier)
    {
      v8 = "|";
    }

    else
    {
      creator_codesign_identifier = &unk_1DF2BBE1A;
      v8 = &unk_1DF2BBE1A;
    }

    memset(out, 0, 37);
    uuid = container_object_get_uuid(a1);
    uuid_unparse_upper(uuid, out);
    asprintf(&v13, "[%s%s:%s:%u:%s:(%s%s%s)]", v7, *(&CONTAINER_CLASS_NAMES + v3), identifier, uid, persona_unique_string, out, v8, creator_codesign_identifier);
    result = v13;
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    return strdup("<NULL>");
  }

  return result;
}

void *container_create_merged_array(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a4;
  v8 = a2;
  v23 = *MEMORY[0x1E69E9840];
  if ((a4 + a2) <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 + a2;
  }

  v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  if (!v11)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      v19 = 134218240;
      v20 = v8;
      v21 = 2048;
      v22 = v6;
      _os_log_error_impl(&dword_1DF28A000, v16, OS_LOG_TYPE_ERROR, "Could not allocate memory to merge container arrays: %zu + %zu", &v19, 0x16u);
    }

    goto LABEL_20;
  }

  v12 = v11;
  if (v8)
  {
    v13 = 0;
    do
    {
      v14 = container_copy_object(*(a1 + 8 * v13));
      v12[v13] = v14;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    while (v8 != ++v13);
  }

  if (v6)
  {
    while (1)
    {
      v15 = container_copy_object(*a3);
      v12[v8] = v15;
      if (!v15)
      {
        break;
      }

      ++v8;
      ++a3;
      if (!--v6)
      {
        goto LABEL_12;
      }
    }

    v13 = v8;
LABEL_19:
    container_free_array_of_containers(v12, v13);
LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

LABEL_12:
  if (a5)
  {
    *a5 = v8;
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL container_is_equal(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    uuid = container_object_get_uuid(a1);
    v6 = container_object_get_uuid(a2);
    if (uuid && v6)
    {
      if (*uuid != *v6 || *(uuid + 8) != *(v6 + 8))
      {
        return 0;
      }
    }

    else if (uuid_compare(uuid, v6))
    {
      return 0;
    }

    v7 = container_object_get_class(a1);
    if (v7 == container_object_get_class(a2))
    {
      uid = container_object_get_uid(a1);
      if (uid == container_object_get_uid(a2))
      {
        is_transient = container_object_is_transient(a1);
        if (is_transient == container_object_is_transient(a2))
        {
          persona_unique_string = container_object_get_persona_unique_string(a1);
          v11 = container_object_get_persona_unique_string(a2);
          if ((persona_unique_string != 0) == (v11 != 0) && (!persona_unique_string || !v11 || !strncmp(persona_unique_string, v11, 0x400uLL)))
          {
            identifier = container_object_get_identifier(a1);
            v13 = container_object_get_identifier(a2);
            return strncmp(identifier, v13, 0x400uLL) == 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL ____locked_revoke_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40) + 1;
  if (v3 == a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v3 != a3;
}

void ____initialize_container_sandbox_extensions_block_invoke_2()
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v0 = container_copy_persona_unique_strings(&v16);
  if (v0 && v16 == 1)
  {
    v1 = v0;
    os_unfair_lock_lock(&container_global_sandbox_extension_per_persona_lock);
    v2 = os_map_str_count();
    if (v2 <= 1)
    {
      v2 = 1;
    }

    v3 = malloc_type_calloc(v2, 8uLL, 0x10040436913F5uLL);
    v23 = v3;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v18[6] = MEMORY[0x1E69E9820];
    v18[7] = 0x40000000;
    v18[8] = ____locked_clear_dead_personas_block_invoke;
    v18[9] = &unk_1E86AE890;
    v18[10] = &v19;
    v18[11] = v3;
    os_map_str_foreach();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ____locked_clear_dead_personas_block_invoke_2;
    v18[3] = &unk_1E86AE8B8;
    v18[4] = &v19;
    v18[5] = v3;
    ____locked_clear_dead_personas_block_invoke_2(v18, "default");
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ____locked_clear_dead_personas_block_invoke_3;
    applier[3] = &unk_1E86AE8E0;
    applier[4] = v18;
    xpc_array_apply(v1, applier);
    v4 = v20;
    if (v20[3])
    {
      v5 = 0;
      do
      {
        if (v3[v5])
        {
          v6 = v3[v5];
          v7 = os_map_str_find();
          v25 = v7;
          if (v7)
          {
            v8 = v7;
            v9 = os_map_str_entry();
            __s = v9;
            os_map_str_delete();
            if (v9)
            {
              free(v9);
              memset_s(&__s, 8uLL, 0, 8uLL);
            }

            if (v8[3])
            {
              v10 = 0;
              v11 = v8 + 5;
              do
              {
                if (*v11)
                {
                  v12 = *(v11 - 1);
                  if ((sandbox_extension_release() & 0x80000000) != 0)
                  {
                    if (container_log_handle_for_category_onceToken != -1)
                    {
                      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
                    }

                    v13 = qword_1ED452B28;
                    if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
                    {
                      v14 = *__error();
                      *buf = 67109120;
                      v27 = v14;
                      _os_log_error_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_ERROR, "container_sandbox_extension_revoke_all(): error %d releasing sandbox extension", buf, 8u);
                    }
                  }
                }

                ++v10;
                v11 += 4;
              }

              while (v10 < v8[3]);
            }

            os_map_str_clear();
            os_map_str_destroy();
            free(v8);
            memset_s(&v25, 8uLL, 0, 8uLL);
          }

          v4 = v20;
        }

        ++v5;
      }

      while (v5 < v4[3]);
    }

    if (v3)
    {
      free(v3);
      memset_s(&v23, 8uLL, 0, 8uLL);
    }

    _Block_object_dispose(&v19, 8);
    os_unfair_lock_unlock(&container_global_sandbox_extension_per_persona_lock);
    xpc_release(v1);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t ____locked_clear_dead_personas_block_invoke_2(uint64_t result, char *__s2)
{
  if (__s2)
  {
    v2 = *(*(*(result + 32) + 8) + 24);
    if (v2)
    {
      v4 = 0;
      v5 = *(result + 40);
      while (1)
      {
        result = *(v5 + 8 * v4);
        if (result)
        {
          result = strcmp(result, __s2);
          if (!result)
          {
            break;
          }
        }

        if (v2 == ++v4)
        {
          return result;
        }
      }

      *(v5 + 8 * v4) = 0;
    }
  }

  return result;
}

uint64_t ____locked_clear_dead_personas_block_invoke_3(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  string_ptr = xpc_string_get_string_ptr(xstring);
  (*(v3 + 16))(v3, string_ptr);
  return 1;
}

uint64_t ____locked_clear_per_persona_data_block_invoke(int a1, void *a2)
{
  __s = a2;
  if (a2)
  {
    free(a2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return 1;
}

xpc_object_t container_object_get_info(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && (v2 = *(v1 + 136)) != 0)
  {
    return xpc_array_get_dictionary(v2, *(a1 + 96));
  }

  else
  {
    return *(a1 + 80);
  }
}

const char *container_object_get_sandbox_token(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && (v2 = *(v1 + 128)) != 0)
  {
    return xpc_array_get_string(v2, *(a1 + 96));
  }

  else
  {
    return *(a1 + 48);
  }
}

void *container_object_set_class(void *a1, uint64_t a2)
{
  result = __container_object_separate_from_query(a1);
  a1[2] = a2;
  return result;
}

char *container_object_set_unique_path_component(void *a1, const char *a2)
{
  __container_object_separate_from_query(a1);
  v6 = a1[7];
  v5 = (a1 + 7);
  v4 = v6;
  if (v6)
  {
    free(v4);
    memset_s(v5, 8uLL, 0, 8uLL);
  }

  result = strndup(a2, 0x400uLL);
  *v5 = result;
  return result;
}

xpc_object_t container_object_set_info(void *a1, void *a2)
{
  __container_object_separate_from_query(a1);
  v4 = a1[10];
  if (v4)
  {
    xpc_release(v4);
  }

  if (a2)
  {
    result = xpc_retain(a2);
  }

  else
  {
    result = 0;
  }

  a1[10] = result;
  return result;
}

char *container_object_set_sandbox_token(void *a1, const char *a2)
{
  __container_object_separate_from_query(a1);
  v6 = a1[6];
  v5 = (a1 + 6);
  v4 = v6;
  if (v6)
  {
    free(v4);
    memset_s(v5, 8uLL, 0, 8uLL);
  }

  if (a2)
  {
    result = strndup(a2, 0x800uLL);
  }

  else
  {
    result = 0;
  }

  *v5 = result;
  return result;
}

void *container_object_set_transient(uint64_t a1, char a2)
{
  result = __container_object_separate_from_query(a1);
  *(a1 + 109) = a2;
  return result;
}

void *container_object_set_is_new(uint64_t a1, char a2)
{
  result = __container_object_separate_from_query(a1);
  *(a1 + 108) = a2;
  return result;
}

void container_object_set_uuid(unsigned __int8 *a1, const unsigned __int8 *a2)
{
  __container_object_separate_from_query(a1);

  uuid_copy(a1, a2);
}

char *container_object_set_user_managed_assets_relative_path(void *a1, const char *a2)
{
  __container_object_separate_from_query(a1);
  v6 = a1[8];
  v5 = (a1 + 8);
  v4 = v6;
  if (v6)
  {
    free(v4);
    memset_s(v5, 8uLL, 0, 8uLL);
  }

  result = strndup(a2, 0x400uLL);
  *v5 = result;
  return result;
}

char *container_object_set_creator_codesign_identifier(void *a1, const char *a2)
{
  __container_object_separate_from_query(a1);
  v6 = a1[9];
  v5 = (a1 + 9);
  v4 = v6;
  if (v6)
  {
    free(v4);
    memset_s(v5, 8uLL, 0, 8uLL);
  }

  result = strndup(a2, 0x400uLL);
  *v5 = result;
  return result;
}

uint64_t container_object_set_backing_store_from_query(uint64_t result, uint64_t a2, int a3)
{
  *(result + 88) = a2;
  if (a2)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

char *_container_notify_copy_notify_name(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = _CONTAINER_NOTIFY_EVENT_NAMES[a2];
  asprintf(&v4, "com.apple.containermanager.%s%s", v2, *(&CONTAINER_CLASS_NAMES + a1));
  return v4;
}

void *container_notify_create_with_initial_gen_count(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A00403CA01357uLL);
  v4[1] = _os_activity_create(&dword_1DF28A000, "container_notify_t", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5 = (gCMDispatchSeam[5])(0, 1);
  v4[4] = (gCMDispatchSeam[4])("com.apple.containermanager.notify", v5);
  v4[9] = -1;
  v4[10] = -1;
  *(v4 + 22) = -1;
  v4[12] = a2;
  v4[13] = a2;
  *(v4 + 28) = geteuid();
  v4[2] = a1;
  return v4;
}

void *container_notify_create_with_class(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((a1 - 15) <= 0xFFFFFFFFFFFFFFF1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v1 = *MEMORY[0x1E69E9840];

  return container_notify_create_with_initial_gen_count(a1, -1);
}

void container_notify_set_class(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a2 - 15) > 0xFFFFFFFFFFFFFFF1)
    {
      _container_notify_log_if_error(*a1, "container_notify_set_class");
      if (*(a1 + 116) != 1)
      {
        *(a1 + 16) = a2;
        goto LABEL_20;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v7 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "container_notify_set_class";
        _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameters cannot be changed after container_notify_start() or container_notify_has_changed()", &v9, 0xCu);
      }

      v5 = 158;
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v4 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315906;
        v10 = "container_notify_set_class";
        v11 = 2048;
        v12 = 0;
        v13 = 2048;
        v14 = a2;
        v15 = 2048;
        v16 = 15;
        _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container_class parameter is an invalid value (%llu > %llu < %llu)", &v9, 0x2Au);
      }

      v5 = 20;
    }

    _container_notify_set_usage_error(a1, v5);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "container_notify_set_class";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameter is NULL", &v9, 0xCu);
    }
  }

LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
}

void _container_notify_set_usage_error(uint64_t *a1, uint64_t a2)
{
  v3 = container_error_create_with_message(3, a2, 0, 0, 0);
  if (*a1)
  {
    container_error_reinitialize(*a1, v3[1], *v3, v3[2], *(v3 + 6), v3[4]);
    v4 = *a1;
  }

  else
  {
    v4 = container_error_create_with_message(v3[1], *v3, v3[2], *(v3 + 6), v3[4]);
    *a1 = v4;
  }

  *(v4 + 56) = a1;

  container_error_free(v3);
}

void container_notify_set_flags(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _container_notify_log_if_error(*a1, "container_notify_set_flags");
    if (*(a1 + 116) == 1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v4 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "container_notify_set_flags";
        _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameters cannot be changed after container_notify_start() or container_notify_has_changed()", &v7, 0xCu);
      }

      _container_notify_set_usage_error(a1, 158);
    }

    else
    {
      *(a1 + 24) = a2;
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "container_notify_set_flags";
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_notify_set_uid(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _container_notify_log_if_error(*a1, "container_notify_set_uid");
    if (*(a1 + 116) == 1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v4 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "container_notify_set_uid";
        _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameters cannot be changed after container_notify_start() or container_notify_has_changed()", &v7, 0xCu);
      }

      _container_notify_set_usage_error(a1, 158);
    }

    else
    {
      *(a1 + 112) = a2;
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "container_notify_set_uid";
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_notify_set_queue(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _container_notify_log_if_error(*a1, "container_notify_set_queue");
    if (*(a1 + 116) == 1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v4 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v11 = 136315138;
        v12 = "container_notify_set_queue";
        _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameters cannot be changed after container_notify_start() or container_notify_has_changed()", &v11, 0xCu);
      }

      _container_notify_set_usage_error(a1, 158);
    }

    else
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v7 = qword_1ED452BD0;
        if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 16);
          v11 = 134217984;
          v12 = v8;
          _os_log_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_DEFAULT, "Replacing existing notify queue; class = %llu", &v11, 0xCu);
        }

        (gCMDispatchSeam[1])(v6);
      }

      if (a2)
      {
        (*gCMDispatchSeam)(a2);
      }

      else
      {
        v9 = (gCMDispatchSeam[5])(0, 1);
        a2 = (gCMDispatchSeam[4])("com.apple.containermanager.notify", v9);
      }

      *(a1 + 32) = a2;
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "container_notify_set_queue";
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameter is NULL", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void container_notify_set_event_handler(uint64_t a1, unint64_t a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 >= 4)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315650;
        v16 = "container_notify_set_event_handler";
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = 3;
        _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: event parameter is invalid (%llu/%llu)", &v15, 0x20u);
      }

      v6 = 38;
LABEL_18:
      _container_notify_set_usage_error(a1, v6);
      goto LABEL_29;
    }

    _container_notify_log_if_error(*a1, "container_notify_set_event_handler");
    if (*(a1 + 116) == 1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v9 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315138;
        v16 = "container_notify_set_event_handler";
        _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameters cannot be changed after container_notify_start() or container_notify_has_changed()", &v15, 0xCu);
      }

      v6 = 158;
      goto LABEL_18;
    }

    v10 = *(a1 + 40 + 8 * a2);
    if (v10)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v11 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 16);
        v15 = 134218240;
        v16 = v12;
        v17 = 2048;
        v18 = a2;
        _os_log_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_DEFAULT, "Replacing existing notify handler; class = %llu, event = %llu", &v15, 0x16u);
      }

      _Block_release(v10);
    }

    if (a3)
    {
      v13 = _Block_copy(a3);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 40 + 8 * a2) = v13;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315138;
      v16 = "container_notify_set_event_handler";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: notify parameter is NULL", &v15, 0xCu);
    }
  }

LABEL_29:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t container_notify_has_changed(uint64_t a1, _BYTE *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (_container_notify_is_valid("container_notify_has_changed", a1))
  {
    *(a1 + 116) = 1;
    v4 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_notify_has_changed_block_invoke;
    block[3] = &unk_1E86AE9F0;
    block[5] = &v9;
    block[6] = a1;
    block[4] = &v13;
    os_activity_apply(v4, block);
  }

  else
  {
    _container_notify_set_usage_error(a1, 38);
  }

  v5 = v14;
  v6 = *(v14 + 24);
  if (a2 && (v14[3] & 1) != 0)
  {
    *a2 = *(v10 + 24);
    v6 = *(v5 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6 & 1;
}

uint64_t __container_notify_has_changed_block_invoke(void *a1)
{
  v5 = -1;
  result = container_notify_get_generation(a1[6], &v5);
  *(*(a1[4] + 8) + 24) = result;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v3 = v5;
    v4 = a1[6];
    if (v5 == -1 || *(v4 + 104) != v5)
    {
      *(*(a1[5] + 8) + 24) = 1;
      *(v4 + 104) = v3;
    }
  }

  return result;
}

BOOL _container_notify_populate_generation(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = -1;
  v2 = (gCMNotifySeam[5])(*(a1 + 88), &v10);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v3 = qword_1ED452BD0;
  if (v2)
  {
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 16);
      *buf = 134218240;
      *v12 = v4;
      *&v12[8] = 1024;
      *&v12[10] = v2;
      _os_log_error_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_ERROR, "Failed to get generation state; container_class = %llu, status = %u", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 88);
      v9 = *(a1 + 16);
      *buf = 67109632;
      *v12 = v8;
      *&v12[4] = 2048;
      *&v12[6] = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_debug_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEBUG, "Got generation state; token = %d, container_class = %llu, generation = %llu", buf, 0x1Cu);
    }

    v5 = v10;
    if (!v10)
    {
      v5 = 1000;
    }

    *(a1 + 96) = v5;
  }

  result = v2 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_notify_start(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  if (_container_notify_is_valid("container_notify_start", a1))
  {
    *(a1 + 116) = 1;
    v2 = *(a1 + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __container_notify_start_block_invoke;
    v6[3] = &unk_1E86AEA18;
    v6[4] = &v7;
    v6[5] = a1;
    os_activity_apply(v2, v6);
    v3 = v8[3];
    if (v3 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 38;
    v8[3] = 38;
  }

  _container_notify_set_usage_error(a1, v3);
LABEL_6:
  v4 = *(a1 + 117);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __container_notify_start_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if ((*(v1 + 117) & 1) == 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(v1 + 16);
    object = *(v1 + 8);
    do
    {
      v6 = *(v1 + 8 * v4 + 40);
      if (v6)
      {
        v25 = 0;
        *buf = 0;
        v7 = _CONTAINER_NOTIFY_EVENT_NAMES[v4];
        asprintf(buf, "com.apple.containermanager.%s%s", v7, *(&CONTAINER_CLASS_NAMES + v5));
        __s = *buf;
        if (*buf)
        {
          v8 = os_retain(object);
          v9 = gCMNotifySeam[4];
          v10 = *(v1 + 32);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 0x40000000;
          v22[2] = ___container_notify_begin_block_invoke;
          v22[3] = &unk_1E86AEAC8;
          v23 = v25;
          v22[6] = v4;
          v22[7] = v5;
          v22[4] = v6;
          v22[5] = v8;
          v11 = v9(__s, &v25, v10, v22);
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v12 = qword_1ED452BD0;
          if (v11)
          {
            if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = __s;
              *&buf[12] = 2048;
              *&buf[14] = v5;
              *&buf[22] = 1024;
              *&buf[24] = v11;
              _os_log_error_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_ERROR, "Failed to register for event; event = [%s], container_class = %llu, status = %u", buf, 0x1Cu);
            }

            v13 = a1;
            if (__s)
            {
              free(__s);
              memset_s(&__s, 8uLL, 0, 8uLL);
            }

            os_release(object);
            goto LABEL_28;
          }

          if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
          {
            *buf = 67109890;
            *&buf[4] = v25;
            *&buf[8] = 2048;
            *&buf[10] = v4;
            *&buf[18] = 2080;
            *&buf[20] = __s;
            *&buf[28] = 2048;
            *&buf[30] = v5;
            _os_log_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_INFO, "Registered for event; token = %d, event = %llu, name = [%s], container_class = %llu", buf, 0x26u);
          }

          ++v3;
          *(v1 + 72 + 4 * v4) = v25;
          ++v2;
          if (__s)
          {
            free(__s);
            memset_s(&__s, 8uLL, 0, 8uLL);
          }
        }
      }

      ++v4;
    }

    while (v4 != 4);
    if (v3)
    {
      v13 = a1;
      if (v3 == v2)
      {
        *(*(a1 + 40) + 117) = 1;
        goto LABEL_29;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v18 = qword_1ED452BD0;
      if (!os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        _container_notify_end(v1);
        *(*(v13 + 40) + 117) = 0;
        *(*(*(v13 + 32) + 8) + 24) = 156;
        goto LABEL_29;
      }

      *buf = 134218496;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v3;
      *&buf[22] = 2048;
      *&buf[24] = v2;
      v15 = "Failed to register one or more event handlers; container_class = %llu, expected = %zu, registered = %zu";
      v16 = v18;
      v17 = 32;
    }

    else
    {
      v13 = a1;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v14 = qword_1ED452BD0;
      if (!os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 134217984;
      *&buf[4] = v5;
      v15 = "No event handlers assigned; container_class = %llu";
      v16 = v14;
      v17 = 12;
    }

    _os_log_error_impl(&dword_1DF28A000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_28;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void ___container_notify_begin_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___container_notify_begin_block_invoke_2;
  v2[3] = &unk_1E86AEAA0;
  v4 = *(a1 + 64);
  v3 = *(a1 + 48);
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  os_activity_apply(v1, v2);
}

void _container_notify_end(uint64_t a1)
{
  v2 = 0;
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1 + 72;
  do
  {
    v4 = *(v3 + v2);
    if (v4 != -1 && !(*gCMNotifySeam)(*(v3 + v2)))
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = qword_1ED452BD0;
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 16);
        *buf = 67109376;
        v9 = v4;
        v10 = 2048;
        v11 = v6;
        _os_log_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_INFO, "Canceled registered event; token = %d, container_class = %llu", buf, 0x12u);
      }

      *(v3 + v2) = -1;
      os_release(*(a1 + 8));
    }

    v2 += 4;
  }

  while (v2 != 16);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t ___container_notify_begin_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452BD0;
  if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10[0] = 67109632;
    v10[1] = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_INFO, "Calling out to client; token = %d, event = %llu, container_class = %llu", v10, 0x1Cu);
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void container_notify_stop(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 117) == 1)
    {
      block[5] = v1;
      block[6] = v2;
      v3 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_notify_stop_block_invoke;
      block[3] = &__block_descriptor_tmp_3_906;
      block[4] = a1;
      os_activity_apply(v3, block);
    }
  }
}

dispatch_object_t *container_notify_free(dispatch_object_t *result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    v2 = result + 4;
    (gCMDispatchSeam[2])(result[4]);
    v3 = v1[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __container_notify_free_block_invoke;
    v8[3] = &__block_descriptor_tmp_4_909;
    v8[4] = v1;
    os_activity_apply(v3, v8);
    (gCMDispatchSeam[3])(*v2, &__block_literal_global_910);
    if (*v2)
    {
      dispatch_release(*v2);
      memset_s(v2, 8uLL, 0, 8uLL);
    }

    for (i = 5; i != 9; ++i)
    {
      v5 = v1[i];
      if (v5)
      {
        _Block_release(v5);
        v1[i] = 0;
      }
    }

    if (*(v1 + 22) != -1)
    {
      (*gCMNotifySeam)();
      *(v1 + 22) = -1;
    }

    v6 = *v1;
    if (*v1)
    {
      v6[7] = 0;
      container_error_free(v6);
      *v1 = 0;
    }

    v7 = v1[1];
    if (v7)
    {
      os_release(v7);
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

BOOL container_notify_post(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!_container_notify_is_valid("container_notify_post", a1))
  {
    _container_notify_set_usage_error(a1, 38);
    goto LABEL_9;
  }

  *(a1 + 116) = 1;
  v4 = *(a1 + 16);
  *buf = 0;
  asprintf(buf, "com.apple.containermanager.%s%s", _CONTAINER_NOTIFY_EVENT_NAMES[a2], *(&CONTAINER_CLASS_NAMES + v4));
  v5 = *buf;
  __s = *buf;
  if (!*buf)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_13;
  }

  v6 = (gCMNotifySeam[2])(*buf);
  v7 = v6 == 0;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = qword_1ED452BD0;
  if (v6)
  {
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 16);
      *buf = 134218498;
      *&buf[4] = v9;
      v15 = 2048;
      v16 = a2;
      v17 = 2080;
      v18 = v5;
      _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "Failed to post notification; class = %llu, event = %llu, name = [%s]", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 16);
    *buf = 134218498;
    *&buf[4] = a2;
    v15 = 2080;
    v16 = v5;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_INFO, "Posted event; event = %llu, event_name = [%s], container_class = %llu", buf, 0x20u);
  }

  free(v5);
  memset_s(&__s, 8uLL, 0, 8uLL);
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL container_notify_set_generation(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!_container_notify_is_valid("container_notify_set_generation", a1))
  {
LABEL_14:
    _container_notify_set_usage_error(a1, 38);
    goto LABEL_15;
  }

  *(a1 + 116) = 1;
  if (a2 == -1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "container_notify_set_generation";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: generation parameter is invalid", &v9, 0xCu);
    }

    goto LABEL_14;
  }

  if (_container_notify_generation_register(a1, 0) && _container_notify_set_generation(a1, a2))
  {
    result = 1;
    goto LABEL_16;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v5 = qword_1ED452BD0;
  result = os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = *(a1 + 16);
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Failed to post generation change; class = %llu, generation = %llu", &v9, 0x16u);
LABEL_15:
    result = 0;
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _container_notify_set_generation(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = (gCMNotifySeam[6])(*(a1 + 88));
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v5 = qword_1ED452BD0;
  if (v4)
  {
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 16);
      *buf = 134218496;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      *&buf[24] = v4;
      _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Failed to set generation state; container_class = %llu, generation = %llu, status = %u", buf, 0x1Cu);
    }

    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 88);
      v8 = *(a1 + 16);
      *buf = 67109632;
      *&buf[4] = v7;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      _os_log_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_INFO, "Set state; token = %d, generation = %llu, container_class = %llu", buf, 0x1Cu);
    }

    v9 = *(a1 + 16);
    *buf = 0;
    asprintf(buf, "com.apple.containermanager.%s%s", "G.", *(&CONTAINER_CLASS_NAMES + v9));
    v10 = *buf;
    __s = *buf;
    v11 = (gCMNotifySeam[2])(*buf);
    v6 = v11 == 0;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v12 = qword_1ED452BD0;
    if (v11)
    {
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 16);
        *buf = 134218496;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 1024;
        *&buf[24] = v11;
        _os_log_error_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_ERROR, "Failed to post generation changed event; container_class = %llu, generation = %llu, status = %u", buf, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 16);
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        _os_log_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_INFO, "Posted generation change event; event_name = [%s], container_class = %llu", buf, 0x16u);
      }

      *(a1 + 96) = a2;
    }

    if (v10)
    {
      free(v10);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL container_notify_increment_generation(uint64_t *a1)
{
  if (!_container_notify_is_valid("container_notify_increment_generation", a1))
  {
    _container_notify_set_usage_error(a1, 38);
    return 0;
  }

  if (!_container_notify_generation_register(a1, 1))
  {
    return 0;
  }

  v2 = a1[12];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  return _container_notify_set_generation(a1, v5);
}

_BYTE *container_base64_encode(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 % 3)
  {
    v3 = (a2 % 3) ^ 3;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + a2;
  v5 = (v3 + a2) / 3;
  v6 = malloc_type_calloc((4 * v5) | 1, 1uLL, 0x100004077774924uLL);
  v7 = v6;
  if (v4 >= 3)
  {
    v8 = 0;
    v9 = 0;
    v10 = v5 - 1;
    if (v5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v5;
    }

    do
    {
      v12 = (a1 + 3 * v9);
      v13 = *v12 << 16;
      if (v3 >= 2 && v10 == v9)
      {
        v14 = 2;
      }

      else
      {
        v13 |= v12[1] << 8;
        if (v3 && v10 == v9)
        {
          v14 = 3;
        }

        else
        {
          v13 |= v12[2];
          v14 = 4;
        }
      }

      v15 = 18;
      do
      {
        v16 = (v13 >> v15) & 0x3F;
        if (v16 <= 0x19)
        {
          v17 = v16 + 65;
LABEL_23:
          v6[v8] = v17;
          goto LABEL_24;
        }

        if (v16 <= 0x33)
        {
          v17 = v16 + 71;
          goto LABEL_23;
        }

        if (v16 <= 0x3D)
        {
          v17 = v16 - 4;
          goto LABEL_23;
        }

        if (v16 == 62)
        {
          v6[v8] = 43;
        }

        else
        {
          v6[v8] = 47;
        }

LABEL_24:
        ++v8;
        v15 -= 6;
        --v14;
      }

      while (v14);
      ++v9;
    }

    while (v9 != v11);
  }

  if (v3)
  {
    memset(&v6[4 * v5 - v3], 61, v3);
  }

  return v7;
}

const char *container_base64_encode_string(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);

    return container_base64_encode(v1, v2);
  }

  return result;
}

char *_container_base64_decode(char *result, unint64_t *a2, unsigned int a3)
{
  if (result)
  {
    v5 = result;
    v6 = strlen(result);
    if ((v6 & 3) != 0)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = (v6 >> 1) + (v6 >> 2);
      if (v6)
      {
        v9 = v6 - 1;
        v10 = -1;
        do
        {
          v11 = v5[v9];
          ++v10;
          v12 = v9-- != 0;
          v13 = v12;
        }

        while (v12 && v11 == 61);
        if ((v11 & 0x3F) != 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        v15 = v10 + v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v8 - v15;
      v17 = v8 - v15 + a3;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      result = malloc_type_calloc(v18, 1uLL, 0x100004077774924uLL);
      __s = result;
      if (v7)
      {
        v19 = 0;
        v20 = 0;
        v21 = v7 >> 2;
        if (v7 >> 2 <= 1)
        {
          v21 = 1;
        }

        while (2)
        {
          v22 = 0;
          v23 = v5;
          v24 = 24;
          do
          {
            v26 = *v23++;
            v25 = v26;
            v27 = v26 - 65;
            if ((v26 - 65) > 0x19)
            {
              if ((v25 - 97) > 0x19)
              {
                if ((v25 - 48) > 9)
                {
                  if (v25 == 43)
                  {
                    v27 = 62;
                  }

                  else if (v25 == 61)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    if (v25 != 47)
                    {
                      if (!result)
                      {
                        return result;
                      }

                      free(result);
                      memset_s(&__s, 8uLL, 0, 8uLL);
                      return 0;
                    }

                    v27 = 63;
                  }
                }

                else
                {
                  v27 = v25 + 4;
                }
              }

              else
              {
                v27 = v25 - 71;
              }
            }

            v24 -= 6;
            v22 |= v27 << v24;
          }

          while (v24);
          v28 = v20 + 1;
          result[v20] = BYTE2(v22);
          if (v20 + 1 < v16)
          {
            result[v28] = BYTE1(v22);
            if (v20 + 2 >= v16)
            {
              v28 = v20 + 2;
            }

            else
            {
              v28 = v20 + 3;
              result[v20 + 2] = v22;
            }
          }

          ++v19;
          v5 += 4;
          v20 = v28;
          if (v19 != v21)
          {
            continue;
          }

          break;
        }
      }

      if (a2)
      {
        if (result)
        {
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

size_t container_string_rom_copyout_external_bytes(void *__src, void *__dst, size_t a3)
{
  v3 = __src[2];
  if (__dst && v3 <= a3)
  {
    memcpy(__dst, __src, v3);
    *(__dst + 5) = 1;
    return __src[2];
  }

  return v3;
}

_BYTE *container_string_rom_create_from_external_bytes(const void *a1, size_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = malloc_type_calloc(1uLL, a2, 0xF9B4E917uLL);
    memcpy(v5, a1, a2);
    v5[5] = 0;
    return v5;
  }

  return a1;
}

uint64_t container_string_rom_count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t container_string_rom_index_of(uint64_t a1, const char *a2)
{
  i = -1;
  if (!a1 || !a2)
  {
    return i;
  }

  v5 = *(a1 + 6);
  v6 = a1 + 24;
  if (!*(a1 + 6) || a1 == -24)
  {
    v10 = 0;
  }

  else
  {
    v7 = (*(a1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = flsl(*(a1 + 8) - 1);
    v9 = *(a1 + 32);
    if ((*(a1 + 30) & 1) == 0)
    {
      v9 += (v9 + 3) >> 2;
      if (v9 != 3 * ((v9 * 0x5555555555555556uLL) >> 64))
      {
        LODWORD(v9) = 3 * ((v9 * 0x5555555555555556uLL) >> 64) + 3;
      }
    }

    v10 = v7 + 8 * ((v9 * v8 + 63) >> 6);
    v5 = *(a1 + 6);
  }

  v11 = 0;
  v12 = *(a1 + 8);
  v13 = ((*(a1 + 7) * v12 + 63) >> 3) & 0x3FFFFFFFF8;
  if (v6 && v5)
  {
    v14 = (*(v6 + 40) + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = flsl(v12 - 1);
    v16 = *(v6 + 8);
    if ((*(v6 + 6) & 1) == 0)
    {
      v16 += (v16 + 3) >> 2;
      if (v16 != 3 * ((v16 * 0x5555555555555556uLL) >> 64))
      {
        LODWORD(v16) = 3 * ((v16 * 0x5555555555555556uLL) >> 64) + 3;
      }
    }

    v11 = v14 + 8 * ((v16 * v15 + 63) >> 6);
    v5 = *(a1 + 6);
  }

  v17 = v10 + v6;
  v18 = v13 + v6 + v11;
  if (!v5)
  {
    v32 = *(a1 + 8);
    i = -1;
    if (!v32)
    {
      return i;
    }

    v33 = *(a1 + 7);
    if (v17)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33 == 0;
    }

    v35 = !v34;
    if (v33 == 64)
    {
      v36 = -1;
    }

    else
    {
      v36 = ~(-1 << v33);
    }

    if (v33 > 0x40 || (v35 & 1) != 0)
    {
      goto LABEL_83;
    }

    v37 = 0;
    for (i = 0; i != v32; ++i)
    {
      v38 = (v37 & 0x3F) + v33;
      if (v38)
      {
        v39 = (v37 >> 3) & 0xFFFFFFFFFFFFFF8;
        if (v38 > 0x40)
        {
          v41 = v39 + 8;
          v30 = __CFADD__(v41, v17);
          v42 = (v41 + v17);
          if (v30 || v42 + 7 < 8)
          {
            goto LABEL_81;
          }

          v38 = (*(v42 - 1) << (v38 - 64)) | (*v42 >> 1 >> ~(v38 - 64));
        }

        else
        {
          v30 = __CFADD__(v39, v17);
          v40 = (v39 + v17);
          if (v30 || v40 + 7 < 8)
          {
            goto LABEL_82;
          }

          v38 = *v40 >> -v38;
        }
      }

      if (!strcmp(a2, (v18 + (v38 & v36))))
      {
        return i;
      }

      v37 += v33;
    }

    return -1;
  }

  v19 = strlen(a2);
  v20 = v19 + 1;
  v21 = v19 + 1 + (*(a1 + 12) << 7);
  if (v19 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v22 = a2;
    do
    {
      v23 = *v22++;
      v21 = 257 * v21 + v23;
    }

    while (v22 < &a2[v20]);
  }

  v24 = container_perfect_hash_index_of(v6, (v21 << (v20 & 0x1F)) + v21);
  if (v24 < 0)
  {
    return -1;
  }

  v25 = v24;
  v26 = 0;
  if (v6 && *(a1 + 6))
  {
    v26 = ((*(v6 + 40) + 7) & 0xFFFFFFFFFFFFFFF8) + v6;
  }

  v27 = flsl(*(a1 + 8) - 1);
  if (v27 > 0x40 || !v26 && v27)
  {
    goto LABEL_83;
  }

  if (!is_mul_ok(v25, v27))
  {
    goto LABEL_84;
  }

  v28 = ((v25 * v27) & 0x3F) + v27;
  if (v28)
  {
    v29 = ((v25 * v27) >> 3) & 0x1FFFFFFFFFFFFFF8;
    if (v28 > 0x40)
    {
      v43 = v29 + 8;
      v30 = __CFADD__(v43, v26);
      v44 = (v43 + v26);
      if (v30 || v44 + 7 < 8)
      {
        goto LABEL_81;
      }

      v28 = (*(v44 - 1) << (v28 - 64)) | (*v44 >> 1 >> ~(v28 - 64));
    }

    else
    {
      v30 = __CFADD__(v29, v26);
      v31 = (v29 + v26);
      if (v30 || v31 + 7 < 8)
      {
        goto LABEL_82;
      }

      v28 = *v31 >> -v28;
    }
  }

  v45 = -1;
  if (v27 != 64)
  {
    v45 = ~(-1 << v27);
  }

  v46 = *(a1 + 7);
  if (v46 > 0x40 || !v17 && *(a1 + 7))
  {
LABEL_83:
    __assert_rtn("container_bitvector_get", "container_bitvector.h", 80, "((void)container_bitvector_get(): bad argument, 0)");
  }

  v47 = v28 & v45;
  if (!is_mul_ok(v28 & v45, v46))
  {
LABEL_84:
    __assert_rtn("container_bitvector_get", "container_bitvector.h", 85, "((void)container_bitvector_get(): index too large for element width, 0)");
  }

  v48 = ((v47 * v46) & 0x3F) + v46;
  if (v48)
  {
    v49 = ((v47 * v46) >> 3) & 0x1FFFFFFFFFFFFFF8;
    if (v48 <= 0x40)
    {
      v30 = __CFADD__(v49, v17);
      v50 = (v49 + v17);
      if (!v30 && v50 + 7 >= 8)
      {
        v48 = *v50 >> -v48;
        goto LABEL_74;
      }

LABEL_82:
      __assert_rtn("container_bitvector_get", "container_bitvector.h", 104, "((void)container_bitvector_get(): index too large for array, 0)");
    }

    v51 = v49 + 8;
    v30 = __CFADD__(v51, v17);
    v52 = (v51 + v17);
    if (!v30 && v52 + 7 >= 8)
    {
      v48 = (*(v52 - 1) << (v48 - 64)) | (*v52 >> 1 >> ~(v48 - 64));
      goto LABEL_74;
    }

LABEL_81:
    __assert_rtn("container_bitvector_get", "container_bitvector.h", 113, "((void)container_bitvector_get(): index too large for array, 0)");
  }

LABEL_74:
  if (v46 == 64)
  {
    v53 = -1;
  }

  else
  {
    v53 = ~(-1 << v46);
  }

  if (!strcmp(a2, (v18 + (v48 & v53))))
  {
    return v47;
  }

  else
  {
    return -1;
  }
}

uint64_t container_info_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v20 = "container_info_put";
    v9 = "%s: SPI MISUSE: container parameter is required";
    goto LABEL_15;
  }

  if (a3 && MEMORY[0x1E12D2570](a3) != MEMORY[0x1E69E9E80])
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v20 = "container_info_put";
    v9 = "%s: SPI MISUSE: info_dict parameter is expected to be a dictionary";
LABEL_15:
    _os_log_fault_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_FAULT, v9, buf, 0xCu);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v10 = _os_activity_create(&dword_1DF28A000, "container_info_put", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_info_put_block_invoke;
  block[3] = &unk_1E86AEB10;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[4] = a4;
  block[5] = &v15;
  os_activity_apply(v10, block);
  os_release(v10);
  v11 = v16[3];
LABEL_13:
  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

unsigned __int8 *__container_info_put_block_invoke(uint64_t a1)
{
  result = _container_info_execute(*(a1 + 48), 1uLL, *(a1 + 56), *(a1 + 64), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

unsigned __int8 *_container_info_execute(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v124 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v63 = 0;
  if (a1)
  {
    v10 = container_object_get_class(a1);
    v11 = v10;
    uid = 0;
    if (v10 <= 0xE && ((1 << v10) & 0x4ED4) != 0)
    {
      uid = container_object_get_uid(a1);
    }
  }

  else
  {
    v11 = 0;
    uid = 0;
  }

  current_persona = voucher_get_current_persona();
  v14 = xpc_dictionary_create(0, 0, 0);
  v64 = v14;
  xpc_dictionary_set_uint64(v14, "Command", 0x33uLL);
  xpc_dictionary_set_uint64(v14, "Flags", a3);
  xpc_dictionary_set_uint64(v14, "PrivateFlags", a2);
  xpc_dictionary_set_value(v14, "Value", a4);
  v15 = xpc_dictionary_create(0, 0, 0);
  v66 = v15;
  container_xpc_encode_container_object(v15, a1, 0);
  xpc_dictionary_set_value(v14, "Container", v15);
  xpc_dictionary_set_uint64(v14, "PersonaKernelID", current_persona);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      identifier = container_object_get_identifier(a1);
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }
    }

    else
    {
      identifier = 0;
    }

    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
    {
      v16 = uid;
      v17 = a5;
      v18 = MEMORY[0x1E12D2400](v14);
      __s = v18;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      voucher_get_current_persona_originator_info();
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      voucher_get_current_persona_proximate_info();
      v117 = 0;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v111 = 0u;
      v110 = 0u;
      v109 = 0u;
      v108 = 0u;
      v107 = 0u;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
      v103 = 0u;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 2;
      v19 = voucher_get_current_persona();
      if (v19 == -1 || (kpersona_info() & 0x80000000) != 0)
      {
        v22 = "<unknown>";
        v20 = "NOPERSONA";
      }

      else
      {
        if ((DWORD1(v96) - 2) > 4)
        {
          v20 = "<unknown>";
        }

        else
        {
          v20 = (&off_1E86AF498)[DWORD1(v96) - 2];
        }

        v22 = &v101 + 4;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v29 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67111426;
        v68 = v19;
        v69 = 2082;
        v70 = v20;
        v71 = 2082;
        v72 = v22;
        v73 = 1024;
        v74 = 0;
        v75 = 1024;
        v76 = 0;
        v77 = 1024;
        v78 = 0;
        v79 = 1024;
        v80 = 0;
        v81 = 1024;
        v82 = geteuid();
        v83 = 1024;
        v84 = getuid();
        v85 = 2080;
        v86 = v18;
        _os_log_debug_impl(&dword_1DF28A000, v29, OS_LOG_TYPE_DEBUG, "Update info; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, message = %s", buf, 0x4Au);
        if (!v18)
        {
          goto LABEL_37;
        }
      }

      else if (!v18)
      {
LABEL_37:
        a5 = v17;
        uid = v16;
        goto LABEL_45;
      }

      free(v18);
      memset_s(&__s, 8uLL, 0, 8uLL);
      goto LABEL_37;
    }

    __s = 0;
    p_s = &__s;
    v61 = 0x2000000000;
    v62 = "<multiple>";
    if (MEMORY[0x1E12D2570](a4) == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(a4);
      if (count)
      {
        v55 = count;
        string = xpc_array_get_string(a4, 0);
        p_s[3] = string;
        goto LABEL_25;
      }
    }

    else
    {
      v21 = xpc_dictionary_get_count(a4);
      if (v21)
      {
        v55 = v21;
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = ___container_info_execute_block_invoke;
        applier[3] = &unk_1E86AEB88;
        applier[4] = &__s;
        xpc_dictionary_apply(a4, applier);
        goto LABEL_25;
      }
    }

    v55 = 0;
LABEL_25:
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    current_persona_originator_info = voucher_get_current_persona_originator_info();
    v51 = DWORD1(v122);
    v53 = DWORD2(v121);
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
    current_persona_proximate_info = voucher_get_current_persona_proximate_info();
    v49 = DWORD1(v119);
    v50 = DWORD2(v118);
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 2;
    v27 = voucher_get_current_persona();
    if (v27 == -1 || (kpersona_info() & 0x80000000) != 0)
    {
      v47 = "<unknown>";
      v48 = "NOPERSONA";
    }

    else
    {
      if ((DWORD1(v96) - 2) > 4)
      {
        v28 = "<unknown>";
      }

      else
      {
        v28 = (&off_1E86AF498)[DWORD1(v96) - 2];
      }

      v48 = v28;
      v47 = &v101 + 4;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v30 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
    {
      v46 = a3;
      v31 = current_persona_originator_info;
      v32 = v53 & ~(current_persona_originator_info >> 31);
      v33 = uid;
      v34 = v51 & ~(v31 >> 31);
      v52 = v50 & ~(current_persona_proximate_info >> 31);
      v54 = a5;
      v35 = v49 & ~(current_persona_proximate_info >> 31);
      v36 = geteuid();
      v37 = getuid();
      v38 = p_s[3];
      *buf = 67112450;
      v68 = v27;
      v69 = 2082;
      v70 = v48;
      v71 = 2082;
      v72 = v47;
      v73 = 1024;
      v74 = v32;
      v75 = 1024;
      v76 = v34;
      uid = v33;
      v77 = 1024;
      v78 = v52;
      v79 = 1024;
      v80 = v35;
      v81 = 1024;
      v82 = v36;
      v83 = 1024;
      v84 = v37;
      v85 = 2048;
      v86 = v11;
      v87 = 2080;
      v88 = identifier;
      v89 = 2080;
      v90 = v38;
      v91 = 2048;
      a5 = v54;
      v92 = v55;
      v93 = 2048;
      v94 = v46;
      _os_log_impl(&dword_1DF28A000, v30, OS_LOG_TYPE_DEFAULT, "Update info; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, class = %llu, identifier = %s, key = [%s](%zu), flags = %llx", buf, 0x72u);
    }

    _Block_object_dispose(&__s, 8);
  }

LABEL_45:
  if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v39 = 1;
  }

  else if (v11 - 1 > 0xD)
  {
    v39 = 0;
  }

  else
  {
    v39 = dword_1DF2B94B0[v11 - 1];
  }

  v40 = container_xpc_send_sync_message(v39, 0, v14, 1, uid, 0, &v63);
  v41 = v40;
  v65 = v40;
  if (v40)
  {
    v57 = 1;
    v42 = container_xpc_decode_container_object(v40, &v57);
    if (v42)
    {
      goto LABEL_57;
    }

    v43 = container_error_create_with_message(2, v57, 0, 0, 0);
    v63 = v43;
  }

  else
  {
    v43 = v63;
  }

  v42 = 0;
  if (a5 && v43)
  {
    (*(a5 + 16))(a5);
    v42 = 0;
  }

LABEL_57:
  container_error_free(v63);
  if (v15)
  {
    xpc_release(v15);
    memset_s(&v66, 8uLL, 0, 8uLL);
  }

  if (v14)
  {
    xpc_release(v14);
    memset_s(&v64, 8uLL, 0, 8uLL);
  }

  if (v41)
  {
    xpc_release(v41);
    memset_s(&v65, 8uLL, 0, 8uLL);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t container_info_modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v20 = "container_info_modify";
    v9 = "%s: SPI MISUSE: container parameter is required";
    goto LABEL_19;
  }

  if (!a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v20 = "container_info_modify";
    v9 = "%s: SPI MISUSE: info_dict parameter is required";
    goto LABEL_19;
  }

  if (MEMORY[0x1E12D2570](a3) == MEMORY[0x1E69E9E80])
  {
    v13 = _os_activity_create(&dword_1DF28A000, "container_info_modify", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_info_modify_block_invoke;
    block[3] = &unk_1E86AEB38;
    block[6] = a1;
    block[7] = a2;
    block[8] = a3;
    block[4] = a4;
    block[5] = &v15;
    os_activity_apply(v13, block);
    os_release(v13);
    v10 = v16[3];
    goto LABEL_16;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = qword_1ED452B80;
  if (os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v20 = "container_info_modify";
    v9 = "%s: SPI MISUSE: info_dict parameter is expected to be a dictionary";
LABEL_19:
    _os_log_fault_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_FAULT, v9, buf, 0xCu);
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unsigned __int8 *__container_info_modify_block_invoke(uint64_t a1)
{
  result = _container_info_execute(*(a1 + 48), 0, *(a1 + 56), *(a1 + 64), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t container_info_delete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v20 = "container_info_delete";
    v9 = "%s: SPI MISUSE: container parameter is required";
    goto LABEL_19;
  }

  if (!a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B80;
    if (!os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v20 = "container_info_delete";
    v9 = "%s: SPI MISUSE: keys_array parameter is required";
    goto LABEL_19;
  }

  if (MEMORY[0x1E12D2570](a3) == MEMORY[0x1E69E9E50])
  {
    v13 = _os_activity_create(&dword_1DF28A000, "container_info_delete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_info_delete_block_invoke;
    block[3] = &unk_1E86AEB60;
    block[6] = a1;
    block[7] = a2;
    block[8] = a3;
    block[4] = a4;
    block[5] = &v15;
    os_activity_apply(v13, block);
    os_release(v13);
    v10 = v16[3];
    goto LABEL_16;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = qword_1ED452B80;
  if (os_log_type_enabled(qword_1ED452B80, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v20 = "container_info_delete";
    v9 = "%s: SPI MISUSE: keys_array parameter is expected to be an array of strings";
LABEL_19:
    _os_log_fault_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_FAULT, v9, buf, 0xCu);
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unsigned __int8 *__container_info_delete_block_invoke(uint64_t a1)
{
  result = _container_info_execute(*(a1 + 48), 6uLL, *(a1 + 56), *(a1 + 64), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

__n128 container_seam_dispatch_set_common(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 32);
  xmmword_1ECE2FE00 = *(a1 + 16);
  unk_1ECE2FE10 = v2;
  gCMDispatchCustomSeamStore = result;
  gCMDispatchSeam = &gCMDispatchCustomSeamStore;
  return result;
}

size_t container_perfect_hash_copyout_external_bytes(void *__src, void *__dst, size_t a3)
{
  v3 = __src[5];
  if (__dst && v3 <= a3)
  {
    memcpy(__dst, __src, v3);
    *(__dst + 5) = 1;
    return __src[5];
  }

  return v3;
}

_BYTE *container_perfect_hash_create_from_external_bytes(const void *a1, size_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = malloc_type_calloc(1uLL, a2, 0xAD9EA9A6uLL);
    memcpy(v5, a1, a2);
    v5[5] = 0;
    return v5;
  }

  return a1;
}

uint64_t container_perfect_hash_num_indexes(uint64_t a1)
{
  v1 = *(a1 + 6);
  result = *(a1 + 8);
  if ((v1 & 1) == 0)
  {
    v3 = result + ((result + 3) >> 2);
    if (v3 == 3 * ((v3 * 0x5555555555555556uLL) >> 64))
    {
      return v3;
    }

    else
    {
      return 3 * ((v3 * 0x5555555555555556uLL) >> 64) + 3;
    }
  }

  return result;
}

uint64_t container_pwd_for_name(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_pwd_for_name_block_invoke;
  v7[3] = &unk_1E86AEBE0;
  v7[5] = &v8;
  v7[6] = a1;
  v7[4] = a3;
  v4 = _container_pwd(&v11, v7);
  v5 = v4;
  if (a2 && (v4 & 1) == 0)
  {
    *a2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __container_pwd_for_name_block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v6 = (*(gCMPWDSeam + 3))(a1[6], &v21, a2, a3, &v20);
  if (!v6)
  {
    if (v20)
    {
      v14 = *(a1[5] + 8);
      v15 = *(a1[4] + 16);
      *buf = v22;
      *&buf[8] = v24;
      *&buf[16] = v21;
      result = v15();
      goto LABEL_17;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      v19 = a1[6];
      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1DF28A000, v16, OS_LOG_TYPE_ERROR, "getpwnam_r(%s): user not found", buf, 0xCu);
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    v9 = a1[6];
    v10 = 155;
    v11 = 2;
    goto LABEL_7;
  }

  v7 = v6;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
  {
    v17 = a1[6];
    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 1026;
    *&buf[14] = v7;
    _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "getpwnam_r(%s) returned %{public, darwin.errno}d", buf, 0x12u);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = a1[6];
  v10 = 99;
  v11 = v7;
LABEL_7:
  v12 = container_error_create_with_message(3, v10, v9, v11, 0);
  result = 0;
  *a4 = v12;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_pwd_get_mobile_user_uid(_DWORD *a1)
{
  v2 = (*(gCMPWDSeam + 6))(71);
  v3 = v2;
  if (v2 < 1)
  {
    if (v2 == -1)
    {
      v9 = 0;
      v7 = *__error();
      if (!a1)
      {
        return v7;
      }
    }

    else
    {
      v9 = 0;
      v7 = 34;
      if (!a1)
      {
        return v7;
      }
    }

    goto LABEL_15;
  }

  v4 = malloc_type_calloc(v2, 1uLL, 0x100004077774924uLL);
  __s = v4;
  if (!v4)
  {
    v9 = 0;
    v7 = 12;
    if (!a1)
    {
      return v7;
    }

LABEL_15:
    *a1 = v9;
    return v7;
  }

  v5 = v4;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v6 = (*(gCMPWDSeam + 3))("mobile", &v12, v4, v3, &v11);
  v7 = v6;
  if (v11)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  free(v5);
  memset_s(&__s, 8uLL, 0, 8uLL);
  if (a1)
  {
    goto LABEL_15;
  }

  return v7;
}

char *container_pwd_copy_user_home_path(int a1, int a2, int a3, void **a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v19 = 0;
  bzero(__s1, 0x401uLL);
  __s = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  *buf = 2;
  if (kpersona_info() || DWORD1(v25) != 2)
  {
LABEL_10:
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __container_pwd_copy_user_home_path_block_invoke;
    v17[3] = &__block_descriptor_tmp_4_1019;
    v17[4] = __s1;
    if (!container_pwd_for_uid(a1, &v19, v17))
    {
      v10 = 0;
      goto LABEL_20;
    }

LABEL_11:
    if (a2)
    {
      v10 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
      __s = v10;
      if (v10)
      {
        if ((gCMContainerSeam[3])(__s1, v10, 1024))
        {
          v11 = __error();
          v19 = container_error_create_with_message(1, 99, v10, *v11, 0);
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v12 = container_log_handle_for_category_logHandles;
          if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
          {
            v13 = *__error();
            *buf = 136380931;
            *&v25 = __s1;
            WORD4(v25) = 1026;
            *(&v25 + 10) = v13;
            _os_log_error_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_ERROR, "realpath_np([%{private}s]) failed: %{public, darwin.errno}d", buf, 0x12u);
          }
        }

LABEL_20:
        if (!v19)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v10 = strndup(__s1, 0x400uLL);
      __s = v10;
      if (v10)
      {
        goto LABEL_20;
      }
    }

    v9 = container_error_create_with_message(3, 73, 0, 12, 0);
    goto LABEL_26;
  }

  if (!kpersona_getpath())
  {
    goto LABEL_11;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = container_log_handle_for_category_logHandles;
  if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
  {
    v16 = *__error();
    *v20 = 67109376;
    v21 = v25;
    v22 = 1026;
    v23 = v16;
    _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "kpersona_getpath(%u) returned %{public, darwin.errno}d", v20, 0xEu);
  }

  v9 = container_error_create_with_message(3, 76, 0, 0, 0);
  v10 = 0;
LABEL_26:
  v19 = v9;
  if (!v9)
  {
LABEL_27:
    if (!a4)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_21:
  if (v10)
  {
    free(v10);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  v10 = 0;
  __s = 0;
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (!v10)
  {
    *a4 = v19;
    goto LABEL_32;
  }

LABEL_30:
  if (!a4)
  {
    container_error_free(v19);
    v10 = __s;
  }

LABEL_32:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL __container_pwd_copy_user_home_path_block_invoke(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    strlcpy(*(a1 + 32), *(a2 + 8), 0x400uLL);
  }

  else if (a3)
  {
    *a3 = container_error_create_with_message(3, 100, 0, 0, 0);
  }

  return v3 != 0;
}

uint64_t container_pwd_get_cached_current_user_home_path(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&container_pwd_get_cached_current_user_home_path_lock);
  if (container_pwd_get_cached_current_user_home_path_user_home_realpath)
  {
    goto LABEL_10;
  }

  v8 = 99;
  mobile_user_uid = container_pwd_get_mobile_user_uid(&v8);
  if (mobile_user_uid)
  {
    container_pwd_get_cached_current_user_home_path_error = container_error_create_with_message(3, 99, 0, mobile_user_uid, 0);
    goto LABEL_10;
  }

  container_pwd_get_cached_current_user_home_path_user_home_realpath = container_pwd_copy_user_home_path(v8, 1, 0, &container_pwd_get_cached_current_user_home_path_error);
  if (!container_pwd_get_cached_current_user_home_path_user_home_realpath)
  {
    v3 = container_error_copy_unlocalized_description(container_pwd_get_cached_current_user_home_path_error);
    v7 = v3;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = container_log_handle_for_category_logHandles[0];
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    *buf = 67109378;
    v10 = v8;
    v11 = 2082;
    v12 = v3;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "Unable to get user (%u) home path, container results may not be reliable; error = %{public}s", buf, 0x12u);
    if (v3)
    {
LABEL_9:
      free(v3);
      memset_s(&v7, 8uLL, 0, 8uLL);
    }
  }

LABEL_10:
  os_unfair_lock_unlock(&container_pwd_get_cached_current_user_home_path_lock);
  if (a1)
  {
    *a1 = container_pwd_get_cached_current_user_home_path_error;
  }

  else
  {
    container_error_free(container_pwd_get_cached_current_user_home_path_error);
  }

  result = container_pwd_get_cached_current_user_home_path_user_home_realpath;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_create_or_lookup_path(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v13 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __container_create_or_lookup_path_block_invoke;
  v16[3] = &unk_1E86AEC68;
  v16[4] = &v19;
  v16[5] = a2;
  v17 = a4;
  v18 = a5;
  v16[6] = a3;
  v16[7] = a6;
  v16[8] = a7;
  os_activity_apply(v13, v16);
  os_release(v13);
  v14 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v14;
}

uint64_t __container_create_or_lookup_path_block_invoke(uint64_t a1)
{
  result = container_create_or_lookup_path_for_current_user(*(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 73), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_bundle_copy_data_container_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_bundle_copy_data_container_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_bundle_copy_data_container_path_block_invoke;
  v11[3] = &unk_1E86AECE0;
  v11[6] = a1;
  v11[7] = a2;
  v11[4] = v12;
  v11[5] = &v13;
  v11[8] = a3;
  v11[9] = a4;
  os_activity_apply(v8, v11);
  os_release(v8);
  v9 = v14[3];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __container_bundle_copy_data_container_path_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = _common_bundle_lookup(*(a1 + 48), *(a1 + 56), &v7, *(a1 + 64), (*(*(a1 + 32) + 8) + 24));
  __s = v2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && v7 != 0)
  {
    path = container_object_get_path(v7);
    if (path)
    {
      *(*(*(a1 + 40) + 8) + 24) = strndup(path, 0x400uLL);
    }
  }

  container_object_free(v7);
  if (v2)
  {
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5 != 1)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      *v6 = v5;
      v5 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  container_log_error("container_bundle_copy_data_container_path", gClientFaultLoggingEnabled, v5);
}

void *_common_bundle_lookup(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, void *a5)
{
  v87 = *MEMORY[0x1E69E9840];
  object = 0;
  v46 = 1;
  __s = 0;
  v44 = 0;
  v42 = 0;
  if (!a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v17 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF28A000, v17, OS_LOG_TYPE_ERROR, "Could not allocate return container object.", buf, 2u);
    }

    v18 = 73;
    goto LABEL_26;
  }

  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v19 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF28A000, v19, OS_LOG_TYPE_ERROR, "Client passed NULL path_to_bundle parameter.", buf, 2u);
    }

    v18 = 38;
    goto LABEL_26;
  }

  v10 = xpc_bundle_create();
  v44 = v10;
  if (!v10)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v20 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&v74 = a1;
      _os_log_error_impl(&dword_1DF28A000, v20, OS_LOG_TYPE_ERROR, "Unable to get bundle from [%{public}s]", buf, 0xCu);
    }

    v18 = 94;
    if ((a2 & 4) != 0)
    {
      v18 = 95;
    }

LABEL_26:
    v46 = v18;
    container_error_free(0);
    v21 = 0;
    goto LABEL_27;
  }

  v11 = v10;
  property = xpc_bundle_get_property();
  if (!property)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v24 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    *&v74 = a1;
    WORD4(v74) = 1026;
    *(&v74 + 10) = xpc_bundle_get_error();
    v25 = "Unable to get bundle root path from bundle at [%{public}s]: %{public}d";
    goto LABEL_74;
  }

  v13 = property;
  v14 = xpc_bundle_get_property();
  if (!v14)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v24 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    *&v74 = a1;
    WORD4(v74) = 1026;
    *(&v74 + 10) = xpc_bundle_get_error();
    v25 = "Unable to get executable path from bundle at [%{public}s]: %{public}d";
LABEL_74:
    _os_log_error_impl(&dword_1DF28A000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
LABEL_39:
    v26 = 94;
    if ((a2 & 4) != 0)
    {
      v26 = 95;
    }

    goto LABEL_41;
  }

  string = v14;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  voucher_get_current_persona_originator_info();
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  voucher_get_current_persona_proximate_info();
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  *buf = 2;
  current_persona = voucher_get_current_persona();
  if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
  {
    v39 = "<unknown>";
    v40 = "NOPERSONA";
  }

  else
  {
    if ((DWORD1(v74) - 2) > 4)
    {
      v16 = "<unknown>";
    }

    else
    {
      v16 = (&off_1E86AF498)[DWORD1(v74) - 2];
    }

    v40 = v16;
    v39 = &v79[4];
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v27 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
  {
    *v47 = 67112194;
    v48 = current_persona;
    v49 = 2082;
    v50 = v40;
    v51 = 2082;
    v52 = v39;
    v53 = 1024;
    v54 = 0;
    v55 = 1024;
    v56 = 0;
    v57 = 1024;
    v58 = 0;
    v59 = 1024;
    v60 = 0;
    v61 = 2082;
    v62 = a1;
    v63 = 2082;
    v64 = v13;
    v65 = 2082;
    v66 = string;
    v67 = 2048;
    v68 = a2;
    v69 = 1024;
    v70 = geteuid();
    v71 = 1024;
    v72 = getuid();
    _os_log_impl(&dword_1DF28A000, v27, OS_LOG_TYPE_DEFAULT, "Requesting container lookup; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], bundle = [%{public}s], root = [%{public}s], executable = [%{public}s], flags = %llu, euid = %u, uid = %u", v47, 0x68u);
  }

  v28 = xpc_dictionary_create(0, 0, 0);
  object = v28;
  xpc_dictionary_set_uint64(v28, "Command", 0x24uLL);
  xpc_dictionary_set_string(v28, "BundlePath", v13);
  xpc_dictionary_set_string(v28, "ExecutablePath", string);
  xpc_dictionary_set_uint64(v28, "Flags", a2);
  v29 = container_sandbox_issue_custom_extension(*MEMORY[0x1E69E9BA8], 0, v13);
  __s = v29;
  if (v29)
  {
    v30 = v29;
    v32 = (a2 & 1) == 0 || a4 == 0;
    xpc_dictionary_set_string(v28, "SandboxToken", v29);
    v33 = container_xpc_send_sync_message(3, 0, v28, v32, 0, 0, &v42);
    if (v33)
    {
      v21 = v33;
      v34 = container_xpc_decode_container_object(v33, &v46);
      if (v34)
      {
        v35 = v34;
        if (a4)
        {
          *a4 = container_is_new(v34) ^ 1;
        }

        container_object_sandbox_extension_activate(v35, 1);
        *a3 = v35;
      }

      v36 = v42;
    }

    else
    {
      v36 = v42;
      if (v42)
      {
        v38 = *v42;
      }

      else
      {
        v38 = 1;
      }

      v21 = 0;
      v46 = v38;
    }

    container_error_free(v36);
    free(v30);
    memset_s(&__s, 8uLL, 0, 8uLL);
    goto LABEL_71;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v37 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&v74 = v13;
    _os_log_error_impl(&dword_1DF28A000, v37, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension to [%{public}s] for containermanagerd", buf, 0xCu);
  }

  v26 = 90;
LABEL_41:
  v46 = v26;
  container_error_free(0);
  v21 = 0;
LABEL_71:
  xpc_release(v11);
  memset_s(&v44, 8uLL, 0, 8uLL);
  if (object)
  {
    xpc_release(object);
    memset_s(&object, 8uLL, 0, 8uLL);
  }

LABEL_27:
  if (a5 && v46 != 1)
  {
    *a5 = v46;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t container_bundle_copy_data_container(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_bundle_copy_data_container", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_bundle_copy_data_container_block_invoke;
  v11[3] = &unk_1E86AED08;
  v11[6] = a1;
  v11[7] = a2;
  v11[4] = v12;
  v11[5] = &v13;
  v11[8] = a3;
  v11[9] = a4;
  os_activity_apply(v8, v11);
  os_release(v8);
  v9 = v14[3];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __container_bundle_copy_data_container_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = _common_bundle_lookup(*(a1 + 48), *(a1 + 56), &v6, *(a1 + 64), (*(*(a1 + 32) + 8) + 24));
  __s = v2;
  if (*(*(*(a1 + 32) + 8) + 24) != 1 || v6 == 0)
  {
    container_object_free(v6);
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  if (v2)
  {
LABEL_9:
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

LABEL_10:
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4 != 1)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      *v5 = v4;
      v4 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  container_log_error("container_bundle_copy_data_container", gClientFaultLoggingEnabled, v4);
}

uint64_t container_create_or_lookup_for_current_user(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v12 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __container_create_or_lookup_for_current_user_block_invoke;
  v15[3] = &unk_1E86AED58;
  v15[4] = &v18;
  v15[5] = a1;
  v16 = a3;
  v17 = a4;
  v15[6] = a2;
  v15[7] = a5;
  v15[8] = a6;
  os_activity_apply(v12, v15);
  os_release(v12);
  v13 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t __container_create_or_lookup_for_current_user_block_invoke(uint64_t a1)
{
  result = container_create_or_lookup_for_platform(*(a1 + 40), *(a1 + 48), 0, *(a1 + 72), *(a1 + 73), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_create_or_lookup_for_platform(uint64_t a1, uint64_t a2, int a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = 1;
  v14 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_for_platform", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __container_create_or_lookup_for_platform_block_invoke;
  v17[3] = &unk_1E86AED30;
  v17[6] = a1;
  v17[7] = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v17[4] = &v22;
  v17[5] = v21;
  v17[8] = a6;
  v17[9] = a7;
  os_activity_apply(v14, v17);
  os_release(v14);
  v15 = v23[3];
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void __container_create_or_lookup_for_platform_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 7 || v2 == 13)
  {
    v5 = 0;
    v4 = *(a1 + 56);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 56);
  }

  *(*(*(a1 + 32) + 8) + 24) = _container_legacy_lookup(v2, v5, v4, *(a1 + 80), *(a1 + 84), *(a1 + 85), *(a1 + 64), (*(*(a1 + 40) + 8) + 24));
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 != 1)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      *v7 = v6;
      v6 = *(*(*(a1 + 40) + 8) + 24);
    }
  }

  v8 = gClientFaultLoggingEnabled;

  container_log_error("container_create_or_lookup_for_platform", v8, v6);
}

uint64_t container_create_or_lookup_system_group_paths(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_system_group_paths", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_create_or_lookup_system_group_paths_block_invoke;
  v7[3] = &unk_1E86AEDD0;
  v7[4] = v8;
  v7[5] = &v9;
  v7[6] = a1;
  v7[7] = a2;
  os_activity_apply(v4, v7);
  os_release(v4);
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __container_create_or_lookup_system_group_paths_block_invoke(void *a1)
{
  __s = 0;
  v16 = 0;
  v2 = a1[6];
  if (v2)
  {
    v3 = xpc_string_create(v2);
    __s = v3;
  }

  else
  {
    v3 = 0;
  }

  active_platform = dyld_get_active_platform();
  v5 = _container_legacy_lookup_multiple(0xDuLL, v3, 0, 0, 1, 0, active_platform, &v16, (*(a1[4] + 8) + 24));
  if (v5)
  {
    *(*(a1[5] + 8) + 24) = xpc_dictionary_create(0, 0, 0);
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        v7 = v5[i];
        identifier = container_object_get_identifier(v7);
        path = container_object_get_path(v7);
        v10 = *(v7 + 88);
        if (v10 && (v11 = *(v10 + 128)) != 0)
        {
          string = xpc_array_get_string(v11, *(v7 + 96));
        }

        else
        {
          string = *(v7 + 48);
        }

        xpc_dictionary_set_string(*(*(a1[5] + 8) + 24), identifier, path);
        if (string)
        {
          container_sandbox_extension_consume(string, path, 0, 1);
        }
      }
    }
  }

  if (v3)
  {
    xpc_release(v3);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  container_free_array_of_containers(v5, v16);
  v13 = *(*(a1[4] + 8) + 24);
  if (v13 != 1)
  {
    v14 = a1[7];
    if (v14)
    {
      *v14 = v13;
      v13 = *(*(a1[4] + 8) + 24);
    }
  }

  container_log_error("container_create_or_lookup_system_group_paths", gClientFaultLoggingEnabled, v13);
}

uint64_t _container_legacy_lookup_multiple(unint64_t a1, void *a2, void *a3, int a4, int a5, int a6, int a7, void *a8, uint64_t *a9)
{
  v9 = a9;
  v99 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  if (a1 - 1 > 0xD)
  {
    v27 = 0;
    v32 = 20;
  }

  else
  {
    v10 = a8;
    if (a8)
    {
      if ((a1 & 0xE) == 0xC || a1 <= 8 && ((1 << a1) & 0x12A) != 0)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v18 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
        {
          v19 = a2;
          v20 = a3;
          v21 = a7;
          v22 = a5;
          v23 = v10;
          v24 = a6;
          v25 = geteuid();
          v26 = getuid();
          *buf = 134218752;
          *&v86 = a1;
          WORD4(v86) = 1024;
          *(&v86 + 10) = a4;
          HIWORD(v86) = 1024;
          LODWORD(v87) = v25;
          a6 = v24;
          v10 = v23;
          a5 = v22;
          a7 = v21;
          a3 = v20;
          a2 = v19;
          v9 = a9;
          WORD2(v87) = 1024;
          *(&v87 + 6) = v26;
          _os_log_impl(&dword_1DF28A000, v18, OS_LOG_TYPE_DEFAULT, "Requesting multiple containers; class = %llu, temp = %d, euid = %u, uid = %u", buf, 0x1Eu);
        }
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
        v96 = 0u;
        current_persona_originator_info = voucher_get_current_persona_originator_info();
        v49 = DWORD1(v97);
        v50 = DWORD2(v96);
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        current_persona_proximate_info = voucher_get_current_persona_proximate_info();
        v47 = DWORD2(v93);
        v48 = current_persona_proximate_info;
        v46 = DWORD1(v94);
        v92 = 0;
        memset(v91, 0, sizeof(v91));
        v90 = 0u;
        v89 = 0u;
        v88 = 0u;
        v87 = 0u;
        v86 = 0u;
        *buf = 2;
        current_persona = voucher_get_current_persona();
        if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
        {
          v39 = "<unknown>";
          v38 = "NOPERSONA";
        }

        else
        {
          if ((DWORD1(v86) - 2) > 4)
          {
            v38 = "<unknown>";
          }

          else
          {
            v38 = (&off_1E86AF498)[DWORD1(v86) - 2];
          }

          v39 = &v91[4];
        }

        v51 = a6;
        v44 = v39;
        v45 = v38;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v40 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v50 & ~(current_persona_originator_info >> 31);
          v43 = v49 & ~(current_persona_originator_info >> 31);
          v53 = geteuid();
          v41 = getuid();
          *v63 = 67111682;
          v64 = current_persona;
          v65 = 2082;
          v66 = v45;
          v67 = 2082;
          v68 = v44;
          v69 = 1024;
          v70 = v42;
          v71 = 1024;
          v72 = v43;
          v73 = 1024;
          v74 = v47 & ~(v48 >> 31);
          v75 = 1024;
          v76 = v46 & ~(v48 >> 31);
          v77 = 2048;
          v78 = a1;
          v79 = 1024;
          v80 = a4;
          v81 = 1024;
          v82 = v53;
          v83 = 1024;
          v84 = v41;
          _os_log_impl(&dword_1DF28A000, v40, OS_LOG_TYPE_DEFAULT, "Requesting multiple containers; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], class = %llu, temp = %d, euid = %u, uid = %u", v63, 0x50u);
        }

        a6 = v51;
      }

      v27 = container_query_create();
      container_query_set_class(v27, a1);
      container_query_set_transient(v27, a4);
      if (a2)
      {
        container_query_set_identifiers(v27, a2);
      }

      v28 = a1 == 13 || a1 == 7;
      if (v28 && a3)
      {
        container_query_set_group_identifiers(v27, a3);
      }

      container_query_operation_set_platform(v27, a7);
      if (a5)
      {
        v29 = 0x900000001;
      }

      else
      {
        v29 = 0x900000000;
      }

      container_query_operation_set_flags(v27, v29);
      if (a6)
      {
        container_query_set_include_other_owners(v27, 1);
      }

      _container_query_operation_set_private_flags(v27, 3);
      count_results = container_query_count_results(v27);
      if ((count_results & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v31 = malloc_type_calloc(count_results, 8uLL, 0x2004093837F09uLL);
      v60[3] = v31;
      if (!v31)
      {
        v32 = 73;
        goto LABEL_34;
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 0x40000000;
      v54[2] = ___container_legacy_lookup_multiple_block_invoke;
      v54[3] = &unk_1E86AF430;
      v54[4] = &v59;
      v54[5] = &v55;
      if (!container_query_iterate_results_sync(v27, v54))
      {
LABEL_52:
        if (*v27)
        {
          v32 = **v27;
        }

        else
        {
          v32 = 53;
        }
      }

      else
      {
        *v10 = v56[3];
        v32 = 1;
      }
    }

    else
    {
      v27 = 0;
      v32 = 38;
    }
  }

LABEL_34:
  container_query_free(v27);
  if (v9 && v32 != 1)
  {
    *v9 = v32;
  }

  v33 = v60[3];
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t ___container_legacy_lookup_multiple_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = container_copy_object(a2);
  if (v3)
  {
    *(*(*(*(a1 + 32) + 8) + 24) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = v3;
  }

  return 1;
}

uint64_t container_create_or_lookup_app_group_paths_for_current_user(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_app_group_paths_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_create_or_lookup_app_group_paths_for_current_user_block_invoke;
  block[3] = &unk_1E86AEE20;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __container_create_or_lookup_app_group_paths_for_current_user_block_invoke(void *a1)
{
  result = container_create_or_lookup_app_group_paths_for_platform(a1[5], 0, a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t container_create_or_lookup_app_group_paths_for_platform(uint64_t a1, int a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_app_group_paths_for_platform", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_create_or_lookup_app_group_paths_for_platform_block_invoke;
  block[3] = &unk_1E86AEDF8;
  v10 = a2;
  block[4] = v11;
  block[5] = &v12;
  block[6] = a1;
  block[7] = a3;
  os_activity_apply(v6, block);
  os_release(v6);
  v7 = v13[3];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __container_create_or_lookup_app_group_paths_for_platform_block_invoke(uint64_t a1)
{
  __s = 0;
  v15 = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = xpc_string_create(v2);
    __s = v3;
  }

  else
  {
    v3 = 0;
  }

  v4 = _container_legacy_lookup_multiple(7uLL, v3, 0, 0, 1, 0, *(a1 + 64), &v15, (*(*(a1 + 32) + 8) + 24));
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_create(0, 0, 0);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v6 = v4[i];
        identifier = container_object_get_identifier(v6);
        path = container_object_get_path(v6);
        v9 = *(v6 + 88);
        if (v9 && (v10 = *(v9 + 128)) != 0)
        {
          string = xpc_array_get_string(v10, *(v6 + 96));
        }

        else
        {
          string = *(v6 + 48);
        }

        xpc_dictionary_set_string(*(*(*(a1 + 40) + 8) + 24), identifier, path);
        if (string)
        {
          container_sandbox_extension_consume(string, path, 0, 1);
        }
      }
    }
  }

  if (v3)
  {
    xpc_release(v3);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  container_free_array_of_containers(v4, v15);
  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12 != 1)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      *v13 = v12;
      v12 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  container_log_error("container_create_or_lookup_app_group_paths_for_platform", gClientFaultLoggingEnabled, v12);
}

uint64_t container_create_or_lookup_app_group_paths_from_entitlements_4ls(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v18[3] = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v8 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_app_group_paths_from_entitlements", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_create_or_lookup_app_group_paths_from_entitlements_4ls_block_invoke;
  block[3] = &unk_1E86AEE48;
  v13 = a2;
  v12 = a3;
  block[4] = v18;
  block[5] = &v14;
  block[6] = a1;
  block[7] = a4;
  os_activity_apply(v8, block);
  os_release(v8);
  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v9;
}

void __container_create_or_lookup_app_group_paths_from_entitlements_4ls_block_invoke(uint64_t a1)
{
  v15 = 0;
  array = xpc_dictionary_get_array(*(a1 + 48), "com.apple.security.application-groups");
  __s = array;
  if (array)
  {
    v3 = xpc_retain(array);
    __s = v3;
    v4 = _container_legacy_lookup_multiple(7uLL, 0, v3, 0, *(a1 + 68), 0, *(a1 + 64), &v15, (*(*(a1 + 32) + 8) + 24));
    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_create(0, 0, 0);
      if (v15)
      {
        for (i = 0; i < v15; ++i)
        {
          v6 = v4[i];
          identifier = container_object_get_identifier(v6);
          path = container_object_get_path(v6);
          v9 = *(v6 + 88);
          if (v9 && (v10 = *(v9 + 128)) != 0)
          {
            string = xpc_array_get_string(v10, *(v6 + 96));
          }

          else
          {
            string = *(v6 + 48);
          }

          xpc_dictionary_set_string(*(*(*(a1 + 40) + 8) + 24), identifier, path);
          if (string)
          {
            container_sandbox_extension_consume(string, path, 0, 1);
          }
        }
      }
    }

    if (v3)
    {
      xpc_release(v3);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v4 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 143;
  }

  container_free_array_of_containers(v4, v15);
  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12 != 1)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      *v13 = v12;
      v12 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  container_log_error("container_create_or_lookup_app_group_paths_from_entitlements_4ls", gClientFaultLoggingEnabled, v12);
}

uint64_t container_group_container_identifiers_for_current_user(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_group_container_identifiers_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_group_container_identifiers_for_current_user_block_invoke;
  v7[3] = &unk_1E86AEE70;
  v7[4] = v8;
  v7[5] = &v9;
  v7[6] = a1;
  v7[7] = a2;
  os_activity_apply(v4, v7);
  os_release(v4);
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __container_group_container_identifiers_for_current_user_block_invoke(void *a1)
{
  __s = 0;
  v12 = 0;
  v2 = a1[6];
  if (v2)
  {
    v3 = xpc_string_create(v2);
    __s = v3;
  }

  else
  {
    v3 = 0;
  }

  active_platform = dyld_get_active_platform();
  v5 = _container_legacy_lookup_multiple(7uLL, v3, 0, 0, 1, 0, active_platform, &v12, (*(a1[4] + 8) + 24));
  if (v5)
  {
    *(*(a1[5] + 8) + 24) = xpc_array_create(0, 0);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        identifier = container_object_get_identifier(v5[i]);
        object = xpc_string_create(identifier);
        xpc_array_append_value(*(*(a1[5] + 8) + 24), object);
        if (object)
        {
          xpc_release(object);
          memset_s(&object, 8uLL, 0, 8uLL);
        }
      }
    }
  }

  if (v3)
  {
    xpc_release(v3);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  container_free_array_of_containers(v5, v12);
  v8 = *(*(a1[4] + 8) + 24);
  if (v8 != 1)
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = v8;
      v8 = *(*(a1[4] + 8) + 24);
    }
  }

  container_log_error("container_group_container_identifiers_for_current_user", gClientFaultLoggingEnabled, v8);
}

uint64_t container_get_all_with_class_for_current_user(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_get_all_with_class_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_get_all_with_class_for_current_user_block_invoke;
  v11[3] = &unk_1E86AEE98;
  v12 = a2;
  v11[6] = a1;
  v11[7] = a3;
  v11[4] = &v14;
  v11[5] = v13;
  v11[8] = a4;
  os_activity_apply(v8, v11);
  os_release(v8);
  v9 = v15[3];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v9;
}

void __container_get_all_with_class_for_current_user_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  active_platform = dyld_get_active_platform();
  *(*(*(a1 + 32) + 8) + 24) = _container_legacy_lookup_multiple(v2, 0, 0, v3, 0, 1, active_platform, *(a1 + 56), (*(*(a1 + 40) + 8) + 24));
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5 != 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      *v6 = v5;
      v5 = *(*(*(a1 + 40) + 8) + 24);
    }
  }

  v7 = gClientFaultLoggingEnabled;

  container_log_error("container_get_all_with_class_for_current_user", v7, v5);
}

uint64_t container_replace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_replace", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_replace_block_invoke;
  v9[3] = &unk_1E86AEEC0;
  v9[6] = a1;
  v9[7] = a2;
  v9[4] = a3;
  v9[5] = &v10;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_replace", gClientFaultLoggingEnabled, v11[3]);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

xpc_object_t __container_replace_block_invoke(uint64_t *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  object = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = container_copy_unlocalized_description(a1[6]);
    __s = v2;
    v3 = container_copy_unlocalized_description(a1[7]);
    v28 = v3;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = v2;
      v37 = 2080;
      v38 = v3;
      _os_log_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_DEFAULT, "Replace; old = %s, new = %s", buf, 0x16u);
      v2 = __s;
    }

    if (v2)
    {
      free(v2);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v28)
    {
      free(v28);
      memset_s(&v28, 8uLL, 0, 8uLL);
    }
  }

  v5 = a1[7];
  if (!v5 || (uuid = container_object_get_uuid(a1[7]), uuid_is_null(uuid)) || !container_object_get_identifier(v5) || container_object_get_class(v5) - 1 >= 0xE || (v12 = a1[6]) != 0 && ((v13 = container_object_get_uuid(a1[6]), uuid_is_null(v13)) || !container_object_get_identifier(v12) || container_object_get_class(v12) - 1 >= 0xE))
  {
    v7 = 0;
    v8 = 0;
    *(*(a1[5] + 8) + 24) = 11;
    goto LABEL_15;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v34 = v14;
  xpc_dictionary_set_uint64(v14, "Command", 2uLL);
  if (a1[6])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    v31 = v8;
    container_xpc_encode_container_object(v8, a1[6], 0);
    xpc_dictionary_set_value(v14, "OldContainer", v8);
  }

  else
  {
    v8 = 0;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v32 = v7;
  container_xpc_encode_container_object(v7, a1[7], 0);
  xpc_dictionary_set_value(v14, "NewContainer", v7);
  LODWORD(v28) = 0;
  v15 = container_disposition(a1[7], &v28);
  v16 = container_xpc_send_sync_message(v15, 0, v14, 0, v28, 0, &v30);
  object = v16;
  if (!v16)
  {
    v26 = v30;
    if (v30)
    {
      v27 = *v30;
    }

    else
    {
      v27 = 1;
    }

    *(*(a1[5] + 8) + 24) = v27;
    container_error_free(v26);
    goto LABEL_15;
  }

  v17 = *(a1[5] + 8);
  v19 = *(v17 + 24);
  v18 = (v17 + 24);
  if (v19 != 1)
  {
    goto LABEL_15;
  }

  v20 = v16;
  v21 = container_xpc_decode_container_object(v16, v18);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
  {
    v22 = MEMORY[0x1E12D2400](v20);
    __s = v22;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v23 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      if (!v22)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    *buf = 136315138;
    v36 = v22;
    _os_log_debug_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_DEBUG, "Updated container during replace: %s", buf, 0xCu);
    if (v22)
    {
LABEL_45:
      free(v22);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

LABEL_46:
  if (v21)
  {
    container_update_with_container(a1[7], v21);
    v24 = a1[7];
    __container_object_separate_from_query(v24);
    *(v24 + 108) = 0;
    container_object_free(v21);
    v25 = a1[6];
    if (v25)
    {
      __container_object_separate_from_query(a1[6]);
      *(v25 + 16) = 0;
    }

    _container_async_reclaim_disk_space(a1[4]);
  }

LABEL_15:
  if (*(*(a1[5] + 8) + 24) != 1)
  {
    v9 = a1[4];
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  if (v8)
  {
    xpc_release(v8);
    memset_s(&v31, 8uLL, 0, 8uLL);
    v7 = v32;
  }

  if (v7)
  {
    xpc_release(v7);
    memset_s(&v32, 8uLL, 0, 8uLL);
  }

  if (object)
  {
    xpc_release(object);
    memset_s(&object, 8uLL, 0, 8uLL);
  }

  result = v34;
  if (v34)
  {
    xpc_release(v34);
    result = memset_s(&v34, 8uLL, 0, 8uLL);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void _container_async_reclaim_disk_space(uint64_t a1)
{
  if (a1)
  {
    if (_container_async_reclaim_disk_space_onceToken != -1)
    {
      dispatch_once(&_container_async_reclaim_disk_space_onceToken, &__block_literal_global_104);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___container_async_reclaim_disk_space_block_invoke_2;
    block[3] = &unk_1E86AF478;
    block[4] = a1;
    dispatch_async(_container_async_reclaim_disk_space_queue, block);
  }
}

void ___container_async_reclaim_disk_space_block_invoke_2(uint64_t a1)
{
  v2 = container_operation_delete_reclaim_disk_space();
  container_log_ext_error("_container_async_reclaim_disk_space_block_invoke_2", gClientFaultLoggingEnabled, v2);
  if (v2)
  {
    v3 = *v2;
  }

  (*(*(a1 + 32) + 16))();

  container_error_free(v2);
}

dispatch_queue_t ___container_async_reclaim_disk_space_block_invoke()
{
  result = dispatch_queue_create("container_delete_array_of_containers async obliteration", 0);
  _container_async_reclaim_disk_space_queue = result;
  return result;
}

uint64_t container_set_code_signing_info_for_identifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_set_code_signing_info_for_identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_set_code_signing_info_for_identifier_block_invoke;
  v9[3] = &unk_1E86AF0A0;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_set_code_signing_info_for_identifier", gClientFaultLoggingEnabled, v11[3]);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __container_set_code_signing_info_for_identifier_block_invoke(uint64_t a1)
{
  v9 = 0;
  __s = 0;
  v8 = 0;
  if (!*(a1 + 40))
  {
    v2 = 0;
    v6 = 0;
    v7 = 18;
    goto LABEL_13;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v9 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x12uLL);
  xpc_dictionary_set_string(v2, "Identifier", *(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_value(v2, "CodeSigningInfo", v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    xpc_dictionary_set_value(v2, "OptionsDictionary", v4);
  }

  v5 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v8);
  __s = v5;
  v6 = v8;
  if (!v5)
  {
    if (v8)
    {
      v7 = *v8;
    }

    else
    {
      v7 = 1;
    }

LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) = v7;
    container_error_free(v6);
    if (!v2)
    {
      return;
    }

    goto LABEL_14;
  }

  container_error_free(v8);
  xpc_release(v5);
  memset_s(&__s, 8uLL, 0, 8uLL);
  if (v2)
  {
LABEL_14:
    xpc_release(v2);
    memset_s(&v9, 8uLL, 0, 8uLL);
  }
}

uint64_t container_delete_with_class_and_identifier_for_current_user(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_delete_with_class_and_identifier_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_delete_with_class_and_identifier_for_current_user_block_invoke;
  block[3] = &unk_1E86AEEE8;
  block[6] = a2;
  block[7] = a1;
  v12 = a3;
  block[4] = a4;
  block[5] = &v13;
  os_activity_apply(v8, block);
  os_release(v8);
  container_log_error("container_delete_with_class_and_identifier_for_current_user", gClientFaultLoggingEnabled, v14[3]);
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __container_delete_with_class_and_identifier_for_current_user_block_invoke(uint64_t a1)
{
  v14 = 0;
  __s = 0;
  v13 = 0;
  if (!*(a1 + 48))
  {
    v5 = 0;
    v2 = 0;
    v6 = 0;
    v7 = *(*(a1 + 40) + 8);
    v8 = 18;
LABEL_7:
    *(v7 + 24) = v8;
    goto LABEL_17;
  }

  if ((*(a1 + 56) - 1) >= 0xE)
  {
    v5 = 0;
    v2 = 0;
    v6 = 0;
    v7 = *(*(a1 + 40) + 8);
    v8 = 20;
    goto LABEL_7;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v14 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0xAuLL);
  xpc_dictionary_set_string(v2, "Identifier", *(a1 + 48));
  xpc_dictionary_set_uint64(v2, "ContainerClass", *(a1 + 56));
  xpc_dictionary_set_BOOL(v2, "Transient", *(a1 + 64));
  v3 = *(a1 + 56);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v4 = 1;
  }

  else
  {
    v9 = v3 - 1;
    if (v9 > 0xD)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_1DF2B94B0[v9];
    }
  }

  v10 = container_xpc_send_sync_message(v4, 0, v2, 0, 0, 0, &v13);
  __s = v10;
  if (v10)
  {
    v6 = v10;
    _container_async_reclaim_disk_space(*(a1 + 32));
    v5 = v13;
  }

  else
  {
    v5 = v13;
    if (v13)
    {
      v11 = *v13;
    }

    else
    {
      v11 = 1;
    }

    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = v11;
  }

LABEL_17:
  container_error_free(v5);
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }

  if (v6)
  {
    xpc_release(v6);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v2)
  {
    xpc_release(v2);
    memset_s(&v14, 8uLL, 0, 8uLL);
  }
}

uint64_t container_delete(uint64_t a1, uint64_t a2)
{
  if (a1 && (uuid = container_object_get_uuid(a1), !uuid_is_null(uuid)) && container_object_get_identifier(a1) && container_object_get_class(a1) - 1 < 0xE)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 1;
    v7 = _os_activity_create(&dword_1DF28A000, "container_delete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_delete_block_invoke;
    block[3] = &unk_1E86AEF10;
    block[5] = &v9;
    block[6] = a1;
    block[4] = a2;
    os_activity_apply(v7, block);
    os_release(v7);
    container_log_error("container_delete", gClientFaultLoggingEnabled, v10[3]);
    v5 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 11;
    (*(a2 + 16))(a2, 11);
  }

  return v5;
}

uint64_t __container_delete_block_invoke(uint64_t *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a1[6];
  result = container_delete_array_of_containers(v4, 1, a1[4]);
  *(*(a1[5] + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_delete_array_of_containers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_delete_array_of_containers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_delete_array_of_containers_block_invoke;
  v9[3] = &unk_1E86AEF38;
  v9[6] = a1;
  v9[7] = a2;
  v9[4] = a3;
  v9[5] = &v10;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_delete_array_of_containers", gClientFaultLoggingEnabled, v11[3]);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __container_delete_array_of_containers_block_invoke(uint64_t *a1)
{
  v5 = 0;
  v6 = 0;
  v2 = container_operation_delete_array(a1[6], a1[7], 0, &v5, &v6);
  if (!v2)
  {
    if (v6)
    {
      v3 = *v6;
    }

    else
    {
      v3 = 1;
    }

    *(*(a1[5] + 8) + 24) = v3;
  }

  if (*(*(a1[5] + 8) + 24) != 1 || (_container_async_reclaim_disk_space(a1[4]), *(*(a1[5] + 8) + 24) != 1))
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  container_free_array_of_containers(v2, v5);
  container_error_free(v6);
}

uint64_t container_set_info_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_set_info_value", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_set_info_value_block_invoke;
  v9[3] = &unk_1E86AEF60;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_set_info_value", gClientFaultLoggingEnabled, v11[3]);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __container_set_info_value_block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = *(a1 + 40);
  if (!v2 || (uuid = container_object_get_uuid(*(a1 + 40)), uuid_is_null(uuid)) || !container_object_get_identifier(v2) || container_object_get_class(v2) - 1 > 0xD)
  {
    v4 = 11;
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = v4;
    return;
  }

  if (!*(a1 + 48))
  {
    v4 = 38;
    goto LABEL_4;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  __s = v5;
  container_xpc_encode_container_object(v5, *(a1 + 40), 0);
  v6 = xpc_dictionary_create(0, 0, 0);
  v14 = v6;
  xpc_dictionary_set_uint64(v6, "Command", 5uLL);
  xpc_dictionary_set_value(v6, "Container", v5);
  xpc_dictionary_set_string(v6, "Key", *(a1 + 48));
  xpc_dictionary_set_value(v6, "Value", *(a1 + 56));
  v7 = *(a1 + 40);
  LODWORD(v15) = 0;
  v8 = container_disposition(v7, &v15);
  v9 = container_xpc_send_sync_message(v8, 0, v6, 1, v15, 0, &v12);
  v15 = v9;
  v10 = v12;
  if (!v9)
  {
    if (v12)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v11;
  }

  container_error_free(v10);
  if (v5)
  {
    xpc_release(v5);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v9)
  {
    xpc_release(v9);
    memset_s(&v15, 8uLL, 0, 8uLL);
  }

  if (v6)
  {
    xpc_release(v6);
    memset_s(&v14, 8uLL, 0, 8uLL);
  }
}

uint64_t container_copy_info_value_for_key(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_copy_info_value_for_key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_copy_info_value_for_key_block_invoke;
  v11[3] = &unk_1E86AEF88;
  v11[6] = a1;
  v11[7] = a2;
  v11[4] = &v12;
  v11[5] = &v16;
  os_activity_apply(v6, v11);
  os_release(v6);
  v7 = v13;
  v8 = v13[3];
  if (a3 && v8 != 1)
  {
    *a3 = v8;
    v8 = v7[3];
  }

  container_log_error("container_copy_info_value_for_key", gClientFaultLoggingEnabled, v8);
  v9 = v17[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void __container_copy_info_value_for_key_block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = *(a1 + 48);
  if (!v2 || (uuid = container_object_get_uuid(*(a1 + 48)), uuid_is_null(uuid)) || !container_object_get_identifier(v2) || container_object_get_class(v2) - 1 > 0xD)
  {
    v4 = 11;
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = v4;

    container_error_free(0);
    return;
  }

  if (!*(a1 + 56))
  {
    v4 = 38;
    goto LABEL_4;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  __s = v5;
  container_xpc_encode_container_object(v5, *(a1 + 48), 0);
  v6 = xpc_dictionary_create(0, 0, 0);
  v15 = v6;
  xpc_dictionary_set_uint64(v6, "Command", 6uLL);
  xpc_dictionary_set_value(v6, "Container", v5);
  xpc_dictionary_set_string(v6, "Key", *(a1 + 56));
  v7 = *(a1 + 48);
  LODWORD(v16) = 0;
  v8 = container_disposition(v7, &v16);
  v9 = container_xpc_send_sync_message(v8, 0, v6, 1, v16, 0, &v13);
  v10 = v9;
  v16 = v9;
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_value(v9, "ReplyInfoValue");
    v11 = *(*(*(a1 + 40) + 8) + 24);
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 53;
    }
  }

  else
  {
    if (v13)
    {
      v12 = *v13;
    }

    else
    {
      v12 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v12;
  }

  container_error_free(v13);
  if (v5)
  {
    xpc_release(v5);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v10)
  {
    xpc_release(v10);
    memset_s(&v16, 8uLL, 0, 8uLL);
  }

  if (v6)
  {
    xpc_release(v6);
    memset_s(&v15, 8uLL, 0, 8uLL);
  }
}

uint64_t container_recreate_structure(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_recreate_structure", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_recreate_structure_block_invoke;
  v5[3] = &unk_1E86AEFB0;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_error("container_recreate_structure", gClientFaultLoggingEnabled, v7[3]);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __container_recreate_structure_block_invoke(uint64_t a1)
{
  v11 = 0;
  v2 = *(a1 + 40);
  if (v2 && (uuid = container_object_get_uuid(*(a1 + 40)), !uuid_is_null(uuid)) && container_object_get_identifier(v2) && container_object_get_class(v2) - 1 < 0xE)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    __s = v4;
    container_xpc_encode_container_object(v4, *(a1 + 40), 0);
    v5 = xpc_dictionary_create(0, 0, 0);
    v13 = v5;
    xpc_dictionary_set_uint64(v5, "Command", 8uLL);
    xpc_dictionary_set_value(v5, "Container", v4);
    v6 = *(a1 + 40);
    LODWORD(v14) = 0;
    v7 = container_disposition(v6, &v14);
    v8 = container_xpc_send_sync_message(v7, 0, v5, 1, v14, 0, &v11);
    v14 = v8;
    v9 = v11;
    if (!v8)
    {
      if (v11)
      {
        v10 = *v11;
      }

      else
      {
        v10 = 1;
      }

      *(*(*(a1 + 32) + 8) + 24) = v10;
    }

    container_error_free(v9);
    if (v4)
    {
      xpc_release(v4);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v8)
    {
      xpc_release(v8);
      memset_s(&v14, 8uLL, 0, 8uLL);
    }

    if (v5)
    {
      xpc_release(v5);
      memset_s(&v13, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 11;
  }
}

uint64_t container_regenerate_uuid(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_regenerate_uuid", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_regenerate_uuid_block_invoke;
  v5[3] = &unk_1E86AEFD8;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_error("container_regenerate_uuid", gClientFaultLoggingEnabled, v7[3]);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __container_regenerate_uuid_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v16 = 0;
  __s = 0;
  v2 = *(a1 + 40);
  if (!v2 || (uuid = container_object_get_uuid(*(a1 + 40)), uuid_is_null(uuid)) || !container_object_get_identifier(v2) || container_object_get_class(v2) - 1 >= 0xE)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 11;
    goto LABEL_4;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  __s = v6;
  container_xpc_encode_container_object(v6, *(a1 + 40), 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v18 = v4;
  xpc_dictionary_set_uint64(v4, "Command", 9uLL);
  xpc_dictionary_set_value(v4, "Container", v6);
  v9 = *(a1 + 40);
  *buf = 0;
  v10 = container_disposition(v9, buf);
  v11 = container_xpc_send_sync_message(v10, 0, v4, 1, *buf, 0, &v16);
  v19 = v11;
  if (!v11)
  {
    if (v16)
    {
      v14 = *v16;
    }

    else
    {
      v14 = 1;
    }

    v5 = 0;
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = v14;
    goto LABEL_4;
  }

  v5 = v11;
  v7 = container_xpc_decode_container_object(v11, (*(*(a1 + 32) + 8) + 24));
  v12 = MEMORY[0x1E12D2400](v5);
  v15 = v12;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v13 = qword_1ED452B30;
  if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *buf = 136315394;
  v21 = "container_error_t container_regenerate_uuid(container_object_t _Nonnull)_block_invoke";
  v22 = 2080;
  v23 = v12;
  _os_log_debug_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_DEBUG, "Updated container during %s: %s", buf, 0x16u);
  if (v12)
  {
LABEL_18:
    free(v12);
    memset_s(&v15, 8uLL, 0, 8uLL);
  }

LABEL_19:
  if (v7)
  {
    container_update_with_container(*(a1 + 40), v7);
  }

LABEL_4:
  container_error_free(v16);
  container_object_free(v7);
  if (v6)
  {
    xpc_release(v6);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v5)
  {
    xpc_release(v5);
    memset_s(&v19, 8uLL, 0, 8uLL);
  }

  if (v4)
  {
    xpc_release(v4);
    memset_s(&v18, 8uLL, 0, 8uLL);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t container_process_restored_container(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_process_restored_container", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_process_restored_container_block_invoke;
  v5[3] = &unk_1E86AF000;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_error("container_process_restored_container", gClientFaultLoggingEnabled, v7[3]);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __container_process_restored_container_block_invoke(uint64_t a1)
{
  v11 = 0;
  v2 = *(a1 + 40);
  if (v2 && (uuid = container_object_get_uuid(*(a1 + 40)), !uuid_is_null(uuid)) && container_object_get_identifier(v2) && container_object_get_class(v2) - 1 < 0xE)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    __s = v4;
    container_xpc_encode_container_object(v4, *(a1 + 40), 0);
    v5 = xpc_dictionary_create(0, 0, 0);
    v13 = v5;
    xpc_dictionary_set_uint64(v5, "Command", 0x16uLL);
    xpc_dictionary_set_value(v5, "Container", v4);
    v6 = *(a1 + 40);
    LODWORD(v14) = 0;
    v7 = container_disposition(v6, &v14);
    v8 = container_xpc_send_sync_message(v7, 0, v5, 1, v14, 0, &v11);
    v14 = v8;
    v9 = v11;
    if (!v8)
    {
      if (v11)
      {
        v10 = *v11;
      }

      else
      {
        v10 = 1;
      }

      *(*(*(a1 + 32) + 8) + 24) = v10;
    }

    container_error_free(v9);
    if (v4)
    {
      xpc_release(v4);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v8)
    {
      xpc_release(v8);
      memset_s(&v14, 8uLL, 0, 8uLL);
    }

    if (v5)
    {
      xpc_release(v5);
      memset_s(&v13, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 11;
  }
}

uint64_t container_disk_usage(uint64_t a1, uint64_t *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_disk_usage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_disk_usage_block_invoke;
  block[3] = &unk_1E86AF028;
  block[5] = &v13;
  block[6] = a1;
  block[4] = &v9;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v10[3];
  if (a2)
  {
    *a2 = v5;
  }

  container_log_error("container_disk_usage", gClientFaultLoggingEnabled, v5);
  v6 = v14[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void __container_disk_usage_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v2 = *(a1 + 48);
  if (v2 && (uuid = container_object_get_uuid(*(a1 + 48)), !uuid_is_null(uuid)) && container_object_get_identifier(v2) && container_object_get_class(v2) - 1 < 0xE)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = container_object_get_class(*(a1 + 48));
      identifier = container_object_get_identifier(*(a1 + 48));
      *buf = 134218243;
      *&buf[4] = v6;
      v22 = 2081;
      v23 = identifier;
      _os_log_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_DEFAULT, "Requesting disk usage; class = %llu, identifier = %{private}s", buf, 0x16u);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    __s = v8;
    container_xpc_encode_container_object(v8, *(a1 + 48), 0);
    v9 = xpc_dictionary_create(0, 0, 0);
    v20 = v9;
    xpc_dictionary_set_uint64(v9, "Command", 0x17uLL);
    xpc_dictionary_set_value(v9, "Container", v8);
    v17 = 0;
    v10 = container_disposition(*(a1 + 48), &v17);
    v11 = container_xpc_send_sync_message(v10, 1, v9, 1, v17, 0, &v18);
    v12 = v11;
    *buf = v11;
    if (v11)
    {
      uint64 = xpc_dictionary_get_uint64(v11, "ReplyDiskUsage");
      v14 = 40;
      v15 = v18;
    }

    else
    {
      v15 = v18;
      if (v18)
      {
        uint64 = *v18;
      }

      else
      {
        uint64 = 1;
      }

      v14 = 32;
    }

    *(*(*(a1 + v14) + 8) + 24) = uint64;
    container_error_free(v15);
    if (v8)
    {
      xpc_release(v8);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v12)
    {
      xpc_release(v12);
      memset_s(buf, 8uLL, 0, 8uLL);
    }

    if (v9)
    {
      xpc_release(v9);
      memset_s(&v20, 8uLL, 0, 8uLL);
    }

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 11;
    v4 = *MEMORY[0x1E69E9840];

    container_error_free(0);
  }
}

uint64_t container_delete_all_data_container_content_for_current_user(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_delete_all_data_container_content_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_delete_all_data_container_content_for_current_user_block_invoke;
  v5[3] = &unk_1E86AF050;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_error("container_delete_all_data_container_content_for_current_user", gClientFaultLoggingEnabled, v7[3]);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __container_delete_all_data_container_content_for_current_user_block_invoke(uint64_t a1)
{
  v7 = 0;
  __s = 0;
  v6 = 0;
  if (!*(a1 + 40))
  {
    v2 = 0;
    v4 = 0;
    v5 = 18;
    goto LABEL_9;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v7 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0xBuLL);
  xpc_dictionary_set_string(v2, "Identifier", *(a1 + 40));
  v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v6);
  __s = v3;
  v4 = v6;
  if (!v3)
  {
    if (v6)
    {
      v5 = *v6;
    }

    else
    {
      v5 = 1;
    }

LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = v5;
    container_error_free(v4);
    if (!v2)
    {
      return;
    }

    goto LABEL_10;
  }

  container_error_free(v6);
  xpc_release(v3);
  memset_s(&__s, 8uLL, 0, 8uLL);
  if (v2)
  {
LABEL_10:
    xpc_release(v2);
    memset_s(&v7, 8uLL, 0, 8uLL);
  }
}

uint64_t container_delete_all_container_content(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_delete_all_container_content", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_delete_all_container_content_block_invoke;
  v5[3] = &unk_1E86AF078;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_error("container_delete_all_container_content", gClientFaultLoggingEnabled, v7[3]);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __container_delete_all_container_content_block_invoke(uint64_t a1)
{
  __s = 0;
  v14 = 0;
  v12 = 0;
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_4;
  }

  uuid = container_object_get_uuid(*(a1 + 40));
  if (uuid_is_null(uuid))
  {
    goto LABEL_3;
  }

  identifier = container_object_get_identifier(v2);
  if (!identifier)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (container_object_get_class(v2) - 1 > 0xD)
  {
LABEL_3:
    v2 = 0;
LABEL_4:
    identifier = 0;
LABEL_5:
    v5 = 11;
    goto LABEL_6;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  __s = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0xCuLL);
  if (container_object_get_persona_unique_string(*(a1 + 40)))
  {
    persona_unique_string = container_object_get_persona_unique_string(*(a1 + 40));
    xpc_dictionary_set_string(v2, "PersonaUniqueString", persona_unique_string);
  }

  v7 = container_object_get_identifier(*(a1 + 40));
  xpc_dictionary_set_string(v2, "Identifier", v7);
  v8 = container_object_get_class(*(a1 + 40));
  xpc_dictionary_set_uint64(v2, "ContainerClass", v8);
  v9 = *(a1 + 40);
  v15 = 0;
  v10 = container_disposition(v9, &v15);
  v11 = container_xpc_send_sync_message(v10, 0, v2, 1, v15, 0, &v12);
  v14 = v11;
  identifier = v12;
  if (!v11)
  {
    if (v12)
    {
      v5 = *v12;
    }

    else
    {
      v5 = 1;
    }

LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = v5;
    container_error_free(identifier);
    if (!v2)
    {
      return;
    }

    goto LABEL_7;
  }

  container_error_free(v12);
  xpc_release(v11);
  memset_s(&v14, 8uLL, 0, 8uLL);
  if (v2)
  {
LABEL_7:
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }
}

uint64_t container_copy_code_signing_info_for_identifier(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_copy_code_signing_info_for_identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_copy_code_signing_info_for_identifier_block_invoke;
  block[3] = &unk_1E86AF0C8;
  block[5] = &v14;
  block[6] = a1;
  block[4] = &v10;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_copy_code_signing_info_for_identifier", gClientFaultLoggingEnabled, v6);
  v7 = v15[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __container_copy_code_signing_info_for_identifier_block_invoke(uint64_t a1)
{
  v9 = 0;
  __s = 0;
  v8 = 0;
  if (!*(a1 + 48))
  {
    v6 = 0;
    v2 = 0;
    v7 = 18;
    goto LABEL_12;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v9 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x13uLL);
  xpc_dictionary_set_string(v2, "Identifier", *(a1 + 48));
  v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v8);
  __s = v3;
  if (!v3)
  {
    v6 = v8;
    if (v8)
    {
      v7 = *v8;
    }

    else
    {
      v7 = 1;
    }

LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) = v7;
    container_error_free(v6);
    if (!v2)
    {
      return;
    }

    goto LABEL_13;
  }

  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_value(v3, "ReplyInfoDictionary");
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 53;
  }

  container_error_free(v8);
  xpc_release(v4);
  memset_s(&__s, 8uLL, 0, 8uLL);
  if (v2)
  {
LABEL_13:
    xpc_release(v2);
    memset_s(&v9, 8uLL, 0, 8uLL);
  }
}

uint64_t container_invalidate_code_signing_cache(uint64_t *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_invalidate_code_signing_cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_invalidate_code_signing_cache_block_invoke;
  v7[3] = &unk_1E86AF0F0;
  v7[4] = &v8;
  v7[5] = &v12;
  os_activity_apply(v2, v7);
  os_release(v2);
  v3 = v9;
  v4 = v9[3];
  if (a1 && v4 != 1)
  {
    *a1 = v4;
    v4 = v3[3];
  }

  container_log_error("container_invalidate_code_signing_cache", gClientFaultLoggingEnabled, v4);
  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __container_invalidate_code_signing_cache_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v8 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x14uLL);
  v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v7);
  __s = v3;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    container_error_free(v7);
    xpc_release(v4);
    memset_s(&__s, 8uLL, 0, 8uLL);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  v5 = v7;
  if (v7)
  {
    v6 = *v7;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  container_error_free(v5);
  if (v2)
  {
LABEL_3:
    xpc_release(v2);
    memset_s(&v8, 8uLL, 0, 8uLL);
  }
}

void container_set_data_protection_for_current_user(uint64_t a1, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  v12 = _os_activity_create(&dword_1DF28A000, "container_set_data_protection_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __container_set_data_protection_for_current_user_block_invoke;
  v13[3] = &unk_1E86AF140;
  v13[5] = a2;
  v13[6] = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v13[4] = a6;
  os_activity_apply(v12, v13);
  os_release(v12);
}

void __container_set_data_protection_for_current_user_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    __s = v2;
    xpc_dictionary_set_uint64(v2, "Command", 0x15uLL);
    xpc_dictionary_set_string(v2, "Identifier", *(a1 + 40));
    xpc_dictionary_set_uint64(v2, "ContainerClass", *(a1 + 48));
    xpc_dictionary_set_int64(v2, "DataProtectionClass", *(a1 + 56));
    xpc_dictionary_set_BOOL(v2, "IsThirdParty", *(a1 + 60));
    xpc_dictionary_set_BOOL(v2, "RetryIfLocked", *(a1 + 61));
    v3 = *(a1 + 48);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      v4 = 1;
    }

    else
    {
      v6 = v3 - 1;
      if (v6 >= 0xE)
      {
        v4 = 0;
      }

      else
      {
        v4 = dword_1DF2B94B0[v6];
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __container_set_data_protection_for_current_user_block_invoke_2;
    v7[3] = &unk_1E86AF118;
    v7[4] = *(a1 + 32);
    container_xpc_send_message(v4, 3, v2, 0, 1, v7);
    if (v2)
    {
      xpc_release(v2);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  else if (*(a1 + 32))
  {
    container_log_error("container_set_data_protection_for_current_user", gClientFaultLoggingEnabled, 18);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

uint64_t __container_set_data_protection_for_current_user_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v5 = *a4;
  }

  container_log_ext_error("container_set_data_protection_for_current_user", gClientFaultLoggingEnabled, a4);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

uint64_t container_perform_data_migration(uint64_t *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_perform_data_migration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_perform_data_migration_block_invoke;
  v7[3] = &unk_1E86AF168;
  v7[4] = &v12;
  v7[5] = &v8;
  os_activity_apply(v2, v7);
  os_release(v2);
  v3 = v9;
  v4 = v9[3];
  if (a1 && v4 != 1)
  {
    *a1 = v4;
    v4 = v3[3];
  }

  container_log_error("container_perform_data_migration", gClientFaultLoggingEnabled, v4);
  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

BOOL __container_perform_data_migration_block_invoke(uint64_t a1)
{
  result = _common_perform_data_migration(0, (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL _common_perform_data_migration(int a1, uint64_t *a2)
{
  v11 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v12 = v4;
  if (a1)
  {
    v6 = 30;
  }

  else
  {
    v6 = 24;
  }

  if (a1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  xpc_dictionary_set_uint64(v4, "Command", v6);
  v8 = container_xpc_send_sync_message(v7, 0, v5, 1, 0, 0, &v11);
  __s = v8;
  if (!v8)
  {
    if (v11)
    {
      v9 = *v11;
    }

    else
    {
      v9 = 1;
    }

    container_error_free(v11);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  container_error_free(v11);
  xpc_release(v8);
  memset_s(&__s, 8uLL, 0, 8uLL);
  v9 = 1;
  if (v5)
  {
LABEL_9:
    xpc_release(v5);
    memset_s(&v12, 8uLL, 0, 8uLL);
  }

LABEL_10:
  if (a2 && v9 != 1)
  {
    *a2 = v9;
  }

  return v9 != 0;
}

uint64_t container_perform_data_migration_for_current_user(uint64_t *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_perform_data_migration_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_perform_data_migration_for_current_user_block_invoke;
  v7[3] = &unk_1E86AF190;
  v7[4] = &v12;
  v7[5] = &v8;
  os_activity_apply(v2, v7);
  os_release(v2);
  v3 = v9;
  v4 = v9[3];
  if (a1 && v4 != 1)
  {
    *a1 = v4;
    v4 = v3[3];
  }

  container_log_error("container_perform_data_migration_for_current_user", gClientFaultLoggingEnabled, v4);
  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

BOOL __container_perform_data_migration_for_current_user_block_invoke(uint64_t a1)
{
  result = _common_perform_data_migration(1, (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_stage_shared_system_content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_stage_shared_system_content", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_stage_shared_system_content_block_invoke;
  block[3] = &unk_1E86AF1B8;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[4] = &v14;
  block[5] = &v18;
  os_activity_apply(v8, block);
  os_release(v8);
  v9 = v15;
  v10 = v15[3];
  if (a4 && v10 != 1)
  {
    *a4 = v10;
    v10 = v9[3];
  }

  container_log_error("container_stage_shared_system_content", gClientFaultLoggingEnabled, v10);
  v11 = v19[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __container_stage_shared_system_content_block_invoke(uint64_t a1)
{
  v7 = 0;
  if (*(a1 + 48) && *(a1 + 56) && *(a1 + 64))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    __s = v2;
    xpc_dictionary_set_uint64(v2, "Command", 0x1AuLL);
    xpc_dictionary_set_string(v2, "Identifier", *(a1 + 48));
    xpc_dictionary_set_string(v2, "SourcePath", *(a1 + 56));
    xpc_dictionary_set_string(v2, "DestPath", *(a1 + 64));
    v3 = container_xpc_send_sync_message(1, 0, v2, 1, 0, 0, &v7);
    v4 = v3;
    v9 = v3;
    if (v3)
    {
      string = xpc_dictionary_get_string(v3, "ReplyPath");
      if (string)
      {
        *(*(*(a1 + 40) + 8) + 24) = strdup(string);
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = 53;
      }
    }

    else
    {
      if (v7)
      {
        v6 = *v7;
      }

      else
      {
        v6 = 1;
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
    }

    container_error_free(v7);
    if (v2)
    {
      xpc_release(v2);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v4)
    {
      xpc_release(v4);
      memset_s(&v9, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 38;

    container_error_free(0);
  }
}

uint64_t container_user_managed_assets_path(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_user_managed_assets_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_user_managed_assets_path_block_invoke;
  block[3] = &unk_1E86AF1E0;
  block[5] = &v10;
  block[6] = a1;
  block[4] = &v14;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_user_managed_assets_path", gClientFaultLoggingEnabled, v6);
  v7 = v15[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

char *__container_user_managed_assets_path_block_invoke(uint64_t a1)
{
  result = _common_user_managed_assets_path(*(a1 + 48), 0, 1, 0, (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

char *_common_user_managed_assets_path(char *a1, BOOL a2, _BOOL4 a3, BOOL *a4, uint64_t *a5)
{
  v20 = 0;
  __s = 0;
  v19 = 0;
  if (!a1)
  {
    v10 = 0;
    v17 = 18;
    goto LABEL_17;
  }

  v9 = a1;
  v10 = xpc_dictionary_create(0, 0, 0);
  v20 = v10;
  xpc_dictionary_set_uint64(v10, "Command", 0x1CuLL);
  xpc_dictionary_set_string(v10, "Identifier", v9);
  xpc_dictionary_set_BOOL(v10, "IsRelative", a2);
  xpc_dictionary_set_BOOL(v10, "CreateIfNecessary", a3);
  if (a4)
  {
    v11 = !a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = container_xpc_send_sync_message(2, 0, v10, v11, 0, 0, &v19);
  __s = v12;
  if (!v12)
  {
    a1 = v19;
    if (v19)
    {
      v17 = *v19;
    }

    else
    {
      v17 = 1;
    }

LABEL_17:
    container_error_free(a1);
    v16 = 0;
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    xpc_release(v10);
    memset_s(&v20, 8uLL, 0, 8uLL);
    goto LABEL_19;
  }

  v13 = v12;
  string = xpc_dictionary_get_string(v12, "ReplyPath");
  if (string)
  {
    v15 = string;
    if (a4)
    {
      *a4 = xpc_dictionary_get_BOOL(v13, "ReplyExisted");
    }

    v16 = strdup(v15);
    v17 = 1;
  }

  else
  {
    v16 = 0;
    v17 = 53;
  }

  container_error_free(v19);
  xpc_release(v13);
  memset_s(&__s, 8uLL, 0, 8uLL);
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (a5 && v17 != 1)
  {
    *a5 = v17;
  }

  return v16;
}

uint64_t container_user_managed_assets_relative_path(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_user_managed_assets_relative_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_user_managed_assets_relative_path_block_invoke;
  block[3] = &unk_1E86AF208;
  block[5] = &v10;
  block[6] = a1;
  block[4] = &v14;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_user_managed_assets_relative_path", gClientFaultLoggingEnabled, v6);
  v7 = v15[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

char *__container_user_managed_assets_relative_path_block_invoke(uint64_t a1)
{
  result = _common_user_managed_assets_path(*(a1 + 48), 1, 1, 0, (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_create_or_lookup_user_managed_assets_path(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_user_managed_assets_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_create_or_lookup_user_managed_assets_path_block_invoke;
  block[3] = &unk_1E86AF230;
  v14 = a2;
  block[6] = a1;
  block[7] = a3;
  block[4] = &v19;
  block[5] = &v15;
  os_activity_apply(v8, block);
  os_release(v8);
  v9 = v16;
  v10 = v16[3];
  if (a4 && v10 != 1)
  {
    *a4 = v10;
    v10 = v9[3];
  }

  container_log_error("container_create_or_lookup_user_managed_assets_path", gClientFaultLoggingEnabled, v10);
  v11 = v20[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

char *__container_create_or_lookup_user_managed_assets_path_block_invoke(uint64_t a1)
{
  result = _common_user_managed_assets_path(*(a1 + 48), 0, *(a1 + 64), *(a1 + 56), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_create_or_lookup_user_managed_assets_relative_path(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  v8 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_user_managed_assets_relative_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_create_or_lookup_user_managed_assets_relative_path_block_invoke;
  block[3] = &unk_1E86AF258;
  v14 = a2;
  block[6] = a1;
  block[7] = a3;
  block[4] = &v19;
  block[5] = &v15;
  os_activity_apply(v8, block);
  os_release(v8);
  v9 = v16;
  v10 = v16[3];
  if (a4 && v10 != 1)
  {
    *a4 = v10;
    v10 = v9[3];
  }

  container_log_error("container_create_or_lookup_user_managed_assets_relative_path", gClientFaultLoggingEnabled, v10);
  v11 = v20[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

char *__container_create_or_lookup_user_managed_assets_relative_path_block_invoke(uint64_t a1)
{
  result = _common_user_managed_assets_path(*(a1 + 48), 1, *(a1 + 64), *(a1 + 56), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_delete_user_managed_assets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_delete_user_managed_assets", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_delete_user_managed_assets_block_invoke;
  v9[3] = &unk_1E86AF280;
  v9[6] = a1;
  v9[7] = a2;
  v9[4] = a3;
  v9[5] = &v10;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_delete_user_managed_assets", gClientFaultLoggingEnabled, v11[3]);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __container_delete_user_managed_assets_block_invoke(uint64_t a1)
{
  v9 = 0;
  __s = 0;
  v8 = 0;
  if (*(a1 + 48))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v9 = v2;
    xpc_dictionary_set_uint64(v2, "Command", 0x1DuLL);
    xpc_dictionary_set_string(v2, "Identifier", *(a1 + 48));
    xpc_dictionary_set_string(v2, "SourcePath", *(a1 + 56));
    v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v8);
    __s = v3;
    if (v3)
    {
      v4 = v3;
      _container_async_reclaim_disk_space(*(a1 + 32));
      v5 = v8;
    }

    else
    {
      v5 = v8;
      if (v8)
      {
        v6 = *v8;
      }

      else
      {
        v6 = 1;
      }

      v4 = 0;
      *(*(*(a1 + 40) + 8) + 24) = v6;
    }
  }

  else
  {
    v5 = 0;
    v2 = 0;
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 18;
  }

  container_error_free(v5);
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  if (v4)
  {
    xpc_release(v4);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v2)
  {
    xpc_release(v2);
    memset_s(&v9, 8uLL, 0, 8uLL);
  }
}

uint64_t container_subdirectories_for_class(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_subdirectories_for_class", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_subdirectories_for_class_block_invoke;
  block[3] = &unk_1E86AF2A8;
  block[5] = &v14;
  block[6] = a1;
  block[4] = &v10;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_subdirectories_for_class", gClientFaultLoggingEnabled, v6);
  v7 = v15[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __container_subdirectories_for_class_block_invoke(void *a1)
{
  if ((a1[6] - 1) >= 0xE)
  {
    *(*(a1[4] + 8) + 24) = 20;
    return;
  }

  v2 = xpc_array_create(0, 0);
  v3 = a1[6];
  *(*(a1[5] + 8) + 24) = v2;
  if (v3 <= 0xE)
  {
    if (((1 << v3) & 0x1E54) != 0)
    {
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "Documents");
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "Library");
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "Library/Caches");
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "Library/Preferences");
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "tmp");
      v6 = a1[6];
      if (v6 > 0xB || ((1 << v6) & 0xED4) == 0)
      {
        return;
      }

      v4 = *(*(a1[5] + 8) + 24);
      v5 = "SystemData";
      goto LABEL_12;
    }

    if (((1 << v3) & 0x412A) != 0)
    {
      return;
    }

    if (((1 << v3) & 0x2080) != 0)
    {
      xpc_array_set_string(*(*(a1[5] + 8) + 24), 0xFFFFFFFFFFFFFFFFLL, "Library");
      v4 = *(*(a1[5] + 8) + 24);
      v5 = "Library/Caches";
LABEL_12:

      xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
      return;
    }
  }

  *(*(a1[4] + 8) + 24) = 70;
  v7 = *(*(a1[5] + 8) + 24);
  if (v7)
  {
    xpc_release(v7);
    v8 = (*(a1[5] + 8) + 24);

    memset_s(v8, 8uLL, 0, 8uLL);
  }
}

uint64_t container_copy_persona_unique_strings(uint64_t *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v2 = _os_activity_create(&dword_1DF28A000, "container_copy_persona_unique_strings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_copy_persona_unique_strings_block_invoke;
  v7[3] = &unk_1E86AF2D0;
  v7[4] = &v8;
  v7[5] = &v12;
  os_activity_apply(v2, v7);
  os_release(v2);
  v3 = v9;
  v4 = v9[3];
  if (a1 && v4 != 1)
  {
    *a1 = v4;
    v4 = v3[3];
  }

  container_log_error("container_copy_persona_unique_strings", gClientFaultLoggingEnabled, v4);
  v5 = v13[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __container_copy_persona_unique_strings_block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v10 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x20uLL);
  v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v9);
  __s = v3;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_value(v3, "ReplyPersonaUniqueStringsArray");
    v5 = MEMORY[0x1E12D2570](*(*(*(a1 + 40) + 8) + 24));
    v6 = *(*(a1 + 40) + 8);
    if (v5 == MEMORY[0x1E69E9E50])
    {
      xpc_retain(*(v6 + 24));
    }

    else
    {
      *(v6 + 24) = 0;
      *(*(*(a1 + 32) + 8) + 24) = 53;
    }

    container_error_free(v9);
    xpc_release(v4);
    memset_s(&__s, 8uLL, 0, 8uLL);
    if (v2)
    {
LABEL_8:
      xpc_release(v2);
      memset_s(&v10, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v7 = v9;
    if (v9)
    {
      v8 = *v9;
    }

    else
    {
      v8 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    container_error_free(v7);
    if (v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t container_flush_container_cache(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_flush_container_cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_flush_container_cache_block_invoke;
  block[3] = &unk_1E86AF2F8;
  v8 = a2;
  block[4] = &v9;
  block[5] = a1;
  os_activity_apply(v4, block);
  os_release(v4);
  container_log_error("container_flush_container_cache", gClientFaultLoggingEnabled, v10[3]);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __container_flush_container_cache_block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v10 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x21uLL);
  xpc_dictionary_set_uint64(v2, "ContainerClass", *(a1 + 40));
  xpc_dictionary_set_BOOL(v2, "Transient", *(a1 + 48));
  v3 = *(a1 + 40);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v4 = 1;
  }

  else
  {
    v5 = v3 - 1;
    if (v5 > 0xD)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_1DF2B94B0[v5];
    }
  }

  v6 = container_xpc_send_sync_message(v4, 0, v2, 1, 0, 0, &v9);
  __s = v6;
  v7 = v9;
  if (v6)
  {
    container_error_free(v9);
    xpc_release(v6);
    memset_s(&__s, 8uLL, 0, 8uLL);
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v8 = *v9;
  }

  else
  {
    v8 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  container_error_free(v7);
  if (v2)
  {
LABEL_8:
    xpc_release(v2);
    memset_s(&v10, 8uLL, 0, 8uLL);
  }
}

uint64_t container_flush_persona_cache()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 1;
  v0 = _os_activity_create(&dword_1DF28A000, "container_flush_persona_cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_flush_persona_cache_block_invoke;
  block[3] = &unk_1E86AF320;
  block[4] = &v4;
  os_activity_apply(v0, block);
  os_release(v0);
  container_log_error("container_flush_persona_cache", gClientFaultLoggingEnabled, v5[3]);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __container_flush_persona_cache_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v7 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x22uLL);
  v3 = container_xpc_send_sync_message(2, 0, v2, 1, 0, 0, &v6);
  __s = v3;
  v4 = v6;
  if (v3)
  {
    container_error_free(v6);
    xpc_release(v3);
    memset_s(&__s, 8uLL, 0, 8uLL);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v6)
  {
    v5 = *v6;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  container_error_free(v4);
  if (v2)
  {
LABEL_3:
    xpc_release(v2);
    memset_s(&v7, 8uLL, 0, 8uLL);
  }
}

void container_perform_with_client_context(uint64_t a1, uint64_t a2)
{
  v4 = _os_activity_create(&dword_1DF28A000, "container_perform_with_client_context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_perform_with_client_context_block_invoke;
  v5[3] = &unk_1E86AF348;
  v5[4] = a2;
  v5[5] = a1;
  os_activity_apply(v4, v5);
  os_release(v4);
}

uint64_t container_copy_from_path(char *a1, char **a2, uint64_t *a3)
{
  v4 = &v25;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v5 = &v21;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a1)
  {
    getpid();
    v8 = *MEMORY[0x1E69E9BD0];
    v9 = sandbox_check();
    if (v9)
    {
      v4 = v26;
      v10 = v26[3];
    }

    else
    {
      v10 = container_paths_copy_container_from_path(a1, a2, v22 + 3);
      v4 = v26;
      v26[3] = v10;
    }

    v5 = v22;
    if (!v10 && ((v12 = v22[3]) == 0 ? (v13 = 0) : (v13 = v12[6]), !v9 ? (v14 = v13 == 13) : (v14 = 1), !v14 ? (v15 = v13 == 1) : (v15 = 1), v15))
    {
      container_error_free(v12);
      v22[3] = 0;
      v16 = _os_activity_create(&dword_1DF28A000, "container_copy_from_path", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_copy_from_path_block_invoke;
      block[3] = &unk_1E86AF370;
      block[4] = &v21;
      block[5] = &v25;
      block[6] = a1;
      block[7] = a2;
      os_activity_apply(v16, block);
      os_release(v16);
      v4 = v26;
      v11 = 1;
      v5 = v22;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 38;
  }

  v17 = v5[3];
  if (a3 && !v4[3])
  {
    if (v17)
    {
      v11 = *v17;
    }

    *a3 = v11;
  }

  container_error_free(v17);
  v18 = v26[3];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v18;
}

uint64_t __container_copy_from_path_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v6 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x2CuLL);
  xpc_dictionary_set_string(v2, "Path", *(a1 + 48));
  result = container_xpc_send_sync_message(3, 0, v2, 1, 0, 0, *(*(a1 + 32) + 8) + 24);
  v4 = result;
  __s = result;
  if (result)
  {
    result = container_xpc_decode_container_object(result, 0);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      result = xpc_dictionary_get_string(v4, "ReplyRelativePath");
      if (result)
      {
        v5 = *(a1 + 56);
        if (v5)
        {
          result = strndup(result, 0x400uLL);
          *v5 = result;
        }
      }
    }
  }

  if (v2)
  {
    xpc_release(v2);
    result = memset_s(&v6, 8uLL, 0, 8uLL);
  }

  if (v4)
  {
    xpc_release(v4);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t container_acquire_sandbox_extension(uint64_t a1, char a2, uint64_t *a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_acquire_sandbox_extension", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_acquire_sandbox_extension_block_invoke;
  v11[3] = &unk_1E86AF398;
  v11[5] = &v17;
  v11[6] = a1;
  v12 = a2;
  v11[4] = &v13;
  os_activity_apply(v6, v11);
  os_release(v6);
  v7 = v14;
  v8 = v14[3];
  if (a3 && v8 != 1)
  {
    *a3 = v8;
    v8 = v7[3];
  }

  container_log_error("container_acquire_sandbox_extension", gClientFaultLoggingEnabled, v8);
  v9 = *(v18 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

void __container_acquire_sandbox_extension_block_invoke(uint64_t a1)
{
  v16 = 0;
  v2 = *(a1 + 48);
  if (!v2 || (uuid = container_object_get_uuid(*(a1 + 48)), uuid_is_null(uuid)) || !container_object_get_identifier(v2) || container_object_get_class(v2) - 1 >= 0xE)
  {
    *(*(*(a1 + 32) + 8) + 24) = 11;
LABEL_4:

    container_error_free(0);
    return;
  }

  v4 = *(a1 + 48);
  v5 = *(v4 + 88);
  if (!v5 || (v6 = *(v5 + 128)) == 0)
  {
    string = *(v4 + 48);
    if (!string)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  string = xpc_array_get_string(v6, *(v4 + 96));
  if (string)
  {
LABEL_16:
    container_object_sandbox_extension_activate(*(a1 + 48), *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_4;
  }

LABEL_12:
  v8 = xpc_dictionary_create(string, 0, 0);
  __s = v8;
  container_xpc_encode_container_object(v8, *(a1 + 48), 0);
  v9 = xpc_dictionary_create(0, 0, 0);
  v18 = v9;
  xpc_dictionary_set_uint64(v9, "Command", 0x23uLL);
  xpc_dictionary_set_value(v9, "Container", v8);
  v10 = *(a1 + 48);
  LODWORD(v19) = 0;
  v11 = container_disposition(v10, &v19);
  v12 = container_xpc_send_sync_message(v11, 0, v9, 1, v19, 0, &v16);
  v13 = v12;
  v19 = v12;
  if (v12)
  {
    v14 = xpc_dictionary_get_string(v12, "ReplySandboxToken");
    if (v14)
    {
      container_object_set_sandbox_token(*(a1 + 48), v14);
      container_object_sandbox_extension_activate(*(a1 + 48), *(a1 + 56));
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    if (v16)
    {
      v15 = *v16;
    }

    else
    {
      v15 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v15;
  }

  container_error_free(v16);
  if (v8)
  {
    xpc_release(v8);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v9)
  {
    xpc_release(v9);
    memset_s(&v18, 8uLL, 0, 8uLL);
  }

  if (v13)
  {
    xpc_release(v13);
    memset_s(&v19, 8uLL, 0, 8uLL);
  }
}

uint64_t container_repair_user_data(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_repair_user_data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_repair_user_data_block_invoke;
  block[3] = &unk_1E86AF408;
  block[5] = &v14;
  block[6] = a1;
  block[4] = &v10;
  os_activity_apply(v4, block);
  os_release(v4);
  v5 = v11;
  v6 = v11[3];
  if (a2 && v6 != 1)
  {
    *a2 = v6;
    v6 = v5[3];
  }

  container_log_error("container_repair_user_data", gClientFaultLoggingEnabled, v6);
  v7 = *(v15 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __container_repair_user_data_block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v18 = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x25uLL);
  v3 = a1[6];
  if (v3)
  {
    xpc_dictionary_set_string(v2, "Path", v3);
  }

  v4 = geteuid();
  v5 = container_pwd_copy_user_home_path(v4, 1, 1, &v15);
  __s = v5;
  if (v5)
  {
    v6 = v5;
    v7 = container_sandbox_issue_custom_extension("com.apple.containermanagerd.home-repair", 0, v5);
    v16 = v7;
    if (v7)
    {
      xpc_dictionary_set_string(v2, "SandboxToken", v7);
      v8 = container_xpc_send_sync_message(1, 0, v2, 1, 0, 0, &v15);
      v19 = v8;
      if (v8)
      {
        v9 = v8;
        *(*(a1[5] + 8) + 24) = 1;
      }

      else
      {
        if (v15)
        {
          v13 = *v15;
        }

        else
        {
          v13 = 1;
        }

        v9 = 0;
        *(*(a1[4] + 8) + 24) = v13;
      }
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v12 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380675;
        v21 = v6;
        _os_log_error_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension to [%{private}s] for containermanagerd", buf, 0xCu);
      }

      v9 = 0;
      *(*(a1[4] + 8) + 24) = 90;
    }

    container_error_free(v15);
    free(v6);
    memset_s(&__s, 8uLL, 0, 8uLL);
    if (v7)
    {
      free(v7);
      memset_s(&v16, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v10 = v15;
    if (v15)
    {
      v11 = *v15;
    }

    else
    {
      v11 = 1;
    }

    *(*(a1[4] + 8) + 24) = v11;
    container_error_free(v10);
    v9 = 0;
  }

  if (v2)
  {
    xpc_release(v2);
    memset_s(&v18, 8uLL, 0, 8uLL);
  }

  if (v9)
  {
    xpc_release(v9);
    memset_s(&v19, 8uLL, 0, 8uLL);
  }

  v14 = *MEMORY[0x1E69E9840];
}