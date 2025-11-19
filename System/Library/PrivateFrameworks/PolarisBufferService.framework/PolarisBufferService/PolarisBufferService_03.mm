uint64_t PSRingBufferLogDataDecode::decodeFormatString(PSRingBufferLogDataDecode *this, unint64_t a2, unsigned int a3, const char *a4, uint64_t a5, unsigned __int8 *a6, char *__str, size_t __size)
{
  v39 = a2;
  v12 = &__str[__size];
  *(v12 - 1) = 0;
  v13 = v12 - 1;
  __sizea = __size;
  v14 = snprintf(__str, __size, "[ %llu ] ", a5);
  v15 = 0;
  v16 = &__str[v14];
  v34 = a3;
  v17 = &dword_279A4D894;
  while (2)
  {
    for (i = v13 - v16; ; --i)
    {
      v19 = *a4;
      if (!*a4)
      {
        *v16 = 0;
        return v15;
      }

      if (v19 == 37)
      {
        break;
      }

      ++a4;
      *v16++ = v19;
    }

    v37 = v15;
    v20 = 8;
    while (1)
    {
      v21 = *(v17 - 3);
      v22 = *(v17 - 1);
      v23 = strncmp(a4, v21, v22);
      if (!v23)
      {
        break;
      }

      v17 += 6;
      if (!--v20)
      {
        goto LABEL_27;
      }
    }

    v24 = *v17;
    if (*v17 > 2)
    {
      switch(v24)
      {
        case 3u:
          v27 = *a6;
          break;
        case 4u:
          v27 = *a6;
          break;
        case 5u:
          if (ps_util_is_internal_build())
          {
            v26 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 1, a6);
            if (v26)
            {
              v25 = v26[3] + 16;
            }

            else
            {
              if (!v39 || (v29 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 6, &v39)) == 0 || (v30 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v29 + 3, a6)) == 0)
              {
                v38 = v34;
                v31 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 6, &v38);
                if (!v31 || (v30 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v31 + 3, a6)) == 0)
                {
                  v23 = snprintf(v16, i, "<%#llx>", *a6);
                  v37 = -1;
                  if ((v23 & 0x80000000) == 0)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_38;
                }
              }

              v25 = (v30 + 3);
              if (*(v30 + 47) < 0)
              {
                v25 = *v25;
              }
            }

            goto LABEL_21;
          }

          v28 = *a6;
          v23 = snprintf(v16, i, "<%#llx>");
LABEL_25:
          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_38:
          v33 = "Error parsing arguments";
          goto LABEL_41;
        default:
          goto LABEL_26;
      }

      v23 = snprintf(v16, i, v21, *&v27);
      goto LABEL_25;
    }

    if (v24 < 2)
    {
      v25 = *a6;
LABEL_21:
      v23 = snprintf(v16, i, v21, v25);
      goto LABEL_25;
    }

    if (v24 == 2)
    {
      v25 = *a6;
      goto LABEL_21;
    }

LABEL_26:
    a6 += 8;
    v16 += v23;
    a4 += v22;
LABEL_27:
    v15 = v37;
    v17 = &dword_279A4D894;
    if (v16 != v13)
    {
      continue;
    }

    break;
  }

  v33 = "Out of buffer for data";
LABEL_41:
  strlcpy(__str, v33, __sizea);
  return 0xFFFFFFFFLL;
}

void PSRingBufferLogDataDecode::dumpDecodeMatrix(uint64_t a1, char *a2, unsigned int a3, uint64_t a4)
{
  std::mutex::lock((a1 + 88));
  for (i = *(a1 + 64); i; i = *i)
  {
    v9 = i[5];
    if (v9)
    {
      v10 = i[2];
      do
      {
        v11 = (v9 + 3);
        if (*(v9 + 47) < 0)
        {
          v11 = *v11;
        }

        snprintf(a2, a3, "[%llu --> [%#llx --> %s]]", v10, v9[2], v11);
        (*(a4 + 16))(a4, a2);
        v9 = *v9;
      }

      while (v9);
    }
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    while (1)
    {
      v13 = v12[3];
      v14 = *(v13 + 8);
      if (v14 == 2)
      {
        v15 = (v13 + 16);
        goto LABEL_15;
      }

      if (v14 == 1)
      {
        break;
      }

      if (!v14)
      {
        v15 = *(v13 + 16);
LABEL_15:
        snprintf(a2, a3, "[%#llx --> %s]", v12[2], v15);
        (*(a4 + 16))(a4, a2);
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v15 = "<handler block>";
    goto LABEL_15;
  }

LABEL_17:

  std::mutex::unlock((a1 + 88));
}

void PSRingBufferLogDataDecode::registerFormatStringForDecode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x210uLL, 0x10D20403194BFCCuLL);
  v12 = v8;
  v8[1] = a3;
  v8[2] = 0;
  *v8 = a2;
  *(v8 + 2) = a4;
  std::mutex::lock((a1 + 88));
  v11 = a3 | (a2 << 32);
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,pbs_ringbufferlog_data_hdr *&>((a1 + 8), &v11);
  if ((v10 & 1) == 0)
  {
    v9[3] = v12;
  }

  std::mutex::unlock((a1 + 88));
}

void PSRingBufferLogDataDecode::registerHandlerForDataDecode(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x210uLL, 0x10D20403194BFCCuLL);
  v12 = v8;
  v8[1] = a3;
  v8[2] = 1;
  *v8 = a2;
  *(v8 + 2) = _Block_copy(a4);
  std::mutex::lock((a1 + 88));
  v11 = a3 | (a2 << 32);
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,pbs_ringbufferlog_data_hdr *&>((a1 + 8), &v11);
  if ((v10 & 1) == 0)
  {
    v9[3] = v12;
  }

  std::mutex::unlock((a1 + 88));
}

void PSRingBufferLogDataDecode::registerStringDataForDecode(PSRingBufferLogDataDecode *this, unint64_t a2, unint64_t a3, char *a4)
{
  v12 = a3;
  v13 = a2;
  std::mutex::lock((this + 88));
  if (a2)
  {
    v14 = &v13;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, &v13);
    v14 = &v12;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v7 + 3, &v12);
    MEMORY[0x25F8CA330](v8 + 3, a4);
  }

  else if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 1, &v12))
  {
    v9 = malloc_type_calloc(1uLL, 0x210uLL, 0x10D20403194BFCCuLL);
    v14 = v9;
    *(v9 + 2) = 2;
    *v9 = v12;
    strlcpy(v9 + 16, a4, 0x200uLL);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,pbs_ringbufferlog_data_hdr *&>(this + 1, &v12);
    if ((v11 & 1) == 0)
    {
      v10[3] = v14;
    }
  }

  std::mutex::unlock((this + 88));
}

void PSRingBufferLogDataDecode::deregisterStringDataForOverlay(PSRingBufferLogDataDecode *this, unint64_t a2)
{
  v5 = a2;
  std::mutex::lock((this + 88));
  v3 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(this + 6, &v5);
  if (v3)
  {
    v4 = v3;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::clear((v3 + 3));
    std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(this + 6, v4, v6);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](v6);
  }

  std::mutex::unlock((this + 88));
}

uint64_t PSRingBufferLogDataDecode::decodeOntoDestBuffer(PSRingBufferLogDataDecode *this, unint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, char *a8, unsigned int a9)
{
  v22 = a4;
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::find<unsigned long long>(this + 1, &v22))
  {
    return 0xFFFFFFFFLL;
  }

  std::mutex::lock((this + 88));
  v23 = &v22;
  v16 = *(std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 1, &v22)[3] + 8);
  if (v16 == 1)
  {
    v23 = &v22;
    v19 = *(std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 1, &v22)[3] + 16);
    v20 = snprintf(a8, a9, "[ %llu ] ", a5);
    (*(v19 + 16))(v19, a6, a7, &a8[v20], -v20);
    v18 = 0;
  }

  else if (v16)
  {
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = &v22;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 1, &v22);
    v18 = PSRingBufferLogDataDecode::decodeFormatString(this, a2, a3, *(v17[3] + 16), a5, a6, a8, a9);
  }

  std::mutex::unlock((this + 88));
  return v18;
}

uint64_t PSRingBufferLogDataDecode::dumpFromW1R1Buffer(atomic_ullong *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    add = atomic_fetch_add(a1 + 19, 1uLL);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ___ZN25PSRingBufferLogDataDecode18dumpFromW1R1BufferEP28PSRingBufferLoggerClientW1R1PcjU13block_pointerFvS2_E_block_invoke;
    v19[3] = &__block_descriptor_tmp_3;
    v19[4] = a1;
    v11 = (*(*a2 + 56))(a2, 0, v19);
    if (v11)
    {
      v12 = v11;
      v13 = pbs_ringbufferlogger_shared_instance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = v12;
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEFAULT, "Error reading decoder data from buffer %d", buf, 8u);
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v17[2] = ___ZN25PSRingBufferLogDataDecode18dumpFromW1R1BufferEP28PSRingBufferLoggerClientW1R1PcjU13block_pointerFvS2_E_block_invoke_10;
    v17[3] = &unk_279A4D970;
    v17[6] = add;
    v17[7] = a3;
    v18 = a4;
    v17[4] = a5;
    v17[5] = a1;
    v14 = (*(*a2 + 64))(a2, 0, buf, 1024, v17);
    PSRingBufferLogDataDecode::deregisterStringDataForOverlay(a1, add);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t ___ZN25PSRingBufferLogDataDecode18dumpFromW1R1BufferEP28PSRingBufferLoggerClientW1R1PcjU13block_pointerFvS2_E_block_invoke_10(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = snprintf(v15, v16, "[%u:%u] ", a4, a5);
  PSRingBufferLogDataDecode::decodeOntoDestBuffer(v13, v14, a4, a2, a3, a6, a7, &v15[v17], v16 - v17);
  v18 = *(a1 + 56);
  v19 = *(*(a1 + 32) + 16);

  return v19();
}

uint64_t PSRingBufferLogDataDecode::dumpFromWnR1Buffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZN25PSRingBufferLogDataDecode18dumpFromWnR1BufferEP28PSRingBufferLoggerClientWnR1PcjU13block_pointerFvS2_yE_block_invoke;
  v6[3] = &unk_279A4D9B8;
  v6[6] = a2;
  v6[7] = a3;
  v7 = a4;
  v6[4] = a5;
  v6[5] = a1;
  return (*(*a2 + 56))(a2, 0, v6);
}

uint64_t ___ZN25PSRingBufferLogDataDecode18dumpFromWnR1BufferEP28PSRingBufferLoggerClientWnR1PcjU13block_pointerFvS2_yE_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 *a6, unsigned int a7)
{
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___ZN25PSRingBufferLogDataDecode33readDecodeStringsFromSharedBufferEP28PSRingBufferLoggerClientWnR1_block_invoke;
  v21[3] = &__block_descriptor_tmp_13;
  v21[4] = v14;
  (*(*v13 + 48))(v13, 0, v21);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = snprintf(v15, v16, "[%u:%u] ", a4, a5);
  PSRingBufferLogDataDecode::decodeOntoDestBuffer(v14, a4, a4, a2, a3, a6, a7, &v15[v17], v16 - v17);
  v18 = *(a1 + 56);
  return (*(*(a1 + 32) + 16))();
}

uint64_t PSRingBufferLogDataDecode::dumpFromW1R1File(atomic_ullong *a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = open(a2, 0);
  if (v10 < 0)
  {
    v13 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = a2;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEFAULT, "Unable to load file %s", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v11 = v10;
  if (fstat(v10, &v23))
  {
    v12 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = a2;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEFAULT, "Unable to load file %s", buf, 0xCu);
    }

LABEL_12:
    close(v11);
LABEL_13:
    Data = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v14 = mmap(0, v23.st_size, 1, 1, v11, 0);
  if (v14 == -1)
  {
    v17 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = a2;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEFAULT, "Unable to map file %s", buf, 0xCu);
    }

    goto LABEL_12;
  }

  add = atomic_fetch_add(a1 + 19, 1uLL);
  PSRingBufferLoggerClientW1R1::PSRingBufferLoggerClientW1R1(buf, "pbs_ringbuffer_decoder", 0, 0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = ___ZN25PSRingBufferLogDataDecode16dumpFromW1R1FileEPKcPcjU13block_pointerFvS2_E_block_invoke;
  v22[3] = &__block_descriptor_tmp_16;
  v22[4] = a1;
  v22[5] = add;
  PSRingBufferLoggerClientW1R1::readDecodeData(buf, v14, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 0x40000000;
  v20[2] = ___ZN25PSRingBufferLogDataDecode16dumpFromW1R1FileEPKcPcjU13block_pointerFvS2_E_block_invoke_2;
  v20[3] = &unk_279A4DA00;
  v20[6] = add;
  v20[7] = a3;
  v21 = a4;
  v20[4] = a5;
  v20[5] = a1;
  Data = PSRingBufferLoggerClientW1R1::readData(buf, v14, v26, 0x400u, v20);
  PSRingBufferLogDataDecode::deregisterStringDataForOverlay(a1, add);
  munmap(v14, v23.st_size);
  close(v11);
  PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(buf);
LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
  return Data;
}

uint64_t ___ZN25PSRingBufferLogDataDecode16dumpFromW1R1FileEPKcPcjU13block_pointerFvS2_E_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = snprintf(v15, v16, "[%u:%u] ", a4, a5);
  PSRingBufferLogDataDecode::decodeOntoDestBuffer(v13, v14, a4, a2, a3, a6, a7, &v15[v17], v16 - v17);
  v18 = *(a1 + 56);
  v19 = *(*(a1 + 32) + 16);

  return v19();
}

uint64_t PSRingBufferLogDataDecode::dumpFromWnR1File(atomic_ullong *a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = open(a2, 0);
  if (v10 < 0)
  {
    v13 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = a2;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEFAULT, "Unable to load file %s", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v11 = v10;
  if (fstat(v10, &v33))
  {
    v12 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = a2;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEFAULT, "Unable to load file %s", buf, 0xCu);
    }

LABEL_15:
    close(v11);
LABEL_16:
    Data = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v14 = mmap(0, v33.st_size, 2, 2, v11, 0);
  if (v14 == -1)
  {
    v18 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = a2;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEFAULT, "Unable to map file %s", buf, 0xCu);
    }

    goto LABEL_15;
  }

  add = atomic_fetch_add(a1 + 19, 1uLL);
  PSRingBufferLoggerClientWnR1::PSRingBufferLoggerClientWnR1(buf, "pbs_ringbuffer_decoder", 0, 0);
  *v27 = MEMORY[0x277D85DD0];
  v28 = 0x40000000;
  v29 = ___ZN25PSRingBufferLogDataDecode16dumpFromWnR1FileEPKcPcjU13block_pointerFvS2_yE_block_invoke;
  v30 = &__block_descriptor_tmp_18;
  v31 = a1;
  v32 = add;
  PSRingBufferLoggerClientWnR1::readDecodeData(buf, v14, v27);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___ZN25PSRingBufferLogDataDecode16dumpFromWnR1FileEPKcPcjU13block_pointerFvS2_yE_block_invoke_2;
  v21[3] = &unk_279A4DA48;
  v21[6] = a1;
  v21[7] = add;
  v21[8] = a3;
  v22 = a4;
  v21[4] = a5;
  v21[5] = &v23;
  Data = PSRingBufferLoggerClientWnR1::readData(buf, v14, v21);
  if (*(v24 + 6))
  {
    v17 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 136315138;
      v35 = a2;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEFAULT, "Encountered error while decoding file %s", v34, 0xCu);
    }
  }

  PSRingBufferLogDataDecode::deregisterStringDataForOverlay(a1, add);
  munmap(v14, v33.st_size);
  close(v11);
  _Block_object_dispose(&v23, 8);
  PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(buf);
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return Data;
}

void sub_25EC04CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a19, 8);
  PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(&a49);
  _Unwind_Resume(a1);
}

uint64_t ___ZN25PSRingBufferLogDataDecode16dumpFromWnR1FileEPKcPcjU13block_pointerFvS2_yE_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = snprintf(v15, v16, "[%u:%u] ", a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = PSRingBufferLogDataDecode::decodeOntoDestBuffer(v13, v14, a4, a2, a3, a6, a7, &v15[v17], v16 - v17);
  v18 = *(a1 + 64);
  v19 = *(*(a1 + 32) + 16);

  return v19();
}

void PSRingBufferLogDataDecode::~PSRingBufferLogDataDecode(PSRingBufferLogDataDecode *this)
{
  *this = &unk_2870CE558;
  for (i = *(this + 3); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      if (*(v3 + 8) == 1)
      {
        _Block_release(*(v3 + 16));
      }

      free(v3);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(this + 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::clear(this + 48);
  std::mutex::~mutex((this + 88));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::~__hash_table(this + 48);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 8);
}

{
  PSRingBufferLogDataDecode::~PSRingBufferLogDataDecode(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,pbs_ringbufferlog_data_hdr *&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,pbs_ringbufferlog_data_hdr *&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_25EC056AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,pbs_ringbufferlog_data_hdr *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::string>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t pbs_ringbufferlogger_shared_instance()
{
  if (pbs_ringbufferlogger_shared_instance::onceToken != -1)
  {
    pbs_ringbufferlogger_shared_instance_cold_1();
  }

  return pbs_ringbufferlogger_shared_instance::instance;
}

os_log_t __pbs_ringbufferlogger_shared_instance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "pbs_ringbufferlogger");
  pbs_ringbufferlogger_shared_instance::instance = result;
  return result;
}

void pbs_ringbuffer_set_global_dump_on_exit(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (pbs_ringbufferlogger_shared_instance::onceToken != -1)
  {
    pbs_ringbufferlogger_shared_instance_cold_1();
  }

  v2 = pbs_ringbufferlogger_shared_instance::instance;
  if (os_log_type_enabled(pbs_ringbufferlogger_shared_instance::instance, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "disabled";
    if (a1)
    {
      v3 = "enabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEFAULT, "Logger dump to file %s for process", &v5, 0xCu);
  }

  pbs_ringbuffer_dump_on_exit = a1;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t pbs_ringbufferlogger_request_dump_all_buffers(PSRingBufferLoggerClient *a1)
{
  if (a1)
  {
    return PSRingBufferLoggerClient::requestDumpAllBuffers(a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PSRingBufferLoggerClient::checkLoggingEnabledOnServer(PSRingBufferLoggerClient *this)
{
  v1 = *(this + 70);
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v4 = *(this + 69);
    if (!v4)
    {
      operator new();
    }

    v5 = (*(*v4 + 64))(v4, 0);
    *(this + 70) = v5;
    if (v5 && (*v5 & 1) != 0)
    {
      v2 = 1;
    }

    else
    {
      v6 = pbs_ringbufferlogger_shared_instance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEFAULT, "Logger service is not available", v9, 2u);
      }

      v7 = *(this + 69);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v2 = 0;
      *(this + 69) = 0;
    }
  }

  return v2 & 1;
}

uint64_t PSRingBufferLoggerClient::_allocate(PSRingBufferLoggerClient *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v27 = *MEMORY[0x277D85DE8];
  if (!PSRingBufferLoggerClient::checkLoggingEnabledOnServer(v1))
  {
LABEL_11:
    result = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v10 = 0;
  pthread_threadid_np(0, &v10);
  Key = PSSharedResource::getKey(v1);
  std::string::basic_string[abi:ne200100]<0>(__p, Key);
  *(v1 + 584) = std::__string_hash<char>::operator()[abi:ne200100](v18, __p);
  if (SHIBYTE(__p[0].msgh_id) < 0)
  {
    operator delete(*&__p[0].msgh_bits);
  }

  v26 = 19;
  v3 = PSSharedResource::getKey(v1);
  strlcpy(v19, v3, 0x200uLL);
  ID = PSSharedResource::getID(v1);
  v22 = 0;
  v23 = *(v1 + 544);
  v24 = *(v1 + 576);
  v21 = *(v1 + 584);
  v25 = v10;
  PSCommsClient::send_wait(*(v1 + 8), v18, 0x888u, __p, 0x898u, 0);
  if (v17 != 19)
  {
    PSRingBufferLoggerClient::_allocate();
  }

  if (v14 != *(v1 + 528))
  {
    PSRingBufferLoggerClient::_allocate();
  }

  if (v15 != *(v1 + 584))
  {
    PSRingBufferLoggerClient::_allocate();
  }

  v4 = v16;
  if (v16 == -1)
  {
    v8 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "_allocate";
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEFAULT, "%s: Server unable to allocate logging buffer", buf, 0xCu);
    }

    goto LABEL_11;
  }

  result = 0;
  v6 = *(v1 + 560) + 3 * v16;
  *(v1 + 592) = v16;
  *(v1 + 568) = v6 + 8;
  v7 = v6 + 8 + 3 * v4;
  *v7 = 0;
  *(v7 + 2) = 0;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferLoggerClient::_deallocate(PSRingBufferLoggerClient *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v17 = *MEMORY[0x277D85DE8];
  v16 = 19;
  Key = PSSharedResource::getKey(v1);
  strlcpy(v9, Key, 0x200uLL);
  v10 = *(v1 + 528);
  v12 = 1;
  v13 = *(v1 + 544);
  v14 = *(v1 + 576);
  v11 = *(v1 + 584);
  v15 = *(v1 + 592);
  PSCommsClient::send_wait(*(v1 + 8), v8, 0x888u, v7, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(v7))
  {
    PSRingBufferLoggerClient::_deallocate(&v5, v1);
LABEL_7:
    PSRingBufferLoggerClient::_deallocate(&v5);
  }

  if (PSCommsClient::isAck(v8, &v7[0].msgh_bits))
  {
    goto LABEL_7;
  }

  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "_deallocate";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s: SUCCESS\n", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t PSRingBufferLoggerClient::_registerWithServer(PSRingBufferLoggerClient *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v20 = *MEMORY[0x277D85DE8];
  Key = PSSharedResource::getKey(v1);
  std::string::basic_string[abi:ne200100]<0>(__p, Key);
  *(v1 + 584) = std::__string_hash<char>::operator()[abi:ne200100](v12, __p);
  if (SHIBYTE(__p[0].msgh_id) < 0)
  {
    operator delete(*&__p[0].msgh_bits);
  }

  v19 = 19;
  v3 = PSSharedResource::getKey(v1);
  strlcpy(v13, v3, 0x200uLL);
  v14 = *(v1 + 528);
  v16 = 2;
  v17 = *(v1 + 544);
  v18 = *(v1 + 576);
  v15 = *(v1 + 584);
  PSCommsClient::send_wait(*(v1 + 8), v12, 0x888u, __p, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(__p))
  {
    PSRingBufferLoggerClient::_registerWithServer(&v7, v1);
  }

  result = PSCommsClient::isAck(v12, &__p[0].msgh_bits);
  if (result)
  {
    v5 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = PSSharedResource::getKey(v1);
      v9 = 1024;
      ID = PSSharedResource::getID(v1);
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to register with logging server, key %s, id: %d", &v7, 0x12u);
    }

    result = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerClient::setLogToFileOnFree(uint64_t this, char a2)
{
  v2 = *(this + 568);
  if (v2)
  {
    *(v2 + 1) = a2;
  }

  return this;
}

uint64_t PSRingBufferLoggerClient::setLogToFileOnResFactNotify(uint64_t this, char a2)
{
  v2 = *(this + 568);
  if (v2)
  {
    *(v2 + 2) = a2;
  }

  return this;
}

uint64_t PSRingBufferLoggerClient::setLogToFileOnDeath(uint64_t this, char a2)
{
  v2 = *(this + 568);
  if (v2)
  {
    *v2 = a2;
  }

  return this;
}

uint64_t PSRingBufferLoggerClient::requestDumpAllBuffers(PSRingBufferLoggerClient *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 544);
  v3 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0].msgh_bits = 67109120;
    v6[0].msgh_size = v2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEFAULT, "Requesting all buffers to be dumped: requesting_pid=%d", v6, 8u);
  }

  v11 = 19;
  v9 = 3;
  v10 = v2;
  PSCommsClient::send_wait(*(v1 + 8), v8, 0x888u, v6, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(v6))
  {
    PSRingBufferLoggerClient::requestDumpAllBuffers();
  }

  result = v7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferLoggerClient::~PSRingBufferLoggerClient(PSRingBufferLoggerClient *this)
{
  *this = &unk_2870CE5A8;
  *(this + 70) = 0;
  v2 = *(this + 69);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSRingBufferLoggerClient::~PSRingBufferLoggerClient(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

uint64_t pbs_ringbufferlogger_shared_create_log_with_entry_and_header_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  {
    pbs_ringbufferlogger_shared_create_log_with_entry_and_header_info::testing_enabled = ps_util_is_testing_enabled();
  }

  if ((a3 || (pbs_ringbufferlogger_shared_create_log_with_entry_and_header_info::testing_enabled & 1) == 0) && pbs_ringbufferlogger_is_enabled_for_process())
  {
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t pbs_ringbufferlogger_shared_destroy_log_handle(uint64_t result, char a2)
{
  if (result)
  {
    v2 = result;
    PSRingBufferLoggerClient::setLogToFileOnFree(result, a2);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  return result;
}

uint64_t pbs_ringbufferlogger_shared_get_log()
{
  v2 = *MEMORY[0x277D85DE8];
  if (pbs_ringbufferlogger_is_enabled_for_process())
  {
    operator new();
  }

  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t pbs_ringbufferlogger_shared_dump_on_free(uint64_t this, char a2)
{
  if (this)
  {
    return PSRingBufferLoggerClient::setLogToFileOnFree(this, a2);
  }

  return this;
}

uint64_t pbs_ringbufferlogger_shared_dump_on_death(uint64_t this, char a2)
{
  if (this)
  {
    return PSRingBufferLoggerClient::setLogToFileOnDeath(this, a2);
  }

  return this;
}

uint64_t pbs_ringbufferlogger_shared_dump_on_notify(uint64_t this, char a2)
{
  if (this)
  {
    return PSRingBufferLoggerClient::setLogToFileOnResFactNotify(this, a2);
  }

  return this;
}

uint64_t pbs_ringbufferlogger_shared_write(uint64_t result, uint64_t a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  if (result)
  {
    v9 = result;
    result = pbs_ringbufferlogger_is_module_safe_to_write(a2);
    if (result)
    {

      return PSRingBufferLoggerClientWnR1::write(v9, a3 | (a2 << 32), a4, a5);
    }
  }

  return result;
}

uint64_t pbs_ringbufferlogger_shared_read_raw(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*result + 56))(result, 0, a2);
  }

  return result;
}

uint64_t pbs_ringbufferlogger_shared_write_decode_data(uint64_t a1, char *a2, unsigned int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = a3;
  do
  {
    v5 = PSRingBufferLoggerClientWnR1::writeDecodeData(a1, a2) | v5;
    a2 += 520;
    --v6;
  }

  while (v6);
  return v5;
}

uint64_t pbs_ringbufferlogger_shared_read_decode_data(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*result + 48))(result, 0, a2);
  }

  return result;
}

uint64_t pbs_ringbuffer_create_shared_error_log()
{
  {
    pbs_ringbuffer_create_shared_error_log::testing_enabled = ps_util_is_testing_enabled();
  }

  if (pbs_ringbuffer_create_shared_error_log::testing_enabled)
  {
    return 0;
  }

  if (pbs_ringbuffer_create_shared_error_log::onceToken != -1)
  {
    pbs_ringbuffer_create_shared_error_log_cold_1();
  }

  return pbs_ringbuffer_create_shared_error_log::error_log;
}

uint64_t __pbs_ringbuffer_create_shared_error_log_block_invoke()
{
  result = pbs_ringbufferlogger_shared_create_log_with_entry_and_header_info("polaris-error-shared-log", 0, 0);
  *(*(result + 560) + 1) = 1;
  pbs_ringbuffer_create_shared_error_log::error_log = result;
  return result;
}

uint64_t pbs_ringbuffer_get_shared_error_log()
{
  {
    pbs_ringbuffer_get_shared_error_log::testing_enabled = ps_util_is_testing_enabled();
  }

  if (pbs_ringbuffer_get_shared_error_log::testing_enabled)
  {
    return 0;
  }

  if (pbs_ringbufferlogger_is_enabled_for_process())
  {
    {
      PSRingBufferLoggerClientWnR1::PSRingBufferLoggerClientWnR1(&pbs_ringbuffer_get_shared_error_log::logClient, "polaris-error-shared-log", 0, 0);
      __cxa_atexit(PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1, &pbs_ringbuffer_get_shared_error_log::logClient, &dword_25EBC5000);
    }

    if (pbs_ringbuffer_get_shared_error_log::onceToken != -1)
    {
      pbs_ringbuffer_get_shared_error_log_cold_1();
    }
  }

  return pbs_ringbuffer_get_shared_error_log::error_log;
}

void __pbs_ringbuffer_get_shared_error_log_block_invoke()
{
  if (PSRingBufferLoggerClient::checkLoggingEnabledOnServer(&pbs_ringbuffer_get_shared_error_log::logClient) && *(qword_27FD35EE0 + 1) == 1)
  {
    if (!PSRingBufferLoggerClientWnR1::getSharedLog(&pbs_ringbuffer_get_shared_error_log::logClient))
    {
      pbs_ringbuffer_get_shared_error_log::error_log = &pbs_ringbuffer_get_shared_error_log::logClient;
    }
  }

  else
  {
    v0 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEFAULT, "Error logging using shared ringbuffer logger not supported", v1, 2u);
    }
  }
}

uint64_t pbs_ringbuffer_read_file_wnr1(const char *a1, const char *a2)
{
  v3 = open(a1, 0);
  if (v3 < 0)
  {
    v5 = *__error();
    printf("Unable to load file %s err=%d");
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (fstat(v3, &v7))
  {
    printf("Unable to load file %s");
LABEL_4:
    close(v4);
    return 0xFFFFFFFFLL;
  }

  if (mmap(0, v7.st_size, 2, 2, v4, 0) == -1)
  {
    printf("Unable to map file %s");
    goto LABEL_4;
  }

  if ((open(a2, 513, 420) & 0x80000000) == 0)
  {
    operator new();
  }

  printf("Unable to create file %s");
  return 0xFFFFFFFFLL;
}

ssize_t __pbs_ringbuffer_read_file_wnr1_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, const void *a6, unsigned int a7)
{
  v14 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "[%llu]: [%u:%u] [%llu]", a3, a4, a5, a2);
  v10 = strlen(__str);
  write(*(a1 + 32), __str, v10 + 1);
  write(*(a1 + 32), a6, a7);
  result = write(*(a1 + 32), "\n", 1uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL __pbs_ringbufferlogger_create_thread_log_with_data(const char *a1, unsigned int a2, unsigned __int8 *a3)
{
  result = pbs_ringbufferlogger_is_enabled_for_process();
  if (result)
  {
    if (should_initialize_logger(void)::onceToken != -1)
    {
      __pbs_ringbufferlogger_create_thread_log_with_data();
    }

    if (logging_enabled == 1 && !*thread_log())
    {
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t *pbs_ringbufferlogger_destroy_thread_log()
{
  result = thread_log();
  v2 = *result;
  if (*result)
  {
    v3 = result;
    PSRingBufferLoggerClient::setLogToFileOnFree(*result, v1);
    result = (*(*v2 + 8))(v2);
    *v3 = 0;
  }

  return result;
}

PSRingBufferLoggerClientW1R1 **pbs_ringbufferlogger_thread_write(uint64_t a1, unsigned int a2, unsigned __int8 *a3, size_t a4)
{
  result = thread_log();
  v9 = *result;
  if (*result)
  {
    result = pbs_ringbufferlogger_is_module_safe_to_write(a1);
    if (result)
    {

      return PSRingBufferLoggerClientW1R1::write(v9, a2 | (a1 << 32), a3, a4, v10);
    }
  }

  return result;
}

void pbs_ringbufferlogger_thread_dump_log_from_buffer(char *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  PSRingBufferLoggerClientW1R1::PSRingBufferLoggerClientW1R1(v22, a1, a2, 0);
  v9 = &unk_2870CE558;
  v10 = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  v16 = 850045863;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  atomic_store(0, &v21);
  PSRingBufferLogDataDecode::dumpFromW1R1Buffer(&v9, v22, a3, a4, a5);
  PSRingBufferLogDataDecode::~PSRingBufferLogDataDecode(&v9);
  PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(v22);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25EC07630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  PSRingBufferLogDataDecode::~PSRingBufferLogDataDecode(&a9);
  PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(&a29);
  _Unwind_Resume(a1);
}

uint64_t pbs_ringbuffer_read_file_w1r1(const char *a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v6 = *__error();
    printf("Unable to load file %s err=%d");
  }

  else
  {
    v5 = v4;
    if (fstat(v4, (__nbyte + 4)))
    {
      printf("Unable to load file %s", a1);
      close(v5);
    }

    else if (mmap(0, *(&__nbyte[12] + 4), 1, 1, v5, 0) == -1)
    {
      printf("Unable to map file %s", a1);
      close(v5);
    }

    else
    {
      if ((open(a2, 513, 420) & 0x80000000) == 0)
      {
        operator new();
      }

      printf("Unable to create file %s");
    }
  }

  result = 0xFFFFFFFFLL;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL24should_initialize_loggerv_block_invoke()
{
  v1[77] = *MEMORY[0x277D85DE8];
  PSRingBufferLoggerClientW1R1::PSRingBufferLoggerClientW1R1(v1, "logger-thread-check", 0, 0);
  if (PSRingBufferLoggerClient::checkLoggingEnabledOnServer(v1))
  {
    logging_enabled = 1;
  }

  PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(v1);
  v0 = *MEMORY[0x277D85DE8];
}

void PSRingBufferLoggerClientW1R1::PSRingBufferLoggerClientW1R1(PSRingBufferLoggerClientW1R1 *this, const char *__s, unsigned int a3, const char *a4)
{
  v8 = strlen(__s);
  if (v8 < 0x7FFFFFFFFFFFFFF8)
  {
    v9 = v8;
    if (v8 < 0x17)
    {
      v18 = v8;
      if (v8)
      {
        memcpy(&__dst, __s, v8);
      }

      *(&__dst + v9) = 0;
      v10 = v17;
      if ((v18 & 0x80u) != 0)
      {
        p_dst = __dst;
      }

      else
      {
        v10 = v18;
        p_dst = &__dst;
      }

      if (v10)
      {
        do
        {
          v12 = 0;
          v13 = *p_dst;
          do
          {
            if (v13 == asc_25EC2CE86[v12])
            {
              v13 = 95;
              *p_dst = 95;
            }

            ++v12;
          }

          while (v12 != 6);
          ++p_dst;
          v14 = v18;
          if ((v18 & 0x80u) == 0)
          {
            v15 = &__dst;
          }

          else
          {
            v15 = __dst;
          }

          if ((v18 & 0x80u) != 0)
          {
            v14 = v17;
          }
        }

        while (p_dst != &v15[v14]);
        p_dst = v15;
      }

      PSRingBufferLoggerClient::PSRingBufferLoggerClient(this, p_dst, a3, a4);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_25EC07AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSRingBufferLoggerClientW1R1::create(PSRingBufferLoggerClientW1R1 *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  result = PSRingBufferLoggerClient::_allocate(this);
  if (!result)
  {
    if (a4 <= 0x8000)
    {
      operator new();
    }

    v7 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 132);
      v10 = 136316162;
      v11 = "create";
      v12 = 2080;
      v13 = this + 16;
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = a4;
      v18 = 1024;
      v19 = 0x8000;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to create ring buffer (%s, %u) since requested size(%u) exceeds max supported size(%u)", &v10, 0x28u);
    }

    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerClientW1R1::write(PSRingBufferLoggerClientW1R1 *this, uint64_t a2, unsigned __int8 *a3, size_t a4, unint64_t *a5)
{
  if (a4 >= 0x400)
  {
    PSRingBufferLoggerClientW1R1::write();
  }

  v6 = *(this + 76);

  return PSRingBufferW1R1Writer::write(v6, a2, a3, a4, a5);
}

uint64_t PSRingBufferLoggerClientW1R1::readDecodeData(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11[81] = *MEMORY[0x277D85DE8];
  PSRingBufferW1R1Reader::PSRingBufferW1R1Reader(v11, (a1 + 16), *(a1 + 528), (*(a1 + 8) + 44), 0);
  if (a2)
  {
    v5 = PSRingBufferW1R1Reader::initFromBuffer(v11, a2);
  }

  else
  {
    v5 = PSRingBufferW1R1Reader::init(v11, 0);
  }

  if (v5)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    Hdr = PSRingBufferW1R1Reader::getHdr(v11);
    HdrSize = PSRingBufferW1R1Reader::getHdrSize(v11);
    v6 = 0;
    if (Hdr && HdrSize >= 0x208)
    {
      LODWORD(v6) = HdrSize / 0x208;
      do
      {
        (*(a3 + 16))(a3, 0, Hdr);
        Hdr += 520;
        v6 = (v6 - 1);
      }

      while (v6);
    }
  }

  PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t PSRingBufferLoggerClientW1R1::readData(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  PSRingBufferW1R1Reader::PSRingBufferW1R1Reader(v18, (a1 + 16), *(a1 + 528), (*(a1 + 8) + 44), 0);
  if (a2)
  {
    v9 = PSRingBufferW1R1Reader::initFromBuffer(v18, a2);
  }

  else
  {
    v9 = PSRingBufferW1R1Reader::init(v18, 0);
  }

  if (v9)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v19;
    for (i = v20; ; (*(a5 + 16))(a5, v15, v16, v11, i, a3, v17))
    {
      v17 = a4;
      v15 = 0;
      v16 = 0;
      if (PSRingBufferW1R1Reader::readLast(v18, &v16, &v15, a3, &v17))
      {
        break;
      }
    }

    v10 = 0;
  }

  PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(v18);
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_25EC07FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(va);
  _Unwind_Resume(a1);
}

ssize_t PSRingBufferLoggerClientW1R1::dumpBufferToFile(PSRingBufferLoggerClientW1R1 *this, PSSharedSerialDataAllocator *a2)
{
  v10[81] = *MEMORY[0x277D85DE8];
  if (this)
  {
    v2 = a2;
    Key = PSSharedResource::getKey(this);
    ID = PSSharedResource::getID(this);
    PSRingBufferW1R1Reader::PSRingBufferW1R1Reader(v10, Key, ID, (*(this + 1) + 44), 0);
    v6 = (*(*this + 64))(this, 0);
    if (PSRingBufferW1R1Reader::initFromBuffer(v10, v6))
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = PSRingBufferW1R1Reader::dumpBufferToFile(v10, v2);
    }

    PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(v10);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(PSRingBufferLoggerClientW1R1 *this)
{
  *this = &unk_2870CE660;
  v2 = *(this + 76);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSRingBufferLoggerClient::~PSRingBufferLoggerClient(this);
}

{
  PSRingBufferLoggerClientW1R1::~PSRingBufferLoggerClientW1R1(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSRingBufferLoggerClientWnR1::create(PSRingBufferLoggerClientWnR1 *this, unsigned int a2, unsigned int a3, PSAtomicWnRnArray *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 76) || *(this + 77))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (a2 <= 0x800 && a3 <= 0x400 && a4 <= 0x400)
    {
      result = PSRingBufferLoggerClient::_allocate(this);
      if (!result)
      {
        *(this + 249) = a2;
        *(this + 246) = a4;
        *(this + 250) = a3 + 32;
        *(this + 251) = 48;
        v10 = (PSAtomicWnRnArray::getMemorySize(a4) + 15) & 0xFFFFFFF0;
        *(this + 247) = v10;
        v11 = 33 * *(this + 246);
        *(this + 248) = 528 * *(this + 246);
        *(this + 252) = v10 + 16 * v11;
        mem_size = ps_atomic_ringbuffer_get_mem_size(*(this + 249), *(this + 250));
        *(this + 253) = mem_size;
        *(this + 254) = *(this + 251) + *(this + 252) + mem_size;
        operator new();
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerClientWnR1::handleDeath(PSRingBufferLoggerClientWnR1 *this, int a2)
{
  PSAtomicWnRnArray::handleDeath(this + 82, a2, 0, 0);
  ps_atomic_ringbuffer_handle_death(*(this + 122), a2);
  return 0;
}

uint64_t PSRingBufferLoggerClientWnR1::getSharedLog(PSRingBufferLoggerClientWnR1 *this)
{
  v3 = *MEMORY[0x277D85DE8];
  if (!*(this + 76) && !*(this + 77) && PSRingBufferLoggerClient::checkLoggingEnabledOnServer(this))
  {
    operator new();
  }

  result = 0xFFFFFFFFLL;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerClientWnR1::writeDecodeData(uint64_t a1, const void *a2)
{
  if (!*(a1 + 984))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  if (PSAtomicWnRnArray::acquireWriteIdx((a1 + 656), &v7, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v7;
  v6 = (*(a1 + 632) + 528 * v7);
  *v6 = *(a1 + 544);
  memcpy(v6 + 2, a2, 0x208uLL);
  result = PSAtomicWnRnArray::relinquishWriteIdx((a1 + 656), v5);
  if (result)
  {
    PSRingBufferLoggerClientWnR1::writeDecodeData();
  }

  return result;
}

uint64_t PSRingBufferLoggerClientWnR1::_readDecodeData(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 984))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (!PSAtomicWnRnArray::acquireReadIdx((a1 + 656), &v5))
  {
    (*(a2 + 16))(a2, *(*(a1 + 632) + 528 * v5), *(a1 + 632) + 528 * v5 + 8);
    if (PSAtomicWnRnArray::relinquishReadIdx((a1 + 656), v5))
    {
      PSRingBufferLoggerClientWnR1::_readDecodeData();
    }
  }

  return 0;
}

uint64_t PSRingBufferLoggerClientWnR1::readDecodeData(PSRingBufferLoggerClientWnR1 *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 && PSRingBufferLoggerClientWnR1::initFromBuffer(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  return PSRingBufferLoggerClientWnR1::_readDecodeData(this, a3);
}

uint64_t PSRingBufferLoggerClientWnR1::_read(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 996))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  while (!ps_atomic_ringbuffer_reader_acquire_entry(*(a1 + 640), v5, &v6))
  {
    (*(a2 + 16))(a2, *v6, *(v6 + 24), *(v6 + 12), *(v6 + 16), v6 + 32, *(v6 + 8));
    if (ps_atomic_ringbuffer_reader_relinquish_entry(*(a1 + 640), v5))
    {
      PSRingBufferLoggerClientWnR1::_read();
    }
  }

  return 0;
}

uint64_t PSRingBufferLoggerClientWnR1::readData(PSRingBufferLoggerClientWnR1 *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 && PSRingBufferLoggerClientWnR1::initFromBuffer(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  return PSRingBufferLoggerClientWnR1::_read(this, a3);
}

uint64_t PSRingBufferLoggerClientWnR1::dumpBufferToFile(const void **this, int __fd)
{
  v20 = *MEMORY[0x277D85DE8];
  if (write(__fd, this[121], *(this + 254)) < 0)
  {
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      ID = PSSharedResource::getID(this);
      v7 = *(this + 254);
      v8 = *__error();
      v10 = 136316162;
      v11 = "dumpBufferToFile";
      v12 = 2080;
      v13 = Key;
      v14 = 1024;
      v15 = ID;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s: Unable to write buffer (%s %d) to file: (size=%d) error=%d", &v10, 0x28u);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(PSRingBufferLoggerClientWnR1 *this)
{
  *this = &unk_2870CE6D0;
  v2 = *(this + 76);
  if (v2 || (v2 = *(this + 77)) != 0)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 81);
  if (v3)
  {
    ps_atomic_ringbuffer_delete_writer(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    ps_atomic_ringbuffer_delete_reader(v4);
  }

  PSAtomicWnRnArray::~PSAtomicWnRnArray((this + 656));

  PSRingBufferLoggerClient::~PSRingBufferLoggerClient(this);
}

{
  PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(this);

  JUMPOUT(0x25F8CA500);
}

void _dump_log_buffer(uint64_t a1, PSSharedResource *a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v9 = pbs_ringbufferlogger_shared_instance();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v10 = *(a1 + 532);
    v11 = *(a1 + 516);
    *__str = 67109634;
    v36 = v10;
    v37 = 2080;
    v38 = a1 + 1;
    v39 = 1024;
    v40 = v11;
    v12 = "LoggerServer: No log to dump for pid=%d, key=%s id=%u";
    v13 = __str;
    v14 = v9;
    v15 = 24;
LABEL_21:
    _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEFAULT, v12, v13, v15);
    goto LABEL_24;
  }

  if (!(*(*a2 + 64))(a2, 0))
  {
    v16 = pbs_ringbufferlogger_shared_instance();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v17 = *(a1 + 532);
    v18 = *(a1 + 516);
    *__str = 67109376;
    v36 = v17;
    v37 = 1024;
    LODWORD(v38) = v18;
    v12 = "LoggerServer: No data to log for pid=%d id=%u";
    v13 = __str;
    v14 = v16;
    v15 = 14;
    goto LABEL_21;
  }

  if (a3 == -1)
  {
    v6 = *(a1 + 532);
  }

  *(a1 + 528);
  is_internal_build = ps_util_is_internal_build();
  v8 = (a1 + 1);
  if (is_internal_build)
  {
    v29 = *(a1 + 516);
    snprintf(__str, 0x400uLL, "%s-%d-%s-%u-XXXXXX.%s");
  }

  else
  {
    v19 = -2128831035;
    v20 = *v8;
    if (*v8)
    {
      v21 = (a1 + 2);
      do
      {
        v19 = 16777619 * (v19 ^ v20);
        v22 = *v21++;
        v20 = v22;
      }

      while (v22);
    }

    v30 = *(a1 + 516);
    snprintf(__str, 0x400uLL, "%s-%d-%08x-%u-XXXXXX.%s");
  }

  v23 = mkstemps(__str, 5);
  if ((v23 & 0x80000000) != 0)
  {
    v27 = pbs_ringbufferlogger_shared_instance();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v32 = "_dump_log_buffer";
    v33 = 2080;
    v34 = __str;
    v12 = "LoggerServer: %s: Unable to create file: %s";
    v13 = buf;
    v14 = v27;
    v15 = 22;
    goto LABEL_21;
  }

  if (*(a1 + 528))
  {
    if (*(a1 + 528) == 1)
    {
      Key = PSSharedResource::getKey(a2);
      ID = PSSharedResource::getID(a2);
      PSRingBufferLoggerClientWnR1::PSRingBufferLoggerClientWnR1(buf, Key, ID, (*(a2 + 1) + 44));
      v26 = (*(*a2 + 64))(a2, 0);
      PSRingBufferLoggerClientWnR1::initFromBuffer(buf, v26);
      PSRingBufferLoggerClientWnR1::dumpBufferToFile(buf, v23);
      PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(buf);
    }
  }

  else
  {
    PSRingBufferLoggerClientW1R1::dumpBufferToFile(a2, v23);
  }

  close(v23);
LABEL_24:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_25EC08EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(va);
  _Unwind_Resume(a1);
}

void sub_25EC09070(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C4039E71BD5);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  v6 = v1 + 41536;
  v7 = -40960;
  do
  {
    v6 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v6) - 40;
    v7 += 40;
  }

  while (v7);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v1 + 576);
  PSSharedResource::~PSSharedResource(v1);
  _Unwind_Resume(a1);
}

uint64_t PSRingBufferLoggerServer::init(PSRingBufferLoggerServer *this, char a2, char a3)
{
  if (a2)
  {
    v5 = this + 41576;
    bzero(this + 41576, 0x88000uLL);
    v6 = 0;
    v7 = (this + 616);
    do
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(v7);
      *(this + v6 + 598640) = 0;
      *v5 = 0;
      v5 += 544;
      v6 += 8;
      v7 += 5;
    }

    while (v6 != 0x2000);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(this + 72);
    v8 = *(this + 71);
    if (v8)
    {
      *v8 = 1;
    }

    *(this + 606880) = a3;
    *(this + 138) = 1;
    pbs_ringbufferlogger_enable_for_process();
    v9 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEFAULT, "LoggerServer: PSRingBufferLoggerServer is ready", v12, 2u);
    }
  }

  else
  {
    v10 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEFAULT, "LoggerServer: PSRingBufferLoggerServer is DISABLED", buf, 2u);
    }

    *(this + 138) = 0;
  }

  return 0;
}

uint64_t PSRingBufferLoggerServer::clearLogEntry(PSRingBufferLoggerServer *this, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x400)
  {
    PSRingBufferLoggerServer::clearLogEntry();
  }

  v4 = this + 544 * a2 + 41576;
  v5 = *(this + 68 * a2 + 5262);
  v11[0] = *(this + 136 * a2 + 10523);
  v11[1] = v5;
  v6 = std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>(this + 72, v11);
  if (!v6)
  {
    v10 = 0;
    asprintf(&v10, "logResHashToEntryIdx has no mapping available, logIdx %u, logKeyHash %zu, logKey %s, logID %d, logType %u, state %u", a2, *(v4 + 65), v4 + 1, *(v4 + 129), v4[528], *v4);
    v9 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v13 = "clearLogEntry";
      v14 = 1024;
      v15 = 173;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s", buf, 0x1Cu);
    }

    abort_with_reason();
  }

  std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(this + 72, v6);
  bzero(v4, 0x220uLL);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(this + 5 * a2 + 77);
  *(this + a2 + 74830) = 0;
  *v4 = 0;
  result = *(this + 75858);
  if (result)
  {
    result = (*(result + 16))(result, 0, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferLoggerServer::dump_delete_async(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = a1;
  v6 = *MEMORY[0x277D85DE8];
  operator new();
}

void ___ZN24PSRingBufferLoggerServer17dump_delete_asyncERNSt3__16vectorIiNS0_9allocatorIiEEEE26pbs_ringbuffer_dump_reasoni_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v3 = *(v2 + 606896);

  dispatch_group_leave(v3);
}

void ___ZN24PSRingBufferLoggerServer17dump_delete_asyncERNSt3__16vectorIiNS0_9allocatorIiEEEE26pbs_ringbuffer_dump_reasoni_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  memcpy(v9, (a1 + 48), 0x220uLL);
  _dump_log_buffer(v9, *(a1 + 592), *(a1 + 608));
  if (*(a1 + 612) == 1)
  {
    v3 = *(a1 + 592);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      v4 = pbs_ringbufferlogger_shared_instance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 564);
        v9[0] = 67109120;
        v9[1] = v5;
        _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEFAULT, "LoggerServer Queue: NULL resource for id=%d", v9, 8u);
      }
    }
  }

  if (atomic_fetch_add(*(a1 + 600), 0xFFFFFFFF) == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 608), *(a1 + 613) == 1);
    }

    v7 = *(a1 + 600);
    if (v7)
    {
      MEMORY[0x25F8CA500](v7, 0x1000C4052888210);
    }
  }

  dispatch_group_leave(*(v2 + 606896));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t PSRingBufferLoggerServer::enqueueLogDelete(uint64_t a1, int a2, PSSharedResource *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 552))
  {
    v7 = 0;
    goto LABEL_12;
  }

  v5 = *(this + 67);
  v17[0] = PSSharedResource::getID(this);
  v17[1] = v5;
  v6 = std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>((a1 + 576), v17);
  v7 = v6 != 0;
  if (!v6)
  {
LABEL_12:
    v12 = *MEMORY[0x277D85DE8];
    return v7;
  }

  *buf = v17;
  v8 = *(std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::__emplace_unique_key_args<unsigned __int128,std::piecewise_construct_t const&,std::tuple<unsigned __int128 const&>,std::tuple<>>((a1 + 576), v17) + 8);
  v9 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 544 * v8 + 42092);
    *buf = 67109634;
    *&buf[4] = v8;
    LOWORD(v19) = 2080;
    *(&v19 + 2) = a1 + 544 * v8 + 41577;
    WORD5(v19) = 1024;
    HIDWORD(v19) = v10;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEFAULT, "LoggerServer: Deleting log [%u], key %s, id %d", buf, 0x18u);
  }

  if (*(a1 + 8 * v8 + 598640) != this)
  {
    PSRingBufferLoggerServer::enqueueLogDelete();
  }

  LODWORD(v16) = v8;
  v19 = 0uLL;
  *buf = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(buf, &v16, &v16 + 4, 1uLL);
  v11 = *(a1 + 544 * v8 + 41576);
  if (v11 == 3)
  {
    LODWORD(v16) = v8;
    std::vector<int>::push_back[abi:ne200100]((a1 + 606832), &v16);
    if (*buf)
    {
      *&v19 = *buf;
      operator delete(*buf);
    }

    goto LABEL_12;
  }

  if (v11 == 2)
  {
    PSRingBufferLoggerServer::dump_delete_async(a1, buf, 0, -1);
  }

  v15 = *(a1 + 544 * v8 + 42092);
  v16 = 0;
  asprintf(&v16, "delete_log called with invalid log state %u, key %s, id %u", v11, (a1 + 544 * v8 + 41577), v15);
  v14 = pbs_ringbufferlogger_shared_instance();
  PSRingBufferLoggerServer::enqueueLogDelete(v14, &v16);
  result = abort_with_reason();
  __break(1u);
  return result;
}

void sub_25EC09B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t PSRingBufferLoggerServer::handleDeath(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 552))
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v5 = *(a1 + 592);
    if (v5)
    {
      v6 = a1 + 41576;
      v28 = a1 + 616;
      v26 = a1 + 598640;
      do
      {
        v7 = *(v5 + 8);
        v8 = (v6 + 544 * v7);
        v9 = *v8;
        if (v9 == 2)
        {
          if (*(v8 + 133) == a2)
          {
            std::string::basic_string[abi:ne200100]<0>(v29, v8 + 1);
            *__p = *v29;
            *&__p[16] = v30;
            v29[1] = 0;
            v30 = 0;
            v29[0] = 0;
            v35 = *(v8 + 129);
            std::vector<std::pair<std::string,unsigned int>>::push_back[abi:ne200100](a3, __p);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            if (SHIBYTE(v30) < 0)
            {
              operator delete(v29[0]);
            }

            *v8 = 3;
            v10 = pbs_ringbufferlogger_shared_instance();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(v8 + 129);
              *__p = 67109634;
              *&__p[4] = v7;
              *&__p[8] = 2080;
              *&__p[10] = v8 + 1;
              *&__p[18] = 1024;
              *&__p[20] = v11;
              _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEFAULT, "LoggerServer: handling sdw death for log [%u], key %s, id %u, state VALID", __p, 0x18u);
            }
          }

          else
          {
            *__p = a2;
            if (std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>((v28 + 40 * v7), __p))
            {
              v12 = pbs_ringbufferlogger_shared_instance();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(v8 + 129);
                *__p = 67109634;
                *&__p[4] = v7;
                *&__p[8] = 2080;
                *&__p[10] = v8 + 1;
                *&__p[18] = 1024;
                *&__p[20] = v13;
                _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEFAULT, "LoggerServer: handling sdr death for log [%u], key %s, id %u", __p, 0x18u);
              }

              *__p = a2;
              std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::__erase_unique<unsigned int>((v28 + 40 * v7), __p);
              if (v8[528] == 1)
              {
                PSRingBufferLoggerClientWnR1::PSRingBufferLoggerClientWnR1(__p, v8 + 1, *(v8 + 129), 0);
                v14 = (*(**(v26 + 8 * v7) + 64))(*(v26 + 8 * v7), 0);
                if (!PSRingBufferLoggerClientWnR1::initFromBuffer(__p, v14))
                {
                  PSRingBufferLoggerClientWnR1::handleDeath(__p, a2);
                }

                PSRingBufferLoggerClientWnR1::~PSRingBufferLoggerClientWnR1(__p);
              }
            }
          }
        }

        else if (v9 == 1 && *(v8 + 133) == a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v29, v8 + 1);
          *__p = *v29;
          *&__p[16] = v30;
          v29[1] = 0;
          v30 = 0;
          v29[0] = 0;
          v35 = *(v8 + 129);
          std::vector<std::pair<std::string,unsigned int>>::push_back[abi:ne200100](a3, __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          *__p = v7;
          std::vector<int>::push_back[abi:ne200100](&v31, __p);
        }

        v5 = *v5;
      }

      while (v5);
      v15 = v31;
      v16 = v32;
      if (v31 != v32)
      {
        do
        {
          v17 = *v15;
          v18 = pbs_ringbufferlogger_shared_instance();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v6 + 544 * v17;
            v20 = *(v19 + 516);
            *__p = 67109634;
            *&__p[4] = v17;
            *&__p[8] = 2080;
            *&__p[10] = v19 + 1;
            *&__p[18] = 1024;
            *&__p[20] = v20;
            _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEFAULT, "LoggerServer: handling sdw death for log [%u], key %s, id %u, state INIT, cleaning up...", __p, 0x18u);
          }

          PSRingBufferLoggerServer::clearLogEntry(a1, v17);
          ++v15;
        }

        while (v15 != v16);
      }
    }

    v21 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = (a3[1] - *a3) >> 5;
      *__p = 134218240;
      *&__p[4] = v22;
      *&__p[12] = 1024;
      *&__p[14] = a2;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_DEFAULT, "LoggerServer: %zu log(s) to dump for pid %d death", __p, 0x12u);
    }

    v23 = *(a1 + 606872);
    if (v23)
    {
      (*(v23 + 16))(v23, a2, 1);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_25EC0A150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::string,unsigned int>>::push_back[abi:ne200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,unsigned int>>>(result, v11);
    }

    v12 = 32 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 6);
    v7 = 32 * v8 + 32;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = v4 + 32;
  }

  v3[1] = v7;
  return result;
}

uint64_t PSRingBufferLoggerServer::allocateLoggingBuffer(uint64_t a1, char *__source, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 0xFFFFFFFFLL;
  if (!__source || !a3)
  {
    goto LABEL_17;
  }

  *a3 = -1;
  v7 = a1 + 41576;
  if (!*(a1 + 41576))
  {
    v10 = 0;
    v3 = 0;
    goto LABEL_12;
  }

  v8 = -1;
  do
  {
    if (v8 == 1022)
    {
      v3 = 0xFFFFFFFFLL;
      goto LABEL_17;
    }

    v9 = *(v7 + 544);
    v7 += 544;
    ++v8;
  }

  while (v9);
  if (v8 <= 0x3FE)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  v10 = v8 + 1;
LABEL_12:
  strlcpy((v7 + 1), __source, 0x200uLL);
  v11 = *(__source + 257);
  *(v7 + 516) = v11;
  v12 = *(__source + 129);
  *(v7 + 520) = v12;
  *(v7 + 528) = __source[1048];
  *(v7 + 532) = *(__source + 261);
  *(v7 + 536) = *(__source + 132);
  v19[0] = v11;
  v19[1] = v12;
  if (std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>((a1 + 576), v19))
  {
    v18 = 0;
    asprintf(&v18, "Resource already exists in logResHashToEntryIdx, key %s, id %u, logType %u, SDWPid %u", __source, *(__source + 257), __source[1048], *(__source + 261));
    v17 = pbs_ringbufferlogger_shared_instance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      *&buf[4] = "allocateLoggingBuffer";
      *&buf[12] = 1024;
      *&buf[14] = 467;
      v21 = 2080;
      v22 = v18;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_FAULT, "%s:%d %s", buf, 0x1Cu);
    }

    abort_with_reason();
LABEL_21:
    PSRingBufferLoggerServer::allocateLoggingBuffer(buf);
  }

  if (*(a1 + 600) >= 0x400uLL)
  {
    goto LABEL_21;
  }

  *buf = v19;
  *(std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::__emplace_unique_key_args<unsigned __int128,std::piecewise_construct_t const&,std::tuple<unsigned __int128 const&>,std::tuple<>>((a1 + 576), v19) + 8) = v10;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear((a1 + 40 * v10 + 616));
  *(a1 + 8 * v10 + 598640) = 0;
  *v7 = 1;
  *a3 = v10;
  v13 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v7 + 516);
    *buf = 67109634;
    *&buf[4] = v10;
    *&buf[8] = 2080;
    *&buf[10] = v7 + 1;
    v21 = 1024;
    LODWORD(v22) = v14;
    _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEFAULT, "LoggerServer: Allocating log [%u], key %s, id %d", buf, 0x18u);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t PSRingBufferLoggerServer::deallocateLoggingBuffer(PSRingBufferLoggerServer *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 1064);
  if (v3 > 0x3FF)
  {
    goto LABEL_12;
  }

  v5 = a1 + 41576;
  v6 = a1 + 544 * v3 + 41576;
  if (*(v6 + 65) != *(a2 + 1032) || *(v6 + 129) != *(a2 + 1028))
  {
    v14 = pbs_ringbufferlogger_shared_instance();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      result = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

    v15 = &v5[544 * *(a2 + 1064)];
    v16 = v15 + 1;
    LODWORD(v15) = *(v15 + 129);
    v17 = *(a2 + 1028);
    v22 = 136315906;
    *v23 = v16;
    *&v23[8] = 1024;
    *&v23[10] = v15;
    v24 = 2080;
    v25 = a2;
    v26 = 1024;
    v27 = v17;
    v18 = "Invalid call to deallocateLoggingBuffer, logKey %s, logID %u, msgKey %s, msgID %d";
    v19 = v14;
    v20 = 34;
LABEL_11:
    _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
    goto LABEL_12;
  }

  v7 = *v6;
  v8 = pbs_ringbufferlogger_shared_instance();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    LOWORD(v22) = 0;
    v18 = "Invalid state == PBS_RINGBUFFER_LOG_STATE_INVALID";
    v19 = v8;
    v20 = 2;
    goto LABEL_11;
  }

  if (v9)
  {
    v10 = *(a2 + 1064);
    v11 = &v5[544 * v10];
    v12 = v11 + 1;
    LODWORD(v11) = *(v11 + 129);
    v22 = 67109634;
    *v23 = v10;
    *&v23[4] = 2080;
    *&v23[6] = v12;
    v24 = 1024;
    LODWORD(v25) = v11;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEFAULT, "LoggerServer: Deallocating log [%u], key %s, id %u", &v22, 0x18u);
  }

  PSRingBufferLoggerServer::clearLogEntry(a1, *(a2 + 1064));
  result = 0;
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerServer::finalizeLoggingBuffer(uint64_t a1, char *a2, PSSharedResource *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 552))
  {
    v4 = a2;
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v17, __p);
    if (SBYTE3(v22) < 0)
    {
      operator delete(*__p);
    }

    v17[0] = PSSharedResource::getID(a3);
    v17[1] = v6;
    if (!std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>((a1 + 576), v17))
    {
      PSRingBufferLoggerServer::finalizeLoggingBuffer(__p, a3);
    }

    *__p = v17;
    v7 = *(std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::__emplace_unique_key_args<unsigned __int128,std::piecewise_construct_t const&,std::tuple<unsigned __int128 const&>,std::tuple<>>((a1 + 576), v17) + 8);
    if (v7 == 1024)
    {
      PSRingBufferLoggerServer::finalizeLoggingBuffer(__p, v4);
    }

    v8 = (a1 + 544 * v7 + 41576);
    v9 = *v8;
    if (v9 == 1)
    {
      v10 = *(a1 + 544 * v7 + 42108);
      v11 = *(v4 + 1032);
      if (v10 == v11)
      {
        if ((*(a3 + 598) & 0x10) != 0)
        {
          *(a1 + 8 * v7 + 598640) = a3;
          *v8 = 2;
          goto LABEL_10;
        }

LABEL_19:
        PSRingBufferLoggerServer::finalizeLoggingBuffer(__p, v8, v4);
      }

      v14 = *(a1 + 544 * v7 + 42104);
      v15 = *(v4 + 1028);
      v16 = 0;
      asprintf(&v16, "logInfo[idx].logSDWPid != pid, logSDWPid: %u, pid: %u, type: %u, key: %s, id: %d", v10, v11, v14, v4, v15);
      v4 = pbs_ringbufferlogger_shared_instance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *__p = 136315650;
        *&__p[4] = "finalizeLoggingBuffer";
        v19 = 1024;
        v20 = 547;
        v21 = 2080;
        v22 = v16;
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
      asprintf(&v16, "Log state != PBS_RINGBUFFER_LOG_STATE_INITIALIZING, state = %d, type: %u, key: %s, id: %d", v9, *(a1 + 544 * v7 + 42104), v4, *(v4 + 1028));
      v4 = pbs_ringbufferlogger_shared_instance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *__p = 136315650;
        *&__p[4] = "finalizeLoggingBuffer";
        v19 = 1024;
        v20 = 542;
        v21 = 2080;
        v22 = v16;
LABEL_17:
        _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", __p, 0x1Cu);
      }
    }

    abort_with_reason();
    goto LABEL_19;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSRingBufferLoggerServer::registerWithLoggingBuffer(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 552))
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 1032);
  v14[0] = *(a2 + 1028);
  v14[1] = v4;
  if (!std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>((a1 + 576), v14))
  {
    dispatch_group_leave(*(a1 + 606896));
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *buf = v14;
  v5 = *(std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::__emplace_unique_key_args<unsigned __int128,std::piecewise_construct_t const&,std::tuple<unsigned __int128 const&>,std::tuple<>>((a1 + 576), v14) + 8);
  v6 = a1 + 544 * v5 + 41576;
  if (*v6 == 3)
  {
    PSRingBufferLoggerServer::registerWithLoggingBuffer();
  }

  v7 = (a2 + 1044);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((a1 + 40 * v5 + 616), v7);
  v8 = pbs_ringbufferlogger_shared_instance();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v11 = *v7;
    v12 = *(v6 + 516);
    *buf = 67109890;
    *&buf[4] = v11;
    v16 = 1024;
    v17 = v5;
    v18 = 2080;
    v19 = v6 + 1;
    v20 = 1024;
    v21 = v12;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEFAULT, "LoggerServer: Registering SDR (%u) with log [%u], key %s, id %d", buf, 0x1Eu);
LABEL_6:
    result = 0;
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferLoggerServer::dumpLogBuffers(PSRingBufferLoggerServer *this, int a2)
{
  if (*(this + 138))
  {
    memset(__p, 0, 24);
    for (i = *(this + 74); i; i = *i)
    {
      v5 = *(i + 8);
      if (*(this + 544 * v5 + 41576) == 2 && *(*(this + 74829) + 3 * v5 + 2) == 1)
      {
        if (*(this + v5 + 74830))
        {
          v8 = *(i + 8);
          std::vector<int>::push_back[abi:ne200100](__p, &v8);
        }
      }
    }

    PSRingBufferLoggerServer::dump_delete_async(this, __p, 1, a2);
  }

  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "LoggerServer: dumpLogBuffers failed because the server is not initialized", __p, 2u);
  }

  return 0;
}

void sub_25EC0ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSRingBufferLoggerServer::shareResource(PSRingBufferLoggerServer *this)
{
  v1 = *(this + 70);
  if (v1)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *PSRingBufferLoggerServer::notifyOnLogDump(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 606856) = result;
  return result;
}

void *PSRingBufferLoggerServer::notifyOnDeathHandling(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 606872) = result;
  return result;
}

void *PSRingBufferLoggerServer::notifyOnLogDelete(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 606864) = result;
  return result;
}

void PSRingBufferLoggerServer::~PSRingBufferLoggerServer(dispatch_group_t *this)
{
  v2 = (this + 75776);
  *this = &unk_2870CE738;
  if (this[75861])
  {
    dispatch_group_wait(this[75862], 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(v2 + 85);
  }

  else
  {
    v3 = 0;
  }

  dispatch_release(v3);
  dispatch_release(*(v2 + 86));
  v4 = this[70];
  if (v4)
  {
    (*(v4->isa + 1))(v4);
  }

  v5 = *(v2 + 81);
  if (v5)
  {
    _Block_release(v5);
    *(v2 + 81) = 0;
  }

  v6 = *(v2 + 83);
  if (v6)
  {
    _Block_release(v6);
    *(v2 + 83) = 0;
  }

  v7 = *(v2 + 82);
  if (v7)
  {
    _Block_release(v7);
    *(v2 + 82) = 0;
  }

  v8 = *(v2 + 78);
  if (v8)
  {
    *(v2 + 79) = v8;
    operator delete(v8);
  }

  for (i = 5192; i != 72; i -= 5)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&this[i]);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((this + 72));

  PSSharedResource::~PSSharedResource(this);
}

{
  PSRingBufferLoggerServer::~PSRingBufferLoggerServer(this);

  JUMPOUT(0x25F8CA500);
}

void *std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::find<unsigned __int128>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = __ROR8__(v3 + 16, 16);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)));
  v6 = (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ v3;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v11 == v6)
      {
        if (result[3] == v3 && result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v8)
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

void *std::__hash_table<std::__hash_value_type<unsigned __int128,unsigned int>,std::__unordered_map_hasher<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::hash<unsigned __int128>,std::equal_to<unsigned __int128>,true>,std::__unordered_map_equal<unsigned __int128,std::__hash_value_type<unsigned __int128,unsigned int>,std::equal_to<unsigned __int128>,std::hash<unsigned __int128>,true>,std::allocator<std::__hash_value_type<unsigned __int128,unsigned int>>>::__emplace_unique_key_args<unsigned __int128,std::piecewise_construct_t const&,std::tuple<unsigned __int128 const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[3] != v2 || v9[2] != *a2)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EC0B2C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,unsigned int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,unsigned int>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x1Cu);
}

uint64_t PSRingBufferW1R1Writer::_init(PSRingBufferW1R1Writer *this, const unsigned __int8 *a2)
{
  Data = PSSharedSerialData::getData(*(this + 76));
  *(this + 74) = Data;
  *Data = 0xACE0FBA5ELL;
  *(Data + 8) = vuzp2q_s32(vextq_s8(*(this + 556), *(this + 556), 4uLL), *(this + 556));
  v8 = 0;
  pthread_threadid_np(0, &v8);
  result = getpid();
  v6 = *(this + 74);
  v7 = v8;
  *(v6 + 24) = result;
  *(v6 + 28) = v7;
  atomic_store(0, (v6 + 32));
  if (a2)
  {
    result = memcpy((*(this + 74) + 40), a2, *(this + 139));
  }

  *(this + 75) = Data + *(this + 140);
  return result;
}

uint64_t PSRingBufferW1R1Writer::init(PSRingBufferW1R1Writer *this, const unsigned __int8 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!*(this + 138))
  {
    *(this + 138) = 1;
    operator new();
  }

  result = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *PSRingBufferW1R1Writer::writeAndAdvanceOffset(PSRingBufferW1R1Writer *this, unsigned __int8 *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v6 = *(this + 143);
  v7 = *(this + 141) - v6;
  v8 = *(this + 75);
  v9 = (__n - v7);
  if (__n <= v7)
  {
    __n = __n;
    v10 = (v8 + v6);
  }

  else
  {
    memcpy((v8 + v6), __src, v7);
    v10 = *(this + 75);
    __src = &v4[v7];
    __n = v9;
  }

  result = memcpy(v10, __src, __n);
  *(this + 143) = ((*(this + 143) + v3) % *(this + 141) + 7) & 0xFFFFFFF8;
  return result;
}

uint64_t PSRingBufferW1R1Writer::_write(PSRingBufferW1R1Writer *this, uint64_t a2, unsigned __int8 *a3, size_t a4, unint64_t *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = ((a4 + 7) & 0xFFFFFFF8) + 24;
  if (v5 <= *(this + 141))
  {
    v12 = atomic_load((*(this + 74) + 32));
    while ((v12 & 0x2000000000000000) == 0)
    {
      v13 = (((v12 >> 46) & 0x7FFF) + ((v12 >> 31) & 0x7FFF)) % *(this + 141);
      v14 = (v12 + v5) & 0x7FFFFFFF | (v5 << 31) & 0x3FFC00000000 | ((v13 & 0x7FFF) << 46);
      v15 = v12;
      atomic_compare_exchange_strong((*(this + 74) + 32), &v15, v14 | 0x4000000000000000);
      v16 = v15 == v12;
      v12 = v15;
      if (v16)
      {
        *(this + 143) = v13;
        v17 = mach_continuous_time();
        v18 = *(this + 75);
        v19 = *(this + 143);
        *(v18 + v19) = v17;
        v20 = *(this + 141);
        v21 = (((v19 + 8) % v20) + 7) & 0xFFFFFFF8;
        *(v18 + v21) = a2;
        *(this + 143) = ((v21 + 8) % v20 + 7) & 0xFFFFFFF8;
        PSRingBufferW1R1Writer::writeAndAdvanceOffset(this, a3, a4);
        v22 = *(this + 143);
        *(*(this + 75) + v22) = v14 | 0xC000000000000000;
        *(this + 143) = ((v22 + 8) % *(this + 141) + 7) & 0xFFFFFFF8;
        v23 = atomic_load((*(this + 74) + 32));
        v24 = v23;
        do
        {
          atomic_compare_exchange_strong((*(this + 74) + 32), &v24, v23 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000);
          v16 = v24 == v23;
          v23 = v24;
        }

        while (!v16);
        result = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "_write";
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s: write size exceeds buffer size\n", &v26, 0xCu);
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferW1R1Writer::~PSRingBufferW1R1Writer(PSRingBufferW1R1Writer *this)
{
  *this = &unk_2870CE790;
  v2 = *(this + 76);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSRingBufferW1R1Writer::~PSRingBufferW1R1Writer(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSRingBufferW1R1Reader::init(PSRingBufferW1R1Reader *this, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!*(this + 138))
  {
    *(this + 138) = 1;
    *(this + 158) = a2;
    operator new();
  }

  result = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSRingBufferW1R1Reader::initFromBuffer(PSRingBufferW1R1Reader *this, unsigned __int8 *a2)
{
  *(this + 158) = 1;
  *(this + 75) = a2;
  v2 = *(a2 + 8);
  *(this + 556) = vzip2q_s32(vzip1q_s32(v2, vextq_s8(v2, v2, 0xCuLL)), v2);
  *(this + 72) = -1;
  *(this + 584) = 0;
  *(this + 143) = 0;
  *(this + 77) = *(a2 + 3);
  *(this + 76) = &a2[v2.u32[2]];
  if (*a2 == 0xACE0FBA5ELL)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PSRingBufferW1R1Reader::_readLast(PSRingBufferW1R1Reader *this, unint64_t *a2, unint64_t *a3, unsigned __int8 *__dst, unsigned int *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = atomic_load((*(this + 75) + 32));
  if (*(this + 584))
  {
    goto LABEL_14;
  }

  v7 = *(this + 72);
  if (((v7 ^ v6) & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_14;
  }

  if (v7 == -1)
  {
    *(this + 72) = v6;
    *(this + 584) = 0;
    v9 = (v6 >> 31) & 0x7FFF;
  }

  else
  {
    v9 = (v7 >> 31) & 0x7FFF;
    if ((v6 & 0x7FFFFFFF) - (*(this + 72) & 0x7FFFFFFFLL) > *(this + 141) - v9)
    {
      v10 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(this + 132);
        v34 = 136315906;
        v35 = "PSRingBufferW1R1";
        v36 = 2080;
        v37 = this + 16;
        v38 = 1024;
        v39 = v11;
        v40 = 2080;
        v41 = "_readLast";
        v12 = "%s (key=%s, id=%u) %s: stopping read, writer overwrote data";
LABEL_12:
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, v12, &v34, 0x26u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v6 = *(this + 72);
  }

  v13 = v9 - 24;
  if (v9 - 24 > *a5)
  {
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(this + 132);
      v34 = 136315906;
      v35 = "PSRingBufferW1R1";
      v36 = 2080;
      v37 = this + 16;
      v38 = 1024;
      v39 = v14;
      v40 = 2080;
      v41 = "_readLast";
      v12 = "%s (key=%s, id=%u) %s: not enough memory to read";
      goto LABEL_12;
    }

LABEL_13:
    *(this + 584) = 1;
LABEL_14:
    *(this + 143) = 0;
    *(this + 72) = -1;
    result = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  *a5 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v17 = (v6 >> 46) & 0x7FFF;
    v18 = *(this + 76);
    v19 = *(this + 141);
    if (((*(v18 + (v9 + v17 + v19 - 8) % v19) ^ v6) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      *a2 = *(v18 + v17);
      v20 = (v17 + 8) % v19;
      *a3 = *(v18 + v20);
      v21 = (v20 + 8) % v19;
      *a5 = v13;
      v22 = *(this + 141) - v21;
      v23 = (v18 + v21);
      v24 = v13 - v22;
      if (v13 <= v22)
      {
        v25 = __dst;
        v26 = v9 - 24;
      }

      else
      {
        memcpy(__dst, v23, (*(this + 141) - v21));
        v25 = &__dst[v22];
        v23 = *(this + 76);
        v26 = v24;
      }

      memcpy(v25, v23, v26);
    }
  }

  v27 = *(*(this + 76) + (((*(this + 72) >> 46) & 0x7FFFLL) + *(this + 141) - 8) % *(this + 141));
  v28 = atomic_load((*(this + 75) + 32));
  v29 = v28 & 0x7FFFFFFF;
  v30 = (*(this + 72) >> 31) & 0x7FFFLL;
  if (v29 - (*(this + 72) & 0x7FFFFFFFLL) > *(this + 141) - v30)
  {
    v31 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(this + 132);
      v34 = 136315906;
      v35 = "PSRingBufferW1R1";
      v36 = 2080;
      v37 = this + 16;
      v38 = 1024;
      v39 = v32;
      v40 = 2080;
      v41 = "_readLast";
      _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_DEBUG, "%s (key=%s, id=%u) %s: stopping read, writer overwrote data", &v34, 0x26u);
    }

    goto LABEL_14;
  }

  if ((*(this + 72) & 0x7FFFFFFFLL) == v30 || (v33 = *(this + 143), v29 <= v33))
  {
    result = 0;
    *(this + 584) = 1;
    *(this + 143) = 0;
  }

  else
  {
    result = 0;
    *(this + 143) = v33 + v30;
    *(this + 72) = v27;
  }

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

ssize_t PSRingBufferW1R1Reader::_dumpBufferToFile(PSRingBufferW1R1Reader *this, int __fd)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(this + 158))
  {
    v3 = atomic_load((*(this + 75) + 32));
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong((*(this + 75) + 32), &v4, v3 | 0x2000000000000000);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
    v6 = write(__fd, *(this + 75), *(this + 142));
    if (v6 < 0)
    {
      v7 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        Key = PSSharedResource::getKey(this);
        ID = PSSharedResource::getID(this);
        v10 = *(this + 142);
        v11 = *__error();
        v17 = 136316162;
        v18 = "_dumpBufferToFile";
        v19 = 2080;
        v20 = Key;
        v21 = 1024;
        v22 = ID;
        v23 = 1024;
        v24 = v10;
        v25 = 1024;
        v26 = v11;
        _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s: Unable to write buffer (%s %d) to file: (size=%d) error=%d", &v17, 0x28u);
      }
    }

    v12 = atomic_load((*(this + 75) + 32));
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong((*(this + 75) + 32), &v13, v12 & 0xDFFFFFFFFFFFFFFFLL);
      v5 = v13 == v12;
      v12 = v13;
    }

    while (!v5);
    result = v6 >> 63;
  }

  else
  {
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "_dumpBufferToFile";
      v19 = 2080;
      v20 = PSSharedResource::getKey(this);
      v21 = 1024;
      v22 = PSSharedResource::getID(this);
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s: Unable to dump buffer (%s %d) to file since missing write permission on underlying buffer:", &v17, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(PSRingBufferW1R1Reader *this)
{
  *this = &unk_2870CE7D0;
  v2 = *(this + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 80) = 0;
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSRingBufferW1R1Reader::~PSRingBufferW1R1Reader(this);

  JUMPOUT(0x25F8CA500);
}

void PSClientProxy::PSClientProxy(PSClientProxy *this, int a2, int a3)
{
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 5) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  *(this + 24) = 0;
  *(this + 13) = a2;
  *(this + 14) = a3;
}

uint64_t PSClientProxy::addAllowedConsumerResource(uint64_t a1, const void **a2)
{
  getObfuscatedKeyMap(v7);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v7, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v7);
  if (!v4)
  {
    return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 24, a2);
  }

  getObfuscatedKeyMap(v7);
  v7[6] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, a2);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 24, v5 + 5);
  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v7);
}

void sub_25EC0C86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t getObfuscatedKeyMap@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  result = std::unordered_map<std::string,std::string>::unordered_map(a1, getObfuscatedKeyMap(void)::s_obfuscatedKeyMap);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EC0C9A8(_Unwind_Exception *a1)
{
  v4 = v2 + 48;
  v5 = -96;
  do
  {
    v4 = std::pair<std::string const,std::string>::~pair(v4) - 48;
    v5 += 48;
  }

  while (v5);
  MEMORY[0x25F8CA500](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t PSClientProxy::addAllowedProducerResource(uint64_t a1, const void **a2)
{
  getObfuscatedKeyMap(v7);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v7, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v7);
  if (!v4)
  {
    return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
  }

  getObfuscatedKeyMap(v7);
  v7[6] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, a2);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5 + 5);
  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v7);
}

void sub_25EC0CAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[33],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25EC0CBFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EC0CEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_25EC0D030(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_25EC0D4AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EC0D9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t *PSResourcePIDTracker::startTracking(PSResourcePIDTracker *this, int a2)
{
  v5 = a2;
  if (std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this, &v5))
  {
    v6 = &v5;
    result = std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this, &v5);
    v4 = *(result + 5) + 1;
  }

  else
  {
    v6 = &v5;
    result = std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this, &v5);
    v4 = 1;
  }

  *(result + 5) = v4;
  return result;
}

uint64_t PSResourcePIDTracker::stopTracking(PSResourcePIDTracker *this, int a2)
{
  v8 = a2;
  v3 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this, &v8);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v9 = &v8;
  v5 = std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this, &v8);
  --*(v5 + 5);
  v6 = *(v4 + 5);
  if (v6)
  {
    if (v6 == -1)
    {
      PSResourcePIDTracker::stopTracking(&v9);
    }
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(this, v4);
  }

  return 0;
}

uint64_t PSResourcePIDTracker::resetTracking(PSResourcePIDTracker *this, int a2)
{
  v5 = a2;
  v3 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this, &v5);
  if (!v3)
  {
    return 2;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(this, v3);
  return 0;
}

uint64_t PSResourcePIDTracker::toString(PSResourcePIDTracker *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v21);
  std::ostream::put();
  std::ostream::flush();
  v4 = this + 16;
  v5 = MEMORY[0x277D82680];
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "PID: ", 5);
    v9 = MEMORY[0x25F8CA3A0](v8, v7);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Ref Count: ", 12);
    v11 = MEMORY[0x25F8CA3B0](v10, v6);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v21, v5);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "}", 1);
  std::stringbuf::str();
  v15[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v13;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8CA4D0](&v20);
}

void sub_25EC0DFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::locale::~locale((v25 - 88));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x25F8CA4D0](&a25);
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

void sub_25EC0E29C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F8CA4D0](v1);
  _Unwind_Resume(a1);
}

void PSProcessIDTracker::dumpProcInfo(PSProcessIDTracker *this)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "Dump the per pid registered clients", buf, 2u);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v7 = *(v3 + 4);
          v8 = v3[3];
          v9 = *(v8 + 72);
          v10 = *(v8 + 32);
          *buf = 67175169;
          v29 = v7;
          v30 = 2049;
          v31 = v9;
          v32 = 2049;
          v33 = v10;
          _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "Pid %{private}d registered readers=%{private}zu, writers=%{private}zu", buf, 0x1Cu);
        }

        v11 = v3[3];
        v12 = *(v11 + 72);
        v27 = *(v11 + 32);
        if (v12)
        {
          v13 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            v14 = *(v3 + 4);
            *buf = 67174657;
            v29 = v14;
            _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "Pid %{private}d registered readers", buf, 8u);
            v11 = v3[3];
          }

          v15 = *(v11 + 64);
          if (v15)
          {
            v16 = _ps_buffer_log;
            do
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = v15 + 3;
                if (*(v15 + 47) < 0)
                {
                  v17 = *v17;
                }

                v18 = *(v15 + 4);
                *buf = 67174915;
                v29 = v18;
                v30 = 2081;
                v31 = v17;
                _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "procID=%{private}d %{private}s", buf, 0x12u);
                v16 = _ps_buffer_log;
              }

              v15 = *v15;
            }

            while (v15);
            v11 = v3[3];
          }
        }

        if (*(v11 + 32))
        {
          v19 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            v20 = *(v3 + 4);
            *buf = 67174657;
            v29 = v20;
            _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "Pid %{private}d registered writers", buf, 8u);
            v11 = v3[3];
          }

          v21 = *(v11 + 24);
          if (v21)
          {
            v22 = _ps_buffer_log;
            do
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = v21 + 3;
                if (*(v21 + 47) < 0)
                {
                  v23 = *v23;
                }

                v24 = *(v21 + 4);
                *buf = 67174915;
                v29 = v24;
                v30 = 2081;
                v31 = v23;
                _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_ERROR, "procID=%{private}d %{private}s", buf, 0x12u);
                v22 = _ps_buffer_log;
              }

              v21 = *v21;
            }

            while (v21);
          }
        }

        v4 += v12;
        v5 += v27;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v25 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174913;
      v29 = v4;
      v30 = 1025;
      LODWORD(v31) = v5;
      _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_ERROR, "Finished dumping the per pid registered clients. Total readers=%{private}d, total writers=%{private}d", buf, 0xEu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t PSProcessIDTracker::registerShbufferGroup(PSProcessIDTracker *this, int a2, char *a3, int a4, unsigned int *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v5 = 2;
  if (!a3 || a2 < 1 || !a5)
  {
    goto LABEL_22;
  }

  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = a3;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_DEBUG, "Register Buffer Group Key: (%s) Pid: (%d)", buf, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, a3);
  v13 = *(this + 1);
  v12 = *(this + 2);
  if (v13 == v12)
  {
    v14 = *this;
    v22 = v14;
    *this = v14 + 1;
    if (v14 + 1 >= 0x401)
    {
      v16 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67175427;
        *&buf[4] = 1024;
        *&buf[8] = 2081;
        *&buf[10] = a3;
        v26 = 1025;
        v27 = a2;
        v28 = 1025;
        v29 = a4;
        _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "PID Tracker has reached max registered clients (%{private}d) when registering key %{private}s for pid %{private}d. isReader=%{private}d.", buf, 0x1Eu);
      }

      PSProcessIDTracker::dumpProcInfo(this);
      v5 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *v13;
    v22 = *v13;
    v15 = v12 - (v13 + 1);
    if (v12 != v13 + 1)
    {
      memmove(v13, v13 + 1, v12 - (v13 + 1));
    }

    *(this + 2) = v13 + v15;
  }

  v17 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v24);
  *a5 = v14;
  if (!v17)
  {
    operator new();
  }

  v18 = v17[3];
  *buf = &v22;
  if (a4)
  {
    v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v18 + 48), &v22);
  }

  else
  {
    v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v18 + 8), &v22);
  }

  std::string::operator=(v19 + 1, &__str);
  v5 = 0;
LABEL_20:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t PSProcessIDTracker::unregisterShbufferGroup(PSProcessIDTracker *this, int a2, unsigned int a3, char *a4, int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v51 = a2;
  v5 = 2;
  if (a2 < 1 || !a4)
  {
    goto LABEL_46;
  }

  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = a4;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "UnRegister Buffer Group Key: (%s) Pid: (%d)", buf, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, a4);
  v11 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v51);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_43;
  }

  v13 = v11[3];
  if (!a5)
  {
    v17 = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(v13 + 1, &v50);
    if (!v17)
    {
      goto LABEL_43;
    }

    v18 = *(v17 + 47);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v26 = v17 + 3;
      v19 = v17[3];
      v18 = v26[1];
    }

    else
    {
      v19 = v17 + 3;
    }

    v27 = (v55 & 0x80u) == 0 ? v55 : *&buf[8];
    v28 = (v55 & 0x80u) == 0 ? buf : *buf;
    v29 = v27 >= v18 ? v18 : v27;
    v30 = memcmp(v19, v28, v29);
    if (v27 != v18 || v30 != 0)
    {
      goto LABEL_43;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(v13 + 1, &v50);
LABEL_48:
    if (!v13[9] && !v13[4])
    {
      v34 = v12[3];
      if (v34)
      {
        std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(v34 + 48);
        std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(v34 + 8);
        MEMORY[0x25F8CA500](v34, 0x10A0C40C5870BDELL);
      }

      v35 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 67109120;
        v53 = v51;
        _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_DEFAULT, "Last ShbufferGroup unregistered. Erasing pid:(%d)", v52, 8u);
      }

      std::__hash_table<std::__hash_value_type<int,ProcInfo *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ProcInfo *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ProcInfo *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ProcInfo *>>>::__erase_unique<int>(this + 4, &v51);
    }

    v37 = *(this + 2);
    v36 = *(this + 3);
    if (v37 >= v36)
    {
      v39 = *(this + 1);
      v40 = v37 - v39;
      v41 = (v37 - v39) >> 2;
      v42 = v41 + 1;
      if ((v41 + 1) >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v43 = v36 - v39;
      if (v43 >> 1 > v42)
      {
        v42 = v43 >> 1;
      }

      v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
      v45 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v44)
      {
        v45 = v42;
      }

      if (v45)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 8, v45);
      }

      v46 = (v37 - v39) >> 2;
      v47 = (4 * v41);
      v48 = (4 * v41 - 4 * v46);
      *v47 = v50;
      v38 = v47 + 1;
      memcpy(v48, v39, v40);
      v49 = *(this + 1);
      *(this + 1) = v48;
      *(this + 2) = v38;
      *(this + 3) = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      *v37 = v50;
      v38 = v37 + 4;
    }

    *(this + 2) = v38;
    v5 = 0;
    if ((*(this + 72) & 1) == 0)
    {
      *(this + 72) = 1;
    }

    goto LABEL_44;
  }

  v14 = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(v13 + 6, &v50);
  if (v14)
  {
    v15 = *(v14 + 47);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v20 = v14 + 3;
      v16 = v14[3];
      v15 = v20[1];
    }

    else
    {
      v16 = v14 + 3;
    }

    v21 = (v55 & 0x80u) == 0 ? v55 : *&buf[8];
    v22 = (v55 & 0x80u) == 0 ? buf : *buf;
    v23 = v21 >= v15 ? v15 : v21;
    v24 = memcmp(v16, v22, v23);
    if (v21 == v15 && v24 == 0)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(v13 + 6, &v50);
      goto LABEL_48;
    }
  }

LABEL_43:
  v5 = 3;
LABEL_44:
  if (v55 < 0)
  {
    operator delete(*buf);
  }

LABEL_46:
  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25EC0ECDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSProcessIDTracker::writersForPid@<X0>(PSProcessIDTracker *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  result = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v6);
  if (result)
  {
    for (i = *(result + 24) + 24; ; result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, (i + 24)))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }
  }

  return result;
}

void PSProcessIDTracker::bufferIDsForWritersForPID(PSProcessIDTracker *this@<X0>, char *__s@<X2>, int a3@<W1>, void *a4@<X8>)
{
  v17 = a3;
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  if (a3 >= 1 && __s)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    v6 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v17);
    if (v6)
    {
      for (i = *(v6[3] + 24); i; i = *i)
      {
        v8 = *(i + 47);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *(i + 3);
          v8 = *(i + 4);
        }

        else
        {
          v9 = i + 6;
        }

        if ((v16 & 0x80u) == 0)
        {
          v10 = v16;
        }

        else
        {
          v10 = __p[1];
        }

        if ((v16 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        if (v10 == v8 && v13 == 0)
        {
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a4, i + 4);
        }
      }
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25EC0EE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned int>::destroy(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

uint64_t PSProcessIDTracker::readersForPid@<X0>(PSProcessIDTracker *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  result = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v6);
  if (result)
  {
    for (i = *(result + 24) + 64; ; result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, (i + 24)))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }
  }

  return result;
}

void PSProcessIDTracker::bufferIDsForReadersForPID(PSProcessIDTracker *this@<X0>, char *__s@<X2>, int a3@<W1>, void *a4@<X8>)
{
  v17 = a3;
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  if (a3 >= 1 && __s)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    v6 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 4, &v17);
    if (v6)
    {
      for (i = *(v6[3] + 64); i; i = *i)
      {
        v8 = *(i + 47);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *(i + 3);
          v8 = *(i + 4);
        }

        else
        {
          v9 = i + 6;
        }

        if ((v16 & 0x80u) == 0)
        {
          v10 = v16;
        }

        else
        {
          v10 = __p[1];
        }

        if ((v16 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        if (v10 == v8 && v13 == 0)
        {
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a4, i + 4);
        }
      }
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25EC0F030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned int>::destroy(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

void PSProcessIDTracker::~PSProcessIDTracker(PSProcessIDTracker *this)
{
  for (i = *(this + 6); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(v3 + 48);
      std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(v3 + 8);
      MEMORY[0x25F8CA500](v3, 0x10A0C40C5870BDELL);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 32);
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8CA480](a1 + 8);
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

void sub_25EC0F504(_Unwind_Exception *a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F8CA380](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F8CA390](v13);
  return a1;
}

void sub_25EC0F774(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F8CA390](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25EC0F754);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25EC0F9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,ProcInfo *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ProcInfo *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ProcInfo *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ProcInfo *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::string>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,ProcInfo *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ProcInfo *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ProcInfo *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ProcInfo *>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

PSResourceFactory *ps_buffer_delete_factory(PSResourceFactory *result)
{
  if (result)
  {
    PSResourceFactory::~PSResourceFactory(result);

    JUMPOUT(0x25F8CA500);
  }

  return result;
}

uint64_t ps_buffer_group_operation_async_lock(char *a1, const char *a2, const void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x888uLL);
  strlcpy(v9, a2, 0x200uLL);
  v13 = 1;
  v10 = getpid();
  v11 = 257;
  v12 = _Block_copy(a3);
  PSCommsClient::send(a1, v8, 0x888u, 0, 1);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ps_buffer_group_operation_async_unlock(char *a1, const char *a2, const void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x888uLL);
  strlcpy(v9, a2, 0x200uLL);
  v13 = 2;
  v10 = getpid();
  v11 = 257;
  v12 = _Block_copy(a3);
  PSCommsClient::send(a1, v8, 0x888u, 0, 1);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

PSResourceFactoryNotifier *ps_buffer_delete_factory_notifier(PSResourceFactoryNotifier *result)
{
  if (result)
  {
    PSResourceFactoryNotifier::~PSResourceFactoryNotifier(result);

    JUMPOUT(0x25F8CA500);
  }

  return result;
}

uint64_t ps_buffer_factory_notifier_send_death_message(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ps_util_is_testing_enabled();
  if (result)
  {
    v6[0] = 0x6574637800000000;
    *(v6 + 7) = 7631717;
    v7 = a2;
    if (a1)
    {
      result = PSResourceFactoryNotifier::notify(a1, v6);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSResourceFactory::notify_cb(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 60);
  *(v2 + 2104) = *(a2 + 44);
  *(v2 + 2120) = v3;
  PSResourceFactory::handleResourceFactoryMessage(a1, v2, *(a2 + 16), *(a2 + 32), *(a2 + 40));
  return 0;
}

uint64_t PSResourceFactory::notify(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 60);
  *(v2 + 2104) = *(a2 + 44);
  *(v2 + 2120) = v3;
  PSResourceFactory::handleResourceFactoryMessage(a1, v2, *(a2 + 16), *(a2 + 32), *(a2 + 40));
  return 0;
}

const void *PSResourceFactory::getResource(PSResourceFactory *this, char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(this, __p);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v12 = "getResource";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s Did not find resource for key. %s \n", buf, 0x16u);
    }

    v5 = 0;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25EC106C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *PSResourceFactory::getWaitingPorts(PSResourceFactory *this, char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(this + 5, __p);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v12 = "getWaitingPorts";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s Did not find resource for key. %s \n", buf, 0x16u);
    }

    v5 = 0;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25EC107DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::eraseResource(PSResourceFactory *this, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v11, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(this, v11);
  if (v4)
  {
    v5 = v4[5];
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__erase_unique<std::string>(this, __p);
    if (v16 < 0)
    {
      operator delete(*__p);
    }

    if (v5)
    {
      v6 = *(v5 + 4);
      *(v5 + 3) = 0;
      *(v5 + 4) = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v5 + 40);
      v7 = *(v5 + 4);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      MEMORY[0x25F8CA500](v5, 0x10A0C40220BCF41);
    }

    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *__p = 136315394;
      *&__p[4] = "PSResourceFactory";
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: key (%s) erased from resource map\n", __p, 0x16u);
    }
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_25EC1095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void PSResourceFactory::_eraseResources(PSResourceFactory *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (v1)
  {
    v15 = 0;
    do
    {
      if (*(v1 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v1[2], v1[3]);
      }

      else
      {
        v16 = *(v1 + 2);
      }

      v2 = v1[5];
      v3 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v4 = &v16;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v4 = v16.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v18 = "_eraseResources";
        v19 = 2080;
        v20 = v4;
        v21 = 1024;
        v22 = ++v15;
        _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s:freeing res_map[%s], count=%d", buf, 0x1Cu);
      }

      if (v2)
      {
        if (*v2)
        {
          v5 = 0;
          v6 = v2 + 22;
          do
          {
            v7 = *v6;
            v8 = _ps_buffer_log;
            if (*v6)
            {
              if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG) || (v9 = *(v6 - 2), *buf = 136315394, v18 = "_eraseResources", v19 = 1024, LODWORD(v20) = v9, _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s:deleting bufflet with type=%d", buf, 0x12u), (v7 = *v6) != 0))
              {
                (*(*v7 + 8))(v7);
              }
            }

            else if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v18 = "_eraseResources";
              _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s resource is NULL - That should not be the case\n", buf, 0xCu);
            }

            ++v5;
            v6 += 3;
          }

          while (v5 < *v2);
        }

        v10 = *(v2 + 2);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v11 = *(v2 + 4);
        *(v2 + 3) = 0;
        *(v2 + 4) = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v2 + 10));
        v12 = *(v2 + 4);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        MEMORY[0x25F8CA500](v2, 0x10A0C40220BCF41);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v1 = *v1;
    }

    while (v1);
  }

  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::clear(this);
  v13 = *MEMORY[0x277D85DE8];
}

void PSResourceFactory::_eraseReaderMap(PSResourceFactory *this)
{
  v10 = *MEMORY[0x277D85DE8];
  for (i = *(this + 7); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, i[2], i[3]);
    }

    else
    {
      v7 = *(i + 2);
    }

    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = &v7;
      }

      else
      {
        v4 = v7.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v9 = v4;
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "freeing reader_map resource with key %s", buf, 0xCu);
    }

    v5 = i[5];
    if (v5)
    {
      MEMORY[0x25F8CA500](v5, 0x1000C408757D331);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::clear(this + 40);
  v6 = *MEMORY[0x277D85DE8];
}

PSSharedResource **PSResourceFactory::getShbuffletInfo(PSResourceFactory *this, char *a2, unsigned int a3)
{
  if (a3 >= 0x81)
  {
    PSResourceFactory::getShbuffletInfo();
  }

  Resource = PSResourceFactory::getResource(this, a2);
  if (!Resource)
  {
    return 0;
  }

  v5 = Resource;
  if (!Resource[3])
  {
    return 0;
  }

  v6 = 0;
  for (i = (Resource + 20); PSSharedResource::getID(i[1]) != a3; i += 3)
  {
    if (++v6 >= v5[3])
    {
      return 0;
    }
  }

  return i;
}

uint64_t PSResourceFactory::removeShbufflet(PSResourceFactory *this, char *a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  Resource = PSResourceFactory::getResource(this, a2);
  if (!Resource)
  {
    v12 = _ps_buffer_log;
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_26;
    }

    *buf = 136315394;
    v33 = "removeShbufflet";
    v34 = 2080;
    *v35 = a2;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s Did not find resource for key. %s \n", buf, 0x16u);
LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v7 = Resource;
  if (PSResourcePIDTracker::inUse((Resource + 10)))
  {
    goto LABEL_25;
  }

  if (!v7[3])
  {
LABEL_7:
    result = 0xFFFFFFFFLL;
LABEL_26:
    v25 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = 0;
  v9 = v7 + 20;
  v10 = (v7 + 20);
  while (PSSharedResource::getID(v10[1]) != a3)
  {
    ++v8;
    v10 += 3;
    if (v8 >= v7[3])
    {
      goto LABEL_7;
    }
  }

  v13 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v33 = "PSResourceFactory";
    v34 = 2080;
    *v35 = "removeShbufflet";
    *&v35[8] = 1024;
    *&v35[10] = 212;
    v36 = 2080;
    v37 = a2;
    v38 = 1024;
    v39 = a3;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s:: %s %d key %s id=%d found at res_index=%d\n", buf, 0x32u);
  }

  v14 = v7[3];
  v15 = v14 - 1;
  if (v8 - v14 != -1)
  {
    v16 = &v9[6 * v15];
    v17 = *v10;
    v18 = v10[2];
    v19 = v16[4];
    *v10 = *v16;
    *(v10 + 4) = v19;
    v16[4] = v18;
    *v16 = v17;
  }

  v20 = &v9[6 * v15];
  v21 = *(v20 + 1);
  if (v21 && v20[1])
  {
    if (*v20 != 19 || (PSRingBufferLoggerServer::enqueueLogDelete(*(this + 16), 19, v21) & 1) == 0 && (v21 = *(v20 + 1)) != 0)
    {
      (*(*v21 + 8))(v21);
    }

    *(v20 + 1) = 0;
    v20[1] = 0;
    v22 = v7[3];
    --*v7;
    v7[3] = --v22;
    if (!v22 && !PSResourcePIDTracker::inUse((v7 + 10)))
    {
      v23 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v24 = v7[3];
        *buf = 136315394;
        v33 = a2;
        v34 = 1024;
        *v35 = v24;
        _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_DEBUG, "erasing resource %s after deallocating the last bufflet %d", buf, 0x12u);
      }

      PSResourceFactory::eraseResource(this, a2);
    }

    goto LABEL_25;
  }

  v31 = 0;
  asprintf(&v31, "%s: Unable to deallocate - Resource already deinitialized (%s, %d)\n", "PSResourceFactory", a2, a3);
  v26 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v33 = "removeShbufflet";
    v34 = 1024;
    *v35 = 229;
    *&v35[4] = 2080;
    *&v35[6] = "PSResourceFactory";
    v36 = 2080;
    v37 = a2;
    v38 = 1024;
    v39 = a3;
    _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_FAULT, "%s:%d %s: Unable to deallocate - Resource already deinitialized (%s, %d)\n", buf, 0x2Cu);
  }

  v27 = OSLogFlushBuffers();
  if (v27)
  {
    v28 = v27;
    v29 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "removeShbufflet";
      v34 = 1024;
      *v35 = v28;
      _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v30 = abort_with_reason();
  return PSResourceFactory::handle_resource_deallocate(v30);
}

uint64_t PSResourceFactory::handle_resource_deallocate(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a2 + 16);
    v4 = _ps_buffer_log;
    v5 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        v11 = 136315906;
        v12 = "PSResourceFactory";
        v13 = 2080;
        v14 = "handle_resource_deallocate";
        v15 = 1024;
        ReaderCount = PSSharedBufferGroupSyncObjectWriter::getReaderCount(v3);
        v17 = 1024;
        v18 = PSResourcePIDTracker::inUse((a2 + 40));
        _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "+ %s:%s syncWriter->readerCount (%d) res in use (%d) \n", &v11, 0x22u);
        v3 = *(a2 + 16);
      }

      PSSharedBufferGroupSyncObjectWriter::waitForGroupReaderRelinquish(v3, 5);
    }

    else if (v5)
    {
      v11 = 136315394;
      v12 = "PSResourceFactory";
      v13 = 2080;
      v14 = "handle_resource_deallocate";
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "+ %s:%s NOTE: No syncWriter found - Unable to wait for readers relinquish signals\n", &v11, 0x16u);
    }

    if (*(a2 + 12))
    {
      v8 = 0;
      v9 = (a2 + 88);
      do
      {
        if (!*v9)
        {
          PSResourceFactory::handle_resource_deallocate();
        }

        (*(**v9 + 8))(*v9);
        ++v8;
        v9 += 3;
      }

      while (v8 < *(a2 + 12));
    }

    result = *(a2 + 16);
    if (result)
    {
      (*(*result + 8))(result);
      result = 0;
    }
  }

  else
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "PSResourceFactory";
      v13 = 2080;
      v14 = "handle_resource_deallocate";
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "+ %s:%s res == NULL\n", &v11, 0x16u);
    }

    result = 0xFFFFFFFFLL;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSResourceFactory::handle_dealloc_shbufflet(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v33 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(v5 + 1024);
    *buf = 136315906;
    v23 = "PSResourceFactory";
    v24 = 2080;
    v25 = "handle_dealloc_shbufflet";
    v26 = 2080;
    v27 = v5;
    v28 = 1024;
    v29 = v8;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: %s key (%s), type (%d) \n", buf, 0x26u);
  }

  v9 = *(v5 + 1024);
  v10 = _ps_buffer_log;
  v11 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v9 > 12)
  {
    switch(v9)
    {
      case 13:
        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        v23 = "PSResourceFactory";
        v12 = "%s: PLS_RES_FACT_SEMAPHORE\n";
        goto LABEL_21;
      case 14:
        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        v23 = "PSResourceFactory";
        v12 = "%s: PLS_RES_FACT_SEMAPHORE_ARRAY\n";
        goto LABEL_21;
      case 17:
        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        v23 = "PSResourceFactory";
        v12 = "%s: PLS_RES_FACT_IOSURFACE_SHAREDEVENT\n";
        goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v23 = "PSResourceFactory";
    v12 = "%s: PLS_RES_FACT_IOSURFACE\n";
LABEL_21:
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, v12, buf, 0xCu);
LABEL_22:
    if (!PSResourceFactory::removeShbufflet(v6, v5, *(v5 + 1028)))
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v9 != 4)
  {
LABEL_24:
    if (v11)
    {
      *buf = 136315138;
      v23 = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s: Invalid shbufflet type\n", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (v11)
  {
    *buf = 136315138;
    v23 = "PSResourceFactory";
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_SERIALDATA\n", buf, 0xCu);
  }

  if (!PSResourceFactory::removeShbufflet(v6, v5, *(v5 + 1028)))
  {
    v21 = 11;
    v20 = *(v5 + 1028);
    strlcpy(v18, v5, 0x400uLL);
    v19 = *(v5 + 1024);
    bzero(buf, 0x890uLL);
    v32 = 0x500000011;
    strlcpy(v30, v5, 0x400uLL);
    v31 = 0;
    PSCommsClient::reply_to_client(buf, 2192, v3);
LABEL_23:
    v13 = *MEMORY[0x277D85DE8];
    return 0;
  }

LABEL_26:
  v15 = PSResourceFactory::handle_dealloc_shbufflet(buf, v5);
  return PSResourceFactory::saveReaderPorts(v15, v16, v17);
}

void PSResourceFactory::saveReaderPorts(PSResourceFactory *this, char *a2, int a3)
{
  *&v19[13] = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "PSResourceFactory";
    v18 = 2080;
    *v19 = a2;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s replyWithShbuffletList: cannot find a resource with key (%s) \n", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(this + 5, __p);
  if (!v7)
  {
    v10 = malloc_type_calloc(0x104uLL, 1uLL, 0x10000408757D331uLL);
    if (v10)
    {
      *buf = __p;
      std::__hash_table<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 5, __p)[5] = v10;
      *v10 = a3;
      v10[64] = 1;
      goto LABEL_8;
    }

    v14 = 0;
    asprintf(&v14, "OOM\n");
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "saveReaderPorts";
      v18 = 1024;
      *v19 = 463;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_FAULT, "%s:%d OOM\n", buf, 0x12u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v8 = v7[5];
  v9 = v8[64];
  if (v9 >= 0x40)
  {
    v14 = 0;
    asprintf(&v14, "Cannot queue up more than 64 readers for key (%s). Aborting! \n", a2);
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      *&buf[4] = "saveReaderPorts";
      v18 = 1024;
      *v19 = 456;
      v19[2] = 2080;
      *&v19[3] = a2;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d Cannot queue up more than 64 readers for key (%s). Aborting! \n", buf, 0x1Cu);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_18:
      usleep(0x1E8480u);
LABEL_20:
      abort_with_reason();
      __break(1u);
      return;
    }

LABEL_19:
    PSResourceFactory::saveReaderPorts();
    goto LABEL_20;
  }

  v8[v9] = a3;
  ++v8[64];
LABEL_8:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25EC11AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::replyWithShbuffletList(PSResourceFactory *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v34 = *MEMORY[0x277D85DE8];
  bzero(v23, 0x890uLL);
  v26 = 0x1000000012;
  strlcpy(v24, v8, 0x400uLL);
  Resource = PSResourceFactory::getResource(v9, v8);
  if (!Resource)
  {
LABEL_12:
    if (v4)
    {
      PSResourceFactory::saveReaderPorts(v9, v8, v6);
    }

    else
    {
      v25 = 0;
      bzero(buf, 0x890uLL);
      v33 = 0x1200000011;
      strlcpy(v31, v8, 0x400uLL);
      v32 = 7;
      PSCommsClient::reply_to_client(buf, 2192, v6);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v11 = Resource;
  if (Resource[2] != 2)
  {
    v20 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v28 = "PSResourceFactory";
      v29 = 2080;
      v30 = v8;
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s replyWithShbuffletList: resource with key (%s) not INITIALIZED\n", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v12 = 8 * *Resource;
  v13 = malloc_type_calloc(1uLL, v12, 0x100004000313F17uLL);
  if (!v13)
  {
    PSResourceFactory::replyWithShbuffletList();
  }

  v14 = v13;
  if (*v11)
  {
    v15 = 0;
    v16 = (v11 + 22);
    v17 = v13 + 1;
    do
    {
      if (*(v16 - 1) != 2)
      {
        PSResourceFactory::replyWithShbuffletList(v15);
      }

      *(v17 - 1) = *(v16 - 2);
      v18 = *v16;
      v16 += 3;
      *v17 = PSSharedResource::getID(v18);
      v17 += 2;
      ++v15;
      v19 = *v11;
    }

    while (v15 < v19);
    if (v15 != v19)
    {
      PSResourceFactory::replyWithShbuffletList(v15, v19);
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  LODWORD(v25) = v19;
  HIDWORD(v25) = v11[1];
  PSCommsClient::reply_ool(v23, 2192, v14, v12, v6, 1);
  free(v14);
  result = 0;
LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSResourceFactory::nackReply(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x890uLL);
  v14 = 17;
  v15 = a3;
  strlcpy(v12, a2, 0x400uLL);
  v13 = a5;
  result = PSCommsClient::reply_to_client(v11, 2192, a4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSResourceFactory::handle_shbuffgroup_list(PSResourceFactory *a1, uint64_t a2)
{
  v4 = *(a2 + 1036);
  if (PSResourceFactory::replyWithShbuffletList(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  PSResourceFactory::getResource(a1, a2);
  return 0;
}

uint64_t PSResourceFactory::validate_client_entitlements(uint64_t a1, char *a2, uint64_t a3, _OWORD *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v7;
  v23 = audit_token_to_pid(&atoken);
  v8 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v8;
  v9 = audit_token_to_pidversion(&atoken);
  v10 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>((a1 + 80), &v23);
  if (!v10)
  {
    std::allocate_shared[abi:ne200100]<PSClientProxy,std::allocator<PSClientProxy>,int &,int &,0>();
  }

  if (*(v10[3] + 56) != v9)
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__erase_unique<int>((a1 + 80), &v23);
    std::allocate_shared[abi:ne200100]<PSClientProxy,std::allocator<PSClientProxy>,int &,int &,0>();
  }

  *atoken.val = &v23;
  v11 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 80), &v23);
  v13 = v11[3];
  v12 = v11[4];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&atoken, a2);
  if (a2[1032] == 1)
  {
    isAllowedToConsumeResource = PSClientProxy::isAllowedToConsumeResource(v13, &atoken);
  }

  else
  {
    isAllowedToConsumeResource = PSClientProxy::isAllowedToProduceResource(v13, &atoken);
  }

  if (isAllowedToConsumeResource)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v16 = a2[1032];
  v17 = _ps_buffer_log;
  v18 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
  if (v16 == 1)
  {
    if (v18)
    {
      *buf = 67109378;
      *&buf[4] = v23;
      v25 = 2080;
      v26 = a2;
      v19 = "Client with pid (%d) is not allowed to consume resource: (%s)";
LABEL_17:
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
    }
  }

  else if (v18)
  {
    *buf = 67109378;
    *&buf[4] = v23;
    v25 = 2080;
    v26 = a2;
    v19 = "Client with pid (%d) is not allowed to produce resource: (%s)";
    goto LABEL_17;
  }

  v15 = 0xFFFFFFFFLL;
LABEL_19:
  if (SHIBYTE(atoken.val[5]) < 0)
  {
    operator delete(*atoken.val);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_25EC122C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::handle_register_shbuffergroup(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v28, a2);
  std::string::basic_string[abi:ne200100]<0>(v26, "group.pls");
  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    if (v8 != -1)
    {
      v10 = v28;
      if (v29 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v29;
      }

      goto LABEL_14;
    }

LABEL_48:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 == -1)
  {
    goto LABEL_48;
  }

  if (v30 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v30;
  }

  v10 = &v28;
LABEL_14:
  if ((v27 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v26[0];
  }

  v12 = memcmp(v10, v11, v9);
  v13 = a4[1];
  *__p = *a4;
  v33 = v13;
  v15 = PSResourceFactory::validate_client_entitlements(a1, a2, v14, __p);
  if ((*(a1 + 280) & 8) != 0 && (v12 != 0 || (*(a1 + 273) & 1) == 0 || v9 != v8) && v15)
  {
    bzero(__p, 0x890uLL);
    v37 = 0x100000011;
    strlcpy(v34, a2, 0x400uLL);
    v36 = 13;
    PSCommsClient::reply_to_client(__p, 2192, a3);
LABEL_25:
    a3 = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

  Resource = PSResourceFactory::getResource(a1, a2);
  v17 = Resource;
  if (Resource)
  {
    if (*(a2 + 1033))
    {
      v18 = *(a2 + 1040);
      if (v18)
      {
        v18[2](*(a2 + 1040), a2, 0, 0);
        *(a2 + 1040) = 0;
        PSResourcePIDTracker::startTracking((v17 + 40), *(a2 + 1024));
        _Block_release(v18);
      }
    }

    else
    {
      PSResourcePIDTracker::startTracking((Resource + 40), *(a2 + 1024));
    }
  }

  else
  {
    if ((*(a2 + 1033) & 1) == 0)
    {
      operator new();
    }

    v19 = *(a2 + 1040);
    if (v19)
    {
      v19[2](*(a2 + 1040), a2, 0, 1);
      *(a2 + 1040) = 0;
      _Block_release(v19);
    }
  }

  if ((*(a2 + 1033) & 1) != 0 || (v20 = *(a1 + 120)) == 0)
  {
    if (!a3)
    {
      goto LABEL_40;
    }

    bzero(__p, 0x890uLL);
    LODWORD(v37) = 1;
    v35 = *(a2 + 1024);
    v22 = PSCommsClient::reply_to_client(__p, 2192, a3);
  }

  else
  {
    v31[0] = 0;
    v21 = PSProcessIDTracker::registerShbufferGroup(v20, *(a2 + 1024), a2, *(a2 + 1032), v31);
    if (v21 == 1)
    {
      v25 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = a2;
        _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_ERROR, "PID Tracker has reached max registered processes for key %s. Please file a radar!", __p, 0xCu);
      }

      goto LABEL_25;
    }

    if (v21 == 2)
    {
      bzero(__p, 0x890uLL);
      v37 = 0x100000011;
      strlcpy(v34, a2, 0x400uLL);
      v36 = 10;
    }

    else
    {
      bzero(__p, 0x890uLL);
      LODWORD(v37) = 1;
      v35 = *(a2 + 1024);
      v36 = v31[0];
    }

    v22 = PSCommsClient::reply_to_client(__p, 2192, a3);
  }

  a3 = v22;
LABEL_40:
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v30 < 0)
  {
    operator delete(v28);
  }

  v23 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_25EC12798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::handle_unregister_shbuffergroup(PSResourceFactory *this, char *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(this + 15);
  if (!v6 || (a2[1033] & 1) != 0)
  {
LABEL_5:
    Resource = PSResourceFactory::getResource(this, a2);
    if (!Resource)
    {
      bzero(v17, 0x890uLL);
      v20 = 0x200000011;
      strlcpy(v18, a2, 0x400uLL);
      v11 = 7;
      goto LABEL_17;
    }

    v9 = Resource;
    v10 = PSResourcePIDTracker::stopTracking((Resource + 40), *(a2 + 256));
    if (!v10)
    {
      v12 = PSResourcePIDTracker::inUse((v9 + 40));
      if (!v12)
      {
        PSResourceFactory::handle_resource_deallocate(v12, v9);
        PSResourceFactory::eraseResource(this, a2);
      }

      if (a2[1033] == 1)
      {
        v13 = *(a2 + 130);
        if (v13)
        {
          (v13)[2](*(a2 + 130), a2, 1, 0);
          _Block_release(v13);
        }
      }

      bzero(v17, 0x890uLL);
      v20 = 0x200000011;
      strlcpy(v18, a2, 0x400uLL);
      v19 = 0;
      goto LABEL_18;
    }

    if (v10 != 2)
    {
      bzero(v17, 0x890uLL);
      v20 = 0x200000011;
      strlcpy(v18, a2, 0x400uLL);
      v11 = 9;
      goto LABEL_17;
    }

LABEL_8:
    bzero(v17, 0x890uLL);
    v20 = 0x200000011;
    strlcpy(v18, a2, 0x400uLL);
    v11 = 10;
LABEL_17:
    v19 = v11;
LABEL_18:
    result = PSCommsClient::reply_to_client(v17, 2192, a3);
    goto LABEL_19;
  }

  v7 = PSProcessIDTracker::unregisterShbufferGroup(v6, *(a2 + 256), *(a2 + 257), a2, a2[1032]);
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "PID Tracker did not find a pid to unregister. Continuing!", v17, 2u);
  }

  bzero(v17, 0x890uLL);
  v20 = 0x200000011;
  strlcpy(v18, a2, 0x400uLL);
  v19 = 0;
  PSCommsClient::reply_to_client(v17, 2192, a3);
  result = 0;
LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSResourceFactory::handle_client_died(PSResourceFactory *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  LODWORD(v15.__r_.__value_.__l.__data_) = *(a2 + 1024);
  v4 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(a1 + 10, &v15);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::erase(a1 + 10, v4);
  }

  if (*(a1 + 15))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    PSRingBufferLoggerServer::handleDeath(*(a1 + 16), *(a2 + 1024), &v12);
    v5 = v12;
    for (i = v13; v5 != i; v5 += 2)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v15.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v15.__r_.__value_.__l.__data_ = v7;
      }

      v8 = *(v5 + 6);
      LODWORD(v16) = v8;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v15;
      }

      else
      {
        v9 = v15.__r_.__value_.__r.__words[0];
      }

      PSResourceFactory::removeShbufflet(a1, v9, v8);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    PSRingBufferLoggerServer::flushLogDeletions(*(a1 + 16));
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_25EC13368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, char *a40)
{
  std::__tree<unsigned int>::destroy(&a25, a26);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a39, a40);
  *(v40 - 176) = v40 - 200;
  std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v40 - 176));
  _Unwind_Resume(a1);
}

void PSResourceFactory::handle_frame_history_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 1044);
  if (v4 == 2)
  {
    v14 = *(a1 + 136);
    v15 = *(a2 + 1042);
    v16 = *MEMORY[0x277D85DE8];
    v18 = *(a2 + 1042);

    PSFrameHistoryBufferServiceServer::dumpFrameHistory(v14, a3, v18);
  }

  else if (v4 == 1)
  {
    v9 = *(a1 + 136);
    v10 = *(a2 + 1032);
    v11 = *(a2 + 1038);
    v12 = *(a2 + 1040);
    v13 = *MEMORY[0x277D85DE8];

    PSFrameHistoryBufferServiceServer::deleteBuffer(v9, v10, v11, v12);
  }

  else if (v4)
  {
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a2 + 1032);
      v22[0] = 67109376;
      v22[1] = v4;
      v23 = 1024;
      v24 = v20;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "Uknown action (%u) sent for msg resfact_frame_history_info_msg_t for client pid (%u)", v22, 0xEu);
    }

    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *(a1 + 136);
    v6 = *(a2 + 1032);
    v7 = *(a2 + 1036);
    v8 = *MEMORY[0x277D85DE8];

    PSFrameHistoryBufferServiceServer::reserveBuffer(v5, v6, a3, v7);
  }
}

uint64_t PSResourceFactory::handle_ringbuffer_info(uint64_t a1, char *__source, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(__source + 260);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v12 = PSRingBufferLoggerServer::registerWithLoggingBuffer(*(a1 + 128), __source);
      if (v12)
      {
        v13 = v12;
        v8 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "PSResourceFactory";
          v26 = 1024;
          v27 = v13;
          v9 = "%s: PLS_RES_FACT_RINGBUFFER_ACTION_REGISTER: Error %d";
          goto LABEL_16;
        }

        goto LABEL_17;
      }

LABEL_18:
      bzero(buf, 0x890uLL);
      v37 = 0x1300000011;
      strlcpy(v30, __source, 0x400uLL);
      v31 = 0;
      PSCommsClient::reply_to_client(buf, 2192, a3);
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v10 = PSRingBufferLoggerServer::dumpLogBuffers(*(a1 + 128), *(__source + 261));
      if (v10)
      {
        v11 = v10;
        v8 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "PSResourceFactory";
          v26 = 1024;
          v27 = v11;
          v9 = "%s: PLS_RES_FACT_TYPE_DUMP_LOG_BUFFERS: not accepted ret=%d\n";
          goto LABEL_16;
        }

LABEL_17:
        bzero(buf, 0x890uLL);
        v37 = 0x1300000011;
        strlcpy(v30, __source, 0x400uLL);
        v31 = 12;
        result = PSCommsClient::reply_to_client(buf, 2192, a3);
LABEL_20:
        v15 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v5)
    {
      LODWORD(v23) = 0;
      PSRingBufferLoggerServer::allocateLoggingBuffer(*(a1 + 128), __source, &v23);
      LODWORD(v37) = 19;
      v33 = 0;
      v31 = *(__source + 257);
      v35 = __source[1048];
      v32 = *(__source + 129);
      v34 = *(__source + 261);
      v36 = v23;
      ps_comms_reply(buf, 2192, a3);
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

    if (v5 == 1)
    {
      v6 = PSRingBufferLoggerServer::deallocateLoggingBuffer(*(a1 + 128), __source);
      if (v6)
      {
        v7 = v6;
        v8 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "PSResourceFactory";
          v26 = 1024;
          v27 = v7;
          v9 = "%s: PLS_RES_FACT_RINGBUFFER_ACTION_DEALLOCATE: Error %d";
LABEL_16:
          _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v22 = *(__source + 260);
  v23 = 0;
  asprintf(&v23, "Uknown action (%u) sent for msg resfact_ringbuffer_info_msg_t", v22);
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v17 = *(__source + 260);
    *buf = 136315650;
    v25 = "handle_ringbuffer_info";
    v26 = 1024;
    v27 = 1038;
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_FAULT, "%s:%d Uknown action (%u) sent for msg resfact_ringbuffer_info_msg_t", buf, 0x18u);
  }

  v18 = OSLogFlushBuffers();
  if (v18)
  {
    v19 = v18;
    v20 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "handle_ringbuffer_info";
      v26 = 1024;
      v27 = v19;
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v21 = abort_with_reason();
  return PSResourceFactory::handle_shbufflet_info(v21);
}

uint64_t PSResourceFactory::handle_shbufflet_info(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(a1, __p);
  if (!v7)
  {
    v45 = _ps_buffer_log;
    v14 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      *buf = 136315138;
      *&buf[4] = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v45, OS_LOG_TYPE_ERROR, "%s: SHBUFFLET_NO_EXIST: Attempting to set info for a non-existent shbufflet\n", buf, 0xCu);
    }

LABEL_8:
    PSResourceFactory::nackReply(v14, a2, 21, a4, 7);
    abort();
  }

  v8 = v7[5];
  v9 = (a2 + 1028);
  v10 = (v8 + 88);
  v11 = 128;
  while (1)
  {
    if (*v10)
    {
      ID = PSSharedResource::getID(*v10);
      if (ID == *v9)
      {
        break;
      }
    }

    v10 += 3;
    if (!--v11)
    {
      v13 = _ps_buffer_log;
      v14 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        v15 = *(a2 + 1028);
        *buf = 136315906;
        *&buf[4] = "PSResourceFactory";
        *v68 = 2080;
        *&v68[2] = "handle_shbufflet_info";
        *&v68[10] = 1024;
        *&v68[12] = v15;
        *&v68[16] = 2080;
        *&v68[18] = a2;
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s: %s - Shbufflet with id (%d) key(%s) not found! \n", buf, 0x26u);
      }

      goto LABEL_8;
    }
  }

  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "PSResourceFactory";
    *v68 = 2080;
    *&v68[2] = "handle_shbufflet_info";
    *&v68[10] = 1024;
    *&v68[12] = ID;
    *&v68[16] = 2080;
    *&v68[18] = a2;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: %s - Found Shbufflet with id (%d) key(%s) \n", buf, 0x26u);
  }

  v17 = *(a2 + 1040);
  *(v10 - 2) = v17;
  *(v10 - 1) = *(a2 + 1036);
  if (v17 <= 11)
  {
    if (v17 == 8)
    {
      if (!*(v8 + 3))
      {
        goto LABEL_42;
      }

      *v54 = 0;
      asprintf(v54, "Cannot create ring swappable selector when a lockless selector is already init for key %s. Aborting!", a2);
      v33 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        *&buf[4] = "handle_shbufflet_info";
        *v68 = 1024;
        *&v68[2] = 1174;
        *&v68[6] = 2080;
        *&v68[8] = a2;
        _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_FAULT, "%s:%d Cannot create ring swappable selector when a lockless selector is already init for key %s. Aborting!", buf, 0x1Cu);
      }

      if (!OSLogFlushBuffers())
      {
LABEL_31:
        usleep(0x1E8480u);
LABEL_59:
        result = abort_with_reason();
        goto LABEL_63;
      }
    }

    else
    {
      if (v17 != 10 || (*(a1 + 272) & 1) != 0)
      {
        goto LABEL_42;
      }

      v19 = *(v8 + 3);
      v18 = v8 + 24;
      if (!v19)
      {
        v20 = *v10;
        v21 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          Key = PSSharedResource::getKey(v20);
          *buf = 136315138;
          *&buf[4] = Key;
          _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_DEBUG, "Mapping lockless selector for %s", buf, 0xCu);
        }

        *buf = 0x140000000FLL;
        *&v68[12] = a2;
        *&v68[20] = 0;
        *&v68[26] = 0;
        v69 = 1;
        v70[0] = 1;
        v23 = *(v20 + 149);
        *&buf[8] = *(a2 + 1028);
        *v68 = v23;
        AllocSize = PSSharedSerialData::getAllocSize(v20);
        v70[0] = 2;
        v25 = *(v20 + 156);
        *&v68[4] = AllocSize;
        *&v68[28] = v25;
        if (PSBufferService::PSLocklessBufferSelector::Create(buf))
        {
          PSResourceFactory::handle_shbufflet_info();
        }

        if (!(*(**v18 + 168))())
        {
          v26 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            *v54 = 136315138;
            *&v54[4] = a2;
            v27 = "SUCCESS:initialized lockless for %s";
            v28 = v54;
            v29 = v26;
            v30 = OS_LOG_TYPE_DEBUG;
            v31 = 12;
LABEL_37:
            _os_log_impl(&dword_25EBC5000, v29, v30, v27, v28, v31);
            goto LABEL_42;
          }

          goto LABEL_42;
        }

        v51 = 0;
        asprintf(&v51, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", "PSResourceFactory", "handle_shbufflet_info");
        v47 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          *v54 = 136315906;
          *&v54[4] = "handle_shbufflet_info";
          v55 = 1024;
          *v56 = 1160;
          *&v56[4] = 2080;
          *&v56[6] = "PSResourceFactory";
          v57 = 2080;
          *v58 = "handle_shbufflet_info";
          _os_log_impl(&dword_25EBC5000, v47, OS_LOG_TYPE_FAULT, "%s:%d %s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v54, 0x26u);
        }

        if (OSLogFlushBuffers())
        {
          PSResourceFactory::handle_shbufflet_info();
        }

        else
        {
          usleep(0x1E8480u);
        }

        result = abort_with_reason();
LABEL_63:
        __break(1u);
        return result;
      }

      *v54 = 0;
      asprintf(v54, "Cannot create multiple lockless selector objects for key %s. This is a bug. Aborting!", a2);
      v46 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        *&buf[4] = "handle_shbufflet_info";
        *v68 = 1024;
        *&v68[2] = 1167;
        *&v68[6] = 2080;
        *&v68[8] = a2;
        _os_log_impl(&dword_25EBC5000, v46, OS_LOG_TYPE_FAULT, "%s:%d Cannot create multiple lockless selector objects for key %s. This is a bug. Aborting!", buf, 0x1Cu);
      }

      if (!OSLogFlushBuffers())
      {
        goto LABEL_31;
      }
    }

    PSResourceFactory::handle_shbufflet_info();
    goto LABEL_59;
  }

  if (v17 == 19)
  {
    PSRingBufferLoggerServer::finalizeLoggingBuffer(*(a1 + 128), a2, *v10);
    goto LABEL_42;
  }

  if (v17 == 12)
  {
    if (*(a1 + 272) == 1)
    {
      v32 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "PSResourceFactory";
      *v68 = 2080;
      *&v68[2] = "handle_shbufflet_info";
      v27 = "%s: %s - Not mapping in the BGSO for a local resource.\n";
      v28 = buf;
      v29 = v32;
      v30 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!*(v8 + 2))
      {
        v35 = *v10;
        snprintf(buf, 0x80uLL, "%s-sem", a2);
        ShbuffletInfo = PSResourceFactory::getShbuffletInfo(a1, buf, *(a2 + 1028));
        if (ShbuffletInfo)
        {
          v50 = ShbuffletInfo[1];
          v37 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            v48 = *v9;
            v49 = *(v35 + 156);
            Semaphore = PSSharedSemaphoreAllocator::getSemaphore(v35);
            NumElem = PSSharedSerialData::getNumElem(v35);
            v40 = *(v35 + 149);
            v41 = PSSharedSemaphoreAllocator::getSemaphore(v50);
            v42 = PSSharedSerialData::getAllocSize(v35);
            *v54 = 136317186;
            *&v54[4] = "handle_shbufflet_info";
            v55 = 2080;
            *v56 = a2;
            *&v56[8] = 1024;
            *&v56[10] = v48;
            v57 = 1024;
            *v58 = v49;
            *&v58[4] = 1024;
            *&v58[6] = Semaphore;
            v59 = 1024;
            v60 = NumElem;
            v61 = 1024;
            v62 = v40;
            v63 = 1024;
            v64 = v41;
            v65 = 1024;
            v66 = v42;
            _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_DEBUG, "%s:local_copy key=%s (id=%d) port_right=%u elem(Size=%u, Num=%u), flags=0x%08x, sem=%u ,total_size=%u, ", v54, 0x40u);
          }

          operator new();
        }

        PSResourceFactory::handle_shbufflet_info((a2 + 1028), buf);
      }

      v34 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "PSResourceFactory";
      *v68 = 2080;
      *&v68[2] = "handle_shbufflet_info";
      v27 = "%s: %s - If you need to create 2 SyncObjects, please discuss with the Polaris team\n";
      v28 = buf;
      v29 = v34;
      v30 = OS_LOG_TYPE_ERROR;
    }

    v31 = 22;
    goto LABEL_37;
  }

LABEL_42:
  bzero(buf, 0x890uLL);
  v71 = 0x1500000011;
  strlcpy(v70, a2, 0x400uLL);
  v70[257] = 0;
  PSCommsClient::reply_to_client(buf, 2192, a4);
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  v43 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_25EC14310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::unblockWaitingShbufferGroupReaders(PSResourceFactory *this, char *a2)
{
  WaitingPorts = PSResourceFactory::getWaitingPorts(this, a2);
  if (!WaitingPorts)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = WaitingPorts;
  if (WaitingPorts[64])
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      if (!PSResourceFactory::replyWithShbuffletList(this, a2))
      {
        PSResourceFactory::getResource(this, a2);
      }

      v5[v6++] = 0;
    }

    while (v6 < v5[64]);
  }

  result = 0;
  v5[64] = 0;
  return result;
}

uint64_t PSResourceFactory::handle_resource_status(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  Resource = PSResourceFactory::getResource(a1, a2);
  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a2 + 1028);
    v11 = a1[272];
    buf[0] = 136316418;
    *&buf[1] = "PSResourceFactory";
    v22 = 1024;
    *v23 = a3;
    *&v23[4] = 1024;
    *&v23[6] = v10;
    v24 = 2080;
    v25 = a2;
    v26 = 2048;
    v27 = a1;
    v28 = 1024;
    v29[0] = v11;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s: Setting status (%d,%d) for key (%s) this=%p local_res_fact=%d\n", buf, 0x32u);
  }

  v12 = _ps_buffer_log;
  if (a3 == 14)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315138;
      *&buf[1] = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: Setting SHBUFFLET STATUS\n", buf, 0xCu);
    }
  }

  else
  {
    if (a3 != 13)
    {
      PSResourceFactory::handle_resource_status(_ps_buffer_log);
    }

    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315138;
      *&buf[1] = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: Setting SHBUFFER GROUP STATUS\n", buf, 0xCu);
    }

    v13 = *(a2 + 1028);
    v14 = _ps_buffer_log;
    if (v13 == 2)
    {
      goto LABEL_36;
    }

    if (v13 != 1)
    {
      PSResourceFactory::handle_resource_status(_ps_buffer_log);
    }

    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315138;
      *&buf[1] = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: PLS_RESSTATUS_INITIALIZING\n", buf, 0xCu);
      v14 = _ps_buffer_log;
    }

    if (!Resource)
    {
LABEL_36:
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315138;
        *&buf[1] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: PLS_RESSTATUS_INITIALIZED\n", buf, 0xCu);
      }

      if (!Resource)
      {
        PSResourceFactory::handle_resource_status();
      }

      *(Resource + 2) = *(a2 + 1028);
      v17 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "PSResourceFactory";
        v22 = 2080;
        *v23 = a2;
        _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s: Our resource for key (%s) is fully initialized. Unblocking all readers. \n", buf, 0x16u);
      }

      PSResourceFactory::unblockWaitingShbufferGroupReaders(a1, a2);
      bzero(buf, 0x890uLL);
      v31 = 0xC00000011;
      strlcpy(v29 + 2, a2, 0x400uLL);
      v30 = 0;
      PSCommsClient::reply_to_client(buf, 2192, a4);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315138;
        *&buf[1] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: Initializing a resource group that was already initialized - Did you die without a proper clean up?\n", buf, 0xCu);
      }

      v15 = *(Resource + 2);
      if (v15)
      {
        if (v15 != 1)
        {
          v16 = *(Resource + 2);
          if (v16)
          {
            v16 = PSSharedBufferGroupSyncObjectWriter::broadcastBufferGroupTermination(v16, 0);
          }

          if (PSResourceFactory::handle_resource_deallocate(v16, Resource))
          {
            abort();
          }
        }

        std::unordered_map<int,unsigned int>::unordered_map(v20, Resource + 40);
        PSResourceFactory::eraseResource(a1, a2);
        operator new();
      }

      *(Resource + 3) = 0;
      *(Resource + 2) = *(a2 + 1028);
      *(Resource + 1) = *(a2 + 1032);
      *(Resource + 2) = 0;
      bzero(buf, 0x890uLL);
      v31 = 0xC00000011;
      strlcpy(v29 + 2, a2, 0x400uLL);
      v30 = 0;
      PSCommsClient::reply_to_client(buf, 2192, a4);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t handle_allocate_resource(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1024);
    *buf = 136315650;
    *&buf[4] = "PSResourceFactory";
    *&buf[12] = 2080;
    *&buf[14] = a1;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s: handle_allocate_resource key (%s), type (%d) \n", buf, 0x1Cu);
  }

  v4 = *(a1 + 1024);
  if (v4 <= 12)
  {
    if ((v4 - 8) >= 4)
    {
      if (!v4)
      {
        operator new();
      }

      if (v4 != 4)
      {
LABEL_21:
        v12 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "PSResourceFactory";
          v9 = "%s: Invalid shbufflet type\n";
          v10 = v12;
          v11 = 12;
          goto LABEL_23;
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_SERIALDATA\n", buf, 0xCu);
    }

    operator new();
  }

  if (v4 <= 14)
  {
    if (v4 != 13)
    {
      operator new();
    }

    operator new();
  }

  if ((v4 - 15) < 2)
  {
    goto LABEL_10;
  }

  if (v4 != 17)
  {
    goto LABEL_21;
  }

  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "PSResourceFactory";
    *&buf[12] = 2080;
    *&buf[14] = a1;
    v9 = "%s: [%s] PLS_RES_FACT_IOSURFACE_SHAREDEVENT Allocation not supported\n";
    v10 = v8;
    v11 = 22;
LABEL_23:
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
  }

LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSResourceFactory::saveResource(void *a1, char *a2, PSSharedResource *a3, unsigned int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v8 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(a1, __p);
  if (!v8)
  {
    operator new();
  }

  v9 = v8[5];
  if (*v9)
  {
    v10 = 0;
    v11 = (v9 + 22);
    while (1)
    {
      ID = PSSharedResource::getID(*v11);
      if (ID == PSSharedResource::getID(a3))
      {
        break;
      }

      ++v10;
      v13 = *v9;
      v11 += 3;
      if (v10 >= v13)
      {
        v14 = v13 + 1;
        goto LABEL_9;
      }
    }

    if (*v11)
    {
      (*(**v11 + 8))(*v11);
    }

    *v11 = a3;
    *(v11 - 2) = a4;
    goto LABEL_11;
  }

  v14 = 1;
LABEL_9:
  v15 = v9[3];
  if (v15 < 0x80)
  {
    v9[3] = v15 + 1;
    *v9 = v14;
    v16 = &v9[6 * v15];
    v16[20] = a4;
    v16[21] = 1;
    *(v16 + 11) = a3;
LABEL_11:
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = 0;
  asprintf(&v19, "MAX_RESOURCES (%d) limit hit for key %s", 128, a2);
  v18 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    buf[0] = 136315906;
    *&buf[1] = "saveResource";
    v23 = 1024;
    v24 = 1817;
    v25 = 1024;
    v26 = 128;
    v27 = 2080;
    v28 = a2;
    _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d MAX_RESOURCES (%d) limit hit for key %s", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    PSResourceFactory::saveResource();
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  __break(1u);
}

void sub_25EC1510C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t handle_install_resource(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 1024);
    buf = 136315650;
    buf_4 = "PSResourceFactory";
    buf_12 = 2080;
    buf_14 = a1;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: handle_install_resource key (%s), type (%d) \n", &buf, 0x1Cu);
  }

  v9 = *(a1 + 1024);
  if (v9 <= 13)
  {
    if (!v9)
    {
      v17 = HIBYTE(*(a3 + 8));
      v18 = _ps_buffer_log;
      if (v17 == 2)
      {
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          buf = 136315138;
          buf_4 = "PSResourceFactory";
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "%s: MACH_MSG_OOL_PORTS_DESCRIPTOR rx'd \n", &buf, 0xCu);
        }

        v22 = *a3;
        operator new();
      }

      if (v17 == 1)
      {
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a3 + 12);
          buf = 136315394;
          buf_4 = "PSResourceFactory";
          buf_12 = 1024;
          LODWORD(buf_14) = v19;
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "%s: MACH_MSG_OOL_DESCRIPTOR rx'd size(%d)\n", &buf, 0x12u);
        }

        v20 = *a3;
        operator new();
      }

      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "PSResourceFactory";
        buf_12 = 1024;
        LODWORD(buf_14) = v17;
        _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "%s: unknown mach msg descriptor type (%d)\n", &buf, 0x12u);
      }

      v23 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        buf = 136315138;
        buf_4 = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_IOSURFACE\n", &buf, 0xCu);
      }

      PSResourceFactory::saveResource(a4, a1, 0, *(a1 + 1024));
      goto LABEL_49;
    }

    if (v9 == 13)
    {
      v10 = HIBYTE(*(a3 + 8));
      if (v10 == 2)
      {
        if (*a3 && (**a3 + 1) >= 2)
        {
          operator new();
        }

        v11 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 1032);
          buf = 136315650;
          buf_4 = "PSResourceFactory";
          buf_12 = 2080;
          buf_14 = a1;
          v32 = 1024;
          v33 = v12;
          v13 = "%s: Invalid semaphore %s-%d not registered\n";
LABEL_46:
          v15 = v11;
          goto LABEL_47;
        }

        goto LABEL_49;
      }

      v21 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

LABEL_33:
      buf = 136315650;
      buf_4 = "PSResourceFactory";
      buf_12 = 2080;
      buf_14 = "handle_install_resource";
      v32 = 1024;
      v33 = v10;
      v13 = "%s::%s Incorrect mach port descriptor type, expected MACH_MSG_OOL_PORTS_DESCRIPTOR but got: %u";
      v15 = v21;
LABEL_47:
      v16 = 28;
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  if (v9 == 14)
  {
    v10 = HIBYTE(*(a3 + 8));
    if (v10 == 2)
    {
      if (*a3 && *(a3 + 12))
      {
        operator new();
      }

      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 1032);
        buf = 136315650;
        buf_4 = "PSResourceFactory";
        buf_12 = 2080;
        buf_14 = a1;
        v32 = 1024;
        v33 = v25;
        v13 = "%s: Invalid semaphore array, %s-%d not registered\n";
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    v21 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  if (v9 != 17)
  {
LABEL_17:
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      buf = 136315138;
      buf_4 = "PSResourceFactory";
      v13 = "%s: Invalid shbufflet type\n";
      v15 = v14;
      v16 = 12;
LABEL_48:
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, v13, &buf, v16);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v10 = HIBYTE(*(a3 + 8));
  if (v10 != 2)
  {
    v21 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  if (*a3 && *(a3 + 12))
  {
    operator new();
  }

  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 1032);
    buf = 136315650;
    buf_4 = "PSResourceFactory";
    buf_12 = 2080;
    buf_14 = a1;
    v32 = 1024;
    v33 = v24;
    v13 = "%s: Invalid IOSurfaceSharedEvents, %s-%d not registered\n";
    goto LABEL_46;
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t handle_map_resource(uint64_t a1, uint64_t a2, PSResourceFactory *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 1024);
    v13 = 136315650;
    v14 = "PSResourceFactory";
    v15 = 2080;
    v16 = a1;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s: handle_map_resource key (%s), type (%d) \n", &v13, 0x1Cu);
  }

  v8 = *(a1 + 1024);
  if (v8 <= 12)
  {
    if (v8)
    {
      if (v8 != 4)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 2056);
LABEL_12:
      PSResourceFactory::shareResource(a3, a1, v9, a2);
      goto LABEL_13;
    }

LABEL_11:
    v9 = *(a1 + 1032);
    goto LABEL_12;
  }

  if (v8 == 13 || v8 == 14 || v8 == 17)
  {
    goto LABEL_11;
  }

LABEL_14:
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "PSResourceFactory";
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s: Invalid shbufflet type\n", &v13, 0xCu);
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSResourceFactory::shareResource(PSResourceFactory *this, char *a2, int a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v8 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(this, __p);
  if (v8)
  {
    v9 = v8[5];
    if (!*(v9 + 3))
    {
LABEL_6:
      v15 = 0;
      asprintf(&v15, "%s(line=%d): Did not find id for resource %s id=%d.\n", "PSResourceFactory", 1854, a2, a3);
      v12 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136316418;
        v19 = "shareResource";
        v20 = 1024;
        v21 = 1854;
        v22 = 2080;
        v23 = "PSResourceFactory";
        v24 = 1024;
        v25 = 1854;
        v26 = 2080;
        v27 = a2;
        v28 = 1024;
        v29 = a3;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d %s(line=%d): Did not find id for resource %s id=%d.\n", buf, 0x32u);
      }

      if (OSLogFlushBuffers())
      {
        PSResourceFactory::shareResource();
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
      __break(1u);
    }

    v10 = 0;
    v11 = (v9 + 88);
    while (PSSharedResource::getID(*v11) != a3)
    {
      ++v10;
      v11 += 3;
      if (v10 >= *(v9 + 3))
      {
        goto LABEL_6;
      }
    }

    (*(**v11 + 16))(*v11, a4);
  }

  else
  {
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = a2;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "Did not find resource for key=%s.", buf, 0xCu);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25EC15DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSResourceFactory::handle_request_telemetry_enabled(PSResourceFactory *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -1;
  v1 = *(this + 39);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN17PSResourceFactory32handle_request_telemetry_enabledEj_block_invoke;
  v4[3] = &unk_279A4DB58;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_async(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN17PSResourceFactory32handle_request_telemetry_enabledEj_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = vm_allocate(*MEMORY[0x277D85F48], (v2 + 296), 0x298100uLL, 1);
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "PSResourceFactory";
      v12 = 1024;
      *v13 = 2720000;
      *&v13[4] = 2080;
      *&v13[6] = mach_error_type(v4);
      *&v13[14] = 2080;
      *&v13[16] = mach_error_string(v4);
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s: vm_allocate failure (size=%ul) on PBS telemetry startup (%s - %s)", buf, 0x26u);
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
  }

  else
  {
    v9 = 0;
    ps_get_times(0, &v9, &v8);
    *(v2 + 304) = 0;
    atomic_store(1u, (v2 + 288));
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v11 = "PSResourceFactory";
      v12 = 2048;
      *v13 = v9;
      *&v13[8] = 2048;
      *&v13[10] = v8;
      *&v13[18] = 2048;
      *&v13[20] = *(&v8 + 1);
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s: telemetry enabled at MCT: %llu, unixtime: %ld.%09ld", buf, 0x2Au);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t PSResourceFactory::handle_request_telemetry_disabled(PSResourceFactory *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -1;
  v2 = *(this + 39);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN17PSResourceFactory33handle_request_telemetry_disabledEj_block_invoke;
  block[3] = &unk_279A4DB80;
  v6 = a2;
  block[4] = &v7;
  block[5] = this;
  dispatch_async(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZN17PSResourceFactory33handle_request_telemetry_disabledEj_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  bzero(v9, 0x890uLL);
  v12 = 0x1000000018;
  v10 = *(v2 + 304);
  if (atomic_load_explicit((v2 + 288), memory_order_acquire))
  {
    atomic_store(0, (v2 + 288));
    v11 = 1;
    ps_comms_reply_ool(v9, 2192, *(v2 + 296), 2720000, *(a1 + 48));
    MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], *(v2 + 296), 2720000);
    *(v2 + 296) = 0;
    v3 = _ps_buffer_log;
    v4 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    v5 = 0;
    if (v4)
    {
      v7 = 136315138;
      v8 = "PSResourceFactory";
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s: telemetry disabled", &v7, 0xCu);
      v5 = 0;
    }
  }

  else
  {
    v11 = 0;
    ps_comms_reply_ool(v9, 2192, 0, 0, *(a1 + 48));
    v5 = -1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSResourceFactory::handleResourceFactoryMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = _ps_buffer_log;
  switch(*(a2 + 2096))
  {
    case 0:
      v10 = a2;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        v11 = "%s: PLS_RES_FACT_REGISTER_SRC\n";
        goto LABEL_29;
      }

      goto LABEL_59;
    case 1:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_REGISTER_SB\n", buf, 0xCu);
      }

      v13 = *(a2 + 2120);
      *buf = *(a2 + 2104);
      *&buf[16] = v13;
      PSResourceFactory::handle_register_shbuffergroup(a1, a2, a3, buf);
      goto LABEL_58;
    case 2:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_UNREGISTER_SB\n", buf, 0xCu);
      }

      PSResourceFactory::handle_unregister_shbuffergroup(a1, a2, a3);
      goto LABEL_58;
    case 3:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_CLIENT_DIED\n", buf, 0xCu);
      }

      PSResourceFactory::handle_client_died(a1, a2);
      goto LABEL_58;
    case 4:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_ALLOC\n", buf, 0xCu);
      }

      v16 = *(a2 + 2100);
      if (v16 != 8)
      {
        v10 = a2;
        if (v16 != 9)
        {
          goto LABEL_59;
        }

        handle_allocate_resource(a2);
        goto LABEL_58;
      }

      v17 = *(a2 + 1024);
      v18 = v17 > 0x11;
      v19 = (1 << v17) & 0x26001;
      v20 = v18 || v19 == 0;
      v10 = a2;
      if (!v20)
      {
        handle_install_resource(a2, v15, a4, a1);
LABEL_58:
        v10 = a2;
      }

LABEL_59:
      if (atomic_load_explicit((a1 + 288), memory_order_acquire))
      {
        ps_get_times(0, buf, &buf[8]);
        strlcpy(&buf[24], v10, 0x200uLL);
        *&buf[536] = a5;
        *&buf[540] = *(a2 + 2096);
        v21 = *(a1 + 312);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN17PSResourceFactory28handleResourceFactoryMessageEP17res_factory_msg_tjP21mach_msg_descriptor_ti_block_invoke;
        block[3] = &__block_descriptor_tmp_21;
        block[4] = a1;
        memcpy(v25, buf, sizeof(v25));
        dispatch_async(v21, block);
      }

      v22 = *MEMORY[0x277D85DE8];
      return 0;
    case 5:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_DEALLOC\n", buf, 0xCu);
      }

      PSResourceFactory::handle_dealloc_shbufflet(a1);
      goto LABEL_58;
    case 6:
      v10 = a2;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      *buf = 136315138;
      *&buf[4] = "PSResourceFactory";
      v11 = "%s: PLS_RES_FACT_SRC_START\n";
      goto LABEL_29;
    case 7:
      v10 = a2;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      *buf = 136315138;
      *&buf[4] = "PSResourceFactory";
      v11 = "%s: PLS_RES_FACT_SRC_STOP\n";
LABEL_29:
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, v11, buf, 0xCu);
      goto LABEL_58;
    case 0xB:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_MAP\n", buf, 0xCu);
      }

      handle_map_resource(a2, a3, a1);
      goto LABEL_58;
    case 0xC:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_STATUS\n", buf, 0xCu);
      }

      PSResourceFactory::handle_resource_status(a1, a2, *(a2 + 2100), a3);
      goto LABEL_58;
    case 0x12:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_SHBUFFGROUP_LIST\n", buf, 0xCu);
      }

      PSResourceFactory::handle_shbuffgroup_list(a1, a2);
      goto LABEL_58;
    case 0x13:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_RINGBUFFER_INFO\n", buf, 0xCu);
      }

      PSResourceFactory::handle_ringbuffer_info(a1, a2, a3);
      goto LABEL_58;
    case 0x14:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_FRAME_HISTORY_INFO\n", buf, 0xCu);
      }

      PSResourceFactory::handle_frame_history_info(a1, a2, a3);
      goto LABEL_58;
    case 0x15:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_SHBUFFLET_INFO\n", buf, 0xCu);
      }

      PSResourceFactory::handle_shbufflet_info(a1, a2, v12, a3);
      goto LABEL_58;
    case 0x16:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_TELEMETRY_ENABLED\n", buf, 0xCu);
      }

      PSResourceFactory::handle_request_telemetry_enabled(a1);
      goto LABEL_52;
    case 0x17:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: PLS_RES_FACT_TYPE_TELEMETRY_DISABLED\n", buf, 0xCu);
      }

      PSResourceFactory::handle_request_telemetry_disabled(a1, a3);
      goto LABEL_52;
    default:
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid Resource Factory Message\n", buf, 0xCu);
      }

LABEL_52:
      v10 = &unk_25EC341ED;
      goto LABEL_59;
  }
}

void ___ZN17PSResourceFactory28handleResourceFactoryMessageEP17res_factory_msg_tjP21mach_msg_descriptor_ti_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (atomic_load_explicit((v1 + 288), memory_order_acquire))
  {
    v2 = *(v1 + 304);
    if (v2 > 4999)
    {
      v3 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = "PSResourceFactory";
        _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s: Failed to log message, telemetry buffer full", &v5, 0xCu);
      }
    }

    else
    {
      memcpy((*(v1 + 296) + 544 * v2), (a1 + 40), 0x220uLL);
      ++*(v1 + 304);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void PSResourceFactory::PSResourceFactory(PSResourceFactory *this, PSCommsServer *a2, char *a3, unint64_t a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 15) = 0;
  *(this + 273) = 0;
  *(this + 288) = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 35) = a4;
  *(this + 272) = a5;
  *(this + 273) = os_variant_allows_internal_security_policies();
  *(this + 39) = dispatch_queue_create("PBS-Resfact-Telemetry", 0);
  if (a2)
  {
    *&v13 = this;
    *(&v13 + 1) = PSResourceFactory::notify_cb;
    if (!a3)
    {
      PSCommsServer::registerCallback(a2, 0, &v13, "com.apple.polaris.daemon_default", (a4 >> 1) & 1, 0, a5);
      strlcpy(this + 144, "com.apple.polaris.daemon_default", 0x80uLL);
LABEL_6:
      if ((*(this + 272) & 1) == 0)
      {
        operator new();
      }

      operator new();
    }

    if (strnlen(a3, 0x80uLL) < 0x80)
    {
      strlcpy(this + 144, a3, 0x80uLL);
      PSCommsServer::registerCallback(a2, 0, &v13, a3, 0, 0, a5);
      goto LABEL_6;
    }

    v12 = 0;
    asprintf(&v12, "Server name %s is longer than max supported length(%d)", a3, 128);
    v11 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "PSResourceFactory";
      v16 = 1024;
      v17 = 1888;
      v18 = 2080;
      v19 = a3;
      v20 = 1024;
      v21 = 128;
      _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_FAULT, "%s:%d Server name %s is longer than max supported length(%d)", buf, 0x22u);
    }

    if (OSLogFlushBuffers())
    {
      PSResourceFactory::PSResourceFactory();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  else
  {
    *&v13 = 0;
    asprintf(&v13, "CommsServer is NULL \n");
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "PSResourceFactory";
      v16 = 1024;
      v17 = 1879;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_FAULT, "%s:%d CommsServer is NULL \n", buf, 0x12u);
    }

    if (OSLogFlushBuffers())
    {
      PSResourceFactory::PSResourceFactory();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  __break(1u);
}