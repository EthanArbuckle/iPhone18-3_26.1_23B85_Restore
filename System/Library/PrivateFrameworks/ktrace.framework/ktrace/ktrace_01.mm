void _session_handle_stackshot(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 320);
  if (v3)
  {
    v5 = *(a1 + 328);
    while (v5 <= a2)
    {
      v6 = *(a1 + 496);
      *(a1 + 496) = v5;
      if ((*(a1 + 260) || *(a1 + 280)) && *(a1 + 296))
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = ___session_handle_stackshot_block_invoke;
        v14[3] = &__block_descriptor_40_e37_v24__0_kcdata_iter___kcdata_item__v_8l;
        v14[4] = a1;
        ktrace_stackshot_chunk_unwrap(v3, v14);
      }

      if (*(a1 + 284))
      {
        v7 = *(a1 + 320);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = ___session_handle_stackshot_block_invoke_2;
        v13[3] = &__block_descriptor_40_e37_v24__0_kcdata_iter___kcdata_item__v_8l;
        v13[4] = a1;
        ktrace_stackshot_chunk_unwrap(v7, v13);
      }

      if (*(a1 + 96))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = *(a1 + 104) + v8;
          if (*(v10 + 16) != 4)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          ktrace_stackshot_chunk_unwrap(*(a1 + 320), *(v10 + 24));
          *(a1 + 496) = v6;
          ++v9;
          v8 += 32;
        }

        while (v9 < *(a1 + 96));
      }

      v11 = *(a1 + 320);
      v12 = v11[13];
      if (!*a1)
      {
        ktrace_chunk_destroy(v11);
      }

      *(a1 + 320) = v12;
      if (!v12)
      {
        *(a1 + 328) = -1;
        return;
      }

      v5 = ktrace_stackshot_chunk_timestamp(v12);
      v3 = *(a1 + 320);
      *(a1 + 328) = v5;
      if (!v3)
      {
        return;
      }
    }
  }
}

uint64_t process_tracepoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  dispatch_assert_queue_V2(*(a1 + 232));
  v8 = *a2;
  if (a4)
  {
    *a3 = v8;
    *(a3 + 48) = *(a2 + 48);
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 32) = *(a2 + 32);
    *(a3 + 40) = *(a2 + 40);
    v9 = *(a2 + 52);
  }

  else
  {
    v8 &= 0xFFFFFFFFFFFFFFuLL;
    *a3 = v8;
    *(a3 + 48) = *(a2 + 28);
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 16) = *(a2 + 12);
    *(a3 + 24) = *(a2 + 16);
    *(a3 + 32) = *(a2 + 20);
    *(a3 + 40) = *(a2 + 24);
    v9 = *(a2 + 7);
  }

  *(a3 + 52) = v9;
  if ((*(a1 + 224) & 0x80) != 0)
  {
    v8 = kttimesync_cont_from_timestamp(a1 + 432, v8);
    *a3 = v8;
  }

  if (*(a1 + 264))
  {
    _session_convert_walltime(a1, v8);
    *(a3 + 64) = v11;
  }

  else
  {
    v10 = 0;
    *(a3 + 64) = 0;
  }

  *(a3 + 56) = v10;
  if (*(a1 + 260) != 1 && !*(a1 + 560) && !*(a1 + 576))
  {
    *(a3 + 88) = -1;
    *(a3 + 80) = 0;
    goto LABEL_36;
  }

  *(a3 + 80) = 0;
  *(a3 + 88) = kthmap_pid_name_for_tid(*(a1 + 296), *(a3 + 40), (a3 + 80));
  v12 = *(a3 + 80);
  if (*(a1 + 260) == 2)
  {
    *(a3 + 80) = 0;
  }

  if (*(a1 + 580) != 1 || !CFSetContainsValue(*(a1 + 584), (*(a3 + 48) & 0xFFFFFFFC)))
  {
    if (!*(a1 + 268) || *(a3 + 48) >> 2 != 12599332 || (v13 = *(a3 + 88), v13 != getpid()))
    {
      if (*(a1 + 560) == 1)
      {
        v14 = *(a3 + 88);
        if (v14 != -1)
        {
          if (CFSetContainsValue(*(a1 + 552), v14))
          {
            return 0;
          }
        }
      }

      if (*(a1 + 576) == 1 && v12 && CFSetContainsValue(*(a1 + 568), v12))
      {
        return 0;
      }

      if (*(a1 + 560) == 2 || *(a1 + 576) == 2)
      {
        v15 = *(a3 + 88);
        if (v15 == -1)
        {
          v16 = 1;
          if (v12)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v16 = CFSetContainsValue(*(a1 + 552), v15) == 0;
          if (v12)
          {
LABEL_29:
            v17 = CFSetContainsValue(*(a1 + 568), v12) == 0;
LABEL_32:
            if ((*(a1 + 560) != 2 || v16) && (*(a1 + 576) != 2 || v17))
            {
              return 0;
            }

            goto LABEL_36;
          }
        }

        v17 = 1;
        goto LABEL_32;
      }
    }
  }

LABEL_36:
  if (*(a1 + 256) == 1)
  {
    v19 = ktrace_name_for_eventid(a1, (*(a3 + 48) & 0xFFFFFFFC));
  }

  else
  {
    v19 = 0;
  }

  *(a3 + 72) = v19;
  return 1;
}

uint64_t __ktrace_kpdecode_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return kpdecode_record_free();
}

uint64_t kthmap_pid_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    return *(value + 2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t kttimesync_ns_from_timestamp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v2 != v3)
  {
    return v2 * a2 / v3;
  }

  return a2;
}

const void *ktrace_get_name_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_thread_name_for_tid(v3, a2);
}

uint64_t ktrace_get_continuous_from_timestamp(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 224) & 0x80) != 0)
  {
    return a2;
  }

  else
  {
    return kttimesync_cont_from_timestamp(a1 + 432, a2);
  }
}

uint64_t kthmap_pid_name_for_tid(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    v4 = *(value + 3);
    result = *(value + 2);
  }

  else
  {
    v4 = 0;
    result = 0xFFFFFFFFLL;
  }

  *a3 = v4;
  return result;
}

uint64_t ktrace_is_kernel_64_bit(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v1 = *(a1 + 608);
    v2 = *MEMORY[0x277D85DE8];

    return ktrace_file_is_64_bit(v1);
  }

  else
  {
    v37 = xmmword_22EE3F348;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    memset(v6, 0, sizeof(v6));
    v5 = 648;
    if (sysctl(&v37, 4u, v6, &v5, 0, 0) == -1)
    {
      result = 0;
    }

    else
    {
      result = (v7 >> 2) & 1;
    }

    v4 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t ktrace_file_is_64_bit(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 298);
}

void __ktrace_start_file_internal_block_invoke_12(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = atomic_load((*(a1 + 32) + 157));
  if ((v3 & 1) == 0)
  {
    _session_process_events(*(a1 + 32), a2, a3, *(a1 + 40));
  }
}

uint64_t ktrace_get_execname_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_process_name_for_tid(v3, a2);
}

uint64_t kthmap_process_name_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    return *(value + 3);
  }

  else
  {
    return 0;
  }
}

char *dyldtp_decode_window_update(int a1, unint64_t a2, DyldDecodeWindow *this, uint64_t a4)
{
  v31 = a2;
  v5 = *(a4 + 48);
  if (v5 >> 2 == 29392898)
  {
    DyldDecodeWindow::reset(this);
    return 0;
  }

  if (HIBYTE(v5) != 31)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dyldtp_decode_window_update(a4);
    }

    return 0;
  }

  v8 = (this + 104);
  if (*(this + 13) == a2)
  {
    v9 = this + 40;
  }

  else
  {
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(this, &v31);
    if (v12)
    {
      v9 = (v12 + 3);
    }

    else
    {
      v9 = this + 40;
      if (*(this + 12) && !dyldtp_complete(this + 40))
      {
        if (*v8 == -1)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v32 = this + 104;
        v13 = std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this, this + 13);
        v14 = *v9;
        v15 = *(this + 56);
        v16 = *(this + 72);
        *(v13 + 9) = *(this + 88);
        *(v13 + 7) = v16;
        *(v13 + 5) = v15;
        *(v13 + 3) = v14;
      }

      *(this + 72) = 0u;
      *(this + 88) = 0u;
      *v9 = 0u;
      *(this + 56) = 0u;
      *v8 = v31;
    }
  }

  v17 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 14, &v31);
  if (!v17)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(this + 14, &v31);
  }

  v18 = *(a4 + 48);
  if (dyldtp_complete(v9))
  {
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *v9 = 0u;
    *(v9 + 1) = 0u;
  }

  v19 = (v18 - 520421376) >> 2;
  v20 = v18 & 0xFFFFFFFC;
  switch(v19)
  {
    case 0u:
    case 5u:
    case 0xAu:
      if (!a1)
      {
        goto LABEL_59;
      }

      v21 = *(a4 + 8);
      if (!HIDWORD(v21) && !*(a4 + 20))
      {
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          dyldtp_decode_window_update();
        }

        v9[56] |= 2u;
        v21 = *(a4 + 8);
      }

      *(v9 + 12) = v21;
      *(v9 + 20) = *(a4 + 16);
      *(v9 + 4) = *(a4 + 24);
      *(v9 + 5) = *(a4 + 32);
      goto LABEL_35;
    case 1u:
    case 6u:
    case 0xBu:
      if (!a1 || !v17 && !*(v9 + 2) || (v9[56] & 2) != 0)
      {
        goto LABEL_59;
      }

      v22 = v20 - 4;
      *(v9 + 6) = *(a4 + 8);
      break;
    case 2u:
    case 7u:
    case 0xCu:
      *(v9 + 12) = vuzp1q_s32(*(a4 + 8), *(a4 + 24));
LABEL_35:
      v22 = v20;
      break;
    case 3u:
    case 8u:
    case 0xDu:
      if (!v17 && !*(v9 + 2))
      {
        v9[56] |= 1u;
      }

      v22 = v20 - 4;
      *(v9 + 4) = *(a4 + 8);
      *(v9 + 5) = vmovn_s64(*(a4 + 16));
      *(v9 + 12) = *(a4 + 32);
      break;
    case 4u:
    case 9u:
    case 0xEu:
      if ((v9[56] & 1) != 0 || !v17 && !*(v9 + 2))
      {
        goto LABEL_59;
      }

      v22 = v20 - 8;
      *(v9 + 13) = *(a4 + 8);
      break;
    default:
      if (!*(v9 + 2))
      {
        return 0;
      }

      goto LABEL_59;
  }

  if (v9[56])
  {
LABEL_59:
    v10 = 0;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    return v10;
  }

  if (*v9)
  {
    if (v22 != *v9)
    {
      goto LABEL_59;
    }

    if (v22 != *(v9 + 1))
    {
      goto LABEL_59;
    }

    v23 = *(v9 + 2);
    if (v20 != v22 + 4 * v23)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v9 = v22;
    *(v9 + 1) = v20;
    v23 = *(v9 + 2);
  }

  *(v9 + 2) = v23 + 1;
  if (!dyldtp_complete(v9))
  {
    return 0;
  }

  v10 = (this + 40);
  if (v9 == this + 40)
  {
    return v9;
  }

  if (*(this + 12) && !dyldtp_complete(this + 40))
  {
    v32 = this + 104;
    v24 = std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this, this + 13);
    v25 = *v10;
    v26 = *(this + 56);
    v27 = *(this + 72);
    *(v24 + 9) = *(this + 88);
    *(v24 + 7) = v27;
    *(v24 + 5) = v26;
    *(v24 + 3) = v25;
  }

  v28 = *v9;
  v29 = *(v9 + 1);
  v30 = *(v9 + 3);
  *(this + 72) = *(v9 + 2);
  *(this + 88) = v30;
  *v10 = v28;
  *(this + 56) = v29;
  *(this + 13) = v31;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__erase_unique<unsigned long long>(this, &v31);
  return v10;
}

char *ktrace_uuid_map_update_internal(char *result, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6)
{
  v78 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_35;
  }

  v10 = result;
  if (a4)
  {
    v11 = a3[5];
    v12 = a3 + 6;
    v13 = *(a3 + 1);
    v14 = *(a3 + 3);
  }

  else
  {
    v11 = *(a3 + 6);
    v12 = a3 + 7;
    v15 = a3[1];
    v16 = a3[2];
    *&v17 = v15;
    *(&v17 + 1) = HIDWORD(v15);
    v13 = v17;
    *&v17 = v16;
    *(&v17 + 1) = HIDWORD(v16);
    v14 = v17;
  }

  v18 = *v12 & 0xFFFFFFFC;
  v19 = *a3;
  v38 = 0;
  v40 = 0u;
  v31 = v19;
  v32 = v13;
  v33 = v14;
  v34 = v11;
  v35 = v18;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  *&v40 = 0;
  DWORD2(v40) = 0;
  if ((result[208] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = dyldtp_decode_window_update(a4, v11, (result + 48), &v31);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  if (result)
  {
    v20 = *(result + 3);
    v22 = *result;
    v21 = *(result + 1);
    v76 = *(result + 2);
    v77 = v20;
    v74 = v22;
    v75 = v21;
    HIDWORD(v24) = v22 - 520421376;
    LODWORD(v24) = v22 - 520421376;
    v23 = v24 >> 2;
    if (v23 > 0xC)
    {
      goto LABEL_11;
    }

    if (((1 << v23) & 5) != 0)
    {
      if (a5)
      {
LABEL_22:
        v63 = MEMORY[0x277D85DD0];
        v64 = 3221225472;
        v65 = ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2;
        v66 = &__block_descriptor_120_e5_v8__0l;
        v67 = v10;
        v68 = a2;
        v69 = v11;
        v70 = v74;
        v71 = v75;
        v72 = v76;
        v73 = v77;
LABEL_34:
        result = (*(a6 + 16))(a6, v19);
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    v25 = 520421416;
    if (((1 << v23) & 0xA0) != 0)
    {
      v27 = 520421396;
      v25 = 520421376;
    }

    else
    {
      v26 = 1 << v23;
      v27 = 520421416;
      if ((v26 & 0x1400) == 0)
      {
LABEL_11:
        abort();
      }
    }

    if (a5)
    {
      v18 = v27;
    }

    else
    {
      v18 = v25;
    }
  }

  if (v18 > 520421395)
  {
    if (v18 != 520421396)
    {
      if (v18 == 520421416)
      {
        if (result)
        {
          result = uuid_is_null((&v74 | 0xC));
          if (!result)
          {
            v41 = MEMORY[0x277D85DD0];
            v42 = 3221225472;
            v48 = v74;
            v49 = v75;
            v50 = v76;
            v43 = ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_77;
            v44 = &__block_descriptor_120_e5_v8__0l;
            v45 = v10;
            v46 = a2;
            v47 = v11;
            v51 = v77;
            goto LABEL_34;
          }
        }
      }

      goto LABEL_35;
    }

    if (!result)
    {
      goto LABEL_35;
    }

LABEL_31:
    v52 = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    v54 = ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_76;
    v55 = &__block_descriptor_120_e5_v8__0l;
    v56 = v10;
    v57 = a2;
    v58 = v11;
    v62 = v77;
    goto LABEL_34;
  }

  if (v18 == 117440520)
  {
    if (a4)
    {
      v28 = a3[1];
    }

    else
    {
      v28 = *(a3 + 2);
    }

    if (v28 == v28)
    {
      goto LABEL_34;
    }
  }

  else if (v18 == 520421376 && result)
  {
    goto LABEL_22;
  }

LABEL_35:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

BOOL dyldtp_complete(uint64_t a1)
{
  if ((*a1 - 520421376) <= 0x30)
  {
    if (((1 << *a1) & 0x10000100001) != 0)
    {
      v1 = 2;
      return *(a1 + 8) == v1;
    }

    if (((1 << *a1) & 0x1000010000100) != 0)
    {
      v1 = 3;
      return *(a1 + 8) == v1;
    }
  }

  if (*a1)
  {
    abort();
  }

  return 0;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = ktrace_uuid_map_ensure_address_space_for_tid(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = v2;
  if (!uuid_is_null((a1 + 68)))
  {
    v4 = *(a1 + 88);
    v42 = 0u;
    v43 = v4;
    v40 = *(a1 + 68);
    v41 = 0u;
    *(&v41 + 11) = 5527621;
    LODWORD(v41) = 2;
    DWORD2(v41) = 1163157343;
    v44 = *(a1 + 96);
    v45 = 0u;
    v5 = ktrace_address_space_symbol_owner_for_address(v3, v4, 0);
    v6 = v5;
    if (v5)
    {
      if (*(v5 + 16) == 3)
      {
        v7 = (v5 + 56);
        if (v6[7])
        {
          v8 = v6[6];
          if (v43 - v8 <= optional_uint64::value(v7))
          {
LABEL_38:
            SymbolOwner::~SymbolOwner(&v40);
            goto LABEL_39;
          }
        }

        else
        {
          buf[0] = 0;
          *&v46 = 0;
          get_sc_and_slide(*(a1 + 32), v6, buf, &v46);
          v10 = v46;
          if (v46 && buf[0])
          {
            v11 = **(v46 + 16);
            v12 = *(*(v46 + 16) + 8);
            v13 = v12 - v11;
            if (v12 != v11)
            {
              ktrace_address_space_sort(v46, v9);
              v14 = *(**(v10 + 16) + 48);
              v15 = optional_uint64::value(buf);
              v16 = *(**(v10 + 16) + v13 - 48);
              v17 = optional_uint64::value(buf) + v16;
              if (v43 >= v15 + v14 && v43 <= v17)
              {
                goto LABEL_38;
              }
            }
          }

          else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            v19 = uuid_string(v40, *(&v40 + 1));
            v20 = uuid_string(*v6, v6[1]);
            ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_cold_2(v19, v20, v48);
          }
        }
      }

      v21 = *v6;
      v46 = v40;
      *buf = v21;
      if (v21 != v40 || *(&v21 + 1) != *(&v40 + 1))
      {
        v38 = SymbolOwner::min_range(v6);
        v39 = v23;
        v37[0] = SymbolOwner::min_range(&v40);
        v37[1] = v24;
        if (!Range::intersects(&v38, v37))
        {
LABEL_29:
          *&v46 = SymbolOwner::min_range(v6);
          *(&v46 + 1) = v28;
          v38 = SymbolOwner::min_range(&v40);
          v39 = v29;
          if (Range::intersects(&v46, &v38))
          {
            v30 = *(a1 + 40);
            if (v30 && (v31 = *(v30 + 608), (v32 = *(v30 + 304)) != 0))
            {
              v33 = *(v32 + 288);
            }

            else
            {
              v33 = 0;
            }

            ktrace_address_space_merge_owner(v3, v6, &v40, v33);
            goto LABEL_38;
          }

LABEL_33:
          v35[2] = v42;
          v35[3] = v43;
          v35[4] = v44;
          *cf = v45;
          v35[0] = v40;
          v35[1] = v41;
          if (v45)
          {
            CFRetain(v45);
          }

          ktrace_address_space_append(v3, v35);
          SymbolOwner::~SymbolOwner(v35);
          goto LABEL_38;
        }

        v25 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          v26 = uuid_string(*v6, v6[1]);
          ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_cold_3(v26, v6, buf, v25);
        }

        ktrace_address_space_delete(v3, *v6, v6[1], v6[6]);
        v6 = ktrace_address_space_symbol_owner_for_address(v3, v43, v27);
      }
    }

    if (!v6)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_cold_1();
  }

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22ED8CE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  SymbolOwner::~SymbolOwner(va);
  _Unwind_Resume(a1);
}

unint64_t decompress_64(int *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
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

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = 0;
  v9 = *a3;
  if (*a3)
  {
    v11 = 0;
    if (a5)
    {
      v11 = 0;
      v8 = 0;
      v13 = (a1 + 6);
      do
      {
        v14 = ktrace_compressor_decompress(a1, (a2 + v11), v9 - v11);
        if (!v14)
        {
          break;
        }

        v15 = a4 + v8;
        *v15 = *(a1 + 2);
        v16 = &v13[12 * *a1];
        v17 = v16[11];
        *(v15 + 8) = *v16;
        *(v15 + 16) = *(v16 + 1);
        *(v15 + 24) = *(v16 + 2);
        *(v15 + 32) = *(v16 + 3);
        *(v15 + 40) = *(v16 + 4);
        *(v15 + 48) = *(v16 + 5);
        *(v15 + 52) = v17;
        v11 += v14;
        v8 += 64;
        if (v11 >= v9)
        {
          break;
        }
      }

      while (v8 < a5);
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return v8;
}

uint64_t ktrace_stream_iterate_group(uint64_t a1, size_t a2, NSObject *a3, NSObject *a4, uint64_t a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = a1 + 32;
  v7 = *(a1 + 32);
  if (v7)
  {
    while (1)
    {
      v12 = *v7;
      if (!*v7)
      {
        return 0;
      }

      v13 = ktrace_chunk_tag(*v7);
      v14 = ktrace_chunk_size(v12);
      v15 = *(*v8 + 8);
      if (v15 > v14)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v16 = v14;
      dispatch_semaphore_wait(*(a1 + 960), 0xFFFFFFFFFFFFFFFFLL);
      if (v13 == 20982)
      {
        break;
      }

      if (v13 == 7936)
      {
        if (v16 < 0xD)
        {
          goto LABEL_47;
        }

        if (!*(*v8 + 8))
        {
          *(*v8 + 8) = 12;
        }

        v18 = 0x200000;
        if ((*(a1 + 968) & 1) == 0)
        {
          v18 = 0x400000;
        }

        if (v18 >= a2)
        {
          v19 = a2;
        }

        else
        {
          v19 = v18;
        }

        if (*(a1 + 972))
        {
          v20 = stream_decompress_64;
        }

        else
        {
          v20 = stream_decompress_32;
        }

        v21 = a1 + 48;
        v22 = a1;
        v23 = a3;
        v24 = a4;
        v25 = a5;
LABEL_30:
        v26 = convert_events(v22, v19, v23, v24, v25, v20, v21);
        if (v26)
        {
          v30 = v26;
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      if (v13 != 7680)
      {
        ktrace_stream_iterate_group_cold_1();
      }

      if (v16 < 8)
      {
LABEL_47:
        v30 = 79;
LABEL_49:
        dispatch_semaphore_signal(*(a1 + 960));
        return v30;
      }

      v17 = 40;
      if (*(a1 + 972))
      {
        v17 = 72;
      }

      if (v16 < v17)
      {
        ktrace_chunk_queue_dequeue(v8);
        dispatch_semaphore_signal(*(a1 + 960));
LABEL_31:
        v7 = *v8;
        goto LABEL_32;
      }

      if (v15)
      {
        v27 = v15;
      }

      else
      {
        v27 = 8;
      }

      if (v16 - v27 >= a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = v16 - v27;
      }

      v29 = ktrace_chunk_map_data(v12, v27, v28);
      if (!v29)
      {
        v30 = *__error();
        goto LABEL_49;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __ktrace_stream_iterate_group_block_invoke;
      block[3] = &unk_27886EAE0;
      block[4] = a5;
      block[5] = v29;
      block[6] = v28;
      block[7] = v12;
      block[8] = a1;
      if (a4)
      {
        dispatch_group_async(a4, a3, block);
      }

      else
      {
        dispatch_async(a3, block);
      }

      v7 = *v8;
      *(*v8 + 8) = v28 + v27;
      if (v28 + v27 == v16)
      {
        ktrace_chunk_queue_dequeue(v8);
        goto LABEL_31;
      }

LABEL_32:
      if (!v7)
      {
        return 0;
      }
    }

    if (*(a1 + 972))
    {
      v20 = convert_artrace_events_64;
    }

    else
    {
      v20 = convert_artrace_events_32;
    }

    v22 = a1;
    v19 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v21 = 0;
    goto LABEL_30;
  }

  return 0;
}

unint64_t ktrace_compressor_decompress(int *a1, char *a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x40)
  {
    __memcpy_chk();
    a2 = &v25;
  }

  v5 = a2[1];
  v6 = *a2 | (v5 << 8);
  v8 = a1 + 6;
  v7 = *a1;
  v9 = *a1 + (v5 >> 4);
  if (v9 > 0x10)
  {
    v9 -= 17;
  }

  v10 = &v8[12 * v9];
  v11 = *(a2 + 2);
  if (v11)
  {
    v12 = __clz(__rbit64(v11));
    v13 = v11 << (56 - 8 * v12) >> (-7 * v12 + 57);
    result = v12 + 3;
  }

  else
  {
    v13 = *(a2 + 3);
    result = 11;
  }

  v15 = 0;
  if (v7)
  {
    v16 = v7 - 1;
  }

  else
  {
    v16 = 16;
  }

  v17 = &v8[12 * v16];
  do
  {
    v18 = v6 & 3;
    if ((v6 & 3) > 1)
    {
      if (v18 == 2)
      {
        v18 = *&v10[v15] ^ 3;
      }

      else
      {
        v19 = *&a2[result];
        if (v19)
        {
          v20 = __clz(__rbit64(v19));
          v21 = (v20 + 1);
          v22 = (v19 << (-8 * (v20 + 1))) >> (-7 * v20 + 57);
        }

        else
        {
          v22 = *&a2[result + 1];
          v21 = 9;
        }

        result += v21;
        v18 = *&v10[v15] + v22;
      }
    }

    else if ((v6 & 3) != 0)
    {
      v18 = *&v10[v15];
    }

    *&v17[v15] = v18;
    v6 >>= 2;
    v15 += 2;
  }

  while (v15 != 12);
  if (result >= 0x42)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (result <= a3)
  {
    *a1 = v16;
    v23 = *(a1 + 2);
    *(a1 + 1) = v23;
    *(a1 + 2) = v23 + v13;
  }

  else
  {
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_events(uint64_t a1, size_t a2, NSObject *a3, NSObject *a4, uint64_t a5, uint64_t (*a6)(const UInt8 *, uint64_t *, char *, size_t *, uint64_t), uint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a6)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v12 = a1;
  v14 = a1 + 32;
  v13 = *(a1 + 32);
  if (v13)
  {
    v15 = *v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v13 + 8);
  v17 = ktrace_chunk_size(v15);
  if (v16 >= v17)
  {
    v24 = 0;
    goto LABEL_36;
  }

  v18 = v17;
  v38 = malloc_type_malloc(a2, 0x1062ABCBuLL);
  if (!v38)
  {
    v24 = 12;
    goto LABEL_36;
  }

  if (!a2)
  {
    v24 = 0;
LABEL_35:
    free(v38);
    dispatch_semaphore_signal(*(v12 + 960));
    goto LABEL_36;
  }

  v36 = v12;
  v37 = a6;
  v33 = a5;
  v34 = a4;
  queue = a3;
  v19 = 0;
  while (1)
  {
    if (v18 - v16 >= 0x400000)
    {
      v20 = 0x400000;
    }

    else
    {
      v20 = v18 - v16;
    }

    v41 = 0;
    v42 = 0;
    v21 = v18 - v16;
    if (v18 == v16)
    {
LABEL_25:
      ktrace_chunk_queue_dequeue(v14);
LABEL_26:
      v24 = 0;
      goto LABEL_32;
    }

    v22 = ktrace_chunk_map_data(v15, v16, v20);
    if (!v22)
    {
      v24 = *__error();
      goto LABEL_32;
    }

    v23 = v22;
    v41 = a2;
    v42 = v20;
    v24 = v37(v22, &v42, &v38[v19], &v41, a7);
    ktrace_chunk_unmap_data(v15, v23, v20);
    if (v24)
    {
      goto LABEL_32;
    }

    v25 = v41;
    if (!v41)
    {
      break;
    }

    v19 += v41;
    v26 = v42;
    v16 += v42;
    *(*v14 + 8) = v16;
    if (v21 == v26)
    {
      goto LABEL_25;
    }

    a2 -= v25;
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  if (v21 > 0x400000)
  {
    ktrace_log_init();
    v31 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      convert_events_cold_1(v20, v31);
    }

    goto LABEL_26;
  }

  *__error() = 79;
  v27 = *__error();
  ktrace_log_init();
  v28 = ktrace_file_log;
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    v32 = ktrace_chunk_tag(v15);
    *buf = 67109888;
    v44 = v32;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v18 - v16;
    v49 = 1024;
    v50 = v27;
    _os_log_error_impl(&dword_22ED7A000, v28, OS_LOG_TYPE_ERROR, "truncated events chunk (tag = 0x%x, offset = %llu, left = %zu) (%{errno}d)", buf, 0x22u);
  }

  *__error() = v27;
  v24 = 79;
LABEL_32:
  v12 = v36;
  if (!v19)
  {
    goto LABEL_35;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __convert_events_block_invoke;
  block[3] = &unk_27886EB08;
  block[4] = v33;
  block[5] = v38;
  block[6] = v19;
  block[7] = v36;
  if (v34)
  {
    dispatch_group_async(v34, queue, block);
  }

  else
  {
    dispatch_async(queue, block);
  }

LABEL_36:
  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t ktrace_chunk_tag(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 32);
}

intptr_t __convert_events_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  free(*(a1 + 40));
  v4 = *(*(a1 + 56) + 960);

  return dispatch_semaphore_signal(v4);
}

void ktrace_postprocess_file_internal_cold_4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

BOOL trace_enumerate(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  v5 = a2 >> v4;
  if (a2 >> v4)
  {
    v8 = 0;
    while (!(*(a4 + 16))(a4, a1 + (v8 << v4)))
    {
      if (v5 == ++v8)
      {
        v8 = v5;
        return v8 == v5;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 == v5;
}

BOOL __ktrace_prepass_chunk_block_invoke_2(_BOOL8 result, uint64_t a2, unint64_t a3)
{
  v3 = atomic_load((*(result + 32) + 157));
  if ((v3 & 1) == 0)
  {
    v4 = *(result + 48);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __ktrace_prepass_chunk_block_invoke_3;
    v5[3] = &__block_descriptor_tmp_19;
    v7 = v4;
    v6 = *(result + 32);
    return trace_enumerate(a2, a3, v4, v5);
  }

  return result;
}

uint64_t __ktrace_prepass_chunk_block_invoke_3(uint64_t a1, uint64_t a2)
{
  ktrace_uuid_map_event_prepass(*(*(a1 + 32) + 304), *(a1 + 32), a2, *(a1 + 48));
  ktrace_thread_map_update_prepass(*(a1 + 40), a2, *(a1 + 48));
  v4 = 28;
  if (*(a1 + 48))
  {
    v4 = 48;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
  }

  else
  {
    LODWORD(v5) = *(a2 + 8);
    v6 = *(a2 + 12);
    LODWORD(v7) = *(a2 + 16);
    v9 = *(a2 + 20);
  }

  kttimesync_update_kdebug_prepass(*(a1 + 32) + 432, *(a2 + v4), v5, v6, v7);
  return 0;
}

char *ktrace_uuid_map_event_prepass(char *result, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *(a2 + 632);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __ktrace_uuid_map_event_prepass_block_invoke;
    v5[3] = &__block_descriptor_40_e25_v24__0_PrepassOpRef_Q___8l;
    v5[4] = v4;
    return ktrace_uuid_map_update_internal(result, a2, a3, a4, 0, v5);
  }

  return result;
}

uint64_t kttimesync_update_kdebug_prepass(uint64_t result, int a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  if (a2 == 25165824)
  {
    v5 = a3 | (a5 << 32);
    *(result + 8) -= v5;
    v6 = *(result + 16);
    v7 = *(result + 20);
    if (v6 != v7)
    {
      v5 = v5 * v6 / v7;
    }

    v8 = *(result + 32) + 1000000000 * (v5 / 0x3B9ACA00) - v5;
    *(result + 24) -= v5 / 0x3B9ACA00;
    *(result + 32) = v8;
  }

  return result;
}

void ktrace_thread_map_update_prepass(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = *(a2 + 40);
    v6 = 48;
  }

  else
  {
    v5 = *(a2 + 24);
    v6 = 28;
  }

  v7 = *(a2 + v6) & 0xFFFFFFFC;
  if ((*(a1 + 96) & 2) == 0)
  {
    if (v7 <= 27721727)
    {
      if (v7 > 27656207)
      {
        if (v7 != 27656208)
        {
          if (v7 != 27656212)
          {
            return;
          }

LABEL_57:
          if (a3)
          {
            v18 = *(a2 + 8);
            v19 = *(a2 + 24);

            thread_group_set_flags(a1, v18, v19);
            return;
          }

          v20 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_86;
          }

LABEL_87:
          *__error() = v20;
          return;
        }

        goto LABEL_47;
      }

      goto LABEL_27;
    }

    if (v7 <= 27721735)
    {
      if (v7 != 27721728)
      {
        if (v7 != 27721732)
        {
          return;
        }

        goto LABEL_51;
      }

LABEL_54:
      if (a3)
      {
        if (*(a2 + 16) != 1)
        {
          return;
        }

        v17 = *(a2 + 8);
      }

      else
      {
        if (*(a2 + 12) != 1)
        {
          return;
        }

        v17 = *(a2 + 8);
      }

      delete_jetsam_coalition(a1, v17);
      return;
    }

    if (v7 != 27721736)
    {
      if (v7 != 27721740)
      {
        return;
      }

LABEL_35:
      if (a3)
      {
        if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
        {
          return;
        }

        v12 = *(a2 + 8);
        v11 = *(a2 + 16);
      }

      else
      {
        if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
        {
          return;
        }

        v12 = *(a2 + 8);
        v11 = *(a2 + 12);
      }

      v21 = a1;
      goto LABEL_82;
    }

    goto LABEL_40;
  }

  if (v7 > 27721731)
  {
    if (v7 > 27721739)
    {
      if (v7 != 27721740)
      {
        if (v7 == 117506060)
        {
          if (a3)
          {
            v23 = 32;
          }

          else
          {
            v23 = 16;
          }

          rename_task_copy(a1, v5, (a2 + 8), v23);
        }

        else if (v7 == 117440528)
        {
          v8 = *(a2 + 8);

          new_thread(a1, v5, v8, 0xFFFFFFFFFFFFFFFFLL);
        }

        return;
      }

      goto LABEL_35;
    }

    if (v7 == 27721732)
    {
LABEL_51:
      if (a3)
      {
        if (*(a2 + 16) != 1)
        {
          return;
        }

        v15 = *(a2 + 8);
        v16 = *(a2 + 24);
      }

      else
      {
        if (*(a2 + 12) != 1)
        {
          return;
        }

        v16 = *(a2 + 16);
        v15 = *(a2 + 8);
      }

      Value = CFDictionaryGetValue(*(a1 + 80), v15);
      if (Value)
      {
        *Value = v15;
        Value[1] = 0;
        Value[2] = v16;
        Value[3] = 0;
      }

      return;
    }

    if (v7 != 27721736)
    {
      return;
    }

LABEL_40:
    if (a3)
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        return;
      }

      v11 = *(a2 + 16);
    }

    else
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        return;
      }

      v11 = *(a2 + 12);
    }

    v21 = a1;
    v12 = -1;
LABEL_82:

    set_task_jetsam_coalition(v21, v11, v12);
    return;
  }

  if (v7 > 27656207)
  {
    if (v7 == 27656208)
    {
LABEL_47:
      if (a3)
      {
        v14 = *(a2 + 8);

        new_thread_group(a1, v14, (a2 + 16));
        return;
      }

      v20 = *__error();
      ktrace_log_init();
      if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

LABEL_86:
      ktrace_thread_map_update_prepass_cold_1();
      goto LABEL_87;
    }

    if (v7 == 27656212)
    {
      goto LABEL_57;
    }

    if (v7 != 27721728)
    {
      return;
    }

    goto LABEL_54;
  }

LABEL_27:
  if (v7 == 27656192)
  {
    if (!a3)
    {
      v20 = *__error();
      ktrace_log_init();
      if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    v13 = *(a2 + 8);

    delete_thread_group(a1, v13);
  }

  else
  {
    if (v7 != 27656200)
    {
      return;
    }

    if (!a3)
    {
      v20 = *__error();
      ktrace_log_init();
      if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    v9 = *(a2 + 24);
    v10 = *(a2 + 8);

    set_thread_thread_group(a1, v9, v10);
  }
}

void new_thread(CFDictionaryRef *a1, const void *a2, int a3, const void *a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = a3;
  Value = CFDictionaryGetValue(a1[2], a3);
  if (!Value)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x1010040139C5EC2uLL);
    if (!v10)
    {
      return;
    }

    Value = v10;
    *v10 = -1;
    *(v10 + 2) = a3;
    *(v10 + 12) = -1;
    *(v10 + 3) = 0;
    *(v10 + 4) = -1;
    CFDictionarySetValue(a1[2], v8, v10);
  }

  CFDictionarySetValue(a1[4], a2, Value);
  if (a4 != -1)
  {
    CFDictionarySetValue(a1[7], a4, v8);
    v11 = a1[6];

    CFDictionarySetValue(v11, a2, a4);
  }
}

char *rename_task_copy(uint64_t a1, const void *a2, const char *a3, size_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  result = CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  v7 = value;
  if (value)
  {
    v8 = *(value + 3);
    if (v8)
    {
      free(v8);
    }

    result = strndup(a3, a4);
    v7[3] = result;
  }

  return result;
}

void ktrace_chunk_queue_dequeue(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *a1;
  if (v2)
  {
    v3 = v2[2];
    *a1 = v3;
    if (v2 == *(a1 + 8))
    {
      *(a1 + 8) = 0;
    }

    if (v3)
    {
      *(v3 + 24) = 0;
    }

    free(v2);

    ktrace_compressor_reset((a1 + 16));
  }
}

void ktrace_compressor_reset(_DWORD *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = a1[1];
  bzero(a1, 0x388uLL);
  a1[1] = v2;
}

uint64_t ktrace_file_iterate(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 16) == 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 200))
  {
    v5 = *(a1 + 216);

    return ktrace_file_iterate_subfile();
  }

  else
  {
    v7 = ktrace_chunk_array_validate_chunk(a1, a1 + 24, &v13);
    if (v7)
    {
      v8 = v7;
      v9 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_iterate_cold_1();
      }

      *__error() = v9;
    }

    else
    {
      if (v13)
      {
        v12 = v13;
        while ((*(a3 + 16))(a3))
        {
          v10 = v12;
          v11 = ktrace_chunk_array_next(a1, a1 + 24, &v12);
          if (v12 == v10)
          {
            if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_FAULT))
            {
              ktrace_file_iterate_cold_2();
            }

            return 5;
          }

          v8 = v11;
          if (v11 || !v12)
          {
            return v8;
          }
        }
      }

      else
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_file_iterate_cold_3();
        }
      }

      return 0;
    }

    return v8;
  }
}

uint64_t ktrace_chunk_array_next(uint64_t a1, uint64_t a2, void **a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
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

  v6 = *a3;
  *a3 = 0;
  if (v6)
  {
    v7 = v6[3] + 1;
    v8 = *(a2 + 16);
    if (v7 < v8)
    {
      appended = 0;
      v10 = *(*a2 + 8 * v7);
LABEL_9:
      *a3 = v10;
      goto LABEL_30;
    }

    if (v7 == v8 && *(a2 + 8) != 0)
    {
      ktrace_log_init();
      v17 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_chunk_array_next_cold_1(v7, v17);
      }

LABEL_29:
      appended = 0;
      *a3 = 0;
      goto LABEL_30;
    }

    v12 = v6[1] + v6[2];
    v13 = (-v12 & 7) + v12;
    ktrace_log_init();
    v14 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      v16 = v6[1];
      v15 = v6[2];
      *buf = 134218496;
      v49 = v13;
      v50 = 2048;
      *v51 = v15;
      *&v51[8] = 2048;
      *&v51[10] = v16;
      _os_log_debug_impl(&dword_22ED7A000, v14, OS_LOG_TYPE_DEBUG, "calculating new offset %lld from %lld base data offset and %llu size", buf, 0x20u);
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      appended = 0;
      v10 = **a2;
      goto LABEL_9;
    }

    v13 = (-*(a2 + 40) & 7) + *(a2 + 40);
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_chunk_array_next_cold_2((a2 + 40));
    }
  }

  v19 = (a2 + 48);
  v20 = *(a2 + 32);
  if (v20 + v13 >= *(a2 + 48))
  {
LABEL_27:
    ktrace_log_init();
    v24 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(a2 + 32) + v13;
      v40 = *(a2 + 48);
      *buf = 134218496;
      v49 = v13;
      v50 = 2048;
      *v51 = v39;
      *&v51[8] = 2048;
      *&v51[10] = v40;
      _os_log_debug_impl(&dword_22ED7A000, v24, OS_LOG_TYPE_DEBUG, "next chunk header is at offset %lld (data at %lld), max offset is %lld", buf, 0x20u);
    }

    goto LABEL_29;
  }

  while (1)
  {
    v21 = ktrace_file_read(a1, &v46, v20, v13);
    v22 = *(a2 + 32);
    if (v21 < v22)
    {
      appended = *__error();
      if (!appended)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v28 = *__error();
      ktrace_log_init();
      v29 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a2 + 32);
        *buf = 134218496;
        v49 = v42;
        v50 = 2048;
        *v51 = v13;
        *&v51[8] = 1024;
        *&v51[10] = v28;
        _os_log_error_impl(&dword_22ED7A000, v29, OS_LOG_TYPE_ERROR, "cannot read %zu bytes at offset %lld for next chunk header (%{errno}d)", buf, 0x1Cu);
      }

      *__error() = v28;
      goto LABEL_30;
    }

    if (v46 != 0x2000)
    {
      break;
    }

    v13 += (-(v22 + v13 + v47) & 7) + v22 + v47;
    ktrace_log_init();
    v23 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v49 = v13;
      _os_log_debug_impl(&dword_22ED7A000, v23, OS_LOG_TYPE_DEBUG, "skipping null chunk to offset %lld", buf, 0xCu);
    }

    v20 = *(a2 + 32);
    if (v20 + v13 >= *(a2 + 48))
    {
      goto LABEL_27;
    }
  }

  if (v46 == -1)
  {
    v27 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_array_next_cold_3();
    }

    *__error() = v27;
LABEL_44:
    appended = 79;
    goto LABEL_30;
  }

  if (v47 != -1)
  {
    if (v47 + v13 + v22 > *v19)
    {
      v30 = *__error();
      ktrace_log_init();
      v31 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a2 + 16);
        v44 = *(a2 + 32) + v13;
        v45 = *(a2 + 48);
        *buf = 134219008;
        v49 = v43;
        v50 = 2048;
        *v51 = v47;
        *&v51[8] = 2048;
        *&v51[10] = v44;
        v52 = 2048;
        v53 = v45;
        v54 = 1024;
        v55 = v30;
        _os_log_error_impl(&dword_22ED7A000, v31, OS_LOG_TYPE_ERROR, "chunk %zu would extend beyond file: chunk header shows size %llu, data starts at offset %lld, but max offset in file is %lld (%{errno}d)", buf, 0x30u);
      }

      *__error() = v30;
      goto LABEL_44;
    }

LABEL_50:
    if (v22 == 8)
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_chunk_array_next_cold_7(&v46);
      }

      v33 = v46;
      v36 = HIDWORD(v46);
      v37 = *(a2 + 32) + v13;
      v38 = a1;
      v34 = 0;
      v35 = 0;
LABEL_58:
      v6 = ktrace_chunk_create(v38, v33, v34, v35, v36, v37);
    }

    else if (v22 == 16)
    {
      ktrace_log_init();
      v32 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v49 = v13;
        v50 = 1024;
        *v51 = v46;
        *&v51[4] = 2048;
        *&v51[6] = v47;
        _os_log_debug_impl(&dword_22ED7A000, v32, OS_LOG_TYPE_DEBUG, "found chunk with header at offset %lld, tag 0x%08x size %llu", buf, 0x1Cu);
      }

      v33 = v46;
      v34 = WORD2(v46);
      v35 = HIWORD(v46);
      v36 = v47;
      v37 = *(a2 + 32) + v13;
      v38 = a1;
      goto LABEL_58;
    }

    if (v6)
    {
      *a3 = v6;
      appended = ktrace_chunk_array_append_internal(a2, v6);
      if (!appended)
      {
        if (*(a2 + 40) >= *(a2 + 48))
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
          {
            ktrace_chunk_array_next_cold_8((a2 + 40));
          }

          appended = 0;
          *(a2 + 8) = v6;
        }

        else
        {
          appended = 0;
        }
      }
    }

    else
    {
      appended = *__error();
    }

    goto LABEL_30;
  }

  v47 = *v19 - (v13 + v22);
  if (*(a1 + 296) != 1)
  {
    goto LABEL_50;
  }

  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    ktrace_chunk_array_next_cold_4(&v47);
  }

  if (ktrace_file_write(a1, &v47, 8uLL, v13 + 8) == 8)
  {
    v22 = *(a2 + 32);
    goto LABEL_50;
  }

  appended = *__error();
  if (!appended)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v41 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_chunk_array_next_cold_5();
  }

  *__error() = v41;
LABEL_30:
  v25 = *MEMORY[0x277D85DE8];
  return appended;
}

uint64_t __ktrace_start_file_prepass_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (!v3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  dispatch_assert_queue_V2(*(v2 + 128));
  is_64_bit = ktrace_chunk_is_64_bit(a2);
  if (!*(v2 + 624))
  {
    *(v2 + 624) = ktrace_stream_create(0, is_64_bit, (*(v2 + 224) >> 6) & 1);
  }

  v6 = *(v2 + 232);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ktrace_prepass_chunk_block_invoke;
  block[3] = &__block_descriptor_tmp_17_0;
  block[4] = v3;
  block[5] = a2;
  block[6] = v2;
  dispatch_async(v6, block);
  if (!ktrace_stream_add(*(v2 + 624), a2))
  {
    v7 = *(v2 + 624);
    v8 = *(v2 + 232);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __ktrace_prepass_chunk_block_invoke_2;
    v10[3] = &__block_descriptor_tmp_21_0;
    v11 = is_64_bit;
    v10[4] = v2;
    v10[5] = v3;
    ktrace_stream_iterate_group(v7, 0x800000uLL, v8, 0, v10);
  }

  return 1;
}

uint64_t ktrace_chunk_is_64_bit(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1)
  {
    return *(*a1 + 298);
  }

  return current_system_is_64_bit();
}

uint64_t ktrace_stream_add(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 972);
  if (v4 != ktrace_chunk_is_64_bit(a2))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = ktrace_chunk_tag(a2);
  switch(v5)
  {
    case 7680:
      v6 = 8;
      break;
    case 20982:
      v6 = 0;
      break;
    case 7936:
      v6 = 12;
      break;
    default:
      return 22;
  }

  if (ktrace_chunk_size(a2) <= v6)
  {
    return 55;
  }

  v7 = malloc_type_malloc(0x20uLL, 0x10200404161829EuLL);
  if (!v7)
  {
    return 12;
  }

  v7[1] = 0;
  v7[2] = 0;
  v8 = *(a1 + 40);
  v7[3] = v8;
  *v7 = a2;
  if (v8)
  {
    *(v8 + 16) = v7;
  }

  if (!*(a1 + 32))
  {
    *(a1 + 32) = v7;
  }

  v9 = 0;
  *(a1 + 40) = v7;
  return v9;
}

void __ktrace_start_file_prepass_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 296) && (*(v2 + 260) || *(v2 + 280)))
  {
    v3 = *(v2 + 608);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __ktrace_start_file_prepass_block_invoke_4;
    v9[3] = &__block_descriptor_tmp_13_0;
    v9[4] = v2;
    ktrace_file_iterate(v3, 0, v9);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 608);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __ktrace_start_file_prepass_block_invoke_7;
  v8[3] = &__block_descriptor_tmp_14_0;
  v8[4] = v2;
  ktrace_file_iterate(v4, 0, v8);
  v5 = *(a1 + 32);
  v6 = *(v5 + 232);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ktrace_start_file_prepass_block_invoke_8;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = v5;
  dispatch_async(v6, block);
}

void __ktrace_start_file_internal_block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 608);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __ktrace_start_file_internal_block_invoke_10;
  v9[3] = &__block_descriptor_tmp_32_0;
  v9[4] = v2;
  v10 = *(a1 + 40);
  ktrace_file_iterate(v3, 0, v9);
  v4 = *(a1 + 32);
  if (*(v4 + 96) >= 1)
  {
    v5 = *(v4 + 232);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ktrace_start_file_internal_block_invoke_13;
    block[3] = &__block_descriptor_tmp_33_0;
    block[4] = v4;
    dispatch_async(v5, block);
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 128);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __ktrace_start_file_internal_block_invoke_14;
  v7[3] = &__block_descriptor_tmp_34_0;
  v7[4] = v4;
  dispatch_async(v6, v7);
}

uint64_t ktrace_chunk_array_validate_chunk(uint64_t a1, uint64_t a2, void **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a3;
  if (*a3)
  {
    if (v4[3] >= *(a2 + 16))
    {
      v7 = *__error();
      ktrace_log_init();
      v8 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        v10 = v4[3];
        v11 = *(a2 + 16);
        v12 = 134218496;
        v13 = v10;
        v14 = 2048;
        v15 = v11;
        v16 = 1024;
        v17 = v7;
        _os_log_error_impl(&dword_22ED7A000, v8, OS_LOG_TYPE_ERROR, "attempt to iterate chunk at position %zu with only %zu chunks (%{errno}d)", &v12, 0x1Cu);
      }

      *__error() = v7;
      result = 79;
    }

    else
    {
      result = 0;
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    return ktrace_chunk_array_next(a1, a2, a3);
  }

  return result;
}

void *_session_read_stackshot_chunk(uint64_t a1, void *a2)
{
  result = ktrace_chunk_tag(a2);
  switch(result)
  {
    case 0x51FE:
      goto LABEL_7;
    case 0x8002:
      result = ktrace_chunk_version_major(a2);
      if (result > 1)
      {
        return result;
      }

LABEL_7:
      result = ktrace_stackshot_chunk_timestamp(a2);
      if (result == -1)
      {
        return result;
      }

      v5 = result;
      result = *(a1 + 320);
      if (result)
      {
        v6 = (a1 + 320);
        do
        {
          result = ktrace_stackshot_chunk_timestamp(result);
          if (v5 <= result)
          {
            break;
          }

          v7 = *v6;
          v8 = *(v7 + 104);
          v6 = (v7 + 104);
          result = v8;
        }

        while (v8);
        if (v6 != (a1 + 320))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v6 = (a1 + 320);
      }

      *(a1 + 328) = v5;
LABEL_16:
      a2[13] = *v6;
      *v6 = a2;
      return result;
    case 0x9000:
      result = ktrace_chunk_version_major(a2);
      if (!result)
      {
        goto LABEL_7;
      }

      break;
  }

  return result;
}

BOOL __ktrace_start_file_internal_block_invoke_10(uint64_t a1, void *a2)
{
  v2 = atomic_load((*(a1 + 32) + 156));
  if ((v2 & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 232);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __ktrace_start_file_internal_block_invoke_11;
      block[3] = &__block_descriptor_tmp_30;
      block[4] = v5;
      block[5] = a2;
      dispatch_async(v6, block);
    }

    _session_read_stackshot_chunk(*(a1 + 32), a2);
    _session_chunk_callbacks(*(a1 + 32), a2);
    v7 = *(a1 + 32);
    if (*(v7 + 24) >= 1 && !ktrace_stream_add(*(v7 + 616), a2))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 616);
      v10 = *(v8 + 232);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __ktrace_start_file_internal_block_invoke_12;
      v12[3] = &__block_descriptor_tmp_31;
      v12[4] = v8;
      v13 = *(a1 + 41);
      ktrace_stream_iterate_group(v9, 0x800000uLL, v10, 0, v12);
    }
  }

  return (v2 & 1) == 0;
}

void _session_chunk_callbacks(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = ktrace_chunk_tag(a2);
  if (v4 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = (v5 + 12);
    do
    {
      if (v7 < *(v9 - 1))
      {
        break;
      }

      if (v7 < *v9)
      {
        v10 = *(a1 + 232);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___session_chunk_callbacks_block_invoke;
        block[3] = &__block_descriptor_tmp_3_1;
        v12 = v8;
        block[4] = v5;
        block[5] = a2;
        dispatch_async(v10, block);
      }

      ++v8;
      v9 += 8;
    }

    while (v4 != v8);
  }
}

uint64_t ktrace_stackshot_chunk_unwrap(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  v4 = ktrace_chunk_size(a1);
  if (ktrace_chunk_size(a1) != v4)
  {
    return 22;
  }

  v5 = ktrace_chunk_tag(a1);
  if (v5 != 20990)
  {
    if (v5 == 32770)
    {
      if (ktrace_chunk_version_major(a1) > 1)
      {
        return 22;
      }
    }

    else if (v5 != 36864 || ktrace_chunk_version_major(a1))
    {
      return 22;
    }
  }

  v6 = ktrace_chunk_map_data(a1, 0, v4);
  if (v6)
  {
    v7 = v6;
    v8 = ktrace_chunk_tag(a1);
    v9 = v7;
    v10 = v4;
    if (v8 != 20990)
    {
      v11 = ktrace_chunk_version_major(a1);
      v9 = v7;
      v10 = v4;
      if (!v11)
      {
        if (v4 < 0x10)
        {
          goto LABEL_19;
        }

        v10 = *v7;
        if (*v7 > v4 - 16)
        {
          goto LABEL_19;
        }

        v9 = v7 + 16;
      }
    }

    if (v9 + 16 <= &v9[v10] && &v9[*(v9 + 1) + 16] <= &v9[v10])
    {
      (*(a2 + 16))(a2);
      v12 = 0;
LABEL_20:
      ktrace_chunk_unmap_data(a1, v7, v4);
      return v12;
    }

LABEL_19:
    v12 = 22;
    goto LABEL_20;
  }

  return 22;
}

uint64_t ktrace_stackshot_chunk_timestamp(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __ktrace_stackshot_chunk_timestamp_block_invoke;
  v3[3] = &unk_27886EC88;
  v3[4] = &v4;
  ktrace_stackshot_chunk_unwrap(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_22ED8F678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ktrace_chunk_version_major(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 36) & 0x7FFF;
}

uint64_t __ktrace_stackshot_chunk_timestamp_block_invoke(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = a2 + 16;
  if (a2 + 16 <= a3)
  {
    do
    {
      v7 = v3 + *(a2 + 4);
      if (v7 > a3 || *a2 == -242132755)
      {
        break;
      }

      if (*a2 == 51)
      {
        goto LABEL_3;
      }

      v3 = v7 + 16;
      a2 = v7;
    }

    while (v7 + 16 <= a3);
  }

  a2 = 0;
  a3 = 0;
LABEL_3:
  if (a2 + 16 <= a3)
  {
    v4 = *(a2 + 4);
    if (a2 + 16 + v4 <= a3)
    {
      v5 = *a2;
      if ((*a2 & 0xFFFFFFF0) == 0x20)
      {
        v5 = 17;
      }

      if (v5 <= 2309)
      {
        if (v5 == 17 || v5 == 19)
        {
LABEL_26:
          if (v4 < 8)
          {
            return result;
          }

          goto LABEL_27;
        }

LABEL_24:
        v8 = v4 >= (*(a2 + 8) & 0xFu);
        LODWORD(v4) = v4 - (*(a2 + 8) & 0xF);
        if (!v8)
        {
          LODWORD(v4) = 0;
        }

        goto LABEL_26;
      }

      if (v5 == 2312)
      {
        if (v4 != 32)
        {
          goto LABEL_24;
        }
      }

      else if (v5 != 2310 || v4 != 112)
      {
        goto LABEL_24;
      }

      if ((*(a2 + 8) & 0x8F) == 0)
      {
LABEL_27:
        *(*(*(result + 32) + 8) + 24) = *(a2 + 16);
        return result;
      }

      goto LABEL_24;
    }
  }

  return result;
}

void __ktrace_prepass_chunk_block_invoke(uint64_t a1)
{
  kthmap_read_chunk(*(a1 + 32), *(a1 + 40));
  ktrace_uuid_map_learn_tailspin_process_info_with_chunk(*(*(a1 + 48) + 304), *(a1 + 40));
  ktrace_uuid_map_learn_tailspin_symbols_with_chunk(*(*(a1 + 48) + 304), *(a1 + 40));
  ktrace_uuid_map_learn_aot_translations_with_chunk(*(*(a1 + 48) + 304), *(a1 + 40));
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);

  ktrace_uuid_map_chunk_prepass(v2, v3);
}

uint64_t kthmap_read_chunk(_BYTE *a1, void *a2)
{
  v4 = ktrace_chunk_tag(a2);
  if ((v4 - 20530) < 2 || v4 == 7424)
  {
    v6 = v4;
    v7 = ktrace_chunk_size(a2);
    is_64_bit = ktrace_chunk_is_64_bit(a2);
    v9 = ktrace_chunk_version_major(a2);
    v10 = ktrace_chunk_map_data(a2, 0, v7);
    if (!v10)
    {
      return *__error();
    }

    v11 = v10;
    if (v6 == 20531)
    {
      if ((a1[96] & 2) == 0)
      {
LABEL_19:
        kdebug_map = 0;
LABEL_22:
        ktrace_chunk_unmap_data(a2, v11, v7);
        return kdebug_map;
      }

      dictionary = create_dictionary(v10, v7);
      if (dictionary)
      {
        v14 = dictionary;
        v15 = ariadne_thread_dict_apply;
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 != 20530)
      {
        if (v6 == 7424)
        {
          kdebug_map = kthmap_read_kdebug_map(a1, v10, v7, v9 > 1, is_64_bit);
        }

        else
        {
          kdebug_map = 22;
        }

        goto LABEL_22;
      }

      if ((a1[96] & 2) == 0)
      {
        goto LABEL_19;
      }

      v13 = create_dictionary(v10, v7);
      if (v13)
      {
        v14 = v13;
        v15 = _ariadne_process_dict_apply;
LABEL_18:
        CFDictionaryApplyFunction(v14, v15, a1);
        CFRelease(v14);
        goto LABEL_19;
      }
    }

    kdebug_map = 79;
    goto LABEL_22;
  }

  return 22;
}

void ktrace_uuid_map_learn_tailspin_process_info_with_chunk(uint64_t a1, uint64_t a2)
{
  if (!a1 || ktrace_chunk_tag(a2) != 36871 || ktrace_chunk_version_major(a2))
  {
    return;
  }

  v3 = ktrace_chunk_copy_plist(a2);
  if (v3)
  {
    v4 = v3;
    CFAutorelease(v3);
    Value = CFDictionaryGetValue(v4, @"Pid");
    v6 = Value;
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 != CFNumberGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
        }

        v6 = 0;
      }
    }

    v8 = CFDictionaryGetValue(v4, @"LoadInfos");
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (v6)
        {
          valuePtr = 0;
          if (!CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr))
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          if ((valuePtr & 0x80000000) == 0)
          {
            ktrace_address_space_create(valuePtr);
          }

          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
          {
            ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_3();
          }

          return;
        }
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

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_5();
    }
  }

  else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_6();
  }
}

void ktrace_uuid_map_learn_tailspin_symbols_with_chunk(uint64_t a1, uint64_t a2)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if (!a1 || ktrace_chunk_tag(a2) != 36870 || ktrace_chunk_version_major(a2))
  {
    goto LABEL_4;
  }

  v4 = ktrace_chunk_copy_plist(a2);
  v5 = v4;
  if (v4)
  {
    CFAutorelease(v4);
    Value = CFDictionaryGetValue(v5, @"Path");
    v7 = Value;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFStringGetTypeID())
      {
        if (!CFStringGetLength(v7))
        {
          v7 = 0;
        }
      }

      else
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
        }

        v7 = 0;
      }
    }

    v9 = CFDictionaryGetValue(v5, @"Size");
    v10 = v9;
    if (v9)
    {
      v11 = CFGetTypeID(v9);
      if (v11 != CFNumberGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
        }

        v10 = 0;
      }
    }

    v12 = CFDictionaryGetValue(v5, @"UUID_String");
    v13 = v12;
    if (v12)
    {
      v14 = CFGetTypeID(v12);
      if (v14 != CFStringGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
        }

        v13 = 0;
      }
    }

    v15 = CFDictionaryGetValue(v5, @"TEXT_EXEC");
    v16 = v15;
    if (v15)
    {
      v17 = CFGetTypeID(v15);
      if (v17 != CFBooleanGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_4();
        }

        v16 = 0;
      }
    }

    memset(&uu, 0, sizeof(uu));
    v18 = utf8(v13);
    if (!uuid_parse(v18, &uu.byte0) && v10 && v13 && v16)
    {
      *&valuePtr = 0;
      if (!CFNumberGetValue(v10, kCFNumberLongLongType, &valuePtr))
      {
        _os_assert_log();
        v37 = _os_crash();
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7(v37);
      }

      v41[3] = valuePtr;
      v19 = CFBooleanGetValue(v16);
      if (!v41[3])
      {
        if ((*(a1 + 290) & 1) == 0)
        {
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_6();
          }

          *(a1 + 290) = 1;
        }

        dictionary = cfdict_get_dictionary(v5, @"Symbols");
        if (dictionary)
        {
          context[0] = MEMORY[0x277D85DD0];
          context[1] = 3221225472;
          context[2] = __ktrace_uuid_map_learn_tailspin_symbols_with_chunk_block_invoke;
          context[3] = &unk_27886EC20;
          context[4] = &v40;
          CFDictionaryApplyFunction(dictionary, CFDictionaryApplierTrampoline, context);
        }
      }

      if (v7)
      {
        ktrace_uuid_map_associate_path_with_uuid(a1, uu, v7);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"UUID_String", v13);
      if (!v19)
      {
        v22 = cfnumber(v41[3]);
        CFDictionarySetValue(Mutable, @"TextSize", v22);
      }

      if (v7)
      {
        v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(v23, @"unknown", Mutable);
        CFRelease(Mutable);
        v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(v24, @"Path", v7);
        CFDictionarySetValue(v24, @"Images", v23);
        CFRelease(v23);
        v25 = *(a1 + 232);
        if (!v25)
        {
          v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(a1 + 232) = v25;
        }

        CFDictionarySetValue(v25, v7, v24);
        CFRelease(v24);
      }

      else
      {
        v26 = *(a1 + 240);
        if (!v26)
        {
          operator new();
        }

        *&v44.byte0 = Mutable;
        *&valuePtr = &uu;
        v27 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(v26, &uu);
        v28 = v27[4];
        if (v28)
        {
          CFRelease(v28);
          Mutable = *&v44.byte0;
        }

        v27[4] = Mutable;
        *&v44.byte0 = 0;
        CF::TypeRef::~TypeRef(&v44);
      }

      v29 = *(*(a1 + 32) + 16);
      if (v29)
      {
        if (v19)
        {
          v30 = "__TEXT_EXEC";
        }

        else
        {
          v30 = "__TEXT";
        }

        do
        {
          v31 = *(v29[3] + 16);
          v32 = *v31;
          v33 = v31[1];
          while (v32 != v33)
          {
            v34 = *v32;
            v44 = uu;
            valuePtr = v34;
            if (v34 == *&uu.byte0 && *(&v34 + 1) == *&uu.byte8)
            {
              v36 = *(v32 + 4);
              if (v36 == 5)
              {
                *(v32 + 3) = 0;
                *(v32 + 4) = 0;
                *(v32 + 5) = 0;
                *(v32 + 4) = 2;
                strlcpy(v32 + 24, v30, 0x11uLL);
                v36 = *(v32 + 4);
              }

              if (v36 == 2 && !*(v32 + 7))
              {
                *(v32 + 7) = v41[3] + 1;
                if (!v7)
                {
                  goto LABEL_68;
                }
              }

              else if (!v7)
              {
                goto LABEL_68;
              }

              if (!*(v32 + 10))
              {
                SymbolOwner::set_path(v32, v7);
              }
            }

LABEL_68:
            v32 += 6;
          }

          v29 = *v29;
        }

        while (v29);
      }
    }

    else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_5();
    }
  }

  else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_8();
  }

LABEL_4:
  _Block_object_dispose(&v40, 8);
}

void sub_22ED9023C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  CF::TypeRef::~TypeRef((v10 - 96));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ktrace_uuid_map_chunk_prepass(uint64_t a1, void *a2)
{
  v2 = *(a1 + 632);
  if (v2)
  {
    v5 = ktrace_chunk_tag(a2);
    if (v5 == 20990)
    {
      goto LABEL_8;
    }

    if (v5 == 32770)
    {
      if (ktrace_chunk_version_major(a2) > 1)
      {
        return;
      }

      goto LABEL_8;
    }

    if (v5 == 36864 && !ktrace_chunk_version_major(a2))
    {
LABEL_8:
      v6 = ktrace_stackshot_chunk_timestamp(a2);
      if (v6 != -1)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __ktrace_uuid_map_chunk_prepass_block_invoke;
        aBlock[3] = &__block_descriptor_48_e5_v8__0l;
        aBlock[4] = a2;
        aBlock[5] = a1;
        v7[0] = v6;
        v7[1] = _Block_copy(aBlock);
        std::vector<PrepassOp>::push_back[abi:ne200100](v2, v7);
        PrepassOp::~PrepassOp(v7);
      }
    }
  }
}

void *ktrace_uuid_map_ensure_address_space_for_tid(ktrace_uuid_map *a1, ktrace_session *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  task_uniqueid_for_thread = ktrace_get_task_uniqueid_for_thread(a2, a3);
  if (task_uniqueid_for_thread == -1 || (v7 = address_space_for_taskid(a1, task_uniqueid_for_thread)) == 0)
  {
    pid_for_thread = ktrace_get_pid_for_thread(a2, a3);
    if ((pid_for_thread & 0x80000000) != 0)
    {
      return 0;
    }

    v9 = pid_for_thread;
    v7 = address_space_for_pid(a1, pid_for_thread);
    if (!v7)
    {
      ktrace_address_space_create(v9);
    }
  }

  return v7;
}

uint64_t kthmap_uniqueid_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    return *value;
  }

  else
  {
    return -1;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, uint64_t), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 6;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 5);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      if ((*a3)(a2 - 6, v11))
      {
        v37 = v11[1];
        v81 = *v11;
        v82 = v37;
        v38 = v11[2];
        v39 = v11[3];
        v40 = v11[5];
        v85 = v11[4];
        v86 = v40;
        v83 = v38;
        v84 = v39;
        v41 = 0uLL;
        v11[2] = 0u;
        v11[3] = 0u;
        v11[4] = 0u;
        v11[5] = 0u;
        *v11 = 0u;
        v11[1] = 0u;
        v42 = *(a2 - 5);
        *v11 = *v10;
        v11[1] = v42;
        v43 = *(a2 - 4);
        v44 = *(a2 - 3);
        v45 = *(a2 - 1);
        v11[4] = *(a2 - 2);
        v11[5] = v45;
        v11[2] = v43;
        v11[3] = v44;
        v46 = v86;
        v48 = v83;
        v47 = v84;
        *(a2 - 2) = v85;
        *(a2 - 1) = v46;
        *(a2 - 4) = v48;
        *(a2 - 3) = v47;
        v49 = v82;
        *v10 = v81;
        *(a2 - 5) = v49;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        goto LABEL_29;
      }

      return;
    }

LABEL_10:
    if (v14 <= 2303)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,SymbolOwner*>(v11, a2, a2, a3, a6);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = &v11[6 * (v15 >> 1)];
    if (v14 <= 0x3000)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(&v11[6 * v16], v11, a2 - 6, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v11, &v11[6 * v16], a2 - 6, a3);
      v18 = 3 * v16;
      v19 = &v11[6 * v16 - 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v11 + 6, v19, a2 - 12, a3);
      v20 = &v11[2 * v18 + 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1 + 12, v20, a2 - 18, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v19, v17, v20, a3);
      v21 = a1[1];
      v81 = *a1;
      v82 = v21;
      v22 = a1[2];
      v23 = a1[3];
      v24 = a1[5];
      v85 = a1[4];
      v86 = v24;
      v83 = v22;
      v84 = v23;
      a1[2] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v25 = v17[1];
      *a1 = *v17;
      a1[1] = v25;
      v26 = v17[2];
      v27 = v17[3];
      v28 = v17[5];
      a1[4] = v17[4];
      a1[5] = v28;
      a1[2] = v26;
      a1[3] = v27;
      v29 = v86;
      v31 = v83;
      v30 = v84;
      v17[4] = v85;
      v17[5] = v29;
      v17[2] = v31;
      v17[3] = v30;
      v32 = v82;
      *v17 = v81;
      v17[1] = v32;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v81 = 0u;
      v82 = 0u;
      SymbolOwner::~SymbolOwner(&v81);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (((*a3)(a1 - 6, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,SymbolOwner *,BOOL (*&)(SymbolOwner const&,SymbolOwner const&)>(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v33 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,SymbolOwner *,BOOL (*&)(SymbolOwner const&,SymbolOwner const&)>(a1, a2, a3);
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }

    v35 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(a1, v33, a3);
    v11 = v33 + 6;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(v33 + 6, a2, a3))
    {
      a4 = -v13;
      a2 = v33;
      if (v35)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if ((v35 & 1) == 0)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,false>(a1, v33, a3, -v13, a5 & 1);
      v11 = v33 + 6;
LABEL_22:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 == 3)
  {
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v11, v11 + 6, a2 - 6, a3);
    return;
  }

  if (v15 != 4)
  {
    if (v15 == 5)
    {
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v11, v11 + 6, v11 + 12, v11 + 18, a2 - 6, a3);
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(v11, v11 + 6, v11 + 12, a3);
  if ((*a3)(a2 - 6, (v11 + 12)))
  {
    v50 = v11[15];
    v83 = v11[14];
    v84 = v50;
    v51 = v11[17];
    v85 = v11[16];
    v86 = v51;
    v52 = v11[13];
    v81 = v11[12];
    v82 = v52;
    v11[12] = 0u;
    v11[13] = 0u;
    v11[14] = 0u;
    v11[15] = 0u;
    v11[16] = 0u;
    v11[17] = 0u;
    v53 = *(a2 - 5);
    v11[12] = *v10;
    v11[13] = v53;
    v54 = *(a2 - 4);
    v55 = *(a2 - 3);
    v56 = *(a2 - 1);
    v11[16] = *(a2 - 2);
    v11[17] = v56;
    v11[14] = v54;
    v11[15] = v55;
    v57 = v82;
    *v10 = v81;
    *(a2 - 5) = v57;
    v58 = v83;
    v59 = v84;
    v60 = v86;
    *(a2 - 2) = v85;
    *(a2 - 1) = v60;
    *(a2 - 4) = v58;
    *(a2 - 3) = v59;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v81 = 0u;
    v82 = 0u;
    SymbolOwner::~SymbolOwner(&v81);
    if ((*a3)(v11 + 12, (v11 + 6)))
    {
      v61 = v11[9];
      v83 = v11[8];
      v84 = v61;
      v62 = v11[11];
      v85 = v11[10];
      v86 = v62;
      v63 = v11[7];
      v81 = v11[6];
      v82 = v63;
      v64 = v11[15];
      v11[8] = v11[14];
      v11[9] = v64;
      v65 = v11[17];
      v11[10] = v11[16];
      v11[11] = v65;
      v66 = v11[13];
      v11[6] = v11[12];
      v11[7] = v66;
      v67 = v82;
      v11[12] = v81;
      v11[13] = v67;
      v68 = v86;
      v11[16] = v85;
      v11[17] = v68;
      v69 = v84;
      v11[14] = v83;
      v11[15] = v69;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      SymbolOwner::~SymbolOwner(&v81);
      if ((*a3)(v11 + 6, v11))
      {
        v70 = v11[1];
        v81 = *v11;
        v82 = v70;
        v71 = v11[2];
        v72 = v11[3];
        v73 = v11[5];
        v85 = v11[4];
        v86 = v73;
        v83 = v71;
        v84 = v72;
        v74 = v11[11];
        v11[4] = v11[10];
        v11[5] = v74;
        v75 = v11[9];
        v11[2] = v11[8];
        v11[3] = v75;
        v76 = v11[7];
        *v11 = v11[6];
        v11[1] = v76;
        v77 = v82;
        v11[6] = v81;
        v11[7] = v77;
        v78 = v83;
        v79 = v84;
        v80 = v86;
        v11[10] = v85;
        v11[11] = v80;
        v11[8] = v78;
        v11[9] = v79;
        v41 = 0uLL;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
LABEL_29:
        v81 = v41;
        v82 = v41;
        SymbolOwner::~SymbolOwner(&v81);
      }
    }
  }
}

void ktrace_address_space_sort(uint64_t a1, __n128 a2)
{
  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v4 = *v3;
    v5 = v3[1];
    v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - *v3) >> 5));
    v8 = ktrace_compare_symbol_owners;
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,false>(v4, v5, &v8, v7, 1, a2);
    *(a1 + 36) |= 1u;
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v10 = v8[3];
          v27 = v8[2];
          v28 = v10;
          v11 = v8[5];
          v29 = v8[4];
          v30 = v11;
          v12 = v8[1];
          v25 = *v8;
          v26 = v12;
          *v8 = 0u;
          v8[1] = 0u;
          v8[2] = 0u;
          v8[3] = 0u;
          v13 = v7;
          v8[4] = 0u;
          v8[5] = 0u;
          while (1)
          {
            v14 = (a1 + v13);
            v15 = *(a1 + v13 + 176);
            if (v15)
            {
              CFRelease(v15);
            }

            v16 = v14[3];
            v14[8] = v14[2];
            v14[9] = v16;
            v17 = v14[5];
            v14[10] = v14[4];
            v14[11] = v17;
            v18 = v14[1];
            v14[6] = *v14;
            v14[7] = v18;
            *v14 = 0u;
            v14[1] = 0u;
            v14[2] = 0u;
            v14[3] = 0u;
            v14[4] = 0u;
            v14[5] = 0u;
            if (!v13)
            {
              break;
            }

            v19 = (*a3)(&v25, a1 + v13 - 96);
            v13 -= 96;
            if ((v19 & 1) == 0)
            {
              v20 = a1 + v13 + 96;
              goto LABEL_12;
            }
          }

          v20 = a1;
LABEL_12:
          v21 = *(v20 + 80);
          if (v21)
          {
            CFRelease(v21);
          }

          v22 = v28;
          *(v20 + 32) = v27;
          *(v20 + 48) = v22;
          v23 = v30;
          *(v20 + 64) = v29;
          *(v20 + 80) = v23;
          v24 = v26;
          *v20 = v25;
          *(v20 + 16) = v24;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          SymbolOwner::~SymbolOwner(&v25);
        }

        v5 = v8 + 6;
        v7 += 96;
      }

      while (v8 + 6 != a2);
    }
  }
}

uint64_t ktrace_address_space_symbol_owner_for_address(uint64_t a1, unint64_t a2, __n128 a3)
{
  ktrace_address_space_sort(a1, a3);
  v5 = *(a1 + 16);
  v7 = *v5;
  v6 = v5[1];
  while (1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
    if (!v8)
    {
      return 0;
    }

    if (v8 == 1)
    {
      break;
    }

    if (*(v7 + 96 * ((v6 - v7) / 192) + 48) <= a2)
    {
      v7 += 96 * ((v6 - v7) / 192);
    }

    else
    {
      v6 = v7 + 96 * ((v6 - v7) / 192);
    }
  }

  v9 = *(v7 + 48);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (!v10)
  {
    return 0;
  }

  if (*(v7 + 56))
  {
    if (v11 < optional_uint64::value((v7 + 56)))
    {
      return v7;
    }

    return 0;
  }

  if (HIDWORD(v11) && *(v7 + 16) != 4)
  {
    return 0;
  }

  return v7;
}

void SymbolOwner::~SymbolOwner(SymbolOwner *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t kttimesync_update_kdebug(uint64_t result, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  if (a2 == 25165824)
  {
    v6 = a4 | (a6 << 32);
    v7 = v6 - *(result + 8);
    *(result + 8) = v6;
    v8 = *(result + 16);
    v9 = *(result + 20);
    if (v8 != v9)
    {
      v7 = v7 * v8 / v9;
    }

    v10 = *(result + 24) + v7 / 0x3B9ACA00;
    v11 = *(result + 32) + v7 % 0x3B9ACA00;
    *(result + 24) = v10;
    *(result + 32) = v11;
  }

  return result;
}

void *ktrace_uuid_map_get_shared_cache(ktrace_uuid_map *a1, CFUUIDBytes a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(*(a1 + 5), &v4);
  if (result)
  {
    return result[4];
  }

  ktrace_uuid_map_learn_sharedcache(a1, v4);
  result = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(*(a1 + 5), &v4);
  if (result)
  {
    return result[4];
  }

  return result;
}

optional_uint64 *get_sc_and_slide(uint64_t a1, uint64_t a2, uint64_t *a3, optional_uint64 **a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  result = ktrace_uuid_map_get_shared_cache(a1, *a2);
  v10 = result;
  if (!result)
  {
LABEL_5:
    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_17;
  }

  result = (result + 56);
  if (*(v10 + 7))
  {
    v11 = *(a2 + 48);
    result = optional_uint64::value(result);
    v8 = v11 - result + 1;
    goto LABEL_5;
  }

LABEL_6:
  v12 = *(a2 + 48);
  v20[0] = xmmword_22EE3F390;
  v20[1] = xmmword_22EE3F3A0;
  v20[2] = xmmword_22EE3F3B0;
  v13 = *(a1 + 280);
  if (!v13)
  {
    v13 = v20;
  }

  v14 = *v13;
  if (*v13)
  {
    v15 = v13 + 1;
    v16 = -1;
    do
    {
      v17 = v12 - v14;
      if (v12 - v14 >= v16)
      {
        v17 = v16;
      }

      if (v12 >= v14)
      {
        v16 = v17;
      }

      v18 = *v15++;
      v14 = v18;
    }

    while (v18);
    v8 = v16 + 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  *a3 = v8;
  *a4 = v10;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t optional_uint64::value(optional_uint64 *this)
{
  if (!*this)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *this - 1;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void _session_drain_finish(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1;
  atomic_compare_exchange_strong((a1 + 56), &v2, 0);
  if (v2 == v1)
  {
    _session_teardown(a1);
    if (v1)
    {
      if (*(a1 + 4))
      {
        v1[2](v1);

        _Block_release(v1);
      }

      else
      {
        v4 = *(a1 + 232);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___session_drain_finish_block_invoke;
        block[3] = &unk_27886E878;
        block[4] = v1;
        dispatch_async(v4, block);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v8 = (*a4)(a2, a1);
  result = (*a4)(a3, a2);
  if (v8)
  {
    if (result)
    {
      v10 = a1[3];
      v63 = a1[2];
      v64 = v10;
      v11 = a1[5];
      v65 = a1[4];
      v66 = v11;
      v12 = a1[1];
      v61 = *a1;
      v62 = v12;
      *a1 = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      v13 = a3[2];
      v14 = a3[3];
      v15 = a3[5];
      a1[4] = a3[4];
      a1[5] = v15;
      a1[2] = v13;
      a1[3] = v14;
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
      v17 = v64;
      a3[2] = v63;
      a3[3] = v17;
      v18 = v66;
      a3[4] = v65;
      a3[5] = v18;
      v19 = v62;
      *a3 = v61;
      a3[1] = v19;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
LABEL_10:
      SymbolOwner::~SymbolOwner(&v61);
      return 1;
    }

    v41 = a1[3];
    v63 = a1[2];
    v64 = v41;
    v42 = a1[5];
    v65 = a1[4];
    v66 = v42;
    v43 = a1[1];
    v61 = *a1;
    v62 = v43;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    v44 = a2[2];
    v45 = a2[3];
    v46 = a2[5];
    a1[4] = a2[4];
    a1[5] = v46;
    a1[2] = v44;
    a1[3] = v45;
    v47 = a2[1];
    *a1 = *a2;
    a1[1] = v47;
    v48 = v64;
    a2[2] = v63;
    a2[3] = v48;
    v49 = v66;
    a2[4] = v65;
    a2[5] = v49;
    v50 = v62;
    *a2 = v61;
    a2[1] = v50;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    SymbolOwner::~SymbolOwner(&v61);
    if ((*a4)(a3, a2))
    {
      v51 = a2[3];
      v63 = a2[2];
      v64 = v51;
      v52 = a2[5];
      v65 = a2[4];
      v66 = v52;
      v53 = a2[1];
      v61 = *a2;
      v62 = v53;
      v33 = 0uLL;
      *a2 = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      v54 = a3[2];
      v55 = a3[3];
      v56 = a3[5];
      a2[4] = a3[4];
      a2[5] = v56;
      a2[2] = v54;
      a2[3] = v55;
      v57 = a3[1];
      *a2 = *a3;
      a2[1] = v57;
      v58 = v64;
      a3[2] = v63;
      a3[3] = v58;
      v59 = v66;
      a3[4] = v65;
      a3[5] = v59;
      v60 = v62;
      *a3 = v61;
      a3[1] = v60;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v20 = a2[3];
    v63 = a2[2];
    v64 = v20;
    v21 = a2[5];
    v65 = a2[4];
    v66 = v21;
    v22 = a2[1];
    v61 = *a2;
    v62 = v22;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    v23 = a3[2];
    v24 = a3[3];
    v25 = a3[5];
    a2[4] = a3[4];
    a2[5] = v25;
    a2[2] = v23;
    a2[3] = v24;
    v26 = a3[1];
    *a2 = *a3;
    a2[1] = v26;
    v27 = v64;
    a3[2] = v63;
    a3[3] = v27;
    v28 = v66;
    a3[4] = v65;
    a3[5] = v28;
    v29 = v62;
    *a3 = v61;
    a3[1] = v29;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    SymbolOwner::~SymbolOwner(&v61);
    if ((*a4)(a2, a1))
    {
      v30 = a1[3];
      v63 = a1[2];
      v64 = v30;
      v31 = a1[5];
      v65 = a1[4];
      v66 = v31;
      v32 = a1[1];
      v61 = *a1;
      v62 = v32;
      v33 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      v34 = a2[2];
      v35 = a2[3];
      v36 = a2[5];
      a1[4] = a2[4];
      a1[5] = v36;
      a1[2] = v34;
      a1[3] = v35;
      v37 = a2[1];
      *a1 = *a2;
      a1[1] = v37;
      v38 = v64;
      a2[2] = v63;
      a2[3] = v38;
      v39 = v66;
      a2[4] = v65;
      a2[5] = v39;
      v40 = v62;
      *a2 = v61;
      a2[1] = v40;
LABEL_9:
      v65 = v33;
      v66 = v33;
      v63 = v33;
      v64 = v33;
      v61 = v33;
      v62 = v33;
      goto LABEL_10;
    }
  }

  return 1;
}

void ___session_drain_finish_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t ktrace_set_use_existing(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  if (kdebug_get_bufinfo(v4))
  {
    return *__error();
  }

  if (!LODWORD(v4[0]))
  {
    return 55;
  }

  result = 0;
  *a1 = 2;
  return result;
}

void *ktrace_file_header_append_chunk(uint64_t a1, int a2, __int16 a3, __int16 a4, UInt8 *a5, CFIndex a6)
{
  if ((a1 + 1) <= 1)
  {
    ktrace_file_header_append_chunk_cold_1();
  }

  if ((*(a1 + 299) & 1) == 0)
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_header_append_chunk_cold_2();
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    result = ktrace_file_append_start(v10, 32778, 0, 0);
    if (result)
    {
      v12 = result;
      result = ktrace_file_append_subchunk(*(a1 + 200), result, 32780, 0, 0, (a1 + 216), 4);
      if (result)
      {
        appended = ktrace_file_append_subchunk(*(a1 + 200), v12, a2, 0, 0, a5, a6);
        ktrace_file_append_finish(*(a1 + 200), v12);
        return appended;
      }
    }

    return result;
  }

  if (*(a1 + 152))
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_header_append_chunk_cold_3();
    }

LABEL_9:
    *__error() = v14;
    v15 = __error();
    result = 0;
    *v15 = 22;
    return result;
  }

  result = ktrace_file_append_start_internal(a1, a2, a3, a4);
  if (result)
  {
    v16 = result;
    if (a5 && a6 && ktrace_file_append_data(a1, result, a5, a6) || ktrace_file_append_finish_internal(a1, (a1 + 80), v16))
    {
      return 0;
    }

    else if (ktrace_file_update_header_size(a1))
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

uint64_t ktrace_file_update_header_size(uint64_t a1)
{
  if (*(a1 + 16) == 4)
  {
    return 0;
  }

  v8[3] = v1;
  v8[4] = v2;
  v5 = *(a1 + 280);
  *(a1 + 288) = v5;
  v8[0] = v5 - 16;
  if (ktrace_file_write(a1, v8, 8uLL, 8) > 7)
  {
    result = 0;
    v7 = *(a1 + 288);
    *(a1 + 56) = 16;
    *(a1 + 64) = v7;
    *(a1 + 72) = v7;
  }

  else
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_update_header_size_cold_1();
    }

    *__error() = v6;
    return *__error();
  }

  return result;
}

uint64_t ktrace_start(unint64_t a1, NSObject *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = (a1 + 156);
  v4 = atomic_load(v3);
  if (v4)
  {
    ktrace_start_cold_1(v3);
  }

  v5 = *(a1 + 224);
  if (v5 & 2) != 0 || (v5)
  {
    ktrace_start_cold_11();
  }

  v7 = *(a1 + 4);
  if ((v7 - 1) <= 1)
  {
    if (*a1)
    {
      goto LABEL_9;
    }

    [*(a1 + 600) configureWithSession:a1];
    v7 = *(a1 + 4);
  }

  if (!v7 && *(a1 + 112) >= 1 && *a1 != 1)
  {
    v8 = 22;
    goto LABEL_62;
  }

LABEL_9:
  ktrace_compute_filter(a1);
  if (*a1 != 4)
  {
    if (*a1 == 3)
    {
      print_filter(*(a1 + 8));
LABEL_12:
      v8 = 0;
      goto LABEL_62;
    }

    snprintf(__str, 0x80uLL, "com.apple.libktrace.collection.%p", a1);
    if (*(a1 + 148))
    {
      *(a1 + 136) = dispatch_workloop_create_inactive(__str);
      v10 = *(a1 + 148);
      dispatch_workloop_set_scheduler_priority();
      dispatch_activate(*(a1 + 136));
    }

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, *(a1 + 144), -1);
    v13 = dispatch_queue_create_with_target_V2(__str, v12, *(a1 + 136));
    *(a1 + 128) = v13;
    if (!v13)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    dispatch_set_context(v13, a1);
    dispatch_set_finalizer_f(*(a1 + 128), collection_queue_finalizer);
    if (!*(a1 + 128))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v14 = *(a1 + 284);
    kteventnames_freeze((a1 + 360));
    v15 = *(a1 + 4);
    if ((v15 - 1) >= 2)
    {
      if (v15)
      {
        ktrace_start_cold_8();
      }

      v16 = *(a1 + 32);
      if (*a1 == 1)
      {
        if (!v16 && !*(a1 + 120))
        {
          ktrace_postprocess_file_internal_cold_4();
        }
      }

      else if (!v16)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      snprintf(__str, 0x80uLL, "com.apple.libktrace.processing.%p", a1);
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create_with_target_V2(__str, v17, a2);
      *(a1 + 232) = v18;
      dispatch_set_context(v18, a1);
      dispatch_set_finalizer_f(*(a1 + 232), processing_queue_finalizer);
      ktrace_callback_list_sort((a1 + 24));
      if (*a1 == 1)
      {
        ktrace_callback_list_sort((a1 + 112));
      }
    }

    else
    {
      if (!*(a1 + 648))
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if ((*a1 | 2) != 2)
      {
        _session_start_live_cold_13();
      }
    }

    *(a1 + 224) |= 1u;
    v19 = *(a1 + 176);
    if (v19)
    {
      dispatch_activate(v19);
    }

    v20 = *(a1 + 184);
    if (v20)
    {
      dispatch_activate(v20);
    }

    v21 = *(a1 + 200);
    if (v21)
    {
      dispatch_activate(v21);
    }

    v22 = *(a1 + 192);
    if (v22)
    {
      dispatch_activate(v22);
    }

    v23 = *(a1 + 208);
    if (v23)
    {
      dispatch_activate(v23);
    }

    v24 = *(a1 + 216);
    if (v24)
    {
      dispatch_activate(v24);
    }

    v25 = *a1;
    if (*a1 > 1)
    {
      if (v25 != 2)
      {
        if (v25 == 4)
        {
          goto LABEL_12;
        }

        goto LABEL_56;
      }
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        ktrace_log_init();
        v26 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
        {
          *__str = 0;
          _os_log_impl(&dword_22ED7A000, v26, OS_LOG_TYPE_INFO, "starting to trace from file", __str, 2u);
        }

        started = _session_start_file(a1, v14 != 0);
        goto LABEL_58;
      }

LABEL_56:
      ktrace_start_cold_6();
    }

    started = _session_start_live(a1);
LABEL_58:
    v8 = started;
    if (started)
    {
      v28 = *(a1 + 648);
      if (v28)
      {
        ktrace_file_close(v28);
        *(a1 + 648) = 0;
      }

      *(a1 + 224) &= ~1u;
    }

    goto LABEL_62;
  }

  v9 = *(a1 + 608);
  if (!v9)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *__str = 0;
  v33 = __str;
  v34 = 0x2020000000;
  v35 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __ktrace_start_block_invoke;
  v31[3] = &unk_27886E988;
  v31[4] = __str;
  v8 = ktrace_file_iterate(v9, 0, v31);
  if (!v8)
  {
    v8 = v33[24] ^ 1u;
  }

  _Block_object_dispose(__str, 8);
LABEL_62:
  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_22ED91F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *ktrace_compute_filter(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = malloc_type_malloc(0x2000uLL, 0xF351B2AFuLL);
    *(a1 + 8) = v2;
  }

  bzero(v2, 0x2000uLL);
  if (*(a1 + 260) || *(a1 + 280) || *(a1 + 88))
  {
    v2[224] |= 3u;
    if (*(a1 + 280))
    {
      v2[52] |= 0x40u;
    }
  }

  if (*(a1 + 276))
  {
    v2[52] |= 0x80u;
  }

  if (*(a1 + 268))
  {
    v2[96] |= 2u;
  }

  if (*(a1 + 272))
  {
    v2[40] |= 1u;
  }

  if (*(a1 + 284))
  {
    v2[992] |= 0x20u;
  }

  if (*(a1 + 288))
  {
    v2[48] |= 1u;
  }

  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 32);
    do
    {
      v6 = v5 + 32 * v4;
      if (*v6 == 1)
      {
        for (i = 0; i != 0x2000; i += 8)
        {
          *&v2[i] |= *(*(v6 + 8) + i);
        }
      }

      else
      {
        v8 = *(v6 + 12) - 1;
        v9 = HIWORD(*(v6 + 8));
        if (v9 <= HIWORD(v8))
        {
          v10 = HIWORD(v8) + 1;
          do
          {
            v2[v9 >> 3] |= 1 << (v9 & 7);
            ++v9;
          }

          while (v10 != v9);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return v2;
}

void kteventnames_freeze(uint64_t *a1)
{
  os_unfair_lock_lock(&global);
  v2 = *(a1 + 32);
  if ((v2 & 4) == 0 && ((a1[4] & 2) != 0 || (byte_27DA95BE8 & 6) == 6))
  {
    ensure_global_names_locked();
    v3 = *a1;
    context = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __copy_cfdict_block_invoke;
    v8 = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v9 = v3;
    CFDictionaryApplyFunction(qword_27DA95BC0, CFDictionaryApplierTrampoline, &context);
    v4 = a1[1];
    context = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __copy_cfdict_block_invoke;
    v8 = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v9 = v4;
    CFDictionaryApplyFunction(qword_27DA95BC8, CFDictionaryApplierTrampoline, &context);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 | 1;
  os_unfair_lock_unlock(&global);
}

void _session_start_live_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "attempt to trace from two sessions at once denied (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_close(void *cf)
{
  if (!cf)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (cf[25])
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (CFGetRetainCount(cf) != 1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFRelease(cf);
}

void ktrace_file_dealloc(uint64_t a1)
{
  ktrace_chunk_array_destroy(a1 + 80);
  ktrace_chunk_array_destroy(a1 + 24);
  v2 = *(a1 + 196);
  if (v2 == -1)
  {
    if (*(a1 + 240))
    {
      v6 = *(a1 + 264);
      if (v6)
      {
        v7 = *(a1 + 248);
        (*(v6 + 16))();
      }
    }
  }

  else
  {
    close(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 272);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ktrace_chunk_array_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*(a1 + 16))
      {
        v3 = 0;
        do
        {
          v4 = *(*a1 + 8 * v3);
          if (v4[8])
          {
            ktrace_chunk_array_destroy(v4 + 6);
            v4 = *(*a1 + 8 * v3);
          }

          free(v4);
          ++v3;
        }

        while (v3 < *(a1 + 16));
        v2 = *a1;
      }

      free(v2);
    }

    *a1 = 0;
  }
}

uint64_t ktrace_config_create_current()
{
  v35 = *MEMORY[0x277D85DE8];
  v0 = malloc_type_calloc(1uLL, 0x110uLL, 0x101004089C2A7BEuLL);
  if (!v0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v1 = v0;
  bufinfo = sysctlbyname_string(0, 0, "ktrace.configured_by", v0, 0x20uLL);
  if (bufinfo)
  {
    goto LABEL_34;
  }

  bufinfo = sysctlbyname_int(0, 0, "ktrace.state", (v1 + 252));
  if (bufinfo)
  {
    goto LABEL_34;
  }

  bufinfo = sysctlbyname_int(0, 0, "ktrace.owning_pid", (v1 + 248));
  if (bufinfo)
  {
    goto LABEL_34;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  bufinfo = kdebug_get_bufinfo(&v24);
  if (bufinfo)
  {
    goto LABEL_34;
  }

  v3 = v24;
  if (v24)
  {
    if (HIDWORD(v24))
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    *(v1 + 68) = v4;
    if ((v25 & 0x400000) != 0)
    {
      v5 = malloc_type_malloc(0x2000uLL, 0x7D3EC9E7uLL);
      *(v1 + 24) = v5;
      if (!v5)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v6 = v5;
      v7 = kdebug_typefilter();
      memcpy(v6, v7, 0x2000uLL);
      v3 = v24;
    }

    v8 = v3;
    is_64_bit = current_system_is_64_bit();
    v10 = 5;
    if (is_64_bit)
    {
      v10 = 6;
    }

    *(v1 + 56) = v8 << v10;
    v11 = v25;
    *(v1 + 76) = (v25 & 2) == 0;
    if ((v11 & 0x10) != 0)
    {
      v12 = 1;
    }

    else
    {
      if ((v11 & 0x40) == 0)
      {
        *(v1 + 72) = 0;
        goto LABEL_23;
      }

      v12 = 2;
    }

    *(v1 + 72) = v12;
    v13 = proc_listpids(7u, 0, 0, 0);
    v14 = malloc_type_calloc(1uLL, v13, 0xE512CE1AuLL);
    if (!v14)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v15 = v14;
    *(v1 + 64) = proc_listpids(7u, 0, v14, v13) >> 2;
    *(v1 + 32) = v15;
    v11 = v25;
LABEL_23:
    if ((v11 & 0x800) == 0)
    {
LABEL_31:
      *(v1 + 77) = (v11 & 0x200) != 0;
      *(v1 + 78) = (v11 & 0x400) == 0;
      goto LABEL_32;
    }

    v34 = 27;
    *v33 = 0x1800000001;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 80;
    if (sysctl(v33, 3u, &v28, &v27, 0, 0))
    {
      v16 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_config_create_current_cold_3();
      }
    }

    else
    {
      v17 = malloc_type_calloc(5uLL, 8uLL, 0x100004000313F17uLL);
      if (v17)
      {
        v18 = v17;
        v19 = malloc_type_calloc(5uLL, 8uLL, 0x100004000313F17uLL);
        v20 = DWORD2(v30);
        *v18 = v28;
        v18[1] = *(&v28 + 1);
        *(v18 + 1) = v29;
        v18[4] = v30;
        *v19 = v20;
        *(v19 + 8) = v31;
        *(v19 + 24) = v32;
        *(v1 + 40) = v18;
        *(v1 + 48) = v19;
        goto LABEL_30;
      }

      v16 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_config_create_current_cold_4();
      }
    }

    *__error() = v16;
LABEL_30:
    v11 = v25;
    goto LABEL_31;
  }

  *(v1 + 68) = 0;
LABEL_32:
  bufinfo = config_current_kperf(v1);
  if (bufinfo || (bufinfo = config_current_kpc(v1)) != 0)
  {
LABEL_34:
    v21 = bufinfo;
    ktrace_config_destroy(v1);
    v1 = 0;
    *__error() = v21;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t config_current_kperf(uint64_t a1)
{
  v2 = kperf_action_count_get();
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_1();
    }

    goto LABEL_4;
  }

  v6 = malloc_type_malloc(8 * *(a1 + 128), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  if (!v6)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = malloc_type_malloc(8 * *(a1 + 128), 0x100004000313F17uLL);
  *(a1 + 88) = v7;
  if (!v7)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = malloc_type_malloc(4 * *(a1 + 128), 0x100004052888210uLL);
  *(a1 + 96) = v8;
  if (!v8)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 128))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LODWORD(v41) = 0;
      v12 = v10 + 1;
      v13 = kperf_action_samplers_get();
      if (v13)
      {
        break;
      }

      v14 = v41 != 0;
      *(*(a1 + 80) + 8 * v10) = v41;
      v15 = kperf_action_userdata_get();
      if (v15)
      {
        v3 = v15;
        v4 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          config_current_kperf_cold_3();
        }

        goto LABEL_4;
      }

      *(*(a1 + 88) + 8 * v10) = v41;
      v16 = *(a1 + 96);
      v17 = kperf_action_filter_get();
      if (v17)
      {
        v3 = v17;
        goto LABEL_5;
      }

      v11 |= v14;
      v9 += 4;
      ++v10;
      if (v12 >= *(a1 + 128))
      {
        goto LABEL_19;
      }
    }

    v3 = v13;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_2();
    }

    goto LABEL_4;
  }

  v11 = 0;
LABEL_19:
  v18 = kperf_timer_count_get();
  if (v18)
  {
    v3 = v18;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_4();
    }

    goto LABEL_4;
  }

  v19 = malloc_type_malloc(4 * *(a1 + 132), 0x100004052888210uLL);
  *(a1 + 104) = v19;
  if (!v19)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v20 = malloc_type_malloc(8 * *(a1 + 132), 0x100004000313F17uLL);
  *(a1 + 112) = v20;
  if (!v20)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 132))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v41 = 0;
      v23 = *(a1 + 104);
      v24 = kperf_timer_action_get();
      if (v24)
      {
        break;
      }

      v25 = kperf_timer_period_get();
      if (v25)
      {
        v3 = v25;
        v4 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          config_current_kperf_cold_6();
        }

        goto LABEL_4;
      }

      *(*(a1 + 112) + 8 * v22++) = kperf_ticks_to_ns();
      v21 += 4;
      if (v22 >= *(a1 + 132))
      {
        goto LABEL_29;
      }
    }

    v3 = v24;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_5();
    }

    goto LABEL_4;
  }

LABEL_29:
  v26 = kperf_kdebug_action_get();
  if (v26)
  {
    v3 = v26;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_7();
    }

    goto LABEL_4;
  }

  if (*(a1 + 152))
  {
    v27 = kperf_kdebug_filter_get();
    if (v27)
    {
      v28 = v27;
      *(a1 + 120) = kperf_kdebug_filter_create_desc();
      MEMORY[0x2318F7610](v28);
    }
  }

  v29 = kperf_timer_pet_get();
  if (v29)
  {
    v3 = v29;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_8();
    }

    goto LABEL_4;
  }

  if (*(a1 + 144) > 15)
  {
    *(a1 + 140) = 0xFFFFFFFF00000000;
  }

  else
  {
    v40 = 0;
    v41 = 4;
    if (sysctlbyname("kperf.lightweight_pet", &v40, &v41, 0, 0) == -1)
    {
      v32 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        config_current_kperf_cold_15();
      }

LABEL_65:
      *__error() = v32;
      if (!*__error())
      {
        return 22;
      }

      return *__error();
    }

    if (v40)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    *(a1 + 140) = v30;
  }

  v41 = 4;
  if (sysctlbyname("kperf.pet_idle_rate", (a1 + 148), &v41, 0, 0) == -1)
  {
    v32 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_14();
    }

    goto LABEL_65;
  }

  v31 = kperf_lazy_wait_time_threshold_get();
  if (v31)
  {
    v3 = v31;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kperf_cold_9();
    }
  }

  else
  {
    v33 = *(a1 + 160);
    *(a1 + 160) = kperf_ticks_to_ns();
    v34 = kperf_lazy_wait_action_get();
    if (v34)
    {
      v3 = v34;
      v4 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        config_current_kperf_cold_10();
      }
    }

    else
    {
      v35 = kperf_lazy_cpu_time_threshold_get();
      if (v35)
      {
        v3 = v35;
        v4 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          config_current_kperf_cold_11();
        }
      }

      else
      {
        v36 = *(a1 + 176);
        *(a1 + 176) = kperf_ticks_to_ns();
        v37 = kperf_lazy_cpu_action_get();
        if (v37)
        {
          v3 = v37;
          v4 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            config_current_kperf_cold_12();
          }
        }

        else
        {
          v40 = 0;
          v38 = kperf_sample_get();
          if (!v38)
          {
            if (v40)
            {
              v3 = 0;
              v39 = 3;
            }

            else
            {
              v3 = 0;
              if ((v11 & 1) == 0)
              {
                *(a1 + 136) = 0;
                return v3;
              }

              v39 = 1;
            }

            *(a1 + 136) = v39;
            return v3;
          }

          v3 = v38;
          v4 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            config_current_kperf_cold_13();
          }
        }
      }
    }
  }

LABEL_4:
  *__error() = v4;
LABEL_5:
  if (*__error())
  {
    return *__error();
  }

  return v3;
}

uint64_t config_current_kpc(uint64_t a1)
{
  counting = kpc_get_counting();
  *(a1 + 224) = counting;
  if (!counting)
  {
    period = 0;
    *(a1 + 216) = 0;
    return period;
  }

  *(a1 + 216) = 3;
  *(a1 + 232) = kpc_get_thread_counting();
  v3 = *(a1 + 224);
  *(a1 + 240) = kpc_get_config_count();
  v4 = *(a1 + 224);
  counter_count = kpc_get_counter_count();
  *(a1 + 244) = counter_count;
  v6 = *(a1 + 240);
  if (!v6 || !counter_count)
  {
    period = 0;
    *(a1 + 240) = 0;
    return period;
  }

  v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
  *(a1 + 192) = v7;
  if (!v7)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(a1 + 224);
  config = kpc_get_config();
  if (config)
  {
    period = config;
    v11 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kpc_cold_1();
    }

LABEL_18:
    *__error() = v11;
    if (*__error())
    {
      return *__error();
    }

    return period;
  }

  v12 = malloc_type_malloc(4 * *(a1 + 244), 0x100004052888210uLL);
  *(a1 + 208) = v12;
  if (!v12)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v13 = *(a1 + 224);
  actionid = kpc_get_actionid();
  if (actionid)
  {
    period = actionid;
    v11 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kpc_cold_2();
    }

    goto LABEL_18;
  }

  v15 = malloc_type_malloc(8 * *(a1 + 244), 0x100004000313F17uLL);
  *(a1 + 200) = v15;
  if (!v15)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v16 = *(a1 + 224);
  period = kpc_get_period();
  if (period)
  {
    v11 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      config_current_kpc_cold_3();
    }

    goto LABEL_18;
  }

  return period;
}

uint64_t ktrace_config_print_description(uint64_t a1, FILE *__stream)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!__stream)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 252);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = "foreground";
    }

    else
    {
      if (v4 != 2)
      {
        owner_kind_name_cold_1();
      }

      v5 = "background";
    }

    fprintf(__stream, "owner: %s[%d] (%s)\n", *a1, *(a1 + 248), v5);
  }

  else
  {
    fwrite("unowned\n", 8uLL, 1uLL, __stream);
  }

  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = context_kind_name(v6);
    fprintf(__stream, "context: %s\n", v7);
  }

  v8 = *(a1 + 260);
  if (v8)
  {
    v9 = trigger_kind_name(v8);
    fprintf(__stream, "trigger: %s\n", v9);
  }

  v10 = *(a1 + 8);
  if (v10 && *v10)
  {
    fprintf(__stream, "reason: %s\n", *(a1 + 8));
  }

  if (*(a1 + 16))
  {
    fprintf(__stream, "command: %s\n", *(a1 + 16));
  }

  v11 = state_name(*(a1 + 68));
  fprintf(__stream, "kdebug: %s\n", v11);
  if (*(a1 + 68))
  {
    if (*(a1 + 77))
    {
      v12 = "continuous";
    }

    else
    {
      v12 = "absolute";
    }

    fprintf(__stream, "\ttimestamps: %s\n", v12);
    fprintf(__stream, "\tbuffer size: %llu bytes\n", *(a1 + 56));
    if (*(a1 + 76))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    fprintf(__stream, "\twrapping: %s\n", v13);
    if (*(a1 + 78))
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    fprintf(__stream, "\tcoprocessors: %s\n", v14);
    v15 = *(a1 + 72);
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = "in";
      }

      else
      {
        v16 = "ex";
      }

      fprintf(__stream, "\tprocesses %scluded:\n", v16);
      fwrite("\t\t", 2uLL, 1uLL, __stream);
      if (*(a1 + 64))
      {
        v17 = 0;
        do
        {
          if (v17)
          {
            v18 = ", ";
          }

          else
          {
            v18 = "";
          }

          fprintf(__stream, "%s%d", v18, *(*(a1 + 32) + 4 * v17++));
        }

        while (v17 < *(a1 + 64));
      }

      fputc(10, __stream);
    }

    if (*(a1 + 40))
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    fprintf(__stream, "\tend event matching: %s\n", v19);
    v20 = *(a1 + 40);
    if (v20)
    {
      fprintf(__stream, "\t\tdebugid: 0x%08x & 0x%08x\n", *v20, **(a1 + 48));
      fwrite("\t\targs:\n", 8uLL, 1uLL, __stream);
      v21 = *(a1 + 40);
      fprintf(__stream, "\t\t\t0x%016llx & 0x%016llx\n\t\t\t0x%016llx & 0x%016llx\n\t\t\t0x%016llx & 0x%016llx\n\t\t\t0x%016llx & 0x%016llx\n", v21[1], *(*(a1 + 48) + 8), v21[2], *(*(a1 + 48) + 16), v21[3], *(*(a1 + 48) + 24), v21[4], *(*(a1 + 48) + 32));
    }

    print_typefilter(__stream, "\t", a1);
  }

  v22 = state_name(*(a1 + 136));
  fprintf(__stream, "kperf: %s\n", v22);
  if (*(a1 + 136))
  {
    fprintf(__stream, "\t%u actions:\n", *(a1 + 128));
    if (*(a1 + 128))
    {
      v23 = 0;
      do
      {
        v24 = v23 + 1;
        fprintf(__stream, "\t\t%u: samplers = %#llx, user data = %#llx, pid filter = %d\n", v23 + 1, *(*(a1 + 80) + 8 * v23), *(*(a1 + 88) + 8 * v23), *(*(a1 + 96) + 4 * v23));
        v23 = v24;
      }

      while (v24 < *(a1 + 128));
    }

    fprintf(__stream, "\t%u timers:\n", *(a1 + 132));
    if (*(a1 + 132))
    {
      v25 = 0;
      do
      {
        fprintf(__stream, "\t\t%u: period = %llu ns, action = %u\n", v25, *(*(a1 + 112) + 8 * v25), *(*(a1 + 104) + 4 * v25));
        ++v25;
      }

      while (v25 < *(a1 + 132));
    }

    v26 = *(a1 + 120);
    if (v26)
    {
      fprintf(__stream, "\tkdebug filter: %d: %s\n", *(a1 + 152), v26);
    }

    if (*(a1 + 140))
    {
      fprintf(__stream, "\tPET: %d: ", *(a1 + 144));
      if (*(a1 + 140) == 1)
      {
        fprintf(__stream, "original (%d idle rate)", *(a1 + 148));
      }

      else
      {
        fwrite("lightweight", 0xBuLL, 1uLL, __stream);
      }

      fputc(10, __stream);
    }

    if (*(a1 + 168))
    {
      fprintf(__stream, "\tlazy wait: %u: %llu ns\n", *(a1 + 168), *(a1 + 160));
    }

    if (*(a1 + 184))
    {
      fprintf(__stream, "\tlazy CPU: %u: %llu ns\n", *(a1 + 184), *(a1 + 176));
    }
  }

  v27 = state_name(*(a1 + 136));
  fprintf(__stream, "kpc: %s\n", v27);
  if (*(a1 + 216))
  {
    if (*(a1 + 224))
    {
      fprintf(__stream, "\tclasses: %#llx\n", *(a1 + 224));
    }

    if (*(a1 + 232))
    {
      fprintf(__stream, "\tthread classes: %#llx\n", *(a1 + 232));
    }

    fprintf(__stream, "\t%u counters\n", *(a1 + 244));
    v28 = *(a1 + 244);
    if (v28)
    {
      for (i = 0; i < v28; ++i)
      {
        v30 = *(*(a1 + 208) + 4 * i);
        if (v30)
        {
          fprintf(__stream, "\t\tCTR%u: %llu triggering %u\n", i, *(*(a1 + 200) + 8 * i), v30);
          v28 = *(a1 + 244);
        }
      }
    }

    fprintf(__stream, "\t%u configurations\n", *(a1 + 240));
    if (*(a1 + 240))
    {
      v31 = 0;
      do
      {
        fprintf(__stream, "\t\tCFG%u: %#llx\n", v31, *(*(a1 + 192) + 8 * v31));
        ++v31;
      }

      while (v31 < *(a1 + 240));
    }
  }

  return 0;
}

const char *state_name(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "enabled";
    }

    else
    {
      if (a1 != 0x8000000)
      {
        goto LABEL_10;
      }

      return "unknown";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "configured";
      }

LABEL_10:
      state_name_cold_1();
    }

    return "off";
  }
}

void ktrace_session_destroy(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  _session_end_internal(a1, 1, 3);
  v2 = *(a1 + 128);
  if (v2)
  {
    if (*(a1 + 136))
    {
      dispatch_release(*(a1 + 136));
      v2 = *(a1 + 128);
    }

    dispatch_release(v2);
  }

  else
  {

    ktrace_session_free(a1);
  }
}

void collection_queue_finalizer(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v1 = *(a1 + 232);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __collection_queue_finalizer_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v1, block);
  }

  else
  {

    ktrace_session_free(a1);
  }
}

FILE *print_typefilter(FILE *result, const char *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = v3 + 1;
    v9 = *(a3 + 24);
    v18 = v9;
    do
    {
      if (*(v3 + 32 * v6))
      {
LABEL_4:
        if ((v7 & 1) == 0)
        {
          v10 = kdebug_alloc_filter_description(v3);
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = "";
          }

          fprintf(v5, "%stypefilter: %s\n", a2, v12);
          free(v11);
          fprintf(v5, "%s%8s  ", a2, "");
          for (i = 0; i != 256; i += 8)
          {
            fprintf(v5, "%02x ", i);
          }

          fputc(10, v5);
          fprintf(v5, "%s%8s  ", a2, "");
          v14 = 32;
          do
          {
            fwrite("---", 3uLL, 1uLL, v5);
            --v14;
          }

          while (v14);
          fputc(10, v5);
          v3 = v18;
        }

        fprintf(v5, "%s%6s%02x: ", a2, "", v6);
        for (j = 0; j != 32; ++j)
        {
          fprintf(v5, "%02X ", *(v9 + j));
        }

        result = fputc(10, v5);
        v7 = 1;
      }

      else
      {
        v16 = 0;
        while (v16 != 31)
        {
          if (*(v8 + v16++))
          {
            if ((v16 - 1) <= 0x1E)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }

      ++v6;
      v8 += 32;
      v9 += 32;
    }

    while (v6 != 256);
  }

  return result;
}

uint64_t ktrace_prepass_uuid_map_finish(uint64_t result)
{
  v1 = *(result + 632);
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    v4 = 126 - 2 * __clz((v3 - *v1) >> 4);
    if (v3 == *v1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PrepassOp *,false>(*v1, v3, &v10, v5, 1);
    v7 = *v1;
    v6 = v1[1];
    if (v6 != *v1)
    {
      do
      {
        v8 = v6 - 2;
        (*(*(v6 - 1) + 16))();
        v6 = v8;
      }

      while (v8 != v7);
    }

    v11 = v1;
    std::vector<PrepassOp>::__destroy_vector::operator()[abi:ne200100](&v11);
    result = MEMORY[0x2318F6E50](v1, 0x20C40960023A9);
    *(v2 + 632) = 0;
    v9 = *(v2 + 304);
    if (v9)
    {
      if ((*(v9 + 208) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      return DyldDecodeWindow::reset((v9 + 48));
    }
  }

  return result;
}

uint64_t ktrace_get_task_uniqueid_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_uniqueid_for_tid(v3, a2);
}

void *address_space_for_taskid(ktrace_uuid_map *a1, unint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(*(a1 + 3), &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

void *___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 64);
  v4 = address_space_for_pid(*(a1 + 32), v3);
  if (v4)
  {
    v6 = v4[3];
    v5 = (v4 + 3);
    if (v6)
    {
      v7 = optional_uint64::value(v5);
      set_address_space_for_taskid(v1, v7, 0);
    }
  }

  set_address_space_for_pid(v1, v3, 0);
  result = ktrace_uuid_map_ensure_address_space_for_tid(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (result && *(a1 + 68) == 1)
  {
    v9 = *(a1 + 56);
    if (*(a1 + 69) == 1)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = *(v9 + 12);
    }

    result[5] = v10;
    v11 = *(a1 + 56);
    if (*(a1 + 69) == 1)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = *(v11 + 16);
    }

    result[6] = v12;
  }

  return result;
}

void *address_space_for_pid(ktrace_uuid_map *a1, unint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(*(a1 + 4), &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

void set_address_space_for_taskid(uint64_t a1, unint64_t a2, CFTypeRef cf)
{
  v8[0] = a2;
  if (a2 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (cf)
  {
    v7 = cf;
    CFRetain(cf);
    v4 = *(a1 + 24);
    v8[2] = v8;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v4, v8);
    v6 = v5[3];
    if (v6)
    {
      CFRelease(v6);
    }

    v5[3] = v7;
    v7 = 0;
    CF::TypeRef::~TypeRef(&v7);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__erase_unique<unsigned long long>(*(a1 + 24), v8);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CF::TypeRef::~TypeRef(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void processing_queue_finalizer(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  ktrace_session_free(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void set_address_space_for_pid(uint64_t a1, unint64_t a2, CFTypeRef cf)
{
  v8[0] = a2;
  if (a2 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (cf)
  {
    v7 = cf;
    CFRetain(cf);
    v4 = *(a1 + 32);
    v8[2] = v8;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v4, v8);
    v6 = v5[3];
    if (v6)
    {
      CFRelease(v6);
    }

    v5[3] = v7;
    v7 = 0;
    CF::TypeRef::~TypeRef(&v7);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__erase_unique<unsigned long long>(*(a1 + 32), v8);
  }
}

uint64_t ktrace_address_space_dealloc(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 16);
      std::vector<SymbolOwner>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x2318F6E50](v1, 0x20C40960023A9);
    }
  }

  return result;
}

void std::vector<SymbolOwner>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        SymbolOwner::~SymbolOwner((v4 - 96));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ktrace_address_space_create(int a1)
{
  ktrace_log_init();
  if (ktrace_register_types(void)::once != -1)
  {
    ktrace_address_space_create();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 32) = a1;
    *(Instance + 24) = 0;
    operator new();
  }

  ktrace_postprocess_file_internal_cold_4();
}

void task_release(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[3];
    if (v3)
    {
      free(v3);
    }

    free(a2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22ED9449C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CF::TypeRef>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_77(uint64_t a1)
{
  v2 = ktrace_uuid_map_ensure_address_space_for_tid(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (v2)
  {
    v3 = v2;
    if (uuid_is_null((a1 + 68)))
    {
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_77_cold_1();
      }
    }

    else if ((*(v3 + 36) & 2) == 0)
    {
      v4 = *(a1 + 88);
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = *(a1 + 68);
      v6 = 0u;
      LODWORD(v6) = 3;
      *&v8 = v4;
      ktrace_address_space_append(v3, &v5);
      SymbolOwner::~SymbolOwner(&v5);
    }
  }
}

uint64_t std::vector<SymbolOwner>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SymbolOwner>::__emplace_back_slow_path<SymbolOwner const&>(a1, a2);
  }

  else
  {
    std::vector<SymbolOwner>::__construct_one_at_end[abi:ne200100]<SymbolOwner const&>(a1, a2);
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void ktrace_address_space_append(uint64_t a1, uint64_t a2)
{
  if (*a2 == 0)
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_address_space_append();
    }
  }

  else
  {
    if (*(a2 + 16) == 3)
    {
      if ((*(a1 + 36) & 2) != 0)
      {
        v4 = *(a1 + 16);
        v6 = *v4;
        v5 = v4[1];
        while (v6 != v5)
        {
          if (*(v6 + 16) == 3)
          {
            if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
            {
              ktrace_address_space_append(v6, a2);
            }

            return;
          }

          v6 += 96;
        }
      }

      *(a1 + 36) |= 2u;
    }

    std::vector<SymbolOwner>::push_back[abi:ne200100](*(a1 + 16), a2);
    *(a1 + 36) &= ~1u;
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<SymbolOwner>::__emplace_back_slow_path<SymbolOwner const&>(uint64_t a1, _OWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SymbolOwner>>(a1, v6);
  }

  v7 = 96 * v2;
  v20 = 0;
  v21 = v7;
  v22 = 96 * v2;
  *(v7 + 16) = 0;
  *(v7 + 56) = 0;
  v8 = a2[5];
  v10 = a2[2];
  v9 = a2[3];
  *(v7 + 64) = a2[4];
  *(v7 + 80) = v8;
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  v11 = a2[1];
  *v7 = *a2;
  *(v7 + 16) = v11;
  v12 = *(96 * v2 + 0x50);
  if (v12)
  {
    CFRetain(v12);
    v7 = v21;
    v13 = v22;
  }

  else
  {
    v13 = 96 * v2;
  }

  *&v22 = v13 + 96;
  v14 = *(a1 + 8);
  v15 = v7 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SymbolOwner>,SymbolOwner*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<SymbolOwner>::~__split_buffer(&v20);
  return v19;
}

void sub_22ED947F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SymbolOwner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ktrace_stream_dealloc(uint64_t a1)
{
  if (a1)
  {
    v3 = (a1 + 32);
    v2 = *(a1 + 32);
    if (v2)
    {
      do
      {
        if (!*v2)
        {
          break;
        }

        ktrace_chunk_queue_dequeue(v3);
        v2 = *v3;
      }

      while (*v3);
    }

    v4 = *(a1 + 960);

    dispatch_release(v4);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SymbolOwner>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SymbolOwner>,SymbolOwner*>(int a1, SymbolOwner *this, SymbolOwner *a3, uint64_t a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(v8 + 16) = 0;
      *(v8 + 56) = 0;
      v9 = *(v6 + v7 + 32);
      v10 = *(v6 + v7 + 48);
      v11 = *(v6 + v7 + 64);
      *(v8 + 80) = *(v6 + v7 + 80);
      v12 = *(v6 + v7 + 16);
      *v8 = *(v6 + v7);
      *(v8 + 16) = v12;
      *(v8 + 48) = v10;
      *(v8 + 64) = v11;
      *(v8 + 32) = v9;
      v13 = *(a4 + v7 + 80);
      if (v13)
      {
        CFRetain(v13);
      }

      v7 += 96;
    }

    while ((v6 + v7) != a3);
    while (v6 != a3)
    {
      SymbolOwner::~SymbolOwner(v6);
      v6 = (v6 + 96);
    }
  }
}

void sub_22ED94960(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 96);
    v5 = -v2;
    do
    {
      SymbolOwner::~SymbolOwner(v4);
      v4 = (v6 - 96);
      v5 += 96;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SymbolOwner>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    SymbolOwner::~SymbolOwner((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_76(uint64_t a1)
{
  v2 = ktrace_uuid_map_ensure_address_space_for_tid(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (v2)
  {
    v3 = *(a1 + 68);
    v4 = *(a1 + 76);
    v5 = *(a1 + 88);

    ktrace_address_space_delete(v2, v3, v4, v5);
  }
}

void ktrace_address_space_delete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v6 = *v4;
  v5 = v4[1];
  while (v6 != v5)
  {
    v7 = *v6 == a2 && *(v6 + 8) >> 64 == a3;
    if (v7 && *(v6 + 6) == a4)
    {
      v8 = (v6 + 96);
      if ((v6 + 96) != v5)
      {
        do
        {
          v9 = *(v8 - 2);
          if (v9)
          {
            CFRelease(v9);
          }

          v10 = (v8 - 96);
          v11 = *(v8 + 3);
          v10[2] = *(v8 + 2);
          v10[3] = v11;
          v12 = *(v8 + 5);
          v10[4] = *(v8 + 4);
          v10[5] = v12;
          v13 = *v8;
          v14 = *(v8 + 1);
          *v8 = 0u;
          *(v8 + 1) = 0u;
          *(v8 + 2) = 0u;
          *(v8 + 3) = 0u;
          *(v8 + 4) = 0u;
          *(v8 + 5) = 0u;
          v8 = (v8 + 96);
          *v10 = v13;
          v10[1] = v14;
        }

        while (v8 != v5);
        v5 = v4[1];
        v6 = (v8 - 96);
      }

      while (v5 != v6)
      {
        v5 = (v5 - 96);
        SymbolOwner::~SymbolOwner(v5);
      }

      v4[1] = v6;
      return;
    }

    v6 = (v6 + 96);
  }
}

uint64_t SymbolOwner::min_range(SymbolOwner *this)
{
  v1 = (this + 56);
  if (!*(this + 7))
  {
    if (*(this + 4) != 1)
    {
      return *(this + 6);
    }

    v3 = (this + 40);
    if (*(this + 5) && *(this + 4))
    {
      v2 = *(this + 6);
      optional_uint64::value((this + 32));
      optional_uint64::value(v3);
      return v2;
    }

    v1 = (this + 24);
    if (!*(this + 3))
    {
      return *(this + 6);
    }
  }

  v2 = *(this + 6);
  optional_uint64::value(v1);
  return v2;
}

BOOL Range::intersects(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a1 <= *a2 && v2 - v3 < a1[1])
  {
    return 1;
  }

  v4 = a2[1];
  v5 = v2 + v4 - 1;
  v7 = v5 >= v3;
  v6 = v5 - v3;
  if (v7 && v6 < a1[1])
  {
    return 1;
  }

  v7 = v3 < v2 || v3 - v2 >= v4;
  if (!v7)
  {
    return 1;
  }

  v8 = v3 + a1[1] - 1;
  v7 = v8 >= v2;
  v9 = v8 - v2;
  return v7 && v9 < v4;
}

CFTypeRef std::vector<SymbolOwner>::__construct_one_at_end[abi:ne200100]<SymbolOwner const&>(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *(v3 + 16) = 0;
  *(v3 + 56) = 0;
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[5];
  *(v3 + 64) = a2[4];
  *(v3 + 80) = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  v7 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v7;
  result = *(v3 + 80);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 8) = v3 + 96;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1, a2, a3, a6);
  if ((*a6)(a4, a3))
  {
    v12 = a3[3];
    v85 = a3[2];
    v86 = v12;
    v13 = a3[5];
    v87 = a3[4];
    v88 = v13;
    v14 = a3[1];
    v83 = *a3;
    v84 = v14;
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    v15 = a4[2];
    v16 = a4[3];
    v17 = a4[5];
    a3[4] = a4[4];
    a3[5] = v17;
    a3[2] = v15;
    a3[3] = v16;
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    v19 = v86;
    a4[2] = v85;
    a4[3] = v19;
    v20 = v88;
    a4[4] = v87;
    a4[5] = v20;
    v21 = v84;
    *a4 = v83;
    a4[1] = v21;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    SymbolOwner::~SymbolOwner(&v83);
    if ((*a6)(a3, a2))
    {
      v22 = a2[3];
      v85 = a2[2];
      v86 = v22;
      v23 = a2[5];
      v87 = a2[4];
      v88 = v23;
      v24 = a2[1];
      v83 = *a2;
      v84 = v24;
      *a2 = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      v25 = a3[2];
      v26 = a3[3];
      v27 = a3[5];
      a2[4] = a3[4];
      a2[5] = v27;
      a2[2] = v25;
      a2[3] = v26;
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      v29 = v86;
      a3[2] = v85;
      a3[3] = v29;
      v30 = v88;
      a3[4] = v87;
      a3[5] = v30;
      v31 = v84;
      *a3 = v83;
      a3[1] = v31;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      SymbolOwner::~SymbolOwner(&v83);
      if ((*a6)(a2, a1))
      {
        v32 = a1[3];
        v85 = a1[2];
        v86 = v32;
        v33 = a1[5];
        v87 = a1[4];
        v88 = v33;
        v34 = a1[1];
        v83 = *a1;
        v84 = v34;
        *a1 = 0u;
        a1[1] = 0u;
        a1[2] = 0u;
        a1[3] = 0u;
        a1[4] = 0u;
        a1[5] = 0u;
        v35 = a2[2];
        v36 = a2[3];
        v37 = a2[5];
        a1[4] = a2[4];
        a1[5] = v37;
        a1[2] = v35;
        a1[3] = v36;
        v38 = a2[1];
        *a1 = *a2;
        a1[1] = v38;
        v39 = v86;
        a2[2] = v85;
        a2[3] = v39;
        v40 = v88;
        a2[4] = v87;
        a2[5] = v40;
        v41 = v84;
        *a2 = v83;
        a2[1] = v41;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        SymbolOwner::~SymbolOwner(&v83);
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v43 = a4[3];
    v85 = a4[2];
    v86 = v43;
    v44 = a4[5];
    v87 = a4[4];
    v88 = v44;
    v45 = a4[1];
    v83 = *a4;
    v84 = v45;
    *a4 = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[5] = 0u;
    v46 = a5[2];
    v47 = a5[3];
    v48 = a5[5];
    a4[4] = a5[4];
    a4[5] = v48;
    a4[2] = v46;
    a4[3] = v47;
    v49 = a5[1];
    *a4 = *a5;
    a4[1] = v49;
    v50 = v86;
    a5[2] = v85;
    a5[3] = v50;
    v51 = v88;
    a5[4] = v87;
    a5[5] = v51;
    v52 = v84;
    *a5 = v83;
    a5[1] = v52;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    SymbolOwner::~SymbolOwner(&v83);
    if ((*a6)(a4, a3))
    {
      v53 = a3[3];
      v85 = a3[2];
      v86 = v53;
      v54 = a3[5];
      v87 = a3[4];
      v88 = v54;
      v55 = a3[1];
      v83 = *a3;
      v84 = v55;
      *a3 = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      a3[4] = 0u;
      a3[5] = 0u;
      v56 = a4[2];
      v57 = a4[3];
      v58 = a4[5];
      a3[4] = a4[4];
      a3[5] = v58;
      a3[2] = v56;
      a3[3] = v57;
      v59 = a4[1];
      *a3 = *a4;
      a3[1] = v59;
      v60 = v86;
      a4[2] = v85;
      a4[3] = v60;
      v61 = v88;
      a4[4] = v87;
      a4[5] = v61;
      v62 = v84;
      *a4 = v83;
      a4[1] = v62;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      SymbolOwner::~SymbolOwner(&v83);
      if ((*a6)(a3, a2))
      {
        v63 = a2[3];
        v85 = a2[2];
        v86 = v63;
        v64 = a2[5];
        v87 = a2[4];
        v88 = v64;
        v65 = a2[1];
        v83 = *a2;
        v84 = v65;
        *a2 = 0u;
        a2[1] = 0u;
        a2[2] = 0u;
        a2[3] = 0u;
        a2[4] = 0u;
        a2[5] = 0u;
        v66 = a3[2];
        v67 = a3[3];
        v68 = a3[5];
        a2[4] = a3[4];
        a2[5] = v68;
        a2[2] = v66;
        a2[3] = v67;
        v69 = a3[1];
        *a2 = *a3;
        a2[1] = v69;
        v70 = v86;
        a3[2] = v85;
        a3[3] = v70;
        v71 = v88;
        a3[4] = v87;
        a3[5] = v71;
        v72 = v84;
        *a3 = v83;
        a3[1] = v72;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        SymbolOwner::~SymbolOwner(&v83);
        if ((*a6)(a2, a1))
        {
          v73 = a1[3];
          v85 = a1[2];
          v86 = v73;
          v74 = a1[5];
          v87 = a1[4];
          v88 = v74;
          v75 = a1[1];
          v83 = *a1;
          v84 = v75;
          *a1 = 0u;
          a1[1] = 0u;
          a1[2] = 0u;
          a1[3] = 0u;
          a1[4] = 0u;
          a1[5] = 0u;
          v76 = a2[2];
          v77 = a2[3];
          v78 = a2[5];
          a1[4] = a2[4];
          a1[5] = v78;
          a1[2] = v76;
          a1[3] = v77;
          v79 = a2[1];
          *a1 = *a2;
          a1[1] = v79;
          v80 = v86;
          a2[2] = v85;
          a2[3] = v80;
          v81 = v88;
          a2[4] = v87;
          a2[5] = v81;
          v82 = v84;
          *a2 = v83;
          a2[1] = v82;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          SymbolOwner::~SymbolOwner(&v83);
        }
      }
    }
  }

  return result;
}

_OWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,SymbolOwner *,BOOL (*&)(SymbolOwner const&,SymbolOwner const&)>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(_OWORD *, __int128 *))
{
  v6 = 0;
  v7 = a1[3];
  v39 = a1[2];
  v40 = v7;
  v8 = a1[5];
  v41 = a1[4];
  v42 = v8;
  v9 = a1[1];
  v37 = *a1;
  v38 = v9;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  do
  {
    v10 = (*a3)(&a1[v6 + 6], &v37);
    v6 += 6;
  }

  while ((v10 & 1) != 0);
  v11 = &a1[v6];
  if (v6 == 6)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      a2 -= 6;
    }

    while (((*a3)(a2, &v37) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 6;
    }

    while (!(*a3)(a2, &v37));
  }

  v12 = &a1[v6];
  if (v11 < a2)
  {
    v13 = a2;
    do
    {
      v14 = v12[3];
      v45 = v12[2];
      v46 = v14;
      v15 = v12[5];
      v47 = v12[4];
      v48 = v15;
      v16 = v12[1];
      v43 = *v12;
      v44 = v16;
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      v12[4] = 0u;
      v12[5] = 0u;
      v17 = v13[1];
      *v12 = *v13;
      v12[1] = v17;
      v18 = v13[2];
      v19 = v13[3];
      v20 = v13[5];
      v12[4] = v13[4];
      v12[5] = v20;
      v12[2] = v18;
      v12[3] = v19;
      v21 = v44;
      *v13 = v43;
      v13[1] = v21;
      v22 = v45;
      v23 = v46;
      v24 = v48;
      v13[4] = v47;
      v13[5] = v24;
      v13[2] = v22;
      v13[3] = v23;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v43 = 0u;
      v44 = 0u;
      SymbolOwner::~SymbolOwner(&v43);
      do
      {
        v12 += 6;
      }

      while (((*a3)(v12, &v37) & 1) != 0);
      do
      {
        v13 -= 6;
      }

      while (!(*a3)(v13, &v37));
    }

    while (v12 < v13);
  }

  v25 = v12 - 6;
  if (v12 - 6 == a1)
  {
    v31 = *(v12 - 2);
    if (v31)
    {
      CFRelease(v31);
    }
  }

  else
  {
    v26 = *(a1 + 10);
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = *(v12 - 5);
    *a1 = *v25;
    a1[1] = v27;
    v28 = *(v12 - 4);
    v29 = *(v12 - 3);
    v30 = *(v12 - 1);
    a1[4] = *(v12 - 2);
    a1[5] = v30;
    a1[2] = v28;
    a1[3] = v29;
    *(v12 - 4) = 0u;
    *(v12 - 3) = 0u;
    *(v12 - 2) = 0u;
    *(v12 - 1) = 0u;
    *v25 = 0u;
    *(v12 - 5) = 0u;
  }

  v32 = v38;
  *v25 = v37;
  *(v12 - 5) = v32;
  v33 = v39;
  v34 = v40;
  v35 = v42;
  *(v12 - 2) = v41;
  *(v12 - 1) = v35;
  *(v12 - 4) = v33;
  *(v12 - 3) = v34;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = 0u;
  v38 = 0u;
  SymbolOwner::~SymbolOwner(&v37);
  return v12 - 6;
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v7 = a1 - 6;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v9 = v4[3];
          v24 = v4[2];
          v25 = v9;
          v10 = v4[5];
          v26 = v4[4];
          v27 = v10;
          v11 = v4[1];
          v22 = *v4;
          v23 = v11;
          *v4 = 0u;
          v4[1] = 0u;
          v4[2] = 0u;
          v4[3] = 0u;
          v12 = v7;
          v4[4] = 0u;
          v4[5] = 0u;
          do
          {
            v13 = *(v12 + 34);
            if (v13)
            {
              CFRelease(v13);
            }

            v14 = v12[9];
            v12[14] = v12[8];
            v12[15] = v14;
            v15 = v12[11];
            v12[16] = v12[10];
            v12[17] = v15;
            v16 = v12[7];
            v12[12] = v12[6];
            v12[13] = v16;
            v12[6] = 0u;
            v12[7] = 0u;
            v12[8] = 0u;
            v12[9] = 0u;
            v12[10] = 0u;
            v12[11] = 0u;
            v17 = (*a3)(&v22, v12);
            v12 -= 6;
          }

          while ((v17 & 1) != 0);
          v18 = *(v12 + 34);
          if (v18)
          {
            CFRelease(v18);
          }

          v19 = v25;
          v12[14] = v24;
          v12[15] = v19;
          v20 = v27;
          v12[16] = v26;
          v12[17] = v20;
          v21 = v23;
          v12[12] = v22;
          v12[13] = v21;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          SymbolOwner::~SymbolOwner(&v22);
        }

        v5 = v4 + 6;
        v7 += 6;
      }

      while (v4 + 6 != a2);
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1, a1 + 6, a2 - 6, a3);
        return 1;
      case 4:
        v37 = a2 - 6;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1, a1 + 6, a1 + 12, a3);
        if (!(*a3)(v37, a1 + 12))
        {
          return 1;
        }

        v38 = a1[15];
        v70 = a1[14];
        v71 = v38;
        v39 = a1[17];
        v72 = a1[16];
        v73 = v39;
        v40 = a1[13];
        v68 = a1[12];
        v69 = v40;
        a1[12] = 0u;
        a1[13] = 0u;
        a1[14] = 0u;
        a1[15] = 0u;
        a1[16] = 0u;
        a1[17] = 0u;
        v41 = v37[2];
        v42 = v37[3];
        v43 = v37[5];
        a1[16] = v37[4];
        a1[17] = v43;
        a1[14] = v41;
        a1[15] = v42;
        v44 = v37[1];
        a1[12] = *v37;
        a1[13] = v44;
        v45 = v71;
        v37[2] = v70;
        v37[3] = v45;
        v46 = v73;
        v37[4] = v72;
        v37[5] = v46;
        v47 = v69;
        *v37 = v68;
        v37[1] = v47;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        SymbolOwner::~SymbolOwner(&v68);
        if (!(*a3)(a1 + 12, a1 + 6))
        {
          return 1;
        }

        v48 = a1[9];
        v70 = a1[8];
        v71 = v48;
        v49 = a1[11];
        v72 = a1[10];
        v73 = v49;
        v50 = a1[7];
        v68 = a1[6];
        v69 = v50;
        v51 = a1[15];
        a1[8] = a1[14];
        a1[9] = v51;
        v52 = a1[17];
        a1[10] = a1[16];
        a1[11] = v52;
        v53 = a1[13];
        a1[6] = a1[12];
        a1[7] = v53;
        v54 = v69;
        a1[12] = v68;
        a1[13] = v54;
        v55 = v73;
        a1[16] = v72;
        a1[17] = v55;
        v56 = v71;
        a1[14] = v70;
        a1[15] = v56;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        SymbolOwner::~SymbolOwner(&v68);
        if (!(*a3)(a1 + 6, a1))
        {
          return 1;
        }

        v57 = a1[3];
        v70 = a1[2];
        v71 = v57;
        v58 = a1[5];
        v72 = a1[4];
        v73 = v58;
        v59 = a1[1];
        v68 = *a1;
        v69 = v59;
        v60 = a1[9];
        a1[2] = a1[8];
        a1[3] = v60;
        v61 = a1[11];
        a1[4] = a1[10];
        a1[5] = v61;
        v62 = a1[7];
        *a1 = a1[6];
        a1[1] = v62;
        v63 = v69;
        a1[6] = v68;
        a1[7] = v63;
        v64 = v73;
        a1[10] = v72;
        a1[11] = v64;
        v65 = v71;
        a1[8] = v70;
        a1[9] = v65;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1, a1 + 6, a1 + 12, a1 + 18, a2 - 6, a3);
        return 1;
    }

LABEL_12:
    v18 = a1 + 12;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(SymbolOwner const&,SymbolOwner const&),SymbolOwner*,0>(a1, a1 + 6, a1 + 12, a3);
    v19 = a1 + 18;
    if (a1 + 18 != a2)
    {
      v20 = 0;
      v21 = 0;
      while (1)
      {
        if ((*a3)(v19, v18))
        {
          v22 = v19[3];
          v70 = v19[2];
          v71 = v22;
          v23 = v19[5];
          v72 = v19[4];
          v73 = v23;
          v24 = v19[1];
          v68 = *v19;
          v69 = v24;
          *v19 = 0u;
          v19[1] = 0u;
          v19[2] = 0u;
          v19[3] = 0u;
          v25 = v20;
          v19[4] = 0u;
          v19[5] = 0u;
          while (1)
          {
            v26 = (a1 + v25);
            v27 = *(a1 + v25 + 368);
            if (v27)
            {
              CFRelease(v27);
            }

            v28 = v26[15];
            v26[20] = v26[14];
            v26[21] = v28;
            v29 = v26[17];
            v26[22] = v26[16];
            v26[23] = v29;
            v30 = v26[13];
            v26[18] = v26[12];
            v26[19] = v30;
            v26[12] = 0u;
            v26[13] = 0u;
            v26[14] = 0u;
            v26[15] = 0u;
            v26[16] = 0u;
            v26[17] = 0u;
            if (v25 == -192)
            {
              break;
            }

            v31 = (*a3)(&v68, (a1 + v25 + 96));
            v25 -= 96;
            if ((v31 & 1) == 0)
            {
              v32 = a1 + v25 + 288;
              goto LABEL_22;
            }
          }

          v32 = a1;
LABEL_22:
          v33 = *(v32 + 80);
          if (v33)
          {
            CFRelease(v33);
          }

          v34 = v71;
          *(v32 + 32) = v70;
          *(v32 + 48) = v34;
          v35 = v73;
          *(v32 + 64) = v72;
          *(v32 + 80) = v35;
          v36 = v69;
          *v32 = v68;
          *(v32 + 16) = v36;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          ++v21;
          v72 = 0u;
          v73 = 0u;
          if (v21 == 8)
          {
            v66 = v19 + 6 == a2;
            SymbolOwner::~SymbolOwner(&v68);
            return v66;
          }

          SymbolOwner::~SymbolOwner(&v68);
        }

        v18 = v19;
        v20 += 96;
        v19 += 6;
        if (v19 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = a2 - 6;
  if ((*a3)(a2 - 6, a1))
  {
    v8 = a1[3];
    v70 = a1[2];
    v71 = v8;
    v9 = a1[5];
    v72 = a1[4];
    v73 = v9;
    v10 = a1[1];
    v68 = *a1;
    v69 = v10;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    v11 = *(a2 - 4);
    v12 = *(a2 - 3);
    v13 = *(a2 - 1);
    a1[4] = *(a2 - 2);
    a1[5] = v13;
    a1[2] = v11;
    a1[3] = v12;
    v14 = *(a2 - 5);
    *a1 = *v7;
    a1[1] = v14;
    v15 = v71;
    *(a2 - 4) = v70;
    *(a2 - 3) = v15;
    v16 = v73;
    *(a2 - 2) = v72;
    *(a2 - 1) = v16;
    v17 = v69;
    *v7 = v68;
    *(a2 - 5) = v17;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
LABEL_6:
    SymbolOwner::~SymbolOwner(&v68);
  }

  return 1;
}

uint64_t sub_22ED968B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED968F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22EE3BA84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22ED969EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22EE3BA84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22ED96AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PassiveTraceInterval(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22ED96C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PassiveTraceInterval(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22ED96D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EE3BCB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22ED96D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EE3BCB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22ED96E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22EE3BA84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22EE3BCB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22ED96F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22EE3BA84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22EE3BCB4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22ED9703C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22ED97074()
{
  v1 = sub_22EE3BA84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t getEnumTagSinglePayload for EventTimebase(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventTimebase(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22ED971B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22ED971C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_SSs5Error_pIegozo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22ED97214()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22ED9725C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22ED972FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22ED973B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22ED973F8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22ED97448()
{
  sub_22EDD4074(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED97480()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22ED974C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED97500(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecordingOptions.Options(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22ED975AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecordingOptions.Options(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22ED97650()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED97698()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED976D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22ED97710()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22ED97748()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22ED97790()
{
  v1 = (type metadata accessor for TrimOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = sub_22EE3BFD4();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);
  v10 = *(v0 + v4);

  v11 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_22ED978CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22EE3BFD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22ED97998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22EE3BFD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22ED97A50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22ED97A70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_22ED97AAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22ED97B14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22ED97B74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22ED97BBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ED97BFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecordingOptions.Options(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22ED97CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecordingOptions.Options(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22ED97D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22ED97E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22ED97EE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_DWORD *sub_22ED97F04@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t ktrace_set_only_do_time_sensitive_postprocess(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 224) = *(result + 224) & 0xFEFF | v2;
  return result;
}

void *ktrace_postprocessing_set_completed_handler(uint64_t *a1, const void *a2)
{
  v2 = *(*a1 + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_postprocessing_set_completed_handler_cold_1();
  }

  v4 = ktrace_callback_list_add(*a1, (a1 + 2));
  v4[4] = 5;
  result = _Block_copy(a2);
  *(v4 + 3) = result;
  *v4 = 2;
  return result;
}

uint64_t ktrace_postprocess_file_internal(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = dup(*(a2 + 196));
  if (v10 < 0)
  {
    return *__error();
  }

  v11 = v10;
  v12 = ktrace_file_open_fd(v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = dispatch_semaphore_create(0);
    v15 = ktrace_session_create_with_flags(0);
    *object = 0u;
    v30 = 0u;
    v16 = ktrace_set_ktrace_file(v15, v13, 1);
    if (!v16)
    {
      if (!v15)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      *(v15[37].isa + 96) &= ~1u;
      if (a1)
      {
        v17 = *(a1 + 72);
        if (v17)
        {
          (*(v17 + 16))(v17, v15);
        }

        [*(a1 + 600) configurePostprocessingWithSession:v15];
      }

      object[0] = v15;
      object[1] = dispatch_queue_create("com.apple.libktrace.postprocessing", 0);
      if (!a3)
      {
        ktrace_catalog_postprocess_file(v15, a2, object);
      }

      ktrace_uuid_map_postprocess_file(v15, a2, a3, a4, object);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __ktrace_postprocess_file_internal_block_invoke;
      aBlock[3] = &unk_27886DD30;
      aBlock[5] = a5;
      aBlock[6] = v15;
      aBlock[4] = v14;
      ktrace_set_completion_handler(v15, aBlock);
      if (!a1 || (v18 = atomic_load((a1 + 158)), (v18 & 1) == 0))
      {
        ktrace_log_init();
        v19 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_postprocess_file_internal_cold_1(v19);
        }

        v20 = ktrace_start(v15, object[1]);
        if (v20)
        {
          v16 = v20;
          *__error() = v20;
          v21 = *__error();
          ktrace_log_init();
          v22 = ktrace_log;
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_postprocess_file_internal_cold_2(v21, v22);
          }

          *__error() = v21;
          goto LABEL_31;
        }

        if (a1)
        {
          *(a1 + 80) = v15;
        }

        dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
        ktrace_log_init();
        v23 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_postprocess_file_internal_cold_3(v23);
        }

        if (v30 >= 1)
        {
          v24 = 0;
          v25 = (*(&v30 + 1) + 24);
          do
          {
            v26 = *v25;
            v25 += 4;
            (*(v26 + 16))();
            ++v24;
          }

          while (v24 < v30);
        }

        if (a1)
        {
          [*(a1 + 600) postprocessingCompleteWithFile:a2];
        }
      }

      v16 = 0;
    }

LABEL_31:
    ktrace_session_destroy(v15);
    dispatch_release(v14);
    ktrace_callback_list_reset(&v30);
    dispatch_release(object[1]);
    return v16;
  }

  v16 = *__error();
  close(v11);
  return v16;
}

intptr_t __ktrace_postprocess_file_internal_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    **(a1 + 40) = ktrace_get_current_timestamp(*(a1 + 48));
  }

  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t deserializeSignpostSpecs(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:a1];
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a1];
    if (v3)
    {
      v9[0] = v3;
      v4 = v9;
    }

    else
    {
      v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a1];
      if (!v5)
      {
        goto LABEL_9;
      }

      v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:8 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_9:
        v2 = 0;
        goto LABEL_10;
      }

      v8 = v2;
      v4 = &v8;
    }

    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void *signpostSpecPathsForURL(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_22;
  }

  v22 = 0;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  if (![v2 fileExistsAtPath:v3 isDirectory:&v22])
  {
    goto LABEL_22;
  }

  if ((v22 & 1) == 0)
  {
    v24[0] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    goto LABEL_23;
  }

  v21 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:0 options:0 error:&v21];
  v5 = v4 && v21 == 0;
  if (v5 && (v6 = v4, [v4 count]))
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 pathExtension];
          if (([v13 isEqualToString:@"plist"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"json"))
          {
            v14 = [MEMORY[0x277CBEBC0] URLByResolvingAliasFileAtURL:v12 options:768 error:0];
            if (v14)
            {
              [v7 addObject:{objc_msgSend(v14, "path")}];
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
LABEL_22:
    v7 = MEMORY[0x277CBEBF8];
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

void *ktariadne_append_live_signpost_specs(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = signpostSpecPathsForURL([MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/Ariadne/Plists/"]);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = deserializeSignpostSpecs(v8);
        [v2 setObject:v9 forKeyedSubscript:{v8, v14}];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:{0, v14}];
  if (v10)
  {
    result = ktrace_file_append_chunk(a1, 20986, 0, 0, [v10 bytes], objc_msgSend(v10, "length"));
  }

  else
  {
    v12 = __error();
    result = 0;
    *v12 = 79;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *ktariadne_append_live_device_tree(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  RootEntry = IORegistryGetRootEntry(0);
  v4 = RootEntry;
  v5 = serializeServiceRecursively(RootEntry);
  if (v5)
  {
    v6 = v5;
    IOObjectRelease(v4);
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
    appended = ktrace_file_append_chunk(a1, 20991, 0, 0, [v7 bytes], objc_msgSend(v7, "length"));
  }

  else
  {
    appended = 0;
  }

  objc_autoreleasePoolPop(v2);
  return appended;
}

void *serializeServiceRecursively(uint64_t a1)
{
  v1 = a1;
  v15 = *MEMORY[0x277D85DE8];
  iterator = 0;
  if (MEMORY[0x2318F6B40](a1, "IODeviceTree", &iterator))
  {
    v2 = 0;
  }

  else
  {
    v3 = IOIteratorNext(iterator);
    memset(v14, 0, 128);
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    entryID = 0;
    v2 = [MEMORY[0x277CBEB38] dictionary];
    if (!IORegistryEntryGetNameInPlane(v1, "IODeviceTree", v14))
    {
      [v2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithUTF8String:", v14), @"IORegistryEntryName"}];
    }

    if (!IORegistryEntryGetLocationInPlane(v1, "IODeviceTree", v13))
    {
      [v2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithUTF8String:", v13), @"IORegistryEntryLocation"}];
    }

    if (!IORegistryEntryGetRegistryEntryID(v1, &entryID))
    {
      [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLongLong:", entryID), @"IORegistryEntryID"}];
    }

    if (!_IOObjectGetClass())
    {
      [v2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithUTF8String:", v12), @"IOObjectClass"}];
    }

    properties = 0;
    IORegistryEntryCreateCFProperties(v1, &properties, *MEMORY[0x277CBECE8], 0);
    if (properties)
    {
      [v2 setObject:properties forKeyedSubscript:@"IORegistryEntryProperties"];
      CFRelease(properties);
    }

    if (v3)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      do
      {
        v5 = objc_autoreleasePoolPush();
        [v4 addObject:serializeServiceRecursively(v3)];
        v6 = IOIteratorNext(iterator);
        IOObjectRelease(v3);
        objc_autoreleasePoolPop(v5);
        v3 = v6;
      }

      while (v6);
      [v2 setObject:v4 forKeyedSubscript:@"IORegistryEntryChildren"];
    }

    IOObjectRelease(iterator);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}