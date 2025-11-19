void prewarm_for_launch(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (initialized != -1)
  {
    prewarm_for_launch_cold_1();
  }

  if (active_prewarming_state == 3)
  {
    v2 = prewarming_os_log;
    if (os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEBUG))
    {
      prewarm_for_launch_cold_2(v2);
    }
  }

  else if (v1)
  {
    if (active_prewarming_state != 2)
    {
      if (!active_prewarming_state || (v3 = check_is_enabled(), active_prewarming_state != 3) && (previous_prewarming_state = active_prewarming_state, active_prewarming_state = v3 ^ 1, ((v3 ^ 1) & 1) == 0))
      {
        v4 = [v1 bundleIdentifier];
        if (v4)
        {
          dispatch_async_f(queue, 0, parallel_prewarming_background_fn);
          v5 = prewarming_os_log;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 136446210;
            v9 = [v4 UTF8String];
            _os_log_impl(&dword_21FED5000, v5, OS_LOG_TYPE_DEFAULT, "Prewarming for launch of %{public}s", &v8, 0xCu);
          }
        }

        v6 = check_is_enabled();
        if (active_prewarming_state != 3)
        {
          previous_prewarming_state = active_prewarming_state;
          active_prewarming_state = v6 ^ 1;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void parallel_prewarming_background_fn(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  num_ranges_prewarmed = 0;
  v1 = prewarming_os_log;
  if (os_signpost_enabled(prewarming_os_log))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_21FED5000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Prewarming for launch", "", &v12, 2u);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  dispatch_apply_f(3uLL, parallel_queue, 0, parallel_prewarm_ranges_callback);
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - rep;
  v4 = num_pages_to_prewarm;
  v5 = prewarming_os_log;
  v6 = os_signpost_enabled(prewarming_os_log);
  if ((v3.__d_.__rep_ + 999999) >= 0x1E847F)
  {
    if (v6)
    {
      v10 = vcvtd_n_f64_u64(*MEMORY[0x277D85FA0] * v4, 0x14uLL);
      v12 = 134218496;
      v13 = v4;
      v14 = 2048;
      v15 = v3.__d_.__rep_ / 1000000;
      v16 = 2048;
      v17 = v10 / ((v3.__d_.__rep_ / 1000000) / 1000.0);
      v7 = "Prewarmed %zu pages in %zu ms (~%.2f MB/s assuming none were resident)";
      v8 = v5;
      v9 = 32;
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v12 = 134217984;
    v13 = v4;
    v7 = "%zu Pages we wanted to prewarm were already resident";
    v8 = v5;
    v9 = 12;
LABEL_8:
    _os_signpost_emit_with_name_impl(&dword_21FED5000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Prewarming for launch", v7, &v12, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t check_is_enabled(void)
{
  {
    check_is_enabled(void)::defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coreos.fast"];
  }

  v0 = active_prewarming_state;
  v1 = [check_is_enabled(void)::defaults objectForKey:@"prewarming_enable_2"];

  if (!v1)
  {
    if (!v0)
    {
      return 1;
    }

    v10 = prewarming_os_log;
    if (!os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v12 = 0;
    v7 = "User default not set, enabling prewarming";
    v8 = &v12;
    v9 = v10;
    goto LABEL_13;
  }

  v2 = [check_is_enabled(void)::defaults BOOLForKey:@"prewarming_enable_2"];
  v3 = v2;
  if (active_prewarming_state == 3)
  {
    v4 = previous_prewarming_state;
  }

  else
  {
    v4 = v0;
  }

  if ((v2 ^ (v4 == 0)))
  {
    v5 = prewarming_os_log;
    v6 = os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (!v6)
      {
        return 1;
      }

      v14 = 0;
      v7 = "User default set to 1, enabling prewarming";
      v8 = &v14;
      v9 = v5;
LABEL_13:
      _os_log_impl(&dword_21FED5000, v9, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      return 1;
    }

    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21FED5000, v5, OS_LOG_TYPE_DEFAULT, "User default set to 0, disabling prewarming", buf, 2u);
    }

    return 0;
  }

  return v3;
}

void parallel_prewarm_ranges_callback(void *a1)
{
  for (i = atomic_fetch_add_explicit(&num_ranges_prewarmed, 1uLL, memory_order_relaxed); i < num_ranges_to_prewarm; i = atomic_fetch_add_explicit(&num_ranges_prewarmed, 1uLL, memory_order_relaxed))
  {
    prewarming_ranges = get_prewarming_ranges();
    madvise(*(*prewarming_ranges + 16 * i), *(*prewarming_ranges + 16 * i + 8), 3);
  }
}

uint64_t *get_prewarming_ranges(void)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    get_prewarming_ranges();
  }

  return &qword_27CF1D650;
}

void init(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (init_oslog_and_dispatch_queues())
  {
    v1 = [MEMORY[0x277CCAC38] processInfo];
    v2 = [v1 processName];
    v3 = [v2 UTF8String];

    if (v3)
    {
      v4 = &VALID_PROCESS_NAMES;
      v5 = 32;
      while (1)
      {
        v15.__size_ = strlen(v3);
        v15.__data_ = v3;
        if (!std::string_view::compare(v4, v15))
        {
          break;
        }

        ++v4;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      populate_ranges();
      v8 = check_is_enabled();
      if (active_prewarming_state != 3)
      {
        previous_prewarming_state = active_prewarming_state;
        active_prewarming_state = v8 ^ 1;
        v9 = prewarming_os_log;
        if (os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT))
        {
          if (active_prewarming_state)
          {
            v10 = "disabled";
          }

          else
          {
            v10 = "enabled";
          }

          v12 = 136446210;
          v13 = v10;
          _os_log_impl(&dword_21FED5000, v9, OS_LOG_TYPE_DEFAULT, "Prewarming is %{public}s", &v12, 0xCu);
        }
      }
    }

    else
    {
LABEL_6:
      if (active_prewarming_state != 3)
      {
        previous_prewarming_state = active_prewarming_state;
        active_prewarming_state = 2;
      }

      v6 = prewarming_os_log;
      if (os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEBUG))
      {
        v11 = "(null)";
        if (v3)
        {
          v11 = v3;
        }

        v12 = 136446210;
        v13 = v11;
        _os_log_debug_impl(&dword_21FED5000, v6, OS_LOG_TYPE_DEBUG, "Process %{public}s is not eligible for prewarming.", &v12, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t init_oslog_and_dispatch_queues(void)
{
  if ((init_oslog_and_dispatch_queues(void)::initialized & 1) == 0)
  {
    v1 = os_log_create("com.apple.shared_cache_page_prewarming", "default");
    v2 = prewarming_os_log;
    prewarming_os_log = v1;

    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shared_cache_page_prewarming_serial_queue", v3);
    v5 = queue;
    queue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.shared_cache_page_prewarming_concurrent_queue", v6);
    v8 = parallel_queue;
    parallel_queue = v7;

    if (queue)
    {
      if (parallel_queue)
      {
        v0 = 1;
        init_oslog_and_dispatch_queues(void)::initialized = 1;
LABEL_13:

        return v0;
      }

      v9 = prewarming_os_log;
      if (!os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v0 = 0;
        if (active_prewarming_state != 3)
        {
          previous_prewarming_state = active_prewarming_state;
          active_prewarming_state = 3;
        }

        goto LABEL_13;
      }

      v13 = 0;
      v10 = "Error: Failed to create parallel dispatch queue.";
      v11 = &v13;
    }

    else
    {
      v9 = prewarming_os_log;
      if (!os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v14 = 0;
      v10 = "Error: Failed to create serial dispatch queue.";
      v11 = &v14;
    }

    _os_log_impl(&dword_21FED5000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_11;
  }

  return 1;
}

int std::string_view::compare(const std::string_view *this, std::string_view __sv)
{
  size = __sv.__size_;
  data = this->__data_;
  v4 = this->__size_;
  if (__sv.__size_ >= v4)
  {
    __sv.__size_ = v4;
  }

  result = memcmp(data, __sv.__data_, __sv.__size_);
  if (v4 < size)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == size)
  {
    v7 = 0;
  }

  if (!result)
  {
    return v7;
  }

  return result;
}

double stats::clear_residency_counts(stats *this)
{
  result = 0.0;
  xmmword_27CF1D688 = 0u;
  unk_27CF1D698 = 0u;
  stats::residency_counts = 0u;
  unk_27CF1D678 = 0u;
  stats::count = 0;
  return result;
}

uint64_t stats::count_resident(stats *this, char *a2)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85FA0];
  v3 = (-*MEMORY[0x277D85FA0] & this);
  v4 = &a2[this] - v3;
  if (v4 % *MEMORY[0x277D85FA0])
  {
    v5 = v4 / *MEMORY[0x277D85FA0] + 1;
  }

  else
  {
    v5 = v4 / *MEMORY[0x277D85FA0];
  }

  stats::count += v5;
  while (1)
  {
    v6 = v5 >= 0x400 ? 1024 : v5;
    result = mincore(v3, v6 * *v2, stats::mincore_result_array);
    if (result)
    {
      break;
    }

    if (v5)
    {
      v8 = 0;
      do
      {
        v9 = stats::mincore_result_array[v8];
        if (v9)
        {
          for (i = 0; i != 8; ++i)
          {
            if ((stats::mincore_flags[i] & v9) != 0)
            {
              ++*(&stats::residency_counts + i);
            }
          }
        }

        ++v8;
      }

      while (v8 != v6);
    }

    v5 -= v6;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v11 = strerror(result);
  v12 = *__error();
  v15[3] = 0;
  v15[4] = 108;
  v14[2] = 108;
  v15[0] = v11;
  v15[2] = v12;
  v14[0] = 2;
  v14[1] = v15;
  result = std::__vprint_unicode[abi:nn200100]<void>(MEMORY[0x277D82670], "Error: mincore returned {} (errno {})", 37, v14, 1);
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t update_prewarming_enabled_state(void)
{
  result = check_is_enabled();
  if (active_prewarming_state != 3)
  {
    previous_prewarming_state = active_prewarming_state;
    active_prewarming_state = result ^ 1;
  }

  return result;
}

void populate_ranges(void)
{
  _dyld_for_each_prewarming_range();
  prewarming_ranges = get_prewarming_ranges();
  v1 = prewarming_ranges[1] - *prewarming_ranges;
  num_ranges_to_prewarm = v1 >> 4;
  if (!v1)
  {
    v2 = prewarming_os_log;
    if (os_log_type_enabled(prewarming_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_21FED5000, v2, OS_LOG_TYPE_DEFAULT, "Error: Found no prewarming ranges.", v3, 2u);
    }

    if (active_prewarming_state != 3)
    {
      previous_prewarming_state = active_prewarming_state;
      active_prewarming_state = 3;
    }
  }
}

void populate_ranges_callback(const void *a1, unint64_t a2)
{
  prewarming_ranges = get_prewarming_ranges();
  v5 = prewarming_ranges;
  v7 = prewarming_ranges[1];
  v6 = prewarming_ranges[2];
  if (v7 >= v6)
  {
    v9 = (v7 - *prewarming_ranges) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - *prewarming_ranges;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<prewarming_range>::allocate_at_least[abi:nn200100](prewarming_ranges, v12);
    }

    v13 = (16 * v9);
    *v13 = a1;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = prewarming_ranges[1] - *prewarming_ranges;
    v15 = v13 - v14;
    memcpy(v13 - v14, *prewarming_ranges, v14);
    v16 = *v5;
    *v5 = v15;
    v5[1] = v8;
    v5[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a1;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  v5[1] = v8;
  if (a2 % *MEMORY[0x277D85FA0])
  {
    v17 = a2 / *MEMORY[0x277D85FA0] + 1;
  }

  else
  {
    v17 = a2 / *MEMORY[0x277D85FA0];
  }

  num_pages_to_prewarm += v17;
}

void std::allocator<prewarming_range>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__vprint_unicode[abi:nn200100]<void>(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5)
{
  ostream_file = std::__get_ostream_file();
  if (ostream_file && (v12 = ostream_file, (std::__is_posix_terminal(ostream_file, v11) & 1) != 0))
  {
    std::ostream::flush();
    MEMORY[0x223D73830](v16, a1);
    if (v16[0] == 1)
    {
      v14 = *a4;
      v15 = *(a4 + 16);
      fflush(v12);
      v17 = v14;
      v18 = v15;
      std::__print::__vprint_nonunicode[abi:nn200100]<void>(v12, a2, a3, &v17, a5);
    }

    return MEMORY[0x223D73840](v16);
  }

  else
  {
    v17 = *a4;
    v18 = *(a4 + 16);
    return std::__vprint_nonunicode[abi:nn200100]<void>(a1, a2, a3, &v17, a5);
  }
}

uint64_t std::__vprint_nonunicode[abi:nn200100]<void>(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, int a5)
{
  v36 = *MEMORY[0x277D85DE8];
  MEMORY[0x223D73830](v23, a1);
  if (v23[0] == 1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v24 = *a4;
    v25 = *(a4 + 2);
    v30.__locale_ = v34;
    *__len = xmmword_21FEE03B0;
    v32 = std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100];
    v33 = 0;
    __src = v34;
    std::locale::locale(&v26, &v21);
    std::locale::locale(&v29, &v26);
    v27 = v24;
    v28 = v25;
    std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v30, &v29, a2, a3, &v27);
    std::locale::~locale(&v29);
    std::locale::~locale(&v26);
    v10 = __len[1];
    if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
    }

    if (__len[1] >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = __len[1];
    if (__len[1])
    {
      memmove(&__dst, __src, __len[1]);
    }

    __dst.__r_.__value_.__s.__data_[v10] = 0;
    if (__src != v34)
    {
      operator delete(__src);
    }

    std::locale::~locale(&v21);
    if (a5)
    {
      std::string::push_back(&__dst, 10);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v13 = a1 + *(*a1 - 24);
    v14 = *(v13 + 40);
    v15 = *(v13 + 8);
    v16 = *(v13 + 144);
    if (v16 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v17 = std::locale::use_facet(&v30, MEMORY[0x277D82680]);
      v16 = (v17->__vftable[2].~facet_0)(v17, 32);
      std::locale::~locale(&v30);
      *(v13 + 144) = v16;
    }

    if ((v15 & 0xB0) == 0x20)
    {
      v18 = p_dst + size;
    }

    else
    {
      v18 = p_dst;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v14, p_dst, v18, p_dst + size, v13, v16))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  result = MEMORY[0x223D73840](v23);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21FED6D94(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, ...)
{
  va_start(va, a8);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223D73840](va);
  _Unwind_Resume(a1);
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
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

void sub_21FED6FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:nn200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, const std::locale *a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v18[0] = a3;
  v18[1] = &a3[a4];
  v19 = 0;
  v20 = 0;
  v21 = v6;
  v11 = *a5;
  v12 = a5[2];
  std::locale::locale(&v9, a2);
  v10 = 1;
  v14 = v11;
  v15 = v12;
  v13 = a1;
  LOBYTE(v16.__locale_) = 0;
  v17 = 0;
  std::locale::locale(&v16, &v9);
  v17 = 1;
  v7 = std::__format::__vformat_to[abi:nn200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v18, &v13);
  if (v17 == 1)
  {
    std::locale::~locale(&v16);
  }

  if (v10 == 1)
  {
    std::locale::~locale(&v9);
  }

  return v7;
}

void sub_21FED7180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    std::locale::~locale(v19 + 4);
  }

  if (a10 == 1)
  {
    std::locale::~locale(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:nn200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 == v2)
  {
    return v4;
  }

  while (1)
  {
    v7 = *v3;
    if (v7 == 125)
    {
      break;
    }

    if (v7 != 123)
    {
      goto LABEL_10;
    }

    if (++v3 == v2)
    {
      goto LABEL_13;
    }

    if (*v3 == 123)
    {
LABEL_10:
      ++v3;
      std::__format::__output_buffer<char>::push_back[abi:nn200100](v4, v7);
      if (v3 == v2)
      {
        return v4;
      }
    }

    else
    {
      *a2 = v4;
      v3 = std::__format::__handle_replacement_field[abi:nn200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
      v4 = *a2;
      if (v3 == v2)
      {
        return v4;
      }
    }
  }

  if (++v3 != v2 && *v3 == 125)
  {
    goto LABEL_10;
  }

  std::__throw_format_error[abi:nn200100]("The format string contains an invalid escape sequence");
LABEL_13:
  v9 = std::__throw_format_error[abi:nn200100]("The format string terminates at a '{'");
  return std::__throw_format_error[abi:nn200100](v9);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:nn200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_14:
    std::__throw_format_error[abi:nn200100]("The argument index should end with a ':' or a '}'");
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 != 125)
  {
    if (v9 != 58)
    {
      goto LABEL_14;
    }

    ++v7;
  }

  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:nn200100]<char const* std::__format::__handle_replacement_field[abi:nn200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:nn200100]("The replacement field misses a terminating '}'");
    goto LABEL_14;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17 + 1;
}

uint64_t std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    goto LABEL_7;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:nn200100]("Using manual argument numbering in automatic argument numbering mode");
LABEL_7:
        std::basic_format_parse_context<char>::next_arg_id[abi:nn200100](a3);
        return v3;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return (a1 + 1);
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    v7 = std::__throw_format_error[abi:nn200100]("The argument index starts with an invalid character");
    return std::__visit_format_arg[abi:nn200100]<char const* std::__format::__handle_replacement_field[abi:nn200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v7);
  }

  else
  {

    return std::__format::__detail::__parse_manual[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  }
}

void *std::__visit_format_arg[abi:nn200100]<char const* std::__format::__handle_replacement_field[abi:nn200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:nn200100]<char>(v59, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v3, v6);
      goto LABEL_66;
    case 2u:
      v25 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v26 = *a1;
        v27 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:nn200100]<char>(v59, "a character");
        *v26 = v27;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v25, v6);
      goto LABEL_66;
    case 3u:
      v28 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v29 = *a1;
        v30 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v29 = v30;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v28, v6);
      goto LABEL_66;
    case 4u:
      v15 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v16 = *a1;
        v17 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v16 = v17;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v15, v6);
      goto LABEL_66;
    case 5u:
      v35 = *a2;
      v34 = *(a2 + 1);
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v36 = *a1;
        v37 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v36 = v37;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v35, v34, v6);
      goto LABEL_66;
    case 6u:
      v31 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v32 = *a1;
        v33 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v32 = v33;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v31, v6);
      goto LABEL_66;
    case 7u:
      v41 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v42 = *a1;
        v43 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v42 = v43;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v41, v6);
      goto LABEL_66;
    case 8u:
      v22 = *a2;
      v21 = *(a2 + 1);
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v23 = *a1;
        v24 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v59, "an integer");
        *v23 = v24;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:nn200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v22, v21, v6);
      goto LABEL_66;
    case 9u:
      v18 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_57;
      }

      v19 = *a1;
      v20 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] <= 0xCu && ((1 << v59[1]) & 0x1801) != 0)
        {
          goto LABEL_56;
        }

LABEL_68:
        std::__format_spec::__throw_invalid_type_format_error[abi:nn200100]("a floating-point");
      }

      if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

LABEL_56:
      *v19 = v20;
LABEL_57:
      v6 = *(a1 + 8);
      v53 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:nn200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v53, v54, v18);
LABEL_66:
      *v6 = result;
      return result;
    case 0xAu:
      v44 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_65;
      }

      v45 = *a1;
      v46 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] > 0xCu || ((1 << v59[1]) & 0x1801) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

      *v45 = v46;
LABEL_65:
      v6 = *(a1 + 8);
      v57 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:nn200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v57, v58, v44);
      goto LABEL_66;
    case 0xBu:
      v38 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_61;
      }

      v39 = *a1;
      v40 = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] > 0xCu || ((1 << v59[1]) & 0x1801) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

      *v39 = v40;
LABEL_61:
      v6 = *(a1 + 8);
      v55 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:nn200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v55, v56, v38);
      goto LABEL_66;
    case 0xCu:
      v47 = *a2;
      *v59 = 1;
      *&v59[4] = 0xFFFFFFFF00000000;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v48 = *a1;
        *v48 = std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      v14 = strlen(v47);
      v13 = v47;
      goto LABEL_50;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v59 = 1;
      *&v59[4] = 0xFFFFFFFF00000000;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      v13 = v10;
      v14 = v11;
LABEL_50:
      result = std::__formatter_string<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v13, v14, v6);
      goto LABEL_66;
    case 0xEu:
      v8 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v8, v6);
      goto LABEL_66;
    case 0xFu:
      v49 = *a1;
      v50 = *a2;
      v51 = *(a2 + 1);
      v52 = *(a1 + 8);

      return v51(v49, v52, v50);
    default:
      std::__throw_format_error[abi:nn200100]("The argument index value is too large for the number of arguments supplied");
      goto LABEL_68;
  }
}

uint64_t std::__format::__detail::__parse_manual[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:nn200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 != 2)
    {
      return result;
    }

    result = std::__throw_format_error[abi:nn200100]("Using manual argument numbering in automatic argument numbering mode");
  }

  *(a3 + 16) = 1;
  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    a1 = std::__throw_format_error[abi:nn200100]("Using automatic argument numbering in manual argument numbering mode");
LABEL_4:
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:nn200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result != v3)
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        return result;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v3 = result;
LABEL_9:
  if (v3 == a2)
  {
    return a2;
  }

  v8 = *v3;
  if ((v8 - 48) > 9)
  {
    return v3;
  }

  if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
  {
    std::__throw_format_error[abi:nn200100]("The numeric value of the format specifier is too large");
    return a2;
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:nn200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:nn200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:nn200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) != 0)
        {
          goto LABEL_38;
        }

        while (1)
        {
          if ((a3 & 0x10) != 0 && *result == 76)
          {
            *a1 |= 0x40u;
            v14 = ++result;
            if (result == v5)
            {
              break;
            }
          }

          if ((a3 & 0x80) != 0 && *result == 110)
          {
            *a1 |= 0x80u;
            v14 = ++result;
            if (result == v5)
            {
              break;
            }
          }

          if ((a3 & 0x20) != 0)
          {
            std::__format_spec::__parser<char>::__parse_type[abi:nn200100]<char const*>(a1, &v14);
          }

          result = v14;
          if ((a3 & 0x100) == 0 || v14 == v5 || *v14 == 125)
          {
            break;
          }

          std::__throw_format_error[abi:nn200100]("The format specifier should consume the input or end with a '}'");
LABEL_38:
          v13 = std::__format_spec::__parser<char>::__parse_precision[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
          result = v14;
          if (v13)
          {
            if (v14 == v5)
            {
              break;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__process_parsed_BOOL[abi:nn200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:nn200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:nn200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:nn200100](v16) & 0x80000000) != 0)
  {
    v15 = std::__throw_format_error[abi:nn200100]("The format specifier contains malformed Unicode characters");
    return std::__format_spec::__parser<char>::__parse_width[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v15);
  }

  v6 = v16[0];
  if (v16[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v16[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
      break;
    case '>':
      v8 = 3;
      break;
    case '^':
      v8 = 2;
      break;
    default:
LABEL_7:
      v9 = **a2;
      switch(v9)
      {
        case '<':
          v10 = 1;
          break;
        case '>':
          v10 = 3;
          break;
        case '^':
          v10 = 2;
          break;
        default:
          return 0;
      }

      *a1 = *a1 & 0xF8 | v10;
      v11 = *a2;
      goto LABEL_23;
  }

  *a1 = *a1 & 0xF8 | v8;
  v13 = *a2;
  v14 = v6 - *a2;
  if (v14 == 1)
  {
    if (*v13 != 123)
    {
LABEL_21:
      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    }

    std::__throw_format_error[abi:nn200100]("The fill option contains an invalid value");
  }

  if (v6 != v13)
  {
    goto LABEL_21;
  }

LABEL_22:
  v11 = &v13[v14];
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
LABEL_7:
    *(a1 + 4) = v11;
    *a2 = v10;
    return 1;
  }

  if (v7 != 48)
  {
    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:nn200100]<char const*>(v6, a3);
    goto LABEL_7;
  }

  v12 = std::__throw_format_error[abi:nn200100]("The width option should not have a leading zero");
  return std::__format_spec::__parser<char>::__parse_precision[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v12);
}

uint64_t std::__format_spec::__parser<char>::__parse_precision[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 != 46)
  {
    return v5 == 46;
  }

  v8 = (v4 + 1);
  *a2 = v4 + 1;
  if ((v4 + 1) == a3)
  {
    std::__throw_format_error[abi:nn200100]("End of input while parsing format specifier precision");
  }

  else
  {
    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>((v4 + 2), a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
LABEL_7:
      *a2 = v10;
      return v5 == 46;
    }

    if ((v9 - 58) > 0xFFFFFFF5)
    {
      v10 = std::__format::__parse_number[abi:nn200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
      goto LABEL_7;
    }
  }

  v14 = std::__throw_format_error[abi:nn200100]("The precision option does not contain a value or an argument index");
  return std::__format_spec::__parser<char>::__parse_type[abi:nn200100]<char const*>(v14, v15);
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:nn200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 <= 0x61)
  {
    if (**a2 <= 0x45u)
    {
      if (**a2 > 0x41u)
      {
        if (v3 == 66)
        {
          v4 = 3;
        }

        else
        {
          if (v3 != 69)
          {
            return result;
          }

          v4 = 14;
        }
      }

      else if (v3 == 63)
      {
        v4 = 19;
      }

      else
      {
        if (v3 != 65)
        {
          return result;
        }

        v4 = 12;
      }
    }

    else if (**a2 <= 0x4Fu)
    {
      if (v3 == 70)
      {
        v4 = 16;
      }

      else
      {
        if (v3 != 71)
        {
          return result;
        }

        v4 = 18;
      }
    }

    else
    {
      switch(v3)
      {
        case 'P':
          v4 = 9;
          break;
        case 'X':
          v4 = 7;
          break;
        case 'a':
          v4 = 11;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 > 0x66u)
  {
    if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x63u)
  {
    if (v3 == 98)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 99)
      {
        return result;
      }

      v4 = 10;
    }
  }

  else if (v3 == 100)
  {
    v4 = 5;
  }

  else if (v3 == 101)
  {
    v4 = 13;
  }

  else
  {
    v4 = 15;
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

uint64_t std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
    if (v4 != a2 && *v4 == 125)
    {
      return (v4 + 1);
    }

    std::__throw_format_error[abi:nn200100]("The argument index is invalid");
  }

  v6 = std::__throw_format_error[abi:nn200100]("End of input while parsing an argument index");
  return std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](v6);
}

void std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](const char *a1)
{
  std::string::basic_string[abi:nn200100]<0>(&v7, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v7, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(" formatting argument", &__p, &v9);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v9;
  }

  else
  {
    v5 = v9.__r_.__value_.__r.__words[0];
  }

  v6 = std::__throw_format_error[abi:nn200100](v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  _Unwind_Resume(v6);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:nn200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
LABEL_18:
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 < 0x20)
    {
      v5 = 1 << v4;
      goto LABEL_15;
    }

    std::__throw_format_error[abi:nn200100]("The type does not fit in the mask");
    goto LABEL_18;
  }

  v5 = 1;
LABEL_15:
  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v14, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v14, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v15, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v16, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(" option", &v17, &v18);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v18;
  }

  else
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  v13 = std::__throw_format_error[abi:nn200100](v12);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  _Unwind_Resume(v13);
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::__formatter::__format_BOOL[abi:nn200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x277D826C0]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_21FED8AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = std::__format_spec::__parser<char>::__get_width[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  *(a1 + 12);
  std::__format_spec::__parser<char>::__get_precision[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, v13, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:nn200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x223D738B0](&v5);
    std::optional<std::locale>::operator=[abi:nn200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t std::optional<std::locale>::operator=[abi:nn200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

unint64_t std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:nn200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:nn200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

void *std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:nn200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:nn200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = &std::__width_estimation_table::__entries[abi:nn200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != &std::__width_estimation_table::__entries[abi:nn200100])
  {
    if ((*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:nn200100](uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:nn200100](a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:nn200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:nn200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:nn200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:nn200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:nn200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:nn200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:nn200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:nn200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:nn200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:nn200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x4000) != 0)
  {
    v4 = *(a1 + 4);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 4);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) < 0)
  {
    v4 = *(a1 + 8);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t std::__visit_format_arg[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:nn200100]("Replacement argument isn't a standard signed or unsigned integer type");
      goto LABEL_12;
    case 3:
      result = *a2;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      std::__throw_format_error[abi:nn200100]("An argument index may not have a negative value");
LABEL_4:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        a1 = std::__throw_format_error[abi:nn200100]("The value of the argument index exceeds its maximum value");
LABEL_8:

        return std::invoke[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
      }

      return result;
    case 4:
      goto LABEL_8;
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      goto LABEL_4;
    default:
LABEL_12:
      a1 = std::__throw_format_error[abi:nn200100]("The argument index value is too large for the number of arguments supplied");
      return std::invoke[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
  }
}

unint64_t std::invoke[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:nn200100]("An argument index may not have a negative value");
    goto LABEL_5;
  }

  if (result >> 31)
  {
LABEL_5:
    v3 = std::__throw_format_error[abi:nn200100]("The value of the argument index exceeds its maximum value");
    return std::__formatter::__format_integer[abi:nn200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3);
  }

  return result;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:nn200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:nn200100]);
    }

    else
    {
      return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_21FED9C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:nn200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:nn200100](v13, a6);
  }

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:nn200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:nn200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:nn200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:nn200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:nn200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:nn200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:nn200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (!*(a1 + 1))
  {
    goto LABEL_4;
  }

  if (v5 == 19)
  {
    v10 = *a3;
    v12 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_escaped_char[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v10, v12, v11);
  }

  else
  {
    if (v5 == 10)
    {
LABEL_4:
      v6 = *a3;
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
      __src = a2;
      return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v6, v7, v8, 1);
    }

    v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:nn200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v14, v13, 0);
  }
}

uint64_t std::__format_spec::__process_parsed_char[abi:nn200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:nn200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_escaped_char[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 a1, void *a2, uint64_t a3, unint64_t a4)
{
  v13 = a1;
  memset(&__p, 0, sizeof(__p));
  std::string::push_back(&__p, 39);
  std::__formatter::__escape[abi:nn200100]<char>(&__p, &v13, 1, 0);
  std::string::push_back(&__p, 39);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p + HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

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

  v10 = std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(p_p, v7 - p_p, a2, a3, a4, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_21FEDAA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__formatter::__escape[abi:nn200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v13 = a2;
  v14 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](&v13);
      if (v8 < 0)
      {
        v9 = v13;
        while (v5 != v9)
        {
          v10 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:nn200100]<char>(a1, v10, "\\x{");
        }
      }

      else if (std::__formatter::__is_escaped_sequence_written[abi:nn200100]<char>(a1, v8, v7 & 1, a4))
      {
        v7 = 1;
      }

      else
      {
        v11 = v13;
        while (v5 != v11)
        {
          v12 = *v5++;
          std::string::push_back(a1, v12);
        }

        v7 = 0;
      }

      v5 = v13;
    }

    while (v13 != v14);
  }
}

uint64_t std::__formatter::__is_escaped_sequence_written[abi:nn200100]<char>(std::string *a1, signed int a2, int a3, int a4)
{
  if (a2 <= 31)
  {
    switch(a2)
    {
      case 9:
        v4 = "\\t";
        goto LABEL_25;
      case 10:
        v4 = "\\n";
        goto LABEL_25;
      case 13:
        v4 = "\\r";
        goto LABEL_25;
    }
  }

  else if (a2 > 38)
  {
    if (a2 == 39)
    {
      if (!a4)
      {
        v4 = "\\'";
        goto LABEL_25;
      }

      v6 = 39;
      goto LABEL_23;
    }

    if (a2 == 92)
    {
      v4 = "\\\";
      goto LABEL_25;
    }
  }

  else
  {
    if (a2 == 32)
    {
      v6 = 32;
      goto LABEL_23;
    }

    if (a2 == 34)
    {
      if (a4 == 1)
      {
        v4 = "\\"";
LABEL_25:
        std::string::append(a1, v4, 2uLL);
        return 1;
      }

      v6 = 34;
LABEL_23:
      std::string::push_back(a1, v6);
      return 1;
    }
  }

  return std::__formatter::__is_escaped_sequence_written[abi:nn200100]<char>(a1, a3, a2);
}

uint64_t std::__formatter::__is_escaped_sequence_written[abi:nn200100]<char>(std::string *a1, int a2, unsigned int a3)
{
  if (!std::__escaped_output_table::__needs_escape[abi:nn200100](a3) && (!a2 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](a3) != 2))
  {
    return 0;
  }

  std::__formatter::__write_escaped_code_unit[abi:nn200100]<char>(a1, a3, "\\u{");
  return 1;
}

BOOL std::__escaped_output_table::__needs_escape[abi:nn200100](unsigned int a1)
{
  if (a1 - 917760 < 0xF0)
  {
    return 0;
  }

  if (a1 > 0x323AF)
  {
    return 1;
  }

  v2 = 711;
  v3 = &std::__escaped_output_table::__entries[abi:nn200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  if (v3 == &std::__escaped_output_table::__entries[abi:nn200100])
  {
    return 0;
  }

  return (*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) >= a1;
}

void std::__formatter::__write_escaped_code_unit[abi:nn200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned int>(&v13, &v14, a2);
  if (&v13 != v8)
  {
    v9 = v8;
    v10 = &v13;
    do
    {
      v11 = *v10++;
      std::string::push_back(this, v11);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
  v12 = *MEMORY[0x277D85DE8];
}

void *std::__formatter_integer<char>::format[abi:nn200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:nn200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:nn200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:nn200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:nn200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 == a1)
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
  }

  else
  {
    v5 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter_integer<char>::format[abi:nn200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v5);
  }
}

void *std::__formatter_integer<char>::format[abi:nn200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:nn200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:nn200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 == a1)
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
  }

  else
  {
    v5 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v5);
  }
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:nn200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:nn200100]);
    }

    else
    {
      return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_21FEDB46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:nn200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = std::__to_chars_integral_width[abi:nn200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:nn200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:nn200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:nn200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:nn200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:nn200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:nn200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:nn200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:nn200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    v6 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6);
  }

  else
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
  }
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v13, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v13, &v14 + 5, 0, 10);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v13, v15, v6, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:nn200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:nn200100]);
    }

    else
    {
      return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_21FEDBF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:nn200100]<unsigned __int128>(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:nn200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:nn200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:nn200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:nn200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:nn200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:nn200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:nn200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    *(v3 + 3) = std::__itoa::__digits_base_10[v8 / 0x64u];
    *(v3 + 4) = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:nn200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:nn200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v12 + 3) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v12 + 5) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v12 + 7) = std::__itoa::__digits_base_10[v14 % 0x64u];

  return std::__itoa::__append10[abi:nn200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:nn200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:nn200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:nn200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:nn200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:nn200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:nn200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:nn200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    v5 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter_integer<char>::format[abi:nn200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v5);
  }

  else
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
  }
}

void *std::__formatter_integer<char>::format[abi:nn200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:nn200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:nn200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    v5 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter_integer<char>::format[abi:nn200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v5);
  }

  else
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
  }
}

void *std::__formatter_integer<char>::format[abi:nn200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:nn200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:nn200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    v6 = std::__throw_format_error[abi:nn200100]("Integral value outside the range of the char type");
    return std::__formatter::__format_floating_point[abi:nn200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6);
  }

  else
  {
    __src = a1;
    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
  }
}

void *std::__formatter::__format_floating_point[abi:nn200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  v45[32] = *MEMORY[0x277D85DE8];
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x277D85DE8];

    return std::__formatter::__format_floating_point_non_finite[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 < 150)
    {
      v43 = v8 + 45;
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v41 = 149;
      v42 = v8 - 149;
      v43 = 194;
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:nn200100]<float,float>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:nn200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x101)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x277D85DE8];
    return v27;
  }
}

void sub_21FEDCE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *std::__formatter::__format_buffer[abi:nn200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D73970](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:nn200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<float,float>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:nn200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:nn200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:nn200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:nn200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_21FEDD530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:nn200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D73970](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:nn200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D73970](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:nn200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D73970](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:nn200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:nn200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v45[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x277D85DE8];

    return std::__formatter::__format_floating_point_non_finite[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 >= 1075)
    {
      v41 = 1074;
      v42 = v8 - 1074;
      v43 = 1390;
      goto LABEL_8;
    }

    v43 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:nn200100]<double,double>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:nn200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x401)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x277D85DE8];
    return v27;
  }
}

void sub_21FEDDDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:nn200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D73910](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:nn200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:nn200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:nn200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:nn200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:nn200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_21FEDE3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D73910](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:nn200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D73910](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:nn200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D73910](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:nn200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v45[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x277D85DE8];

    return std::__formatter::__format_floating_point_non_finite[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 >= 1075)
    {
      v41 = 1074;
      v42 = v8 - 1074;
      v43 = 1390;
      goto LABEL_8;
    }

    v43 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:nn200100]<double,long double>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:nn200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:nn200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x401)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x277D85DE8];
    return v27;
  }
}

void sub_21FEDEB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:nn200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D73940](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:nn200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D73940](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:nn200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D73940](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:nn200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:nn200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D73940](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    v6 = std::__throw_format_error[abi:nn200100]("The type option contains an invalid value for a string formatting argument");
    return std::__formatter_string<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6);
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if (v6 == 19)
  {

    return std::__formatter::__format_escaped_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }

  else
  {

    return std::__formatter::__write_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void *std::__formatter::__format_escaped_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  memset(&v14, 0, sizeof(v14));
  std::string::push_back(&v14, 34);
  std::__formatter::__escape[abi:nn200100]<char>(&v14, a1, a2, 1);
  std::string::push_back(&v14, 34);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v12 = std::__formatter::__write_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, size, a3, a4, a5);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_21FEDF1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_string[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:nn200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:nn200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:nn200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:nn200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:nn200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:nn200100]);
    }

    else
    {
      return std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_21FEDF7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void std::__print::__vprint_nonunicode[abi:nn200100]<void>(FILE *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = *a4;
  v16 = *(a4 + 2);
  v17 = v21;
  *__len = xmmword_21FEE03B0;
  v19 = std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100];
  v20 = 0;
  __src = v21;
  std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v17, a2, a3, &v15);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<prewarming_range>::__throw_length_error[abi:nn200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len[1];
  if (__len[1])
  {
    memmove(&__dst, __src, __len[1]);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  if (__src != v21)
  {
    operator delete(__src);
  }

  if (a5)
  {
    std::string::push_back(&__dst, 10);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v10 = fwrite(p_dst, 1uLL, size, a1);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v10 < SHIBYTE(__dst.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_24;
    }

LABEL_22:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v10 >= __dst.__r_.__value_.__l.__size_)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

LABEL_24:
  if (feof(a1))
  {
    v13 = "EOF while writing the formatted output";
    v12 = 5;
  }

  else
  {
    v12 = ferror(a1);
    v13 = "failed to write formatted output";
  }

  std::__throw_system_error(v12, v13);
  __break(1u);
}

void sub_21FEDF9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:nn200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_21FEDFACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:nn200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

unint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:nn200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v19[0] = a1;
  v19[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](v19);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:nn200100](&v20, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:nn200100](v19);
  v11 = v10;
  v12 = std::__width_estimation_table::__estimated_width[abi:nn200100](v9);
  v13 = v12;
  if (!a4 && v12 > a3)
  {
    return 0;
  }

  do
  {
    v14 = v13;
    if (v11 == a2 || v13 > a3)
    {
      break;
    }

    v16 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:nn200100](v19);
    v11 = v17;
    v13 = v14 + std::__width_estimation_table::__estimated_width[abi:nn200100](v16);
  }

  while (a4 || v13 <= a3);
  return v14;
}

void get_prewarming_ranges()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_27CF1D650 = 0;
    unk_27CF1D658 = 0;
    qword_27CF1D660 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:nn200100](unsigned __int8 **a1, unsigned int *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](a1) & 0x7FFFFFFF;
  v6 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](v5);
  v7 = v6;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:nn200100](a2, v5, v6);
  *a2 = v5;
  *a3 = v7;
  return result;
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}