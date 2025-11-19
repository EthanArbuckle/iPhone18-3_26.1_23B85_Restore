void __container_system_group_path_for_identifier_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  active_platform = dyld_get_active_platform();
  v5 = _container_legacy_lookup(0xDuLL, v2, v3, active_platform, 1, 0, 0, (*(a1[4] + 8) + 24));
  v6 = v5;
  if (v5)
  {
    path = container_object_get_path(v5);
    if (path)
    {
      *(*(a1[5] + 8) + 24) = strndup(path, 0x400uLL);
    }

    else
    {
      *(*(a1[4] + 8) + 24) = 53;
    }
  }

  container_object_free(v6);
  v8 = *(*(a1[4] + 8) + 24);
  if (v8 != 1)
  {
    v9 = a1[8];
    if (v9)
    {
      *v9 = v8;
      v8 = *(*(a1[4] + 8) + 24);
    }
  }

  v10 = gClientFaultLoggingEnabled;

  container_log_error("container_system_group_path_for_identifier", v10, v8);
}

uint64_t _container_legacy_lookup(unint64_t a1, const char *a2, const char *a3, int a4, int a5, int a6, _BYTE *a7, uint64_t *a8)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1 - 1 > 0xD)
  {
    v17 = 0;
    v20 = 0;
    v21 = 20;
    goto LABEL_32;
  }

  v14 = a2;
  if ((a1 & 0xE) == 0xC || a1 <= 8 && ((1 << a1) & 0x12A) != 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219523;
      *&buf[4] = a1;
      *&buf[12] = 2081;
      *&buf[14] = v14;
      *&buf[22] = 2081;
      *&buf[24] = a3;
      *&buf[32] = 1024;
      *&buf[34] = a5;
      *&buf[38] = 1024;
      *&buf[40] = a6;
      *&buf[44] = 1024;
      *&buf[46] = geteuid();
      *&buf[50] = 1024;
      LODWORD(v65) = getuid();
      _os_log_impl(&dword_1DF28A000, v16, OS_LOG_TYPE_DEFAULT, "Requesting container lookup; class = %llu, identifier = %{private}s, group_identifier = %{private}s, create = %d, temp = %d, euid = %u, uid = %u", buf, 0x38u);
    }
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    voucher_get_current_persona_originator_info();
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    voucher_get_current_persona_proximate_info();
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    v66 = 0u;
    v65 = 0u;
    memset(&buf[4], 0, 48);
    *buf = 2;
    current_persona = voucher_get_current_persona();
    if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
    {
      v33 = "<unknown>";
      v34 = "NOPERSONA";
      v14 = a2;
    }

    else
    {
      if ((*&buf[8] - 2) > 4)
      {
        v31 = "<unknown>";
      }

      else
      {
        v31 = (&off_1E86AF498)[*&buf[8] - 2];
      }

      v34 = v31;
      v14 = a2;
      v33 = &v67[4];
    }

    v35 = a7;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v32 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 67112451;
      v37 = current_persona;
      v38 = 2082;
      v39 = v34;
      v40 = 2082;
      v41 = v33;
      v42 = 1024;
      v43 = 0;
      v44 = 1024;
      v45 = 0;
      v46 = 1024;
      v47 = 0;
      v48 = 1024;
      v49 = 0;
      v50 = 2048;
      v51 = a1;
      v52 = 2081;
      v53 = v14;
      v54 = 2081;
      v55 = a3;
      v56 = 1024;
      v57 = a5;
      v58 = 1024;
      v59 = a6;
      v60 = 1024;
      v61 = geteuid();
      v62 = 1024;
      v63 = getuid();
      _os_log_impl(&dword_1DF28A000, v32, OS_LOG_TYPE_DEFAULT, "Requesting container lookup; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], class = %llu, identifier = %{private}s, group_identifier = %{private}s, create = %d, temp = %d, euid = %u, uid = %u", v36, 0x6Au);
    }

    a7 = v35;
  }

  v17 = container_query_create();
  container_query_set_class(v17, a1);
  container_query_set_transient(v17, a6);
  if (v14)
  {
    v18 = xpc_string_create(v14);
    *buf = v18;
    container_query_set_identifiers(v17, v18);
    if (v18)
    {
      xpc_release(v18);
      memset_s(buf, 8uLL, 0, 8uLL);
    }
  }

  if (a1 == 13 || a1 == 7)
  {
    if (a3)
    {
      v19 = a3;
    }

    else
    {
      if (container_codesign_get_current_identifier_onceToken != -1)
      {
        dispatch_once(&container_codesign_get_current_identifier_onceToken, &__block_literal_global);
      }

      v19 = container_codesign_get_current_identifier_identifier;
      if (!container_codesign_get_current_identifier_identifier)
      {
        goto LABEL_22;
      }
    }

    v22 = xpc_string_create(v19);
    *buf = v22;
    container_query_set_group_identifiers(v17, v22);
    if (v22)
    {
      xpc_release(v22);
      memset_s(buf, 8uLL, 0, 8uLL);
    }
  }

LABEL_22:
  container_query_operation_set_platform(v17, a4);
  if (a5)
  {
    v23 = 0x900000001;
  }

  else
  {
    v23 = 0x900000000;
  }

  container_query_operation_set_flags(v17, v23);
  _container_query_operation_set_private_flags(v17, 3);
  result_at_index = _container_query_get_result_at_index(v17, 0, 1);
  if (result_at_index)
  {
    v25 = result_at_index;
    is_new = container_object_is_new(result_at_index);
    container_object_sandbox_extension_activate(v25, 1);
    if (a7)
    {
      *a7 = is_new ^ 1;
    }

    v20 = container_copy_object(v25);
    v21 = 1;
  }

  else
  {
    v20 = 0;
    if (*v17)
    {
      v21 = **v17;
    }

    else
    {
      v21 = 21;
    }
  }

LABEL_32:
  container_query_free(v17);
  if (a8 && v21 != 1)
  {
    *a8 = v21;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t container_xpc_send_sync_message(int a1, void *a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __container_xpc_send_sync_message_block_invoke;
  v11[3] = &unk_1E86AE520;
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v11[5] = a6;
  v11[6] = a7;
  v11[4] = &v12;
  container_xpc_send_message(a1, a2, a3, a5, v8, v11);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void container_xpc_send_message(int a1, void *a2, xpc_object_t xdict, int a4, char a5, uint64_t a6)
{
  if (!xpc_dictionary_get_value(xdict, "ProxyForClient"))
  {
    if (_container_xpc_pthread_key_for_client_context_key)
    {
      v16 = pthread_getspecific(_container_xpc_pthread_key_for_client_context_key);
      if (v16)
      {
        container_xpc_encode_client_onto_message(xdict, v16);
      }
    }
  }

  v17 = a6;
  if (_outgoingPostprocessor)
  {
    (*(_outgoingPostprocessor + 16))();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3800000000;
  v22 = (a5 & 3) == 2;
  v23 = xmmword_1DF2B93B0;
  v24 = 6;
  v12 = xdict;
  v13 = a5;
  v14 = _outgoingSender;
  v15 = MEMORY[0x1E69E9820];
  do
  {
    v18[0] = v15;
    v18[1] = 0x40000000;
    v18[2] = __container_xpc_send_message_block_invoke;
    v18[3] = &unk_1E86AE4F8;
    v18[4] = v17;
    v18[5] = &v19;
    v14[2](v14, a1, a2, v12, a4, v13, v18);
  }

  while ((v20[3] & 1) != 0);
  _Block_object_dispose(&v19, 8);
}

os_log_t __container_log_handle_for_category_block_invoke()
{
  container_log_handle_for_category_logHandles = os_log_create("com.apple.containermanager", "unspecified");
  qword_1ED452B20 = os_log_create("com.apple.containermanager", "cache");
  qword_1ED452B28 = os_log_create("com.apple.containermanager", "sandbox");
  qword_1ED452B30 = os_log_create("com.apple.containermanager", "xpc");
  qword_1ED452B38 = os_log_create("com.apple.containermanager", "query");
  qword_1ED452B40 = os_log_create("com.apple.containermanager", "paths");
  qword_1ED452B48 = os_log_create("com.apple.containermanager", "locking");
  qword_1ED452B50 = os_log_create("com.apple.containermanager", "database");
  qword_1ED452B58 = os_log_create("com.apple.containermanager", "upcall");
  qword_1ED452B60 = os_log_create("com.apple.containermanager", "lifecycle");
  qword_1ED452B68 = os_log_create("com.apple.containermanager", "fs");
  qword_1ED452B70 = os_log_create("com.apple.containermanager", "startup");
  qword_1ED452B78 = os_log_create("com.apple.containermanager", "test");
  qword_1ED452B80 = os_log_create("com.apple.containermanager", "metadata");
  qword_1ED452B88 = os_log_create("com.apple.containermanager", "codesignmapping");
  qword_1ED452B90 = os_log_create("com.apple.containermanager", "longterm");
  qword_1ED452B98 = os_log_create("com.apple.containermanager", "schema");
  qword_1ED452BA0 = os_log_create("com.apple.containermanager", "codesign");
  qword_1ED452BA8 = os_log_create("com.apple.containermanager", "repair");
  qword_1ED452BB0 = os_log_create("com.apple.containermanager", "disk");
  qword_1ED452BB8 = os_log_create("com.apple.containermanager", "persona");
  qword_1ED452BC0 = os_log_create("com.apple.containermanager", "command");
  qword_1ED452BC8 = os_log_create("com.apple.containermanager", "telemetry");
  result = os_log_create("com.apple.containermanager", "notify");
  qword_1ED452BD0 = result;
  return result;
}

xpc_object_t __container_create_or_lookup_app_group_path_by_app_group_identifier_block_invoke_2()
{
  result = xpc_dictionary_create(0, 0, 0);
  CONTAINER_PERSONA_CURRENT_block_invoke_cache = result;
  return result;
}

void *container_query_create()
{
  v0 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10B0040E5FFA4F8uLL);
  v0[1] = _os_activity_create(&dword_1DF28A000, "container_query_t", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 42) = -1;
  *(v0 + 43) = voucher_get_current_persona();
  return v0;
}

void container_query_set_class(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
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
        v10 = 136315138;
        v11 = "container_query_set_class";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v10, 0xCu);
      }

      v4 = a1;
      v5 = 111;
LABEL_19:
      _container_query_set_usage_error(v4, v5);
      goto LABEL_20;
    }

    if ((a2 - 1) >= 0xE)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v8 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        v10 = 136315138;
        v11 = "container_query_set_class";
        _os_log_fault_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: invalid container class", &v10, 0xCu);
      }

      v4 = a1;
      v5 = 20;
      goto LABEL_19;
    }

    _container_query_log_if_error(*a1, "container_query_set_class");
    a1[4] = a2;
    a1[2] |= 2uLL;
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
      v10 = 136315138;
      v11 = "container_query_set_class";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v10, 0xCu);
    }
  }

LABEL_20:
  v9 = *MEMORY[0x1E69E9840];
}

void _container_query_log_if_error(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = container_error_copy_unlocalized_description(a1);
    __s = v3;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B38;
    if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = a2;
      v9 = 2080;
      v10 = v3;
      _os_log_error_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_ERROR, "WARNING: Calling %s with a query that has a previous error: %s", buf, 0x16u);
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v3)
    {
LABEL_6:
      free(v3);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
}

void container_query_set_transient(uint64_t a1, char a2)
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
        v8 = "container_query_set_transient";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_set_transient");
      *(a1 + 64) = a2;
      *(a1 + 16) |= 0x20uLL;
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
      v8 = "container_query_set_transient";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL _container_query_execute(uint64_t a1, uint64_t a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v69 = 0;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_91;
  }

  if (*(a1 + 184) == 1)
  {
    *(a1 + 96) |= 0x1000000000uLL;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v70 = v4;
  xpc_dictionary_set_uint64(v4, "Command", 0x27uLL);
  xpc_dictionary_set_uint64(v4, "Flags", *(a1 + 96));
  xpc_dictionary_set_uint64(v4, "PrivateFlags", *(a1 + 104));
  xpc_dictionary_set_uint64(v4, "Platform", *(a1 + 88));
  if ((*(a1 + 104) & 8) != 0)
  {
    xpc_dictionary_set_uint64(v4, "Part", *(a1 + 184));
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    xpc_dictionary_set_string(v4, "SystemDataDomain", v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    container_xpc_encode_client_onto_message(v4, v6);
  }

  xpc_dictionary_set_uint64(v4, "Explicit", *(a1 + 16));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      xpc_dictionary_set_value(v4, "IdentifiersArray", v8);
      v7 = *(a1 + 16);
    }
  }

  if ((v7 & 2) != 0)
  {
    xpc_dictionary_set_uint64(v4, "ContainerClass", *(a1 + 32));
    if ((*(a1 + 16) & 4) != 0)
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        xpc_dictionary_set_value(v4, "GroupIdentifiers", v15);
      }
    }

    xpc_dictionary_set_uint64(v4, "PersonaKernelID", *(a1 + 172));
    if ((*(a1 + 16) & 0x10) != 0)
    {
      v16 = *(a1 + 56);
      if (v16)
      {
        xpc_dictionary_set_string(v4, "PersonaUniqueString", v16);
      }
    }

    v17 = 0;
    v18 = *(a1 + 32);
    if (v18 <= 0xE && ((1 << v18) & 0x4ED4) != 0)
    {
      if ((*(a1 + 16) & 8) != 0)
      {
        xpc_dictionary_set_uint64(v4, "UID", *(a1 + 48));
        v17 = *(a1 + 48);
      }

      else
      {
        v17 = 0;
      }
    }

    v19 = *(a1 + 16);
    if ((v19 & 0x20) != 0)
    {
      xpc_dictionary_set_BOOL(v4, "Transient", *(a1 + 64));
      v19 = *(a1 + 16);
      if ((v19 & 0x40) == 0)
      {
LABEL_35:
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else if ((v19 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    xpc_dictionary_set_BOOL(v4, "IncludeUnowned", *(a1 + 65));
    if ((*(a1 + 16) & 0x80) == 0)
    {
LABEL_37:
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v20 = *(a1 + 32);
      if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0xC && (v20 > 8 || ((1 << v20) & 0x12A) == 0))
      {
        if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
        {
          v52 = MEMORY[0x1E12D2400](v4);
          v68 = v52;
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
          memset(v99, 0, sizeof(v99));
          memset(v98, 0, sizeof(v98));
          *buf = 2;
          current_persona = voucher_get_current_persona();
          if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
          {
            v56 = "<unknown>";
            v54 = "NOPERSONA";
          }

          else
          {
            if ((HIDWORD(v98[0]) - 2) > 4)
            {
              v54 = "<unknown>";
            }

            else
            {
              v54 = (&off_1E86AF498)[HIDWORD(v98[0]) - 2];
            }

            v56 = &v101 + 4;
          }

          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v60 = qword_1ED452B38;
          if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(__s) = 67111426;
            HIDWORD(__s) = current_persona;
            v73 = 2082;
            v74 = v54;
            v75 = 2082;
            v76 = v56;
            v77 = 1024;
            v78 = 0;
            v79 = 1024;
            v80 = 0;
            v81 = 1024;
            v82 = 0;
            v83 = 1024;
            v84 = 0;
            v85 = 1024;
            v86 = geteuid();
            v87 = 1024;
            v88 = getuid();
            v89 = 2080;
            v90 = v52;
            _os_log_debug_impl(&dword_1DF28A000, v60, OS_LOG_TYPE_DEBUG, "Query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, query = %s", &__s, 0x4Au);
            if (!v52)
            {
              goto LABEL_63;
            }
          }

          else if (!v52)
          {
            goto LABEL_63;
          }

          free(v52);
          v23 = &v68;
          goto LABEL_49;
        }

        v55 = *(a1 + 24);
        if (v55 && (count = xpc_array_get_count(v55)) != 0)
        {
          string = xpc_array_get_string(*(a1 + 24), 0);
        }

        else
        {
          string = 0;
          count = 0;
        }

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
        memset(v99, 0, sizeof(v99));
        memset(v98, 0, sizeof(v98));
        *buf = 2;
        v57 = voucher_get_current_persona();
        if (v57 == -1 || (kpersona_info() & 0x80000000) != 0)
        {
          v59 = "<unknown>";
          v58 = "NOPERSONA";
        }

        else
        {
          if ((HIDWORD(v98[0]) - 2) > 4)
          {
            v58 = "<unknown>";
          }

          else
          {
            v58 = (&off_1E86AF498)[HIDWORD(v98[0]) - 2];
          }

          v59 = &v101 + 4;
        }

        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v61 = qword_1ED452B38;
        if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
        {
LABEL_63:
          v36 = *(a1 + 32);
          if ((v36 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            v37 = 1;
          }

          else
          {
            v38 = v36 - 1;
            if (v38 > 0xD)
            {
              v37 = 0;
            }

            else
            {
              v37 = dword_1DF2B94B0[v38];
            }
          }

          v39 = container_xpc_send_sync_message(v37, 0, v4, 1, v17, a1 + 168, &v69);
          v12 = v39;
          v71 = v39;
          v13 = v39 != 0;
          if (v39)
          {
            if (!*(a1 + 176) && (*(a1 + 102) & 4) != 0)
            {
              uint64 = xpc_dictionary_get_uint64(v39, "ReplyGeneration");
              v41 = container_notify_create_with_initial_gen_count(*(a1 + 32), uint64);
              *(a1 + 176) = v41;
              if (v41)
              {
                v42 = *(a1 + 32);
                if (v42 <= 0xE && ((1 << v42) & 0x4ED4) != 0 && (*(a1 + 16) & 8) != 0)
                {
                  container_notify_set_uid(v41, *(a1 + 48));
                }
              }
            }

            value = xpc_dictionary_get_value(v12, "ReplyContainerSet");
            if (!value)
            {
              v10 = container_error_create_with_message(2, 53, 0, 0, 0);
              v11 = v10;
              goto LABEL_19;
            }

            v44 = value;
            v45 = xpc_dictionary_get_value(v12, "ReplyContainerInfos");
            v46 = xpc_dictionary_get_value(v12, "ReplyContainerTokens");
            v47 = xpc_dictionary_get_uint64(v12, "ReplyFlags");
            _container_query_free_results(a1);
            *(a1 + 120) = xpc_retain(v44);
            if (v46)
            {
              v48 = xpc_retain(v46);
            }

            else
            {
              v48 = 0;
            }

            *(a1 + 128) = v48;
            if (v45)
            {
              v49 = xpc_retain(v45);
            }

            else
            {
              v49 = 0;
            }

            *(a1 + 136) = v49;
            *(a1 + 152) = v47;
          }

          v11 = v69;
          if (v69)
          {
            goto LABEL_20;
          }

LABEL_86:
          v14 = 0;
          goto LABEL_87;
        }

        v62 = geteuid();
        v63 = getuid();
        v64 = *(a1 + 32);
        v65 = *(a1 + 96);
        LODWORD(__s) = 67112194;
        HIDWORD(__s) = v57;
        v73 = 2082;
        v74 = v58;
        v75 = 2082;
        v76 = v59;
        v77 = 1024;
        v78 = 0;
        v79 = 1024;
        v80 = 0;
        v81 = 1024;
        v82 = 0;
        v83 = 1024;
        v84 = 0;
        v85 = 1024;
        v86 = v62;
        v87 = 1024;
        v88 = v63;
        v89 = 2048;
        v90 = v64;
        v91 = 2080;
        v92 = string;
        v93 = 2048;
        v94 = count;
        v95 = 2048;
        v96 = v65;
        v32 = "Query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, class = %llu, identifier = [%s](%zu), flags = %llx";
        p_s = &__s;
        v34 = v61;
        v35 = 104;
LABEL_62:
        _os_log_impl(&dword_1DF28A000, v34, OS_LOG_TYPE_DEFAULT, v32, p_s, v35);
        goto LABEL_63;
      }

      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
      {
        v21 = MEMORY[0x1E12D2400](v4);
        __s = v21;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v22 = qword_1ED452B30;
        if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
        {
          if (!v21)
          {
            goto LABEL_63;
          }

          goto LABEL_48;
        }

        *buf = 67109634;
        LODWORD(v98[0]) = geteuid();
        WORD2(v98[0]) = 1024;
        *(v98 + 6) = getuid();
        WORD1(v98[1]) = 2080;
        *(&v98[1] + 4) = v21;
        _os_log_debug_impl(&dword_1DF28A000, v22, OS_LOG_TYPE_DEBUG, "Query; euid = %u, uid = %u, query = %s", buf, 0x18u);
        if (v21)
        {
LABEL_48:
          free(v21);
          v23 = &__s;
LABEL_49:
          memset_s(v23, 8uLL, 0, 8uLL);
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      v24 = *(a1 + 24);
      if (v24)
      {
        v25 = xpc_array_get_count(v24);
        if (v25)
        {
          v26 = xpc_array_get_string(*(a1 + 24), 0);
LABEL_58:
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v27 = qword_1ED452B30;
          if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_63;
          }

          v28 = geteuid();
          v29 = getuid();
          v30 = *(a1 + 32);
          v31 = *(a1 + 96);
          *buf = 67110402;
          LODWORD(v98[0]) = v28;
          WORD2(v98[0]) = 1024;
          *(v98 + 6) = v29;
          WORD1(v98[1]) = 2048;
          *(&v98[1] + 4) = v30;
          WORD2(v98[2]) = 2080;
          *(&v98[2] + 6) = v26;
          HIWORD(v98[3]) = 2048;
          v99[0] = v25;
          LOWORD(v99[1]) = 2048;
          *(&v99[1] + 2) = v31;
          v32 = "Query; euid = %u, uid = %u, class = %llu, identifier = [%s](%zu), flags = %llx";
          p_s = buf;
          v34 = v27;
          v35 = 54;
          goto LABEL_62;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = 0;
      goto LABEL_58;
    }

LABEL_36:
    xpc_dictionary_set_uuid(v4, "UUID", (a1 + 66));
    goto LABEL_37;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v9 = qword_1ED452B38;
  if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v98[0] = a2;
    _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container_query_set_class() is required", buf, 0xCu);
  }

  v10 = container_error_create_with_message(3, 38, 0, 0, 0);
  v11 = v10;
  v12 = 0;
LABEL_19:
  v13 = 0;
  v69 = v10;
  if (!v11)
  {
    goto LABEL_86;
  }

LABEL_20:
  _container_query_replace_error(a1, v11);
  v13 = 0;
  v14 = v69;
LABEL_87:
  container_error_free(v14);
  if (v4)
  {
    xpc_release(v4);
    memset_s(&v70, 8uLL, 0, 8uLL);
  }

  if (v12)
  {
    xpc_release(v12);
    memset_s(&v71, 8uLL, 0, 8uLL);
  }

LABEL_91:
  v50 = *MEMORY[0x1E69E9840];
  return v13;
}

void container_query_operation_set_flags(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
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
        v7 = 136315138;
        v8 = "container_query_operation_set_flags";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_operation_set_flags");
      a1[12] = a2;
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
      v8 = "container_query_operation_set_flags";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_query_set_group_identifiers(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  objects = a2;
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
        *buf = 136315138;
        v15 = "container_query_set_group_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", buf, 0xCu);
      }

      v4 = 0;
      v5 = 111;
LABEL_26:
      _container_query_set_usage_error(a1, v5);
      if (!v4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v7 = a2;
    if (!a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "container_query_set_group_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: identifiers parameter is NULL", buf, 0xCu);
      }

      v4 = 0;
      goto LABEL_25;
    }

    v8 = MEMORY[0x1E12D2570](a2);
    v4 = v8 == MEMORY[0x1E69E9F10];
    if (v8 == MEMORY[0x1E69E9F10])
    {
      v7 = xpc_array_create(&objects, 1uLL);
      objects = v7;
    }

    if (MEMORY[0x1E12D2570](v7) != MEMORY[0x1E69E9E50])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v9 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "container_query_set_group_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: identifiers is not an array or string", buf, 0xCu);
      }

LABEL_25:
      v5 = 38;
      goto LABEL_26;
    }

    _container_query_log_if_error(*a1, "container_query_set_group_identifiers");
    v12 = a1[5];
    if (v12)
    {
      xpc_release(v12);
      memset_s(a1 + 5, 8uLL, 0, 8uLL);
    }

    a1[5] = xpc_retain(objects);
    a1[2] |= 4uLL;
    if (v4)
    {
LABEL_27:
      if (objects)
      {
        xpc_release(objects);
        memset_s(&objects, 8uLL, 0, 8uLL);
      }
    }
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
      *buf = 136315138;
      v15 = "container_query_set_group_identifiers";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", buf, 0xCu);
    }
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
}

void *_container_query_get_result_at_index(uint64_t a1, unint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2000000000;
    v17 = 1;
    _container_query_log_if_error(*a1, "_container_query_get_result_at_index");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v6 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___container_query_get_result_at_index_block_invoke;
      block[3] = &unk_1E86AE760;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "_container_query_get_result_at_index";
      os_activity_apply(v6, block);
    }

    if (*(*(&buf + 1) + 24) != 1)
    {
      goto LABEL_19;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
    if (bytes_ptr)
    {
      v8 = bytes_ptr[2];
      if (a3 && v8 >= 2)
      {
        v9 = container_error_create_with_message(3, 114, 0, 0, 0);
        v9[5] = a1;
        _container_query_replace_error(a1, v9);
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v8 > a2)
    {
      v11 = *(a1 + 160);
      if (!v11)
      {
        v11 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
        *(a1 + 160) = v11;
        v11[11] = a1;
        *(v11 + 24) = a2;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = 0;
LABEL_20:
    container_log_ext_error("_container_query_get_result_at_index", gClientFaultLoggingEnabled, *a1);
    _Block_object_dispose(&buf, 8);
    goto LABEL_21;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v10 = qword_1ED452B38;
  if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "_container_query_get_result_at_index";
    _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
  }

  v11 = 0;
LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL ___container_query_get_result_at_index_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v2 + 96) |= 2uLL;
  result = _container_query_execute(v2, v3);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void _container_query_operation_set_private_flags(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
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
        v7 = 136315138;
        v8 = "_container_query_operation_set_private_flags";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "_container_query_operation_set_private_flags");
      a1[13] |= a2;
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
      v8 = "_container_query_operation_set_private_flags";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void container_query_operation_set_platform(uint64_t a1, int a2)
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
        v8 = "container_query_operation_set_platform";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_operation_set_platform");
      *(a1 + 88) = a2;
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
      v8 = "container_query_operation_set_platform";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t container_create_or_lookup_app_group_path_by_app_group_identifier(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  current_persona = voucher_get_current_persona();
  v5 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_app_group_path_by_app_group_identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __container_create_or_lookup_app_group_path_by_app_group_identifier_block_invoke;
  v10[3] = &unk_1E86AF3E0;
  v10[5] = &v16;
  v10[6] = a1;
  v10[4] = &v12;
  v11 = current_persona;
  os_activity_apply(v5, v10);
  os_release(v5);
  v6 = v13;
  v7 = v13[3];
  if (a2 && v7 != 1)
  {
    *a2 = v7;
    v7 = v6[3];
  }

  container_log_error("container_create_or_lookup_app_group_path_by_app_group_identifier", 0, v7);
  v8 = v17[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

void __container_create_or_lookup_app_group_path_by_app_group_identifier_block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  if (CONTAINER_PERSONA_CURRENT_block_invoke_once_token != -1)
  {
    dispatch_once(&CONTAINER_PERSONA_CURRENT_block_invoke_once_token, &__block_literal_global_1125);
  }

  v38 = 0;
  v2 = (a1 + 48);
  if (!*(a1 + 48))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v10 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *v64 = 0;
    v12 = "A NULL string is not a valid group container identifier.";
    goto LABEL_61;
  }

  os_unfair_lock_lock(&CONTAINER_PERSONA_CURRENT_block_invoke_lock);
  if (CONTAINER_PERSONA_CURRENT_block_invoke_cache)
  {
    v85 = 0;
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
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    *&v64[4] = 0u;
    *v64 = 2;
    kpersona_info();
    dictionary = xpc_dictionary_get_dictionary(CONTAINER_PERSONA_CURRENT_block_invoke_cache, "default");
    if (dictionary)
    {
      string = xpc_dictionary_get_string(dictionary, *v2);
      if (string)
      {
        *(*(*(a1 + 40) + 8) + 24) = strndup(string, 0x400uLL);
      }
    }
  }

  os_unfair_lock_unlock(&CONTAINER_PERSONA_CURRENT_block_invoke_lock);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    goto LABEL_18;
  }

  v5 = *v2;
  if (!**v2)
  {
    if (!dyld_program_sdk_at_least())
    {
      *v64 = 0;
      v13 = geteuid();
      v14 = container_pwd_copy_user_home_path(v13, 1, 1, v64);
      v15 = v14;
      v38 = v14;
      if (!v14)
      {
        v32 = *v64;
        if (*v64)
        {
          v33 = **v64;
        }

        else
        {
          v33 = 1;
        }

        *(*(*(a1 + 32) + 8) + 24) = v33;
        container_error_free(v32);
        goto LABEL_73;
      }

      v16 = asprintf((*(*(a1 + 40) + 8) + 24), "%s/%s/%s", v14, "Library", "AppGroup");
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 24);
      if (!v18 || v16 < 0)
      {
        if (v18)
        {
          free(v18);
          memset_s((*(*(a1 + 40) + 8) + 24), 8uLL, 0, 8uLL);
          v17 = *(*(a1 + 40) + 8);
        }

        *(v17 + 24) = 0;
        *(*(*(a1 + 32) + 8) + 24) = 73;
        goto LABEL_73;
      }

      v19 = 1;
LABEL_53:
      os_unfair_lock_lock_with_options();
      if (!CONTAINER_PERSONA_CURRENT_block_invoke_cache || (v19 & 1) != 0)
      {
        goto LABEL_72;
      }

      v28 = xpc_dictionary_get_dictionary(CONTAINER_PERSONA_CURRENT_block_invoke_cache, "default");
      if (v28)
      {
        v29 = v28;
        if (xpc_dictionary_get_count(v28) >= 0xA)
        {
          if (CONTAINER_PERSONA_CURRENT_block_invoke_cache)
          {
            xpc_release(CONTAINER_PERSONA_CURRENT_block_invoke_cache);
            memset_s(&CONTAINER_PERSONA_CURRENT_block_invoke_cache, 8uLL, 0, 8uLL);
          }

          CONTAINER_PERSONA_CURRENT_block_invoke_cache = 0;
          goto LABEL_72;
        }

        v34 = xpc_string_create(*(*(*(a1 + 40) + 8) + 24));
        *v64 = v34;
        xpc_dictionary_set_value(v29, *(a1 + 48), v34);
        if (!v34)
        {
LABEL_72:
          os_unfair_lock_unlock(&CONTAINER_PERSONA_CURRENT_block_invoke_lock);
LABEL_73:
          if (v15)
          {
            free(v15);
            memset_s(&v38, 8uLL, 0, 8uLL);
          }

          goto LABEL_18;
        }

        xpc_release(v34);
        v31 = v64;
      }

      else
      {
        *buf = xpc_string_create(*(*(*(a1 + 40) + 8) + 24));
        v30 = xpc_dictionary_create((a1 + 48), buf, 1uLL);
        *v64 = v30;
        xpc_dictionary_set_value(CONTAINER_PERSONA_CURRENT_block_invoke_cache, "default", v30);
        if (v30)
        {
          xpc_release(v30);
          memset_s(v64, 8uLL, 0, 8uLL);
        }

        if (!*buf)
        {
          goto LABEL_72;
        }

        xpc_release(*buf);
        v31 = buf;
      }

      memset_s(v31, 8uLL, 0, 8uLL);
      goto LABEL_72;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v10 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *(*(*(a1 + 32) + 8) + 24) = 38;
      goto LABEL_18;
    }

    *v64 = 0;
    v12 = "An empty string is not a valid group container identifier.";
LABEL_61:
    _os_log_error_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_ERROR, v12, v64, 2u);
    goto LABEL_17;
  }

  v6 = *(a1 + 56);
  v37 = *(*(a1 + 32) + 8);
  v41 = 0;
  v42 = 1;
  __s = 0;
  active_platform = dyld_get_active_platform();
  v39 = 0;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  voucher_get_current_persona_originator_info();
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  voucher_get_current_persona_proximate_info();
  v85 = 0;
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
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  *&v64[4] = 0u;
  *v64 = 2;
  current_persona = voucher_get_current_persona();
  if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
  {
    v35 = "<unknown>";
    v36 = "NOPERSONA";
  }

  else
  {
    if ((*&v64[8] - 2) > 4)
    {
      v9 = "<unknown>";
    }

    else
    {
      v9 = (&off_1E86AF498)[*&v64[8] - 2];
    }

    v36 = v9;
    v35 = &v69 + 4;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v20 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111683;
    *&buf[4] = current_persona;
    v44 = 2082;
    v45 = v36;
    v46 = 2082;
    v47 = v35;
    v48 = 1024;
    v49 = 0;
    v50 = 1024;
    v51 = 0;
    v52 = 1024;
    v53 = 0;
    v54 = 1024;
    v55 = 0;
    v56 = 2081;
    v57 = v5;
    v58 = 1024;
    v59 = geteuid();
    v60 = 1024;
    v61 = getuid();
    v62 = 1024;
    v63 = active_platform;
    _os_log_impl(&dword_1DF28A000, v20, OS_LOG_TYPE_DEFAULT, "Requesting app group container lookup; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], identifier = %{private}s, euid = %u, uid = %u, platform = %u", buf, 0x50u);
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  __s = v21;
  xpc_dictionary_set_uint64(v21, "Command", 0x26uLL);
  xpc_dictionary_set_string(v21, "Identifier", v5);
  xpc_dictionary_set_uint64(v21, "Platform", active_platform);
  xpc_dictionary_set_uint64(v21, "PersonaKernelID", v6);
  v22 = container_xpc_send_sync_message(2, 0, v21, 1, 0, 0, &v39);
  v23 = v22;
  v41 = v22;
  if (!v22)
  {
    v27 = 0;
    v25 = 0;
LABEL_42:
    path = 0;
    goto LABEL_43;
  }

  v24 = container_xpc_decode_container_object(v22, &v42);
  v25 = v24;
  if (!v24)
  {
    v27 = 0;
    goto LABEL_42;
  }

  if (container_object_get_path(v24))
  {
    path = container_object_get_path(v25);
    v27 = xpc_dictionary_get_BOOL(v23, "ReplyCacheable");
    container_object_sandbox_extension_activate(v25, 1);
    if (path)
    {
      path = strndup(path, 0x400uLL);
    }
  }

  else
  {
    v27 = 0;
    path = 0;
    v42 = 54;
  }

LABEL_43:
  if (v39)
  {
    v42 = *v39;
  }

  container_error_free(v39);
  container_object_free(v25);
  if (v21)
  {
    xpc_release(v21);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v23)
  {
    xpc_release(v23);
    memset_s(&v41, 8uLL, 0, 8uLL);
  }

  if (v42 != 1)
  {
    *(v37 + 24) = v42;
  }

  *(*(*(a1 + 40) + 8) + 24) = path;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v15 = 0;
    v19 = !v27;
    goto LABEL_53;
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
}

void *container_free_client(void *result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      free(v2);
      memset_s(v3, 8uLL, 0, 8uLL);
    }

    v4 = v1[2];
    if (v4)
    {
      free(v4);
      memset_s(v1 + 2, 8uLL, 0, 8uLL);
    }

    v5 = v1[11];
    if (v5)
    {
      xpc_release(v5);
      memset_s(v1 + 11, 8uLL, 0, 8uLL);
    }

    v6 = v1[4];
    if (v6)
    {
      free(v6);
      memset_s(v1 + 4, 8uLL, 0, 8uLL);
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

BOOL _container_notify_is_valid(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452BD0;
    result = os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_11;
    }

    v12 = 136315138;
    v13 = a1;
    v6 = "%s: SPI MISUSE: notify parameter is NULL";
    v7 = v5;
    v8 = 12;
LABEL_13:
    _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, v6, &v12, v8);
    result = 0;
    goto LABEL_11;
  }

  _container_notify_log_if_error(*a2, a1);
  if ((*(a2 + 16) - 1) < 0xE)
  {
    result = 1;
    goto LABEL_11;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v9 = qword_1ED452BD0;
  result = os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v11 = *(a2 + 16);
    v12 = 136315394;
    v13 = a1;
    v14 = 2048;
    v15 = v11;
    v6 = "%s: SPI MISUSE: container class is not set or is invalid (%llu)";
    v7 = v9;
    v8 = 22;
    goto LABEL_13;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_notify_get_generation(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!_container_notify_is_valid("container_notify_get_generation", a1))
  {
LABEL_14:
    v8 = 38;
    goto LABEL_15;
  }

  *(a1 + 116) = 1;
  if (!a2)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v16 = "container_notify_get_generation";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: out_generation parameter is NULL", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (_container_notify_generation_register(a1, 0))
  {
    if (*(a1 + 96) == -1)
    {
      goto LABEL_21;
    }

    v14 = 0;
    v4 = (gCMNotifySeam[1])(*(a1 + 88), &v14);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452BD0;
    if (v4)
    {
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 16);
        *buf = 134218240;
        *v16 = v6;
        *&v16[8] = 1024;
        *&v16[10] = v4;
        _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Failed to check generation state; container_class = %llu, status = %u", buf, 0x12u);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 88);
      v13 = *(a1 + 16);
      *buf = 67109632;
      *v16 = v12;
      *&v16[4] = 2048;
      *&v16[6] = v13;
      v17 = 1024;
      v18 = v14;
      _os_log_debug_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_DEBUG, "Checked generation event; token = %d, container_class = %llu, check = %d", buf, 0x18u);
    }

    if (v14)
    {
LABEL_21:
      if (!_container_notify_populate_generation(a1))
      {
LABEL_24:
        v8 = 157;
        goto LABEL_15;
      }
    }

    v11 = *(a1 + 96);
    if (v11 != -1)
    {
      *a2 = v11;
      result = 1;
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v8 = 156;
LABEL_15:
  _container_notify_set_usage_error(a1, v8);
  result = 0;
LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void _container_notify_log_if_error(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = container_error_copy_unlocalized_description(a1);
    __s = v3;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452BD0;
    if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = a2;
      v9 = 2080;
      v10 = v3;
      _os_log_error_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_ERROR, "WARNING: Calling %s with a notify object that has a previous error: %s", buf, 0x16u);
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v3)
    {
LABEL_6:
      free(v3);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
}

char *container_audit_token_copy_codesign_identifier(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return container_codesign_copy_cs_identity(v1, v4);
}

char *container_codesign_copy_cs_identity(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  size = 0;
  v11 = *a2;
  v13 = a2[1];
  v3 = csops_audittoken();
  v4 = vrev32_s8(0);
  size = v4;
  if ((v3 & 0x80000000) == 0)
  {
    if (!v3)
    {
      v5 = strndup(v17, HIDWORD(v4) - 8);
      goto LABEL_10;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_10;
  }

  if (*__error() != 34)
  {
    goto LABEL_7;
  }

  v6 = malloc_type_calloc(1uLL, HIDWORD(size), 0x298192D6uLL);
  __s = v6;
  v12 = *a2;
  v14 = a2[1];
  v7 = csops_audittoken();
  v8 = vrev32_s8(*v6);
  *v6 = v8;
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = strndup(&v6[1], v8.u32[1] - 8);
  }

  free(v6);
  memset_s(&__s, 8uLL, 0, 8uLL);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void _block_invoke(uint64_t a1, int a2, void *a3, void *a4, int a5, char a6, uint64_t a7)
{
  if ((a2 - 2) < 2)
  {
    v14 = getuid();
    v13 = 0;
    if (a5)
    {
      v15 = v14 == a5;
    }

    else
    {
      v15 = 1;
    }

    v12 = !v15;
    goto LABEL_23;
  }

  if (!a2)
  {
    v16 = container_error_create_with_message(3, 74, 0, 0, 0);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v17 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      if (v16)
      {
LABEL_19:
        (*(a7 + 16))(a7, 0, 0, v16);
        v19 = v16;
LABEL_32:
        container_error_free(v19);
        return;
      }

LABEL_22:
      v13 = 0;
      v12 = 0;
      goto LABEL_23;
    }

    LOWORD(v27[0]) = 0;
    v18 = "Disposition unsupported.";
LABEL_21:
    _os_log_error_impl(&dword_1DF28A000, v17, OS_LOG_TYPE_ERROR, v18, v27, 2u);
    if (v16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    v16 = container_error_create_with_message(3, 38, 0, 0, 0);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v17 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v27[0]) = 0;
    v18 = "Undefined disposition value.";
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 1;
LABEL_23:
  v28 = 1;
  if (gContainerXPCUsesSharedConnection != 1 || (v12 & 1) != 0)
  {
    v20 = container_xpc_create_connection(v13, a3, a5, &v28);
  }

  else
  {
    v20 = container_xpc_shared_copy_connection(v13, a3, &v28);
  }

  v21 = v20;
  if (!v20)
  {
    v25 = container_error_create_with_message(2, v28, 0, 0, 0);
    (*(a7 + 16))(a7, 0, 0, v25);
    v19 = v25;
    goto LABEL_32;
  }

  v22 = *v20;
  if (a6)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___container_xpc_default_sender_block_invoke;
    v27[3] = &unk_1E86AE5A8;
    v27[4] = a7;
    v27[5] = v21;
    xpc_connection_send_message_with_reply(v22, a4, global_queue, v27);
  }

  else
  {
    v23 = xpc_connection_send_message_with_reply_sync(*v20, a4);
    v27[0] = v23;
    pid = xpc_connection_get_pid(v22);
    (*(a7 + 16))(a7, v23, pid, 0);
    container_xpc_release(v21);
    if (v23)
    {
      xpc_release(v23);
      memset_s(v27, 8uLL, 0, 8uLL);
    }
  }
}

xpc_object_t *container_xpc_shared_copy_connection(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 1;
  os_unfair_lock_lock(&gSharedClientConnectionLock);
  v6 = &gSharedClientConnection[6 * a1];
  v7 = v6[a2];
  if (v7 || (v7 = container_xpc_create_connection(a1, a2, 0, &v13), (v6[a2] = v7) != 0))
  {
    v7[5] = v7[5] + 1;
    *(v7 + 24) = 1;
    v7[4] = mach_absolute_time();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      v12 = v7[5];
      *buf = 134218752;
      v15 = v7;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = v12;
      _os_log_debug_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> shared; cnt = %lld", buf, 0x2Au);
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v15 = a1;
      v16 = 2048;
      v17 = a2;
      v18 = 2048;
      v19 = v13;
      _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "failed to generate connection for sharing of type %llu, purpose %llu: %llu", buf, 0x20u);
    }

    v7 = 0;
  }

  os_unfair_lock_unlock(&gSharedClientConnectionLock);
  if (a3)
  {
    *a3 = v13;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

xpc_object_t *container_xpc_create_connection(void *a1, void *a2, int a3, uint64_t *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v8 = "com.apple.containermanagerd.system";
  }

  else
  {
    v8 = "com.apple.containermanagerd";
  }

  mach_service = xpc_connection_create_mach_service(v8, 0, 0);
  if (!mach_service)
  {
    v12 = 0;
    v13 = 1;
    v16 = 19;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v10 = mach_service;
  __xpc_connection_set_logging();
  v11 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040B750F859uLL);
  v12 = v11;
  v13 = v11 == 0;
  if (v11)
  {
    v11[1] = a1;
    v11[2] = a2;
    *(v11 + 12) = 0;
    v11[4] = mach_absolute_time();
    v12[5] = 2;
    *v12 = xpc_retain(v10);
    xpc_connection_set_context(v10, v12);
    v14 = xpc_user_sessions_enabled();
    if (a1 != 1 && a3 && v14)
    {
      xpc_connection_set_target_user_session_uid();
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v15 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      v19 = v12[1];
      v20 = v12[2];
      v21 = v12[5];
      *buf = 134218752;
      v24 = v12;
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      v29 = 2048;
      v30 = v21;
      _os_log_debug_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> created; cnt = %lld", buf, 0x2Au);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = __container_xpc_create_connection_block_invoke;
    v22[3] = &__block_descriptor_tmp_6;
    v22[4] = v10;
    v22[5] = v12;
    xpc_connection_set_event_handler(v10, v22);
    xpc_connection_resume(v10);
    v16 = 1;
  }

  else
  {
    v16 = 73;
  }

  xpc_release(v10);
  if (a4)
  {
LABEL_19:
    if (v13)
    {
      *a4 = v16;
    }
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

void *container_client_create_from_audit_token(uint64_t a1, const char *a2, uint64_t *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 20);
  v7 = malloc_type_calloc(1uLL, 0x60uLL, 0x10900405E1FA0D8uLL);
  __s = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v9;
    platform = container_audit_token_get_platform(buf);
    v8[6] = platform;
    if (platform)
    {
      *buf = *a1;
      v11 = *(a1 + 20);
      v12 = *(a1 + 24);
      *&buf[16] = *(a1 + 16);
      *&buf[20] = v11;
      *&buf[24] = v12;
      v13 = container_codesign_copy_cs_identity(v11, buf);
      *(v8 + 1) = v13;
      if (v13)
      {
        *v8 = 0;
        *buf = *a1;
        v14 = *(a1 + 20);
        v15 = *(a1 + 24);
        *&buf[16] = *(a1 + 16);
        *&buf[20] = v14;
        *&buf[24] = v15;
        *(v8 + 2) = container_codesign_copy_cs_team_identifier(v14, buf);
        if (a2)
        {
          v16 = strdup(a2);
        }

        else
        {
          v16 = 0;
        }

        *(v8 + 4) = v16;
        v8[10] = *(a1 + 4);
        v8[11] = *(a1 + 8);
        v21 = *(a1 + 16);
        *(v8 + 3) = *a1;
        *(v8 + 4) = v21;
        v8[20] = *(a1 + 20);
        *(v8 + 11) = 0;
        *buf = *a1;
        v22 = *(a1 + 20);
        v23 = *(a1 + 24);
        *&buf[16] = *(a1 + 16);
        *&buf[20] = v22;
        *&buf[24] = v23;
        status = container_codesign_get_status();
        *(v8 + 42) = 0;
        *(v8 + 86) = 0;
        if ((status & 0x8000000000000000) == 0)
        {
          if (status)
          {
            *(v8 + 84) = 1;
          }

          if ((status & 2) != 0)
          {
            *(v8 + 85) = 1;
          }

          v18 = 1;
          if ((status & 4) != 0)
          {
            *(v8 + 86) = 1;
          }

          goto LABEL_35;
        }

        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v25 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v8 + 1);
          v29 = *__error();
          *buf = 67109634;
          *&buf[4] = v6;
          *&buf[8] = 2080;
          *&buf[10] = v28;
          *&buf[18] = 1024;
          *&buf[20] = v29;
          _os_log_error_impl(&dword_1DF28A000, v25, OS_LOG_TYPE_ERROR, "Could not get code sign status from audit token for pid [%d] identifier [%s]: %{darwin.errno}d", buf, 0x18u);
        }

        v18 = 128;
      }

      else
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v20 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v6;
          _os_log_error_impl(&dword_1DF28A000, v20, OS_LOG_TYPE_ERROR, "Could not get code sign identifier from audit token to initialize a client object for pid [%d].", buf, 8u);
        }

        v18 = 98;
      }
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v19 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_1DF28A000, v19, OS_LOG_TYPE_ERROR, "Could not get platform from audit token to initialize a client object for pid [%d].", buf, 8u);
      }

      v18 = 80;
    }

    free(v8);
    memset_s(&__s, 8uLL, 0, 8uLL);
    goto LABEL_35;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v17 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_1DF28A000, v17, OS_LOG_TYPE_ERROR, "Could not allocate memory to initialize a client object for pid [%d].", buf, 8u);
  }

  v18 = 73;
LABEL_35:
  if (a3)
  {
    *a3 = v18;
  }

  result = __s;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_audit_token_get_platform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  active_platform = dyld_get_active_platform();
  buffer = 0;
  v3 = *(a1 + 20);
  if (proc_pidinfo(v3, 30, 0, &buffer, 4) == 4)
  {
    active_platform = buffer;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109376;
      v10 = v3;
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_ERROR, "Unable to fetch platform from client for pid [%d]: %{darwin.errno}d", buf, 0xEu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return active_platform;
}

char *container_codesign_copy_cs_team_identifier(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  size = 0;
  v11 = *a2;
  v13 = a2[1];
  v3 = csops_audittoken();
  v4 = vrev32_s8(0);
  size = v4;
  if ((v3 & 0x80000000) == 0)
  {
    if (!v3)
    {
      v5 = strndup(v17, HIDWORD(v4) - 8);
      goto LABEL_10;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_10;
  }

  if (*__error() != 34)
  {
    goto LABEL_7;
  }

  v6 = malloc_type_calloc(1uLL, HIDWORD(size), 0x345CD17CuLL);
  __s = v6;
  v12 = *a2;
  v14 = a2[1];
  v7 = csops_audittoken();
  v8 = vrev32_s8(*v6);
  *v6 = v8;
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = strndup(&v6[1], v8.u32[1] - 8);
  }

  free(v6);
  memset_s(&__s, 8uLL, 0, 8uLL);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t container_codesign_get_status()
{
  if ((csops_audittoken() & 0x80000000) != 0)
  {
    return 0x8000000000000000;
  }

  v0 = 0;
  os_variant_has_internal_content();
  return v0;
}

void *container_audit_token_copy_codesign_hash(uint64_t a1, void *a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return container_codesign_copy_cdhash(v2, v5, a2);
}

void *container_codesign_copy_cdhash(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = malloc_type_calloc(0x14uLL, 1uLL, 0x100004077774924uLL);
  __s = v4;
  if (csops_audittoken())
  {
    if (v4)
    {
      free(v4);
      memset_s(&__s, 8uLL, 0, 8uLL);
      return 0;
    }
  }

  else if (a3)
  {
    *a3 = 20;
  }

  return v4;
}

void container_query_set_persona_unique_string(uint64_t *a1, const char *a2)
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
        v11 = 136315138;
        v12 = "container_query_set_persona_unique_string";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v11, 0xCu);
      }

      v4 = a1;
      v5 = 111;
LABEL_8:
      _container_query_set_usage_error(v4, v5);
      goto LABEL_17;
    }

    if (!a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        v11 = 136315138;
        v12 = "container_query_set_persona_unique_string";
        _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: persona_unique_string parameter is NULL", &v11, 0xCu);
      }

      v4 = a1;
      v5 = 38;
      goto LABEL_8;
    }

    _container_query_log_if_error(*a1, "container_query_set_persona_unique_string");
    v8 = a1[7];
    if (v8)
    {
      free(v8);
      memset_s(a1 + 7, 8uLL, 0, 8uLL);
    }

    a1[7] = strndup(a2, 0x400uLL);
    a1[2] |= 0x10uLL;
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
      v11 = 136315138;
      v12 = "container_query_set_persona_unique_string";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v11, 0xCu);
    }
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
}

void container_query_set_identifiers(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  objects = a2;
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
        *buf = 136315138;
        v16 = "container_query_set_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", buf, 0xCu);
      }

      v4 = 0;
      v5 = 111;
LABEL_26:
      _container_query_set_usage_error(a1, v5);
      if (!v4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v7 = a2;
    if (!a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v16 = "container_query_set_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: identifiers parameter is NULL", buf, 0xCu);
      }

      v4 = 0;
      goto LABEL_25;
    }

    v8 = MEMORY[0x1E12D2570](a2);
    v4 = v8 == MEMORY[0x1E69E9F10];
    if (v8 == MEMORY[0x1E69E9F10])
    {
      v7 = xpc_array_create(&objects, 1uLL);
      objects = v7;
    }

    if (MEMORY[0x1E12D2570](v7) != MEMORY[0x1E69E9E50])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v9 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v16 = "container_query_set_identifiers";
        _os_log_fault_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: identifiers is not an array or string", buf, 0xCu);
      }

LABEL_25:
      v5 = 38;
      goto LABEL_26;
    }

    _container_query_log_if_error(*a1, "container_query_set_identifiers");
    v12 = a1[3];
    if (v12)
    {
      xpc_release(v12);
      memset_s(a1 + 3, 8uLL, 0, 8uLL);
    }

    v13 = xpc_retain(objects);
    a1[2] |= 1uLL;
    a1[3] = v13;
    if (v4)
    {
LABEL_27:
      if (objects)
      {
        xpc_release(objects);
        memset_s(&objects, 8uLL, 0, 8uLL);
      }
    }
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
      *buf = 136315138;
      v16 = "container_query_set_identifiers";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", buf, 0xCu);
    }
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t ___container_xpc_invalidate_shared_connection_after_timeout_block_invoke()
{
  result = dispatch_queue_create("com.apple.containermanager connection release hysteresis", 0);
  _container_xpc_invalidate_shared_connection_after_timeout_queue = result;
  return result;
}

uint64_t container_object_sandbox_extension_activate(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B28;
  if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_DEBUG))
  {
    v15 = "false";
    if (a2)
    {
      v15 = "true";
    }

    v19 = 136446466;
    v20 = "container_object_sandbox_extension_activate";
    v21 = 2082;
    v22 = v15;
    _os_log_debug_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_DEBUG, "%{public}s(container, %{public}s)", &v19, 0x16u);
  }

  v5 = *(a1 + 88);
  if (v5 && (v6 = *(v5 + 128)) != 0)
  {
    string = xpc_array_get_string(v6, *(a1 + 96));
    if (!string)
    {
LABEL_7:
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v8 = qword_1ED452B28;
      if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_DEBUG))
      {
        v9 = "false";
        if (a2)
        {
          v9 = "true";
        }

        v19 = 136446466;
        v20 = "container_object_sandbox_extension_activate";
        v21 = 2082;
        v22 = v9;
        _os_log_debug_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_DEBUG, "%{public}s(container, %{public}s): no sandbox token in container", &v19, 0x16u);
      }

      goto LABEL_21;
    }
  }

  else
  {
    string = *(a1 + 48);
    if (!string)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 110) != 1 || a2 && (*(a1 + 111) & 1) == 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v10 = qword_1ED452B28;
    if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_DEBUG))
    {
      v16 = "false";
      if (a2)
      {
        v16 = "true";
      }

      v17 = *(a1 + 110);
      v20 = "container_object_sandbox_extension_activate";
      v19 = 136446722;
      v21 = 2082;
      v22 = v16;
      if (v17)
      {
        v18 = "upgrading";
      }

      else
      {
        v18 = "consuming";
      }

      v23 = 2082;
      v24 = v18;
      _os_log_debug_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_DEBUG, "%{public}s(container, %{public}s): %{public}s container extension", &v19, 0x20u);
    }

    path = container_object_get_path(a1);
    persona_unique_string = container_object_get_persona_unique_string(a1);
    *(a1 + 100) = container_sandbox_extension_consume(string, path, persona_unique_string, a2);
    *(a1 + 111) = a2;
    *(a1 + 110) = 1;
  }

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t container_sandbox_issue_custom_extension(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9BE0];
  if (a2)
  {
    v6 = gCMSandboxSeam[5];
    v7 = a2[1];
    *v14 = *a2;
    *&v14[16] = v7;
    v8 = (v6)(a1, a3, v5, v14);
  }

  else
  {
    v8 = (gCMSandboxSeam[4])(a1, a3, v5);
  }

  v9 = v8;
  if (!v8)
  {
    v10 = *__error();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B28;
    if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136446722;
      *&v14[4] = a1;
      *&v14[12] = 2080;
      *&v14[14] = a3;
      *&v14[22] = 1024;
      *&v14[24] = v10;
      _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "sandbox_extension_issue_file failed for class %{public}s at path [%s]: %d", v14, 0x1Cu);
    }

    *__error() = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL _container_notify_generation_register(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 88);
  if (*(a1 + 88) == -1)
  {
    v6 = *(a1 + 16);
    *buf = 0;
    asprintf(buf, "com.apple.containermanager.%s%s", "G.", *(&CONTAINER_CLASS_NAMES + v6));
    v7 = *buf;
    __s = *buf;
    v8 = (gCMNotifySeam[3])(*buf, v2);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = qword_1ED452BD0;
    if (v8)
    {
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 16);
        *buf = 136315650;
        *&buf[4] = v7;
        v15 = 2048;
        v16 = v10;
        v17 = 1024;
        v18 = v8;
        _os_log_error_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_ERROR, "Failed to register for generation event; event = [%s], container_class = %llu, status = %u", buf, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1ED452BD0, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 16);
        *buf = 136315394;
        *&buf[4] = v7;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_INFO, "Registered for generation check; event = [%s], container_class = %llu", buf, 0x16u);
      }

      if (a2)
      {
        _container_notify_populate_generation(a1);
      }
    }

    if (v7)
    {
      free(v7);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    result = *v2 != -1;
  }

  else
  {
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *container_object_create(const unsigned __int8 *a1, const char *a2, uint64_t a3, int a4, const char *a5, const char *a6, const char *a7, void *a8, const char *a9, unsigned __int8 a10, unsigned __int8 a11, const char *a12, const char *a13, void *a14)
{
  if (a1 && a2 && a6 && (is_null = uuid_is_null(a1), (a3 - 1) <= 0xD) && !is_null)
  {
    v23 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
    uuid_copy(v23, a1);
    *(v23 + 3) = strdup(a2);
    if (a5)
    {
      v24 = strdup(a5);
    }

    else
    {
      v24 = 0;
    }

    *(v23 + 4) = v24;
    *(v23 + 7) = strdup(a6);
    if (a7)
    {
      v25 = strdup(a7);
    }

    else
    {
      v25 = 0;
    }

    *(v23 + 5) = v25;
    *(v23 + 2) = a3;
    *(v23 + 26) = a4;
    if (a8)
    {
      v26 = xpc_retain(a8);
    }

    else
    {
      v26 = 0;
    }

    *(v23 + 10) = v26;
    *(v23 + 25) = 0;
    *(v23 + 55) = 0;
    if (a9)
    {
      v27 = strndup(a9, 0x800uLL);
    }

    else
    {
      v27 = 0;
    }

    *(v23 + 6) = v27;
    v23[108] = a10;
    v23[109] = a11;
    *(v23 + 11) = 0;
    *(v23 + 24) = -1;
    if (a12)
    {
      v28 = strdup(a12);
    }

    else
    {
      v28 = 0;
    }

    *(v23 + 8) = v28;
    if (a13)
    {
      v29 = strdup(a13);
    }

    else
    {
      v29 = 0;
    }

    *(v23 + 9) = v29;
  }

  else
  {
    v23 = 0;
    if (a14)
    {
      *a14 = 11;
    }
  }

  return v23;
}

unint64_t container_object_get_path(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 32);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 32);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_path_of_container_at_index(bytes_ptr, v5);
}

void __container_xpc_send_message_block_invoke(uint64_t a1, xpc_object_t object, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_54;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  xdict = object;
  v9 = *(v8 + 24);
  if (*(v8 + 24))
  {
    *(v8 + 24) = 0;
  }

  v10 = _incomingPreprocessor;
  if (_incomingPreprocessor)
  {
    xpc_retain(object);
    (*(v10 + 16))(v10, &xdict);
    object = xdict;
  }

  v11 = MEMORY[0x1E12D2570](object);
  if (v11 != MEMORY[0x1E69E9E98] || xdict != MEMORY[0x1E69E9E20])
  {
    if (v11 == MEMORY[0x1E69E9E98] && xdict == MEMORY[0x1E69E9E18])
    {
      if (v9)
      {
        v13 = *(v8 + 28);
        if (v13 < *(v8 + 32))
        {
          *(v8 + 24) = 1;
          *(v8 + 28) = v13 + 1;
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v14 = container_log_handle_for_category_logHandles;
          if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
          {
            v15 = *(v8 + 28);
            v16 = *(v8 + 32);
            *buf = 67109376;
            v33 = v15;
            v34 = 1024;
            v35 = v16;
            v17 = "XPC connection to containermanagerd interrupted. Retry attempt %u of %u";
LABEL_25:
            _os_log_error_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_ERROR, v17, buf, 0xEu);
            goto LABEL_48;
          }

          goto LABEL_48;
        }
      }

      v21 = 52;
    }

    else if (v11 == MEMORY[0x1E69E9E98] && xdict == MEMORY[0x1E69E9E38])
    {
      v21 = 101;
    }

    else
    {
      v21 = 50;
      if (v11 != MEMORY[0x1E69E9E98] && v11 == MEMORY[0x1E69E9E80])
      {
        dictionary = xpc_dictionary_get_dictionary(xdict, "ReplyErrorExtended");
        if (!dictionary)
        {
          goto LABEL_47;
        }

        v24 = container_xpc_decode_error(dictionary, 1);
        v22 = v24;
        if (v9 && v24)
        {
          if (*v24 == 107)
          {
            v25 = *(v8 + 44);
            if (v25 < *(v8 + 48))
            {
              *(v8 + 24) = 1;
              *(v8 + 44) = v25 + 1;
              if (container_log_handle_for_category_onceToken != -1)
              {
                dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
              }

              v26 = container_log_handle_for_category_logHandles;
              if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
              {
                v29 = *(v8 + 44);
                v30 = *(v8 + 48);
                *buf = 67109376;
                v33 = v29;
                v34 = 1024;
                v35 = v30;
                _os_log_error_impl(&dword_1DF28A000, v26, OS_LOG_TYPE_ERROR, "containermanagerd state reset, retry requested. Retry attempt %u of %u", buf, 0xEu);
              }

              container_error_free(v22);
              goto LABEL_48;
            }
          }

LABEL_33:
          (*(v7 + 16))(v7, 0, 0, v22);
          container_error_free(v22);
          if (v9)
          {
            *(v8 + 24) = 0;
          }

          goto LABEL_52;
        }

LABEL_32:
        if (v22)
        {
          goto LABEL_33;
        }

LABEL_47:
        if (!v9)
        {
LABEL_49:
          array = xpc_dictionary_get_array(xdict, "ReplyWarnings");
          if (array)
          {
            xpc_array_apply(array, &__block_literal_global_10_459);
          }

          (*(v7 + 16))(v7, xdict, a3, 0);
          goto LABEL_52;
        }

        goto LABEL_48;
      }
    }

LABEL_31:
    v22 = container_error_create_with_message(2, v21, 0, 0, 0);
    goto LABEL_32;
  }

  if (!v9 || (v18 = *(v8 + 36), v18 >= *(v8 + 40)))
  {
    v21 = 51;
    goto LABEL_31;
  }

  *(v8 + 24) = 1;
  *(v8 + 36) = v18 + 1;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v14 = container_log_handle_for_category_logHandles;
  if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
  {
    v19 = *(v8 + 36);
    v20 = *(v8 + 40);
    *buf = 67109376;
    v33 = v19;
    v34 = 1024;
    v35 = v20;
    v17 = "XPC connection to containermanagerd invalidated. Retry attempt %u of %u";
    goto LABEL_25;
  }

LABEL_48:
  if ((*(v8 + 24) & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_52:
  if (v10)
  {
    xpc_release(xdict);
  }

LABEL_54:
  v28 = *MEMORY[0x1E69E9840];
}

xpc_object_t __container_xpc_send_sync_message_block_invoke(uint64_t a1, xpc_object_t object, int a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    *v6 = a3;
  }

  if (a4 && *(a1 + 48))
  {
    **(a1 + 48) = container_error_create_with_message(*(a4 + 8), *a4, *(a4 + 16), *(a4 + 24), *(a4 + 32));
  }

  if (object)
  {
    result = xpc_retain(object);
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void container_xpc_release(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  __s = a1;
  if (!a1)
  {
    goto LABEL_15;
  }

  os_unfair_lock_lock_with_options();
  --*(a1 + 40);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    *block = 134218752;
    *&block[4] = a1;
    *&block[12] = 2048;
    *&block[14] = v10;
    *&block[22] = 2048;
    v21 = v11;
    *v22 = 2048;
    *&v22[2] = v12;
    _os_log_debug_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> released; cnt = %lld", block, 0x2Au);
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (*(a1 + 24) == 1)
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      if (_container_xpc_invalidate_shared_connection_after_timeout_onceToken != -1)
      {
        dispatch_once(&_container_xpc_invalidate_shared_connection_after_timeout_onceToken, &__block_literal_global_10);
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 8);
        v17 = *(a1 + 16);
        v18 = *(a1 + 40);
        *block = 134219008;
        *&block[4] = a1;
        *&block[12] = 2048;
        *&block[14] = v16;
        *&block[22] = 2048;
        v21 = v17;
        *v22 = 2048;
        *&v22[2] = 2;
        *&v22[10] = 2048;
        *&v22[12] = v18;
        _os_log_debug_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> will be canceled in %lld seconds; cnt = %lld", block, 0x34u);
      }

      v7 = mach_absolute_time();
      v8 = *(a1 + 40) + 1;
      *(a1 + 32) = v7;
      *(a1 + 40) = v8;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = ___container_xpc_invalidate_shared_connection_after_timeout_block_invoke_12;
      v21 = &__block_descriptor_tmp_13;
      *v22 = a1;
      *&v22[8] = v7;
      v9 = dispatch_time(0, 2000000000);
      dispatch_after(v9, _container_xpc_invalidate_shared_connection_after_timeout_queue, block);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_8;
      }

      xpc_connection_cancel(*a1);
    }
  }

  v3 = *(a1 + 40);
LABEL_8:
  if (v3 <= 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v15 = *(a1 + 40);
      *block = 134218752;
      *&block[4] = a1;
      *&block[12] = 2048;
      *&block[14] = v13;
      *&block[22] = 2048;
      v21 = v14;
      *v22 = 2048;
      *&v22[2] = v15;
      _os_log_debug_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> freed; cnt = %lld", block, 0x2Au);
    }

    xpc_release(*a1);
    free(a1);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  os_unfair_lock_unlock(&gSharedClientConnectionLock);
LABEL_15:
  v5 = *MEMORY[0x1E69E9840];
}

unsigned __int8 *container_xpc_decode_container_object(void *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E12D2570]() != MEMORY[0x1E69E9E80])
  {
    v4 = 53;
    goto LABEL_6;
  }

  string = xpc_dictionary_get_string(a1, "ContainerPersonaUniqueString");
  uuid = xpc_dictionary_get_uuid(a1, "ContainerUUID");
  if (!uuid || (v7 = uuid, uuid_is_null(uuid)) || (v13 = xpc_dictionary_get_string(a1, "ContainerUniquePathComponent")) == 0 || (v14 = v13, (v15 = xpc_dictionary_get_string(a1, "ContainerIdentifier")) == 0) || (v16 = v15, uint64 = xpc_dictionary_get_uint64(a1, "ContainerClass"), uint64 - 1 > 0xD))
  {
    v4 = 54;
    goto LABEL_6;
  }

  v18 = uint64;
  v32 = xpc_dictionary_get_uint64(a1, "ContainerUID");
  dictionary = xpc_dictionary_get_dictionary(a1, "ContainerMetadata");
  if (dictionary)
  {
    v20 = dictionary;
    v31 = xpc_dictionary_get_BOOL(dictionary, "ContainerMetadataExisted");
    v30 = xpc_dictionary_get_string(v20, "ContainerMetadataPath");
    value = xpc_dictionary_get_value(v20, "ContainerMetadataInfo");
    v28 = xpc_dictionary_get_BOOL(v20, "ContainerMetadataTransient");
    v21 = xpc_dictionary_get_string(v20, "ContainerMetadataUMARelativePath");
    v22 = xpc_dictionary_get_string(v20, "ContainerMetadataCreator");
    dictionary = xpc_dictionary_get_string(v20, "ContainerMetadataSandboxToken");
    v23 = v21;
    v24 = v28;
    v26 = value;
    v25 = v30;
    v27 = !v31;
  }

  else
  {
    v26 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v25 = 0;
    v27 = 1;
  }

  v4 = 1;
  v34 = 1;
  result = container_object_create(v7, v16, v18, v32, v25, v14, string, v26, dictionary, v27, v24, v23, v22, &v34);
  if (!result)
  {
LABEL_6:
    if (!a1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_ERROR, "Could not decode message into container object: NULL", buf, 2u);
      }

      goto LABEL_16;
    }

    v8 = MEMORY[0x1E12D2400](a1);
    __s = v8;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36 = v8;
      _os_log_error_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_ERROR, "Could not decode message into container object: %{public}s", buf, 0xCu);
      if (!v8)
      {
LABEL_16:
        result = 0;
        if (a2)
        {
          *a2 = v4;
        }

        goto LABEL_18;
      }
    }

    else if (!v8)
    {
      goto LABEL_16;
    }

    free(v8);
    memset_s(&__s, 8uLL, 0, 8uLL);
    goto LABEL_16;
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *container_error_create_with_message(uint64_t a1, uint64_t a2, char *a3, int a4, const char *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x103004097251A26uLL);
  v11 = v10;
  if (v10)
  {
    container_error_reinitialize(v10, a1, a2, a3, a4, a5);
  }

  return v11;
}

uint64_t container_sandbox_extension_consume(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (__initialize_container_sandbox_extensions_onceToken != -1)
  {
    dispatch_once(&__initialize_container_sandbox_extensions_onceToken, &__block_literal_global_780);
  }

  os_unfair_lock_lock(&container_global_sandbox_extension_per_persona_lock);
  if (!a3)
  {
    a3 = "default";
  }

  v7 = os_map_str_find();
  __s = v7;
  if (!v7)
  {
    v7 = malloc_type_calloc(1uLL, 0x3E0uLL, 0x10800409B94441AuLL);
    __s = v7;
    os_map_str_init();
    v7[3] = 60;
    strdup(a3);
    os_map_str_insert();
  }

  v8 = os_map_str_find();
  if (v8)
  {
    v9 = &v7[2 * v8];
    v10 = *(v9 + 6);
    if (v10 != -1)
    {
      if (a4)
      {
        v9[3] = 0xFFFFFFFFLL;
      }

      else
      {
        *(v9 + 6) = v10 + 1;
      }
    }

    v21 = *(v9 + 7);
  }

  else
  {
    v11 = v7[3];
    if (v11)
    {
      v12 = 0;
      v13 = 5;
      while (LODWORD(v7[v13]))
      {
        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v14 = malloc_type_calloc(1uLL, 32 * v11 + 32, 0x99939DE6uLL);
      memcpy(v14, v7, 16 * v11 + 32);
      v14[3] = 2 * v7[3];
      free(v7);
      memset_s(&__s, 8uLL, 0, 8uLL);
      __s = v14;
      os_map_str_entry();
      os_map_str_delete();
      os_map_str_insert();
      v7 = __s;
      v12 = v11;
    }

    v15 = sandbox_extension_consume();
    if (v15 < 0)
    {
      v25 = *__error();
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v26 = qword_1ED452B28;
      if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
      {
        v27 = *__error();
        *buf = 67109120;
        LODWORD(v30) = v27;
        _os_log_error_impl(&dword_1DF28A000, v26, OS_LOG_TYPE_ERROR, "container_sandbox_extension_consume(): error %d consuming sandbox extension", buf, 8u);
      }

      *__error() = v25;
      v21 = -1;
    }

    else
    {
      v16 = v15;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v17 = &v7[2 * v12];
      v18 = qword_1ED452B28;
      if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = a2;
        v31 = 2048;
        v32 = v16;
        _os_log_impl(&dword_1DF28A000, v18, OS_LOG_TYPE_DEFAULT, "Consumed sandbox extension; path = [%s], handle = %lld", buf, 0x16u);
      }

      v17[4] = v16;
      if (a4)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      *(v17 + 10) = v19;
      v20 = next_temp_key;
      if (a4)
      {
        v20 = 0;
      }

      *(v17 + 11) = v20;
      ++next_temp_key;
      strndup(a2, 0x400uLL);
      os_map_str_insert();
      v21 = *(v17 + 11);
    }
  }

  v22 = *__error();
  os_unfair_lock_unlock(&container_global_sandbox_extension_per_persona_lock);
  *__error() = v22;
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

void ____initialize_container_sandbox_extensions_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  os_map_str_init();
  __initialize_container_sandbox_extensions_queue = dispatch_queue_create("com.apple.containermanager.sandbox-extensions", 0);
  v0 = notify_register_dispatch("com.apple.containermanagerd.user-invalidated", &__initialize_container_sandbox_extensions_notify_token, __initialize_container_sandbox_extensions_queue, &__block_literal_global_5);
  if (v0)
  {
    v1 = v0;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v2 = qword_1ED452B28;
    if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_error_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_ERROR, "Could not register for user invalidated notifications; status = %u", v4, 8u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void container_object_free(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  __s = a1;
  if (a1)
  {
    if (a1[11])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v2 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v14 = "container_object_free";
        _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: Attempt to free container_object_t that is owned by a container_query_t. Ignoring.", buf, 0xCu);
      }
    }

    else
    {
      if (*(a1 + 110) == 1)
      {
        container_sandbox_extension_revoke(a1[5], *(a1 + 25));
      }

      v3 = a1[3];
      if (v3)
      {
        free(v3);
        memset_s(a1 + 3, 8uLL, 0, 8uLL);
      }

      v4 = a1[4];
      if (v4)
      {
        free(v4);
        memset_s(a1 + 4, 8uLL, 0, 8uLL);
      }

      v5 = a1[7];
      if (v5)
      {
        free(v5);
        memset_s(a1 + 7, 8uLL, 0, 8uLL);
      }

      v6 = a1[5];
      if (v6)
      {
        free(v6);
        memset_s(a1 + 5, 8uLL, 0, 8uLL);
      }

      v7 = a1[6];
      if (v7)
      {
        free(v7);
        memset_s(a1 + 6, 8uLL, 0, 8uLL);
      }

      v8 = a1[10];
      if (v8)
      {
        xpc_release(v8);
        memset_s(a1 + 10, 8uLL, 0, 8uLL);
      }

      v9 = a1[8];
      if (v9)
      {
        free(v9);
        memset_s(a1 + 8, 8uLL, 0, 8uLL);
      }

      v10 = a1[9];
      if (v10)
      {
        free(v10);
        memset_s(a1 + 9, 8uLL, 0, 8uLL);
      }

      free(a1);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t container_sandbox_extension_revoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = a2;
    if (__initialize_container_sandbox_extensions_onceToken != -1)
    {
      dispatch_once(&__initialize_container_sandbox_extensions_onceToken, &__block_literal_global_780);
    }

    os_unfair_lock_lock(&container_global_sandbox_extension_per_persona_lock);
    if (v2)
    {
      v3 = os_map_str_find();
      if (v3)
      {
        v4 = *(v3 + 24);
        if (v4)
        {
          v5 = 0;
          v6 = v3 + 32;
          while (1)
          {
            v7 = *(v6 + 8);
            if (v7)
            {
              if (*(v6 + 12) == v2)
              {
                break;
              }
            }

            ++v5;
            v6 += 16;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v7 == 1)
          {
            v17 = 0;
            v18 = &v17;
            v19 = 0x2000000000;
            v20 = 0;
            os_map_str_foreach();
            if (v18[3])
            {
              os_map_str_delete();
              v8 = v18[3];
              if (v8)
              {
                free(v8);
                memset_s(v18 + 3, 8uLL, 0, 8uLL);
              }
            }

            v9 = *v6;
            v10 = sandbox_extension_release();
            if (v10)
            {
              if (v10 < 0)
              {
                if (container_log_handle_for_category_onceToken != -1)
                {
                  dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
                }

                v11 = qword_1ED452B28;
                if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
                {
                  v12 = *__error();
                  *buf = 67109120;
                  LODWORD(v22) = v12;
                  _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "container_sandbox_extension_revoke(): error %d releasing sandbox extension", buf, 8u);
                }
              }
            }

            else
            {
              if (container_log_handle_for_category_onceToken != -1)
              {
                dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
              }

              v13 = qword_1ED452B28;
              if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_DEFAULT))
              {
                v14 = *v6;
                *buf = 134217984;
                v22 = v14;
                _os_log_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_DEFAULT, "Revoked sandbox extension; handle = %lld", buf, 0xCu);
              }
            }

            *v6 = 0;
            *(v6 + 8) = 0;
            _Block_object_dispose(&v17, 8);
          }

          else
          {
            *(v6 + 8) = v7 - 1;
          }
        }
      }
    }

LABEL_28:
    os_unfair_lock_unlock(&container_global_sandbox_extension_per_persona_lock);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void container_log_error(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 <= 70)
  {
    if (a3 > 23)
    {
      if (a3 != 24)
      {
        if (a3 != 38)
        {
          if (a3 == 55)
          {
            if (a2)
            {
              if (container_log_handle_for_category_onceToken != -1)
              {
                dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
              }

              v5 = container_log_handle_for_category_logHandles;
              if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
              {
                v24 = 136446210;
                v25 = a1;
                v6 = "%{public}s: client is not entitled";
LABEL_54:
                v8 = v5;
                v9 = 12;
                goto LABEL_55;
              }

              goto LABEL_89;
            }

            if (container_log_handle_for_category_onceToken != -1)
            {
              dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
            }

            v16 = container_log_handle_for_category_logHandles;
            if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            v24 = 136446210;
            v25 = a1;
            v17 = "%{public}s: client is not entitled";
            goto LABEL_85;
          }

          goto LABEL_56;
        }

        if (a2)
        {
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v16 = container_log_handle_for_category_logHandles;
          if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v24 = 136446210;
          v25 = a1;
          v17 = "%{public}s: client sent invalid parameters";
        }

        else
        {
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v16 = container_log_handle_for_category_logHandles;
          if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v24 = 136446210;
          v25 = a1;
          v17 = "%{public}s: client sent invalid parameters";
        }

LABEL_85:
        v21 = v16;
        v22 = 12;
        goto LABEL_88;
      }

      goto LABEL_30;
    }

    if (a3 == 1)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v15 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_89;
      }

      v24 = 136446210;
      v25 = a1;
      v12 = "%{public}s: success";
      v13 = v15;
      v14 = 12;
LABEL_38:
      _os_log_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_DEFAULT, v12, &v24, v14);
      goto LABEL_89;
    }

    if (a3 != 21)
    {
LABEL_56:
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v18 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_89;
      }

      if (a3 > 0xA9)
      {
        v19 = "UNKNOWN";
      }

      else
      {
        v19 = off_1E86AD8A8[a3];
      }

      v24 = 136446722;
      v25 = a1;
      v26 = 2050;
      v27 = a3;
      v28 = 2082;
      v29 = v19;
      v17 = "%{public}s: error = ((container_error_t)%{public}llu) %{public}s";
      v21 = v18;
      v22 = 32;
      goto LABEL_88;
    }

LABEL_30:
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v10 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_89;
    }

    v11 = off_1E86AD8A8[a3];
    v24 = 136446722;
    v25 = a1;
    v26 = 2050;
    v27 = a3;
    v28 = 2082;
    v29 = v11;
    v12 = "%{public}s: error = ((container_error_t)%{public}llu) %{public}s";
    v13 = v10;
    v14 = 32;
    goto LABEL_38;
  }

  if (a3 <= 75)
  {
    if (a3 != 71)
    {
      if (a3 == 74)
      {
        if (a2)
        {
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v7 = container_log_handle_for_category_logHandles;
          if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
          {
            v24 = 136446466;
            v25 = a1;
            v26 = 1026;
            LODWORD(v27) = geteuid();
            v6 = "%{public}s: client uid is not permitted, uid = %{public}u";
            v8 = v7;
            v9 = 18;
LABEL_55:
            _os_log_fault_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_FAULT, v6, &v24, v9);
            goto LABEL_89;
          }

          goto LABEL_89;
        }

        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v20 = container_log_handle_for_category_logHandles;
        if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        v24 = 136446466;
        v25 = a1;
        v26 = 1026;
        LODWORD(v27) = geteuid();
        v17 = "%{public}s: client uid is not permitted, uid = %{public}u";
        v21 = v20;
        v22 = 18;
LABEL_88:
        _os_log_error_impl(&dword_1DF28A000, v21, OS_LOG_TYPE_ERROR, v17, &v24, v22);
        goto LABEL_89;
      }

      goto LABEL_56;
    }

    goto LABEL_30;
  }

  if (a3 == 76)
  {
    if (a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = container_log_handle_for_category_logHandles;
      if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
      {
        v24 = 136446210;
        v25 = a1;
        v6 = "%{public}s: client had incorrect persona during request";
        goto LABEL_54;
      }

      goto LABEL_89;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_89;
    }

    v24 = 136446210;
    v25 = a1;
    v17 = "%{public}s: client had incorrect persona during request";
    goto LABEL_85;
  }

  if (a3 == 115)
  {
    if (a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = container_log_handle_for_category_logHandles;
      if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
      {
        v24 = 136446210;
        v25 = a1;
        v6 = "%{public}s: client had ambiguous persona during request";
        goto LABEL_54;
      }

      goto LABEL_89;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_89;
    }

    v24 = 136446210;
    v25 = a1;
    v17 = "%{public}s: client had ambiguous persona during request";
    goto LABEL_85;
  }

  if (a3 != 151)
  {
    goto LABEL_56;
  }

  if (!a2)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_89;
    }

    v24 = 136446210;
    v25 = a1;
    v17 = "%{public}s: client persona did not propagate to container manager";
    goto LABEL_85;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v5 = container_log_handle_for_category_logHandles;
  if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
  {
    v24 = 136446210;
    v25 = a1;
    v6 = "%{public}s: client persona did not propagate to container manager";
    goto LABEL_54;
  }

LABEL_89:
  v23 = *MEMORY[0x1E69E9840];
}

unint64_t container_object_get_persona_unique_string(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 40);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 40);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_persona_unique_string_of_container_at_index(bytes_ptr, v5);
}

void *__container_object_separate_from_query(void *result)
{
  if (!result[11])
  {
    return result;
  }

  v1 = result;
  uuid = container_object_get_uuid(result);
  identifier = container_object_get_identifier(v1);
  v17 = container_object_get_class(v1);
  uid = container_object_get_uid(v1);
  path = container_object_get_path(v1);
  unique_path_component = container_object_get_unique_path_component(v1);
  persona_unique_string = container_object_get_persona_unique_string(v1);
  v7 = *(v1 + 88);
  if (v7 && (v8 = *(v7 + 136)) != 0)
  {
    dictionary = xpc_array_get_dictionary(v8, *(v1 + 96));
    v7 = *(v1 + 88);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dictionary = *(v1 + 80);
    if (!v7)
    {
LABEL_9:
      string = *(v1 + 48);
      goto LABEL_10;
    }
  }

  v10 = *(v7 + 128);
  if (!v10)
  {
    goto LABEL_9;
  }

  string = xpc_array_get_string(v10, *(v1 + 96));
LABEL_10:
  is_new = container_object_is_new(v1);
  is_transient = container_object_is_transient(v1);
  uuid_copy(v1, uuid);
  *(v1 + 24) = strdup(identifier);
  if (path)
  {
    v14 = strdup(path);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + 32) = v14;
  *(v1 + 56) = strdup(unique_path_component);
  if (persona_unique_string)
  {
    v15 = strdup(persona_unique_string);
  }

  else
  {
    v15 = 0;
  }

  *(v1 + 40) = v15;
  *(v1 + 16) = v17;
  *(v1 + 104) = uid;
  if (dictionary)
  {
    result = xpc_retain(dictionary);
  }

  else
  {
    result = 0;
  }

  *(v1 + 80) = result;
  if (!*(v1 + 48))
  {
    if (string)
    {
      result = strndup(string, 0x800uLL);
    }

    else
    {
      result = 0;
    }

    *(v1 + 48) = result;
  }

  *(v1 + 108) = is_new;
  *(v1 + 109) = is_transient;
  *(v1 + 88) = 0;
  *(v1 + 96) = -1;
  return result;
}

uint64_t c_array_append(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 8);
    if (v5 != *a1)
    {
      v9 = *(a1 + 24);
LABEL_16:
      memcpy(&v9[v3 * v5], a2, v3);
      ++*(a1 + 8);
      return 1;
    }

    if (v5)
    {
      v6 = 2 * v5;
    }

    else
    {
      v6 = 16;
    }

    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = malloc_type_calloc(v7, v3, 0xA30DF6BuLL);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, *(a1 + 24), *(a1 + 16) * *a1);
      v10 = *(a1 + 24);
      if (v10)
      {
        free(v10);
        memset_s((a1 + 24), 8uLL, 0, 8uLL);
      }

      *(a1 + 24) = v9;
      *a1 = v6;
      v5 = *(a1 + 8);
      v3 = *(a1 + 16);
      goto LABEL_16;
    }

    c_array_deinit(a1);
  }

  return 0;
}

char *container_object_set_path(void *a1, const char *a2)
{
  __container_object_separate_from_query(a1);
  v6 = a1[4];
  v5 = (a1 + 4);
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

char *container_frozenset_create(int a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  v83 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v76 = 0;
  v77 = 8;
  v78 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 24;
  v74 = 0;
  v68[0] = 0;
  v68[1] = 0;
  v69 = 8;
  v70 = 0;
  if (!a2)
  {
LABEL_77:
    v43 = 0;
    goto LABEL_78;
  }

  v7 = a7;
  v8 = a1;
  if (!a3)
  {
    v46 = 0;
    v45 = 0;
LABEL_81:
    v49 = container_string_rom_create(v45, v46, 1);
    v43 = v49;
    if (v49)
    {
      v50 = *(v49 + 2);
      v51 = v50 + 24 * v72;
      v52 = v51 + 24;
      if (v7)
      {
        v53 = v7;
        v54 = (*(v7 + 16))(v7, v52);
      }

      else
      {
        v53 = 0;
        v54 = malloc_type_calloc(1uLL, v51 + 24, 0x1000040504FFAC1uLL);
      }

      v44 = v54;
      if (v54)
      {
        *v54 = 1952797507;
        v54[4] = 1;
        v54[5] = v53 != 0;
        v55 = v72;
        *(v54 + 2) = v72;
        *(v54 + 3) = v8;
        *(v54 + 2) = v52;
        memcpy(v54 + 24, v74, v73 * v55);
        v56 = *(v44 + 2);
        v57 = &v44[24 * v56 + 24];
        v58 = *(v43 + 2);
        if (v57)
        {
          v59 = v58 > v50;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          memcpy(&v44[24 * v56 + 24], v43, v58);
          *(v57 + 5) = 1;
        }
      }

      goto LABEL_79;
    }

LABEL_78:
    v44 = 0;
    goto LABEL_79;
  }

  v9 = a2;
  v10 = 0;
  v63 = a3;
  do
  {
    v11 = *(v9 + 8 * v10);
    if (!v11)
    {
      v17 = 0;
      goto LABEL_21;
    }

    uuid = container_object_get_uuid(v11);
    v13 = v72;
    if (!v72)
    {
      goto LABEL_20;
    }

    v14 = uuid;
    v15 = 0;
    while (!v73)
    {
      v16 = 0;
LABEL_14:
      if (!uuid_compare(v14, v16))
      {
        goto LABEL_19;
      }

      v13 = v72;
LABEL_16:
      if (++v15 >= v13)
      {
        goto LABEL_20;
      }
    }

    v16 = &v74[v73 * v15];
    if (!v14 || !v74)
    {
      goto LABEL_14;
    }

    if (*v14 != *v16 || *(v14 + 8) != *(v16 + 1))
    {
      goto LABEL_16;
    }

LABEL_19:
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_20:
    v17 = *(v9 + 8 * v10);
LABEL_21:
    v79 = v17;
    memset(dst, 0, sizeof(dst));
    v82 = 0;
    v18 = container_object_get_uuid(v17);
    uuid_copy(dst, v18);
    if (v17)
    {
      identifier = container_object_get_identifier(v17);
      persona_unique_string = container_object_get_persona_unique_string(v17);
    }

    else
    {
      identifier = 0;
      persona_unique_string = 0;
    }

    unique_path_component = container_object_get_unique_path_component(v17);
    if (a4)
    {
      path = container_object_get_path(v17);
    }

    else
    {
      path = 0;
    }

    if (a5)
    {
      user_managed_assets_relative_path = container_object_get_user_managed_assets_relative_path(v17);
    }

    else
    {
      user_managed_assets_relative_path = 0;
    }

    if (a6)
    {
      creator_codesign_identifier = container_object_get_creator_codesign_identifier(v17);
    }

    else
    {
      creator_codesign_identifier = 0;
    }

    if (identifier)
    {
      v25 = identifier;
    }

    else
    {
      v25 = &unk_1DF2BBE1A;
    }

    v80 = v25;
    if (!c_array_append(&v75, &v80))
    {
      goto LABEL_56;
    }

    v26 = persona_unique_string ? persona_unique_string : &unk_1DF2BBE1A;
    v80 = v26;
    if (c_array_append(&v75, &v80) && (unique_path_component ? (v27 = unique_path_component) : (v27 = &unk_1DF2BBE1A), (v80 = v27, c_array_append(&v75, &v80)) && (path ? (v28 = path) : (v28 = &unk_1DF2BBE1A), (v80 = v28, c_array_append(&v75, &v80)) && (user_managed_assets_relative_path ? (v29 = user_managed_assets_relative_path) : (v29 = &unk_1DF2BBE1A), v80 = v29, c_array_append(&v75, &v80)))))
    {
      v30 = unique_path_component;
      v31 = &unk_1DF2BBE1A;
      v32 = creator_codesign_identifier;
      if (creator_codesign_identifier)
      {
        v31 = creator_codesign_identifier;
      }

      v80 = v31;
      v67 = c_array_append(&v75, &v80);
    }

    else
    {
LABEL_56:
      v32 = creator_codesign_identifier;
      v30 = unique_path_component;
      v67 = 0;
    }

    v33 = user_managed_assets_relative_path;
    v34 = path;
    if (v17)
    {
      v35 = container_object_get_class(v17) & 0x3F;
    }

    else
    {
      v35 = 0;
    }

    v36 = identifier == 0;
    is_new = container_object_is_new(v17);
    is_transient = container_object_is_transient(v17);
    if (is_new)
    {
      v39 = 128;
    }

    else
    {
      v39 = 0;
    }

    v40 = v35 | v39;
    if (is_transient)
    {
      v41 = 64;
    }

    else
    {
      v41 = 0;
    }

    LODWORD(v82) = (v36 << 8) | ((persona_unique_string == 0) << 9) | ((v30 == 0) << 10) | ((v34 == 0) << 11) | ((v33 == 0) << 12) | ((v32 == 0) << 13) | v40 | v41;
    if (v17)
    {
      uid = container_object_get_uid(v17);
    }

    else
    {
      uid = 0;
    }

    HIDWORD(v82) = uid;
    if (!v67)
    {
      goto LABEL_77;
    }

    if ((c_array_append(&v71, dst) & 1) == 0)
    {
      goto LABEL_77;
    }

    v9 = a2;
    if (!c_array_append(v68, &v79))
    {
      goto LABEL_77;
    }

LABEL_72:
    ++v10;
  }

  while (v10 != v63);
  v43 = 0;
  if (v77 && v73)
  {
    v44 = 0;
    if (v69)
    {
      v45 = v78;
      v46 = v76;
      v8 = a1;
      v7 = a7;
      goto LABEL_81;
    }
  }

  else
  {
    v44 = 0;
  }

LABEL_79:
  c_array_deinit(&v75);
  c_array_deinit(&v71);
  c_array_deinit(v68);
  container_string_rom_destroy(v43);
  v47 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t container_object_get_uuid(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v3);
      if (bytes_ptr && (v5 = *(v1 + 96), bytes_ptr[2] > v5))
      {
        return &bytes_ptr[6 * v5 + 6];
      }

      else
      {
        return 0;
      }
    }
  }

  return v1;
}

unint64_t container_object_get_identifier(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 24);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 24);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_identifier_of_container_at_index(bytes_ptr, v5);
}

void container_query_set_uid(uint64_t a1, int a2)
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
        v8 = "container_query_set_uid";
        _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query has already been executed", &v7, 0xCu);
      }

      _container_query_set_usage_error(a1, 111);
    }

    else
    {
      _container_query_log_if_error(*a1, "container_query_set_uid");
      *(a1 + 48) = a2;
      *(a1 + 16) |= 8uLL;
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
      v8 = "container_query_set_uid";
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL container_query_iterate_results_sync(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2000000000;
    v16 = 1;
    _container_query_log_if_error(*a1, "container_query_iterate_results_sync");
    if (!*(a1 + 120) || _container_query_needs_to_be_executed(a1))
    {
      v4 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __container_query_iterate_results_sync_block_invoke;
      block[3] = &unk_1E86AE698;
      block[4] = &buf;
      block[5] = a1;
      block[6] = "container_query_iterate_results_sync";
      os_activity_apply(v4, block);
    }

    if (*(*(&buf + 1) + 24) == 1)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 120));
      if (bytes_ptr)
      {
        v6 = bytes_ptr[2];
        if (v6)
        {
          v7 = 0;
          v8 = 0;
          v9 = 0;
          while (1)
          {
            if (v9)
            {
              if (v9[11])
              {
                goto LABEL_13;
              }

              container_object_free(v9);
            }

            v9 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F00403C1846C7uLL);
LABEL_13:
            v9[11] = a1;
            *(v9 + 24) = v8;
            if ((*(a2 + 16))(a2, v9))
            {
              v7 = ++v8 >= v6;
              if (v6 != v8)
              {
                continue;
              }
            }

            v9[11] = 0;
            *(v9 + 24) = 0;
            container_object_free(v9);
            goto LABEL_23;
          }
        }
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

LABEL_23:
    container_log_ext_error("container_query_iterate_results_sync", gClientFaultLoggingEnabled, *a1);
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
      *(&buf + 4) = "container_query_iterate_results_sync";
      _os_log_fault_impl(&dword_1DF28A000, v10, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: query parameter is NULL", &buf, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL __container_query_iterate_results_sync_block_invoke(void *a1)
{
  result = _container_query_execute(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

unint64_t container_object_get_unique_path_component(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 56);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 56);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_unique_path_component_of_container_at_index(bytes_ptr, v5);
}

uint64_t container_object_is_new(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && (v3 = *(v2 + 120)) != 0)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    if (bytes_ptr && (v5 = *(a1 + 96), bytes_ptr[2] > v5))
    {
      v6 = LOBYTE(bytes_ptr[6 * v5 + 10]) >> 7;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = *(a1 + 108);
  }

  return v6 & 1;
}

uint64_t container_object_is_transient(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && (v3 = *(v2 + 120)) != 0)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    if (bytes_ptr && (v5 = *(a1 + 96), bytes_ptr[2] > v5))
    {
      v6 = (LOBYTE(bytes_ptr[6 * v5 + 10]) >> 6) & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = *(a1 + 109);
  }

  return v6 & 1;
}

void container_error_free(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  __s = a1;
  if (a1)
  {
    if (a1[5])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v2 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v9 = "container_error_free";
        v3 = "%s: SPI MISUSE: Attempt to free container_error_extended_t that is owned by a container_query_t. Ignoring.";
LABEL_17:
        _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, v3, buf, 0xCu);
      }
    }

    else if (a1[6])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v2 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v9 = "container_error_free";
        v3 = "%s: SPI MISUSE: Attempt to free container_error_extended_t that is owned by a container_references_t. Ignoring.";
        goto LABEL_17;
      }
    }

    else if (a1[7])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v2 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v9 = "container_error_free";
        v3 = "%s: SPI MISUSE: Attempt to free container_error_extended_t that is owned by a container_notify_t. Ignoring.";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[2];
      if (v4)
      {
        free(v4);
        memset_s(a1 + 2, 8uLL, 0, 8uLL);
      }

      v5 = a1[4];
      if (v5)
      {
        free(v5);
        memset_s(a1 + 4, 8uLL, 0, 8uLL);
      }

      free(a1);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

_DWORD *container_object_get_class(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 16);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 16);
  }

  result = xpc_data_get_bytes_ptr(v3);
  if (result)
  {
    v5 = *(a1 + 96);
    if (result[2] <= v5)
    {
      return 0;
    }

    else
    {
      return (result[6 * v5 + 10] & 0x3FLL);
    }
  }

  return result;
}

_DWORD *container_object_get_uid(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 104);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 104);
  }

  result = xpc_data_get_bytes_ptr(v3);
  if (result)
  {
    v5 = *(a1 + 96);
    if (result[2] <= v5)
    {
      return 0;
    }

    else
    {
      return result[6 * v5 + 11];
    }
  }

  return result;
}

char *container_string_rom_create(const char **a1, size_t count, int a3)
{
  v3 = 0;
  v144 = 0;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = count == 0;
  }

  v5 = !v4;
  v6 = 0;
  if (count == -1 || (v5 & 1) != 0)
  {
    goto LABEL_184;
  }

  v7 = count;
  if (count > 2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (count)
  {
    v9 = a1;
    v10 = count;
    v11 = malloc_type_calloc(count, 0x20uLL, 0x105004026DBB1D4uLL);
    v6 = v11;
    v144 = v11;
    if (v11)
    {
      v12 = v11 + 8;
      v13 = v7;
      while (1)
      {
        v3 = *v9;
        if (!*v9)
        {
          break;
        }

        v14 = strlen(*v9);
        *(v12 - 1) = v3;
        *v12 = v14 + 1;
        v12 += 4;
        ++v9;
        if (!--v13)
        {
          goto LABEL_19;
        }
      }

LABEL_55:
      v6 = 0;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_184;
  }

  v10 = 0;
  v6 = 0;
LABEL_19:
  v15 = 0;
  v138 = vdupq_n_s64(v10 - 1);
  while (1)
  {
    if (!v7)
    {
      goto LABEL_43;
    }

    v16 = 0;
    do
    {
      v17 = &v6[32 * v16];
      if (v8)
      {
        v18 = *(v17 + 1);
        v19 = v18 + (v15 << 7);
        if (v18 >= 1)
        {
          v20 = *v17;
          do
          {
            v21 = *v20++;
            v19 = 257 * v19 + v21;
          }

          while (v20 < *v17 + v18);
        }

        *(v17 + 2) = (v19 << (v18 & 0x1F)) + v19;
      }

      *(v17 + 6) = -1;
      ++v16;
    }

    while (v16 != v10);
    if (v7 <= 1)
    {
LABEL_43:
      v29 = 0;
      if (!v8)
      {
        goto LABEL_58;
      }

      goto LABEL_44;
    }

    __s = 0;
    v22 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
    __s = v22;
    if (!v22)
    {
      goto LABEL_54;
    }

    v23 = 0;
    v24 = v22 + 2;
    v25 = xmmword_1DF2B93D0;
    v26 = xmmword_1DF2B93C0;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v138, v25));
      if (vuzp1_s16(v27, *v25.i8).u8[0])
      {
        *(v24 - 2) = v23;
      }

      if (vuzp1_s16(v27, *&v25).i8[2])
      {
        *(v24 - 1) = v23 + 1;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v138, *&v26))).i32[1])
      {
        *v24 = v23 + 2;
        v24[1] = v23 + 3;
      }

      v23 += 4;
      v28 = vdupq_n_s64(4uLL);
      v26 = vaddq_s64(v26, v28);
      v25 = vaddq_s64(v25, v28);
      v24 += 4;
    }

    while (((v10 + 3) & 0x1FFFFFFFCLL) != v23);
    v142 = 0;
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 0x40000000;
    __compar[2] = __container_string_rom_create_block_invoke;
    __compar[3] = &__block_descriptor_tmp_927;
    __compar[4] = v6;
    __compar[5] = &v142;
    qsort_b(v22, v10, 4uLL, __compar);
    if (__s)
    {
      free(__s);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if ((v8 & v142 & 1) == 0)
    {
      break;
    }

    if (++v15 == 1024)
    {
      goto LABEL_54;
    }
  }

  v29 = v15 & 0x3FF;
  if (!v8)
  {
LABEL_58:
    v3 = 0;
    v139 = 0;
    goto LABEL_59;
  }

LABEL_44:
  v30 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
  __s = v30;
  if (!v30)
  {
    goto LABEL_54;
  }

  v31 = 0;
  v32 = v6 + 24;
  v33 = v10;
  do
  {
    if (*v32 == -1)
    {
      *(v30 + v31++) = *(v32 - 1);
    }

    v32 += 8;
    --v33;
  }

  while (v33);
  v139 = v31 > 2;
  if (v31 <= 2)
  {
    free(v30);
    memset_s(&__s, 8uLL, 0, 8uLL);
    v3 = 0;
    if (!v7)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  v3 = container_perfect_hash_create(v30, v31, 2uLL);
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (!v3)
  {
LABEL_54:
    v3 = 0;
    goto LABEL_55;
  }

LABEL_59:
  if (!v7)
  {
LABEL_66:
    v35 = 0;
    v34 = 0;
    goto LABEL_67;
  }

LABEL_60:
  v34 = 0;
  v35 = 0;
  v36 = v6 + 24;
  v37 = v10;
  do
  {
    if (*v36 == -1)
    {
      v35 = v34;
      v34 += *(v36 - 2);
    }

    v36 += 8;
    --v37;
  }

  while (v37);
LABEL_67:
  v38 = flsl(v35);
  v140[0] = 0;
  v140[2] = 0;
  HIBYTE(v140[0]) = v38;
  v140[1] = v7;
  v39 = v38;
  v40 = v140;
  if (v3)
  {
    v41 = (v3[5] + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = flsl(v7 - 1);
    v43 = *(v3 + 2);
    if ((*(v3 + 6) & 1) == 0)
    {
      v43 += (v43 + 3) >> 2;
      if (v43 != 3 * ((v43 * 0x5555555555555556uLL) >> 64))
      {
        LODWORD(v43) = 3 * ((v43 * 0x5555555555555556uLL) >> 64) + 3;
      }
    }

    v40 = &v140[(v43 * v42 + 63) >> 6] + v41;
  }

  v44 = &v40[v34 + 24 + (((v10 * v38 + 63) >> 3) & 0x3FFFFFFFF8) - v140];
  v45 = malloc_type_calloc(1uLL, v44, 0x1000040504FFAC1uLL);
  v6 = v45;
  if (v45)
  {
    *v45 = 1297044051;
    v45[4] = 1;
    v45[6] = v139;
    v45[7] = v38;
    *(v45 + 2) = v7;
    *(v45 + 6) = v29;
    *(v45 + 2) = v44;
    v46 = v45 + 24;
    v47 = v45 == -24 || !v139;
    v48 = v139;
    if ((v47 & 1) == 0)
    {
      memcpy(v45 + 24, v3, v3[5]);
      v6[29] = 1;
      v48 = v6[6];
    }

    v133 = 0;
    if (v48 && v6 != -24)
    {
      v133 = &v6[((*(v6 + 8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24];
    }

    v136 = flsl(*(v6 + 2) - 1);
    v49 = v6[6];
    if (v6[6])
    {
      v50 = v46 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v52 = (*(v6 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = flsl(*(v6 + 2) - 1);
      v54 = *(v6 + 8);
      if ((v6[30] & 1) == 0)
      {
        v54 += (v54 + 3) >> 2;
        if (v54 != 3 * ((v54 * 0x5555555555555556uLL) >> 64))
        {
          LODWORD(v54) = 3 * ((v54 * 0x5555555555555556uLL) >> 64) + 3;
        }
      }

      v51 = v52 + 8 * ((v54 * v53 + 63) >> 6);
      v49 = v6[6];
    }

    v55 = *(v6 + 2);
    v56 = v6[7];
    if (v49)
    {
      v57 = v46 == 0;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      v58 = 0;
      if (!v7)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v59 = v6[7];
      v60 = v51;
      v61 = (*(v6 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = flsl(v55 - 1);
      v63 = *(v6 + 8);
      if ((v6[30] & 1) == 0)
      {
        v63 += (v63 + 3) >> 2;
        if (v63 != 3 * ((v63 * 0x5555555555555556uLL) >> 64))
        {
          LODWORD(v63) = 3 * ((v63 * 0x5555555555555556uLL) >> 64) + 3;
        }
      }

      v58 = v61 + 8 * ((v63 * v62 + 63) >> 6);
      v51 = v60;
      v56 = v59;
      if (!v7)
      {
        goto LABEL_184;
      }
    }

    v129 = v6;
    v134 = v3;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = (v56 * v55 + 63) >> 3;
    v68 = v136;
    v69 = &v46[v51];
    v70 = &v46[v58 + (v67 & 0x3FFFFFFFF8)];
    v71 = -1;
    if (v39 == 64)
    {
      v72 = -1;
    }

    else
    {
      v72 = ~(-1 << v39);
    }

    if (v136 != 64)
    {
      v71 = ~(-1 << v136);
    }

    if (v39)
    {
      v73 = v69 == 0;
    }

    else
    {
      v73 = 0;
    }

    v137 = ~v72;
    v74 = v73 || v39 > 0x40;
    if (v133)
    {
      v75 = 1;
    }

    else
    {
      v75 = v68 == 0;
    }

    v130 = ~v71;
    v131 = v71;
    v76 = !v75 || v68 > 0x40;
    v132 = v76;
    v135 = v70;
    do
    {
      v77 = v144;
      v78 = *&v144[v64 + 24];
      if (v78 == -1)
      {
        if (v74)
        {
          goto LABEL_190;
        }

        v85 = (v65 & 0x3F) + v39;
        if (v85)
        {
          v86 = v70 - v135;
          v87 = (v65 >> 3) & 0xFFFFFFFFFFFFFF8;
          if (v85 > 0x40)
          {
            v109 = v87 + 8;
            v82 = __CFADD__(v109, v69);
            v110 = &v69[v109];
            if (v82 || (v110 + 7) < 8)
            {
LABEL_187:
              __assert_rtn("container_bitvector_set", "container_bitvector.h", 180, "((void)container_bitvector_set(): index too large for array, 0)");
            }

            v111 = v86 & v72;
            v112 = __ROR8__(v111, v85);
            if (((v85 - 64) & 0xFFFFFFFFFFFFFFBFLL) != 0)
            {
              v111 = v112;
            }

            v113.i64[0] = v72 >> v85;
            v113.i64[1] = v72 << -v85;
            *(v110 - 8) = vbslq_s8(v113, vdupq_n_s64(v111), *(v110 - 8));
          }

          else
          {
            v82 = __CFADD__(v87, v69);
            v88 = &v69[v87];
            if (v82 || v88 + 7 < 8)
            {
LABEL_188:
              __assert_rtn("container_bitvector_set", "container_bitvector.h", 165, "((void)container_bitvector_set(): index too large for array, 0)");
            }

            v89 = *v88;
            v90 = __ROR8__(*v88, -v85);
            if (v85 != 64)
            {
              v89 = v90;
            }

            v91 = v89 & v137 | v86 & v72;
            v92 = __ROR8__(v91, v85);
            if ((v85 & 0x3F) != 0)
            {
              v93 = v92;
            }

            else
            {
              v93 = v91;
            }

            *v88 = v93;
          }
        }

        memcpy(v70, *&v77[v64], *&v77[v64 + 8]);
        v70 += *&v144[v64 + 8];
        if (v139)
        {
          v114 = container_perfect_hash_index_of(v134, *&v144[v64 + 16]);
          if ((v114 & 0x8000000000000000) != 0)
          {
            _os_crash();
            __break(1u);
LABEL_194:
            __assert_rtn("container_bitvector_set", "container_bitvector.h", 144, "((void)container_bitvector_set(): index too large for element width, 0)");
          }

          if (v132)
          {
LABEL_190:
            __assert_rtn("container_bitvector_set", "container_bitvector.h", 139, "((void)container_bitvector_set(): bad argument, 0)");
          }

          if (!is_mul_ok(v114, v68))
          {
            goto LABEL_194;
          }

          v115 = ((v114 * v68) & 0x3F) + v68;
          if (v115)
          {
            v116 = ((v114 * v68) >> 3) & 0x1FFFFFFFFFFFFFF8;
            if (v115 > 0x40)
            {
              v123 = v116 + 8;
              v82 = __CFADD__(v123, v133);
              v124 = v123 + v133;
              if (v82 || v124 + 7 < 8)
              {
                goto LABEL_187;
              }

              v125 = __ROR8__(v131 & v66, v115);
              if (((v115 - 64) & 0xFFFFFFFFFFFFFFBFLL) != 0)
              {
                v126 = v125;
              }

              else
              {
                v126 = v131 & v66;
              }

              v127.i64[0] = v131 >> v115;
              v127.i64[1] = v131 << -v115;
              *(v124 - 8) = vbslq_s8(v127, vdupq_n_s64(v126), *(v124 - 8));
            }

            else
            {
              v82 = __CFADD__(v116, v133);
              v117 = (v116 + v133);
              if (v82 || v117 + 7 < 8)
              {
                goto LABEL_188;
              }

              v118 = *v117;
              v119 = __ROR8__(*v117, -v115);
              if (v115 != 64)
              {
                v118 = v119;
              }

              v120 = v118 & v130 | v131 & v66;
              v121 = __ROR8__(v120, v115);
              if ((v115 & 0x3F) != 0)
              {
                v122 = v121;
              }

              else
              {
                v122 = v120;
              }

              *v117 = v122;
            }
          }
        }
      }

      else
      {
        if (v74)
        {
          __assert_rtn("container_bitvector_get", "container_bitvector.h", 80, "((void)container_bitvector_get(): bad argument, 0)");
        }

        v79 = v78 * v39;
        v80 = (v79 & 0x3F) + v39;
        if (v80)
        {
          v81 = (v79 >> 3) & 0xFFFFFFFF8;
          if (v80 > 0x40)
          {
            v94 = v81 + 8;
            v82 = __CFADD__(v94, v69);
            v95 = &v69[v94];
            if (v82 || (v95 + 7) < 8)
            {
              __assert_rtn("container_bitvector_get", "container_bitvector.h", 113, "((void)container_bitvector_get(): index too large for array, 0)");
            }

            v84 = (*(v95 - 1) << (v80 - 64)) | (*v95 >> 1 >> ~(v80 - 64));
          }

          else
          {
            v82 = __CFADD__(v81, v69);
            v83 = &v69[v81];
            if (v82 || (v83 + 7) < 8)
            {
              __assert_rtn("container_bitvector_get", "container_bitvector.h", 104, "((void)container_bitvector_get(): index too large for array, 0)");
            }

            v84 = *v83 >> -v80;
          }
        }

        else
        {
          v84 = 0;
        }

        v96 = (v65 & 0x3F) + v39;
        if (v96)
        {
          v97 = v84 & v72;
          v98 = (v65 >> 3) & 0xFFFFFFFFFFFFFF8;
          if (v96 > 0x40)
          {
            v105 = v98 + 8;
            v82 = __CFADD__(v105, v69);
            v106 = &v69[v105];
            if (v82 || (v106 + 7) < 8)
            {
              goto LABEL_187;
            }

            v107 = __ROR8__(v97, v96);
            if (((v96 - 64) & 0xFFFFFFFFFFFFFFBFLL) != 0)
            {
              v97 = v107;
            }

            v108.i64[0] = v72 >> v96;
            v108.i64[1] = v72 << -v96;
            *(v106 - 8) = vbslq_s8(v108, vdupq_n_s64(v97), *(v106 - 8));
          }

          else
          {
            v82 = __CFADD__(v98, v69);
            v99 = &v69[v98];
            if (v82 || v99 + 7 < 8)
            {
              goto LABEL_188;
            }

            v100 = *v99;
            v101 = __ROR8__(*v99, -v96);
            if (v96 != 64)
            {
              v100 = v101;
            }

            v102 = v100 & v137 | v97;
            v103 = __ROR8__(v102, v96);
            if ((v96 & 0x3F) != 0)
            {
              v104 = v103;
            }

            else
            {
              v104 = v102;
            }

            *v99 = v104;
          }
        }
      }

      ++v66;
      v65 += v39;
      v64 += 32;
    }

    while (v10 != v66);
    v3 = v134;
    v6 = v129;
  }

LABEL_184:
  container_perfect_hash_destroy(v3);
  if (v144)
  {
    free(v144);
    memset_s(&v144, 8uLL, 0, 8uLL);
  }

  return v6;
}

uint64_t __container_string_rom_create_block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 == v4)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = v6 + 32 * v3;
  v8 = v6 + 32 * v4;
  v9 = *(v7 + 16);
  v10 = *(v8 + 16);
  if (v9 < v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v11 = *(v7 + 24);
  if (v11 == v4)
  {
    return 0;
  }

  v12 = *(v8 + 24);
  if (v12 == v3)
  {
    return 0;
  }

  if (*v7 == *v8 || (v13 = *(a1 + 40), result = strcmp(*v7, *v8), !result))
  {
    if (v3 >= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = v3;
    }

    if (v11 >= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= v15)
    {
      v14 = v15;
    }

    if (v14 != v3)
    {
      *(v7 + 24) = v14;
    }

    if (v14 != v4)
    {
      *(v8 + 24) = v14;
    }

    if (v11 != -1 && v14 != v11)
    {
      *(v6 + 32 * v11 + 24) = v14;
    }

    result = 0;
    if (v12 != -1 && v14 != v12)
    {
      result = 0;
      *(v6 + 32 * v12 + 24) = v14;
    }
  }

  else
  {
    *v13 = 1;
  }

  return result;
}

void *container_perfect_hash_create(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v3 = 4;
  if (a3 < 4)
  {
    v3 = a3;
  }

  if (!a3)
  {
    v3 = 3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v5 = a2;
  v6 = ((a2 + 3) >> 2) + a2;
  v7 = 3 * ((v6 * 0x5555555555555556uLL) >> 64);
  v118 = v6 == v7;
  v8 = v7 + 3;
  if (v118)
  {
    v9 = ((a2 + 3) >> 2) + a2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  if (v9 < a2)
  {
    return 0;
  }

  v11 = 2 * v9;
  v12 = (v11 + 63) >> 6;
  v13 = 3;
  if (v3 < 3)
  {
    v13 = v3;
  }

  if (v11 >= 0x81)
  {
    v13 = v3;
  }

  if (v11 < 0x41 && v3 > 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13;
  }

  v155 = 2 * v9;
  v16 = (v12 - 1) >> (v15 - 2);
  if (v15 <= 1)
  {
    v16 = 0;
  }

  v17 = 1;
  if (v9 != a2)
  {
    v18 = v16;
    v19 = fls(v9 - a2);
    v16 = v18;
    v17 = v19;
  }

  v154 = v16;
  v20 = 8 * v12 + 48 + ((((v17 * v16) + 63) >> 3) & 0x3FFFFFF8);
  v170[0] = malloc_type_calloc(1uLL, v20, 0x1000040EED21634uLL);
  *v170[0] = 80;
  *(v170[0] + 1) = 72;
  *(v170[0] + 2) = 115;
  *(v170[0] + 3) = 104;
  v21 = v170[0];
  *(v170[0] + 4) = 1;
  if (v15 <= 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  v21[6] = v22;
  v23 = (32 * (v15 & 3)) ^ 0x40;
  if (v15 <= 1)
  {
    v23 = 0;
  }

  v21[7] = v23 & 0xE0 | v17 & 0x1F;
  *(v21 + 2) = a2;
  *(v21 + 5) = v20;
  v24 = malloc_type_calloc(v5, 0x10uLL, 0x1000040451B5BE8uLL);
  __s = v24;
  v156 = v9;
  v25 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  v168 = v25;
  if (!v24 || !v25)
  {
    if (v24)
    {
      free(v24);
      memset_s(&__s, 8uLL, 0, 8uLL);
      v25 = v168;
    }

    if (v25)
    {
      free(v25);
      memset_s(&v168, 8uLL, 0, 8uLL);
    }

    result = v170[0];
    if (!v170[0])
    {
      return result;
    }

    free(v170[0]);
    memset_s(v170, 8uLL, 0, 8uLL);
    return 0;
  }

  v26 = v9 / 3uLL;
LABEL_32:
  while (2)
  {
    bzero(v25, v156);
    v27 = arc4random();
    v28 = arc4random() | (v27 << 32);
    v29 = arc4random();
    v30 = arc4random() | (v29 << 32);
    v31 = arc4random();
    v32 = arc4random();
    v33 = 0;
    v34 = 0;
    v35 = v32 | (v31 << 32);
    do
    {
      v36 = *(a1 + 8 * v34);
      if ((*(v170[0] + 6) & 2) != 0)
      {
        v38 = ((v36 - 0x2152411021524111) ^ 0xE6ADBEEFDEADBEEFLL) + __ROR8__(v36 - 0x2152411021524111, 49);
        v39 = (v38 ^ v28) + __ROR8__(v38, 12);
        v40 = (v39 ^ v28) + __ROR8__(v39, 38);
        v41 = (v40 ^ __ROR8__(v36 - 0x2152411021524111, 49)) + __ROR8__(v40, 13);
        v42 = (v41 ^ __ROR8__(v38, 12)) + __ROR8__(v41, 36);
        v43 = (v42 ^ __ROR8__(v39, 38)) + __ROR8__(v42, 55);
        v44 = (v43 ^ __ROR8__(v40, 13)) + __ROR8__(v43, 17);
        v45 = (v44 ^ __ROR8__(v41, 36)) + __ROR8__(v44, 10);
        v46 = (v45 ^ __ROR8__(v42, 55)) + __ROR8__(v45, 32);
        v37 = __ROR8__((v46 ^ __ROR8__(v43, 17)) + __ROR8__(v46, 39), 1);
      }

      else
      {
        v37 = v36 ^ v28;
      }

      v47 = v37 % v26;
      DWORD1(__s[v33]) = v47;
      ++v168[v47];
      v25 = v168;
      if (v168[v47] == 255)
      {
        goto LABEL_32;
      }

      if ((*(v170[0] + 6) & 2) != 0)
      {
        v49 = ((v36 - 0x2152411021524111) ^ 0xE6ADBEEFDEADBEEFLL) + __ROR8__(v36 - 0x2152411021524111, 49);
        v50 = (v49 ^ v30) + __ROR8__(v49, 12);
        v51 = (v50 ^ v30) + __ROR8__(v50, 38);
        v52 = (v51 ^ __ROR8__(v36 - 0x2152411021524111, 49)) + __ROR8__(v51, 13);
        v53 = (v52 ^ __ROR8__(v49, 12)) + __ROR8__(v52, 36);
        v54 = (v53 ^ __ROR8__(v50, 38)) + __ROR8__(v53, 55);
        v55 = (v54 ^ __ROR8__(v51, 13)) + __ROR8__(v54, 17);
        v56 = (v55 ^ __ROR8__(v52, 36)) + __ROR8__(v55, 10);
        v57 = (v56 ^ __ROR8__(v53, 55)) + __ROR8__(v56, 32);
        v48 = __ROR8__((v57 ^ __ROR8__(v54, 17)) + __ROR8__(v57, 39), 1);
      }

      else
      {
        v48 = v36 ^ v30;
      }

      v58 = v48 % v26 + v26;
      DWORD2(__s[v33]) = v58;
      ++v25[v58];
      v25 = v168;
      if (v168[v58] == 255)
      {
        goto LABEL_32;
      }

      if ((*(v170[0] + 6) & 2) != 0)
      {
        v60 = v36 - 0x2152411021524111;
        v61 = (v60 ^ 0xE6ADBEEFDEADBEEFLL) + __ROR8__(v60, 49);
        v62 = (v61 ^ v35) + __ROR8__(v61, 12);
        v63 = (v62 ^ v35) + __ROR8__(v62, 38);
        v64 = (v63 ^ __ROR8__(v60, 49)) + __ROR8__(v63, 13);
        v65 = (v64 ^ __ROR8__(v61, 12)) + __ROR8__(v64, 36);
        v66 = (v65 ^ __ROR8__(v62, 38)) + __ROR8__(v65, 55);
        v67 = (v66 ^ __ROR8__(v63, 13)) + __ROR8__(v66, 17);
        v68 = (v67 ^ __ROR8__(v64, 36)) + __ROR8__(v67, 10);
        v69 = (v68 ^ __ROR8__(v65, 55)) + __ROR8__(v68, 32);
        v59 = __ROR8__((v69 ^ __ROR8__(v66, 17)) + __ROR8__(v69, 39), 1);
      }

      else
      {
        v59 = v36 ^ v35;
      }

      v70 = v59 % v26 + 2 * v26;
      HIDWORD(__s[v33]) = v70;
      ++v25[v70];
      v25 = v168;
      if (v168[v70] == 255)
      {
        goto LABEL_32;
      }

      LODWORD(__s[v33++]) = v34++;
    }

    while (v5 != v34);
    v71 = v5;
    do
    {
      if (!v71)
      {
        goto LABEL_68;
      }

      v72 = 0;
      v73 = 0;
      do
      {
        v74 = __s[v72];
        v75 = *(&__s[v72] + 1);
        if (v168[DWORD1(v74)] == 1 || v168[v75] == 1 || v168[HIDWORD(v74)] == 1)
        {
          --v168[DWORD1(v74)];
          --v168[v75];
          --v168[HIDWORD(v74)];
          if (v72 != --v71)
          {
            v76 = __s;
            v77 = __s[v71];
            __s[v71] = v74;
            v76[v72] = v77;
          }

          --v72;
          v73 = 1;
        }

        ++v72;
      }

      while (v72 < v71);
    }

    while ((v73 & 1) != 0);
    if (v71)
    {
      v164 = 0;
      v165 = &v164;
      v166 = 0x2000000000;
      v167 = 0;
      v162[0] = 0;
      v162[1] = v162;
      v162[2] = 0x2000000000;
      v163 = 0;
      v160[0] = 0;
      v160[1] = v160;
      v160[2] = 0x2000000000;
      v161 = 0;
      __compar[0] = MEMORY[0x1E69E9820];
      __compar[1] = 0x40000000;
      __compar[2] = __container_perfect_hash_create_block_invoke;
      __compar[3] = &unk_1E86AEBB8;
      __compar[4] = &v164;
      __compar[5] = v162;
      __compar[6] = v160;
      __compar[7] = a1;
      qsort_b(__s, v71, 0x10uLL, __compar);
      if (*(v165 + 24) != 1)
      {
        _Block_object_dispose(v160, 8);
        _Block_object_dispose(v162, 8);
        _Block_object_dispose(&v164, 8);
        v25 = v168;
        continue;
      }

      goto LABEL_148;
    }

    break;
  }

LABEL_68:
  v79 = v170[0];
  *(v170[0] + 2) = v28;
  v79[3] = v30;
  v79[4] = v35;
  v80 = v168;
  v157 = v79;
  v158 = v168;
  v81 = v79 + 6;
  memset(v79 + 6, 255, 8 * v12);
  v82 = __s + 3;
  do
  {
    v83 = *(v82 - 2);
    v84 = (v83 >> 2) & 0x3FFFFFF8;
    v85 = (v81 + v84);
    if (__CFADD__(v84, v81) || v85 + 7 < 8 || (v86 = *(v82 - 1), v87 = (v86 >> 2) & 0x3FFFFFF8, v88 = (v81 + v87), __CFADD__(v87, v81)) || v88 + 7 < 8 || (v89 = *v82, v90 = (v89 >> 2) & 0x3FFFFFF8, v91 = (v81 + v90), __CFADD__(v90, v81)) || v91 + 7 < 8)
    {
      __assert_rtn("container_bitvector_get", "container_bitvector.h", 104, "((void)container_bitvector_get(): index too large for array, 0)");
    }

    v92 = 2 * (v83 & 0x1F);
    v93 = 62 - v92;
    v94 = *v85 >> (62 - v92);
    v95 = 2 * (v86 & 0x1F);
    v96 = *v88 >> (62 - v95);
    v97 = 2 * (v89 & 0x1F);
    v98 = *v91 >> (62 - v97);
    v99 = (v96 & 3) + (v94 & 3) + (v98 & 3);
    if (v80[v83])
    {
      if (v80[v86])
      {
        if (v80[v89])
        {
          _os_crash();
          __break(1u);
LABEL_157:
          __assert_rtn("container_bitvector_set", "container_bitvector.h", 139, "((void)container_bitvector_set(): bad argument, 0)");
        }

        v100 = v97 + 2;
        v101 = 11 - v99;
        v102 = v98 | (*v91 << (v97 + 2));
        if (v97 == 62)
        {
          v103 = *v91;
        }

        else
        {
          v103 = v102;
        }

        v93 = 62 - v97;
        v85 = (v81 + v90);
      }

      else
      {
        v100 = v95 + 2;
        v101 = 10 - v99;
        if (v95 == 62)
        {
          v103 = *v88;
        }

        else
        {
          v103 = v96 | (*v88 << (v95 + 2));
        }

        v93 = 62 - v95;
        v85 = v88;
      }
    }

    else
    {
      v100 = v92 + 2;
      v101 = 9 - v99;
      if (v92 == 62)
      {
        v103 = *v85;
      }

      else
      {
        v103 = v94 | (*v85 << (v92 + 2));
      }
    }

    v82 += 4;
    v104 = v103 & 0xFFFFFFFFFFFFFFFCLL | (v101 % 3u);
    if ((v100 & 0x3E) != 0)
    {
      v104 = (v104 >> v100) | (v104 << v93);
    }

    v80[v83] = 1;
    *v85 = v104;
    v80[v86] = 1;
    v80[v89] = 1;
    --v5;
  }

  while (v5);
  free(v80);
  memset_s(&v158, 8uLL, 0, 8uLL);
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  result = v170[0];
  if (*(v170[0] + 6))
  {
    LODWORD(v105) = v155;
    if (v155)
    {
      v106 = 0;
      LODWORD(v105) = 0;
      v107 = 0;
      v108 = *(v170[0] + 7);
      v109 = (v108 >> 5) & 3;
      v110 = 1 << v109;
      v111 = *(v170[0] + 2);
      v112 = v111 + ((v111 + 3) >> 2);
      if (v112 != 3 * ((v112 * 0x5555555555555556uLL) >> 64))
      {
        LODWORD(v112) = 3 * ((v112 * 0x5555555555555556uLL) >> 64) + 3;
      }

      v113 = (2 * v112 + 63) >> 6;
      v114 = (v113 - 1) >> v109;
      v115 = v170[0] + 8 * v113 + 48;
      v116 = v108 & 0x1F;
      v117 = v116 != 0;
      v118 = v114 == 0;
      if (v114)
      {
        v117 = 0;
      }

      v119 = -1 << v116;
      v120 = ~(-1 << v116);
      if (v118)
      {
        v115 = 0;
      }

      v121 = (v157 + 56);
      do
      {
        v122 = 0;
        if (v109 && v106 + 1 < v12)
        {
          v123 = vcnt_s8((*v121 & (*v121 >> 1) & 0x5555555555555555));
          v123.i16[0] = vaddlv_u8(v123);
          v122 = v123.i32[0];
        }

        v124 = 0;
        if (v109 >= 2 && v106 + 2 < v12)
        {
          v125 = vcnt_s8((v121[1] & (v121[1] >> 1) & 0x5555555555555555));
          v125.i16[0] = vaddlv_u8(v125);
          v124 = v125.i32[0];
        }

        v126 = 0;
        if (v109 >= 2 && v106 + 3 < v12)
        {
          v127 = vcnt_s8((v121[2] & (v121[2] >> 1) & 0x5555555555555555));
          v127.i16[0] = vaddlv_u8(v127);
          v126 = v127.i32[0];
        }

        v128 = 0;
        if (v109 == 3 && v106 + 4 < v12)
        {
          v129 = vcnt_s8((v121[3] & (v121[3] >> 1) & 0x5555555555555555));
          v129.i16[0] = vaddlv_u8(v129);
          v128 = v129.i32[0];
        }

        v130 = 0;
        if (v109 == 3 && v106 + 5 < v12)
        {
          v131 = vcnt_s8((v121[4] & (v121[4] >> 1) & 0x5555555555555555));
          v131.i16[0] = vaddlv_u8(v131);
          v130 = v131.i32[0];
        }

        v132 = 0;
        if (v109 == 3 && v106 + 6 < v12)
        {
          v133 = vcnt_s8((v121[5] & (v121[5] >> 1) & 0x5555555555555555));
          v133.i16[0] = vaddlv_u8(v133);
          v132 = v133.i32[0];
        }

        v134 = 0;
        if (v109 == 3 && v106 + 7 < v12)
        {
          v135 = vcnt_s8((v121[6] & (v121[6] >> 1) & 0x5555555555555555));
          v135.i16[0] = vaddlv_u8(v135);
          v134 = v135.i32[0];
        }

        v136 = vcnt_s8((*(v121 - 1) & (*(v121 - 1) >> 1) & 0x5555555555555555));
        v136.i16[0] = vaddlv_u8(v136);
        v105 = (v105 + v136.i32[0] + v122 + v124 + v126 + v128 + v130 + v132 + v134);
        if (v107 < v154)
        {
          if (v117)
          {
            goto LABEL_157;
          }

          v137 = v116 * v107;
          v138 = (v137 & 0x3F) + v116;
          if (v138)
          {
            v139 = (v137 >> 3) & 0x3FFFFFFF8;
            if (v138 > 0x40)
            {
              v147 = v139 + 8;
              v140 = __CFADD__(v147, v115);
              v148 = &v115[v147];
              if (v140 || (v148 + 7) < 8)
              {
                __assert_rtn("container_bitvector_set", "container_bitvector.h", 180, "((void)container_bitvector_set(): index too large for array, 0)");
              }

              v149 = __ROR8__(v105 & v120, v138);
              if (((v138 - 64) & 0xFFFFFFFFFFFFFFBFLL) != 0)
              {
                v150 = v149;
              }

              else
              {
                v150 = v105 & v120;
              }

              v151 = v120 << -v138;
              v152 = *(v148 - 1) & (v119 >> v138) | v150 & (v120 >> v138);
              v153 = *v148 & ~v151 | v150 & v151;
              *(v148 - 1) = v152;
              *v148 = v153;
            }

            else
            {
              v140 = __CFADD__(v139, v115);
              v141 = &v115[v139];
              if (v140 || (v141 + 7) < 8)
              {
                __assert_rtn("container_bitvector_set", "container_bitvector.h", 165, "((void)container_bitvector_set(): index too large for array, 0)");
              }

              v142 = *v141;
              v143 = __ROR8__(*v141, -v138);
              if (v138 != 64)
              {
                v142 = v143;
              }

              v144 = v142 & v119 | v105 & v120;
              v145 = __ROR8__(v144, v138);
              if ((v138 & 0x3F) != 0)
              {
                v146 = v145;
              }

              else
              {
                v146 = v144;
              }

              *v141 = v146;
            }
          }

          ++v107;
        }

        v106 += v110;
        v121 += v110;
      }

      while (v106 < v12);
    }

    else
    {
      LODWORD(v111) = *(v170[0] + 2);
    }

    if (v105 != 32 * v12 - v111)
    {
      _os_crash();
      __break(1u);
LABEL_148:
      if (__s)
      {
        free(__s);
        memset_s(&__s, 8uLL, 0, 8uLL);
      }

      if (v168)
      {
        free(v168);
        memset_s(&v168, 8uLL, 0, 8uLL);
      }

      if (v170[0])
      {
        free(v170[0]);
        memset_s(v170, 8uLL, 0, 8uLL);
      }

      _Block_object_dispose(v160, 8);
      _Block_object_dispose(v162, 8);
      _Block_object_dispose(&v164, 8);
      return 0;
    }
  }

  return result;
}

uint64_t __container_create_or_lookup_path_for_current_user_block_invoke(uint64_t a1)
{
  result = container_create_or_lookup_path_for_platform(*(a1 + 40), *(a1 + 48), 0, *(a1 + 72), *(a1 + 73), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __container_perfect_hash_create_block_invoke(void *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v6 = a2[2];
  v7 = a3[2];
  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 > v7)
  {
    return 1;
  }

  v8 = a2[3];
  v9 = a3[3];
  if (v8 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 > v9)
  {
    return 1;
  }

  v11 = *a2;
  if (*(a1[7] + 8 * v11) != *(a1[7] + 8 * *a3))
  {
    return 0;
  }

  result = 0;
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = v11;
  *(*(a1[6] + 8) + 24) = *a3;
  return result;
}

uint64_t container_perfect_hash_index_of(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((*(a1 + 6) & 2) != 0)
  {
    v6 = ((a2 - 0x2152411021524111) ^ 0xE6ADBEEFDEADBEEFLL) + __ROR8__(a2 - 0x2152411021524111, 49);
    v7 = __ROR8__(v6, 12);
    v8 = (v2 ^ v6) + v7;
    v9 = (v8 ^ v2) + __ROR8__(v8, 38);
    v10 = (v9 ^ __ROR8__(a2 - 0x2152411021524111, 49)) + __ROR8__(v9, 13);
    v11 = (v10 ^ v7) + __ROR8__(v10, 36);
    v12 = (v11 ^ __ROR8__(v8, 38)) + __ROR8__(v11, 55);
    v13 = (v12 ^ __ROR8__(v9, 13)) + __ROR8__(v12, 17);
    v14 = (v13 ^ __ROR8__(v10, 36)) + __ROR8__(v13, 10);
    v15 = (v14 ^ __ROR8__(v11, 55)) + __ROR8__(v14, 32);
    v3 = __ROR8__((v15 ^ __ROR8__(v12, 17)) + __ROR8__(v15, 39), 1);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = (v16 ^ v6) + v7;
    v19 = (v18 ^ v16) + __ROR8__(v18, 38);
    v20 = (v19 ^ __ROR8__(a2 - 0x2152411021524111, 49)) + __ROR8__(v19, 13);
    v21 = (v20 ^ v7) + __ROR8__(v20, 36);
    v22 = (v21 ^ __ROR8__(v18, 38)) + __ROR8__(v21, 55);
    v23 = (v22 ^ __ROR8__(v19, 13)) + __ROR8__(v22, 17);
    v24 = (v23 ^ __ROR8__(v20, 36)) + __ROR8__(v23, 10);
    v25 = (v24 ^ __ROR8__(v21, 55)) + __ROR8__(v24, 32);
    v4 = __ROR8__((v25 ^ __ROR8__(v22, 17)) + __ROR8__(v25, 39), 1);
    v26 = (v17 ^ v6) + v7;
    v27 = (v26 ^ v17) + __ROR8__(v26, 38);
    v28 = (v27 ^ __ROR8__(a2 - 0x2152411021524111, 49)) + __ROR8__(v27, 13);
    v29 = (v28 ^ __ROR8__(v6, 12)) + __ROR8__(v28, 36);
    v30 = (v29 ^ __ROR8__(v26, 38)) + __ROR8__(v29, 55);
    v31 = (v30 ^ __ROR8__(v27, 13)) + __ROR8__(v30, 17);
    v32 = (v31 ^ __ROR8__(v28, 36)) + __ROR8__(v31, 10);
    v33 = (v32 ^ __ROR8__(v29, 55)) + __ROR8__(v32, 32);
    v5 = __ROR8__((v33 ^ __ROR8__(v30, 17)) + __ROR8__(v33, 39), 1);
  }

  else
  {
    v3 = v2 ^ a2;
    v4 = *(a1 + 24) ^ a2;
    v5 = *(a1 + 32) ^ a2;
  }

  v34 = *(a1 + 8);
  v35 = v34 + ((v34 + 3) >> 2);
  v36 = 3 * ((v35 * 0x5555555555555556uLL) >> 64);
  v37 = v35 == v36;
  v38 = v36 + 3;
  if (!v37)
  {
    LODWORD(v35) = v38;
  }

  v39 = v35 / 3uLL;
  v40 = v3 % v39;
  v41 = a1 + 48;
  v42 = (v40 >> 2) & 0x1FFFFFF8;
  v43 = __CFADD__(v42, a1 + 48);
  v44 = (v42 + a1 + 48);
  if (v43)
  {
    goto LABEL_55;
  }

  if (v44 + 7 < 8)
  {
    goto LABEL_55;
  }

  v45 = v4 % (v35 / 3uLL) + v35 / 3uLL;
  v46 = (v45 >> 2) & 0x3FFFFFF8;
  v43 = __CFADD__(v46, v41);
  v47 = (v46 + v41);
  if (v43)
  {
    goto LABEL_55;
  }

  if (v47 + 7 < 8)
  {
    goto LABEL_55;
  }

  v48 = v5 % v39 + 2 * v39;
  v49 = (v48 >> 2) & 0x7FFFFFF8;
  v43 = __CFADD__(v49, v41);
  v50 = (v49 + v41);
  if (v43 || v50 + 7 < 8)
  {
    goto LABEL_55;
  }

  v51 = (*v44 >> (~(2 * v40) & 0x3E)) & 3;
  v52 = (*v47 >> (~(2 * v45) & 0x3E)) & 3;
  v53 = (*v50 >> (~(2 * v48) & 0x3E)) & 3;
  v54 = v52 + v51 + v53;
  if (v54 > 8)
  {
    return -1;
  }

  if (((1 << v54) & 0x49) != 0)
  {
    if (v51 != 3)
    {
      goto LABEL_20;
    }

    return -1;
  }

  if (((1 << v54) & 0x92) == 0)
  {
    LODWORD(v40) = v48;
    if (v53 != 3)
    {
      goto LABEL_20;
    }

    return -1;
  }

  LODWORD(v40) = v45;
  if (v52 == 3)
  {
    return -1;
  }

LABEL_20:
  if (v35 <= v40)
  {
    _os_crash();
    __break(1u);
LABEL_57:
    _os_crash();
    __break(1u);
    goto LABEL_58;
  }

  if (*(a1 + 6))
  {
    v56 = *(a1 + 7);
    v57 = (v56 >> 5) & 3;
    v58 = v40 >> 5 >> ((*(a1 + 7) >> 5) & 3);
    v59 = v58 << ((*(a1 + 7) >> 5) & 3);
    v60 = (64 << ((*(a1 + 7) >> 5) & 3)) - 2 * (((32 << ((*(a1 + 7) >> 5) & 3)) - 1) & v40);
    if (v57 > 1)
    {
      if (v57 != 2)
      {
        _os_crash();
        __break(1u);
        goto LABEL_60;
      }

      if (v60 <= 0x3F)
      {
        v63 = (v41 + 8 * v59);
        v64 = vcnt_s8((v63[1] & (2 * v63[1]) & 0xAAAAAAAAAAAAAAAALL | *v63 & (*v63 >> 1) & 0x5555555555555555));
        v64.i16[0] = vaddlv_u8(v64);
        v65 = v64.i32[0];
        v66 = vcnt_s8(((0xAAAAAAAAAAAAAAAALL << v60) & (2 * v63[3]) & v63[3] | v63[2] & (v63[2] >> 1) & 0x5555555555555555));
        v66.i16[0] = vaddlv_u8(v66);
        v67 = v65 + v66.i32[0];
LABEL_33:
        LODWORD(v40) = v40 - v67;
        goto LABEL_34;
      }

      if (v60 <= 0x7F)
      {
        v78 = (v41 + 8 * v59);
        v79 = vcnt_s8((v78[1] & (2 * v78[1]) & 0xAAAAAAAAAAAAAAAALL | *v78 & (*v78 >> 1) & 0x5555555555555555));
        v79.i16[0] = vaddlv_u8(v79);
        v80 = v79.i32[0];
        v81 = vcnt_s8(((0x5555555555555555 << v60) & (v78[2] >> 1) & v78[2]));
        v81.i16[0] = vaddlv_u8(v81);
        v67 = v81.i32[0] + v80;
        goto LABEL_33;
      }

      if (v60 <= 0xBF)
      {
        goto LABEL_25;
      }

      if (v60 > 0xFF)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v61 = v60 > 0x3F;
      if (v57)
      {
        if (v60 <= 0x3F)
        {
LABEL_25:
          v62 = ((0xAAAAAAAAAAAAAAAALL << v60) & (2 * *(v41 + 8 * v59 + 8)) & *(v41 + 8 * v59 + 8) | *(v41 + 8 * v59) & (*(v41 + 8 * v59) >> 1) & 0x5555555555555555);
LABEL_32:
          v68 = vcnt_s8(v62);
          v68.i16[0] = vaddlv_u8(v68);
          v67 = v68.i32[0];
          goto LABEL_33;
        }

        v61 = v60 > 0x7F;
      }

      if (v61)
      {
LABEL_34:
        if (!v58)
        {
          goto LABEL_48;
        }

        v69 = (2 * v35 + 63) >> 6;
        if ((v69 - 1) >> v57)
        {
          v70 = v41 + 8 * v69;
          v71 = v56 & 0x1F;
LABEL_39:
          v72 = v71 * (v58 - 1);
          v73 = (v72 & 0x3F) + v71;
          if (!v73)
          {
LABEL_47:
            LODWORD(v40) = v40 - (v73 & ~(-1 << v71));
LABEL_48:
            if (v34 > v40)
            {
              return v40;
            }

            goto LABEL_57;
          }

          v74 = (v72 >> 3) & 0x3FFFFFFF8;
          if (v73 > 0x40)
          {
            v76 = v74 + 8;
            v43 = __CFADD__(v76, v70);
            v77 = (v76 + v70);
            if (v43 || v77 + 7 < 8)
            {
LABEL_58:
              __assert_rtn("container_bitvector_get", "container_bitvector.h", 113, "((void)container_bitvector_get(): index too large for array, 0)");
            }

            v73 = (*(v77 - 1) << (v73 - 64)) | (*v77 >> 1 >> ~(v73 - 64));
            goto LABEL_47;
          }

          v43 = __CFADD__(v74, v70);
          v75 = (v74 + v70);
          if (!v43 && v75 + 7 >= 8)
          {
            v73 = *v75 >> -v73;
            goto LABEL_47;
          }

LABEL_55:
          __assert_rtn("container_bitvector_get", "container_bitvector.h", 104, "((void)container_bitvector_get(): index too large for array, 0)");
        }

        if ((v56 & 0x1F) == 0)
        {
          v71 = 0;
          v70 = 0;
          goto LABEL_39;
        }

LABEL_60:
        __assert_rtn("container_bitvector_get", "container_bitvector.h", 80, "((void)container_bitvector_get(): bad argument, 0)");
      }
    }

    v62 = ((0x5555555555555555 << v60) & (*(v41 + 8 * v59) >> 1) & *(v41 + 8 * v59));
    goto LABEL_32;
  }

  return v40;
}

uint64_t container_create_or_lookup_path_for_platform(uint64_t a1, uint64_t a2, int a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = 1;
  v14 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_path_for_platform", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __container_create_or_lookup_path_for_platform_block_invoke;
  v17[3] = &unk_1E86AEC90;
  v17[6] = a1;
  v17[7] = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v17[4] = v21;
  v17[5] = &v22;
  v17[8] = a6;
  v17[9] = a7;
  os_activity_apply(v14, v17);
  os_release(v14);
  v15 = v23[3];
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);
  return v15;
}

_BYTE *container_perfect_hash_destroy(_BYTE *result)
{
  __s = result;
  if (result)
  {
    if (!result[5])
    {
      free(result);
      return memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  return result;
}

void __container_create_or_lookup_path_for_platform_block_invoke(uint64_t a1)
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

  v6 = _container_legacy_lookup(v2, v5, v4, *(a1 + 80), *(a1 + 84), *(a1 + 85), *(a1 + 64), (*(*(a1 + 32) + 8) + 24));
  v7 = v6;
  if (v6)
  {
    path = container_object_get_path(v6);
    if (path)
    {
      *(*(*(a1 + 40) + 8) + 24) = strndup(path, 0x400uLL);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 53;
    }
  }

  container_object_free(v7);
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9 != 1)
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      *v10 = v9;
      v9 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  v11 = gClientFaultLoggingEnabled;

  container_log_error("container_create_or_lookup_path_for_platform", v11, v9);
}

void *c_array_deinit(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a1 + 3;
  result = a1[3];
  if (result)
  {
    free(result);

    return memset_s(v2, 8uLL, 0, 8uLL);
  }

  return result;
}

_BYTE *container_string_rom_destroy(_BYTE *result)
{
  __s = result;
  if (result)
  {
    if (!result[5])
    {
      free(result);
      return memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  return result;
}

void *container_free_array_of_containers(void *result, uint64_t a2)
{
  __s = result;
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = result;
      do
      {
        v5 = *v4++;
        container_object_free(v5);
        --v2;
      }

      while (v2);
    }

    free(v3);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

void container_log_ext_error(uint64_t a1, int a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    v22 = a1;
    goto LABEL_11;
  }

  v4 = *a3;
  if (*a3 <= 54)
  {
    if (v4 <= 23)
    {
      if (v4 != 1)
      {
        if (v4 != 21)
        {
          goto LABEL_51;
        }

        goto LABEL_23;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v22 = a1;
LABEL_11:
      _os_log_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: success", buf, 0xCu);
      goto LABEL_56;
    }

    if (v4 == 24)
    {
      goto LABEL_23;
    }

    if (v4 != 38)
    {
      goto LABEL_51;
    }

    if (a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v22 = a1;
      v7 = "%{public}s: client sent invalid parameters";
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v22 = a1;
      v7 = "%{public}s: client sent invalid parameters";
    }

    goto LABEL_73;
  }

  if (v4 > 73)
  {
    if (v4 == 74)
    {
      if (!a2)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v17 = container_log_handle_for_category_logHandles;
        if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        *buf = 136446466;
        v22 = a1;
        v23 = 1026;
        LODWORD(v24) = geteuid();
        v7 = "%{public}s: client uid is not permitted, uid = %{public}u";
        v18 = v17;
        v19 = 18;
LABEL_74:
        _os_log_error_impl(&dword_1DF28A000, v18, OS_LOG_TYPE_ERROR, v7, buf, v19);
        goto LABEL_56;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v14 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v22 = a1;
      v23 = 1026;
      LODWORD(v24) = geteuid();
      v11 = "%{public}s: client uid is not permitted, uid = %{public}u";
      v12 = v14;
      v13 = 18;
LABEL_50:
      _os_log_fault_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_FAULT, v11, buf, v13);
      goto LABEL_56;
    }

    if (v4 != 151)
    {
      goto LABEL_51;
    }

    if (a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v22 = a1;
      v11 = "%{public}s: client persona did not propagate to container manager";
      goto LABEL_44;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    v22 = a1;
    v7 = "%{public}s: client persona did not propagate to container manager";
LABEL_73:
    v18 = v6;
    v19 = 12;
    goto LABEL_74;
  }

  if (v4 == 55)
  {
    if (a2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v10 = container_log_handle_for_category_logHandles;
      if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v22 = a1;
      v11 = "%{public}s: client is not entitled";
LABEL_44:
      v12 = v10;
      v13 = 12;
      goto LABEL_50;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles;
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    v22 = a1;
    v7 = "%{public}s: client is not entitled";
    goto LABEL_73;
  }

  if (v4 != 71)
  {
LABEL_51:
    v8 = container_error_copy_unlocalized_description(a3);
    __s = v8;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v15 = container_log_handle_for_category_logHandles;
    if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = a1;
      v23 = 2082;
      v24 = v8;
      _os_log_error_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_ERROR, "%{public}s: error = %{public}s", buf, 0x16u);
      if (!v8)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_23:
  v8 = container_error_copy_unlocalized_description(a3);
  __s = v8;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v9 = container_log_handle_for_category_logHandles;
  if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = a1;
    v23 = 2082;
    v24 = v8;
    _os_log_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: error = %{public}s", buf, 0x16u);
    if (!v8)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_54:
  if (v8)
  {
LABEL_55:
    free(v8);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

LABEL_56:
  v16 = *MEMORY[0x1E69E9840];
}

unsigned __int8 *container_object_copy(uint64_t a1)
{
  uuid = container_object_get_uuid(a1);
  identifier = container_object_get_identifier(a1);
  v18 = container_object_get_class(a1);
  uid = container_object_get_uid(a1);
  path = container_object_get_path(a1);
  unique_path_component = container_object_get_unique_path_component(a1);
  persona_unique_string = container_object_get_persona_unique_string(a1);
  v6 = *(a1 + 88);
  if (v6 && (v7 = *(v6 + 136)) != 0)
  {
    dictionary = xpc_array_get_dictionary(v7, *(a1 + 96));
    v6 = *(a1 + 88);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dictionary = *(a1 + 80);
    if (!v6)
    {
LABEL_8:
      string = *(a1 + 48);
      goto LABEL_9;
    }
  }

  v9 = *(v6 + 128);
  if (!v9)
  {
    goto LABEL_8;
  }

  string = xpc_array_get_string(v9, *(a1 + 96));
LABEL_9:
  is_new = container_object_is_new(a1);
  is_transient = container_object_is_transient(a1);
  user_managed_assets_relative_path = container_object_get_user_managed_assets_relative_path(a1);
  creator_codesign_identifier = container_object_get_creator_codesign_identifier(a1);
  v15 = container_object_create(uuid, identifier, v18, uid, path, unique_path_component, persona_unique_string, dictionary, string, is_new, is_transient, user_managed_assets_relative_path, creator_codesign_identifier, 0);
  v16 = v15;
  if (v15 && *(a1 + 110) == 1)
  {
    container_object_sandbox_extension_activate(v15, *(a1 + 111));
  }

  return v16;
}

void *container_query_free(void *result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    v3 = result + 3;
    v2 = result[3];
    if (v2)
    {
      xpc_release(v2);
      memset_s(v3, 8uLL, 0, 8uLL);
    }

    v4 = v1[5];
    if (v4)
    {
      xpc_release(v4);
      memset_s(v1 + 5, 8uLL, 0, 8uLL);
    }

    v5 = v1[7];
    if (v5)
    {
      free(v5);
      memset_s(v1 + 7, 8uLL, 0, 8uLL);
    }

    v6 = v1[24];
    if (v6)
    {
      free(v6);
      memset_s(v1 + 24, 8uLL, 0, 8uLL);
    }

    _container_query_free_results(v1);
    v7 = *v1;
    if (*v1)
    {
      v7[5] = 0;
      container_error_free(v7);
      *v1 = 0;
    }

    v8 = v1[14];
    if (v8)
    {
      container_free_client(v8);
      v1[14] = 0;
    }

    v9 = v1[22];
    if (v9)
    {
      container_notify_free(v9);
      v1[22] = 0;
    }

    v10 = v1[1];
    if (v10)
    {
      os_release(v10);
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

unint64_t container_audit_token_get_codesign_status(__int128 *a1)
{
  v1 = *(a1 + 5);
  v3 = *a1;
  v4 = a1[1];
  return container_codesign_get_status();
}

double container_client_get_audit_token@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "NULL client when fetching audit token", v7, 2u);
    }

    *&v3 = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

xpc_object_t container_client_copy_entitlement(char *key, uint64_t a2)
{
  if (a2)
  {
    if ((*a2 & 1) != 0 && (value = *(a2 + 88)) != 0)
    {
      if (key)
      {
        value = xpc_dictionary_get_value(value, key);
      }

      return xpc_retain(value);
    }

    else
    {
      v5 = *(a2 + 64);
      v7[0] = *(a2 + 48);
      v7[1] = v5;
      return container_audit_token_copy_entitlement(v7, key);
    }
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "NULL client when fetching entitlements", v7, 2u);
    }

    return 0;
  }
}

void *container_audit_token_copy_entitlement(uint64_t a1, uint64_t a2)
{
  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (!a2 && v3 && MEMORY[0x1E12D2570](v3) != MEMORY[0x1E69E9E80])
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Could not get entitlements for client", v7, 2u);
    }

    xpc_release(v4);
    return 0;
  }

  return v4;
}

unint64_t __container_copy_sandbox_token_block_invoke(unint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    uuid = container_object_get_uuid(*(result + 40));
    result = uuid_is_null(uuid);
    if (!result)
    {
      result = container_object_get_identifier(v1);
      if (result)
      {
        result = container_object_get_class(v1);
        if (result - 1 <= 0xD)
        {
          v4 = *(v2 + 40);
          v5 = *(v4 + 88);
          if (v5 && (v6 = *(v5 + 128)) != 0)
          {
            result = xpc_array_get_string(v6, *(v4 + 96));
          }

          else
          {
            result = *(v4 + 48);
          }

          if (result)
          {
            result = strndup(result, 0x800uLL);
          }

          *(*(*(v2 + 32) + 8) + 24) = result;
        }
      }
    }
  }

  return result;
}

uint64_t container_copy_sandbox_token(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = _os_activity_create(&dword_1DF28A000, "container_copy_sandbox_token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_copy_sandbox_token_block_invoke;
  v5[3] = &unk_1E86AE800;
  v5[4] = &v6;
  v5[5] = a1;
  os_activity_apply(v2, v5);
  os_release(v2);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void _container_query_free_results(void *a1)
{
  v3 = a1 + 15;
  v2 = a1[15];
  if (v2)
  {
    xpc_release(v2);
    memset_s(v3, 8uLL, 0, 8uLL);
  }

  v4 = a1[17];
  if (v4)
  {
    xpc_release(v4);
    memset_s(a1 + 17, 8uLL, 0, 8uLL);
  }

  v5 = a1[16];
  if (v5)
  {
    xpc_release(v5);
    memset_s(a1 + 16, 8uLL, 0, 8uLL);
  }

  v6 = a1[20];
  if (v6)
  {
    *(v6 + 88) = 0;
    *(v6 + 96) = 0;
    container_object_free(v6);
    a1[20] = 0;
  }
}

uint64_t container_copy_object(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    v2 = _os_activity_create(&dword_1DF28A000, "container_copy_object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_copy_object_block_invoke;
    v4[3] = &unk_1E86AE828;
    v4[4] = &v5;
    v4[5] = v1;
    os_activity_apply(v2, v4);
    os_release(v2);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

unsigned __int8 *__container_copy_object_block_invoke(uint64_t a1)
{
  result = container_object_copy(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

unint64_t container_frozenset_get_identifier_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, 6 * a2);
  }
}

unint64_t container_string_rom_string_at_index(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    v5 = *(a1 + 8);
    if (v5 <= a2)
    {
      return 0;
    }

    else
    {
      v6 = a1 + 24;
      if (*(a1 + 6))
      {
        if (a1 == -24)
        {
          v11 = 0;
          v10 = 0;
        }

        else
        {
          v7 = (*(a1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
          v8 = flsl(v5 - 1);
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
          LODWORD(v5) = *(a1 + 8);
          v11 = *(a1 + 6) == 0;
        }
      }

      else
      {
        v10 = 0;
        v11 = 1;
      }

      v12 = 0;
      v13 = *(a1 + 7);
      v14 = *(a1 + 7);
      v15 = v13;
      if (a1 != -24 && !v11)
      {
        v16 = (*(a1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
        v17 = flsl(v5 - 1);
        v18 = *(a1 + 32);
        if ((*(a1 + 30) & 1) == 0)
        {
          v18 += (v18 + 3) >> 2;
          if (v18 != 3 * ((v18 * 0x5555555555555556uLL) >> 64))
          {
            LODWORD(v18) = 3 * ((v18 * 0x5555555555555556uLL) >> 64) + 3;
          }
        }

        v12 = v16 + 8 * ((v18 * v17 + 63) >> 6);
        v14 = *(a1 + 7);
        v15 = *(a1 + 7);
      }

      if (v15 > 0x40 || (v19 = v10 + v6) == 0 && v15)
      {
        __assert_rtn("container_bitvector_get", "container_bitvector.h", 80, "((void)container_bitvector_get(): bad argument, 0)");
      }

      v20 = ((v14 * a2) & 0x3F) + v14;
      if (v20)
      {
        v21 = ((v14 * a2) >> 3) & 0xFFFFFFFFFFFFFF8;
        if (v20 > 0x40)
        {
          v24 = v21 + 8;
          v22 = __CFADD__(v24, v19);
          v25 = (v24 + v19);
          if (v22 || v25 + 7 < 8)
          {
            __assert_rtn("container_bitvector_get", "container_bitvector.h", 113, "((void)container_bitvector_get(): index too large for array, 0)");
          }

          v20 = (*(v25 - 1) << (v20 - 64)) | (*v25 >> 1 >> ~(v20 - 64));
        }

        else
        {
          v22 = __CFADD__(v21, v19);
          v23 = (v21 + v19);
          if (v22 || v23 + 7 < 8)
          {
            __assert_rtn("container_bitvector_get", "container_bitvector.h", 104, "((void)container_bitvector_get(): index too large for array, 0)");
          }

          v20 = *v23 >> -v20;
        }
      }

      v26 = (((v5 * v13 + 63) >> 3) & 0x3FFFFFFFF8) + v6 + v12;
      v27 = -1 << v14;
      if (v15 == 64)
      {
        v28 = -1;
      }

      else
      {
        v28 = ~v27;
      }

      return v26 + (v20 & v28);
    }
  }

  return result;
}

uint64_t container_get_identifier(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_identifier(a1);
  }

  return a1;
}

uint64_t container_get_path(uint64_t a1)
{
  if (a1)
  {
    return container_object_get_path(a1);
  }

  return a1;
}

void __container_xpc_create_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 == MEMORY[0x1E69E9E20])
  {
    xpc_connection_set_event_handler(*(a1 + 32), &__block_literal_global_387);
    os_unfair_lock_lock_with_options();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v9[1];
      v11 = v9[2];
      v12 = gSharedClientConnection[6 * v10 + v11];
      v17 = 134218752;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      _os_log_debug_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu; %p> invalidated", &v17, 0x2Au);
    }

    v4 = *(a1 + 40);
    *(v4 + 25) = 1;
    if (*(v4 + 24) == 1)
    {
      v5 = *(v4 + 16);
      v6 = &gSharedClientConnection[6 * *(v4 + 8)];
      if (v4 == v6[v5])
      {
        v6[v5] = 0;
        --*(v4 + 40);
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v7 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          v14 = v13[1];
          v15 = v13[2];
          v16 = v13[5];
          v17 = 134218752;
          v18 = v13;
          v19 = 2048;
          v20 = v14;
          v21 = 2048;
          v22 = v15;
          v23 = 2048;
          v24 = v16;
          _os_log_debug_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> released (shared; handler); cnt = %lld", &v17, 0x2Au);
        }
      }
    }

    os_unfair_lock_unlock(&gSharedClientConnectionLock);
    container_xpc_release(*(a1 + 40));
  }

  v8 = *MEMORY[0x1E69E9840];
}

unint64_t container_frozenset_get_path_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, 6 * a2 + 3);
  }
}

unint64_t container_frozenset_get_persona_unique_string_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, (6 * a2) | 1);
  }
}

unint64_t container_frozenset_get_unique_path_component_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 4) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, 6 * a2 + 2);
  }
}

unint64_t container_object_get_user_managed_assets_relative_path(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 64);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 64);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_uma_relative_path_of_container_at_index(bytes_ptr, v5);
}

unint64_t container_object_get_creator_codesign_identifier(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return *(a1 + 72);
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return *(a1 + 72);
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  v5 = *(a1 + 96);

  return container_frozenset_get_creator_of_container_at_index(bytes_ptr, v5);
}

unint64_t container_frozenset_get_uma_relative_path_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, 6 * a2 + 4);
  }
}

unint64_t container_frozenset_get_creator_of_container_at_index(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= a2 || (*(a1 + 24 + 24 * a2 + 17) & 0x20) != 0)
  {
    return 0;
  }

  else
  {
    return container_string_rom_string_at_index(a1 + 24 + 24 * v2, 6 * a2 + 5);
  }
}

uint64_t container_system_group_path_for_identifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_system_group_path_for_identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_system_group_path_for_identifier_block_invoke;
  block[3] = &unk_1E86AEDA8;
  block[6] = a1;
  block[7] = a2;
  block[4] = v10;
  block[5] = &v11;
  block[8] = a3;
  os_activity_apply(v6, block);
  os_release(v6);
  v7 = v12[3];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void __container_system_path_for_identifier_block_invoke(void *a1)
{
  v2 = a1[6];
  active_platform = dyld_get_active_platform();
  v4 = _container_legacy_lookup(0xCuLL, v2, 0, active_platform, 1, 0, 0, (*(a1[4] + 8) + 24));
  v5 = v4;
  if (v4)
  {
    path = container_object_get_path(v4);
    if (path)
    {
      *(*(a1[5] + 8) + 24) = strndup(path, 0x400uLL);
    }

    else
    {
      *(*(a1[4] + 8) + 24) = 53;
    }
  }

  container_object_free(v5);
  v7 = *(*(a1[4] + 8) + 24);
  if (v7 != 1)
  {
    v8 = a1[7];
    if (v8)
    {
      *v8 = v7;
      v7 = *(*(a1[4] + 8) + 24);
    }
  }

  v9 = gClientFaultLoggingEnabled;

  container_log_error("container_system_path_for_identifier", v9, v7);
}

char *container_error_reinitialize(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, int a5, const char *a6)
{
  v13 = (a1 + 16);
  v12 = *(a1 + 16);
  if (v12)
  {
    free(v12);
    memset_s(v13, 8uLL, 0, 8uLL);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    free(v14);
    memset_s((a1 + 32), 8uLL, 0, 8uLL);
  }

  *a1 = a3;
  *(a1 + 8) = a2;
  if (__s1)
  {
    v15 = strndup(__s1, 0x400uLL);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = a5;
  if (a6)
  {
    result = strdup(a6);
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t container_xpc_encode_error_as_object(void *a1, uint64_t value, uint64_t a3, const char *a4, int a5, const char *a6)
{
  xpc_dictionary_set_uint64(a1, "ErrorType", value);
  xpc_dictionary_set_uint64(a1, "ErrorCategory", a3);
  if (a4)
  {
    xpc_dictionary_set_string(a1, "ErrorPath", a4);
  }

  xpc_dictionary_set_uint64(a1, "ErrorPOSIXErrno", a5);
  if (a6)
  {
    xpc_dictionary_set_string(a1, "ErrorMessage", a6);
  }

  return 1;
}

uint64_t container_create_or_lookup_path_for_current_user(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v12 = _os_activity_create(&dword_1DF28A000, "container_create_or_lookup_path_for_current_user", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __container_create_or_lookup_path_for_current_user_block_invoke;
  v15[3] = &unk_1E86AECB8;
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

void *container_xpc_decode_error(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E12D2570]() != MEMORY[0x1E69E9E80] || (uint64 = xpc_dictionary_get_uint64(a1, "ErrorType"), v9 = xpc_dictionary_get_uint64(a1, "ErrorCategory"), string = xpc_dictionary_get_string(a1, "ErrorPath"), v11 = xpc_dictionary_get_uint64(a1, "ErrorPOSIXErrno"), v12 = xpc_dictionary_get_string(a1, "ErrorMessage"), !uint64) || (result = container_error_create_with_message(v9, uint64, string, v11, v12)) == 0)
  {
    v4 = MEMORY[0x1E12D2400](a1);
    __s = v4;
    if (!a2)
    {
      goto LABEL_6;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = v4;
      _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Could not decode message into error: %{public}s", buf, 0xCu);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
LABEL_6:
      if (!v4)
      {
LABEL_8:
        result = 0;
        goto LABEL_9;
      }
    }

    free(v4);
    memset_s(&__s, 8uLL, 0, 8uLL);
    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___container_xpc_invalidate_shared_connection_after_timeout_block_invoke_12(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (*(v2 + 32) == *(a1 + 40) && (*(v2 + 25) & 1) == 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = v11[1];
      v13 = v11[2];
      v14 = gSharedClientConnection[6 * v12 + v13];
      v15 = v11[5];
      v19 = 134219008;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      _os_log_debug_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu; %p> canceled after timeout; cnt = %lld", &v19, 0x34u);
    }

    v4 = *(a1 + 32);
    *(v4 + 25) = 1;
    if (*(v4 + 24) == 1)
    {
      v5 = *(v4 + 16);
      v6 = &gSharedClientConnection[6 * *(v4 + 8)];
      if (v4 == *&v6[8 * v5])
      {
        *&v6[8 * v5] = 0;
        --*(v4 + 40);
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v7 = qword_1ED452B30;
        v8 = os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG);
        v4 = *(a1 + 32);
        if (v8)
        {
          v16 = *(v4 + 8);
          v17 = *(v4 + 16);
          v18 = *(v4 + 40);
          v19 = 134218752;
          v20 = v4;
          v21 = 2048;
          v22 = v16;
          v23 = 2048;
          v24 = v17;
          v25 = 2048;
          v26 = v18;
          _os_log_debug_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_DEBUG, "connection <%p/%llu/%llu> released (shared; canceler); cnt = %lld", &v19, 0x2Au);
          v4 = *(a1 + 32);
        }
      }
    }

    xpc_connection_cancel(*v4);
  }

  os_unfair_lock_unlock(&gSharedClientConnectionLock);
  result = container_xpc_release(*(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_pwd_for_uid(int a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_pwd_for_uid_block_invoke;
  v7[3] = &unk_1E86AEC08;
  v8 = a1;
  v7[4] = a3;
  v7[5] = &v9;
  v4 = _container_pwd(&v12, v7);
  v5 = v4;
  if (a2 && (v4 & 1) == 0)
  {
    *a2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t container_system_path_for_identifier(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_system_path_for_identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __container_system_path_for_identifier_block_invoke;
  v7[3] = &unk_1E86AED80;
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

uint64_t _container_pwd(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = (*(gCMPWDSeam + 6))(71);
  v5 = v4;
  if (v4 <= 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = container_log_handle_for_category_logHandles;
    if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      *__s = 134349056;
      *&__s[4] = v5;
      _os_log_error_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_ERROR, "sysconf(_SC_GETPW_R_SIZE_MAX) <= 0: %{public}ld", __s, 0xCu);
    }

    v10 = 99;
LABEL_11:
    v8 = 0;
    v13 = container_error_create_with_message(3, v10, 0, 0, 0);
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  *__s = v6;
  if (!v6)
  {
    v10 = 73;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = (*(a2 + 16))(a2, v6, v5, &v13);
  free(v7);
  memset_s(__s, 8uLL, 0, 8uLL);
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v8 & 1) == 0)
  {
    *a1 = v13;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __container_pwd_for_uid_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v6 = (*(gCMPWDSeam + 4))(*(a1 + 48), &v20, a2, a3, &v19);
  if (!v6)
  {
    if (v19)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(*(a1 + 32) + 16);
      *buf = v21;
      v26 = v23;
      v27 = v20;
      result = v14();
      goto LABEL_17;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v15 = container_log_handle_for_category_logHandles;
    if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 48);
      *buf = 67240192;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_ERROR, "getpwuid_r(%{public}u): user not found", buf, 8u);
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    v9 = 155;
    v10 = 2;
    goto LABEL_7;
  }

  v7 = v6;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v8 = container_log_handle_for_category_logHandles;
  if (os_log_type_enabled(container_log_handle_for_category_logHandles, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 48);
    *buf = 67240448;
    *&buf[4] = v16;
    LOWORD(v26) = 1026;
    *(&v26 + 2) = v7;
    _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "getpwuid_r(%{public}u) returned %{public, darwin.errno}d", buf, 0xEu);
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
  v9 = 99;
  v10 = v7;
LABEL_7:
  v11 = container_error_create_with_message(3, v9, 0, v10, 0);
  result = 0;
  *a4 = v11;
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t container_realpathat(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v12 = 0;
    v11 = xmmword_1DF2B9430;
    bzero(v13, 0x410uLL);
    if (a1 == -2)
    {
      result = (*(gCMFSSeam + 50))(a2, &v11, v13, 1039, 32);
    }

    else
    {
      result = (*(gCMFSSeam + 51))(a1, a2, &v11, v13, 1039, 32);
    }

    v14[1024] = 0;
    if (!result)
    {
      if (strlcpy(a3, v14, a4) <= a4)
      {
        result = 0;
      }

      else
      {
        *a3 = 0;
        v9 = __error();
        result = 0;
        *v9 = 63;
      }
    }
  }

  else
  {
    *__error() = 22;
    result = 0xFFFFFFFFLL;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

char *container_error_copy_unlocalized_description(uint64_t *a1)
{
  v10 = 0;
  if (a1)
  {
    if (a1[4])
    {
      v2 = a1[4];
    }

    if (*a1 <= 0xA9)
    {
      v3 = off_1E86AD8A8[*a1];
    }

    v4 = *(a1 + 6);
    if (v4 < 1)
    {
      v6 = a1[1];
      asprintf(&v10, "%llu→(%llu) %s; %s");
    }

    else
    {
      strerror(v4);
      v8 = a1[2];
      v9 = *(a1 + 6);
      v7 = *a1;
      asprintf(&v10, "%llu→(%llu) %s at path [%s] with errno (%d) %s; %s", a1[1]);
    }
  }

  return v10;
}

xpc_object_t container_xpc_encode_client_onto_message(void *a1, uint64_t a2)
{
  result = container_client_copy_encoded_xpc_object(a2, 0);
  __s = result;
  if (result)
  {
    v4 = result;
    xpc_dictionary_set_value(a1, "ProxyForClient", result);
    xpc_release(v4);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

void container_xpc_encode_container_metadata_as_object(xpc_object_t xdict, BOOL value, char *string, char *a4, xpc_object_t a5, BOOL a6, char *a7, char *a8)
{
  if (a5)
  {
    xpc_dictionary_set_value(xdict, "ContainerMetadataInfo", a5);
  }

  if (string)
  {
    xpc_dictionary_set_string(xdict, "ContainerMetadataPath", string);
  }

  if (a7)
  {
    xpc_dictionary_set_string(xdict, "ContainerMetadataUMARelativePath", a7);
  }

  if (a8)
  {
    xpc_dictionary_set_string(xdict, "ContainerMetadataCreator", a8);
  }

  if (a4)
  {
    xpc_dictionary_set_string(xdict, "ContainerMetadataSandboxToken", a4);
  }

  xpc_dictionary_set_BOOL(xdict, "ContainerMetadataExisted", value);

  xpc_dictionary_set_BOOL(xdict, "ContainerMetadataTransient", a6);
}

void container_xpc_encode_container_as_object(void *a1, char *string, uint64_t a3, unsigned int a4, const unsigned __int8 *a5, const char *a6, const char *a7, void *a8)
{
  xpc_dictionary_set_string(a1, "ContainerIdentifier", string);
  xpc_dictionary_set_uint64(a1, "ContainerClass", a3);
  xpc_dictionary_set_uint64(a1, "ContainerUID", a4);
  xpc_dictionary_set_uuid(a1, "ContainerUUID", a5);
  if (a6)
  {
    xpc_dictionary_set_string(a1, "ContainerUniquePathComponent", a6);
  }

  if (a7)
  {
    xpc_dictionary_set_string(a1, "ContainerPersonaUniqueString", a7);
  }

  if (a8)
  {

    xpc_dictionary_set_value(a1, "ContainerMetadata", a8);
  }
}

void container_xpc_encode_container_object(void *a1, uint64_t a2, char *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  __s = v6;
  is_new = container_object_is_new(a2);
  path = container_object_get_path(a2);
  v9 = *(a2 + 88);
  if (v9 && (v10 = *(v9 + 136)) != 0)
  {
    dictionary = xpc_array_get_dictionary(v10, *(a2 + 96));
  }

  else
  {
    dictionary = *(a2 + 80);
  }

  is_transient = container_object_is_transient(a2);
  user_managed_assets_relative_path = container_object_get_user_managed_assets_relative_path(a2);
  creator_codesign_identifier = container_object_get_creator_codesign_identifier(a2);
  container_xpc_encode_container_metadata_as_object(v6, is_new != 1, path, a3, dictionary, is_transient, user_managed_assets_relative_path, creator_codesign_identifier);
  identifier = container_object_get_identifier(a2);
  v16 = container_object_get_class(a2);
  uid = container_object_get_uid(a2);
  uuid = container_object_get_uuid(a2);
  unique_path_component = container_object_get_unique_path_component(a2);
  persona_unique_string = container_object_get_persona_unique_string(a2);
  container_xpc_encode_container_as_object(a1, identifier, v16, uid, uuid, unique_path_component, persona_unique_string, v6);
  if (v6)
  {
    xpc_release(v6);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }
}

void container_xpc_encode_container_array(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *a2++;
      v7 = xpc_dictionary_create(0, 0, 0);
      container_xpc_encode_container_object(v7, v6, 0);
      xpc_array_append_value(a1, v7);
      xpc_release(v7);
      --v3;
    }

    while (v3);
  }
}

void *container_xpc_decode_create_container_object_array(void *a1, void *a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 1;
  if (MEMORY[0x1E12D2570]() == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(a1);
    if (count <= 1)
    {
      count = 1;
    }

    v11 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
    v6 = v11;
    if (!v11)
    {
      v7 = v15;
      v8 = 73;
      goto LABEL_4;
    }

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __container_xpc_decode_create_container_object_array_block_invoke;
    applier[3] = &unk_1E86AD888;
    applier[4] = &v14;
    applier[5] = &v18;
    applier[6] = v11;
    v12 = xpc_array_apply(a1, applier);
    v7 = v15;
    if (v12)
    {
      if (v15[3] == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
    v7 = v15;
  }

  v8 = 53;
LABEL_4:
  v7[3] = v8;
LABEL_5:
  container_free_array_of_containers(v6, v19[3]);
  v19[3] = 0;
  v6 = 0;
  if (a3)
  {
    *a3 = v15[3];
  }

LABEL_7:
  if (a2)
  {
    *a2 = v19[3];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

unsigned __int8 *__container_xpc_decode_create_container_object_array_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v7 = 1;
  result = container_xpc_decode_container_object(a3, &v7);
  if (result)
  {
    *(a1[6] + 8 * *(*(a1[5] + 8) + 24)) = result;
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 24);
    if (*(a1[6] + 8 * v6))
    {
      *(v5 + 24) = v6 + 1;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = v7;
  }

  return result;
}

uint64_t container_error_get_type(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 1;
  }
}

const char *container_get_error_description(unint64_t a1)
{
  if (a1 > 0xA9)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E86AD8A8[a1];
  }
}

uint64_t container_error_is_file_system_error(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
    case 22:
    case 23:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 41:
    case 42:
    case 43:
    case 48:
    case 56:
    case 61:
    case 62:
    case 63:
    case 64:
    case 66:
    case 70:
    case 71:
    case 82:
    case 84:
    case 85:
    case 86:
    case 87:
    case 92:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 109:
    case 122:
    case 123:
    case 125:
    case 127:
    case 129:
    case 130:
    case 132:
    case 144:
    case 145:
    case 146:
    case 152:
    case 153:
    case 160:
    case 162:
    case 163:
      goto LABEL_2;
    case 10:
    case 11:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 24:
    case 29:
    case 31:
    case 38:
    case 39:
    case 40:
    case 44:
    case 45:
    case 46:
    case 47:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 57:
    case 58:
    case 59:
    case 60:
    case 65:
    case 67:
    case 68:
    case 69:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 83:
    case 88:
    case 89:
    case 90:
    case 91:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 107:
    case 108:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 124:
    case 126:
    case 128:
    case 131:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 161:
      return result;
    default:
      if (a1 == 169)
      {
LABEL_2:
        result = 1;
      }

      break;
  }

  return result;
}

_BYTE *container_frozenset_destroy(_BYTE *result)
{
  __s = result;
  if (result)
  {
    if (!result[5])
    {
      free(result);
      return memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  return result;
}

size_t container_frozenset_copyout_external_bytes(void *__src, void *__dst, size_t a3)
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

_BYTE *container_frozenset_create_from_external_bytes(const void *a1, size_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = malloc_type_calloc(1uLL, a2, 0x92A3A1A4uLL);
    memcpy(v5, a1, a2);
    v5[5] = 0;
    return v5;
  }

  return a1;
}

uint64_t container_frozenset_get_count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t container_frozenset_get_generation(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t container_frozenset_get_uuid_of_container_at_index(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 8) > a2)
    {
      result += 24 * a2 + 24;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t container_frozenset_get_is_new_of_container_at_index(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 24 * a2 + 40) >> 7;
    }
  }

  return result;
}

uint64_t container_frozenset_get_is_transient_of_container_at_index(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return (*(result + 24 * a2 + 40) >> 6) & 1;
    }
  }

  return result;
}

uint64_t container_frozenset_get_container_class_of_container_at_index(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 24 * a2 + 40) & 0x3FLL;
    }
  }

  return result;
}

uint64_t container_frozenset_get_uid_of_container_at_index(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 24 * a2 + 44);
    }
  }

  return result;
}

unint64_t container_frozenset_get_stored_string(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = a1 + 24 * *(a1 + 8);
  v3 = container_string_rom_index_of(v2 + 24, a2);
  if ((v3 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  return container_string_rom_string_at_index(v2 + 24, v3);
}

uint64_t container_frozenset_enumerate_matches(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1 + 24;
  v7 = a1 + 24 + 24 * *(a1 + 8);
  v8 = container_string_rom_index_of(v7, *(a2 + 16));
  if (*(a2 + 16))
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      return 0;
    }
  }

  v9 = container_string_rom_string_at_index(v7, v8);
  __s = 0;
  v10 = *(a2 + 24);
  if (v10)
  {
    count = xpc_array_get_count(v10);
    v13 = (a2 + 32);
    v12 = *(a2 + 32);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  count = 0;
  v13 = (a2 + 32);
  v12 = *(a2 + 32);
  if (v12)
  {
LABEL_8:
    v12 = xpc_array_get_count(v12);
LABEL_9:
    if (v12 + count <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12 + count;
    }

    v31 = 0;
    __s = malloc_type_calloc(v14, 8uLL, 0x50040EE9192B6uLL);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = __container_frozenset_enumerate_matches_block_invoke;
    v27[3] = &unk_1E86ADE00;
    v27[5] = v7;
    v27[6] = __s;
    v27[4] = &v28;
    v15 = *(a2 + 24);
    if (v15)
    {
      xpc_array_apply(v15, v27);
    }

    if (*v13)
    {
      xpc_array_apply(*v13, v27);
    }

    count = v29[3];
    if (count)
    {
      _Block_object_dispose(&v28, 8);
      goto LABEL_18;
    }

    if (__s)
    {
      free(__s);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    _Block_object_dispose(&v28, 8);
    return 0;
  }

LABEL_18:
  v16 = *(a1 + 8);
  v18 = *(a2 + 40);
  v17 = *(a2 + 44);
  if (v16 < v17)
  {
    v17 = *(a1 + 8);
  }

  if (v18 < v17)
  {
    do
    {
      if (*(a2 + 13) == 1 && *a2 != (*(v6 + 24 * v18 + 16) & 0x3F))
      {
        goto LABEL_43;
      }

      if (*(a2 + 14) == 1 && *(v6 + 24 * v18 + 20) != *(a2 + 8))
      {
        goto LABEL_43;
      }

      if (*(a2 + 15) == 1 && *(a2 + 12) != ((*(v6 + 24 * v18 + 16) >> 6) & 1))
      {
        goto LABEL_43;
      }

      if (*(a2 + 16))
      {
        v19 = (*(v6 + 24 * v18 + 17) & 2) != 0 ? 0 : container_string_rom_string_at_index(v6 + 24 * v16, (6 * v18) | 1);
        if (v19 != v9)
        {
          goto LABEL_43;
        }
      }

      if (__s)
      {
        v20 = *(a1 + 8);
        if (v18 >= v20 || (*(v6 + 24 * v18 + 17) & 1) != 0)
        {
          v21 = 0;
          if (!count)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v21 = container_string_rom_string_at_index(v6 + 24 * v20, (6 * v18));
          if (!count)
          {
            goto LABEL_43;
          }
        }

        v22 = __s;
        v23 = count;
        while (v21 != *v22)
        {
          ++v22;
          if (!--v23)
          {
            goto LABEL_43;
          }
        }
      }

      if (!(*(a3 + 16))(a3, v18))
      {
        v25 = 0;
        goto LABEL_48;
      }

LABEL_43:
      ++v18;
      v16 = *(a1 + 8);
      LODWORD(v24) = *(a2 + 44);
      if (v16 >= v24)
      {
        v24 = v24;
      }

      else
      {
        v24 = v16;
      }
    }

    while (v18 < v24);
  }

  v25 = 1;
LABEL_48:
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return v25;
}