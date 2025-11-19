const void *lookup_inode(const __CFDictionary *a1, fsid a2, fsobj_id a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = cfaasprintf("%llx", a2);
  Value = CFDictionaryGetValue(a1, v5);
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDictionaryGetTypeID())
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
    }

    return 0;
  }

  v9 = cfaasprintf("%llx", a3);
  v10 = CFDictionaryGetValue(v7, v9);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      return 0;
    }
  }

  return v11;
}

void ktrace_find_summary_in_fat_summary(UUIDContext *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Images");
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFDictionaryGetTypeID())
      {
        context[0] = MEMORY[0x277D85DD0];
        context[1] = 3221225472;
        context[2] = ___ZL34ktrace_find_summary_in_fat_summaryP11UUIDContextPK14__CFDictionary_block_invoke;
        context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
        context[4] = a1;
        CFDictionaryApplyFunction(v4, CFDictionaryApplierTrampoline, context);
      }

      else
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
        }
      }
    }
  }
}

void ___ZL19ktrace_find_summaryP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(a1 + 32) + 128))
  {
    Value = CFDictionaryGetValue(*(*(*(a1 + 40) + 80) + 232), a2);
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 != CFDictionaryGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
        }

        v4 = 0;
      }
    }

    ktrace_find_summary_in_fat_summary(*(a1 + 32), v4);
  }
}

uint64_t ___ZL34ktrace_find_summary_in_fat_summaryP11UUIDContextPK14__CFDictionary_block_invoke(uint64_t result, const __CFString *a2, CFDictionaryRef theDict)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(*(result + 32) + 128))
  {
    v5 = result;
    memset(uu, 0, sizeof(uu));
    Value = CFDictionaryGetValue(theDict, @"UUID_String");
    v7 = Value;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 != CFStringGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
        }

        v7 = 0;
      }
    }

    v9 = utf8(v7);
    uuid_parse(v9, uu);
    result = uuid_compare(uu, *(v5 + 32));
    if (!result)
    {
      if ((*(*(v5 + 32) + 160) & 4) == 0)
      {
        utf8(a2);
        *(*(v5 + 32) + 120) = CSArchitectureGetArchitectureForName();
        *(*(v5 + 32) + 160) = *(*(v5 + 32) + 160) & 0xFFFB | (4 * (*(*(v5 + 32) + 120) != 0));
      }

      result = CFRetain(theDict);
      *(*(v5 + 32) + 128) = theDict;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZL25ktrace_analyze_executableP21symbolication_contextP11UUIDContext_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = owner_matches_uuid(a2, a3, *(a1 + 32));
  if (result)
  {
    *(*(a1 + 32) + 120) = CSSymbolOwnerGetArchitecture();
    *(*(a1 + 32) + 160) |= 4u;
    *(*(a1 + 32) + 80) = 0;
    CSSymbolOwnerForeachSegment();
    *(*(a1 + 32) + 160) |= 0x20u;
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    v6 = *(a1 + 32);
    *(v6 + 48) = BaseAddress;
    *(v6 + 160) = *(v6 + 160) & 0xFFBF | ((BaseAddress != -1) << 6);
    if (CSSymbolOwnerIsAOut())
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 32) + 160) = *(*(a1 + 32) + 160) & 0xFEFF | v7;
    result = CSSymbolOwnerIsDyld();
    if (result)
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    *(*(a1 + 32) + 160) = *(*(a1 + 32) + 160) & 0xFDFF | v8;
    *(*(a1 + 32) + 160) |= 0x80u;
  }

  return result;
}

uint64_t ___ZL25ktrace_analyze_executableP21symbolication_contextP11UUIDContext_block_invoke_3(uint64_t a1)
{
  ++*(*(a1 + 32) + 80);
  result = CSRegionGetName();
  if (result)
  {
    result = strcmp("__TEXT SEGMENT", result);
    if (!result)
    {
      *(*(a1 + 32) + 160) |= 8u;
      result = CSRegionGetRange();
      *(*(a1 + 32) + 56) = v3;
    }
  }

  return result;
}

void CS::TypeRef::~TypeRef(CS::TypeRef *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if ((CSIsNull() & 1) == 0)
  {
    v4 = *this;
    v5 = *(this + 1);
    CSRelease();
  }
}

uint64_t ___ZL16translate_offset10_CSTypeRef18ktrace_uuid_offsetPyPb_block_invoke(uint64_t a1)
{
  Name = CSRegionGetName();
  v3 = strnlen((a1 + 64), 0x10uLL);
  result = strncmp(Name, (a1 + 64), v3);
  if (!result && Name[v3] == 32)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24) == 1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (strcmp(&Name[v3], " SEGMENT"))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    *(v5 + 24) = 1;
    v6 = *(a1 + 88);
    result = CSRegionGetRange();
    if (v6 >= v7)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        if (*(a1 + 100) == 1)
        {
          *v8 = 1;
        }
      }
    }

    else
    {
      result = CSRegionGetRange();
      **(a1 + 128) = result + *(a1 + 88);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void ___ZL18owner_is_text_exec10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  CSRegionGetSegmentName(a2, a3, &v6);
  if (v6 == 0x455F545845545F5FLL && v7 == 4408664)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
}

UUIDContext *___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_254(uint64_t a1, SymbolOwner *a2)
{
  result = find_or_create_uuid(*(a1 + 48), a2);
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a2 + 4);
  if (v5 != 1)
  {
    if (v5 == 5 || v5 == 2)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    return result;
  }

  v7 = result;
  ktrace_find_segment_count(*(a1 + 48), result);
  if ((*(v7 + 160) & 0x20) != 0)
  {
    v9 = *(v7 + 80);
  }

  else
  {
    ktrace_find_text_size(*(a1 + 48), v7);
    v8 = *(v7 + 160);
    if ((v8 & 8) != 0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      v8 = *(v7 + 160);
    }

    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v9;
LABEL_17:
  ktrace_find_image_type(*(a1 + 48), v7);
  result = ktrace_find_arch_with_default(*(a1 + 48), v7, 0);
  if ((*(v7 + 160) & 4) != 0)
  {
    v10 = *(*(a1 + 40) + 8);
    if ((*(v7 + 160) & 0x100) != 0 || !*(v10 + 48))
    {
      *(v10 + 48) = *(v7 + 120);
    }
  }

  return result;
}

void *find_or_create_uuid(symbolication_context *a1, SymbolOwner *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  UUIDContext::UUIDContext(v6, a2);
  uuid = find_or_create_uuid(a1, v6);
  UUIDContext::~UUIDContext(v6);
  v4 = *MEMORY[0x277D85DE8];
  return uuid;
}

void ktrace_find_segment_count(FILE **a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 0x20) == 0)
  {
    ktrace_find_summary(a1, a2);
    v4 = *(a2 + 16);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"Segments");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFArrayGetTypeID())
        {
          *(a2 + 20) = CFArrayGetCount(v6);
          *(a2 + 80) |= 0x20u;
          return;
        }

        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
        }
      }
    }

    ktrace_analyze_executable(a1, a2);
    if (!*(a2 + 20))
    {
      v8 = *a1;
      if (*a1)
      {
        v9 = describe2(a1, a2);
        fprintf(v8, "could not figure segment count for %s\n", v9);
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_find_segment_count(a1, a2);
        }
      }
    }
  }
}

void ktrace_find_text_size(symbolication_context *a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 8) != 0)
  {
    return;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL21ktrace_find_text_sizeP21symbolication_contextP11UUIDContext_block_invoke;
  v8[3] = &__block_descriptor_40_e24_v32__0r_8__CSRange_QQ_16l;
  v8[4] = a2;
  ktrace_iterate_segments(a1, a2, v8);
  if ((*(a2 + 80) & 8) != 0)
  {
    return;
  }

  ktrace_find_summary(a1, a2);
  v4 = *(a2 + 16);
  if (!v4 || (Value = CFDictionaryGetValue(v4, @"TextSize")) == 0)
  {
LABEL_10:
    ktrace_analyze_executable(a1, a2);
    return;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFNumberGetTypeID())
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
    }

    goto LABEL_10;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a2 + 7) = valuePtr;
  *(a2 + 80) |= 8u;
}

uint64_t ktrace_find_image_type(FILE **a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 0x80) != 0)
  {
    return 1;
  }

  ktrace_find_summary(a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"Flags");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v8 = valuePtr;
        goto LABEL_17;
      }

      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
      }
    }

    v8 = 0;
LABEL_17:
    *(a2 + 80) = (16 * v8) & 0x100 | (((v8 >> 6) & 1) << 9) | *(a2 + 80) & 0xFCFF | 0x80;
    return 1;
  }

  ktrace_analyze_executable(a1, a2);
  if ((*(a2 + 80) & 0x80) == 0)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = describe2(a1, a2);
      fprintf(v9, "could not figure out image type for %s\n", v10);
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_find_image_type(a1, a2);
      }
    }
  }

  v11 = a1[1];
  if (v11)
  {
    v12 = BYTE3(v11->_bf._base);
    v13 = *(a2 + 80);
    if (v12 == 1)
    {
      v13 |= 0x80u;
      *(a2 + 80) = v13;
    }
  }

  else
  {
    v13 = *(a2 + 80);
  }

  return (v13 >> 7) & 1;
}

void ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_2(void *a1, __int128 *a2, uint64_t *a3)
{
  v73[7] = *MEMORY[0x277D85DE8];
  v3 = *(a1[4] + 8);
  v4 = *(a1[5] + 8);
  v5 = a1[7];
  v50 = *a3;
  v7 = a2 + 1;
  v6 = *(a2 + 4);
  if (v6 > 5)
  {
    goto LABEL_10;
  }

  v8 = 1 << v6;
  if ((v8 & 0x26) == 0)
  {
    if ((v8 & 0x18) != 0)
    {
      goto LABEL_74;
    }

LABEL_10:
    ktrace_address_space_deep_iterate_symbol_owners();
  }

  v9 = a2;
  v10 = *(*(a1[6] + 8) + 48);
  v11 = *(a1[8] + 32);
  uuid = find_or_create_uuid(v5, a2);
  if (uuid)
  {
    v13 = uuid;
    if ((uuid[20] & 1) == 0)
    {
      v49 = v11;
      v14 = v7 + 8;
      if (*v7 == 5)
      {
        v15 = *(v5 + 1);
        if (v15 && *(v15 + 28))
        {
          *v14 = 0;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *v7 = 2;
          strlcpy(v7 + 8, (*(v5 + 1) + 28), 0x11uLL);
        }

        else
        {
          *&v54 = 0;
          *(&v54 + 1) = &v54;
          *&v55 = 0x2020000000;
          BYTE8(v55) = 0;
          *v66 = MEMORY[0x277D85DD0];
          v67 = 3221225472;
          v68 = ___ZL23fix_tailspin_kext_ownerP11SymbolOwnerP21symbolication_contextP11UUIDContext_block_invoke;
          v69 = &unk_27886F328;
          v70 = &v54;
          if ((ktrace_iterate_segments(v5, uuid, v66) & 1) == 0)
          {
            v26 = &v54;
LABEL_73:
            _Block_object_dispose(v26, 8);
            goto LABEL_74;
          }

          if (*v7 != 2)
          {
            *v14 = 0;
            *(v7 + 2) = 0;
            *(v7 + 3) = 0;
            *v7 = 2;
          }

          if (*(*(&v54 + 1) + 24))
          {
            v16 = "__TEXT_EXEC";
          }

          else
          {
            v16 = "__TEXT";
          }

          strlcpy(v7 + 8, v16, 0x11uLL);
          _Block_object_dispose(&v54, 8);
        }
      }

      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 0;
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0;
      arch_with_default = ktrace_find_arch_with_default(v5, v13, v10);
      if (!v50)
      {
        if (!arch_with_default)
        {
          goto LABEL_29;
        }

        LOBYTE(arch_with_default) = ktrace_find_image_type(v5, v13);
      }

      if (arch_with_default)
      {
        v18 = v7 + 5;
        v19 = v7 + 2;
        v56 = 0u;
        memset(v57, 0, sizeof(v57));
        v54 = 0u;
        v55 = 0u;
        v20 = *v7;
        if (*v7 != 1)
        {
          goto LABEL_41;
        }

        ktrace_find_segment_count(v5, v13);
        if ((*(v13 + 160) & 0x20) == 0)
        {
          ktrace_find_text_size(v5, v13);
          v21 = *(v13 + 160);
          if ((v21 & 8) != 0)
          {
            SymbolOwner::operator=(&v54, v9);
            v19 = v57;
            v14 = &v55 + 8;
            v18 = &v57[1];
            if (v55 != 2)
            {
              *(&v55 + 1) = 0;
              v56 = 0uLL;
              LODWORD(v55) = 2;
            }

            v24 = (v13 + 56);
            v22 = 1;
            v25 = &v57[1];
            v23 = "__TEXT";
          }

          else
          {
            if ((v21 & 0x10) == 0)
            {
              goto LABEL_35;
            }

            SymbolOwner::operator=(&v54, v9);
            v19 = v57;
            v14 = &v55 + 8;
            v18 = &v57[1];
            if (v55 != 2)
            {
              *(&v55 + 1) = 0;
              v56 = 0uLL;
              LODWORD(v55) = 2;
            }

            v22 = *(v13 + 64);
            v57[1] = *(v13 + 72) + 1;
            v23 = "__TEXT_EXEC";
            v24 = v57;
            v25 = v57;
          }

          *v25 = *v24 + v22;
          strlcpy(&v55 + 8, v23, 0x11uLL);
          v7 = &v55;
          v9 = &v54;
        }

LABEL_35:
        v20 = *(v9 + 4);
        if (v20 == 1)
        {
          v27 = *(v13 + 160);
          if ((v27 & 0x20) == 0)
          {
            *(v13 + 160) = v27 | 1;
LABEL_71:
            SymbolOwner::~SymbolOwner(&v54);
            goto LABEL_72;
          }

          v28 = *(v4 + 24);
          v63[3] = v28;
          *(v4 + 24) = v28 + 40 * *(v13 + 80);
          *v66 = 0;
          v67 = v66;
          v68 = 0x2020000000;
          LODWORD(v69) = 0;
          if ((ktrace_find_base_address(v5, v13) & 1) == 0)
          {
            goto LABEL_48;
          }

          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3321888768;
          v52[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke;
          v52[3] = &unk_2843A01B0;
          v53 = v49;
          v52[4] = &v62;
          v52[5] = v66;
          v52[8] = v5;
          v52[9] = v9;
          v52[10] = v50;
          v52[6] = &v58;
          v52[7] = v13;
          if (!ktrace_iterate_segments(v5, v13, v52))
          {
LABEL_48:
            *(v13 + 160) |= 1u;
            _Block_object_dispose(v66, 8);
            goto LABEL_71;
          }

          _Block_object_dispose(v66, 8);
          v20 = *v7;
        }

LABEL_41:
        if (v20 == 2)
        {
          *v66 = 0;
          v67 = v66;
          v68 = 0x3812000000;
          v69 = __Block_byref_object_copy__262;
          v70 = __Block_byref_object_dispose__263;
          v71 = "";
          if (!*v18)
          {
            if (strcmp(v14, "__TEXT") || ((ktrace_find_text_size(v5, v13), (*(v13 + 160) & 8) != 0) ? (v32 = *(v13 + 56) + 1, *(v67 + 48) = v32) : (v32 = *(v67 + 48)), !v32))
            {
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_265;
              v51[3] = &unk_27886F2E0;
              v51[4] = v66;
              v51[5] = v9;
              ktrace_iterate_segments(v5, v13, v51);
              if (!*(v67 + 48))
              {
                v29 = *v5;
                if (*v5)
                {
                  v30 = describe2(v5, v13);
                  fprintf(v29, "coulnd't figure out segment length for %s of %s\n", v14, v30);
                  ktrace_log_init();
                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
                  {
                    v31 = describe2(v5, v13);
                    ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_2_cold_1(v14, v31, v73);
                  }
                }

                goto LABEL_48;
              }
            }
          }

          v33 = *(v4 + 24);
          v34 = v63;
          *v33 = *v19;
          *(v4 + 24) = v33 + 5;
          v34[3] = v33;
          if (v50)
          {
            v35 = optional_uint64::value(&v50);
            *v63[3] += v35;
          }

          v36 = *v63[3];
          v37 = optional_uint64::value((v67 + 48));
          *(v63[3] + 8) = v37 + v36;
          v38 = v63[3];
          v39 = v14[16];
          *(v38 + 16) = *v14;
          *(v38 + 32) = v39;
          ++*(v59 + 6);
          _Block_object_dispose(v66, 8);
        }

        v40 = *(v3 + 24);
        *(v3 + 24) = v40 + 64;
        *(v40 + 16) = *v9;
        *(v40 + 32) = *(v13 + 120);
        v41 = *(v13 + 136);
        if (v41)
        {
          v42 = utf8(v41);
        }

        else
        {
          v43 = *(v5 + 10);
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_267;
          v73[3] = &__block_descriptor_56_e21_v16__0____CFString__8l;
          v73[4] = v40;
          v73[5] = v13;
          v73[6] = v5;
          ktrace_uuid_map_iterate_associated_paths(v43, v13, v73);
          v42 = *(v40 + 40);
          if (v42)
          {
            goto LABEL_60;
          }

          v42 = "<unknown>";
        }

        *(v40 + 40) = v42;
LABEL_60:
        *(v40 + 60) = 0;
        v44 = (*(v13 + 160) >> 4) & 0x10;
        *(v40 + 60) = v44;
        if ((*(v13 + 160) & 0x200) != 0)
        {
          *(v40 + 60) = v44 | 0x40;
        }

        v45 = *(v5 + 10);
        if (v45 && ((*(v45 + 288) & 1) != 0 || (*(v45 + 289) & 1) != 0) || (v46 = *(v5 + 1)) != 0 && *(v46 + 46) == 1)
        {
          if (v42)
          {
            v47 = basename_r(v42, v66);
            if (!strcmp("dyld", v47))
            {
              *(v40 + 60) |= 0x40u;
            }
          }
        }

        *(v40 + 48) = v63[3];
        *(v40 + 56) = *(v59 + 6);
        goto LABEL_71;
      }

LABEL_29:
      *(v13 + 160) |= 1u;
LABEL_72:
      _Block_object_dispose(&v58, 8);
      v26 = &v62;
      goto LABEL_73;
    }
  }

LABEL_74:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_22EDC4C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  SymbolOwner::~SymbolOwner(&a35);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void UUIDContext::UUIDContext(UUIDContext *this, SymbolOwner *a2)
{
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v8 = *a2;
  uuid_copy(this, &v8);
  v4 = *(a2 + 10);
  *(this + 17) = v4;
  *(this + 18) = *(a2 + 8);
  *(this + 19) = *(a2 + 9);
  if (v4)
  {
    CFRetain(v4);
  }

  if (*(a2 + 4) == 1)
  {
    if (*(a2 + 3))
    {
      *(this + 7) = optional_uint64::value((a2 + 24));
      *(this + 80) |= 8u;
    }

    v5 = (a2 + 32);
    if (*(a2 + 4))
    {
      v7 = *(a2 + 5);
      v6 = (a2 + 40);
      if (v7)
      {
        *(this + 9) = optional_uint64::value(v6);
        *(this + 8) = optional_uint64::value(v5);
        *(this + 80) |= 0x10u;
      }
    }
  }
}

uint64_t ktrace_iterate_segments(symbolication_context *a1, uint64_t a2, uint64_t a3)
{
  valuePtr[2] = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  ktrace_find_summary(a1, a2);
  v5 = *(a2 + 128);
  if (!v5 || (Value = CFDictionaryGetValue(v5, @"Segments"), (v7 = Value) == 0))
  {
LABEL_36:
    *(v37 + 24) = 0;
    executable = ktrace_find_executable(a1, a2);
    v28 = v37;
    *(v37 + 24) = executable;
    if (executable)
    {
      *(v28 + 24) = 0;
      v29 = *(a2 + 104);
      CSSymbolicatorForeachSymbolicatorWithURL();
      v26 = *(v37 + 24);
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_39;
  }

  v8 = CFGetTypeID(Value);
  if (v8 != CFArrayGetTypeID())
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
    }

    goto LABEL_36;
  }

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
LABEL_33:
    v26 = 1;
    *(v37 + 24) = 1;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      v12 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 != CFDictionaryGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_2(&v41, v42);
          }

          v12 = 0;
        }
      }

      v14 = CFDictionaryGetValue(v12, @"Name");
      v15 = v14;
      if (v14)
      {
        v16 = CFGetTypeID(v14);
        if (v16 != CFStringGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_5(&v43, v44);
          }

          v15 = 0;
        }
      }

      v17 = CFDictionaryGetValue(v12, @"Address");
      v18 = v17;
      if (v17)
      {
        v19 = CFGetTypeID(v17);
        if (v19 != CFNumberGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_3(&v45, v46);
          }

          v18 = 0;
        }
      }

      v20 = CFDictionaryGetValue(v12, @"Size");
      v21 = v20;
      if (v20)
      {
        v22 = CFGetTypeID(v20);
        if (v22 != CFNumberGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_3(&v47, v48);
          }

          v21 = 0;
        }
      }

      if (!v12 || !v15 || !v18 || !v21)
      {
        break;
      }

      valuePtr[0] = 0;
      v40 = 0;
      if (!CFNumberGetValue(v18, kCFNumberLongLongType, valuePtr))
      {
        _os_assert_log();
        v33 = _os_crash();
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7(v33);
      }

      if (!CFNumberGetValue(v21, kCFNumberLongLongType, &v40))
      {
        _os_assert_log();
        v34 = _os_crash();
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7(v34);
      }

      v23 = valuePtr[0];
      v24 = v40;
      v25 = utf8(v15);
      (*(a3 + 16))(a3, v25, v23, v24);
      if (Count == ++v10)
      {
        goto LABEL_33;
      }
    }

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      v32 = describe2(a1, a2);
      ktrace_iterate_segments(v32, valuePtr);
    }

    v26 = 0;
    *(v37 + 24) = 0;
  }

LABEL_39:
  _Block_object_dispose(&v36, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void sub_22EDC520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL21ktrace_find_text_sizeP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = strcmp("__TEXT", a2);
  if (!result)
  {
    v7 = *(a1 + 32);
    *(v7 + 56) = a4;
    *(v7 + 160) |= 8u;
  }

  return result;
}

uint64_t ___ZL23ktrace_iterate_segmentsP21symbolication_contextP11UUIDContextU13block_pointerFvPKc8_CSRangeE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 32);
  return CSSymbolicatorForeachSymbolOwnerAtTime();
}

const unsigned __int8 *___ZL23ktrace_iterate_segmentsP21symbolication_contextP11UUIDContextU13block_pointerFvPKc8_CSRangeE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = owner_matches_uuid(a2, a3, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = *(a1 + 32);
    return CSSymbolOwnerForeachSegment();
  }

  return result;
}

uint64_t ___ZL23ktrace_iterate_segmentsP21symbolication_contextP11UUIDContextU13block_pointerFvPKc8_CSRangeE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  CSRegionGetSegmentName(a2, a3, v9);
  v4 = *(a1 + 32);
  Range = CSRegionGetRange();
  result = (*(v4 + 16))(v4, v9, Range, v6);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_find_base_address(FILE **a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 0x40) != 0)
  {
    return 1;
  }

  ktrace_find_summary(a1, a2);
  if (*(a2 + 16) && (*(a2 + 6) = -1, v7[0] = MEMORY[0x277D85DD0], v7[1] = 3221225472, v7[2] = ___ZL24ktrace_find_base_addressP21symbolication_contextP11UUIDContext_block_invoke, v7[3] = &__block_descriptor_40_e24_v32__0r_8__CSRange_QQ_16l, v7[4] = a2, ktrace_iterate_segments(a1, a2, v7)) && *(a2 + 6) != -1)
  {
    *(a2 + 80) |= 0x40u;
    return 1;
  }

  else
  {
    ktrace_analyze_executable(a1, a2);
    if ((*(a2 + 80) & 0x40) == 0)
    {
      v5 = *a1;
      if (*a1)
      {
        v6 = describe2(a1, a2);
        fprintf(v5, "could not figure out base address for %s\n", v6);
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_find_base_address(a1, a2);
        }
      }
    }

    return (*(a2 + 80) >> 6) & 1;
  }
}

void ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke(uint64_t a1, char *__source, unint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) || strcmp(__source, "__LINKEDIT"))
  {
    v8 = *(a1 + 56);
    v9 = *(v8 + 48);
    v10 = a3 >= v9;
    v11 = a3 - v9;
    if (v10)
    {
      v17 = *(a1 + 80);
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 24);
      v20 = *(*(*(a1 + 32) + 8) + 24) + 40 * v19;
      *(v18 + 24) = v19 + 1;
      v21 = v11 + *(*(a1 + 72) + 48);
      *v20 = v21;
      if (v17)
      {
        v21 = *v20 + optional_uint64::value((a1 + 80));
        *v20 = v21;
      }

      *(v20 + 8) = v21 + a4;
      strlcpy((v20 + 16), __source, 0x11uLL);
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    else if (strcmp(__source, "__PAGEZERO"))
    {
      v12 = *(a1 + 64);
      v13 = *v12;
      if (*v12)
      {
        v14 = describe2(v12, v8);
        fprintf(v13, "WARNING: ignoring segment %s below base address for %s\n", __source, v14);
        ktrace_log_init();
        v15 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          v16 = describe2(*(a1 + 64), *(a1 + 56));
          *buf = 136315394;
          v24 = __source;
          v25 = 2080;
          v26 = v16;
          _os_log_debug_impl(&dword_22ED7A000, v15, OS_LOG_TYPE_DEBUG, "WARNING: ignoring segment %s below base address for %s\n", buf, 0x16u);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_265(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4)
{
  result = strncmp(__s1, (*(a1 + 40) + 24), 0x10uLL);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 48) = a4 + 1;
  }

  return result;
}

void ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_267(uint64_t a1, const __CFString *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40))
  {
    memset(out, 0, 37);
    uuid_unparse(*(a1 + 40), out);
    v4 = **(a1 + 48);
    if (v4)
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = utf8(a2);
      fprintf(v4, "WARNING: %s associated with multiple locations: %s AND %s\n", out, v5, v6);
      ktrace_log_init();
      v7 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(*(a1 + 32) + 40);
        *buf = 136315650;
        v11 = out;
        v12 = 2080;
        v13 = v8;
        v14 = 2080;
        v15 = utf8(a2);
        _os_log_debug_impl(&dword_22ED7A000, v7, OS_LOG_TYPE_DEBUG, "WARNING: %s associated with multiple locations: %s AND %s\n", buf, 0x20u);
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 40) = utf8(a2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL23fix_tailspin_kext_ownerP11SymbolOwnerP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, char *__s1)
{
  result = strcmp(__s1, "__TEXT_EXEC");
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___ZL24ktrace_find_base_addressP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, char *__s1, unint64_t a3)
{
  result = strcmp(__s1, "__PAGEZERO");
  if (result)
  {
    v6 = *(a1 + 32);
    if (a3 < *(v6 + 48))
    {
      *(v6 + 48) = a3;
    }
  }

  return result;
}

void PrepassOp::~PrepassOp(PrepassOp *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    _Block_release(v1);
  }
}

BOOL flatbuffers::Verifier::VerifyBufferFromStart<FlatbufferSymbols::SymbolsBuffer>(flatbuffers::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = flatbuffers::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return FlatbufferSymbols::SymbolsBuffer::Verify(v6, this);
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL FlatbufferSymbols::SymbolsBuffer::Verify(FlatbufferSymbols::SymbolsBuffer *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Symbolicator>(a2, v11);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
            if (v15)
            {
              result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*this;
            }
          }

          v16 = (this + v13);
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (this + v17 + *(this + v17));
          }

          else
          {
            v18 = 0;
          }

          result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::StringEntry>(a2, v18);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Symbolicator>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::Symbolicator::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::StringEntry>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::StringEntry::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL FlatbufferSymbols::Symbolicator::Verify(FlatbufferSymbols::Symbolicator *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }
  }

  else if (v8[3])
  {
    v10 = (this + v8[3] + *(this + v8[3]));
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(this + v11);
  if (v12 == 3)
  {
    if (v10)
    {
      result = FlatbufferSymbols::DyldSharedCacheMetadata::Verify(v10, a2);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_26;
  }

  if (v12 == 2)
  {
    if (!v10 || FlatbufferSymbols::MachoMetadata::Verify(v10, a2))
    {
      goto LABEL_26;
    }

    return 0;
  }

  v13 = v12 != 1 || v10 == 0;
  if (!v13 && !FlatbufferSymbols::ProcessMetadata::Verify(v10, a2))
  {
    return 0;
  }

LABEL_26:
  result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  v14 = *this;
  v15 = -v14;
  v16 = (this - v14);
  if (*v16 >= 9u)
  {
    v17 = v16[4];
    if (v17)
    {
      result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v17 + *(this + v17), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v15 = -*this;
    }
  }

  v18 = (this + v15);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = (this + v19 + *(this + v19));
  }

  else
  {
    v20 = 0;
  }

  result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolOwner>(a2, v20);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
    if (result)
    {
      v21 = *this;
      v22 = -v21;
      v23 = (this - v21);
      if (*v23 >= 0xBu)
      {
        v24 = v23[5];
        if (v24)
        {
          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v24 + *(this + v24), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v22 = -*this;
        }
      }

      v25 = (this + v22);
      if (*v25 >= 0xBu && (v26 = v25[5]) != 0)
      {
        v27 = (this + v26 + *(this + v26));
      }

      else
      {
        v27 = 0;
      }

      result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SharedCache>(a2, v27);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolOwner>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::SymbolOwner::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SharedCache>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::SharedCache::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL FlatbufferSymbols::ProcessMetadata::Verify(FlatbufferSymbols::ProcessMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 1), v12 >= 9) && v12 - 8 >= this + v11 - *a2))
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v13 = (this - *this);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = this + v14 + *(this + v14);
            }

            else
            {
              v15 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v15);
            if (result)
            {
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyString(flatbuffers::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = flatbuffers::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL FlatbufferSymbols::MachoMetadata::Verify(FlatbufferSymbols::MachoMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 9) && v15 - 8 >= this + v14 - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v16 = (this - *this);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v17 + *(this + v17)), a2)))
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v18 = (this - *this);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = this + v19 + *(this + v19);
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = flatbuffers::Verifier::VerifyString(a2, v20);
                    if (result)
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v21 = (this - *this);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = this + v22 + *(this + v22);
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = flatbuffers::Verifier::VerifyString(a2, v23);
                        if (result)
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v24 = (this - *this);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = this + v25 + *(this + v25);
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = flatbuffers::Verifier::VerifyString(a2, v26);
                            if (result)
                            {
                              result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v27 = (this - *this);
                                if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
                                {
                                  v29 = this + v28 + *(this + v28);
                                }

                                else
                                {
                                  v29 = 0;
                                }

                                result = flatbuffers::Verifier::VerifyString(a2, v29);
                                if (result)
                                {
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::CPUArchitecture::Verify(FlatbufferSymbols::CPUArchitecture *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::DyldSharedCacheMetadata::Verify(FlatbufferSymbols::DyldSharedCacheMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 9) && v15 - 8 >= this + v14 - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v16 = (this - *this);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v17 + *(this + v17)), a2)))
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v18 = (this - *this);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = this + v19 + *(this + v19);
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = flatbuffers::Verifier::VerifyString(a2, v20);
                    if (result)
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v21 = (this - *this);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = this + v22 + *(this + v22);
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = flatbuffers::Verifier::VerifyString(a2, v23);
                        if (result)
                        {
                          result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v24 = (this - *this);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = this + v25 + *(this + v25);
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = flatbuffers::Verifier::VerifyString(a2, v26);
                            if (result)
                            {
                              v27 = (this - *this);
                              if (*v27 < 0x15u || (v28 = v27[10]) == 0 || (result = 0, v29 = *(a2 + 1), v29 >= 9) && v29 - 8 >= this + v28 - *a2)
                              {
                                --*(a2 + 4);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::SymbolOwner::Verify(FlatbufferSymbols::SymbolOwner *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 >= 7)
  {
    if (v8[3])
    {
      v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
      v11 = v8[2];
      if (v11)
      {
        if (v10)
        {
          if (*(this + v11) == 1)
          {
            result = FlatbufferSymbols::MachoMetadata::Verify(v10, a2);
            if (!result)
            {
              return result;
            }
          }
        }
      }

      goto LABEL_16;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (v9 >= 5)
  {
    goto LABEL_11;
  }

LABEL_16:
  result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  v12 = *this;
  v13 = -v12;
  v14 = (this - v12);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v13 = -*this;
    }
  }

  v16 = (this + v13);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (this + v17 + *(this + v17));
  }

  else
  {
    v18 = 0;
  }

  result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Segment>(a2, v18);
  if (result)
  {
    v19 = (this - *this);
    v20 = *v19;
    if (v20 < 0xB || (!v19[5] || (result = 0, v21 = *(a2 + 1), v21 >= 9) && v21 - 8 >= this + v19[5] - *a2) && (v20 < 0xD || (!v19[6] || (result = 0, v22 = *(a2 + 1), v22 >= 2) && v22 - 1 >= this + v19[6] - *a2) && (v20 < 0xF || (v23 = v19[7]) == 0 || (result = 0, v24 = *(a2 + 1), v24 >= 2) && v24 - 1 >= this + v23 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Segment>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::Segment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL FlatbufferSymbols::Segment::Verify(FlatbufferSymbols::Segment *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 1), v12 >= 9) && v12 - 8 >= this + v11 - *a2))
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v13 = *this;
            v14 = -v13;
            v15 = (this - v13);
            if (*v15 >= 0xBu)
            {
              v16 = v15[5];
              if (v16)
              {
                result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v16 + *(this + v16), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v14 = -*this;
              }
            }

            v17 = (this + v14);
            if (*v17 >= 0xBu && (v18 = v17[5]) != 0)
            {
              v19 = (this + v18 + *(this + v18));
            }

            else
            {
              v19 = 0;
            }

            result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Symbol>(a2, v19);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v20 = *this;
                v21 = -v20;
                v22 = (this - v20);
                if (*v22 >= 0xDu)
                {
                  v23 = v22[6];
                  if (v23)
                  {
                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v23 + *(this + v23), 1uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v21 = -*this;
                  }
                }

                v24 = (this + v21);
                v25 = *v24;
                if (v25 < 0xF)
                {
                  goto LABEL_47;
                }

                if (!v24[7] || (result = 0, v26 = *(a2 + 1), v26 >= 9) && v26 - 8 >= this + v24[7] - *a2)
                {
                  if (v25 < 0x11 || (!v24[8] || (result = 0, v27 = *(a2 + 1), v27 >= 2) && v27 - 1 >= this + v24[8] - *a2) && (v25 < 0x13 || (!v24[9] || (result = 0, v28 = *(a2 + 1), v28 >= 2) && v28 - 1 >= this + v24[9] - *a2) && (v25 < 0x15 || (v29 = v24[10]) == 0 || (result = 0, v30 = *(a2 + 1), v30 >= 2) && v30 - 1 >= this + v29 - *a2)))
                  {
LABEL_47:
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::Symbol>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::Symbol::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL FlatbufferSymbols::Symbol::Verify(FlatbufferSymbols::Symbol *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v8 - *a2))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        v10 = (this - *this);
        if (*v10 >= 9u && (v11 = v10[4]) != 0)
        {
          v12 = this + v11 + *(this + v11);
        }

        else
        {
          v12 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v12);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v13 = (this - *this);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = this + v14 + *(this + v14);
            }

            else
            {
              v15 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v15);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v16 = *this;
                v17 = -v16;
                v18 = (this - v16);
                if (*v18 >= 0xDu)
                {
                  v19 = v18[6];
                  if (v19)
                  {
                    result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v19 + *(this + v19), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*this;
                  }
                }

                v20 = (this + v17);
                if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                {
                  v22 = (this + v21 + *(this + v21));
                }

                else
                {
                  v22 = 0;
                }

                result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(a2, v22);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v23 = (this - *this);
                    if (*v23 < 0xFu || (v24 = v23[7]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v24 + *(this + v24), 1uLL, 0)))
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::SourceInfo::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL FlatbufferSymbols::SourceInfo::Verify(FlatbufferSymbols::SourceInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_28;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_28;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))
            {
LABEL_28:
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::SharedCache::Verify(FlatbufferSymbols::SharedCache *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = *this;
        v9 = -v8;
        v10 = (this - v8);
        v11 = *v10;
        if (v11 < 7)
        {
          if (v11 < 5)
          {
LABEL_17:
            v14 = (this + v9);
            if (*v14 < 9u || (v15 = v14[4]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 9) && v16 - 8 >= this + v15 - *a2)
            {
              --*(a2 + 4);
              return 1;
            }

            return result;
          }
        }

        else if (v10[3])
        {
          v12 = (this + v10[3] + *(this + v10[3]));
LABEL_12:
          v13 = v10[2];
          if (v13 && v12 && *(this + v13) == 1)
          {
            result = FlatbufferSymbols::DyldSharedCacheMetadata::Verify(v12, a2);
            if (!result)
            {
              return result;
            }

            v9 = -*this;
          }

          goto LABEL_17;
        }

        v12 = 0;
        goto LABEL_12;
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::StringEntry::Verify(FlatbufferSymbols::StringEntry *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v6 - *a2)
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 >= 7u && (v9 = v8[3]) != 0)
        {
          v10 = this + v9 + *(this + v9);
        }

        else
        {
          v10 = 0;
        }

        result = flatbuffers::Verifier::VerifyString(a2, v10);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t flatbuffers::ToStringVisitor::ToStringVisitor(uint64_t a1, __int128 *a2, char a3, __int128 *a4, char a5)
{
  *a1 = &unk_2843A01F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v9;
  }

  *(a1 + 56) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v10;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = a5;
  return a1;
}

void sub_22EDC7820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *flatbuffers::ToStringVisitor::StartSequence(flatbuffers::ToStringVisitor *this)
{
  std::string::append((this + 8), "{");
  v2 = *(this + 4);
  v3 = *(this + 55);
  if (v3 >= 0)
  {
    v4 = this + 32;
  }

  else
  {
    v4 = *(this + 4);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 55);
  }

  else
  {
    v5 = *(this + 5);
  }

  result = std::string::append((this + 8), v4, v5);
  ++*(this + 11);
  return result;
}

std::string *flatbuffers::ToStringVisitor::EndSequence(flatbuffers::ToStringVisitor *this)
{
  v2 = *(this + 55);
  if (v2 >= 0)
  {
    v3 = this + 32;
  }

  else
  {
    v3 = *(this + 4);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 55);
  }

  else
  {
    v4 = *(this + 5);
  }

  std::string::append((this + 8), v3, v4);
  --*(this + 11);
  flatbuffers::ToStringVisitor::append_indent(this);

  return std::string::append((this + 8), "}");
}

std::string *flatbuffers::ToStringVisitor::Field(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const std::string::value_type *a7, uint64_t a8)
{
  if (a8)
  {
    v9 = this;
    if (a3)
    {
      std::string::append(&this->__r_.__value_.__r.__words[1], ",");
      v10 = *(v9 + 55);
      if (v10 >= 0)
      {
        v11 = (v9 + 32);
      }

      else
      {
        v11 = *(v9 + 32);
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 55);
      }

      else
      {
        v12 = *(v9 + 40);
      }

      std::string::append((v9 + 8), v11, v12);
    }

    this = flatbuffers::ToStringVisitor::append_indent(v9);
    if (a7)
    {
      if (*(v9 + 56) == 1)
      {
        std::string::append((v9 + 8), "");
      }

      std::string::append((v9 + 8), a7);
      if (*(v9 + 56) == 1)
      {
        std::string::append((v9 + 8), "");
      }

      return std::string::append((v9 + 8), ": ");
    }
  }

  return this;
}

std::string *flatbuffers::ToStringVisitor::Bool(flatbuffers::ToStringVisitor *this, int a2)
{
  if (a2)
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  return std::string::append((this + 8), v2);
}

void flatbuffers::ToStringVisitor::Long(flatbuffers::ToStringVisitor *this, uint64_t a2)
{
  flatbuffers::NumToString<long long>(a2);
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append((this + 8), v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EDC7AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void flatbuffers::ToStringVisitor::ULong(flatbuffers::ToStringVisitor *this, uint64_t a2)
{
  flatbuffers::NumToString<unsigned long long>(a2);
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append((this + 8), v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EDC7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void flatbuffers::ToStringVisitor::Float(flatbuffers::ToStringVisitor *this, float a2)
{
  flatbuffers::FloatToString<float>(6, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append((this + 8), p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22EDC7BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void flatbuffers::ToStringVisitor::Double(flatbuffers::ToStringVisitor *this, double a2)
{
  flatbuffers::FloatToString<double>(12, &__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append((this + 8), p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22EDC7C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *flatbuffers::ToStringVisitor::StartVector(flatbuffers::ToStringVisitor *this)
{
  std::string::append((this + 8), "[");
  if (*(this + 96) == 1)
  {
    v2 = *(this + 55);
    if (v2 >= 0)
    {
      v3 = this + 32;
    }

    else
    {
      v3 = *(this + 4);
    }

    if (v2 >= 0)
    {
      v4 = *(this + 55);
    }

    else
    {
      v4 = *(this + 5);
    }

    std::string::append((this + 8), v3, v4);
    ++*(this + 11);

    return flatbuffers::ToStringVisitor::append_indent(this);
  }

  else
  {

    return std::string::append((this + 8), " ");
  }
}

std::string *flatbuffers::ToStringVisitor::EndVector(flatbuffers::ToStringVisitor *this)
{
  if (*(this + 96) == 1)
  {
    v2 = *(this + 55);
    if (v2 >= 0)
    {
      v3 = this + 32;
    }

    else
    {
      v3 = *(this + 4);
    }

    if (v2 >= 0)
    {
      v4 = *(this + 55);
    }

    else
    {
      v4 = *(this + 5);
    }

    std::string::append((this + 8), v3, v4);
    --*(this + 11);
    flatbuffers::ToStringVisitor::append_indent(this);
  }

  else
  {
    std::string::append((this + 8), " ");
  }

  return std::string::append((this + 8), "]");
}

std::string *flatbuffers::ToStringVisitor::Element(std::string *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    std::string::append(&result->__r_.__value_.__r.__words[1], ",");
    if (v2[4].__r_.__value_.__s.__data_[0] == 1)
    {
      v3 = v2[2].__r_.__value_.__s.__data_[7];
      if (v3 >= 0)
      {
        size = &v2[1].__r_.__value_.__s.__data_[8];
      }

      else
      {
        size = v2[1].__r_.__value_.__l.__size_;
      }

      if (v3 >= 0)
      {
        v5 = v2[2].__r_.__value_.__s.__data_[7];
      }

      else
      {
        v5 = v2[1].__r_.__value_.__r.__words[2];
      }

      std::string::append(&v2->__r_.__value_.__r.__words[1], size, v5);

      return flatbuffers::ToStringVisitor::append_indent(v2);
    }

    else
    {

      return std::string::append(&v2->__r_.__value_.__r.__words[1], " ");
    }
  }

  return result;
}

void flatbuffers::ToStringVisitor::~ToStringVisitor(void **this)
{
  *this = &unk_2843A01F0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2318F6E50);
}

{
  *this = &unk_2843A01F0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

std::string *flatbuffers::ToStringVisitor::append_indent(std::string *this)
{
  if (this[3].__r_.__value_.__r.__words[2])
  {
    v1 = this;
    v2 = 0;
    v3 = &this[2].__r_.__value_.__s.__data_[16];
    do
    {
      v4 = *(v1 + 87);
      if (v4 >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *(v1 + 64);
      }

      if (v4 >= 0)
      {
        v6 = *(v1 + 87);
      }

      else
      {
        v6 = *(v1 + 72);
      }

      this = std::string::append((v1 + 8), v5, v6);
      ++v2;
    }

    while (v2 < *(v1 + 88));
  }

  return this;
}

void flatbuffers::ToStringVisitor::Named<unsigned char>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<int>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC8100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::NumToString<int>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6D70](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC82A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_22EDC8538(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2318F6E10](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2318F6E10](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2318F6DE0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_22EDC8748(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void flatbuffers::ToStringVisitor::Named<signed char>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<int>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC8948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void flatbuffers::ToStringVisitor::Named<short>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<short>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC8A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::NumToString<short>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6D90](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC8BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void flatbuffers::ToStringVisitor::Named<unsigned short>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<unsigned short>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC8CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::NumToString<unsigned short>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6DA0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC8E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void flatbuffers::ToStringVisitor::Named<int>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<int>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC8F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void flatbuffers::ToStringVisitor::Named<unsigned int>(uint64_t a1, uint64_t a2, std::string::value_type *__s)
{
  if (__s)
  {
    if (*(a1 + 56) == 1)
    {
      std::string::append((a1 + 8), "");
    }

    std::string::append((a1 + 8), __s);
    if (*(a1 + 56) == 1)
    {

      std::string::append((a1 + 8), "");
    }
  }

  else
  {
    flatbuffers::NumToString<unsigned int>(a2);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 8), v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22EDC9038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::NumToString<unsigned int>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6D80](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC91E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::NumToString<long long>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6DB0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC9380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::NumToString<unsigned long long>(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x2318F6DC0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v9);
}

void sub_22EDC9520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::FloatToString<float>@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v4 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v17[0].__locale_ + *(v4 - 24)) = a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = v6 + size;
  v8 = -size;
  while (v8)
  {
    v9 = *--v7;
    ++v8;
    if (v9 != 48)
    {
      if (v8 != 1)
      {
        v10 = *v7 == 46;
        v11 = 1;
        if (v10)
        {
          v11 = 2;
        }

        std::string::resize(a2, v11 - v8, 0);
      }

      break;
    }
  }

  v14[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v12;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v19);
}

void sub_22EDC978C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::FloatToString<double>@<X0>(int a1@<W0>, std::string *a2@<X8>, double a3@<D0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v6 = v17;
  *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v19[0].__locale_ + *(v6 - 24)) = a1;
  MEMORY[0x2318F6D50](&v17, a3);
  std::stringbuf::str();
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = v8 + size;
  v10 = -size;
  while (v10)
  {
    v11 = *--v9;
    ++v10;
    if (v11 != 48)
    {
      if (v10 != 1)
      {
        v12 = *v9 == 46;
        v13 = 1;
        if (v12)
        {
          v13 = 2;
        }

        std::string::resize(a2, v13 - v10, 0);
      }

      break;
    }
  }

  v16[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v14;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v21);
}

void sub_22EDC9A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::EscapeString(uint64_t a1, unint64_t a2, std::string *this, int a4, int a5)
{
  std::string::append(this, "");
  if (!a2)
  {
LABEL_86:
    std::string::append(this, "");
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = "\\b";
  v11 = "\\t";
  v12 = "\\n";
  v13 = "\\f";
  while (1)
  {
    v14 = (a1 + v8);
    v15 = *(a1 + v8);
    if (*(a1 + v8) <= 0xBu)
    {
      switch(v15)
      {
        case 8:
          v16 = this;
          v17 = v10;
          goto LABEL_21;
        case 9:
          v16 = this;
          v17 = v11;
          goto LABEL_21;
        case 0xA:
          v16 = this;
          v17 = v12;
          goto LABEL_21;
      }
    }

    else if (*(a1 + v8) > 0x21u)
    {
      if (v15 == 34)
      {
        v16 = this;
        v17 = "\\"";
        goto LABEL_21;
      }

      if (v15 == 92)
      {
        v16 = this;
        v17 = "\\\";
        goto LABEL_21;
      }
    }

    else
    {
      if (v15 == 12)
      {
        v16 = this;
        v17 = v13;
        goto LABEL_21;
      }

      if (v15 == 13)
      {
        v16 = this;
        v17 = "\\r";
LABEL_21:
        std::string::append(v16, v17);
        goto LABEL_22;
      }
    }

    if ((v15 - 32) > 0x5E)
    {
      break;
    }

    std::string::push_back(this, v15);
LABEL_22:
    v8 = ++v9;
    if (v9 >= a2)
    {
      goto LABEL_86;
    }
  }

  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = 0;
  v23 = 128;
  v24 = -1;
  while ((v23 & v15) != 0)
  {
    ++v22;
    v23 >>= 1;
    ++v24;
    if (v22 == 6)
    {
      goto LABEL_29;
    }
  }

  if (((v15 << v22) & 0x80) == 0)
  {
    if (v22)
    {
      if (v22 != 1 && v22 <= 4)
      {
        LODWORD(v27) = v15 & ~(-1 << (7 - v22));
        v28 = a1 + 2 + v8 + v22 - 2;
        v29 = (a1 + 1 + v8);
        while (1)
        {
          v30 = v27;
          v32 = *v29++;
          v31 = v32;
          if ((v32 & 0xC0) != 0x80)
          {
            break;
          }

          v27 = v31 & 0x3F | (v30 << 6);
          if (!--v24)
          {
            if ((v30 & 0x3FFFFE0) == 0x360)
            {
              goto LABEL_29;
            }

            v33 = v30 << 6;
            if (v22 == 4)
            {
              if ((v33 - 1114112) < 0xFFF00000)
              {
                goto LABEL_29;
              }
            }

            else if (v22 == 3)
            {
              if ((v33 - 0x10000) < 0xFFFF0800)
              {
                goto LABEL_29;
              }
            }

            else if ((v33 - 2048) < 0xFFFFF880)
            {
              goto LABEL_29;
            }

            goto LABEL_51;
          }
        }
      }

      goto LABEL_29;
    }

    v28 = (v14 + 1);
    v27 = v15;
LABEL_51:
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    if (a5)
    {
      v34 = v28;
      std::string::append(this, v14, v28 - (v8 + a1));
    }

    else
    {
      if (WORD1(v27))
      {
        if (WORD1(v27) <= 0x10u)
        {
          v37 = v28;
          std::string::append(this, "\\u");
          flatbuffers::IntToStringHex((((v27 - 0x10000) >> 10) + 55296), 4);
          if ((v47 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v47 & 0x80u) == 0)
          {
            v39 = v47;
          }

          else
          {
            v39 = v46;
          }

          std::string::append(this, p_p, v39);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          std::string::append(this, "\\u");
          flatbuffers::IntToStringHex((v27 & 0x3FF | 0xDC00), 4);
          if ((v47 & 0x80u) == 0)
          {
            v40 = &__p;
          }

          else
          {
            v40 = __p;
          }

          if ((v47 & 0x80u) == 0)
          {
            v41 = v47;
          }

          else
          {
            v41 = v46;
          }

          std::string::append(this, v40, v41);
          LODWORD(v28) = v37;
          if (v47 < 0)
          {
            operator delete(__p);
            LODWORD(v28) = v37;
          }
        }

        goto LABEL_81;
      }

      v34 = v28;
      std::string::append(this, "\\u");
      flatbuffers::IntToStringHex(v27, 4);
      if ((v47 & 0x80u) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      if ((v47 & 0x80u) == 0)
      {
        v36 = v47;
      }

      else
      {
        v36 = v46;
      }

      std::string::append(this, v35, v36);
      LODWORD(v28) = v34;
      if ((v47 & 0x80000000) == 0)
      {
LABEL_81:
        v9 = v28 + ~a1;
        v10 = v21;
LABEL_38:
        v11 = v20;
        v12 = v19;
        v13 = v18;
        goto LABEL_22;
      }

      operator delete(__p);
    }

    LODWORD(v28) = v34;
    goto LABEL_81;
  }

LABEL_29:
  if (a4)
  {
    std::string::append(this, "\\x");
    flatbuffers::IntToStringHex(v15, 2);
    if ((v47 & 0x80u) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if ((v47 & 0x80u) == 0)
    {
      v26 = v47;
    }

    else
    {
      v26 = v46;
    }

    std::string::append(this, v25, v26);
    v10 = v21;
    if (v47 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_38;
  }

  return 0;
}

void sub_22EDC9EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::IntToStringHex(flatbuffers *this, int a2)
{
  if ((this & 0x80000000) != 0)
  {
    flatbuffers::IntToStringHex();
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v4 = v11;
  v5 = v11;
  *(&v13[1].__locale_ + *(v11 - 24)) = a2;
  v6 = (&v11 + *(v5 - 24));
  if (v6[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v6);
    v7 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v16);
    v4 = v11;
  }

  v6[1].__fmtflags_ = 48;
  *(&v11 + *(v4 - 24) + 8) = *(&v11 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v11 + *(v4 - 24) + 8) |= 0x4000u;
  MEMORY[0x2318F6D70](&v11, this);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318F6E10](&v15);
}

void sub_22EDCA1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t flatbuffers::IterateObject(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = (**a3)(a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    v27 = a1;
    v28 = 0;
    for (i = 0; i < *(a2 + 8); ++i)
    {
      v10 = *(*(a2 + 16) + 2 * i);
      v11 = v10 >> 5;
      if (v11 < 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = (*(*(a2 + 24) + 8 * v11))(v6);
      }

      v13 = *(a2 + 48);
      if (v13)
      {
        v14 = *(v13 + 8 * i);
      }

      else
      {
        v14 = 0;
      }

      if (*a2)
      {
        v15 = (a1 + *(*(a2 + 40) + 8 * i));
      }

      else
      {
        v16 = (a1 - *a1);
        if (*v16 > ((2 * i + 4) & 0xFFFEu) && *(v16 + (2 * i + 4)))
        {
          v15 = (a1 + *(v16 + (2 * i + 4)));
        }

        else
        {
          v15 = 0;
        }
      }

      v17 = v10 & 0xF;
      v6 = (*(*a3 + 16))(a3, i, v8, v17, (v10 >> 4) & 1, v12, v14, v15);
      if (v15)
      {
        ++v8;
        if ((v10 & 0x10) != 0)
        {
          v29 = v8;
          if (*a2)
          {
            v19 = *(*(a2 + 32) + 2 * v28++);
            v20 = v15;
          }

          else
          {
            v15 = (v15 + *v15);
            v20 = v15 + 1;
            v19 = *v15;
          }

          (*(*a3 + 136))(a3);
          if (v19)
          {
            v21 = 0;
            while (1)
            {
              v22.n128_f64[0] = (*(*a3 + 152))(a3, v21, v17, v12, v20);
              flatbuffers::IterateValue(v17, v20, v12, v7, v21, a3, v22);
              if (v17 > 0xD)
              {
LABEL_32:
                if (v17 >= 4)
                {
                  if ((v17 - 4) > 1)
                  {
                    flatbuffers::IterateObject();
                  }

                  v23 = 2;
                }

                else
                {
                  v23 = 1;
                }

                goto LABEL_37;
              }

              if (((1 << v17) & 0x14C0) != 0)
              {
                goto LABEL_34;
              }

              if (((1 << v17) & 0xB00) == 0)
              {
                break;
              }

              v23 = 8;
LABEL_37:
              v20 = (v20 + v23);
              if (v19 == ++v21)
              {
                goto LABEL_38;
              }
            }

            if (v17 != 13)
            {
              goto LABEL_32;
            }

            v24 = *v12;
            if (*v12)
            {
              v23 = 4;
              if (v24 != 2)
              {
                if (v24 != 1)
                {
                  flatbuffers::IterateObject();
                }

                v23 = *(v12[5] + 8 * v12[1]);
              }

              goto LABEL_37;
            }

LABEL_34:
            v23 = 4;
            goto LABEL_37;
          }

LABEL_38:
          v6 = (*(*a3 + 144))(a3);
          a1 = v27;
          v8 = v29;
        }

        else
        {
          v6 = flatbuffers::IterateValue(v10 & 0xF, v15, v12, v7, 0xFFFFFFFF, a3, v18);
        }
      }

      v7 = v15;
    }
  }

  v25 = *(*a3 + 8);

  return v25(a3);
}

uint64_t flatbuffers::IterateValue(uint64_t result, int *a2, void *a3, unsigned int *a4, unsigned int a5, uint64_t a6, __n128 a7)
{
  switch(result)
  {
    case 0:
      v9 = *a2;
      v10 = flatbuffers::EnumName<unsigned char>(*a2, a3);
      v11 = *(*a6 + 24);
      v12 = a6;
      v13 = v9;

      return v11(v12, v13, v10);
    case 1:
      v18 = *a2 != 0;
      v17 = *(*a6 + 32);
      v19 = a6;

      return v17(v19, v18);
    case 2:
      v20 = *a2;
      v10 = flatbuffers::EnumName<signed char>(*a2, a3);
      v11 = *(*a6 + 40);
      v12 = a6;
      v13 = v20;

      return v11(v12, v13, v10);
    case 3:
      v21 = *a2;
      v10 = flatbuffers::EnumName<unsigned char>(*a2, a3);
      v11 = *(*a6 + 48);
      v12 = a6;
      v13 = v21;

      return v11(v12, v13, v10);
    case 4:
      v16 = *a2;
      v10 = flatbuffers::EnumName<signed char>(*a2, a3);
      v11 = *(*a6 + 56);
      v12 = a6;
      v13 = v16;

      return v11(v12, v13, v10);
    case 5:
      v23 = *a2;
      v10 = flatbuffers::EnumName<unsigned char>(*a2, a3);
      v11 = *(*a6 + 64);
      v12 = a6;
      v13 = v23;

      return v11(v12, v13, v10);
    case 6:
      v26 = *a2;
      v10 = flatbuffers::EnumName<signed char>(*a2, a3);
      v11 = *(*a6 + 72);
      v12 = a6;
      v13 = v26;

      return v11(v12, v13, v10);
    case 7:
      v22 = *a2;
      v10 = flatbuffers::EnumName<unsigned char>(*a2, a3);
      v11 = *(*a6 + 80);
      v12 = a6;
      v13 = v22;

      return v11(v12, v13, v10);
    case 8:
      v18 = *a2;
      v17 = *(*a6 + 88);
      v19 = a6;

      return v17(v19, v18);
    case 9:
      v18 = *a2;
      v17 = *(*a6 + 96);
      v19 = a6;

      return v17(v19, v18);
    case 10:
      a7.n128_u32[0] = *a2;
      v14 = *(*a6 + 104);
      v15 = a6;

      return v14(v15, a7);
    case 11:
      a7.n128_u64[0] = *a2;
      v14 = *(*a6 + 112);
      v15 = a6;

      return v14(v15, a7);
    case 12:
      v17 = *(*a6 + 120);
      v18 = a2 + *a2;
      goto LABEL_12;
    case 13:
      v24 = *a3;
      if (*a3 <= 1)
      {
        if (v24)
        {
          if (v24 != 1)
          {
            return result;
          }

          v25 = a2;
        }

        else
        {
          v25 = (a2 + *a2);
        }

        v33 = a3;
        goto LABEL_63;
      }

      if (v24 != 2)
      {
        if (v24 == 3)
        {
          flatbuffers::IterateValue();
        }

        return result;
      }

      if (!a4)
      {
        flatbuffers::IterateValue();
      }

      v29 = *a2;
      if ((a5 & 0x80000000) == 0)
      {
        if (*a4 <= a5)
        {
          flatbuffers::IterateValue();
        }

        a4 = (a4 + a5 + 4);
      }

      v30 = a3[5];
      v31 = a3[1];
      if (v30)
      {
        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = 0;
        while (*(v30 + 8 * v32) != *a4)
        {
          if (v31 == ++v32)
          {
            goto LABEL_74;
          }
        }

        if (v32 < 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v32 = *a4;
      }

      if (v32 >= v31)
      {
LABEL_74:
        v27 = *(*a6 + 128);
        v28 = a6;
LABEL_47:

        return v27(v28);
      }

      v34 = *(a3[2] + 2 * v32);
      if ((v34 & 0xF) != 0xC)
      {
        if ((v34 & 0xF) == 0xD)
        {
          v33 = (*(a3[3] + 8 * (v34 >> 5)))();
          v25 = (a2 + v29);
LABEL_63:

          return flatbuffers::IterateObject(v25, v33, a6);
        }

        goto LABEL_74;
      }

      v17 = *(*a6 + 120);
      v18 = a2 + v29;
LABEL_12:
      v19 = a6;

      return v17(v19, v18);
    default:
      v27 = *(*a6 + 128);
      v28 = a6;
      goto LABEL_47;
  }
}

uint64_t flatbuffers::EnumName<unsigned char>(unsigned int a1, void *a2)
{
  if (a2)
  {
    v2 = a2[6];
    if (v2)
    {
      v3 = a2[5];
      v4 = a2[1];
      if (v3)
      {
        if (!v4)
        {
          return 0;
        }

        v5 = 0;
        while (*(v3 + 8 * v5) != a1)
        {
          if (v4 == ++v5)
          {
            return 0;
          }
        }

        if (v5 < 0)
        {
          return 0;
        }
      }

      else
      {
        v5 = a1;
      }

      if (v5 < v4)
      {
        return *(v2 + 8 * v5);
      }
    }
  }

  return 0;
}

uint64_t flatbuffers::EnumName<signed char>(int a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = a2[5];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = 0;
      while (*(v3 + 8 * v5) != a1)
      {
        if (v4 == ++v5)
        {
          return 0;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  v5 = a1;
LABEL_10:
  result = 0;
  if ((v5 & 0x8000000000000000) == 0 && v5 < v4)
  {
    return *(v2 + 8 * v5);
  }

  return result;
}

uint64_t ktrace_address_space_iterate_symbol_owners(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a2 + 16);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    v7 = result;
    do
    {
      v8 = *(v4 + 16);
      if (v8 > 3)
      {
        if (v8 == 4)
        {
          v9 = *(v7 + 248);
          if (v9)
          {
            v10 = *(v9 + 16);
            v11 = *v10;
            v12 = v10[1];
            while (v11 != v12)
            {
              v13 = 0;
              result = (*(a3 + 16))(a3, v11, &v13);
              v11 += 96;
            }
          }

          goto LABEL_11;
        }

        if (v8 != 5)
        {
          goto LABEL_19;
        }
      }

      else if ((v8 - 1) >= 2 && v8 != 3)
      {
LABEL_19:
        ktrace_address_space_deep_iterate_symbol_owners();
      }

      v13 = 0;
      result = (*(a3 + 16))(a3, v4, &v13);
LABEL_11:
      v4 += 96;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t ___ZL17ktrace_dumpbufferP14ktrace_sessionP15ktrace_uuid_mapRNSt3__16vectorIP20ktrace_address_spaceNS3_9allocatorIS6_EEEEy_block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 88) & 2) != 0)
  {
    v2 = result;
    result = *a2;
    v3 = *(a2 + 8);
    if (result | v3)
    {
      v4 = *(*(v2 + 40) + 8);
      v5 = uuid_string(result, v3);
      result = flatbuffers::FlatBufferBuilder::CreateString((v4 + 48), v5, 0x24uLL);
      *(*(*(v2 + 32) + 8) + 48) = result;
    }
  }

  return result;
}

uint64_t ktrace_address_space_buildbuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, flatbuffers::FlatBufferBuilder *this, uint64_t a7, uint64_t a8)
{
  String = flatbuffers::FlatBufferBuilder::CreateString(this, "__TEXT", 6uLL);
  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = __Block_byref_object_copy__370;
  v41 = __Block_byref_object_dispose__371;
  v42 = "";
  v44 = 0;
  v45 = 0;
  __p = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3812000000;
  v33 = __Block_byref_object_copy__373;
  v34 = __Block_byref_object_dispose__374;
  v35 = "";
  v36 = 0;
  if (a8)
  {
    v17 = ktrace_address_space_iterate_symbol_owners;
  }

  else
  {
    v17 = ktrace_address_space_deep_iterate_symbol_owners;
  }

  v18 = *(a2 + 80);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke;
  v28[3] = &unk_27886F920;
  v28[6] = a2;
  v28[7] = this;
  v28[8] = a8;
  v28[9] = a7;
  v28[10] = a1;
  v29 = String;
  v28[4] = &v30;
  v28[5] = &v37;
  v17(v18, a3, v28);
  v19 = v38[7] - v38[6];
  if (v19)
  {
    v20 = v38[6];
  }

  else
  {
    v20 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>> const&)::t;
  }

  v21 = flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(this, v20, v19 >> 2);
  if (*(v31 + 12))
  {
    v22 = flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(this, (v31 + 6), 1);
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v23 = *(this + 8);
  v24 = *(this + 12);
  v25 = *(this + 10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, a4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(this, 6, a5);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(this, 8, v21);
  if (v22)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(this, 10, v22);
  }

  v26 = flatbuffers::FlatBufferBuilder::EndTable(this, v23 - v24 + v25);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v37, 8);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return v26;
}

void sub_22EDCB154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t callback_deallocate_buffer(uint64_t result, void *a2)
{
  if (result)
  {
    return MEMORY[0x2318F6E30](result - a2, 0x1000C8077774924);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::FlatBufferBuilder(uint64_t a1, flatbuffers::FlatBufferBuilder *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_22EE3F2D0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 256;
  *(a1 + 88) = 0;
  flatbuffers::FlatBufferBuilder::Swap(a1, a2);
  return a1;
}

uint64_t *flatbuffers::FlatBufferBuilder::Swap(flatbuffers::FlatBufferBuilder *this, flatbuffers::FlatBufferBuilder *a2)
{
  result = flatbuffers::vector_downward::swap(this, a2);
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  LOWORD(v5) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v5;
  LOBYTE(v5) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v5;
  LOBYTE(v5) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LOBYTE(v6) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v6;
  LOBYTE(v6) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  return result;
}

uint64_t *flatbuffers::vector_downward::swap(uint64_t *this, flatbuffers::vector_downward *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  LOBYTE(v2) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[4];
  v6 = this[5];
  v7 = *(a2 + 5);
  this[4] = *(a2 + 4);
  this[5] = v7;
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v9;
  return this;
}

__n128 __Block_byref_object_copy__370(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__371(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke(uint64_t a1, uint64_t a2, optional_uint64 *a3)
{
  v6 = objc_autoreleasePoolPush();
  uuid = find_or_create_uuid(*(a1 + 48), a2);
  v8 = *(a2 + 48);
  if (*a3)
  {
    v8 += optional_uint64::value(a3);
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x4812000000;
  v114 = __Block_byref_object_copy__376;
  v115 = __Block_byref_object_dispose__377;
  v116 = "";
  v118 = 0;
  v119 = 0;
  __p = 0;
  v9 = *(a2 + 16);
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v10 = strlen((a2 + 24));
        String = flatbuffers::FlatBufferBuilder::CreateString(*(a1 + 56), (a2 + 24), v10);
        v12 = *(a1 + 56);
        flatbuffers::FlatBufferBuilder::NotNested(v12);
        *(v12 + 70) = 1;
        v13 = *(v12 + 32);
        v14 = *(v12 + 48);
        v15 = *(v12 + 40);
        flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v12, 4, String);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v12, 6, v8, -1);
        if (*(a2 + 56))
        {
          v16 = optional_uint64::value((a2 + 56));
        }

        else
        {
          if (strcmp((a2 + 24), "__TEXT"))
          {
            goto LABEL_31;
          }

          ktrace_find_text_size(*(a1 + 48), uuid);
          if ((*(uuid + 80) & 8) == 0)
          {
            goto LABEL_31;
          }

          v16 = *(uuid + 7);
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v12, 8, v16, 0);
LABEL_31:
        v49 = v112;
        LODWORD(v103) = flatbuffers::FlatBufferBuilder::EndTable(v12, v13 - v14 + v15);
        std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100](v49 + 6, &v103);
        goto LABEL_36;
      }

LABEL_77:
      v101 = _os_crash();
      ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7(v101);
    }

    if (ktrace_find_base_address(*(a1 + 48), uuid))
    {
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke_379;
      v109[3] = &unk_27886F8F8;
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v109[6] = uuid;
      v109[7] = a2;
      v109[4] = &v111;
      v109[5] = v21;
      if (ktrace_iterate_segments(v20, uuid, v109))
      {
        goto LABEL_36;
      }
    }

    v22 = *(a1 + 56);
    flatbuffers::FlatBufferBuilder::NotNested(v22);
    *(v22 + 70) = 1;
    v23 = *(v22 + 32);
    v24 = *(v22 + 48);
    v25 = *(v22 + 40);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v22, 4, *(a1 + 88));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v22, 6, v8, -1);
    if (*(a2 + 56))
    {
      v26 = optional_uint64::value((a2 + 56));
    }

    else
    {
      ktrace_find_text_size(*(a1 + 48), uuid);
      if ((*(uuid + 80) & 8) == 0)
      {
LABEL_35:
        v50 = v23 - v24;
        v51 = v112;
        LODWORD(v103) = flatbuffers::FlatBufferBuilder::EndTable(v22, v50 + v25);
        std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100](v51 + 6, &v103);
        goto LABEL_36;
      }

      v26 = *(uuid + 7);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v22, 8, v26, 0);
    goto LABEL_35;
  }

  if (v9 == 5)
  {
    v27 = *(a1 + 56);
    flatbuffers::FlatBufferBuilder::NotNested(v27);
    *(v27 + 70) = 1;
    v28 = *(v27 + 32);
    v29 = *(v27 + 48);
    v30 = *(v27 + 40);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v27, 6, v8, -1);
    if (*(a2 + 56))
    {
      v31 = optional_uint64::value((a2 + 56));
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v27, 8, v31, 0);
    }

    v32 = v28 - v29;
    v33 = v112;
    LODWORD(v103) = flatbuffers::FlatBufferBuilder::EndTable(v27, v32 + v30);
    std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100](v33 + 6, &v103);
LABEL_36:
    *&v103 = 0;
    *(&v103 + 1) = &v103;
    v104 = 0x3812000000;
    v105 = __Block_byref_object_copy__353;
    v106 = __Block_byref_object_dispose__354;
    v107 = "";
    v108 = 0;
    if (*a2 == 0)
    {
      v54 = 0;
    }

    else
    {
      v52 = *(a1 + 56);
      v53 = uuid_string(*a2, *(a2 + 8));
      v54 = flatbuffers::FlatBufferBuilder::CreateString(v52, v53, 0x24uLL);
    }

    v55 = *(a2 + 80);
    if (v55)
    {
      v56 = *(a1 + 56);
      v57 = utf8(v55);
      v58 = strlen(v57);
      v59 = flatbuffers::FlatBufferBuilder::CreateString(v56, v57, v58);
    }

    else
    {
      v86 = *(uuid + 18);
      v87 = *(uuid + 19);
      v88 = lookup_inode(*(*(*(a1 + 48) + 80) + 224), v86, v87);
      if (!v88)
      {
        v99 = *(*(a1 + 48) + 80);
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke_2;
        v102[3] = &unk_27886EE68;
        v100 = *(a1 + 56);
        v102[4] = &v103;
        v102[5] = v100;
        ktrace_uuid_map_iterate_associated_paths(v99, a2, v102);
        goto LABEL_42;
      }

      Value = CFDictionaryGetValue(v88, @"Path");
      v90 = Value;
      if (!Value)
      {
LABEL_42:
        v60 = v112[7] - v112[6];
        if (v60)
        {
          v61 = v112[6];
        }

        else
        {
          v61 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::Segment>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::Segment>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::Segment>> const&)::t;
        }

        v62 = flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(*(a1 + 56), v61, v60 >> 2);
        v63 = *(a1 + 56);
        flatbuffers::FlatBufferBuilder::NotNested(v63);
        *(v63 + 70) = 1;
        v64 = *(v63 + 32);
        v65 = *(v63 + 48);
        v66 = *(v63 + 40);
        if (v54)
        {
          flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v63, 4, v54);
        }

        v67 = *(*(&v103 + 1) + 48);
        if (v67)
        {
          flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v63, 6, v67);
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v63, 8, *(a2 + 64), 0);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v63, 10, *(a2 + 72), 0);
        v68 = flatbuffers::FlatBufferBuilder::EndTable(v63, v64 - v65 + v66);
        v69 = *(a1 + 56);
        flatbuffers::FlatBufferBuilder::NotNested(v69);
        *(v69 + 70) = 1;
        v70 = *(v69 + 32);
        v71 = *(v69 + 48);
        v72 = *(v69 + 40);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v69, 4, 1, 0);
        flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v69, 6, v68);
        v73 = *(a2 + 16);
        if (v73 == 5)
        {
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v69, 10, v8, -1);
          v73 = *(a2 + 16);
        }

        if (v73 == 1)
        {
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v69, 12, 1, 0);
        }

        flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v69, 8, v62);
        v74 = *(*(a1 + 40) + 8);
        v75 = flatbuffers::FlatBufferBuilder::EndTable(v69, v70 - v71 + v72);
        v77 = v74[7];
        v76 = v74[8];
        if (v77 >= v76)
        {
          v79 = v74[6];
          v80 = v77 - v79;
          v81 = (v77 - v79) >> 2;
          v82 = v81 + 1;
          if ((v81 + 1) >> 62)
          {
            std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
          }

          v83 = v76 - v79;
          if (v83 >> 1 > v82)
          {
            v82 = v83 >> 1;
          }

          v84 = v83 >= 0x7FFFFFFFFFFFFFFCLL;
          v85 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v84)
          {
            v85 = v82;
          }

          if (v85)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>((v74 + 6), v85);
          }

          v95 = (v77 - v79) >> 2;
          v96 = (4 * v81);
          v97 = (4 * v81 - 4 * v95);
          *v96 = v75;
          v78 = v96 + 1;
          memcpy(v97, v79, v80);
          v98 = v74[6];
          v74[6] = v97;
          v74[7] = v78;
          v74[8] = 0;
          if (v98)
          {
            operator delete(v98);
          }
        }

        else
        {
          *v77 = v75;
          v78 = v77 + 4;
        }

        v74[7] = v78;
        _Block_object_dispose(&v103, 8);
        goto LABEL_69;
      }

      v91 = CFGetTypeID(Value);
      if (v91 != CFStringGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
        }

        goto LABEL_42;
      }

      v92 = *(a1 + 56);
      v93 = utf8(v90);
      v94 = strlen(v93);
      v59 = flatbuffers::FlatBufferBuilder::CreateString(v92, v93, v94);
    }

    *(*(&v103 + 1) + 48) = v59;
    goto LABEL_42;
  }

  if (v9 != 3)
  {
    goto LABEL_77;
  }

  v110 = 0;
  get_sc_and_slide(*(*(a1 + 48) + 80), a2, a3, &v110);
  if (*a2 == 0)
  {
    v19 = 0;
  }

  else
  {
    v17 = *(a1 + 56);
    v18 = uuid_string(*a2, *(a2 + 8));
    v19 = flatbuffers::FlatBufferBuilder::CreateString(v17, v18, 0x24uLL);
  }

  v34 = *(a1 + 56);
  flatbuffers::FlatBufferBuilder::NotNested(v34);
  *(v34 + 70) = 1;
  v35 = *(v34 + 32);
  v36 = *(v34 + 48);
  v37 = *(v34 + 40);
  v103 = *a2;
  if (v103 != 0)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v34, 4, v19);
  }

  v38 = flatbuffers::FlatBufferBuilder::EndTable(v34, v35 - v36 + v37);
  v39 = *(a1 + 56);
  flatbuffers::FlatBufferBuilder::NotNested(v39);
  *(v39 + 70) = 1;
  v40 = *(v39 + 32);
  v41 = *(v39 + 48);
  v42 = *(v39 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 4, 1, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v39, 6, v38);
  if (*a3)
  {
    v43 = optional_uint64::value(a3);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 8, v43, -1);
  }

  *(*(*(a1 + 32) + 8) + 48) = flatbuffers::FlatBufferBuilder::EndTable(v39, v40 - v41 + v42);
  if (*(a1 + 64))
  {
    v44 = v110;
    if (v110)
    {
      if (!std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::find<CFUUIDBytes>(*(a1 + 72), a2))
      {
        v45 = *(a1 + 72);
        v46 = *(a1 + 64);
        v47 = ktrace_address_space_buildbuffer(*(a1 + 80), *(a1 + 48), v44, 3, v38, *(a1 + 56));
        v48 = *(a1 + 72);
        *&v103 = a2;
        *(std::__hash_table<std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(v48, a2) + 8) = v47;
      }
    }
  }

LABEL_69:
  _Block_object_dispose(&v111, 8);
  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_22EDCBCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a32, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__376(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__377(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke_379(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4)
{
  if (strcmp(__s1, "__LINKEDIT"))
  {
    if (strcmp(__s1, "__PAGEZERO"))
    {
      v8 = strlen(__s1);
      String = flatbuffers::FlatBufferBuilder::CreateString(*(a1 + 40), __s1, v8);
      v10 = *(a1 + 40);
      flatbuffers::FlatBufferBuilder::NotNested(v10);
      *(v10 + 70) = 1;
      v11 = *(v10 + 40);
      v12 = *(v10 + 32) - *(v10 + 48);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v10, 4, String);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v10, 6, a3 - *(*(a1 + 48) + 48) + *(*(a1 + 56) + 48), -1);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v10, 8, a4, 0);
      v13 = *(*(a1 + 32) + 8);
      v14 = flatbuffers::FlatBufferBuilder::EndTable(v10, v12 + v11);
      std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100]((v13 + 48), &v14);
    }
  }
}

uint64_t ___ZL32ktrace_address_space_buildbufferP14ktrace_sessionP21symbolication_contextP20ktrace_address_spaceN17FlatbufferSymbols20AddressSpaceMetadataEN11flatbuffers6OffsetIvEERNS7_17FlatBufferBuilderERNSt3__113unordered_mapI11CFUUIDBytesNS8_INS5_12SymbolicatorEEENSC_4hashISE_EENSC_8equal_toISE_EENSC_9allocatorINSC_4pairIKSE_SG_EEEEEEy_block_invoke_2(uint64_t result, const __CFString *a2)
{
  if (!*(*(*(result + 32) + 8) + 48))
  {
    v2 = result;
    v3 = *(result + 40);
    v4 = utf8(a2);
    v5 = strlen(v4);
    result = flatbuffers::FlatBufferBuilder::CreateString(v3, v4, v5);
    *(*(*(v2 + 32) + 8) + 48) = result;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__deallocate_node(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CF::TypeRef::~TypeRef(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void sub_22EDCC448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CF::TypeRef::~TypeRef(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

_OWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,SymbolOwner *,BOOL (*&)(SymbolOwner const&,SymbolOwner const&)>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  v4 = a2;
  v6 = a1[3];
  v38 = a1[2];
  v39 = v6;
  v7 = a1[5];
  v40 = a1[4];
  v41 = v7;
  v8 = a1[1];
  v36 = *a1;
  v37 = v8;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  if ((*a3)(&v36, a2 - 6))
  {
    v9 = a1;
    do
    {
      v9 += 6;
    }

    while (((*a3)(&v36, v9) & 1) == 0);
  }

  else
  {
    v10 = a1 + 6;
    do
    {
      v9 = v10;
      if (v10 >= v4)
      {
        break;
      }

      v11 = (*a3)(&v36, v10);
      v10 = v9 + 6;
    }

    while (!v11);
  }

  if (v9 < v4)
  {
    do
    {
      v4 -= 6;
    }

    while (((*a3)(&v36, v4) & 1) != 0);
  }

  while (v9 < v4)
  {
    v12 = v9[1];
    v42 = *v9;
    v43 = v12;
    v13 = v9[2];
    v14 = v9[3];
    v15 = v9[5];
    v46 = v9[4];
    v47 = v15;
    v44 = v13;
    v45 = v14;
    v9[2] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    v16 = v4[1];
    *v9 = *v4;
    v9[1] = v16;
    v17 = v4[2];
    v18 = v4[3];
    v19 = v4[5];
    v9[4] = v4[4];
    v9[5] = v19;
    v9[2] = v17;
    v9[3] = v18;
    v20 = v47;
    v22 = v44;
    v21 = v45;
    v4[4] = v46;
    v4[5] = v20;
    v4[2] = v22;
    v4[3] = v21;
    v23 = v43;
    *v4 = v42;
    v4[1] = v23;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v42 = 0u;
    v43 = 0u;
    SymbolOwner::~SymbolOwner(&v42);
    do
    {
      v9 += 6;
    }

    while (!(*a3)(&v36, v9));
    do
    {
      v4 -= 6;
    }

    while (((*a3)(&v36, v4) & 1) != 0);
  }

  v24 = v9 - 6;
  if (v9 - 6 == a1)
  {
    v30 = *(v9 - 2);
    if (v30)
    {
      CFRelease(v30);
    }
  }

  else
  {
    v25 = *(a1 + 10);
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = *(v9 - 5);
    *a1 = *v24;
    a1[1] = v26;
    v27 = *(v9 - 4);
    v28 = *(v9 - 3);
    v29 = *(v9 - 1);
    a1[4] = *(v9 - 2);
    a1[5] = v29;
    a1[2] = v27;
    a1[3] = v28;
    *(v9 - 4) = 0u;
    *(v9 - 3) = 0u;
    *(v9 - 2) = 0u;
    *(v9 - 1) = 0u;
    *v24 = 0u;
    *(v9 - 5) = 0u;
  }

  v31 = v37;
  *v24 = v36;
  *(v9 - 5) = v31;
  v32 = v38;
  v33 = v39;
  v34 = v41;
  *(v9 - 2) = v40;
  *(v9 - 1) = v34;
  *(v9 - 4) = v32;
  *(v9 - 3) = v33;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = 0u;
  v37 = 0u;
  SymbolOwner::~SymbolOwner(&v36);
  return v9;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,SymbolOwner*>(char *a1, char *a2, char *a3, unsigned int (**a4)(uint64_t, __int128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 97)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = &a1[96 * v11];
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(a1, a4, v10, v13);
        v13 -= 96;
        --v12;
      }

      while (v12);
    }

    v14 = a2;
    if (a2 != a3)
    {
      v14 = a2;
      do
      {
        if ((*a4)(v14, a1, a5))
        {
          v15 = *(v14 + 3);
          v47 = *(v14 + 2);
          v48 = v15;
          v16 = *(v14 + 5);
          v49 = *(v14 + 4);
          v50 = v16;
          v17 = *(v14 + 1);
          v45 = *v14;
          v46 = v17;
          *v14 = 0u;
          *(v14 + 1) = 0u;
          *(v14 + 2) = 0u;
          *(v14 + 3) = 0u;
          *(v14 + 4) = 0u;
          *(v14 + 5) = 0u;
          v18 = *(a1 + 2);
          v19 = *(a1 + 3);
          v20 = *(a1 + 5);
          *(v14 + 4) = *(a1 + 4);
          *(v14 + 5) = v20;
          *(v14 + 2) = v18;
          *(v14 + 3) = v19;
          v21 = *(a1 + 1);
          *v14 = *a1;
          *(v14 + 1) = v21;
          v22 = v48;
          *(a1 + 2) = v47;
          *(a1 + 3) = v22;
          v23 = v50;
          *(a1 + 4) = v49;
          *(a1 + 5) = v23;
          v24 = v46;
          *a1 = v45;
          *(a1 + 1) = v24;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          SymbolOwner::~SymbolOwner(&v45);
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(a1, a4, v10, a1);
        }

        v14 += 96;
      }

      while (v14 != a3);
    }

    if (v9 >= 97)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 5);
      v26 = a2 - 96;
      do
      {
        v27 = *(a1 + 3);
        v47 = *(a1 + 2);
        v48 = v27;
        v28 = *(a1 + 5);
        v49 = *(a1 + 4);
        v50 = v28;
        v29 = *(a1 + 1);
        v45 = *a1;
        v46 = v29;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        v30 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(a1, a4, v25);
        v31 = *(v30 + 10);
        if (v26 == v30)
        {
          if (v31)
          {
            CFRelease(v31);
          }

          v39 = v46;
          *v30 = v45;
          *(v30 + 1) = v39;
          v40 = v47;
          v41 = v48;
          v42 = v50;
          *(v30 + 4) = v49;
          *(v30 + 5) = v42;
          *(v30 + 2) = v40;
          *(v30 + 3) = v41;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v45 = 0u;
          v46 = 0u;
        }

        else
        {
          if (v31)
          {
            CFRelease(v31);
          }

          v32 = *(v26 + 1);
          *v30 = *v26;
          *(v30 + 1) = v32;
          v33 = *(v26 + 2);
          v34 = *(v26 + 3);
          v35 = *(v26 + 5);
          *(v30 + 4) = *(v26 + 4);
          *(v30 + 5) = v35;
          *(v30 + 2) = v33;
          *(v30 + 3) = v34;
          v36 = v48;
          *(v26 + 2) = v47;
          *(v26 + 3) = v36;
          v37 = v50;
          *(v26 + 4) = v49;
          *(v26 + 5) = v37;
          v38 = v46;
          *v26 = v45;
          *(v26 + 1) = v38;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v45 = 0u;
          v46 = 0u;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(a1, (v30 + 96), a4, 0xAAAAAAAAAAAAAAABLL * ((v30 + 96 - a1) >> 5));
        }

        SymbolOwner::~SymbolOwner(&v45);
        v26 -= 96;
      }

      while (v25-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int128 *), uint64_t a3, _OWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 5)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 5)) | 1;
      v11 = (a1 + 96 * v10);
      v12 = 0x5555555555555556 * ((a4 - a1) >> 5) + 2;
      if (v12 < a3 && (*a2)(a1 + 96 * v10, v11 + 6))
      {
        v11 += 6;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        v14 = v5[3];
        v31 = v5[2];
        v32 = v14;
        v15 = v5[5];
        v33 = v5[4];
        v34 = v15;
        v16 = v5[1];
        v29 = *v5;
        v30 = v16;
        *v5 = 0u;
        v5[1] = 0u;
        v5[2] = 0u;
        v5[3] = 0u;
        v5[4] = 0u;
        v5[5] = 0u;
        while (1)
        {
          v17 = v11;
          v18 = *(v5 + 10);
          if (v18)
          {
            CFRelease(v18);
          }

          v19 = v11[1];
          *v5 = *v11;
          v5[1] = v19;
          v20 = v11[2];
          v21 = v11[3];
          v22 = v11[5];
          v5[4] = v11[4];
          v5[5] = v22;
          v5[2] = v20;
          v5[3] = v21;
          v11[2] = 0u;
          v11[3] = 0u;
          v11[4] = 0u;
          v11[5] = 0u;
          *v11 = 0u;
          v11[1] = 0u;
          if (v7 < v10)
          {
            break;
          }

          v23 = (2 * v10) | 1;
          v11 = (a1 + 96 * v23);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v23;
          }

          else if ((*a2)(a1 + 96 * v23, v11 + 6))
          {
            v11 += 6;
          }

          else
          {
            v10 = v23;
          }

          v5 = v17;
          if ((*a2)(v11, &v29))
          {
            v24 = *(v17 + 10);
            if (v24)
            {
              CFRelease(v24);
            }

            break;
          }
        }

        v25 = v30;
        *v17 = v29;
        v17[1] = v25;
        v26 = v31;
        v27 = v32;
        v28 = v34;
        v17[4] = v33;
        v17[5] = v28;
        v17[2] = v26;
        v17[3] = v27;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v29 = 0u;
        v30 = 0u;
        SymbolOwner::~SymbolOwner(&v29);
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(_OWORD *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[6 * v6];
    v9 = v8 + 6;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 12;
      if ((*a2)((v8 + 6), (v8 + 12)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    v13 = *(a1 + 10);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = v9[1];
    *a1 = *v9;
    a1[1] = v14;
    v15 = v9[2];
    v16 = v9[3];
    v17 = v9[5];
    a1[4] = v9[4];
    a1[5] = v17;
    a1[2] = v15;
    a1[3] = v16;
    v9[2] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(_OWORD *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 96 * (v4 >> 1));
    v9 = (a2 - 96);
    if ((*a3)(v8, (a2 - 96)))
    {
      v10 = v9[3];
      v25 = v9[2];
      v26 = v10;
      v11 = v9[5];
      v27 = v9[4];
      v28 = v11;
      v12 = v9[1];
      v23 = *v9;
      v24 = v12;
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      while (1)
      {
        v13 = v8;
        v14 = *(v9 + 10);
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = v8[1];
        *v9 = *v8;
        v9[1] = v15;
        v16 = v8[2];
        v17 = v8[3];
        v18 = v8[5];
        v9[4] = v8[4];
        v9[5] = v18;
        v9[2] = v16;
        v9[3] = v17;
        v8[2] = 0u;
        v8[3] = 0u;
        v8[4] = 0u;
        v8[5] = 0u;
        *v8 = 0u;
        v8[1] = 0u;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 96 * v7);
        v9 = v13;
        if (((*a3)(v8, &v23) & 1) == 0)
        {
          v19 = *(v13 + 10);
          if (v19)
          {
            CFRelease(v19);
          }

          break;
        }
      }

      v20 = v26;
      v13[2] = v25;
      v13[3] = v20;
      v21 = v28;
      v13[4] = v27;
      v13[5] = v21;
      v22 = v24;
      *v13 = v23;
      v13[1] = v22;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      SymbolOwner::~SymbolOwner(&v23);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void sub_22EDCD018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CS::TypeRef::~TypeRef((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes,CF::TypeRef>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void sub_22EDCD2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes&,CS::TypeRef>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void sub_22EDCD558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PrepassOp>::__emplace_back_slow_path<PrepassOp>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PrepassOp>>(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = a2[1];
  *v8 = *a2;
  *(v8 + 1) = v9;
  a2[1] = 0;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = (16 * v2 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PrepassOp>,PrepassOp*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<PrepassOp>::~__split_buffer(&v16);
  return v15;
}

void sub_22EDCD668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PrepassOp>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PrepassOp>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PrepassOp>,PrepassOp*>(uint64_t a1, PrepassOp *a2, PrepassOp *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      v7 = *(v6 + 1);
      *a4 = *v6;
      a4[1] = v7;
      a4 += 2;
      *(v6 + 1) = 0;
      v6 = (v6 + 16);
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      PrepassOp::~PrepassOp(v5);
      v5 = (v8 + 16);
    }
  }
}

uint64_t std::__split_buffer<PrepassOp>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    PrepassOp::~PrepassOp((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 2;
  v97 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if (*(a2 - 2) < *v11)
        {
          v90 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v90;
          v91 = *v11;
          *v11 = *(a2 - 2);
          *(a2 - 2) = v91;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      v75 = v11 + 2;
      v76 = v11[2];
      v77 = *(a2 - 2);
      v78 = *v11;
      if (v76 >= *v11)
      {
        if (v77 >= v76)
        {
          return;
        }

        v92 = v11[3];
        v11[3] = *(a2 - 1);
        *(a2 - 1) = v92;
        v93 = v11[2];
        v11[2] = *(a2 - 2);
        *(a2 - 2) = v93;
        if (v11[2] >= *v11)
        {
          return;
        }

        v94 = v11[1];
        v11[1] = v11[3];
        v11[3] = v94;
      }

      else
      {
        v79 = v11[1];
        if (v77 >= v76)
        {
          v95 = v11[3];
          *v11 = v76;
          v11[1] = v95;
          v11[2] = v78;
          v11[3] = v79;
          if (*(a2 - 2) >= v78)
          {
            return;
          }

          v11[3] = *(a2 - 1);
          *(a2 - 1) = v79;
          a1 = v11 + 2;
        }

        else
        {
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v79;
        }

        v75 = a2 - 2;
      }

      v96 = *a1;
      *a1 = *v75;
      *v75 = v96;
      return;
    }

    if (v14 == 4)
    {
      break;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,0>(v11, v11 + 2, v11 + 4, v11 + 6);
      if (*(a2 - 2) < v11[6])
      {
        v80 = v11[7];
        v11[7] = *(a2 - 1);
        *(a2 - 1) = v80;
        v81 = v11[6];
        v11[6] = *(a2 - 2);
        *(a2 - 2) = v81;
        v82 = v11[6];
        v83 = v11[4];
        if (v82 < v83)
        {
          v84 = v11[5];
          v85 = v11[7];
          v11[4] = v82;
          v11[5] = v85;
          v11[6] = v83;
          v11[7] = v84;
          v86 = v11[2];
          if (v82 < v86)
          {
            v87 = v11[3];
            v11[2] = v82;
            v11[3] = v85;
            v11[4] = v86;
            v11[5] = v87;
            v88 = *v11;
            if (v82 < *v11)
            {
              v89 = v11[1];
              *v11 = v82;
              v11[1] = v85;
              v11[2] = v88;
              v11[3] = v89;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(v11, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(v11, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,PrepassOp *>(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[2 * (v14 >> 1)];
    v16 = v15;
    v17 = *v9;
    if (v14 < 0x81)
    {
      v22 = *v11;
      v23 = *v15;
      if (*v11 >= *v15)
      {
        if (v17 < v22)
        {
          v29 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v29;
          v30 = *v11;
          *v11 = *(a2 - 2);
          *(a2 - 2) = v30;
          if (*v11 < *v16)
          {
            v31 = v16[1];
            v16[1] = v11[1];
            v11[1] = v31;
            v32 = v11;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v24 = v15[1];
        if (v17 < v22)
        {
          v16[1] = *(a2 - 1);
          *(a2 - 1) = v24;
          goto LABEL_37;
        }

        v45 = v11[1];
        *v16 = v22;
        v16[1] = v45;
        *v11 = v23;
        v11[1] = v24;
        if (*v9 < v23)
        {
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v24;
          v16 = v11;
LABEL_37:
          v32 = a2 - 2;
LABEL_38:
          v46 = *v16;
          *v16 = *v32;
          *v32 = v46;
        }
      }

      if (a5)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    v18 = *v15;
    v19 = *v11;
    if (*v15 < *v11)
    {
      v20 = v11[1];
      if (v17 >= v18)
      {
        v33 = v15[1];
        *v11 = v18;
        v11[1] = v33;
        *v15 = v19;
        v15[1] = v20;
        if (*v9 >= v19)
        {
          goto LABEL_29;
        }

        v15[1] = *(a2 - 1);
        *(a2 - 1) = v20;
        v21 = v15;
      }

      else
      {
        v11[1] = *(a2 - 1);
        *(a2 - 1) = v20;
        v21 = v11;
      }

      v28 = a2 - 2;
      goto LABEL_28;
    }

    if (v17 < v18)
    {
      v25 = v15[1];
      v15[1] = *(a2 - 1);
      *(a2 - 1) = v25;
      v26 = *v15;
      *v15 = *(a2 - 2);
      *(a2 - 2) = v26;
      if (*v15 < *v11)
      {
        v27 = v11[1];
        v11[1] = v15[1];
        v15[1] = v27;
        v21 = v11;
        v28 = v15;
LABEL_28:
        v34 = *v21;
        *v21 = *v28;
        *v28 = v34;
      }
    }

LABEL_29:
    v35 = v11 + 2;
    v36 = v11[2];
    v37 = v15 - 2;
    v38 = *(v15 - 2);
    v39 = *v97;
    if (v38 < v36)
    {
      v40 = v11[3];
      if (v39 >= v38)
      {
        v47 = *(v15 - 1);
        v11[2] = v38;
        v11[3] = v47;
        *v37 = v36;
        *(v15 - 1) = v40;
        if (*v97 >= v36)
        {
          goto LABEL_45;
        }

        *(v15 - 1) = *(a2 - 3);
        *(a2 - 3) = v40;
        v35 = v15 - 2;
      }

      else
      {
        v11[3] = *(a2 - 3);
        *(a2 - 3) = v40;
      }

      v44 = a2 - 4;
      goto LABEL_44;
    }

    if (v39 < v38)
    {
      v41 = *(v15 - 1);
      *(v15 - 1) = *(a2 - 3);
      *(a2 - 3) = v41;
      v42 = *v37;
      *v37 = *(a2 - 4);
      *(a2 - 4) = v42;
      if (*v37 < *v35)
      {
        v43 = v11[3];
        v11[3] = *(v15 - 1);
        *(v15 - 1) = v43;
        v44 = v15 - 2;
LABEL_44:
        v48 = *v35;
        *v35 = *v44;
        *v44 = v48;
      }
    }

LABEL_45:
    v49 = v11 + 4;
    v50 = v11[4];
    v53 = v15[2];
    v51 = v15 + 2;
    v52 = v53;
    v54 = *v10;
    if (v53 < v50)
    {
      v55 = v11[5];
      if (v54 >= v52)
      {
        v60 = v51[1];
        v11[4] = v52;
        v11[5] = v60;
        *v51 = v50;
        v51[1] = v55;
        v52 = v50;
        if (*v10 >= v50)
        {
          goto LABEL_55;
        }

        v51[1] = *(a2 - 5);
        *(a2 - 5) = v55;
        v49 = v51;
      }

      else
      {
        v11[5] = *(a2 - 5);
        *(a2 - 5) = v55;
      }

      v59 = a2 - 6;
      goto LABEL_54;
    }

    if (v54 < v52)
    {
      v56 = v51[1];
      v51[1] = *(a2 - 5);
      *(a2 - 5) = v56;
      v57 = *v51;
      *v51 = *(a2 - 6);
      *(a2 - 6) = v57;
      v52 = *v51;
      if (*v51 < *v49)
      {
        v58 = v11[5];
        v11[5] = v51[1];
        v51[1] = v58;
        v59 = v51;
LABEL_54:
        v61 = *v49;
        *v49 = *v59;
        *v59 = v61;
        v52 = *v51;
      }
    }

LABEL_55:
    v62 = *v16;
    v63 = *v37;
    if (*v16 >= *v37)
    {
      if (v52 >= v62)
      {
        goto LABEL_64;
      }

      v65 = v16[1];
      v66 = v51[1];
      *v16 = v52;
      v16[1] = v66;
      *v51 = v62;
      v51[1] = v65;
      if (v52 < v63)
      {
        v67 = v37[1];
        v37[1] = v66;
        v16[1] = v67;
        v51 = v16;
        goto LABEL_63;
      }

      v62 = v52;
    }

    else
    {
      v64 = v37[1];
      if (v52 < v62)
      {
        v37[1] = v51[1];
        v51[1] = v64;
LABEL_63:
        *v37 = v52;
        *v51 = v63;
        v62 = *v16;
        goto LABEL_64;
      }

      v68 = v16[1];
      *v37 = v62;
      v37[1] = v68;
      *v16 = v63;
      v16[1] = v64;
      if (v52 < v63)
      {
        v16[1] = v51[1];
        v51[1] = v64;
        v37 = v16;
        goto LABEL_63;
      }

      v62 = v63;
    }

LABEL_64:
    v69 = v16[1];
    v71 = *v11;
    v70 = v11[1];
    *v11 = v62;
    v11[1] = v69;
    *v16 = v71;
    v16[1] = v70;
    if (a5)
    {
      goto LABEL_66;
    }

LABEL_65:
    if (*(v11 - 2) >= *v11)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PrepassOp *,std::__less<void,void> &>(v11, a2);
      goto LABEL_74;
    }

LABEL_66:
    v72 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PrepassOp *,std::__less<void,void> &>(v11, a2);
    if ((v73 & 1) == 0)
    {
      goto LABEL_72;
    }

    v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(v11, v72);
    v11 = (v72 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(v72 + 2, a2))
    {
      a4 = -v13;
      a2 = v72;
      if (v74)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if ((v74 & 1) == 0)
    {
LABEL_72:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,false>(a1, v72, a3, -v13, a5 & 1);
      v11 = (v72 + 2);
LABEL_74:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,0>(v11, v11 + 2, v11 + 4, a2 - 2);
}

unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v4)
    {
      v8 = a2[1];
      a2[1] = a3[1];
      a3[1] = v8;
      v5 = *a2;
      *a2 = *a3;
      *a3 = v5;
      if (*a2 < *result)
      {
        v9 = result[1];
        result[1] = a2[1];
        a2[1] = v9;
        v7 = result;
        v10 = a2;
LABEL_10:
        v13 = *v7;
        *v7 = *v10;
        *v10 = v13;
        v5 = *a3;
      }
    }
  }

  else
  {
    v6 = result[1];
    if (v5 < v4)
    {
      result[1] = a3[1];
      a3[1] = v6;
      v7 = result;
LABEL_9:
      v10 = a3;
      goto LABEL_10;
    }

    result[1] = a2[1];
    a2[1] = v6;
    v11 = *result;
    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    if (*a3 < v11)
    {
      v12 = a2[1];
      a2[1] = a3[1];
      a3[1] = v12;
      v7 = a2;
      goto LABEL_9;
    }
  }

  if (*a4 < v5)
  {
    v14 = a3[1];
    a3[1] = a4[1];
    a4[1] = v14;
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    if (*a3 < *a2)
    {
      v16 = a2[1];
      a2[1] = a3[1];
      a3[1] = v16;
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      if (*a2 < *result)
      {
        v18 = result[1];
        result[1] = a2[1];
        a2[1] = v18;
        v19 = *result;
        *result = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        if (v6[2] < *v6)
        {
          v8 = v6[3];
          v15 = v6[2];
          v16 = v8;
          v6[3] = 0;
          v9 = *v6;
          v10 = v4[1];
          v11 = v5;
          while (1)
          {
            v12 = a1 + v11;
            *(a1 + v11 + 16) = v9;
            if (v10)
            {
              _Block_release(v10);
            }

            *(v12 + 3) = *(v12 + 1);
            *(v12 + 1) = 0;
            if (!v11)
            {
              break;
            }

            v10 = 0;
            v9 = *(a1 + v11 - 16);
            v11 -= 16;
            if (v15 >= v9)
            {
              v13 = (a1 + v11 + 16);
              goto LABEL_12;
            }
          }

          v13 = a1;
LABEL_12:
          v14 = v16;
          *v13 = v15;
          v13[1] = v14;
          v16 = 0;
          PrepassOp::~PrepassOp(&v15);
        }

        v4 = v7 + 2;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 2 != a2);
    }
  }
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = result + 2;
    if (result + 2 != a2)
    {
      v4 = result + 3;
      do
      {
        v5 = v3;
        if (result[2] < *result)
        {
          v6 = result[3];
          v11 = result[2];
          v12 = v6;
          result[3] = 0;
          v7 = *result;
          v8 = v5[1];
          v9 = v4;
          do
          {
            *(v9 - 1) = v7;
            if (v8)
            {
              _Block_release(v8);
            }

            v8 = 0;
            *v9 = *(v9 - 2);
            *(v9 - 2) = 0;
            v7 = *(v9 - 5);
            v9 -= 2;
          }

          while (v11 < v7);
          v10 = v12;
          *(v9 - 1) = v11;
          *v9 = v10;
          v12 = 0;
          PrepassOp::~PrepassOp(&v11);
        }

        v3 = v5 + 2;
        v4 += 2;
        result = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PrepassOp *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v4 = a1[1];
  v16 = *a1;
  v3 = v16;
  v17 = v4;
  a1[1] = 0;
  if (v3 >= *(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v3 >= *v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v3 >= v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 < v8);
  }

  while (v5 < a2)
  {
    v9 = v5[1];
    v5[1] = a2[1];
    a2[1] = v9;
    v10 = *v5;
    *v5 = *a2;
    *a2 = v10;
    v3 = v16;
    do
    {
      v11 = v5[2];
      v5 += 2;
    }

    while (v16 >= v11);
    do
    {
      v12 = *(a2 - 2);
      a2 -= 2;
    }

    while (v16 < v12);
  }

  if (v5 - 2 == a1)
  {
    v14 = *(v5 - 1);
    *(v5 - 2) = v3;
    if (v14)
    {
      _Block_release(v14);
    }
  }

  else
  {
    *a1 = *(v5 - 2);
    v13 = a1[1];
    if (v13)
    {
      _Block_release(v13);
      v3 = v16;
    }

    a1[1] = *(v5 - 1);
    *(v5 - 2) = v3;
    *(v5 - 1) = 0;
  }

  *(v5 - 1) = v17;
  v17 = 0;
  PrepassOp::~PrepassOp(&v16);
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PrepassOp *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  a1[1] = 0;
  do
  {
    v7 = a1[v4 + 2];
    v4 += 2;
  }

  while (v7 < v5);
  v8 = &a1[v4];
  if (v4 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 >= v5);
  }

  v11 = &a1[v4];
  if (v8 < a2)
  {
    v12 = a2;
    do
    {
      v13 = v11[1];
      v11[1] = v12[1];
      v12[1] = v13;
      v14 = *v11;
      *v11 = *v12;
      *v12 = v14;
      v5 = v20;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (v15 < v20);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (v16 >= v20);
    }

    while (v11 < v12);
  }

  if (v11 - 2 == a1)
  {
    v18 = *(v11 - 1);
    *(v11 - 2) = v5;
    if (v18)
    {
      _Block_release(v18);
    }
  }

  else
  {
    *a1 = *(v11 - 2);
    v17 = a1[1];
    if (v17)
    {
      _Block_release(v17);
      v5 = v20;
    }

    a1[1] = *(v11 - 1);
    *(v11 - 2) = v5;
    *(v11 - 1) = 0;
  }

  *(v11 - 1) = v21;
  v21 = 0;
  PrepassOp::~PrepassOp(&v20);
  return v11 - 2;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(unint64_t *a1, char *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v17 = a1 + 2;
        v18 = a1[2];
        v19 = *(a2 - 2);
        v20 = *a1;
        if (v18 >= *a1)
        {
          if (v19 >= v18)
          {
            return 1;
          }

          v29 = a1[3];
          a1[3] = *(a2 - 1);
          *(a2 - 1) = v29;
          v30 = a1[2];
          a1[2] = *(a2 - 2);
          *(a2 - 2) = v30;
          if (a1[2] >= *a1)
          {
            return 1;
          }

          v31 = a1[1];
          a1[1] = a1[3];
          a1[3] = v31;
        }

        else
        {
          v21 = a1[1];
          if (v19 >= v18)
          {
            v35 = a1[3];
            *a1 = v18;
            a1[1] = v35;
            a1[2] = v20;
            a1[3] = v21;
            if (*(a2 - 2) >= v20)
            {
              return 1;
            }

            a1[3] = *(a2 - 1);
            *(a2 - 1) = v21;
            v3 = a1 + 2;
          }

          else
          {
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v21;
          }

          v17 = (a2 - 16);
        }

        v36 = *v3;
        *v3 = *v17;
        *v17 = v36;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 2) < v3[6])
        {
          v7 = v3[7];
          v3[7] = *(a2 - 1);
          *(a2 - 1) = v7;
          v8 = v3[6];
          v3[6] = *(a2 - 2);
          *(a2 - 2) = v8;
          v9 = v3[6];
          v10 = v3[4];
          if (v9 < v10)
          {
            v11 = v3[5];
            v12 = v3[7];
            v3[4] = v9;
            v3[5] = v12;
            v3[6] = v10;
            v3[7] = v11;
            v13 = v3[2];
            if (v9 < v13)
            {
              v14 = v3[3];
              v3[2] = v9;
              v3[3] = v12;
              v3[4] = v13;
              v3[5] = v14;
              v15 = *v3;
              if (v9 < *v3)
              {
                v16 = v3[1];
                *v3 = v9;
                v3[1] = v12;
                v3[2] = v15;
                v3[3] = v16;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 2) < *a1)
      {
        v5 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v5;
        v6 = *a1;
        *a1 = *(a2 - 2);
        *(a2 - 2) = v6;
      }

      return 1;
    }
  }

  v22 = (a1 + 4);
  v23 = a1[4];
  v24 = a1 + 2;
  v25 = a1[2];
  v26 = *a1;
  if (v25 < *a1)
  {
    v27 = a1[1];
    if (v23 >= v25)
    {
      v37 = a1[3];
      *a1 = v25;
      a1[1] = v37;
      a1[2] = v26;
      a1[3] = v27;
      if (v23 >= v26)
      {
        goto LABEL_35;
      }

      a1[3] = a1[5];
      a1[5] = v27;
      v28 = a1 + 2;
    }

    else
    {
      a1[1] = a1[5];
      a1[5] = v27;
      v28 = a1;
    }

    v24 = a1 + 4;
    goto LABEL_34;
  }

  if (v23 < v25)
  {
    v32 = a1[3];
    v33 = a1[5];
    a1[2] = v23;
    a1[3] = v33;
    a1[4] = v25;
    a1[5] = v32;
    if (v23 < v26)
    {
      v34 = a1[1];
      a1[1] = v33;
      a1[3] = v34;
      v28 = a1;
LABEL_34:
      *v28 = v23;
      *v24 = v26;
    }
  }

LABEL_35:
  v38 = (a1 + 6);
  if (a1 + 6 != a2)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      if (*v38 < *v22)
      {
        v41 = *(v38 + 1);
        v51 = *v38;
        v52 = v41;
        *(v38 + 1) = 0;
        v42 = *v22;
        v43 = v39;
        while (1)
        {
          v44 = (v3 + v43);
          v45 = v51;
          v46 = *(v3 + v43 + 40);
          v44[6] = v42;
          v44[7] = v46;
          v44[5] = 0;
          if (v43 == -32)
          {
            break;
          }

          v42 = v44[2];
          v43 -= 16;
          if (v45 >= v42)
          {
            v47 = (v3 + v43 + 48);
            goto LABEL_43;
          }
        }

        v47 = v3;
LABEL_43:
        v48 = v52;
        *v47 = v45;
        v47[1] = v48;
        v52 = 0;
        if (++v40 == 8)
        {
          v49 = v38 + 16 == a2;
          PrepassOp::~PrepassOp(&v51);
          return v49;
        }

        PrepassOp::~PrepassOp(&v51);
      }

      v22 = v38;
      v39 += 16;
      v38 += 16;
    }

    while (v38 != a2);
  }

  return 1;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,PrepassOp *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = v12[1];
          v12[1] = a1[1];
          a1[1] = v13;
          v14 = *v12;
          *v12 = *a1;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,PrepassOp *>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v6 = a4 - a1;
    v7 = (a3 - 2) >> 1;
    if (v7 >= (a4 - a1) >> 4)
    {
      v8 = v6 >> 3;
      v9 = (v6 >> 3) + 1;
      v10 = (a1 + 16 * v9);
      v11 = v8 + 2;
      if (v8 + 2 >= a3)
      {
        v12 = *v10;
      }

      else
      {
        v12 = *v10;
        v13 = v10[2];
        if (*v10 <= v13)
        {
          v12 = v10[2];
        }

        if (*v10 < v13)
        {
          v10 += 2;
          v9 = v11;
        }
      }

      v14 = *a4;
      if (v12 >= *a4)
      {
        v24 = v4;
        v25 = v5;
        v15 = a4[1];
        v22 = v14;
        v23 = v15;
        a4[1] = 0;
        while (1)
        {
          v16 = v10;
          v17 = v10[1];
          *a4 = v12;
          a4[1] = v17;
          v16[1] = 0;
          if (v7 < v9)
          {
            break;
          }

          v18 = (2 * v9) | 1;
          v10 = (a1 + 16 * v18);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v12 = *v10;
            v9 = v18;
          }

          else
          {
            v12 = *v10;
            v19 = v10[2];
            if (*v10 <= v19)
            {
              v12 = v10[2];
            }

            if (*v10 >= v19)
            {
              v9 = v18;
            }

            else
            {
              v10 += 2;
            }
          }

          v20 = v22;
          a4 = v16;
          if (v12 < v22)
          {
            goto LABEL_23;
          }
        }

        v20 = v22;
LABEL_23:
        v21 = v23;
        *v16 = v20;
        v16[1] = v21;
        v23 = 0;
        PrepassOp::~PrepassOp(&v22);
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,PrepassOp *>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    v14 = *a1;
    v15 = v7;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      *v9 = v8;
      v13 = v9[1];
      if (v13)
      {
        _Block_release(v13);
        v7 = v15;
      }

      v10[1] = v7;
      v15 = 0;
    }

    else
    {
      *v9 = *(a2 - 16);
      v11 = v9[1];
      if (v11)
      {
        _Block_release(v11);
      }

      v10[1] = *(a2 - 8);
      v12 = v15;
      *(a2 - 16) = v14;
      *(a2 - 8) = v12;
      v15 = 0;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(a1, (v10 + 2), a3, ((v10 + 2) - a1) >> 4);
    }

    PrepassOp::~PrepassOp(&v14);
  }
}

unint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    if (2 * v5 + 2 >= a3)
    {
      v9 = *v8;
      v5 = (2 * v5) | 1;
    }

    else
    {
      v11 = v7[4];
      v10 = v7 + 4;
      v9 = v11;
      v12 = *(v10 - 2);
      v13 = v12 >= v11;
      if (v12 > v11)
      {
        v9 = *(v10 - 2);
      }

      if (v13)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v10;
        v5 = 2 * v5 + 2;
      }
    }

    *a1 = v9;
    v14 = a1[1];
    if (v14)
    {
      _Block_release(v14);
    }

    a1[1] = v8[1];
    v8[1] = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = (a4 - 2) >> 1;
    v7 = (a1 + 16 * v6);
    v8 = (a2 - 16);
    v9 = *(a2 - 16);
    v10 = *v7;
    if (*v7 < v9)
    {
      v18 = v4;
      v19 = v5;
      v11 = *(a2 - 8);
      v16 = v9;
      v17 = v11;
      *(a2 - 8) = 0;
      do
      {
        v12 = v7;
        v13 = v7[1];
        *v8 = v10;
        v8[1] = v13;
        v14 = v16;
        v12[1] = 0;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 16 * v6);
        v10 = *v7;
        v8 = v12;
      }

      while (*v7 < v14);
      v15 = v17;
      *v12 = v14;
      v12[1] = v15;
      v17 = 0;
      PrepassOp::~PrepassOp(&v16);
    }
  }
}

void std::vector<PrepassOp>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        PrepassOp::~PrepassOp((v4 - 16));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ktrace_address_space *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t trace_readtrace(void *a1, size_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 10;
  *v7 = 0x1800000001;
  if (sysctl(v7, 3u, a1, a2, 0, 0) < 0)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_readtrace_cold_1();
    }

    *__error() = v4;
    v5 = *__error();
    if (v5 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v5;
    }
  }

  else
  {
    result = 0;
    *a2 <<= 6;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_set_filter(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 22;
  *v6 = 0x1800000001;
  v5 = 0x2000;
  if (sysctl(v6, 3u, a1, &v5, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_set_filter_cold_1();
    }

    *__error() = v2;
    v3 = *__error();
    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_set_pid_filter(int a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *v12 = 0x1800000001;
  if (a1)
  {
    v2 = 11;
  }

  else
  {
    v2 = 14;
  }

  v13 = v2;
  v9[0] = 0x80000;
  v9[1] = a2;
  v10 = 1;
  v11 = 0;
  v8 = 20;
  v3 = sysctl(v12, 3u, v9, &v8, 0, 0);
  result = 0;
  if (v3 < 0)
  {
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_set_pid_filter_cold_1();
    }

    *__error() = v5;
    v6 = *__error();
    if (v6 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v6;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_readcpumap(void *a1)
{
  if (trace_readcpumap_onceToken[0] != -1)
  {
    trace_readcpumap_cold_1();
  }

  v2 = trace_readcpumap_cpumap_header;
  if (!trace_readcpumap_cpumap_header)
  {
    return 0;
  }

  *a1 = trace_readcpumap_cpumap_header + 8;
  return *(v2 + 4);
}

void __trace_readcpumap_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  trace_readcpumap_cpumap_header = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
  v3 = 24;
  v1 = 4096;
  *v2 = 0x1800000001;
  if (sysctl(v2, 3u, trace_readcpumap_cpumap_header, &v1, 0, 0) || v1 > 0x1000 || *trace_readcpumap_cpumap_header != 1437204737)
  {
    free(trace_readcpumap_cpumap_header);
    trace_readcpumap_cpumap_header = 0;
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t trace_set_flags(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *v6 = 0x1800000001;
  v7 = 1;
  v8 = a1;
  v5 = 0;
  if (sysctl(v6, 4u, 0, &v5, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_set_flags_cold_1();
    }

    *__error() = v2;
    v3 = *__error();
    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_set_event_match_disable(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v11, 0, 32);
  *&v11[8] = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a2 + 8);
  v12 = 0;
  v13 = v3;
  *&v11[24] = v2;
  *v11 = *a1;
  LODWORD(v12) = *a2;
  v14 = *(a2 + 24);
  v8 = 80;
  *v9 = 0x1800000001;
  v10 = 26;
  result = sysctl(v9, 3u, v11, &v8, 0, 0);
  if (result)
  {
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_set_event_match_disable_cold_1();
    }

    *__error() = v5;
    v6 = *__error();
    if (v6 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v6;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_wait(size_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 23;
  v3 = a1;
  *v4 = 0x1800000001;
  result = sysctl(v4, 3u, 0, &v3, 0, 0);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_free(void *a1)
{
  if (pthread_mutex_lock(&trace_buffer_mutex))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = 0;
  while (trace_buffer_cache[v2])
  {
    if (++v2 == 16)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  trace_buffer_cache[v2] = a1;
  if (v2 * 8)
  {
    madvise(a1, trace_buffer_size, 7);
  }

  else if (pthread_cond_signal(&trace_buffer_cond))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = pthread_mutex_unlock(&trace_buffer_mutex);
  if (result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

uint64_t trace_collect(void *a1, size_t *a2, _DWORD *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = trace_get_bufinfo(&v14);
  if (result)
  {
    return result;
  }

  result = 55;
  if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

  v7 = v14;
  if (!v14)
  {
    return result;
  }

  *a3 = v15;
  v8 = v7 << 6;
  if (trace_buffer_size)
  {
    if (v8 > trace_buffer_size)
    {
      return 37;
    }
  }

  else
  {
    trace_buffer_size = v7 << 6;
  }

  *a2 = v8;
  if (pthread_mutex_lock(&trace_buffer_mutex))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v9 = 0;
  while (1)
  {
    while (!trace_buffer_cache[v9])
    {
      if (++v9 == 16)
      {
        goto LABEL_18;
      }
    }

    if (v9 != 16)
    {
      break;
    }

LABEL_18:
    if (trace_buffer_count == 16)
    {
      v10 = pthread_cond_wait(&trace_buffer_cond, &trace_buffer_mutex);
      v9 = 0;
      if (v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }
    }

    else
    {
      trace_buffer_cache[0] = malloc_type_malloc(trace_buffer_size, 0x629C1151uLL);
      if (trace_buffer_cache[0])
      {
        v12 = 0;
        ++trace_buffer_count;
        goto LABEL_28;
      }

      v11 = pthread_cond_wait(&trace_buffer_cond, &trace_buffer_mutex);
      v9 = 0;
      if (v11)
      {
        ktrace_postprocess_file_internal_cold_4();
      }
    }
  }

  if (v9)
  {
    v12 = v9;
    madvise(trace_buffer_cache[v9], trace_buffer_size, 8);
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v13 = trace_buffer_cache[v12];
  trace_buffer_cache[v12] = 0;
  if (pthread_mutex_unlock(&trace_buffer_mutex))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!v13)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a1 = v13;
  return trace_readtrace(v13, a2);
}

uint64_t trace_last_trace_point(uint64_t a1, unint64_t a2, int a3)
{
  v3 = 32;
  if (a3)
  {
    v3 = 64;
  }

  v4 = 5;
  if (a3)
  {
    v4 = 6;
  }

  v5 = a1 + (((a2 >> v4) - 1) << v4);
  if (v3 <= a2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void trace_readcurthreadmap(void **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = 263168;
  v4 = malloc_type_malloc(0x40400uLL, 0x804BA066uLL);
  *a1 = v4;
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *v9 = 0x1800000001;
  v10 = 21;
  if (sysctl(v9, 3u, v4, &v8, 0, 0) < 0)
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_readcurthreadmap_cold_1();
    }

    *__error() = v6;
    free(*a1);
    LODWORD(v5) = 0;
    *a1 = 0;
  }

  else
  {
    v5 = v8 >> 5;
  }

  *a2 = v5;
  v7 = *MEMORY[0x277D85DE8];
}

int *vfs_trace_paths()
{
  result = sysctlbyname("vfs.generic.trace_paths", 0, 0, 0, 0);
  if (result)
  {
    v1 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      vfs_trace_paths_cold_1();
    }

    result = __error();
    *result = v1;
  }

  return result;
}

void vnode_path_map_update(CFDictionaryRef *a1, int a2, uint64_t a3, int a4)
{
  if ((a2 & 0xFFFFFFFC) == 0x3010094)
  {
    if (a4)
    {
      v13 = *(a3 + 8);
      v14 = *(a3 + 16);
    }

    else
    {
      v13 = *(a3 + 8);
      v14 = *(a3 + 12);
    }

    Value = CFDictionaryGetValue(a1[1], v13);
    v16 = a1[1];
    if (Value)
    {
      v17 = strdup(Value);
      v18 = v16;
      v19 = v14;
LABEL_25:

      CFDictionarySetValue(v18, v19, v17);
      return;
    }

    CFDictionaryRemoveValue(v16, v14);
  }

  else
  {
    if ((a2 & 0xFFFFFFFC) != 0x3010090)
    {
      abort();
    }

    if (a4)
    {
      v6 = (a3 + 8);
      v7 = *(a3 + 8);
      v8 = *(a3 + 40);
      v9 = 8;
      v10 = 48;
      v11 = 32;
      v12 = 16;
    }

    else
    {
      v6 = (a3 + 8);
      v7 = *(a3 + 8);
      v8 = *(a3 + 24);
      v9 = 4;
      v10 = 28;
      v11 = 20;
      v12 = 12;
    }

    v20 = *(a3 + v10);
    v21 = CFDictionaryGetValue(*a1, v8);
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        free(v21);
      }

      v23 = malloc_type_calloc(1uLL, 0x410uLL, 0x1000040580BD41FuLL);
      if (!v23)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v22 = v23;
      v6 = (a3 + v12);
      CFDictionarySetValue(*a1, v8, v23);
      *(v22 + 129) = v7;
    }

    else if (!v21)
    {
      return;
    }

    v24 = a3 + v11;
    if (v6 <= a3 + v11)
    {
      v25 = strlen(v22);
      v26 = v9 - v25 + 1024;
      do
      {
        if (v25 + 1 >= 0x402)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v26 -= v9;
        if (v26 < v9)
        {
          break;
        }

        memcpy(&v22[v25], v6, v9);
        v25 += v9;
        v6 += 8;
      }

      while (v6 <= v24);
    }

    if ((v20 & 2) != 0)
    {
      CFDictionaryRemoveValue(*a1, v8);
      v18 = a1[1];
      v19 = *(v22 + 129);
      v17 = v22;
      goto LABEL_25;
    }
  }
}

CFMutableDictionaryRef ktrace_set_vnode_paths_enabled(CFMutableDictionaryRef result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = result;
  v3 = *(result + 112);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_thread_cputime_enabled_cold_3();
  }

  if (!*(result + 67))
  {
    if (a2)
    {
      *(result + 67) = 1;
      v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
      *(v2 + 50) = v4;
      *v4 = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, 0);
      result = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, &str_value_callbacks);
      v4[1] = result;
      if (!*v4 || !result)
      {
        ktrace_postprocess_file_internal_cold_4();
      }
    }
  }

  return result;
}

uint64_t ktrace_get_vnode_paths_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 268);
}

const void *ktrace_get_path_for_vp(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 268))
  {
    return 0;
  }

  v3 = *(*(a1 + 400) + 8);

  return CFDictionaryGetValue(v3, a2);
}

uint64_t sub_22EDCFD34()
{
  v1 = *v0;
  sub_22EE3CC74();
  v2 = byte_22EE3F6E2[v1];
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDCFDBC()
{
  v1 = *v0;
  sub_22EE3CC74();
  v2 = byte_22EE3F6E2[v1];
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDCFE08@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EDD0110(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EDCFE7C()
{
  v1 = *v0;
  sub_22EE3CC74();
  v2 = word_22EE3F712[v1 ^ 0x80];
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDCFF0C()
{
  v1 = *v0;
  sub_22EE3CC74();
  v2 = word_22EE3F712[v1 ^ 0x80];
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDCFF5C@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EDD02BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EDCFFA4(unsigned __int16 a1)
{
  if (sub_22EDD02BC(a1) != 150)
  {
    return sub_22EE3C164();
  }

  if (sub_22EDD0110(HIBYTE(a1)) == 47)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  else
  {
    v2 = sub_22EE3C164();
  }

  sub_22EE3C864();

  MEMORY[0x2318F58F0](0x73616C6362755320, 0xEB00000000282073);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84C58];
  *(v4 + 16) = xmmword_22EE3F500;
  v6 = MEMORY[0x277D84CB8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_22EE3C134();
  MEMORY[0x2318F58F0](v7);

  MEMORY[0x2318F58F0](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_22EDD0110(unsigned __int8 a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 19:
      result = 12;
      break;
    case 29:
      result = 13;
      break;
    case 30:
      result = 14;
      break;
    case 31:
      result = 15;
      break;
    case 32:
      result = 16;
      break;
    case 33:
      result = 17;
      break;
    case 34:
      result = 18;
      break;
    case 35:
      result = 33;
      break;
    case 36:
      result = 19;
      break;
    case 37:
      result = 20;
      break;
    case 38:
      result = 34;
      break;
    case 39:
      result = 21;
      break;
    case 40:
      result = 22;
      break;
    case 41:
      result = 23;
      break;
    case 42:
      result = 24;
      break;
    case 43:
      result = 25;
      break;
    case 44:
      result = 26;
      break;
    case 45:
      result = 27;
      break;
    case 48:
      result = 28;
      break;
    case 49:
      result = 35;
      break;
    case 50:
      result = 29;
      break;
    case 51:
      result = 36;
      break;
    case 52:
      result = 30;
      break;
    case 53:
      result = 31;
      break;
    case 127:
      result = 37;
      break;
    case 128:
      result = 38;
      break;
    case 129:
      result = 39;
      break;
    case 130:
      result = 40;
      break;
    case 131:
      result = 41;
      break;
    case 132:
      result = 42;
      break;
    case 133:
      result = 43;
      break;
    case 134:
      result = 44;
      break;
    case 135:
      result = 45;
      break;
    case 136:
      result = 46;
      break;
    case 254:
      result = 32;
      break;
    default:
      result = 47;
      break;
  }

  return result;
}

uint64_t sub_22EDD02BC(unsigned __int16 a1)
{
  v2 = a1;
  if (a1 <= 0x40Cu)
  {
    if (a1 <= 0x3CEu)
    {
      result = 0;
      switch(v2)
      {
        case 258:
          return result;
        case 259:
          result = 1;
          break;
        case 260:
          result = 2;
          break;
        case 261:
          result = 3;
          break;
        case 262:
          result = 4;
          break;
        case 263:
          result = 5;
          break;
        case 264:
          result = 6;
          break;
        case 265:
          result = 7;
          break;
        case 266:
          result = 8;
          break;
        case 268:
          result = 9;
          break;
        case 269:
          result = 10;
          break;
        case 270:
          result = 11;
          break;
        case 272:
          result = 12;
          break;
        case 288:
          result = 13;
          break;
        case 293:
          result = 14;
          break;
        case 304:
          result = 15;
          break;
        case 305:
          result = 16;
          break;
        case 306:
          result = 17;
          break;
        case 320:
          result = 18;
          break;
        case 336:
          result = 19;
          break;
        case 352:
          result = 20;
          break;
        case 368:
          result = 21;
          break;
        case 384:
          result = 22;
          break;
        case 400:
          result = 23;
          break;
        case 416:
          result = 24;
          break;
        case 417:
          result = 25;
          break;
        case 418:
          result = 26;
          break;
        case 419:
          result = 27;
          break;
        case 420:
          result = 28;
          break;
        case 421:
          result = 29;
          break;
        case 422:
          result = 30;
          break;
        case 423:
          result = 31;
          break;
        case 424:
          result = 32;
          break;
        case 425:
          result = 33;
          break;
        case 426:
          result = 34;
          break;
        case 427:
          result = 35;
          break;
        case 428:
          result = 36;
          break;
        case 429:
          result = 37;
          break;
        case 430:
          result = 38;
          break;
        case 431:
          result = 39;
          break;
        case 769:
          result = 72;
          break;
        case 770:
          result = 73;
          break;
        case 771:
          result = 74;
          break;
        case 772:
          result = 75;
          break;
        case 773:
          result = 76;
          break;
        case 774:
          result = 77;
          break;
        case 775:
          result = 78;
          break;
        case 776:
          result = 79;
          break;
        case 777:
          result = 80;
          break;
        case 778:
          result = 81;
          break;
        case 779:
          result = 82;
          break;
        case 782:
          result = 83;
          break;
        case 783:
          result = 84;
          break;
        case 784:
          result = 85;
          break;
        case 785:
          result = 86;
          break;
        case 786:
          result = 87;
          break;
        case 787:
          result = 88;
          break;
        case 788:
          result = 89;
          break;
        case 789:
          result = 90;
          break;
        default:
          goto LABEL_139;
      }

      return result;
    }

    if (a1 <= 0x401u)
    {
      if (a1 == 975)
      {
        return 91;
      }

      if (a1 == 1025)
      {
        return 92;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x402u:
          return 93;
        case 0x403u:
          return 94;
        case 0x40Cu:
          return 95;
      }
    }

LABEL_139:
    if (a1 > 0x260Fu)
    {
      if (a1 <= 0x2617u)
      {
        if (a1 <= 0x2611u)
        {
          if (a1 == 9744)
          {
            return 139;
          }

          else
          {
            return 140;
          }
        }

        switch(a1)
        {
          case 0x2612u:
            return 141;
          case 0x2613u:
            return 142;
          case 0x2617u:
            return 143;
        }
      }

      else
      {
        if (a1 <= 0x261Au)
        {
          if (a1 == 9752)
          {
            return 144;
          }

          if (a1 == 9753)
          {
            return 145;
          }

          return 146;
        }

        switch(a1)
        {
          case 0x261Bu:
            return 147;
          case 0x261Cu:
            return 148;
          case 0x261Du:
            return 149;
        }
      }
    }

    else if (a1 <= 0x2110u)
    {
      if (a1 > 0x210Du)
      {
        if (a1 == 8462)
        {
          return 130;
        }

        if (a1 == 8463)
        {
          return 131;
        }

        return 132;
      }

      if (a1 == 8460)
      {
        return 128;
      }

      if (a1 == 8461)
      {
        return 129;
      }
    }

    else if (a1 > 0x2180u)
    {
      switch(a1)
      {
        case 0x2181u:
          return 136;
        case 0x2182u:
          return 137;
        case 0x2183u:
          return 138;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x2111u:
          return 133;
        case 0x2112u:
          return 134;
        case 0x2180u:
          return 135;
      }
    }

    return 150;
  }

  if (a1 > 0x1400u)
  {
    if (a1 <= 0x2109u)
    {
      if (a1 > 0x1413u)
      {
        if (a1 > 0x2102u)
        {
          switch(a1)
          {
            case 0x2103u:
              return 123;
            case 0x2104u:
              return 124;
            case 0x2105u:
              return 125;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x1414u:
              return 120;
            case 0x141Au:
              return 121;
            case 0x1420u:
              return 122;
          }
        }
      }

      else
      {
        if (a1 > 0x1410u)
        {
          if (a1 == 5137)
          {
            return 117;
          }

          if (a1 == 5138)
          {
            return 118;
          }

          return 119;
        }

        switch(a1)
        {
          case 0x1401u:
            return 114;
          case 0x1402u:
            return 115;
          case 0x1410u:
            return 116;
        }
      }
    }

    else if (a1 <= 0x2503u)
    {
      if (a1 > 0x2500u)
      {
        if (a1 == 9473)
        {
          return 104;
        }

        if (a1 == 9474)
        {
          return 105;
        }

        return 106;
      }

      switch(a1)
      {
        case 0x210Au:
          return 126;
        case 0x210Bu:
          return 127;
        case 0x2500u:
          return 103;
      }
    }

    else
    {
      if (a1 <= 0x2506u)
      {
        if (a1 == 9476)
        {
          return 107;
        }

        if (a1 == 9477)
        {
          return 108;
        }

        return 109;
      }

      if (a1 <= 0x2508u)
      {
        if (a1 == 9479)
        {
          return 110;
        }

        else
        {
          return 111;
        }
      }

      if (a1 == 9481)
      {
        return 112;
      }

      if (a1 == 9482)
      {
        return 113;
      }
    }

    goto LABEL_139;
  }

  if (a1 <= 0x4FEu)
  {
    switch(a1)
    {
      case 0x40Du:
        return 96;
      case 0x40Eu:
        return 97;
      case 0x40Fu:
        return 98;
    }

    goto LABEL_139;
  }

  result = 54;
  switch(v2)
  {
    case 1537:
      result = 40;
      break;
    case 1538:
      result = 41;
      break;
    case 1539:
      result = 42;
      break;
    case 1540:
      result = 43;
      break;
    case 1541:
      result = 44;
      break;
    case 1542:
    case 1570:
    case 1571:
    case 1572:
    case 1573:
    case 1574:
    case 1575:
    case 1576:
    case 1577:
    case 1578:
    case 1579:
    case 1580:
    case 1581:
    case 1582:
    case 1583:
    case 1584:
    case 1585:
    case 1586:
    case 1587:
    case 1588:
    case 1589:
    case 1590:
    case 1591:
    case 1592:
    case 1593:
    case 1594:
    case 1595:
    case 1596:
    case 1597:
    case 1598:
    case 1599:
    case 1600:
    case 1601:
    case 1602:
    case 1603:
    case 1604:
    case 1605:
    case 1606:
    case 1607:
    case 1608:
    case 1609:
    case 1610:
    case 1611:
    case 1612:
    case 1613:
    case 1614:
    case 1615:
    case 1616:
    case 1617:
    case 1618:
    case 1619:
    case 1620:
    case 1621:
    case 1622:
    case 1623:
    case 1624:
    case 1625:
    case 1626:
    case 1627:
    case 1628:
    case 1629:
    case 1630:
    case 1631:
    case 1632:
    case 1633:
    case 1634:
    case 1635:
    case 1636:
    case 1637:
    case 1638:
    case 1639:
    case 1640:
    case 1641:
    case 1642:
    case 1643:
    case 1644:
    case 1645:
    case 1646:
    case 1647:
    case 1648:
    case 1649:
    case 1650:
    case 1651:
    case 1652:
    case 1653:
    case 1654:
    case 1655:
    case 1656:
    case 1657:
    case 1658:
    case 1659:
    case 1660:
    case 1661:
    case 1662:
    case 1663:
    case 1664:
    case 1665:
    case 1666:
    case 1667:
    case 1668:
    case 1669:
    case 1670:
    case 1671:
    case 1672:
    case 1673:
    case 1674:
    case 1675:
    case 1676:
    case 1677:
    case 1678:
    case 1679:
    case 1680:
    case 1681:
    case 1682:
    case 1683:
    case 1684:
    case 1685:
    case 1686:
    case 1687:
    case 1688:
    case 1689:
    case 1690:
    case 1691:
    case 1692:
    case 1693:
    case 1694:
    case 1695:
    case 1696:
    case 1697:
    case 1698:
    case 1699:
    case 1700:
    case 1701:
    case 1702:
    case 1703:
    case 1704:
    case 1705:
    case 1706:
    case 1707:
    case 1708:
    case 1709:
    case 1710:
    case 1711:
    case 1712:
    case 1713:
    case 1714:
    case 1715:
    case 1716:
    case 1717:
    case 1718:
    case 1719:
    case 1720:
    case 1721:
    case 1722:
    case 1723:
    case 1724:
    case 1725:
    case 1726:
    case 1727:
    case 1728:
    case 1729:
    case 1730:
    case 1731:
    case 1732:
    case 1733:
    case 1734:
    case 1735:
    case 1736:
    case 1737:
    case 1738:
    case 1739:
    case 1740:
    case 1741:
    case 1742:
    case 1743:
    case 1744:
    case 1745:
    case 1746:
    case 1747:
    case 1748:
    case 1749:
    case 1750:
    case 1751:
    case 1752:
    case 1753:
    case 1754:
    case 1755:
    case 1756:
    case 1757:
    case 1758:
    case 1759:
    case 1760:
    case 1761:
    case 1762:
    case 1763:
    case 1764:
    case 1765:
    case 1766:
    case 1767:
    case 1768:
    case 1769:
    case 1770:
    case 1771:
    case 1772:
    case 1773:
    case 1774:
    case 1775:
    case 1776:
    case 1777:
    case 1778:
    case 1779:
    case 1780:
    case 1781:
    case 1782:
    case 1783:
    case 1784:
    case 1785:
    case 1786:
    case 1787:
    case 1788:
    case 1789:
    case 1790:
    case 1791:
      goto LABEL_139;
    case 1543:
      result = 45;
      break;
    case 1544:
      result = 46;
      break;
    case 1545:
      result = 47;
      break;
    case 1546:
      result = 48;
      break;
    case 1547:
      result = 49;
      break;
    case 1548:
      result = 50;
      break;
    case 1549:
      result = 51;
      break;
    case 1550:
      result = 52;
      break;
    case 1551:
      result = 53;
      break;
    case 1552:
      return result;
    case 1553:
      result = 55;
      break;
    case 1554:
      result = 56;
      break;
    case 1555:
      result = 57;
      break;
    case 1556:
      result = 58;
      break;
    case 1557:
      result = 59;
      break;
    case 1558:
      result = 60;
      break;
    case 1559:
      result = 61;
      break;
    case 1560:
      result = 62;
      break;
    case 1561:
      result = 63;
      break;
    case 1562:
      result = 64;
      break;
    case 1563:
      result = 65;
      break;
    case 1564:
      result = 66;
      break;
    case 1565:
      result = 67;
      break;
    case 1566:
      result = 68;
      break;
    case 1567:
      result = 69;
      break;
    case 1568:
      result = 70;
      break;
    case 1569:
      result = 71;
      break;
    case 1792:
      result = 100;
      break;
    case 1793:
      result = 101;
      break;
    case 1794:
      result = 102;
      break;
    default:
      if (v2 != 1279)
      {
        goto LABEL_139;
      }

      result = 99;
      break;
  }

  return result;
}