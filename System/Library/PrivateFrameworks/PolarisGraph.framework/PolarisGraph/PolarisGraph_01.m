void std::vector<PSTask * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<PSTask * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<PSTask * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__value_func<void ()(PSTask *)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_array *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ps_resource *>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__construct_node_hash<std::pair<std::string const,ps_resource *>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25ECA8518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25ECA85E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id __PSGraphLogSharedInstance()
{
  if (__PSGraphLogSharedInstance_onceToken != -1)
  {
    __PSGraphLogSharedInstance_cold_1();
  }

  v1 = sharedInstance_0;

  return v1;
}

double __ps_public_util_get_mach_time_factor_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1;
  mach_time_factor = *&result;
  return result;
}

unint64_t ps_public_util_ns_to_mach_time(unint64_t a1)
{
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  return (a1 / *&mach_time_factor);
}

unint64_t ps_public_util_mach_time_to_ns(unint64_t a1)
{
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  return (*&mach_time_factor * a1);
}

uint64_t ps_public_util_get_mct_mat_delta()
{
  v7 = *MEMORY[0x277D85DE8];
  times = mach_get_times();
  if (times)
  {
    v1 = times;
    v2 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v6 = v1;
      _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Failed to get mach time delta (MCT - MAT) with kr %d", buf, 8u);
    }

    result = 0;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_public_util_spu_to_AP_time(uint64_t a1, void *a2)
{
  v3 = 1000 * a1;
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  v4 = 3758097084;
  v5 = (v3 / *&mach_time_factor);
  mct_mat_delta = ps_public_util_get_mct_mat_delta();
  if (v5 <= mct_mat_delta)
  {
    ps_public_util_spu_to_AP_time_cold_2(mct_mat_delta, v5);
  }

  else if (a2)
  {
    v4 = 0;
    *a2 = v5 - mct_mat_delta;
  }

  return v4;
}

void ps_resource_stream_provider_representation_cold_1(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "Unexpected stream provider type found: %d", a2);
  v4 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "ps_resource_stream_provider_representation";
    v11 = 1024;
    v12 = 61;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_FAULT, "%s:%d Unexpected stream provider type found: %d", buf, 0x18u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "ps_resource_stream_provider_representation";
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_25EC85000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  abort_with_reason();
  +[PSStreamDomain msgDomain];
}

uint64_t ps_graph_populate_sync_data_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "sync_context is null");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v16 = "ps_graph_populate_sync_data";
    v17 = 1024;
    v18 = 2089;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d sync_context is null", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v10, v11, "%s() failed to flush buffers with error code: %d", &v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_timestamp_cold_1(v12, v13);
}

uint64_t ps_graph_sync_data_get_timestamp_cold_1(char **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "index %zu out of bounds", a2);
  v4 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_8();
    v21 = 2097;
    v22 = 2048;
    v23 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v5, v6, "%s:%d index %zu out of bounds", v7, v8, v9, v10, v18, v19, v20[0]);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_8();
      v21 = v12;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_timestamp_cold_2(v16);
}

uint64_t ps_graph_sync_data_get_timestamp_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "sync_context is null");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v16 = "ps_graph_sync_data_get_timestamp";
    v17 = 1024;
    v18 = 2096;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d sync_context is null", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v10, v11, "%s() failed to flush buffers with error code: %d", &v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_virtual_frameid_cold_1(v12, v13);
}

uint64_t ps_graph_sync_data_get_virtual_frameid_cold_1(char **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "index %zu out of bounds", a2);
  v4 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_8();
    v21 = 2105;
    v22 = 2048;
    v23 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v5, v6, "%s:%d index %zu out of bounds", v7, v8, v9, v10, v18, v19, v20[0]);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_8();
      v21 = v12;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_virtual_frameid_cold_2(v16);
}

uint64_t ps_graph_sync_data_get_virtual_frameid_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "sync_context is null");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v16 = "ps_graph_sync_data_get_virtual_frameid";
    v17 = 1024;
    v18 = 2104;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d sync_context is null", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v10, v11, "%s() failed to flush buffers with error code: %d", &v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_physical_frameid_cold_1(v12, v13);
}

uint64_t ps_graph_sync_data_get_physical_frameid_cold_1(char **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "index %zu out of bounds", a2);
  v4 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_8();
    v21 = 2113;
    v22 = 2048;
    v23 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v5, v6, "%s:%d index %zu out of bounds", v7, v8, v9, v10, v18, v19, v20[0]);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_8();
      v21 = v12;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_physical_frameid_cold_2(v16);
}

uint64_t ps_graph_sync_data_get_physical_frameid_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "sync_context is null");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v15 = "ps_graph_sync_data_get_physical_frameid";
    v16 = 1024;
    v17 = 2112;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d sync_context is null", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v10, v11, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_reader_acquire(v12);
}

uint64_t ps_reader_acquire(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 24)), v1 != 4) && (v2 = *(a1 + 8)) != 0)
  {
    return v2();
  }

  else
  {
    return 1;
  }
}

uint64_t ps_reader_relinquish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 24)), v1 != 4) && (v2 = *(a1 + 16)) != 0)
  {
    return v2();
  }

  else
  {
    return 1;
  }
}

uint64_t ps_task_context_set_mtl_device_cold_1(uint64_t a1, char **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  *a2 = 0;
  asprintf(a2, "MTLDevice input does not point to a valid MTLDevice. Instead of MTLDevice, found class type %s", [v5 UTF8String]);
  v6 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v23 = "ps_task_context_set_mtl_device";
    v24 = 1024;
    v25 = 73;
    v26 = 2080;
    v27 = [v5 UTF8String];
    OUTLINED_FUNCTION_3(&dword_25EC85000, v7, v8, "%s:%d MTLDevice input does not point to a valid MTLDevice. Instead of MTLDevice, found class type %s", v9, v10, v11, v12, v20, v21, 2u);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      *buf = 136315394;
      v23 = "ps_task_context_set_mtl_device";
      v24 = 1024;
      v25 = v14;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v16, v17, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_device_cold_2(v18);
}

uint64_t ps_task_context_set_mtl_device_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "MTLDevice pointer was null.");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_7_0();
    v17 = 67;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d MTLDevice pointer was null.", v5, v6, v7, v8, v16[0]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7_0();
      v17 = v10;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_command_queue_cold_1(v14);
}

uint64_t ps_task_context_set_mtl_command_queue_cold_1(uint64_t a1, char **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  *a2 = 0;
  asprintf(a2, "MTLCommandQueue input does not point to a valid MTLCommandQueue. Instead of MTLCommandQueue, found class type %s", [v5 UTF8String]);
  v6 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v23 = "ps_task_context_set_mtl_command_queue";
    v24 = 1024;
    v25 = 93;
    v26 = 2080;
    v27 = [v5 UTF8String];
    OUTLINED_FUNCTION_3(&dword_25EC85000, v7, v8, "%s:%d MTLCommandQueue input does not point to a valid MTLCommandQueue. Instead of MTLCommandQueue, found class type %s", v9, v10, v11, v12, v20, v21, 2u);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      *buf = 136315394;
      v23 = "ps_task_context_set_mtl_command_queue";
      v24 = 1024;
      v25 = v14;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v16, v17, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_command_queue_cold_2(v18);
}

uint64_t ps_task_context_set_mtl_command_queue_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "MTLCommandQueue pointer was null.");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_7_0();
    v17 = 87;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d MTLCommandQueue pointer was null.", v5, v6, v7, v8, v16[0]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7_0();
      v17 = v10;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return [PSTask addInput:v14];
}

uint64_t ps_writer_acquire(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 40)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_relinquish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 48)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_publish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 56)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_pause(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_resume(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 72)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_pause_liveness(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_resume_liveness(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 72)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_resource::get_databuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 32 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_jasperbuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 112 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_pearlbuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 104 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_timestamps.__begin_;
  if (a2 >= this->_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_buffer_expiry_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_buffer_expiry_timestamps.__begin_;
  if (a2 >= this->_buffer_expiry_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_buffer_usage_completed_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_buffer_usage_completed_timestamps.__begin_;
  if (a2 >= this->_buffer_usage_completed_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_frameid(ps_resource *this, unint64_t a2)
{
  begin = this->_frameids.__begin_;
  if (a2 >= this->_frameids.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_physical_frameid(ps_resource *this, unint64_t a2)
{
  begin = this->_physical_frameids.__begin_;
  if (a2 >= this->_physical_frameids.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_object_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 8 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_data(ps_resource *this, unint64_t a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_12(this);
  v6 = v5[47];
  v7 = v5[48];
  OUTLINED_FUNCTION_3_0();
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 >= v10;
  }

  if (v12)
  {
    result = 0;
    *v3 = 0;
  }

  else if (*(v5[35] + 8 * v4) == 1)
  {
    return 0;
  }

  else
  {
    v14 = (v8 + 16 * v4);
    result = *v14;
    *v3 = v14[1];
  }

  return result;
}

uint64_t ps_resource::get_object(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v3)
  {
    return 0;
  }

  v4 = *(v2 + 376);
  v5 = *(v2 + 384);
  OUTLINED_FUNCTION_3_0();
  if (v3 || v7 >= v8)
  {
    return 0;
  }

  else
  {
    return *(v6 + 8 * v1);
  }
}

uint64_t ps_resource::get_databuffer(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v3)
  {
    return 0;
  }

  v4 = *(v2 + 376);
  v5 = *(v2 + 384);
  OUTLINED_FUNCTION_3_0();
  if (v3 || v7 >= v8)
  {
    return 0;
  }

  else
  {
    return *(v6 + 32 * v1 + 8);
  }
}

uint64_t ps_resource::get_anebuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 88 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void ps_resource::set_object(ps_resource *this, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_12(this);
  if (*(v5[35] + 8 * v4) != 1)
  {
    v6 = v5[47];
    v7 = v5[48];
    OUTLINED_FUNCTION_3_0();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 >= v10;
    }

    if (!v12)
    {
      *(v8 + 8 * v4) = v3;
    }
  }
}

void ps_resource::set_databuffer(ps_resource *this, unint64_t a2, __CVBuffer *a3, void *a4)
{
  OUTLINED_FUNCTION_6_0(this);
  OUTLINED_FUNCTION_9();
  if (!v5)
  {
    v6 = *(v4 + 376);
    v7 = *(v4 + 384);
    OUTLINED_FUNCTION_3_0();
    if (v5)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 >= v10;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_7_1(v8);
    }
  }
}

void ps_resource::set_jasperbuffer(ps_resource *this, unint64_t a2, __CVBuffer **a3, void **a4)
{
  jasperbuffer_ptr = ps_resource::get_jasperbuffer_ptr(this);
  if (jasperbuffer_ptr)
  {
    v5 = *(jasperbuffer_ptr + 40);
    if (v5)
    {
      if (v5 == 1)
      {
        OUTLINED_FUNCTION_13();
        do
        {
          OUTLINED_FUNCTION_0_1(v6);
        }

        while (!v7);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13();
      do
      {
        OUTLINED_FUNCTION_0_1(v8);
      }

      while (!v7);
    }
  }
}

void ps_resource::set_jasperbuffer(ps_resource *this, unint64_t a2, __CVBuffer **a3, const __CFData **a4)
{
  if (ps_resource::get_jasperbuffer_ptr(this))
  {
    OUTLINED_FUNCTION_13();
    do
    {
      OUTLINED_FUNCTION_0_1(v4);
    }

    while (!v5);
  }
}

uint64_t ps_resource::set_jasperbuffer_valid(ps_resource *this, unint64_t a2, BOOL *a3)
{
  result = ps_resource::get_jasperbuffer_ptr(this);
  if (result)
  {
    for (i = 0; i != 4; ++i)
    {
      *(result + i) = a3[i];
    }
  }

  return result;
}

uint64_t ps_resource::set_jasperbuffer_timestamps(ps_resource *this, unint64_t a2, unint64_t *a3)
{
  result = ps_resource::get_jasperbuffer_ptr(this);
  if (result)
  {
    for (i = 0; i != 4; ++i)
    {
      *(result + 80 + i * 8) = a3[i];
    }
  }

  return result;
}

double ps_resource::set_pearlbuffer(ps_resource *this, unint64_t a2, __CVBuffer *a3, __CVBuffer *a4, __CVBuffer *a5, __CVBuffer *a6, const __CFData *a7)
{
  v7 = OUTLINED_FUNCTION_10(this);
  if (v7)
  {
    *&result = OUTLINED_FUNCTION_5_0(v7).n128_u64[0];
  }

  return result;
}

_BYTE *ps_resource::set_pearlbuffer_valid(ps_resource *this, uint64_t a2, int a3, int a4, int a5, int a6)
{
  result = ps_resource::get_pearlbuffer_ptr(this);
  if (result)
  {
    this->_item_status.__begin_[a2] = (a5 | a6 | a4 | a3) ^ 1u;
    *result = a3;
    result[16] = a4;
    result[32] = a5;
    result[48] = a6;
  }

  return result;
}

_DWORD *ps_resource::set_anebuffer(ps_resource *this, unint64_t a2, __IOSurface **a3, unsigned int a4)
{
  result = ps_resource::get_anebuffer_ptr(this);
  if (result)
  {
    *result = a4;
    if (a4)
    {
      v7 = result + 2;
      v8 = a4;
      do
      {
        v9 = *a3++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void _copy_resource()
{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 86, "false && A surface item must contain a CVDataBuffer");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 75, "false && A surface item must contain a CVPixelBuffer");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 64, "false && A surface item must contain an IOSurface");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 94, "false && Missing/unsupported resource class");
}

void ps_public_util_spu_to_AP_time_cold_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "ps_public_util_spu_to_AP_time";
    v8 = 2048;
    v9 = a1;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_ERROR, "%s Invalid sample timestamp. Mach delta (%llu) is greater than sample timestamp (%llu). Value will underflow", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}