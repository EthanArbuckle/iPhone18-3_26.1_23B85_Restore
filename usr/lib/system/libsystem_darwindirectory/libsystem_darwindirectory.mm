void _ddrsReaderApplyToStore(uint64_t a1, int a2, const unsigned __int8 *a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(*(a1 + 24));
  _ddrsReaderUpdateRecordStoreIfNeeded(a1);
  os_unfair_lock_assert_owner(*(a1 + 24));
  if (a2)
  {
    if (a2 != 1)
    {
      _ddrsReaderApplyToStore_cold_3(v8, v9);
    }

    v10 = "ddrsKeyGroupRecordList";
  }

  else
  {
    v10 = "ddrsKeyUserRecordList";
  }

  if (!a3)
  {
    v17 = 0;
LABEL_18:
    v22 = *a1;
    v23 = *(a1 + 8);
    *&v34 = MEMORY[0x29EDCA5F8];
    *(&v34 + 1) = 0x40000000;
    v35 = ___ddrsReaderApplyToStoreRecords_block_invoke;
    v36 = &unk_29F28EA98;
    v39 = a3;
    v40 = v17;
    v42 = a2;
    v41 = a1;
    v37 = a4;
    v38 = v10;
    xpc_traverse_serialized_data();
    goto LABEL_19;
  }

  os_unfair_lock_assert_owner(*(a1 + 24));
  memset(out, 0, 37);
  v13 = *a3;
  if (*a3 == 2)
  {
    v14 = out;
    uuid_unparse(a3 + 8, out);
    v15 = "ddrsKeyGroupUUIDMap";
    v16 = "ddrsKeyUserUUIDMap";
  }

  else if (v13 == 1)
  {
    v14 = *(a3 + 1);
    v15 = "ddrsKeyGroupNameMap";
    v16 = "ddrsKeyUserNameMap";
  }

  else
  {
    if (v13)
    {
      _ddrsReaderApplyToStore_cold_2(v11, v12);
    }

    v14 = __str;
    snprintf(__str, 0xBuLL, "%u", *(a3 + 2));
    v15 = "ddrsKeyGroupIDMap";
    v16 = "ddrsKeyUserIDMap";
  }

  if (a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = strlen(v18);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -1;
  v21 = *a1;
  v20 = *(a1 + 8);
  v25[1] = MEMORY[0x29EDCA5F8];
  v25[2] = 0x40000000;
  v25[3] = ___ddrsReaderFindStoreRecordIndex_block_invoke;
  v25[4] = &unk_29F28EAC0;
  v25[7] = v14;
  v25[8] = v18;
  v25[9] = v19;
  v25[5] = &v30;
  v25[6] = &v26;
  xpc_traverse_serialized_data();
  if ((v31[3] & 1) == 0)
  {
    _ddrsReaderApplyToStore_cold_1(v25, &v34);
  }

  v17 = v27[3];
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  if (v17 != -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  os_unfair_lock_unlock(*(a1 + 24));
  v24 = *MEMORY[0x29EDCA608];
}

void _ddrsReaderUpdateRecordStoreIfNeeded(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a1 + 24));
  if (*(a1 + 16) == -1)
  {
    os_unfair_lock_assert_owner(*(a1 + 24));
    if (*(a1 + 16) != -1)
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_1(&v8, v10);
    }

    if ((*(*(*(a1 + 32) + 40) + 16))())
    {
      v10[0] = 0uLL;
      v8 = 0;
      v9 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v10[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      _os_log_simple();
    }
  }

  os_unfair_lock_assert_owner(*(a1 + 24));
  if (*(a1 + 16) != -1)
  {
    (*(*(*(a1 + 32) + 48) + 16))(*(*(a1 + 32) + 48));
  }

  if (!*a1)
  {
    v10[0] = 0uLL;
    v8 = 0;
    v9 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v10[0] = 0uLL;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    _os_log_simple();
    os_unfair_lock_assert_owner(*(a1 + 24));
    v2 = *a1;
    if (*a1)
    {
      _ddrsReaderUnloadRecordStore(a1);
    }

    os_unfair_lock_assert_owner(*(a1 + 24));
    if (*a1)
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_2(&v8, v10);
    }

    if (*(a1 + 8))
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_3(&v8, v10);
    }

    v3 = _ddrsReaderLoadAndValidateRecordStoreAtPath("/private/var/db/DarwinDirectory/local/recordStore.data", a1);
    if (v3)
    {
      v10[0] = 0uLL;
      v8 = 0;
      v9 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v10[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      _os_log_simple();
      ++*(a1 + 20);
    }

    else
    {
      if (v2)
      {
        _ddrsReaderUpdateRecordStoreIfNeeded_cold_4(v3, v4);
      }

      v5 = _ddrsReaderLoadAndValidateRecordStoreAtPath("/System/Library/DarwinDirectory/system/recordStore.data", a1);
      if ((v5 & 1) == 0)
      {
        _ddrsReaderUpdateRecordStoreIfNeeded_cold_5(v5, v6);
      }

      v10[0] = 0uLL;
      v8 = 0;
      v9 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v10[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      _os_log_simple();
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t _ddrsGetGeneration(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 24));
  _ddrsReaderUpdateRecordStoreIfNeeded(a1);
  v2 = *(a1 + 20);
  os_unfair_lock_unlock(*(a1 + 24));
  return v2;
}

uint64_t _ddrsReaderUnloadRecordStore(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a1 + 24));
  if (!*a1)
  {
    _ddrsReaderUnloadRecordStore_cold_3(&v4, v5);
  }

  if (!*(a1 + 8))
  {
    _ddrsReaderUnloadRecordStore_cold_2(&v4, v5);
  }

  result = (*(*(*(a1 + 32) + 32) + 16))();
  if (result)
  {
    _ddrsReaderUnloadRecordStore_cold_1(&v4, v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a2 + 24));
  v3 = *(a2 + 32);
  v4 = (*(*v3 + 16))();
  if (v4 != -1)
  {
    v5 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *uu2 = 0u;
    if ((*(v3[2] + 16))())
    {
      v6 = *__error();
      v28 = 0;
      v29 = 0;
      v34 = 0;
      v35 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v28 = 0;
        v29 = 0;
      }

      if ((_dyld_get_shared_cache_uuid() & 1) == 0)
      {
        v34 = 0;
        v35 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = (*(v3[3] + 16))();
      if (v9 != -1)
      {
        goto LABEL_18;
      }

      v6 = *__error();
      v28 = 0;
      v29 = 0;
      v34 = 0;
      v35 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v28 = 0;
        v29 = 0;
      }

      if ((_dyld_get_shared_cache_uuid() & 1) == 0)
      {
        v34 = 0;
        v35 = 0;
        goto LABEL_17;
      }
    }

    *uu = 0;
    _dyld_get_shared_cache_range();
LABEL_17:
    strerror(v6);
    _os_log_simple();
    v9 = 0;
LABEL_18:
    (*(v3[1] + 16))(v3[1], v5, v8);
    v10 = v23;
    if (!v9)
    {
      v10 = 0;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    if (v9)
    {
      os_unfair_lock_assert_owner(*(a2 + 24));
      *uu = 0;
      v27 = 0;
      os_unfair_lock_assert_owner(*(a2 + 24));
      v34 = 0;
      v35 = &v34;
      v36 = 0x2000000000;
      v37 = 0;
      v11 = *a2;
      v12 = *(a2 + 8);
      v28 = MEMORY[0x29EDCA5F8];
      v29 = 0x40000000;
      v30 = ___ddrsReaderExtractRecordStoreBootUUID_block_invoke;
      v31 = &unk_29F28EA70;
      v32 = &v34;
      v33 = uu;
      xpc_traverse_serialized_data();
      if ((v35[3] & 1) == 0)
      {
        _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_1(&v16, uu2);
      }

      _Block_object_dispose(&v34, 8);
      if (uuid_is_null(uu))
      {
        _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_4();
        goto LABEL_25;
      }

      memset(uu2, 0, sizeof(uu2));
      if ((*(*(*(a2 + 32) + 56) + 16))(*(*(a2 + 32) + 56), uu2, v13))
      {
        _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_2();
      }

      else
      {
        if (!uuid_compare(uu, uu2))
        {
LABEL_25:
          result = 1;
          goto LABEL_28;
        }

        _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_3();
      }

      memset(uu2, 0, sizeof(uu2));
      v28 = 0;
      v29 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        memset(uu2, 0, sizeof(uu2));
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v34 = 0;
        _dyld_get_shared_cache_range();
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      _os_log_simple();
      _ddrsReaderUnloadRecordStore(a2);
    }

    result = 0;
    goto LABEL_28;
  }

  v7 = *__error();
  v28 = 0;
  v29 = 0;
  v34 = 0;
  v35 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v28 = 0;
    v29 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    *uu = 0;
    _dyld_get_shared_cache_range();
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  strerror(v7);
  _os_log_simple();
  result = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_28:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ddrsReaderExtractRecordStoreBootUUID_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 == 6)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v6, v7);
    }

    if (*a3 != MEMORY[0x29EDCAA60])
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_2(&v6, v7);
    }

    if (*(a3 + 8) != 16)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_3(&v6, v7);
    }

    uuid_copy(*(a1 + 40), *(a3 + 16));
    *(*(*(a1 + 32) + 8) + 24) = 1;
    result = 3;
  }

  else if (a2 == 5)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v6, v7);
    }

    result = strncmp(*a3, "ddrsKeyBootUUID", 0xFuLL) != 0;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ddrsReaderApplyToStoreRecords_block_invoke(uint64_t a1, int a2, const char **a3)
{
  v38 = *MEMORY[0x29EDCA608];
  string_ptr = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  if (a2 != 4)
  {
    if (a2 != 7)
    {
      result = 0;
      if (a2 == 5)
      {
        if (!a3)
        {
          ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v30, v37);
        }

        v6 = *a3;
        v7 = *(a1 + 40);
        v8 = strlen(v7);
        result = strncmp(v6, v7, v8) != 0;
      }

      goto LABEL_37;
    }

    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v30, v37);
    }

    v9 = *(a1 + 72);
    if (v9 == 1)
    {
      *(&v34 + 1) = v31;
    }

    LOBYTE(v32) = v9;
    if (MEMORY[0x29C2B1D50](a3) != MEMORY[0x29EDCAA00])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_3(&v30, v37);
    }

    value = xpc_dictionary_get_value(a3, "ID");
    v11 = MEMORY[0x29C2B1D50]();
    v12 = MEMORY[0x29EDCAA58];
    if (v11 != MEMORY[0x29EDCAA58])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(&v30, v37);
    }

    DWORD1(v32) = xpc_uint64_get_value(value);
    v13 = xpc_dictionary_get_value(a3, "name");
    v14 = MEMORY[0x29C2B1D50]();
    v15 = MEMORY[0x29EDCAA50];
    if (v14 != MEMORY[0x29EDCAA50])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v30, v37);
    }

    *(&v32 + 1) = xpc_string_get_string_ptr(v13);
    v16 = xpc_dictionary_get_value(a3, "UUID");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCAA60])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_6(&v30, v37);
    }

    bytes = xpc_uuid_get_bytes(v16);
    uuid_copy(&v33, bytes);
    v18 = xpc_dictionary_get_value(a3, "isMutable");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCA9E8])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_7(&v30, v37);
    }

    LOBYTE(v34) = xpc_BOOL_get_value(v18);
    if (v9 != 1)
    {
      if (!v9)
      {
        v19 = xpc_dictionary_get_value(a3, "primaryGroupID");
        if (MEMORY[0x29C2B1D50]() != v12)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(&v30, v37);
        }

        DWORD2(v34) = xpc_uint64_get_value(v19);
        v20 = xpc_dictionary_get_value(a3, "fullName");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v30, v37);
        }

        *&v35 = xpc_string_get_string_ptr(v20);
        v21 = xpc_dictionary_get_value(a3, "homeDirectory");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v30, v37);
        }

        *(&v35 + 1) = xpc_string_get_string_ptr(v21);
        v22 = xpc_dictionary_get_value(a3, "shell");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v30, v37);
        }

        string_ptr = xpc_string_get_string_ptr(v22);
      }

      goto LABEL_33;
    }

    v23 = xpc_dictionary_get_value(a3, "memberNames");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCA9E0])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_8(&v30, v37);
    }

    count = xpc_array_get_count(v23);
    v25 = count;
    if (count >= 0x20)
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_9(count, &v32);
    }

    else
    {
      *(*(&v34 + 1) + 8 * count) = 0;
      if (!count)
      {
LABEL_33:
        WORD1(v34) = *(*(a1 + 64) + 20);
        (*(*(a1 + 32) + 16))();
        if (*(a1 + 72) == 1 && *(&v34 + 1) != v31)
        {
          free(*(&v34 + 1));
        }

        result = 0;
        goto LABEL_37;
      }
    }

    v26 = 0;
    do
    {
      v27 = xpc_array_get_value(v23, v26);
      if (MEMORY[0x29C2B1D50]() != v15)
      {
        ___ddrsReaderApplyToStoreRecords_block_invoke_cold_10(&v30, v37);
      }

      v28 = xpc_string_get_string_ptr(v27);
      *(*(&v34 + 1) + 8 * v26++) = v28;
    }

    while (v25 != v26);
    goto LABEL_33;
  }

  if (*(a1 + 48))
  {
    if (!a3)
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_2(&v30, v37);
    }

    if (*a3 == *(a1 + 56))
    {
      result = 2;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 2;
  }

LABEL_37:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ddrsReaderFindStoreRecordIndex_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 == 6)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v5, v6);
    }

    if (*a3 == MEMORY[0x29EDCAA30])
    {
      *(*(*(a1 + 40) + 8) + 24) = *(a3 + 16);
    }

    result = 3;
  }

  else if (a2 == 5)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v5, v6);
    }

    ___ddrsReaderFindStoreRecordIndex_block_invoke_cold_3(a1, a3, v6);
    result = LODWORD(v6[0]);
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](a1, v6, v5, 80, a5, v7, 16);
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
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

uint64_t OUTLINED_FUNCTION_3()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2A1C75D78](2, 6, a3, 0);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](a1, v6, v5, 80, a5, v7, 16);
}

double OUTLINED_FUNCTION_7(void *a1, _OWORD *a2)
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

uint64_t DarwinDirectoryRecordStoreApplyWithFilter(int a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  _ddrsReaderApplyToStore(&getStore_store, a1, a2, a3);
  return 1;
}

uint64_t DarwinDirectoryRecordStoreApply(int a1, uint64_t a2)
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  _ddrsReaderApplyToStore(&getStore_store, a1, 0, a2);
  return 1;
}

uint64_t DarwinDirectoryGetGeneration()
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  return _ddrsGetGeneration(&getStore_store);
}

void __getStore_block_invoke()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 4uLL, 0x8709206FuLL);
  if (!v0)
  {
    __getStore_block_invoke_cold_2(&v2, v3);
  }

  qword_2A197E158 = v0;
  *v0 = 0;
  if (getSideEffects_once != -1)
  {
    __getStore_block_invoke_cold_1();
  }

  qword_2A197E160 = getSideEffects_sideEffects;
  v1 = *MEMORY[0x29EDCA608];
}

void *__getSideEffects_block_invoke()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x8709206FuLL);
  if (!v0)
  {
    __getSideEffects_block_invoke_cold_1(&v17, v18);
  }

  getSideEffects_sideEffects = v0;
  *v0 = &__block_literal_global_8;
  v1 = _Block_copy(&__block_literal_global_8);
  v2 = getSideEffects_sideEffects;
  *getSideEffects_sideEffects = v1;
  *(v2 + 8) = &__block_literal_global_12;
  v3 = _Block_copy(&__block_literal_global_12);
  v4 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 8) = v3;
  *(v4 + 16) = &__block_literal_global_16;
  v5 = _Block_copy(&__block_literal_global_16);
  v6 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 16) = v5;
  *(v6 + 24) = &__block_literal_global_20;
  v7 = _Block_copy(&__block_literal_global_20);
  v8 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 24) = v7;
  *(v8 + 32) = &__block_literal_global_24;
  v9 = _Block_copy(&__block_literal_global_24);
  v10 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 32) = v9;
  *(v10 + 40) = &__block_literal_global_28;
  v11 = _Block_copy(&__block_literal_global_28);
  v12 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 40) = v11;
  *(v12 + 48) = &__block_literal_global_32;
  v13 = _Block_copy(&__block_literal_global_32);
  v14 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 48) = v13;
  *(v14 + 56) = &__block_literal_global_36;
  result = _Block_copy(&__block_literal_global_36);
  *(getSideEffects_sideEffects + 56) = result;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __getSideEffects_block_invoke_9(uint64_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *in = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = 37;
  v3 = sysctlbyname("kern.bootsessionuuid", in, &v6, 0, 0);
  if (!v3)
  {
    uuid_parse(in, a2);
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](v8, v5, v6, 80, a5, v7, 16);
}

void _ddrsReaderApplyToStore_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_6(v6, v3, v4, v5, &dword_299DE2000);
  v7 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_6(v6, v3, v4, v5, &dword_299DE2000);
  v7 = *v2;
  _os_crash_msg();
  __break(1u);
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_2()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  strerror(v0);
  result = _os_log_simple();
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_3()
{
  v2 = *MEMORY[0x29EDCA608];
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  result = _os_log_simple();
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_4()
{
  v2 = *MEMORY[0x29EDCA608];
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  result = _os_log_simple();
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void *___ddrsReaderApplyToStoreRecords_block_invoke_cold_9(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(8 * a1 + 8, 0x10040436913F5uLL);
  *(a2 + 40) = result;
  result[a1] = 0;
  return result;
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3();
  __break(1u);
}

uint64_t ___ddrsReaderFindStoreRecordIndex_block_invoke_cold_3(uint64_t a1, const char **a2, int *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = *a2;
  if (*(v5 + 24) != 1)
  {
    result = strncmp(v6, *(a1 + 56), *(a1 + 64));
    if (!result)
    {
      v8 = 0;
      *(v5 + 24) = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  result = strcmp(v6, *(a1 + 48));
  if (result)
  {
LABEL_5:
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  *a3 = v8;
  return result;
}

void __getStore_block_invoke_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v4, v5, v6, v7, &dword_299DE2000);
  v8 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __getSideEffects_block_invoke_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v4, v5, v6, v7, &dword_299DE2000);
  v8 = *a1;
  v9 = _os_crash_msg();
  __break(1u);
  _Block_copy(v9);
}