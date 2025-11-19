uint64_t PFSharedFigDecodeSession()
{
  if (PFSharedFigDecodeSession_s_onceToken != -1)
  {
    dispatch_once(&PFSharedFigDecodeSession_s_onceToken, &__block_literal_global_1357);
  }

  return PFSharedFigDecodeSession_s_decodeSession;
}

void __PFSharedFigDecodeSession_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  CMPhotoDecompressionSessionCreate();
  if (PFSharedFigDecodeSession_s_decodeSession)
  {
    v1 = dispatch_get_global_queue(0, 0);
    v2 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, v1);
    v3 = PFSharedFigDecodeSession_s_memoryEventSource;
    PFSharedFigDecodeSession_s_memoryEventSource = v2;

    dispatch_source_set_event_handler(PFSharedFigDecodeSession_s_memoryEventSource, &__block_literal_global_2);
    dispatch_resume(PFSharedFigDecodeSession_s_memoryEventSource);
    v4 = objc_opt_new();
    v5 = PFSharedFigDecodeSession_s_memoryQueue;
    PFSharedFigDecodeSession_s_memoryQueue = v4;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [v6 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:PFSharedFigDecodeSession_s_memoryQueue usingBlock:&__block_literal_global_7];
  }

  objc_autoreleasePoolPop(v0);
}

void *PFUnderlyingErrorThatMatchesCodesByDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [v4 objectForKeyedSubscript:@"*"];
  v17 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E696AA08];
    do
    {
      v9 = [v5 domain];
      v10 = [v4 objectForKeyedSubscript:v9];

      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
      if (([v6 containsObject:v11] & 1) != 0 || objc_msgSend(v10, "containsObject:", v11))
      {
        v5 = v5;
        v12 = v5;
      }

      else
      {
        v13 = [v5 userInfo];
        v14 = [v13 objectForKeyedSubscript:v8];

        v12 = 0;
        ++v7;
        v5 = v14;
      }
    }

    while (v5 && !v12 && v7 < 10);
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;

  return v12;
}

unint64_t boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_find<char>(int a1, char *__s, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = strlen(__s);
  v8 = (a3 + 8);
  v40 = a3 + 8 - &v40;
  v41 = a3 + 8 - &v41;
  v43 = a3 + 8 - &v43;
  v9 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFDLL;
  v10 = a3 + 8 - &v45;
  if (v9 == 1)
  {
    v10 = 0;
  }

  v11 = v10 + v9;
  v12 = v8 - &v44;
  v44 = v8 - &v44;
  v45 = v10 + v9;
  if (v10 + v9 != 1)
  {
    while (1)
    {
      v46 = &v45 + v11 - &v46;
      if (v46 == 1)
      {
        break;
      }

      if (boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(&v45 + v11, __s, v7))
      {
        if (v11 == 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = &v45 + v11;
        }

        v16 = *(v13 + 2);
        v14 = v13 + 16;
        v15 = v16;
      }

      else
      {
        if (v11 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = &v45 - &v44;
        }

        v12 = v17 + v11;
        v44 = v17 + v11;
        if (v11 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = &v45 + v11;
        }

        v19 = *(v18 + 1);
        v14 = v18 + 8;
        v15 = v19;
      }

      v20 = v14 - &v46;
      if (v15 == 1)
      {
        v20 = 0;
      }

      v21 = v20 + v15;
      if (v21 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = &v46 - &v45;
      }

      v11 = v22 + v21;
      v45 = v22 + v21;
      if (v22 + v21 == 1)
      {
        goto LABEL_23;
      }
    }

LABEL_49:
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

LABEL_23:
  v23 = &v44 - &v42;
  if (v12 == 1)
  {
    v23 = 0;
  }

  v42 = v23 + v12;
  if (v23 + v12 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = &v42 + v23 + v12;
  }

  if (v24 == v8)
  {
    v25 = &v43;
    v26 = a3 + 8 - &v43;
  }

  else
  {
    v46 = v24 - &v46;
    if (v24 - &v46 == 1)
    {
      goto LABEL_49;
    }

    v27 = boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(__s, v7, v24);
    v25 = &v43;
    if (!v27)
    {
      v25 = &v42;
    }

    v26 = *v25;
  }

  v28 = v25 - &v46;
  if (v26 == 1)
  {
    v28 = 0;
  }

  v29 = v28 + v26;
  v30 = &v46 - &v45;
  if (v29 == 1)
  {
    v30 = 0;
  }

  v31 = v30 + v29;
  v45 = v31;
  *a5 = 0;
  v32 = &v45 - &v46;
  if (v31 == 1)
  {
    v32 = 0;
  }

  v33 = v32 + v31;
  if (v33 == 1 || (result = 0, &v46 + v33 != v8))
  {
    v35 = &v45 + v31;
    if (v31 == 1)
    {
      v35 = 0;
    }

    v46 = v35 - &v46;
    if (v35 - &v46 == 1)
    {
      goto LABEL_49;
    }

    v36 = *(v35 + 3);
    v37 = *(a4 + 16);
    if (v36 != v36 / v37 * v37)
    {
      __assert_rtn("priv_generic_find", "segment_manager.hpp", 877, "(ctrl_data->m_value_bytes % table.size) == 0");
    }

    if ((v35[35] & 0x1F) != 1)
    {
      __assert_rtn("priv_generic_find", "segment_manager.hpp", 878, "ctrl_data->sizeof_char() == sizeof(CharT)");
    }

    result = &v35[v35[34] * (0xFu / v35[34] + 1) + 24];
    *a5 = v36 / v37;
  }

  return result;
}

uint64_t boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 32);
  if (v3 < a3)
  {
    return 1;
  }

  if (v3 != a3)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v5 = a1 + 24;
  return memcmp((v5 + (*(v5 + 11) & 0x1F) + (*(v5 + 11) & 0x1F) * ((v6 - 1) / (*(v5 + 11) & 0x1F)) + *(v5 + 10) * (0xFu / *(v5 + 10) + 1)), a2, a3) >> 31;
}

uint64_t boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(const void *a1, size_t __n, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 > __n)
  {
    return 1;
  }

  if (v3 != __n)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v5 = a3 + 24;
  return memcmp(a1, (v5 + (*(v5 + 11) & 0x1F) + (*(v5 + 11) & 0x1F) * ((v6 - 1) / (*(v5 + 11) & 0x1F)) + *(v5 + 10) * (0xFu / *(v5 + 10) + 1)), __n) >> 31;
}

uint64_t *std::unique_ptr<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (*(v2 + 36) == 1)
      {
        if (shmdt(v3))
        {
          __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
        }
      }

      else
      {
        munmap(&v3[-*(v2 + 24)], *(v2 + 16) + *(v2 + 24));
        *(v2 + 8) = 0;
      }
    }

    *v2 = 0;
    MEMORY[0x1B8C64390](v2, 0x10A0C40056191E0);
  }

  return a1;
}

uint64_t *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::find_node_impl<unsigned long long,std::equal_to<unsigned long long>>(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v6 = a3 % *(a2 + 24);
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v35, a2, v6);
  v7 = &v35 + v35;
  if (v35 == 1)
  {
    v7 = 0;
  }

  v8 = *v7;
  v9 = v7 - v34;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  if (v10 == 1)
  {
    goto LABEL_12;
  }

  v11 = &v34[v10];
  if (v10 + v34 - &v35 == 1)
  {
    v11 = 0;
  }

  v12 = *(v11 + 2);
  v13 = v11 + 16 - &v33;
  if (v12 == 1)
  {
    v13 = 0;
  }

  v14 = v13 + v12;
  v33 = v13 + v12;
  if (v13 + v12 == 1)
  {
LABEL_12:
    v15 = 1;
  }

  else
  {
    v16 = &v33 - &v35;
    v17 = *a4;
    result = (v32 - v34);
    v15 = 1;
    while (1)
    {
      v18 = v14 + v16 == 1 ? 0 : &v34[v14 - 8];
      if (v17 == *v18)
      {
        break;
      }

      if (v14 + v16 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = &v34[v14 - 8];
      }

      if ((*(v19 + 3) & 0x7FFFFFFFFFFFFFFFLL) == v6)
      {
        v20 = &v33 - &v31 + v14;
        v21 = v20 == 1 ? 0 : &v31 - v32;
        v22 = v21 + v20;
        while (1)
        {
          if (v22 == 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = v32 - v34;
          }

          v24 = v23 + v22;
          if (v24 == 1)
          {
            v25 = 0;
          }

          else
          {
            v25 = &v34[v24];
          }

          v26 = *(v25 + 2);
          v27 = v25 + 16 - &v35;
          if (v26 == 1)
          {
            v27 = 0;
          }

          v28 = v27 + v26;
          v29 = v28 == 1 ? 0 : &v35 - v32;
          v22 = v29 + v28;
          if (v22 == 1)
          {
            break;
          }

          if ((*&v32[v22 + 24] & 0x8000000000000000) == 0)
          {
            v30 = v32 - &v33;
            goto LABEL_42;
          }
        }

        v30 = 0;
LABEL_42:
        v14 = v30 + v22;
        v33 = v14;
        if (v14 != 1)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v15 = &v33 - v4 + v14;
  }

LABEL_13:
  *v4 = v15;
  return result;
}

void *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(void *result, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  if (v5 == 1)
  {
    __assert_rtn("get_bucket_pointer", "implementation.hpp", 3025, "buckets_");
  }

  v6 = v3 + 8 * a3 - v8 + v4;
  v7 = (v8 - result);
  if (v6 == 1)
  {
    v7 = 0;
  }

  *result = &v7[v6];
  return result;
}

uint64_t PFSceneTaxonomyNodeNetworkId(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "PFSceneTaxonomyNetworkId PFSceneTaxonomyNodeNetworkId(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
  }

  return 0;
}

double PFSceneTaxonomyNodeSearchThreshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeSearchThreshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

id PFSceneTaxonomyNodeName(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 72);
    if (v1 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v1 + a1 + 72;
    }

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = *(v2 + 8);
    if (v4)
    {
      if (v2 + 9 - &v13 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v2 + 9);
      }
    }

    else
    {
      v7 = *(v2 + 24);
      v6 = v2 + 24;
      v5 = v7;
      v8 = v6 - &v13;
      if (v7 == 1)
      {
        v8 = 0;
      }

      v9 = v8 + v5;
      if (v9 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = &v13 + v9;
      }

      v4 = *(v6 - 16);
    }

    v11 = [v3 initWithBytes:v10 length:v4 >> 1 encoding:4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v13 = 136446210;
      v14 = "NSString * _Nullable PFSceneTaxonomyNodeName(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v13, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

void sub_1B35C3854(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 indexName];
      v11 = (*(*v7 + 16))(v7);
      *(v5 - 112) = 138543874;
      *(v5 - 108) = v10;
      *(v5 - 100) = 2114;
      *(v5 - 98) = v4;
      *(v5 - 90) = 2082;
      *(v5 - 88) = v11;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error making %{public}@ at %{public}@: %{public}s", (v5 - 112), 0x20u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B35C37C0);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::priv_open_or_create<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>(char **a1, int a2, const char **a3, unint64_t a4, int a5, mode_t *a6, uint64_t *a7, int a8)
{
  if (a2 == 1)
  {
    *v65 = 0xFFFFFFFFLL;
    v12 = *a3;
    *v67 = 420;
    boost::interprocess::ipcdetail::file_wrapper::priv_open_or_create<char>(&v72.st_dev, 1, v12, 2 * (a5 == 2), v67);
    *v65 = *&v72.st_dev;
    st_dev = v72.st_dev;
    v14 = 2 * (a5 != 0);
    memset(v67, 0, 20);
    gettimeofday(&v72, 0);
    v15 = *&v72.st_dev;
    v16 = -SLODWORD(v72.st_ino);
    while (1)
    {
      if (fstat(st_dev, &v72))
      {
        v53 = *__error();
        v72.st_dev = v53;
        v54 = &boost::interprocess::ec_table;
        v55 = 128;
        while (*v54 != v53)
        {
          v54 += 2;
          v55 -= 8;
          if (!v55)
          {
            v56 = 1;
            goto LABEL_66;
          }
        }

        v56 = v54[1];
LABEL_66:
        *&v72.st_mode = v56;
        exception = __cxa_allocate_exception(0x28uLL);
        boost::interprocess::interprocess_exception::interprocess_exception(exception, &v72.st_dev);
      }

      if (v72.st_size)
      {
        break;
      }

      gettimeofday(&v72, 0);
      if ((v16 + 1000000 * (*&v72.st_dev - v15) + SLODWORD(v72.st_ino)) > 0x11E1A300)
      {
        v57 = __cxa_allocate_exception(0x28uLL);
        *&v72.st_dev = 0x1300000000;
        boost::interprocess::interprocess_exception::interprocess_exception(v57, &v72.st_dev);
      }

      boost::interprocess::spin_wait::yield(v67);
    }

    if (v72.st_size == 1)
    {
      v58 = __cxa_allocate_exception(0x28uLL);
      *&v72.st_dev = 0x1300000000;
      boost::interprocess::interprocess_exception::interprocess_exception(v58, &v72.st_dev);
    }

    boost::interprocess::mapped_region::mapped_region<boost::interprocess::ipcdetail::file_wrapper>(&v72, v65, v14);
    v25 = *&v72.st_dev;
    v26 = **&v72.st_dev;
    __dmb(0xBu);
    if (v26 != 2)
    {
      gettimeofday(v67, 0);
      v27 = *v67;
      v70[0] = 0;
      v70[1] = 0;
      v71 = 0;
      v28 = -*&v67[8];
      while (1)
      {
        v29 = *v25;
        __dmb(0xBu);
        if (v29 == 2)
        {
          break;
        }

        if (v29 == 3)
        {
          v59 = __cxa_allocate_exception(0x28uLL);
          *v67 = 0x1300000000;
          boost::interprocess::interprocess_exception::interprocess_exception(v59, v67);
        }

        gettimeofday(v67, 0);
        if ((v28 + 1000000 * (*v67 - v27) + *&v67[8]) > 0x11E1A300)
        {
          v60 = __cxa_allocate_exception(0x28uLL);
          *v67 = 0x1300000000;
          boost::interprocess::interprocess_exception::interprocess_exception(v60, v67);
        }

        boost::interprocess::spin_wait::yield(v70);
      }

      v31 = *&v72.st_dev;
      st_ino = v72.st_ino;
      v33 = *&v72.st_uid;
      memset(&v72, 0, 29);
      if (v31)
      {
        if (*(&v72.st_rdev + 4))
        {
          if (shmdt(v31))
          {
            __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
          }
        }

        else
        {
          munmap(&v31[-v33], v33 + st_ino);
        }
      }

      boost::interprocess::mapped_region::mapped_region<boost::interprocess::ipcdetail::file_wrapper>(v67, v65, v14);
      v38 = *&v72.st_dev;
      v39 = v72.st_ino;
      *&v72.st_dev = *v67;
      v40 = *&v72.st_uid;
      v41 = *&v67[8];
      *v67 = v38;
      *&v67[8] = v72.st_ino;
      *&v67[16] = *&v72.st_uid;
      *&v72.st_ino = v41;
      v42 = st_rdev;
      st_rdev = v72.st_rdev;
      v72.st_rdev = v42;
      v43 = v69;
      v44 = *(&v72.st_rdev + 4);
      v69 = *(&v72.st_rdev + 4);
      *(&v72.st_rdev + 4) = v43;
      if (v38)
      {
        if (v44)
        {
          if (shmdt(v38))
          {
            __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
          }
        }

        else
        {
          munmap(&v38[-v40], v40 + v39);
        }
      }
    }

    v45 = *&v72.st_dev;
    v46 = v72.st_ino;
    if (a8 && !*a7)
    {
      *a7 = *&v72.st_dev + 8;
    }

    v47 = *a1;
    v48 = a1[1];
    *a1 = v45;
    a1[1] = v46;
    *&v72.st_dev = v47;
    v72.st_ino = v48;
    v49 = a1[2];
    a1[2] = *&v72.st_uid;
    *&v72.st_uid = v49;
    v50 = *(a1 + 6);
    *(a1 + 6) = v72.st_rdev;
    v72.st_rdev = v50;
    v51 = *(a1 + 28);
    *(a1 + 28) = *(&v72.st_rdev + 4);
    *(&v72.st_rdev + 4) = v51;
    if (v47)
    {
      if (v51)
      {
        if (shmdt(v47))
        {
          __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
        }
      }

      else
      {
        munmap((v47 - v49), &v49[v48]);
      }
    }
  }

  else
  {
    if (a4 <= 0xB7)
    {
      v62 = __cxa_allocate_exception(0x28uLL);
      *&v72.st_dev = 0x1200000000;
      boost::interprocess::interprocess_exception::interprocess_exception(v62, &v72.st_dev);
    }

    *v65 = 0xFFFFFFFFLL;
    memset(&v72, 0, 20);
    v19 = open(*a3, 2562, *a6);
    v20 = v19;
    if (v19 < 0)
    {
      if (v19 == -1)
      {
        v21 = *__error();
        LODWORD(v66) = v21;
        v22 = &boost::interprocess::ec_table;
        v23 = 128;
        while (*v22 != v21)
        {
          v22 += 2;
          v23 -= 8;
          if (!v23)
          {
            v24 = 1;
            goto LABEL_16;
          }
        }

        v24 = v22[1];
LABEL_16:
        HIDWORD(v66) = v24;
        v64 = __cxa_allocate_exception(0x28uLL);
        boost::interprocess::interprocess_exception::interprocess_exception(v64, &v66);
      }

      v30 = v19;
    }

    else
    {
      fchmod(v19, *a6);
      v30 = v20;
    }

    *v65 = v30 | 0x200000000;
    boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::truncate_device<true>(v30, a4);
    boost::interprocess::mapped_region::mapped_region<boost::interprocess::ipcdetail::file_wrapper>(&v72, v65, 2);
    v34 = 0;
    v35 = *&v72.st_dev;
    atomic_compare_exchange_strong(*&v72.st_dev, &v34, 1u);
    if (v34)
    {
      __dmb(0xBu);
      *v35 = 3;
      v63 = __cxa_allocate_exception(0x28uLL);
      *v67 = 0x1300000000;
      boost::interprocess::interprocess_exception::interprocess_exception(v63, v67);
    }

    if (a8 != 1 && !*a7)
    {
      if (((*&v72.st_dev + 8) & 7) != 0)
      {
        __assert_rtn("create_impl", "managed_memory_impl.hpp", 180, "(0 == (std::size_t)addr % boost::move_detail::alignment_of<segment_manager>::value)");
      }

      *a7 = boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::segment_manager(*&v72.st_dev + 8, a4 - 8);
    }

    v36 = *a1;
    *a1 = *&v72.st_dev;
    *&v72.st_dev = v36;
    v37 = *(a1 + 1);
    *(a1 + 1) = *&v72.st_ino;
    *&v72.st_ino = v37;
    LODWORD(v36) = *(a1 + 6);
    *(a1 + 6) = v72.st_rdev;
    v72.st_rdev = v36;
    LOBYTE(v36) = *(a1 + 28);
    *(a1 + 28) = *(&v72.st_rdev + 4);
    *(&v72.st_rdev + 4) = v36;
    __dmb(0xBu);
    *v35 = 2;
    if (*&v72.st_dev)
    {
      if (*(&v72.st_rdev + 4) == 1)
      {
        if (shmdt(*&v72.st_dev))
        {
          __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
        }
      }

      else
      {
        munmap((*&v72.st_dev - *&v72.st_uid), v72.st_ino + *&v72.st_uid);
      }
    }
  }

  result = v65[0];
  if (v65[0] != -1)
  {
    return close(v65[0]);
  }

  return result;
}

void sub_1B35C43A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __cxa_end_catch();
  boost::interprocess::ipcdetail::file_wrapper::~file_wrapper(va);
  _Unwind_Resume(a1);
}

void sub_1B35C44EC(void *a1)
{
  __cxa_begin_catch(a1);
  __dmb(0xBu);
  *v1 = 3;
  __cxa_rethrow();
}

int *boost::interprocess::ipcdetail::file_wrapper::priv_open_or_create<char>(int *a1, int a2, char *a3, int a4, mode_t *a5)
{
  if ((a4 & 0xFFFFFFFD) != 0)
  {
    v16 = 0x1100000000;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v16);
    goto LABEL_22;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      while (1)
      {
        v9 = open(a3, a4 | 0xA00, *a5);
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        result = __error();
        if (*result != 17)
        {
          goto LABEL_13;
        }

        result = open(a3, a4);
        v9 = result;
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        result = __error();
        if (*result != 2)
        {
          goto LABEL_13;
        }
      }
    }

    result = open(a3, a4);
    v9 = result;
    goto LABEL_13;
  }

  result = open(a3, a4 | 0xA00, *a5);
  v9 = result;
  if ((result & 0x80000000) != 0)
  {
LABEL_13:
    *a1 = v9;
    if (v9 != -1)
    {
      goto LABEL_14;
    }

    v12 = *__error();
    LODWORD(v16) = v12;
    v13 = &boost::interprocess::ec_table;
    v14 = 128;
    while (*v13 != v12)
    {
      v13 += 2;
      v14 -= 8;
      if (!v14)
      {
        v15 = 1;
        goto LABEL_21;
      }
    }

    v15 = v13[1];
LABEL_21:
    HIDWORD(v16) = v15;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v16);
LABEL_22:
  }

LABEL_10:
  result = fchmod(v9, *a5);
LABEL_11:
  *a1 = v9;
LABEL_14:
  a1[1] = a4;
  return result;
}

uint64_t boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::managed_open_or_create_impl<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>(uint64_t a1, const char **a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 21) = 0;
  *(a1 + 16) = 0;
  v6 = 420;
  boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::priv_open_or_create<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>(a1, 1, a2, 0, a3, &v6, *a4, *(a4 + 8));
  return a1;
}

void *boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_mapped_file(void *a1, const char *a2)
{
  v6 = a2;
  *a1 = 0;
  v4 = a1;
  v5 = 1;
  boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::managed_open_or_create_impl<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>((a1 + 1), &v6, 0, &v4);
  return a1;
}

BOOL PFArchiveFileMagicFound(const char *a1, const char *a2, char *__little, size_t __len, const char **a5)
{
  v6 = __len;
  v21 = *MEMORY[0x1E69E9840];
  v10 = a1 + 144;
  if (strnstr(a1 + 144, __little, __len) == a1 + 144)
  {
    goto LABEL_22;
  }

  result = 0;
  if (a1 && v6)
  {
    v12 = *a2;
    v13 = a1;
    while (1)
    {
      v14 = memchr(v13, v12, v6);
      if (!v14)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *buf = 136446210;
        v20 = a2;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Archive index missing required magic %{public}s", buf, 0xCu);
        return 0;
      }

      v10 = v14;
      if (strnstr(v14, a2, v6) == v14)
      {
        break;
      }

      v13 = (v10 + 1);
      if (!--v6)
      {
        return 0;
      }
    }

    if (strnstr(v10, __little, v6) != v10)
    {
      v15 = strlen(__little);
      if (v15 >= 0x50)
      {
        v16 = 80;
      }

      else
      {
        v16 = v15;
      }

      strlcpy(buf, v10, v16);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = buf;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported archive file ABI: %{public}s", &v17, 0xCu);
      }

      return 0;
    }

    if (PFArchiveFileIsAppleInternal::onceToken[0] != -1)
    {
      dispatch_once(PFArchiveFileIsAppleInternal::onceToken, &__block_literal_global_12613);
    }

    if (PFArchiveFileIsAppleInternal::isAppleInternal == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v20 = (v10 - a1);
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Achive index found, but at different offset (%lx): update EXPECTED_MAGIC_OFFSET", buf, 0xCu);
      if (!a5)
      {
        return 1;
      }

      goto LABEL_23;
    }

LABEL_22:
    if (!a5)
    {
      return 1;
    }

LABEL_23:
    *a5 = v10;
    return 1;
  }

  return result;
}

unint64_t PFChecksumArchiveData(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && &a1[a2] > a3)
  {
    v8 = a3 - a1;
    v9 = a4 + a3 - a1 + 8;
    v10 = 0xCBF29CE484222325;
    v11 = 0xCBF29CE484222325;
    if (a3 != a1)
    {
      v12 = a1;
      v11 = 0xCBF29CE484222325;
      do
      {
        v13 = *v12++;
        v11 = 0x100000001B3 * (v11 ^ v13);
        --v8;
      }

      while (v8);
    }

    v14 = a2 - v9;
    if (a2 != v9)
    {
      v15 = &a3[a4 + 8];
      do
      {
        v16 = *v15++;
        v10 = 0x100000001B3 * (v10 ^ v16);
        --v14;
      }

      while (v14);
    }

    return bswap64(v10 ^ v11);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 134218752;
      v19 = a1;
      v20 = 2048;
      v21 = a3;
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v25 = a4;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid address for checksum (%p, %p, %ld, %ld).", &v18, 0x2Au);
    }

    return 0;
  }
}

__CFString *PFStoryTitleCategoryNamed(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  VertexIndexForTitleCategory = _GetVertexIndexForTitleCategory(v1);
  if (VertexIndexForTitleCategory < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v1;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "unsupported title category '%@'", &v5, 0xCu);
    }

    v3 = @"undefined";
  }

  else
  {
    v3 = Vertices[VertexIndexForTitleCategory];
  }

  return v3;
}

uint64_t _GetVertexIndexForTitleCategory(void *a1)
{
  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = Vertices[v2];
    if (v3 == v1 || ([(__CFString *)v3 isEqualToString:v1]& 1) != 0)
    {
      break;
    }

    if (++v2 == 6)
    {
      v2 = 0xFFFFFFFFLL;
      break;
    }
  }

  return v2;
}

id PFStoryTitleSupportedCategories()
{
  if (PFStoryTitleSupportedCategories_onceToken != -1)
  {
    dispatch_once(&PFStoryTitleSupportedCategories_onceToken, &__block_literal_global);
  }

  v1 = PFStoryTitleSupportedCategories_supportedCategories;

  return v1;
}

void __PFStoryTitleSupportedCategories_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    [v3 addObject:Vertices[i]];
  }

  v1 = [v3 copy];
  v2 = PFStoryTitleSupportedCategories_supportedCategories;
  PFStoryTitleSupportedCategories_supportedCategories = v1;
}

__CFString *PFStoryValidatedTitleCategory(uint64_t a1)
{
  if ((a1 - 7) >= 0xFFFFFFFFFFFFFFFALL)
  {
    v2 = Vertices[a1 - 1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *PFStoryTitleCategoryGetSerializedTitleCategory(void *result)
{
  if (result)
  {
    return (_GetVertexIndexForTitleCategory(result) + 1);
  }

  return result;
}

double progressOfSampleBufferInTimeRange(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetPresentationTimeStamp(&v10, a1);
  lhs = v10;
  rhs = *a2;
  CMTimeSubtract(&v9, &lhs, &rhs);
  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetDuration(&v9, a1);
  if ((v9.flags & 0x1D) == 1)
  {
    rhs = v10;
    v6 = v9;
    CMTimeAdd(&lhs, &rhs, &v6);
    v10 = lhs;
  }

  lhs = v10;
  Seconds = CMTimeGetSeconds(&lhs);
  lhs = a2[1];
  return Seconds / CMTimeGetSeconds(&lhs);
}

CMSampleBufferRef StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(uint64_t a1, int32_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  formatDescriptionOut = 0;
  blockBufferOut = 0;
  v4 = *MEMORY[0x1E69629E0];
  v5 = *MEMORY[0x1E6960338];
  v23[0] = *MEMORY[0x1E6960348];
  v23[1] = v5;
  v6 = *MEMORY[0x1E6960288];
  v24[0] = v4;
  v24[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  v9 = *MEMORY[0x1E695E480];
  CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v8, &formatDescriptionOut);
  LODWORD(v4) = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
  CMBlockBufferCreateWithMemoryBlock(v9, 0, 9uLL, v9, 0, 0, 9uLL, 1u, &blockBufferOut);
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  v10 = dataPointerOut;
  *dataPointerOut = 150994944;
  *(v10 + 1) = v4;
  v10[8] = -1;
  v18.epoch = 0;
  dataPointerOut = v10 + 8;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 600;
  }

  v18.value = 0;
  *&v18.timescale = 0;
  CMTimeMake(&v18, 1, v11);
  v12 = *(MEMORY[0x1E6960CF0] + 32);
  *&sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CF0] + 16);
  *&sampleTimingArray.presentationTimeStamp.timescale = v12;
  *&sampleTimingArray.decodeTimeStamp.value = *(MEMORY[0x1E6960CF0] + 48);
  *&sampleTimingArray.presentationTimeStamp.value = *a1;
  v13 = *(a1 + 16);
  sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
  sampleTimingArray.presentationTimeStamp.epoch = v13;
  sampleTimingArray.duration = v18;
  sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
  CMSampleBufferCreate(v9, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v21);
  CFRelease(formatDescriptionOut);
  CFRelease(blockBufferOut);
  v14 = v21;

  return v14;
}

void sub_1B35D0820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

__CFString *PFPosterConfigurationTypeStringWithType(uint64_t a1)
{
  v1 = @"??";
  if (a1 == 1)
  {
    v1 = @"Shuffle";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Photo";
  }
}

__CFString *PFPosterShuffleTypeStringWithType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7B64560[a1];
  }
}

__CFString *PFPosterShuffleFrequencyStringWithFrequency(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7B64578[a1];
  }
}

BOOL PFCameraAdjustmentsCropIsValid(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsEmpty(*&a1))
  {
    return 0;
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  if (CGRectIsNull(v9))
  {
    return 0;
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return !CGRectIsInfinite(v10);
}

void PFImageMetricComputeSSIMForCIImage(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = os_signpost_id_make_with_pointer(MEMORY[0x1E69E9C10], v3);
  v6 = v5 - 1;
  if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  else
  {
    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v5, "com.apple.mediaconversion.ssim", &unk_1B36B501D, buf, 2u);
    }

    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v5, "com.apple.mediaconversion.ssim.decode-to-pixelbuffer", &unk_1B36B501D, buf, 2u);
    }
  }

  pixelBufferOut = 0;
  [v4 extent];
  if (CVPixelBufferCreate(0, v10, v11, 0x34323066u, 0, &pixelBufferOut))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create pixel buffer for reference image %@", buf, 0xCu);
    }
  }

  else
  {
    [v3 extent];
    texture = 0;
    if (CVPixelBufferCreate(0, v12, v13, 0x34323066u, 0, &texture))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v3;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create pixel buffer for image %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = [MEMORY[0x1E695F620] context];
      [v14 render:v4 toCVPixelBuffer:pixelBufferOut];
      [v14 render:v3 toCVPixelBuffer:texture];
      if (v6 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = MEMORY[0x1E69E9C10];
      }

      else
      {
        if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v5, "com.apple.mediaconversion.ssim.decode-to-pixelbuffer", &unk_1B36B501D, buf, 2u);
        }

        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
        if (os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v5, "com.apple.mediaconversion.ssim.compute-ssim", &unk_1B36B501D, buf, 2u);
        }
      }

      v18 = MEMORY[0x1E69E9C10];

      CMPhotoComputeSSIMForPixelBuffer();
      v19 = v18;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v5, "com.apple.mediaconversion.ssim.compute-ssim", &unk_1B36B501D, buf, 2u);
      }

      CVPixelBufferRelease(texture);
    }

    CVPixelBufferRelease(pixelBufferOut);
  }

  v20 = MEMORY[0x1E69E9C10];
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v5, "com.apple.mediaconversion.ssim", &unk_1B36B501D, buf, 2u);
  }
}

__CFString *PFParallaxAssetResourceTypeName(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"???";
  }

  else
  {
    return off_1E7B64608[a1];
  }
}

__CFString *PFPosterMediaTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E7B64640[a1 - 1];
  }
}

__CFString *PFPosterMediaTypeStringWithType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7B64660[a1];
  }
}

void sub_1B35DC178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

id _PFExportGIFRequestError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v8 = v7;
  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if (v6)
  {
    v9 = [v6 copy];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFExportGIFRequestErrorDomain" code:a1 userInfo:v8];

  return v10;
}

uint64_t LayerIDMatchesOptions(void *a1, unint64_t a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (([v5 isEqualToString:@"background"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"foreground"))
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2 & 1;
    }
  }

  else if (([v5 isEqualToString:@"background-landscape"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"foreground-landscape"))
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a2 >> 5) & 1;
    }
  }

  else if ([v5 hasSuffix:@"backfill"] && (PFParallaxLayerIDIsAnySpatialPhoto(v5) & 1) == 0)
  {
    v6 = (a2 >> 1) & 1;
  }

  else if ([v5 hasPrefix:@"inactive"])
  {
    v6 = (a2 >> 2) & 1;
  }

  else if ([v5 isEqualToString:@"settling-video"])
  {
    v6 = (a2 >> 6) & 1;
  }

  else if ((PFParallaxLayerIDIsAnySpatialPhoto(v5) & 1) != 0 || [v5 isEqualToString:@"spatial-photo-inactive-data"])
  {
    v6 = (a2 >> 8) & 1;
  }

  else if ([v5 hasPrefix:@"debug"])
  {
    v6 = (a2 >> 4) & 1;
  }

  else if (a2 == 0xFFFF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Allowing unexpected layer ID: %@", &v8, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL ReadImageFromURL(uint64_t a1, void *a2, int a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (a3)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991B00]];
    v18 = *MEMORY[0x1E69919F0];
    v19[0] = &unk_1F2AAB860;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6991AA0]];
  }

  ImageFromImageSource = _PLFigCreateImageFromImageSource(v6, v8, 0, 2, v7);
  v11 = ImageFromImageSource;
  if (a4 && ImageFromImageSource)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error reading image from disk, code: %d", ImageFromImageSource, *MEMORY[0x1E696A278]];
    v17 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a4 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v14];
  }

  return v11 == 0;
}

void PFCreateGIFFromVideoURL(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = a1;
  v11 = [[PFExportGIFRequest alloc] initWithVideoURL:v10];

  [(PFExportGIFRequest *)v11 setSynchronous:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PFCreateGIFFromVideoURL_block_invoke;
  v16[3] = &unk_1E7B64730;
  v17 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PFCreateGIFFromVideoURL_block_invoke_2;
  v14[3] = &unk_1E7B64758;
  v15 = v8;
  v12 = v8;
  v13 = v7;
  [PFExportGIFRequest runExport:v11 toURL:v9 progress:v16 completion:v14];
}

uint64_t __PFCreateGIFFromVideoURL_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __PFCreateGIFFromVideoURL_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "GIF export error: %@", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }
}

uint64_t PFSharedFigDecodeSessionDiscardCachedBuffers()
{
  if (PFSharedFigDecodeSession_s_onceToken != -1)
  {
    dispatch_once(&PFSharedFigDecodeSession_s_onceToken, &__block_literal_global_1357);
  }

  v1 = PFSharedFigDecodeSession_s_decodeSession;

  return MEMORY[0x1EEDF13D0](v1, 0, 1);
}

uint64_t _PLFigCreateImageFromImageSource(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = *MEMORY[0x1E6991B10];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6991B10]];

  if (!v12)
  {
    [v10 setObject:&unk_1F2AAB068 forKey:v11];
  }

  if (a4 == 4)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AD0]];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
    [v10 setObject:v13 forKey:*MEMORY[0x1E6991AE8]];
  }

  if (a3)
  {
    [v10 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6991AC8]];
  }

  [v10 addEntriesFromDictionary:v9];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = v14;
  if (v8)
  {
    [v14 addEntriesFromDictionary:v8];
  }

  if (PFSharedFigDecodeSession_s_onceToken != -1)
  {
    dispatch_once(&PFSharedFigDecodeSession_s_onceToken, &__block_literal_global_1357);
  }

  Container = CMPhotoDecompressionSessionCreateContainer();

  return Container;
}

uint64_t PFFigGetImageSourceImageIndexForContainerItemID(CGImageSource *a1, void *a2, void *a3, size_t *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v7)
  {
    v20 = *MEMORY[0x1E696DFC8];
    v21[0] = MEMORY[0x1E695E118];
    v7 = CGImageSourceCopyProperties(a1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1]);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a4 = CGImageSourceGetPrimaryImageIndex(a1);
    v12 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DB58]];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DDE8]];

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __PFFigGetImageSourceImageIndexForContainerItemID_block_invoke;
    v14[3] = &unk_1E7B647A0;
    v16 = buf;
    v17 = a4;
    v15 = v9;
    [v11 enumerateObjectsUsingBlock:v14];
    v12 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Multi-image image source properties for source %@ do not contain file contents > images list, unable to map from CMPhoto to ImageIO indexes: %@", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_11:
  return v12 & 1;
}

void sub_1B35E171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PFFigGetImageSourceImageIndexForContainerItemID_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E696DD38]];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image source image entries do not contain container item IDs, ensure the image source properties were copied with the kCGImageSourceAddHEIFContainerItemID option", v8, 2u);
  }

  if ([v7 isEqual:*(a1 + 32)])
  {
    **(a1 + 48) = a3;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t PFFigJPEGDataFromImage(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = 0;
  v9 = 0xFFFFFFFFLL;
  v10 = 0;
  if (a1 && a2)
  {
    if (!a4)
    {
      v13 = CMPhotoCompressionSessionCreate();
      if (v13)
      {
        v9 = v13;
        v8 = 0;
        goto LABEL_8;
      }
    }

    v11 = *MEMORY[0x1E6991878];
    v22[0] = *MEMORY[0x1E6991870];
    v22[1] = v11;
    v23[0] = &unk_1F2AAB080;
    v23[1] = &unk_1F2AAB080;
    v22[2] = *MEMORY[0x1E6991860];
    v23[2] = &unk_1F2AAB080;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{3, 0}];
    v12 = CMPhotoCompressionSessionOpenEmptyContainer();
    if (v12)
    {
      v9 = v12;
LABEL_8:
      v10 = 0;
      goto LABEL_14;
    }

    v14 = MEMORY[0x1E695DF90];
    v15 = *MEMORY[0x1E6991908];
    v20[0] = *MEMORY[0x1E69918D0];
    v20[1] = v15;
    v21[0] = &unk_1F2AAB098;
    v21[1] = MEMORY[0x1E695E118];
    v16 = *MEMORY[0x1E6991970];
    v20[2] = *MEMORY[0x1E6991978];
    v20[3] = v16;
    v21[2] = &unk_1F2AAB0B0;
    v21[3] = &unk_1F2AAB080;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v10 = [v14 dictionaryWithDictionary:v17];

    [v10 addEntriesFromDictionary:v7];
    v18 = CMPhotoCompressionSessionAddImage();
    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
      if (!v9)
      {
        *a1 = 0;
      }
    }
  }

LABEL_14:

  return v9;
}

uint64_t PFFigCopyImageDataToURLWithUpdatedProperties(void *a1, void *a2, uint64_t a3, void *a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = 0xFFFFFFFFLL;
  if (a1 && v7)
  {
    v10 = *MEMORY[0x1E6991860];
    v15[0] = @"IgnoreUnsupportedJPEGAuxiliaryImages";
    v15[1] = v10;
    v16[0] = MEMORY[0x1E695E118];
    v16[1] = &unk_1F2AAB0E0;
    v15[2] = *MEMORY[0x1E6991850];
    v16[2] = v7;
    v11 = MEMORY[0x1E695DF20];
    v12 = a1;
    v13 = [v11 dictionaryWithObjects:v16 forKeys:v15 count:3];
    v9 = _PFFigCopyImageWithPropertiesAndContainerOptions(v12, v13, v8, a3, &__block_literal_global_1534);
  }

  return v9;
}

uint64_t _PFFigCopyImageWithPropertiesAndContainerOptions(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!a4)
  {
    v13 = CMPhotoCompressionSessionCreate();
    if (v13)
    {
      goto LABEL_9;
    }

    a4 = 0;
  }

  v15 = v10;
  v12 = CMPhotoCompressionSessionOpenExistingContainerForModification();
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = a1;
      v18 = 1024;
      v19 = v13;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CMPhotoCompressionSessionOpenExistingContainerForModification failed for %@ with code %d", buf, 0x12u);
    }
  }

  else
  {
    v13 = v11[2](v11, a4);
  }

LABEL_9:
  return v13;
}

uint64_t PFFigCopyImageFileWithPropertiesToData(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 0xFFFFFFFFLL;
  if (v7 && a2)
  {
    v11 = v8;
    v12 = *MEMORY[0x1E6991860];
    v20[0] = @"IgnoreUnsupportedJPEGAuxiliaryImages";
    v20[1] = v12;
    v21[0] = MEMORY[0x1E695E118];
    v21[1] = &unk_1F2AAB080;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___PFFigCopyImageWithPropertiesToData_block_invoke;
    v15[3] = &unk_1E7B64810;
    v15[4] = &v16;
    v10 = _PFFigCopyImageWithPropertiesAndContainerOptions(v7, v13, v11, a3, v15);
    if (!v10)
    {
      *a2 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
  }

  return v10;
}

void sub_1B35E21DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PFFigTranscodeImageToJPEG(float a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (PFSharedFigDecodeSession_s_onceToken != -1)
  {
    dispatch_once(&PFSharedFigDecodeSession_s_onceToken, &__block_literal_global_1357);
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  Container = CMPhotoDecompressionSessionCreateContainer();
  if (Container)
  {
    v12 = Container;
  }

  else
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991AD0]];
    [v10 addEntriesFromDictionary:v8];
    if (v9)
    {
      [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6991BF0]];
    }

    if (a1 > 0.0)
    {
      [v10 setObject:&unk_1F2AAB0E0 forKeyedSubscript:*MEMORY[0x1E6991978]];
      v17 = *MEMORY[0x1E6991B90];
      *&v13 = a1;
      v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      v18[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6991970]];
    }

    [v10 setObject:&unk_1F2AAB080 forKeyedSubscript:*MEMORY[0x1E6991B10]];
    v12 = CMPhotoDecompressionContainerJFIFTranscode();
    if (!v12)
    {
      *a3 = 0;
    }
  }

  return v12;
}

uint64_t PFFigEncodeCVPixelBufferToURL(uint64_t a1, void *a2, int a3)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *MEMORY[0x1E6991860];
  v13[0] = *MEMORY[0x1E6991870];
  v13[1] = v5;
  v14[0] = &unk_1F2AAB0C8;
  v14[1] = &unk_1F2AAB0E0;
  v13[2] = *MEMORY[0x1E6991850];
  v14[2] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = *MEMORY[0x1E69918D0];
  v12 = &unk_1F2AAB0F8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = CMPhotoCompressionSessionCreate();
  if (!v8)
  {
    v8 = CMPhotoCompressionSessionOpenEmptyContainer();
    if (!v8)
    {
      v8 = CMPhotoCompressionSessionAddImage();
      if (!v8)
      {
        if (!a3 || (v8 = CMPhotoCompressionSessionAddAuxiliaryImage(), !v8))
        {
          v8 = CMPhotoCompressionSessionCloseContainer();
          if (!v8)
          {
            v8 = CMPhotoCompressionSessionInvalidate();
          }
        }
      }
    }
  }

  v9 = v8;

  return v9;
}

uint64_t PFFigEncodeCVPixelBufferToData(uint64_t a1, void *a2, int a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v6 = *MEMORY[0x1E6991860];
    v13[0] = *MEMORY[0x1E6991870];
    v13[1] = v6;
    v14[0] = &unk_1F2AAB0C8;
    v14[1] = &unk_1F2AAB080;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = *MEMORY[0x1E69918D0];
    v12 = &unk_1F2AAB0F8;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = CMPhotoCompressionSessionCreate();
    if (v9 || (v9 = CMPhotoCompressionSessionOpenEmptyContainer(), v9) || (v9 = CMPhotoCompressionSessionAddImage(), v9) || a3 && (v9 = CMPhotoCompressionSessionAddAuxiliaryImage(), v9))
    {
      v3 = v9;
    }

    else
    {
      v3 = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  return v3;
}

void PFMutableArrayShuffleRangeWithRandomNumberGenerator(void *a1, uint64_t a2, int a3, void *a4)
{
  v9 = a1;
  if (a3 >= 2)
  {
    v7 = (a3 & 0x7FFFFFFF) - 1;
    do
    {
      [v9 exchangeObjectAtIndex:a2 + v7 withObjectAtIndex:{a2 + objc_msgSend(a4, "nextUnsignedIntegerLessThan:", v7)}];
      v8 = v7-- + 1;
    }

    while (v8 > 2);
  }
}

void PFMutableArrayShuffleWithRandomNumberGenerator(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  PFMutableArrayShuffleRangeWithRandomNumberGenerator(v4, 0, [v4 count], v3);
}

id PFShuffledArrayWithRandomNumberGenerator(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 count] >= 2)
  {
    v5 = [v4 mutableCopy];

    PFMutableArrayShuffleWithRandomNumberGenerator(v5, v3);
    v4 = v5;
  }

  v6 = [v4 copy];

  return v6;
}

id PFArrayRandomObjectWithRandomNumberGenerator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 > 1)
  {
    [v3 objectAtIndexedSubscript:{objc_msgSend(v4, "nextUnsignedIntegerLessThan:", v5)}];
  }

  else
  {
    [v3 firstObject];
  }
  v6 = ;

  return v6;
}

__CFString *PFPosterShuffleFrequencyDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_1E7B64860[a1 - 1];
  }
}

__CFString *PFPosterShuffleTypeDescription(uint64_t a1)
{
  v1 = @"Manual";
  if (!a1)
  {
    v1 = @"Smart Albums";
  }

  if (a1 == 2)
  {
    return @"User Album";
  }

  else
  {
    return v1;
  }
}

void sub_1B35E3870(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  std::unique_ptr<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::~unique_ptr[abi:ne200100](&buf);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = (*(*v15 + 16))(v15);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading scene geography index: %s.", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B35E346CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_find_impl<int>(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("priv_find_impl", "segment_manager.hpp", 731, "name != 0");
  }

  v2 = *(MEMORY[0x1E69E5478] + 8) & 0x7FFFFFFFFFFFFFFFLL;
  v7 = vdupq_n_s64(4uLL);
  v8 = v2;
  v6 = &unk_1F2A8A108;
  if (a2 == -1)
  {
    v3 = a1 + 88;
    a2 = v2;
  }

  else
  {
    v3 = a1 + 56;
  }

  return boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_find<char>(a1, a2, v3, &v6, &v5);
}

void boost::interprocess::interprocess_exception::~interprocess_exception(std::exception *this)
{
  this->__vftable = &unk_1F2A8A2B0;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);
}

{
  boost::interprocess::interprocess_exception::~interprocess_exception(this);

  JUMPOUT(0x1B8C64390);
}

uint64_t boost::interprocess::interprocess_exception::what(boost::interprocess::interprocess_exception *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

void *boost::interprocess::interprocess_exception::interprocess_exception(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F2A8A2B0;
  v3 = *a2;
  a1[2] = 0;
  a1[1] = v3;
  a1[3] = 0;
  a1[4] = 0;
  if (v3)
  {
    v4 = strerror(v3);
    MEMORY[0x1B8C64350](a1 + 2, v4);
  }

  else
  {
    MEMORY[0x1B8C64350](a1 + 2, "boost::interprocess_exception::library_error");
  }

  return a1;
}

void sub_1B35E3D04(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B35E3CF0);
}

void sub_1B35E3D10(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

_BYTE *boost::interprocess::ipcdetail::placement_destroy<boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>::destroy_n(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v7 = &v26 - &v24;
    do
    {
      if (*(a2 + 56) != 1)
      {
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v25, a2, *(a2 + 24));
        if (v25 == 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = &v25 + v25;
        }

        v9 = *v8;
        v10 = v8 - &v26;
        if (v9 == 1)
        {
          v10 = 0;
        }

        v11 = v10 + v9;
        v26 = v11;
        if (v11 == 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = &v26 - &v24;
        }

        v13 = v12 + v11;
        v14 = &v24 + v13;
        if (v13 == 1)
        {
          v14 = 0;
        }

        v15 = *(v14 + 10);
        v16 = v14 + 80 - &v25;
        if (v15 == 1)
        {
          v16 = 0;
        }

        v24 = v13;
        v25 = v16 + v15;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a2 + 16), &v24);
        while (1)
        {
          v17 = v25 == 1 ? 0 : &v25 - &v26;
          v18 = v17 + v25;
          v26 = v17 + v25;
          if (v17 + v25 == 1)
          {
            break;
          }

          if (v18 + v7 == 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = &v26 + v18;
          }

          v20 = *(v19 + 10);
          v21 = v19 + 80 - &v25;
          if (v20 == 1)
          {
            v21 = 0;
          }

          v24 = v7 + v18;
          v25 = v21 + v20;
          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(a2, &v24);
        }

        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(a2);
        *(a2 + 48) = xmmword_1B36A1D80;
        *(a2 + 32) = 0;
      }

      result = boost::unordered::detail::functions<boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>::~functions(a2);
      v23 = *a4 + 1;
      *a4 = v23;
      a2 += 64;
    }

    while (v23 < a3);
  }

  return result;
}

_BYTE *boost::unordered::detail::functions<boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>::~functions(_BYTE *result)
{
  if ((*result & 2) != 0)
  {
    __assert_rtn("~functions", "implementation.hpp", 2781, "!(current_ & 2)");
  }

  return result;
}

char *std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](char *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2 + *a2;
  if (v2 != 1 && v3 != 0)
  {
    if (*result == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = &result[*result];
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v5, v3);
  }

  return result;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(uint64_t a1, char *a2)
{
  if (*a2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &a2[*a2];
  }

  if (*(v4 + 9))
  {
    v5 = *(v4 + 7);
    v6 = v4 + 56 - &v13;
    if (v5 == 1)
    {
      v6 = 0;
    }

    v13 = v6 + v5;
    v7 = &v13 + v6 + v5;
    if (v6 + v5 != 1 && v7 != 0)
    {
      v9 = *(v4 + 6);
      if (v9 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = &v4[v9 + 48];
      }

      boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v10, v7);
    }
  }

  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v4);
  v11 = a2 - &v13;
  if (*a2 == 1)
  {
    v11 = 0;
  }

  v13 = v11 + *a2;
  return std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a1 + 16), &v13);
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(void *a1)
{
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v10, a1, a1[3] + 1);
  v3 = a1[7];
  v4 = (a1 + 7) - &v9;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v9 = v4 + v3;
  v5 = &v9 + v4 + v3;
  if (v4 + v3 != 1 && v5 != 0)
  {
    v7 = a1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 + v7 + 8;
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v8, v5);
  }

  return result;
}

char *boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = (a2 - 16);
    v4 = *(a2 - 8);
    v5 = &result[*(result + 4) + 55] & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 - result;
    v7 = v5 + ((*(result + 6) - (v5 - result) - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7 + 8 != a2 && ((*&v3[8 * v4 + 8] & 0x4000000000000000) != 0) != v4 >> 63)
    {
      goto LABEL_103;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      __assert_rtn("priv_deallocate", "rbtree_best_fit.hpp", 1335, "priv_is_allocated_block(block)");
    }

    if ((a2 & 7) != 0)
    {
      __assert_rtn("assert_alignment", "mem_algo_common.hpp", 106, "uint_ptr % Alignment == 0");
    }

    v8 = *(result + 5);
    if (v8 < 8 * v4)
    {
      __assert_rtn("priv_deallocate", "rbtree_best_fit.hpp", 1341, "m_header.m_allocated >= block_old_size");
    }

    *(result + 5) = v8 - 8 * v4;
    v9 = *(a2 - 8);
    if (&result[v6 + 8] != v3 && (v9 & 0x4000000000000000) == 0)
    {
      v11 = *&v3[-8 * *v3 + 8];
      if (v11 < 0)
      {
        __assert_rtn("priv_is_prev_allocated", "rbtree_best_fit.hpp", 1218, "!prev->m_allocated");
      }

      if ((v11 & 0x3FFFFFFFFFFFFFFFLL) != *v3)
      {
        __assert_rtn("priv_is_prev_allocated", "rbtree_best_fit.hpp", 1219, "prev->m_size == block->m_prev_size");
      }
    }

    v12 = (v7 - 8);
    v13 = &v3[8 * v9];
    v14 = *(v13 + 1);
    if (v12 != v13 && ((*&v13[8 * v14 + 8] & 0x4000000000000000) != 0) != v14 >> 63)
    {
LABEL_103:
      __assert_rtn("priv_is_allocated_block", "rbtree_best_fit.hpp", 1200, "allocated == next_block_prev_allocated");
    }

    if ((v9 & 0x4000000000000000) != 0 && (v14 & 0x8000000000000000) != 0)
    {
      v15 = &v75 - &v76;
      if (result - &v75 == -7)
      {
        v15 = 0;
      }

      v16 = v15 + result - &v75 + 8;
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = &v76 + v16;
      }

      v18 = *(v17 + 1);
      v19 = v17 + 8 - &v77;
      if (v18 == 1)
      {
        v19 = 0;
      }

      v20 = v19 + v18;
      v21 = &v77 - v74;
      if (v20 == 1)
      {
        v21 = 0;
      }

      v22 = v21 + v20;
      v74[0] = v22;
      v23 = v74 - &v77;
      if (v22 == 1)
      {
        v23 = 0;
      }

      v24 = v23 + v22;
      v25 = &v77 - &v75;
      if (v24 == 1)
      {
        v25 = 0;
      }

      v26 = v25 + v24;
      v75 = v26;
      v27 = &v75 - &v77;
      if (v26 == 1)
      {
        v27 = 0;
      }

      v28 = v27 + v26;
      v29 = &v77 - &v76;
    }

    else
    {
      if ((v9 & 0x4000000000000000) == 0)
      {
        v3 -= 8 * *v3;
        v30 = *(v3 + 1);
        *(v3 + 1) = v30 & 0xC000000000000000 | (v30 + v9) & 0x3FFFFFFFFFFFFFFFLL;
        if (((v30 + v9) & 0x3FFFFFFFFFFFFFFFuLL) <= 4)
        {
          __assert_rtn("priv_deallocate", "rbtree_best_fit.hpp", 1361, "block_to_insert->m_size >= BlockCtrlUnits");
        }
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v31 = *(v3 + 1);
        v32 = (*(v13 + 1) + v31) & 0x3FFFFFFFFFFFFFFFLL;
        *(v3 + 1) = v31 & 0xC000000000000000 | v32;
        if (v32 <= 4)
        {
          __assert_rtn("priv_deallocate", "rbtree_best_fit.hpp", 1366, "block_to_insert->m_size >= BlockCtrlUnits");
        }

        v33 = v13 - &v76 + 16;
        v76 = v33;
        if ((v9 & 0x4000000000000000) != 0)
        {
          v34 = &v76 - &v77;
          if (v33 == 1)
          {
            v34 = 0;
          }

          v35 = v34 + v33;
          v36 = &v77 - &v75;
          if (v35 == 1)
          {
            v36 = 0;
          }

          v75 = v36 + v35;
          boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::replace_node((result + 8), &v75, v3);
        }

        else
        {
          v37 = &v76 - &v77;
          if (v33 == 1)
          {
            v37 = 0;
          }

          v38 = v37 + v33;
          v39 = &v77 - &v75;
          if (v38 == 1)
          {
            v39 = 0;
          }

          v75 = v39 + v38;
          boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v77, result, &v75);
        }
      }

      v40 = v3 - &v72;
      v41 = v74 - &v77;
      if (v3 - &v72 == 1)
      {
        v41 = 0;
      }

      v42 = v41 + v40;
      if (v42 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = &v77 - &v73;
      }

      v73 = v43 + v42;
      v74[0] = v3 - &v72;
      if (v2 - &v75 == -7)
      {
        v44 = 0;
      }

      else
      {
        v44 = &v75 - &v76;
      }

      v45 = v44 + v2 - &v75 + 8;
      if (v45 == 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = &v76 - &v77 + v45;
      }

      v47 = &v77 - &v72;
      if (v46 == 1)
      {
        v47 = 0;
      }

      v48 = v47 + v46;
      v49 = &v72 - &v77;
      if (v48 == 1)
      {
        v49 = 0;
      }

      v50 = v49 + v48;
      v51 = &v77 - &v75;
      if (v50 == 1)
      {
        v51 = 0;
      }

      v52 = v51 + v50;
      v75 = v51 + v50;
      result = boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::next_node(&v77, &v73);
      if (v77 == 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = &v77 - &v73;
      }

      v54 = v53 + v77;
      v73 = v54;
      v55 = &v73 - &v77;
      if (v54 == 1)
      {
        v55 = 0;
      }

      v56 = v55 + v54;
      if (v52 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = &v75 - &v76;
      }

      v58 = v57 + v52;
      if (v56 == 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = &v77 + v56;
      }

      if (v58 == 1)
      {
        v60 = 0;
      }

      else
      {
        v60 = &v76 + v58;
      }

      if (v59 == v60)
      {
        goto LABEL_101;
      }

      v61 = *(v3 + 1);
      v62 = &v74[-3] + v54;
      if (v54 == 1)
      {
        v62 = -16;
      }

      v77 = v62 - &v77;
      if (v62 - &v77 == 1)
      {
        __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
      }

      v63 = &v77 - &v76;
      if (v62 - &v77 + &v77 - &v76 == 1)
      {
        v62 = 0;
      }

      if ((v61 & 0x3FFFFFFFFFFFFFFFuLL) <= (*(v62 + 8) & 0x3FFFFFFFFFFFFFFFuLL))
      {
        goto LABEL_101;
      }

      v64 = v74 - &v77;
      if (v40 == 1)
      {
        v64 = 0;
      }

      v65 = v64 + v40;
      if (v65 == 1)
      {
        v63 = 0;
      }

      v76 = v63 + v65;
      boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v77, v2, &v76);
      v66 = &v75 - &v77;
      if (v75 == 1)
      {
        v66 = 0;
      }

      v67 = &v77 - &v72;
      if (v66 + v75 == 1)
      {
        v67 = 0;
      }

      v68 = v67 + v66 + v75;
      v72 = v68;
      v69 = &v72 - &v77;
      if (v68 == 1)
      {
        v69 = 0;
      }

      v28 = v69 + v68;
      v29 = &v77 - &v76;
    }

    if (v28 == 1)
    {
      v29 = 0;
    }

    v76 = v29 + v28;
    result = boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::insert_equal(&v77, v2, &v76, v3);
LABEL_101:
    v70 = *(v3 + 1);
    *(v3 + 1) = v70 & 0x7FFFFFFFFFFFFFFFLL;
    v71 = &v3[8 * v70];
    v71[1] &= ~0x4000000000000000uLL;
    *v71 = *(v3 + 1) & 0x3FFFFFFFFFFFFFFFLL;
  }

  return result;
}

char *boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(char *a1, char *a2, char *a3)
{
  v5 = *a3;
  v6 = a3 - &v20;
  if (*a3 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + v5;
  if (*a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3 - &v18;
  }

  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = &v20 - &v19;
  }

  v19 = v9 + v7;
  boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::next_node(&v20, &v19);
  if (v20 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = &v20 - &v19;
  }

  v19 = v10 + v20;
  v18 = v8 + v5;
  v20 = a2 - &v20 + 8;
  v11 = &v18 - &v17;
  if (v8 + v5 == 1)
  {
    v11 = 0;
  }

  v17 = v11 + v8 + v5;
  result = boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::erase(v16, &v20, &v17);
  --*a2;
  v13 = &v19 - &v20;
  if (v19 == 1)
  {
    v13 = 0;
  }

  v14 = v13 + v19;
  v15 = (&v20 - a1);
  if (v14 == 1)
  {
    v15 = 0;
  }

  *a1 = &v15[v14];
  return result;
}

char *boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::replace_node(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2 + *a2 - 16;
  if (*a2 == 1)
  {
    v3 = -16;
  }

  var8[0] = v3 - var8;
  if (v3 - var8 == 1)
  {
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

  v4 = v3 - &v107 + 16;
  v5 = a1 - &v106;
  v106 = a1 - &v106;
  v107 = v4;
  result = (a3 + 16);
  v7 = a3 + 16 - &v105;
  v105 = v7;
  v8 = &v107 - &v110;
  if (v3 - &v107 == -15)
  {
    v8 = 0;
  }

  v9 = v8 + v4;
  v110 = v9;
  v10 = &v106 - &v109;
  if (v5 == 1)
  {
    v10 = 0;
  }

  v11 = v10 + v5;
  v12 = result - &v108;
  v108 = result - &v108;
  v109 = v11;
  v13 = &v110 + v9;
  if (v9 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = &v110 + v9;
  }

  if (v14 != result)
  {
    v15 = &v109 + v11;
    if (v11 == 1)
    {
      v15 = 0;
    }

    v16 = *(v15 + 1);
    v17 = v15 + 8 - var8;
    if (v16 == 1)
    {
      v17 = 0;
    }

    v18 = v17 + v16;
    if (v18 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = var8 + v18;
    }

    if (v14 == v19)
    {
      v20 = &v109 - var8;
      if (v11 == 1)
      {
        v20 = 0;
      }

      v21 = v20 + v11;
      if (v21 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = var8 + v21;
      }

      *(v22 + 1) = &v108 + v12 - (v22 + 8);
    }

    v23 = *(v15 + 2);
    v24 = v15 + 16 - var8;
    if (v23 == 1)
    {
      v24 = 0;
    }

    v25 = v24 + v23;
    v26 = var8 + v25;
    if (v25 == 1)
    {
      v26 = 0;
    }

    if (v14 == v26)
    {
      v27 = &v109 - var8;
      if (v11 == 1)
      {
        v27 = 0;
      }

      v28 = v27 + v11;
      v29 = var8 + v28;
      if (v28 == 1)
      {
        v29 = 0;
      }

      *(v29 + 2) = &v108 + v12 + -16 - v29;
    }

    v30 = *v15 & 0xFFFFFFFFFFFFFFFDLL;
    v31 = v15 - var8;
    if (v30 == 1)
    {
      v31 = 0;
    }

    v32 = v31 + v30;
    if (v32 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = var8 + v32;
    }

    if (v14 == v33)
    {
      v34 = &v109 - var8;
      if (v11 == 1)
      {
        v34 = 0;
      }

      v35 = v34 + v11;
      v36 = &v108 - &v112 + v12;
      v112 = v36;
      var8[0] = v35;
      if (v35 == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = var8 + v35;
      }

      *v37 = &v112 - v37 + v36 + (*v37 & 2);
      v12 = v108;
      v9 = v110;
      v13 = &v110 + v110;
    }

    v38 = &v108 - &v112;
    if (v12 == 1)
    {
      v38 = 0;
    }

    var8[0] = 1;
    v39 = v38 + v12;
    if (v9 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = v13;
    }

    v41 = *(v40 + 1);
    v42 = v40 + 8 - &v111;
    if (v41 == 1)
    {
      v42 = 0;
    }

    v43 = v42 + v41;
    if (v39 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = &var8[-1] + v39;
    }

    v45 = (&v111 - (v44 + 8));
    if (v43 == 1)
    {
      v45 = 0;
    }

    *(v44 + 1) = &v45[v43];
    v46 = *(v40 + 2);
    v47 = v40 + 16 - &v111;
    if (v46 == 1)
    {
      v47 = 0;
    }

    v48 = v47 + v46;
    if (v39 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = &var8[-1] + v39;
    }

    result = (&v111 - (v49 + 16));
    if (v48 == 1)
    {
      result = 0;
    }

    *(v49 + 2) = &result[v48];
    v112 = v39;
    v50 = *v40 & 0xFFFFFFFFFFFFFFFDLL;
    v51 = v40 - &v111;
    if (v50 == 1)
    {
      v51 = 0;
    }

    v52 = v51 + v50;
    v111 = v52;
    if ((v52 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    if (v39 == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = &var8[-1] + v39;
    }

    v54 = (&v111 - v53);
    if (v52 == 1)
    {
      v54 = 0;
    }

    *v53 = &v54[v52 + (*v53 & 2)];
    v55 = v108;
    v56 = &v108 + v108;
    if (v108 == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = &v108 + v108;
    }

    v58 = *(v57 + 1);
    v59 = v57 + 8 - &v112;
    if (v58 == 1)
    {
      v59 = 0;
    }

    v60 = v59 + v58;
    v61 = -8;
    if (v60 == 1)
    {
      v61 = 0;
    }

    v62 = v61 + v60;
    var8[0] = v62;
    if (v62 != 1)
    {
      v63 = &v108 - &v111;
      if (v108 == 1)
      {
        v63 = 0;
      }

      v64 = v63 + v108;
      v111 = v64;
      v112 = v62 + 8;
      if ((v108 & 2) != 0)
      {
        __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
      }

      v65 = var8 + v62;
      if (v62 == -7)
      {
        v65 = 0;
      }

      v66 = (&v111 - v65);
      if (v64 == 1)
      {
        v66 = 0;
      }

      *v65 = &v66[v64 + (*v65 & 2)];
      v55 = v108;
      v56 = &v108 + v108;
    }

    if (v55 == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = v56;
    }

    v68 = *(v67 + 2);
    v69 = v67 + 16 - &v112;
    if (v68 == 1)
    {
      v69 = 0;
    }

    v70 = v69 + v68;
    v71 = &v112 - var8;
    if (v70 == 1)
    {
      v71 = 0;
    }

    v72 = v71 + v70;
    var8[0] = v72;
    if (v72 != 1)
    {
      v73 = &v108 - &v111;
      if (v55 == 1)
      {
        v73 = 0;
      }

      v74 = v73 + v55;
      v111 = v74;
      v112 = v72 + 8;
      if ((v55 & 2) != 0)
      {
        __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
      }

      v75 = var8 + v72;
      if (v72 == -7)
      {
        v75 = 0;
      }

      v76 = (&v111 - v75);
      if (v74 == 1)
      {
        v76 = 0;
      }

      *v75 = &v76[v74 + (*v75 & 2)];
      v55 = v108;
      v56 = &v108 + v108;
    }

    if (v55 == 1)
    {
      v77 = 0;
    }

    else
    {
      v77 = v56;
    }

    v78 = *v77 & 0xFFFFFFFFFFFFFFFDLL;
    v79 = v77 - &v112;
    if (v78 == 1)
    {
      v79 = 0;
    }

    v80 = v79 + v78;
    v81 = -8;
    if (v80 == 1)
    {
      v81 = 0;
    }

    v82 = v81 + v80;
    if (v82 != 1)
    {
      v83 = var8 + v82;
      v84 = v109 == 1 ? 0 : &v109 + v109;
      if (v83 != v84)
      {
        v85 = *(&var8[1] + v82);
        v86 = &var8[1] + v82 - &v112;
        if (v85 == 1)
        {
          v86 = 0;
        }

        v87 = v86 + v85;
        v88 = &var8[-1] + v87;
        if (v87 == 1)
        {
          v88 = 0;
        }

        if (v110 == 1)
        {
          v89 = 0;
        }

        else
        {
          v89 = &v110 + v110;
        }

        if (v88 == v89)
        {
          v90 = &v108 - &v111;
          if (v55 == 1)
          {
            v90 = 0;
          }

          v91 = v90 + v55;
          if (v82 == -7)
          {
            v92 = 0;
          }

          else
          {
            v92 = var8 + v82;
          }

          result = v92 + 8;
          v93 = (&v111 - (v92 + 8));
          if (v91 == 1)
          {
            v93 = 0;
          }

          *(v92 + 1) = &v93[v91];
        }

        v94 = *(v83 + 2);
        v95 = v83 + 16 - &v112;
        if (v94 == 1)
        {
          v95 = 0;
        }

        v96 = v95 + v94;
        v97 = &var8[-1] + v96;
        if (v96 == 1)
        {
          v97 = 0;
        }

        if (v97 == v89)
        {
          v98 = v82 + 8;
          v99 = &v108 - &v111;
          if (v55 == 1)
          {
            v99 = 0;
          }

          v100 = v99 + v55;
          if (v98 == 1)
          {
            v83 = 0;
          }

          v101 = (&v111 - (v83 + 16));
          if (v100 == 1)
          {
            v101 = 0;
          }

          *(v83 + 2) = &v101[v100];
        }
      }
    }

    v4 = v107;
    v7 = v105;
  }

  v102 = (&v107 + v4);
  if (v4 == 1)
  {
    v102 = 0;
  }

  v103 = *v102;
  v104 = (&v105 + v7);
  if (v7 == 1)
  {
    v104 = 0;
  }

  *v104 = *v104 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((v103 >> 1) & 1));
  return result;
}

char *boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::next_node(char *result, char *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = &a2[*a2];
  }

  v4 = *(v3 + 2);
  v5 = v3 + 16 - &v39;
  if (v4 == 1)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  v39 = v6;
  if (v6 == 1)
  {
    v7 = &v38;
    v8 = a2 - &v38;
    if (v2 == 1)
    {
      v8 = 0;
    }

    v9 = v8 + v2;
    v38 = v9;
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v38 + v9;
    }

    v11 = *v10 & 0xFFFFFFFFFFFFFFFDLL;
    v12 = v10 - &v37;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = v12 + v11;
    v37 = v12 + v11;
    v14 = v12 + v11 == 1;
    v15 = &v37 + v12 + v11;
    if (v13 == 1)
    {
      v15 = 0;
    }

    v16 = *(v15 + 2);
    v17 = v15 + 16 - v36;
    if (v16 == 1)
    {
      v17 = 0;
    }

    v18 = v17 + v16;
    if (v18 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v36[v18];
    }

    if (v10 == v19)
    {
      do
      {
        if (v14)
        {
          v20 = 0;
        }

        else
        {
          v20 = &v37 - &v38;
        }

        v21 = v20 + v13;
        v38 = v21;
        v22 = *v15 & 0xFFFFFFFFFFFFFFFDLL;
        v23 = v15 - v36;
        if (v22 == 1)
        {
          v23 = 0;
        }

        v24 = v23 + v22;
        if (v24 == 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = v36 - &v37;
        }

        v13 = v25 + v24;
        v37 = v13;
        v15 = &v37 + v13;
        if (v13 == 1)
        {
          v15 = 0;
        }

        v26 = *(v15 + 2);
        v14 = v13 == 1;
        v27 = v15 + 16 - v36;
        if (v26 == 1)
        {
          v27 = 0;
        }

        v28 = v27 + v26;
        if (v21 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = &v38 + v21;
        }

        if (v28 == 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = &v36[v28];
        }
      }

      while (v10 == v29);
    }

    v30 = *(v10 + 2);
    v31 = v10 + 16 - v36;
    if (v30 == 1)
    {
      v31 = 0;
    }

    v32 = v31 + v30;
    v33 = &v36[v32];
    if (v32 == 1)
    {
      v33 = 0;
    }

    if (v33 != v15)
    {
      v7 = &v37;
    }

    v34 = *v7;
    v35 = v7 - result;
    if (v34 == 1)
    {
      v35 = 0;
    }

    *result = v35 + v34;
  }

  else
  {
    v38 = &v39 - &v38 + v6;
    return boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::minimum(result, &v38);
  }

  return result;
}

char *boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::insert_equal(char *a1, char *a2, char *a3, uint64_t a4)
{
  v6 = a4 + 16;
  v78 = a4 + 16 - &v78;
  v7 = a3 - &v76;
  if (*a3 == 1)
  {
    v7 = 0;
  }

  v8 = v7 + *a3;
  v76 = v8;
  v77 = a2 - &v77 + 8;
  v75 = v6 - &v75;
  v9 = &v77 - &v81;
  if (a2 - &v77 == -7)
  {
    v9 = 0;
  }

  v10 = v9 + a2 - &v77 + 8;
  v11 = &v76 - &v80;
  if (v8 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + v8;
  v80 = v12;
  v81 = v10;
  v13 = v6 - &v79;
  v79 = v6 - &v79;
  LOBYTE(v85) = 0;
  v86 = 1;
  v14 = &v81 - &v84;
  if (v10 == 1)
  {
    v14 = 0;
  }

  v15 = v14 + v10;
  v16 = &v80 - &v83;
  if (v12 == 1)
  {
    v16 = 0;
  }

  v17 = v16 + v12;
  v83 = v17;
  v84 = v14 + v10;
  v18 = v6 - &v82;
  v82 = v6 - &v82;
  if (v17 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = &v83 + v17;
  }

  v20 = &v84 + v15;
  if (v15 == 1)
  {
    v20 = 0;
  }

  if (v19 != v20)
  {
    v21 = &v83 + v17 - 16;
    if (v17 == 1)
    {
      v21 = -16;
    }

    *v93 = v21 - v93;
    if (v21 - v93 == 1)
    {
      goto LABEL_111;
    }

    if ((*(v21 + 8) & 0x3FFFFFFFFFFFFFFFuLL) < (*(a4 + 8) & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v22 = a4;
      v23 = &v84 - v88;
      if (v15 == 1)
      {
        v23 = 0;
      }

      v24 = v23 + v15;
      v25 = &v82 - &v87 + v18;
      v87 = v25;
      v88[0] = v24;
      v26 = v88 - &v91;
      if (v24 == 1)
      {
        v26 = 0;
      }

      v27 = v26 + v24;
      v91 = v27;
      v28 = &v92[v27 - 8];
      if (v27 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = &v92[v27 - 8];
      }

      v30 = *v29 & 0xFFFFFFFFFFFFFFFDLL;
      v31 = v29 - &v90;
      if (v30 == 1)
      {
        v31 = 0;
      }

      v32 = v31 + v30;
      v90 = v31 + v30;
      if (v31 + v30 != 1)
      {
        v33 = &v90 - &v91;
        if (v25 == 1)
        {
          v34 = -16;
        }

        else
        {
          v34 = a4;
        }

        while (1)
        {
          v35 = v32;
          *v93 = &v88[1] + v32 - v93;
          if (*v93 == 1)
          {
            break;
          }

          v28 = &v90 + v32;
          if ((*(&v88[2] + v32) & 0x3FFFFFFFFFFFFFFFuLL) >= (*(v34 + 8) & 0x3FFFFFFFFFFFFFFFuLL))
          {
            v36 = 8;
          }

          else
          {
            v36 = 16;
          }

          v37 = &v28[v36];
          v38 = *v37;
          v39 = v37 - &v89;
          if (v38 == 1)
          {
            v39 = 0;
          }

          v40 = v39 + v38;
          if (v40 == 1)
          {
            v41 = 0;
          }

          else
          {
            v41 = &v89 - &v90;
          }

          v32 = v41 + v40;
          v90 = v32;
          if (v32 == 1)
          {
            v27 = v33 + v35;
            v91 = v27;
            goto LABEL_45;
          }
        }

        v91 = v33 + v32;
LABEL_111:
        __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
      }

LABEL_45:
      if (v27 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v28;
      }

      v43 = v88 + v24;
      if (v24 == 1)
      {
        v43 = 0;
      }

      if (v42 == v43)
      {
        v44 = 1;
      }

      else
      {
        v65 = &v89 + v27;
        if (v27 == 1)
        {
          v65 = -16;
        }

        *v93 = v65 - v93;
        if (v65 - v93 == 1)
        {
          goto LABEL_111;
        }

        if (v25 == 1)
        {
          v22 = -16;
        }

        v44 = (*(v65 + 8) & 0x3FFFFFFFFFFFFFFFuLL) >= (*(v22 + 8) & 0x3FFFFFFFFFFFFFFFuLL);
      }

      LOBYTE(v85) = v44;
      v66 = &v91 - &v86;
      if (v27 == 1)
      {
        v66 = 0;
      }

      v64 = v66 + v27;
      goto LABEL_96;
    }
  }

  v45 = &v83 - &v91;
  if (v17 == 1)
  {
    v45 = 0;
  }

  v46 = v45 + v17;
  v91 = v46;
  v47 = *(v20 + 1);
  v48 = v20 + 8 - &v90;
  if (v47 == 1)
  {
    v48 = 0;
  }

  v49 = v48 + v47;
  v90 = v49;
  if (v49 == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = &v90 + v49;
  }

  if (v19 == v50)
  {
    goto LABEL_69;
  }

  boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v89, &v83);
  v51 = &v89 - &v91;
  if (v89 == 1)
  {
    v51 = 0;
  }

  v46 = v51 + v89;
  *v93 = v6 - 16 - v93;
  v52 = &v89 + v51 + v89;
  if (v51 + v89 == 1)
  {
    v52 = -16;
  }

  v91 = v51 + v89;
  *v92 = v52 - v92;
  if (v52 - v92 == 1)
  {
    goto LABEL_111;
  }

  if ((*(v6 - 8) & 0x3FFFFFFFFFFFFFFFuLL) >= (*(v52 + 8) & 0x3FFFFFFFFFFFFFFFuLL))
  {
LABEL_69:
    v54 = &v84 - v92;
    if (v15 == 1)
    {
      v54 = 0;
    }

    *v92 = v54 + v15;
    v55 = &v92[v54 + v15];
    if (v54 + v15 == 1)
    {
      v55 = 0;
    }

    v56 = *v55 & 0xFFFFFFFFFFFFFFFDLL;
    v57 = v55 - v93;
    if (v56 == 1)
    {
      v57 = 0;
    }

    if (v57 + v56 == 1)
    {
      LOBYTE(v85) = 1;
      v58 = v83;
    }

    else
    {
      v58 = v83;
      v59 = &v83 + v83;
      if (v83 == 1)
      {
        v59 = 0;
      }

      v60 = *(v59 + 1);
      v61 = v59 + 8 - v93;
      if (v60 == 1)
      {
        v61 = 0;
      }

      LOBYTE(v85) = v61 + v60 == 1;
      if (v61 + v60 != 1)
      {
        v62 = &v91;
LABEL_84:
        v63 = v62 - &v86;
        if (v46 == 1)
        {
          v63 = 0;
        }

        v64 = v63 + v46;
LABEL_96:
        v86 = v64;
        goto LABEL_97;
      }
    }

    v62 = &v83;
    v46 = v58;
    goto LABEL_84;
  }

  v53 = &v84 - v93;
  if (v15 == 1)
  {
    v53 = 0;
  }

  *v93 = v53 + v15;
  *v92 = &v82 - v92 + v18;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_equal_upper_bound_check<boost::intrusive::detail::key_nodeptr_comp<std::less<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>,boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,boost::move_detail::identity<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>>>(v93, v92, &v85);
  v10 = v81;
  v13 = v79;
LABEL_97:
  v67 = &v81 - v93;
  if (v10 == 1)
  {
    v67 = 0;
  }

  *v93 = v67 + v10;
  v68 = &v79 - v92;
  if (v13 == 1)
  {
    v68 = 0;
  }

  *v92 = v68 + v13;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_commit(v93, v92, &v85);
  v69 = &v77 - &v85;
  if (v77 == 1)
  {
    v69 = 0;
  }

  v85 = v69 + v77;
  v70 = &v75 - v93;
  if (v75 == 1)
  {
    v70 = 0;
  }

  *v93 = v70 + v75;
  result = boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rebalance_after_insertion(&v85, v93);
  v72 = &v75 - &v85;
  if (v75 == 1)
  {
    v72 = 0;
  }

  v73 = v72 + v75;
  v74 = (&v85 - a1);
  if (v73 == 1)
  {
    v74 = 0;
  }

  *a1 = &v74[v73];
  ++*a2;
  return result;
}

char *boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rebalance_after_insertion(char *a1, char *a2)
{
  if (*a2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &a2[*a2];
  }

  *v4 &= ~2uLL;
  v5 = (&v69 - a2);
  v6 = *a2;
  while (1)
  {
    if (v6 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = &a2[v6];
    }

    v8 = *v7 & 0xFFFFFFFFFFFFFFFDLL;
    v9 = v7 - &v70;
    if (v8 == 1)
    {
      v9 = 0;
    }

    v10 = v9 + v8;
    v70 = v10;
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v70 + v10;
    }

    v12 = *v11 & 0xFFFFFFFFFFFFFFFDLL;
    v13 = v11 - &v69;
    if (v12 == 1)
    {
      v13 = 0;
    }

    v14 = v13 + v12;
    v69 = v13 + v12;
    v15 = *a1;
    v16 = &a1[*a1];
    result = *a1 == 1 ? 0 : &a1[*a1];
    if (v11 == result || (*v11 & 2) != 0)
    {
      break;
    }

    v18 = &v69 + v14;
    if (v14 == 1)
    {
      v18 = 0;
    }

    if (v18 == result)
    {
      break;
    }

    *v18 &= ~2uLL;
    v19 = v69;
    v20 = &v69 + v69;
    if (v69 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = &v69 + v69;
    }

    v22 = *(v21 + 1);
    v23 = v21 + 8 - &v68;
    if (v22 == 1)
    {
      v23 = 0;
    }

    v24 = v23 + v22;
    v68 = v23 + v22;
    v25 = v70;
    v26 = &v70 + v70;
    if (v70 == 1)
    {
      v26 = 0;
    }

    v27 = &v68 + v24;
    if (v24 == 1)
    {
      v27 = 0;
    }

    if (v26 == v27)
    {
      v24 = *(v21 + 2);
      v28 = v21 + 16 - &v67;
      if (v24 == 1)
      {
        v28 = 0;
      }
    }

    else if (v24 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = &v68 - &v67;
    }

    v29 = v28 + v24;
    v67 = v29;
    if (v29 == 1 || (v30 = *(&v67 + v29), (v30 & 2) != 0))
    {
      v33 = *(v26 + 1);
      v34 = v26 + 8 - &v66;
      if (v33 == 1)
      {
        v34 = 0;
      }

      v35 = v34 + v33;
      v36 = &v66 + v35;
      if (v35 == 1)
      {
        v36 = 0;
      }

      v37 = *a2;
      v38 = &a2[*a2];
      if (*a2 == 1)
      {
        v38 = 0;
      }

      if (v26 == v27)
      {
        if (v36 != v38)
        {
          v39 = &v70 - &v66;
          if (v70 == 1)
          {
            v39 = 0;
          }

          v66 = v39 + v70;
          v40 = a2 - &v65;
          if (v37 == 1)
          {
            v40 = 0;
          }

          v65 = &v37[v40];
          boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left_no_parent_fix(&v66, &v65);
          v41 = a2 - &v70;
          if (*a2 == 1)
          {
            v41 = 0;
          }

          v25 = v41 + *a2;
          v70 = v25;
          v19 = v69;
          v20 = &v69 + v69;
        }

        v42 = &v69 - &v66;
        v43 = &v70 - &v65;
        if (v25 == 1)
        {
          v43 = 0;
        }

        if (v19 == 1)
        {
          v42 = 0;
        }

        v65 = v43 + v25;
        v66 = v42 + v19;
        if (v19 == 1)
        {
          v44 = 0;
        }

        else
        {
          v44 = v20;
        }

        v45 = *v44 & 0xFFFFFFFFFFFFFFFDLL;
        v46 = v44 - &v64;
        if (v45 == 1)
        {
          v46 = 0;
        }

        v64 = v46 + v45;
        v47 = a1 - &v63;
        if (*a1 == 1)
        {
          v47 = 0;
        }

        v63 = v47 + *a1;
        result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right(&v66, &v65, &v64, &v63);
      }

      else
      {
        if (v36 == v38)
        {
          v48 = &v70 - &v66;
          if (v70 == 1)
          {
            v48 = 0;
          }

          v66 = v48 + v70;
          v49 = a2 - &v65;
          if (v37 == 1)
          {
            v49 = 0;
          }

          v65 = &v37[v49];
          boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right_no_parent_fix(&v66, &v65);
          v50 = a2 - &v70;
          if (*a2 == 1)
          {
            v50 = 0;
          }

          v25 = v50 + *a2;
          v70 = v25;
          v19 = v69;
          v20 = &v69 + v69;
        }

        v51 = &v69 - &v66;
        v52 = &v70 - &v65;
        if (v25 == 1)
        {
          v52 = 0;
        }

        if (v19 == 1)
        {
          v51 = 0;
        }

        v65 = v52 + v25;
        v66 = v51 + v19;
        if (v19 == 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = v20;
        }

        v54 = *v53 & 0xFFFFFFFFFFFFFFFDLL;
        v55 = v53 - &v64;
        if (v54 == 1)
        {
          v55 = 0;
        }

        v64 = v55 + v54;
        v56 = a1 - &v63;
        if (*a1 == 1)
        {
          v56 = 0;
        }

        v63 = v56 + *a1;
        result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left(&v66, &v65, &v64, &v63);
      }

      if (v70 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = (&v70 + v70);
      }

      *v57 |= 2uLL;
      v15 = *a1;
      v16 = &a1[*a1];
      break;
    }

    *(&v67 + v29) = v30 | 2;
    if (v70 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = (&v70 + v70);
    }

    *v31 |= 2uLL;
    if (v69 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = v5;
    }

    v6 = &v32[v69];
    *a2 = &v32[v69];
  }

  if (v15 == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = v16;
  }

  v59 = *v58 & 0xFFFFFFFFFFFFFFFDLL;
  v60 = v58 - &v70;
  if (v59 == 1)
  {
    v60 = 0;
  }

  v61 = v60 + v59;
  v70 = v61;
  if (v61 == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = (&v70 + v61);
  }

  *v62 |= 2uLL;
  return result;
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left_no_parent_fix(char *result, char *a2)
{
  if (*a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = &a2[*a2];
  }

  v3 = *(v2 + 1);
  v4 = v2 + 8 - &v31;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v31 = v4 + v3;
  v6 = result - &v30;
  if (*result == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = result - &v30;
  }

  v8 = v7 + *result;
  v9 = &v31 - &v29;
  if (v5 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v5;
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &v30 + v8;
  }

  v12 = (&v29 - (v11 + 16));
  if (v10 == 1)
  {
    v12 = 0;
  }

  *(v11 + 2) = &v12[v10];
  if (v5 != 1)
  {
    v13 = v5 + &v31 - &v30;
    v14 = result - &v29;
    if (*result == 1)
    {
      v14 = 0;
    }

    v15 = v14 + *result;
    v29 = v15;
    v30 = v5 + &v31 - &v30;
    if ((v15 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v16 = &v31 + v5;
    if (v13 == 1)
    {
      v16 = 0;
    }

    v17 = (&v29 - v16);
    if (v15 == 1)
    {
      v17 = 0;
    }

    *v16 = &v17[v15 + (*v16 & 2)];
  }

  v18 = a2 - &v30;
  if (*a2 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + *a2;
  v20 = result - &v29;
  if (*result == 1)
  {
    v20 = 0;
  }

  v21 = v20 + *result;
  v22 = &v30 + v19;
  if (v19 == 1)
  {
    v22 = 0;
  }

  v23 = (&v29 - (v22 + 8));
  if (v21 == 1)
  {
    v23 = 0;
  }

  *(v22 + 1) = &v23[v21];
  if (*result == 1)
  {
    v6 = 0;
  }

  v24 = v6 + *result;
  v25 = a2 - &v29;
  if (*a2 == 1)
  {
    v25 = 0;
  }

  v26 = v25 + *a2;
  v29 = v26;
  v30 = v24;
  if ((v26 & 2) != 0)
  {
    __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
  }

  v27 = &v30 + v24;
  if (v24 == 1)
  {
    v27 = 0;
  }

  v28 = (&v29 - v27);
  if (v26 == 1)
  {
    v28 = 0;
  }

  *v27 = &v28[v26 + (*v27 & 2)];
  return result;
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right(char *a1, char *a2, char *a3, char *a4)
{
  if (*a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = &a3[*a3];
  }

  v11 = *(v8 + 1);
  v10 = v8 + 8;
  v9 = v11;
  v12 = *a1;
  v13 = a1 - &v33;
  if (*a1 == 1)
  {
    v13 = 0;
  }

  v33 = v13 + v12;
  v14 = a2 - &v32;
  if (*a2 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 - &v32;
  }

  v32 = v15 + *a2;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right_no_parent_fix(&v33, &v32);
  v16 = a2 - &v33;
  if (*a2 == 1)
  {
    v16 = 0;
  }

  v17 = v16 + *a2;
  v18 = a3 - &v32;
  if (*a3 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + *a3;
  v32 = v19;
  v33 = v17;
  if ((v19 & 2) != 0)
  {
    __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
  }

  v20 = v10 - &v33;
  if (v9 == 1)
  {
    v20 = 0;
  }

  v21 = v20 + v9;
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = &v33 + v21;
  }

  v23 = &a1[v12];
  if (v12 == 1)
  {
    v23 = 0;
  }

  v24 = v22 == v23;
  if (v17 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v17;
  }

  v26 = (&v32 - v25);
  if (v19 == 1)
  {
    v26 = 0;
  }

  *v25 = &v26[v19 + (*v25 & 2)];
  v27 = a4 - &v33;
  if (*a4 == 1)
  {
    v27 = 0;
  }

  v33 = v27 + *a4;
  if (*a2 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v14;
  }

  v32 = v28 + *a2;
  v29 = a3 - &v31;
  if (*a3 == 1)
  {
    v29 = 0;
  }

  v31 = v29 + *a3;
  return boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::set_child(&v33, &v32, &v31, v24);
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right_no_parent_fix(char *result, char *a2)
{
  if (*a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = &a2[*a2];
  }

  v3 = *(v2 + 2);
  v4 = v2 + 16 - &v31;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v31 = v4 + v3;
  v6 = result - &v30;
  if (*result == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = result - &v30;
  }

  v8 = v7 + *result;
  v9 = &v31 - &v29;
  if (v5 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v5;
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &v30 + v8;
  }

  v12 = (&v29 - (v11 + 8));
  if (v10 == 1)
  {
    v12 = 0;
  }

  *(v11 + 1) = &v12[v10];
  if (v5 != 1)
  {
    v13 = v5 + &v31 - &v30;
    v14 = result - &v29;
    if (*result == 1)
    {
      v14 = 0;
    }

    v15 = v14 + *result;
    v29 = v15;
    v30 = v5 + &v31 - &v30;
    if ((v15 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v16 = &v31 + v5;
    if (v13 == 1)
    {
      v16 = 0;
    }

    v17 = (&v29 - v16);
    if (v15 == 1)
    {
      v17 = 0;
    }

    *v16 = &v17[v15 + (*v16 & 2)];
  }

  v18 = a2 - &v30;
  if (*a2 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + *a2;
  v20 = result - &v29;
  if (*result == 1)
  {
    v20 = 0;
  }

  v21 = v20 + *result;
  v22 = &v30 + v19;
  if (v19 == 1)
  {
    v22 = 0;
  }

  v23 = (&v29 - (v22 + 16));
  if (v21 == 1)
  {
    v23 = 0;
  }

  *(v22 + 2) = &v23[v21];
  if (*result == 1)
  {
    v6 = 0;
  }

  v24 = v6 + *result;
  v25 = a2 - &v29;
  if (*a2 == 1)
  {
    v25 = 0;
  }

  v26 = v25 + *a2;
  v29 = v26;
  v30 = v24;
  if ((v26 & 2) != 0)
  {
    __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
  }

  v27 = &v30 + v24;
  if (v24 == 1)
  {
    v27 = 0;
  }

  v28 = (&v29 - v27);
  if (v26 == 1)
  {
    v28 = 0;
  }

  *v27 = &v28[v26 + (*v27 & 2)];
  return result;
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left(char *a1, char *a2, char *a3, char *a4)
{
  if (*a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = &a3[*a3];
  }

  v11 = *(v8 + 1);
  v10 = v8 + 8;
  v9 = v11;
  v12 = *a1;
  v13 = a1 - &v33;
  if (*a1 == 1)
  {
    v13 = 0;
  }

  v33 = v13 + v12;
  v14 = a2 - &v32;
  if (*a2 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 - &v32;
  }

  v32 = v15 + *a2;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left_no_parent_fix(&v33, &v32);
  v16 = a2 - &v33;
  if (*a2 == 1)
  {
    v16 = 0;
  }

  v17 = v16 + *a2;
  v18 = a3 - &v32;
  if (*a3 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + *a3;
  v32 = v19;
  v33 = v17;
  if ((v19 & 2) != 0)
  {
    __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
  }

  v20 = v10 - &v33;
  if (v9 == 1)
  {
    v20 = 0;
  }

  v21 = v20 + v9;
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = &v33 + v21;
  }

  v23 = &a1[v12];
  if (v12 == 1)
  {
    v23 = 0;
  }

  v24 = v22 == v23;
  if (v17 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v17;
  }

  v26 = (&v32 - v25);
  if (v19 == 1)
  {
    v26 = 0;
  }

  *v25 = &v26[v19 + (*v25 & 2)];
  v27 = a4 - &v33;
  if (*a4 == 1)
  {
    v27 = 0;
  }

  v33 = v27 + *a4;
  if (*a2 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v14;
  }

  v32 = v28 + *a2;
  v29 = a3 - &v31;
  if (*a3 == 1)
  {
    v29 = 0;
  }

  v31 = v29 + *a3;
  return boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::set_child(&v33, &v32, &v31, v24);
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::set_child(char *result, char *a2, char *a3, int a4)
{
  v4 = *a3;
  if (*a3 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = &a3[*a3];
  }

  v6 = *result;
  v7 = &result[*result];
  if (*result == 1)
  {
    v7 = 0;
  }

  if (v5 == v7)
  {
    v8 = result - &v25;
    if (v6 == 1)
    {
      v8 = 0;
    }

    v9 = v8 + v6;
    v10 = a2 - &v24;
    if (*a2 == 1)
    {
      v10 = 0;
    }

    v11 = v10 + *a2;
    v24 = v11;
    v25 = v9;
    if ((v11 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v12 = &v25 + v9;
    if (v9 == 1)
    {
      v12 = 0;
    }

    v13 = (&v24 - v12);
    if (v11 == 1)
    {
      v13 = 0;
    }

    *v12 = &v13[v11 + (*v12 & 2)];
  }

  else
  {
    v14 = a3 - &v25;
    if (v4 == 1)
    {
      v14 = 0;
    }

    v15 = v14 + v4;
    if (a4)
    {
      v16 = a2 - &v24;
      if (*a2 == 1)
      {
        v16 = 0;
      }

      v17 = v16 + *a2;
      if (v15 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = &v25 + v15;
      }

      v19 = (&v24 - (v18 + 8));
      if (v17 == 1)
      {
        v19 = 0;
      }

      *(v18 + 1) = &v19[v17];
    }

    else
    {
      v20 = a2 - &v24;
      if (*a2 == 1)
      {
        v20 = 0;
      }

      v21 = v20 + *a2;
      if (v15 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = &v25 + v15;
      }

      v23 = (&v24 - (v22 + 16));
      if (v21 == 1)
      {
        v23 = 0;
      }

      *(v22 + 2) = &v23[v21];
    }
  }

  return result;
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_commit(char *result, char *a2, uint64_t a3)
{
  v3 = a3 + 8;
  v4 = *(a3 + 8);
  if (v4 == 1 || v4 == -(a3 + 8))
  {
    __assert_rtn("insert_commit", "bstree_algorithms.hpp", 1774, "commit_data.node != node_ptr()");
  }

  v6 = v4 + v3 - &v78;
  v78 = v6;
  v7 = (v4 + v3);
  if (v6 == 1)
  {
    v7 = 0;
  }

  v8 = *result;
  v9 = &result[*result];
  if (*result == 1)
  {
    v9 = 0;
  }

  if (v7 == v9)
  {
    v10 = result - &v77;
    if (v8 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = result - &v77;
    }

    v12 = v11 + v8;
    v13 = a2 - &v76;
    if (*a2 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2 - &v76;
    }

    v15 = v14 + *a2;
    v76 = v15;
    v77 = v12;
    if ((v15 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    if (v12 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = &v77 + v12;
    }

    v17 = (&v76 - v16);
    if (v15 == 1)
    {
      v17 = 0;
    }

    *v16 = &v17[v15 + (*v16 & 2)];
    if (*result == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = result - &v77;
    }

    v19 = v18 + *result;
    if (*a2 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2 - &v76;
    }

    v21 = v20 + *a2;
    if (v19 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v77 + v19;
    }

    v23 = (&v76 - (v22 + 16));
    if (v21 == 1)
    {
      v23 = 0;
    }

    *(v22 + 2) = &v23[v21];
    if (*result == 1)
    {
      v10 = 0;
    }

    v24 = v10 + *result;
    if (*a2 == 1)
    {
      v13 = 0;
    }

    v25 = v13 + *a2;
    v26 = &v77 + v24;
    if (v24 == 1)
    {
      v26 = 0;
    }

    v27 = (&v76 - (v26 + 8));
    if (v25 == 1)
    {
      v27 = 0;
    }

    *(v26 + 1) = &v27[v25];
    v6 = v78;
  }

  else if (*a3 == 1)
  {
    v28 = &v78 - &v77;
    if (v6 == 1)
    {
      v28 = 0;
    }

    v29 = v28 + v6;
    v30 = a2 - &v76;
    if (*a2 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = a2 - &v76;
    }

    v32 = v31 + *a2;
    if (v29 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = &v77 + v29;
    }

    v34 = (&v76 - (v33 + 8));
    if (v32 == 1)
    {
      v34 = 0;
    }

    *(v33 + 1) = &v34[v32];
    v35 = *result;
    v36 = &result[*result];
    if (*result == 1)
    {
      v36 = 0;
    }

    v37 = *(v36 + 1);
    v38 = v36 + 8 - &v77;
    if (v37 == 1)
    {
      v38 = 0;
    }

    v39 = v38 + v37;
    if (v39 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = &v77 + v39;
    }

    if (v7 == v40)
    {
      v41 = result - &v77;
      if (v35 == 1)
      {
        v41 = 0;
      }

      v42 = v41 + v35;
      if (*a2 == 1)
      {
        v30 = 0;
      }

      v43 = v30 + *a2;
      if (v42 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = &v77 + v42;
      }

      v45 = (&v76 - (v44 + 8));
      if (v43 == 1)
      {
        v45 = 0;
      }

      *(v44 + 1) = &v45[v43];
    }
  }

  else
  {
    v46 = &v78 - &v77;
    if (v6 == 1)
    {
      v46 = 0;
    }

    v47 = v46 + v6;
    v48 = a2 - &v76;
    if (*a2 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = a2 - &v76;
    }

    v50 = v49 + *a2;
    if (v47 == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = &v77 + v47;
    }

    v52 = (&v76 - (v51 + 16));
    if (v50 == 1)
    {
      v52 = 0;
    }

    *(v51 + 2) = &v52[v50];
    v53 = *result;
    v54 = &result[*result];
    if (*result == 1)
    {
      v54 = 0;
    }

    v55 = *(v54 + 2);
    v56 = v54 + 16 - &v77;
    if (v55 == 1)
    {
      v56 = 0;
    }

    v57 = v56 + v55;
    if (v57 == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = &v77 + v57;
    }

    if (v7 == v58)
    {
      v59 = result - &v77;
      if (v53 == 1)
      {
        v59 = 0;
      }

      v60 = v59 + v53;
      if (*a2 == 1)
      {
        v48 = 0;
      }

      v61 = v48 + *a2;
      if (v60 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = &v77 + v60;
      }

      v63 = (&v76 - (v62 + 16));
      if (v61 == 1)
      {
        v63 = 0;
      }

      *(v62 + 2) = &v63[v61];
    }
  }

  v64 = a2 - &v77;
  if (*a2 == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = a2 - &v77;
  }

  v66 = v65 + *a2;
  v67 = &v78 - &v76;
  if (v6 == 1)
  {
    v67 = 0;
  }

  v68 = v67 + v6;
  v76 = v68;
  v77 = v66;
  if ((v6 & 2) != 0)
  {
    __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
  }

  v69 = &v77 + v66;
  if (v66 == 1)
  {
    v69 = 0;
  }

  v70 = (&v76 - v69);
  if (v68 == 1)
  {
    v70 = 0;
  }

  *v69 = &v70[v68 + (*v69 & 2)];
  if (*a2 == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = a2 - &v77;
  }

  v72 = v71 + *a2;
  if (v72 == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = &v77 + v72;
  }

  *(v73 + 2) = 1;
  if (*a2 == 1)
  {
    v64 = 0;
  }

  v74 = v64 + *a2;
  if (v74 == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = &v77 + v74;
  }

  *(v75 + 1) = 1;
  return result;
}

char *boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(char *result, char *a2)
{
  v2 = *a2;
  v3 = a2 - &v58;
  if (*a2 == 1)
  {
    v3 = 0;
  }

  v58 = v3 + v2;
  v4 = &v58 + v3 + v2;
  if (v3 + v2 == 1)
  {
    v4 = 0;
  }

  v5 = *(v4 + 1);
  v6 = v4 + 8 - &v65;
  if (v5 == 1)
  {
    v6 = 0;
  }

  v7 = (v6 + v5);
  v8 = *(v4 + 2);
  v9 = v4 + 16 - &v64;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  v64 = v10;
  v65 = v7;
  v11 = *v4 & 0xFFFFFFFFFFFFFFFDLL;
  v12 = v4 - &v63;
  if (v11 == 1)
  {
    v12 = 0;
  }

  v63 = v12 + v11;
  if (v12 + v11 == 1)
  {
    goto LABEL_12;
  }

  if (v7 == 1 || v10 == 1)
  {
    goto LABEL_24;
  }

  v44 = &v65 + v7;
  v45 = &v64 + v10;
  if (v44 == &v64 + v10)
  {
    goto LABEL_12;
  }

  v46 = *v44 & 0xFFFFFFFFFFFFFFFDLL;
  v47 = v44 - &v61;
  if (v46 == 1)
  {
    v47 = 0;
  }

  v48 = v47 + v46;
  v61 = v48;
  v49 = &v61 - &v62;
  if (v48 == 1)
  {
    v49 = 0;
  }

  v62 = v49 + v48;
  v50 = v49 + v48 == 1 ? 0 : &v62 + v49 + v48;
  if (v50 != v4)
  {
    goto LABEL_12;
  }

  v51 = *v45 & 0xFFFFFFFFFFFFFFFDLL;
  v52 = v45 - &v59;
  if (v51 == 1)
  {
    v52 = 0;
  }

  v53 = v52 + v51;
  v54 = &v59 - v60;
  if (v53 == 1)
  {
    v54 = 0;
  }

  v55 = v54 + v53;
  v56 = v55 == 1 ? 0 : &v60[v55];
  if (v56 == v4)
  {
LABEL_24:
    if (v2 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = &a2[v2];
    }

    v18 = *(v17 + 1);
    v19 = v17 + 8 - &v65;
    if (v18 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (v20 + v18 == 1)
    {
      v21 = a2 - &v65;
      if (v2 == 1)
      {
        v21 = 0;
      }

      v22 = (v21 + v2);
      v65 = v22;
      if (v22 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v65 + v22;
      }

      v24 = *v23 & 0xFFFFFFFFFFFFFFFDLL;
      v25 = v23 - result;
      if (v24 == 1)
      {
        v25 = 0;
      }

      v26 = (v25 + v24);
      *result = v26;
      v27 = v26 == 1;
      v28 = &result[v26];
      if (v26 == 1)
      {
        v28 = 0;
      }

      v29 = *(v28 + 1);
      v30 = v28 + 8 - &v64;
      if (v29 == 1)
      {
        v30 = 0;
      }

      v31 = v30 + v29;
      if (v31 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = &v64 + v31;
      }

      if (v23 == v32)
      {
        do
        {
          if (v27)
          {
            v33 = 0;
          }

          else
          {
            v33 = result - &v65;
          }

          v34 = &v26[v33];
          v65 = &v26[v33];
          v35 = *v28 & 0xFFFFFFFFFFFFFFFDLL;
          v36 = v28 - &v64;
          if (v35 == 1)
          {
            v36 = 0;
          }

          v37 = v36 + v35;
          if (v37 == 1)
          {
            v38 = 0;
          }

          else
          {
            v38 = (&v64 - result);
          }

          v26 = &v38[v37];
          *result = v26;
          v28 = &result[v26];
          if (v26 == 1)
          {
            v28 = 0;
          }

          v39 = *(v28 + 1);
          v27 = v26 == 1;
          v40 = v28 + 8 - &v64;
          if (v39 == 1)
          {
            v40 = 0;
          }

          v41 = v40 + v39;
          if (v34 == 1)
          {
            v42 = 0;
          }

          else
          {
            v42 = &v65 + v34;
          }

          if (v41 == 1)
          {
            v43 = 0;
          }

          else
          {
            v43 = &v64 + v41;
          }
        }

        while (v42 == v43);
      }
    }

    else
    {
      if (v18 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = v19;
      }

      v65 = (v57 + v18);
      return boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::maximum(result, &v65);
    }
  }

  else
  {
LABEL_12:
    if (v2 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = &a2[v2];
    }

    v14 = *(v13 + 2);
    v15 = v13 + 16 - result;
    if (v14 == 1)
    {
      v15 = 0;
    }

    *result = v15 + v14;
  }

  return result;
}

char *boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_equal_upper_bound_check<boost::intrusive::detail::key_nodeptr_comp<std::less<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>,boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,boost::move_detail::identity<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>>>(char *result, void *a2, uint64_t a3)
{
  v3 = *result;
  v4 = result - &v31;
  if (*result == 1)
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v31 = v5;
  v6 = &v31 + v5;
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = &v31 + v5;
  }

  v8 = *v7 & 0xFFFFFFFFFFFFFFFDLL;
  v9 = v7 - &v30;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  v30 = v10;
  if (v10 != 1)
  {
    v11 = &v30 - &v31;
    v12 = -16;
    if (*a2 != 1)
    {
      v12 = a2 + *a2 - 16;
    }

    v13 = v10;
    while (1)
    {
      v33 = v12 - &v33;
      if (v12 - &v33 == 1)
      {
        v27 = v11 + v10;
        goto LABEL_45;
      }

      v14 = v13;
      v32 = &v28[v13] - &v32;
      if (v32 == 1)
      {
        break;
      }

      v6 = &v30 + v13;
      if ((*(v12 + 8) & 0x3FFFFFFFFFFFFFFFuLL) >= (*&v28[v13 + 8] & 0x3FFFFFFFFFFFFFFFuLL))
      {
        v15 = 16;
      }

      else
      {
        v15 = 8;
      }

      v16 = &v6[v15];
      v17 = *v16;
      v18 = v16 - v29;
      if (v17 == 1)
      {
        v18 = 0;
      }

      v19 = v18 + v17;
      if (v19 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v29 - &v30;
      }

      v13 = v20 + v19;
      v30 = v13;
      if (v13 == 1)
      {
        v5 = v11 + v14;
        v31 = v5;
        goto LABEL_24;
      }
    }

    v27 = v11 + v13;
LABEL_45:
    v31 = v27;
LABEL_46:
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

LABEL_24:
  if (v5 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v6;
  }

  if (v3 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = &result[v3];
  }

  if (v21 == v22)
  {
    v23 = 1;
  }

  else
  {
    v24 = -16;
    if (*a2 == 1)
    {
      v25 = -16;
    }

    else
    {
      v25 = a2 + *a2 - 16;
    }

    v33 = v25 - &v33;
    if (v25 - &v33 == 1)
    {
      goto LABEL_46;
    }

    if (v5 != 1)
    {
      v24 = &v29[v5];
    }

    v32 = v24 - &v32;
    if (v24 - &v32 == 1)
    {
      goto LABEL_46;
    }

    v23 = (*(v25 + 8) & 0x3FFFFFFFFFFFFFFFuLL) < (*(v24 + 8) & 0x3FFFFFFFFFFFFFFFuLL);
  }

  *a3 = v23;
  v26 = &v31 - a3 - 8;
  if (v5 == 1)
  {
    v26 = 0;
  }

  *(a3 + 8) = &v26[v5];
  return result;
}

char *boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::maximum(char *result, void *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2 + *a2;
  }

  v4 = *(v3 + 2);
  v5 = v3 + 16 - v15;
  if (v4 == 1)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (v5 + v4 != 1)
  {
    v7 = (v15 - a2);
    do
    {
      v2 = &v7[v6];
      *a2 = &v7[v6];
      v8 = &v15[v6];
      if (v2 == 1)
      {
        v8 = 0;
      }

      v9 = *(v8 + 2);
      v10 = v8 + 16 - &v14;
      if (v9 == 1)
      {
        v10 = 0;
      }

      v11 = v10 + v9;
      if (v11 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v14 - v15;
      }

      v6 = v12 + v11;
    }

    while (v6 != 1);
  }

  v13 = a2 - result;
  if (v2 == 1)
  {
    v13 = 0;
  }

  *result = &v2[v13];
  return result;
}

char *boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::minimum(char *result, void *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2 + *a2;
  }

  v4 = *(v3 + 1);
  v5 = v3 - &v14;
  if (v4 == 1)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (v5 + v4 != 1)
  {
    v7 = (v15 - a2);
    do
    {
      v2 = &v7[v6];
      *a2 = &v7[v6];
      v8 = &v15[v6];
      if (v2 == 1)
      {
        v8 = 0;
      }

      v9 = *(v8 + 1);
      v10 = v8 + 8 - &v14;
      if (v9 == 1)
      {
        v10 = 0;
      }

      v11 = v10 + v9;
      if (v11 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v14 - v15;
      }

      v6 = v12 + v11;
    }

    while (v6 != 1);
  }

  v13 = a2 - result;
  if (v2 == 1)
  {
    v13 = 0;
  }

  *result = &v2[v13];
  return result;
}

char *boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::erase(char *a1, char *a2, char *a3)
{
  v3 = a3;
  v282 = vdupq_n_s64(1uLL);
  v283 = 1;
  v6 = a2 - &v286;
  if (*a2 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + *a2;
  v8 = a3 - &v285;
  if (*a3 == 1)
  {
    v8 = 0;
  }

  v9 = v8 + *a3;
  v285 = v9;
  v286 = v7;
  v10 = &v285 - v295;
  if (v9 == 1)
  {
    v10 = 0;
  }

  v11 = v10 + v9;
  v294 = 1;
  v295[0] = v11;
  if (v9 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = &v285 + v9;
  }

  v13 = *(v12 + 1);
  v14 = v12 + 8 - &v293;
  if (v13 == 1)
  {
    v14 = 0;
  }

  v15 = v14 + v13;
  v16 = *(v12 + 2);
  v17 = v12 + 16 - &v292;
  if (v16 == 1)
  {
    v17 = 0;
  }

  v18 = v17 + v16;
  v292 = v18;
  v293 = v15;
  if (v15 == 1)
  {
    v19 = -16;
LABEL_26:
    if (v18 == 1)
    {
      v19 = 0;
    }

    v20 = v19 + v18;
    v294 = v19 + v18;
    goto LABEL_29;
  }

  if (v18 != 1)
  {
    v290 = &v292 - &v290 + v18;
    boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::minimum(&v291, &v290);
    v23 = -32;
    if (v291 == 1)
    {
      v23 = 0;
    }

    v11 = v23 + v291;
    v295[0] = v11;
    v24 = v295 + v11;
    if (v11 == 1)
    {
      v24 = 0;
    }

    v25 = *(v24 + 2);
    v26 = v24 + 16 - &v291;
    if (v25 == 1)
    {
      v26 = 0;
    }

    v18 = v26 + v25;
    v19 = -24;
    goto LABEL_26;
  }

  v20 = v15 - 8;
  v294 = v15 - 8;
  if (v15 == 9)
  {
    v21 = "x";
    v22 = 1521;
    goto LABEL_462;
  }

LABEL_29:
  v291 = 1;
  v27 = *v12 & 0xFFFFFFFFFFFFFFFDLL;
  v28 = v12 - &v290;
  if (v27 == 1)
  {
    v28 = 0;
  }

  v29 = v28 + v27;
  v290 = v29;
  v30 = &v290 + v29;
  if (v29 == 1)
  {
    v30 = 0;
  }

  v31 = *(v30 + 1);
  v32 = v30 + 8 - &v289;
  if (v31 == 1)
  {
    v32 = 0;
  }

  v33 = v32 + v31;
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = &v289 + v33;
  }

  v35 = v295 + v11;
  if (v11 == 1)
  {
    v35 = 0;
  }

  if (v35 != v12)
  {
    v38 = &v293 - &v289;
    if (v15 == 1)
    {
      v38 = 0;
    }

    v39 = v38 + v15;
    v40 = v295 - &v288;
    if (v11 == 1)
    {
      v40 = 0;
    }

    v41 = v40 + v11;
    v288 = v40 + v11;
    v289 = v39;
    if ((v11 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v42 = &v289 + v39;
    if (v39 == 1)
    {
      v42 = 0;
    }

    v43 = (&v288 - v42);
    if (v41 == 1)
    {
      v43 = 0;
    }

    *v42 = &v43[v41 + (*v42 & 2)];
    v44 = v295[0];
    v45 = v295 - &v289;
    v46 = &v293 - &v288;
    if (v293 == 1)
    {
      v46 = 0;
    }

    if (v295[0] == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = v295 - &v289;
    }

    v48 = v47 + v295[0];
    v49 = v46 + v293;
    v50 = &v289 + v48;
    v51 = v295 + v295[0];
    if (v295[0] == 1)
    {
      v51 = 0;
    }

    if (v48 == 1)
    {
      v50 = 0;
    }

    v52 = (&v288 - (v50 + 8));
    if (v49 == 1)
    {
      v52 = 0;
    }

    *(v50 + 1) = &v52[v49];
    v53 = v292;
    v54 = &v292 + v292;
    if (v292 == 1)
    {
      v54 = 0;
    }

    if (v51 == v54)
    {
      v55 = 32;
      if (v44 == 1)
      {
        v55 = 0;
      }

      v291 = v55 + v44;
LABEL_185:
      v121 = v295 - &v289;
      if (v44 == 1)
      {
        v121 = 0;
      }

      v122 = v121 + v44;
      v123 = &v290 - &v288;
      if (v290 == 1)
      {
        v123 = 0;
      }

      v124 = v123 + v290;
      v288 = v124;
      v289 = v121 + v44;
      if ((v290 & 2) != 0)
      {
        __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
      }

      v125 = v34 == v12;
      v126 = &v289 + v122;
      if (v122 == 1)
      {
        v126 = 0;
      }

      v127 = (&v288 - v126);
      if (v124 == 1)
      {
        v127 = 0;
      }

      *v126 = &v127[v124 + (*v126 & 2)];
      v128 = &v286 - &v289;
      if (v286 == 1)
      {
        v128 = 0;
      }

      v289 = v128 + v286;
      v129 = v295 - &v288;
      if (v295[0] == 1)
      {
        v129 = 0;
      }

      v288 = v129 + v295[0];
      v130 = &v290 - &v287;
      if (v290 == 1)
      {
        v130 = 0;
      }

      v287 = v130 + v290;
      result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::set_child(&v289, &v288, &v287, v125);
      goto LABEL_201;
    }

    v76 = v295 - &v288;
    if (v44 == 1)
    {
      v45 = 0;
    }

    v77 = v45 + v44;
    if (v44 == 1)
    {
      v76 = 0;
    }

    if (v77 == 1)
    {
      v78 = 0;
    }

    else
    {
      v78 = &v289 + v77;
    }

    v79 = &v292 - &v289;
    if (v292 == 1)
    {
      v80 = 0;
    }

    else
    {
      v80 = &v292 - &v288;
    }

    v81 = v80 + v292;
    if (v292 == 1)
    {
      v79 = 0;
    }

    if (v81 == 1)
    {
      v82 = 0;
    }

    else
    {
      v82 = (&v288 - (v78 + 16));
    }

    *(v78 + 2) = &v82[v81];
    v83 = v79 + v53;
    v84 = v76 + v44;
    v288 = v76 + v44;
    v289 = v83;
    if ((v44 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v85 = &v289 + v83;
    if (v83 == 1)
    {
      v85 = 0;
    }

    v86 = (&v288 - v85);
    if (v84 == 1)
    {
      v86 = 0;
    }

    *v85 = &v86[v84 + (*v85 & 2)];
    v44 = v295[0];
    v87 = v295 + v295[0];
    if (v295[0] == 1)
    {
      v87 = 0;
    }

    v88 = *v87 & 0xFFFFFFFFFFFFFFFDLL;
    v89 = v87 - &v289;
    if (v88 == 1)
    {
      v89 = 0;
    }

    v90 = v89 + v88;
    v91 = &v289 - &v291;
    if (v90 == 1)
    {
      v91 = 0;
    }

    v92 = v91 + v90;
    v291 = v92;
    v93 = &v291 + v92;
    if (v92 == 1)
    {
      v93 = 0;
    }

    v94 = *(v93 + 1);
    v95 = v93 + 8 - &v289;
    if (v94 == 1)
    {
      v95 = 0;
    }

    v289 = v95 + v94;
    if (v95 + v94 == 1)
    {
      v96 = 0;
    }

    else
    {
      v96 = &v289 + v95 + v94;
    }

    if (v96 != v87)
    {
      v21 = "NodeTraits::get_left(x_parent) == y";
      v22 = 1545;
      goto LABEL_462;
    }

    if (v294 == 1)
    {
      v97 = &v291 - &v289;
      if (v92 == 1)
      {
        v97 = 0;
      }

      v98 = v97 + v92;
    }

    else
    {
      v111 = &v291 - &v288;
      if (v92 == 1)
      {
        v111 = 0;
      }

      v112 = v111 + v92;
      v288 = v112;
      v289 = v294 + &v294 - &v289;
      if ((v90 & 2) != 0)
      {
        __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
      }

      if (v294 + &v294 - &v289 == 1)
      {
        v113 = 0;
      }

      else
      {
        v113 = &v295[-1] + v294;
      }

      v114 = (&v288 - v113);
      if (v112 == 1)
      {
        v114 = 0;
      }

      *v113 = &v114[v112 + (*v113 & 2)];
      v115 = v294;
      v44 = v295[0];
      v116 = &v291 - &v289;
      if (v291 == 1)
      {
        v116 = 0;
      }

      v98 = v116 + v291;
      if (v294 != 1)
      {
        v117 = &v294 - &v288;
        goto LABEL_180;
      }
    }

    v117 = 0;
    v115 = 1;
LABEL_180:
    v118 = v117 + v115;
    v119 = &v289 + v98;
    if (v98 == 1)
    {
      v119 = 0;
    }

    v120 = (&v288 - (v119 + 8));
    if (v118 == 1)
    {
      v120 = 0;
    }

    *(v119 + 1) = &v120[v118];
    goto LABEL_185;
  }

  v36 = &v290 - &v291;
  if (v29 == 1)
  {
    v36 = 0;
  }

  v291 = v36 + v29;
  if (v20 == 1)
  {
    v37 = 1;
  }

  else
  {
    v56 = &v290 - &v288;
    if (v29 == 1)
    {
      v56 = 0;
    }

    v57 = v56 + v29;
    v288 = v57;
    v289 = v20 + &v294 - &v289;
    if ((v29 & 2) != 0)
    {
      __assert_rtn("set_pointer", "offset_ptr.hpp", 725, "0 == (get_bits)(p)");
    }

    v58 = &v295[-1] + v20;
    if (v20 + &v294 - &v289 == 1)
    {
      v58 = 0;
    }

    v59 = (&v288 - v58);
    if (v57 == 1)
    {
      v59 = 0;
    }

    *v58 = &v59[v57 + (*v58 & 2)];
    v37 = v294;
    v29 = v290;
    v7 = v286;
  }

  v60 = v34 == v12;
  v61 = &v286 - &v289;
  if (v7 == 1)
  {
    v61 = 0;
  }

  v289 = v61 + v7;
  v62 = &v294 - &v288;
  if (v37 == 1)
  {
    v62 = 0;
  }

  v288 = v62 + v37;
  v63 = &v290 - &v287;
  if (v29 == 1)
  {
    v63 = 0;
  }

  v287 = v63 + v29;
  result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::set_child(&v289, &v288, &v287, v60);
  v65 = v286;
  if (v286 == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = &v286 + v286;
  }

  v67 = *(v66 + 1);
  v68 = v66 + 8 - &v289;
  if (v67 == 1)
  {
    v68 = 0;
  }

  v69 = v68 + v67;
  if (v69 == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = &v289 + v69;
  }

  if (v285 == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = &v285 + v285;
  }

  if (v70 == v71)
  {
    if (v293 != 1)
    {
      v21 = "!z_left";
      v22 = 1567;
      goto LABEL_462;
    }

    v72 = &v286 - &v289;
    if (v286 == 1)
    {
      v72 = 0;
    }

    v73 = v72 + v286;
    v289 = v72 + v286;
    if (v292 == 1)
    {
      v74 = &v290 - &v288;
      if (v290 == 1)
      {
        v74 = 0;
      }

      v75 = v74 + v290;
    }

    else
    {
      v287 = &v292 - &v287 + v292;
      result = boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::minimum(&v288, &v287);
      v75 = v288;
    }

    v99 = &v289 + v73;
    if (v73 == 1)
    {
      v99 = 0;
    }

    v100 = (&v288 - (v99 + 8));
    if (v75 == 1)
    {
      v100 = 0;
    }

    *(v99 + 1) = &v100[v75];
  }

  v101 = *(v66 + 2);
  v102 = v66 + 16 - &v289;
  if (v101 == 1)
  {
    v102 = 0;
  }

  v103 = v102 + v101;
  if (v103 == 1)
  {
    v104 = 0;
  }

  else
  {
    v104 = &v289 + v103;
  }

  if (v104 == v71)
  {
    if (v292 == 1)
    {
      v105 = &v286 - &v289;
      if (v65 == 1)
      {
        v105 = 0;
      }

      v106 = v105 + v65;
      v289 = v106;
      if (v293 == 1)
      {
        v107 = &v290 - &v288;
        if (v290 == 1)
        {
          v107 = 0;
        }

        v108 = v107 + v290;
      }

      else
      {
        v287 = &v293 - &v287 + v293;
        result = boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::maximum(&v288, &v287);
        v108 = v288;
      }

      v109 = &v289 + v106;
      if (v106 == 1)
      {
        v109 = 0;
      }

      v110 = (&v288 - (v109 + 16));
      if (v108 == 1)
      {
        v110 = 0;
      }

      *(v109 + 2) = &v110[v108];
      goto LABEL_201;
    }

    v21 = "!z_right";
    v22 = 1574;
LABEL_462:
    __assert_rtn("erase", "bstree_algorithms.hpp", v22, v21);
  }

LABEL_201:
  v131 = &v294 - &v282;
  v132 = v295 - &v283;
  if (v295[0] == 1)
  {
    v132 = 0;
  }

  v133 = v132 + v295[0];
  if (v294 == 1)
  {
    v131 = 0;
  }

  v282.i64[0] = v131 + v294;
  v283 = v132 + v295[0];
  if (v294 != 1)
  {
    v134 = *(&v295[-1] + v294) & 0xFFFFFFFFFFFFFFFDLL;
    v135 = &v295[-1] + v294 - &v289;
    if (v134 == 1)
    {
      v135 = 0;
    }

    v136 = v135 + v134;
    v289 = v136;
    if (v136 == 1)
    {
      v137 = 0;
    }

    else
    {
      v137 = &v289 + v136;
    }

    v138 = &v291 + v291;
    if (v291 == 1)
    {
      v138 = 0;
    }

    if (v137 != v138)
    {
      v21 = "!x || NodeTraits::get_parent(x) == x_parent";
      v22 = 1587;
      goto LABEL_462;
    }
  }

  v139 = &v291 - &v282.u64[1];
  if (v291 == 1)
  {
    v139 = 0;
  }

  v282.i64[1] = v139 + v291;
  v140 = a2 - &v281;
  if (*a2 == 1)
  {
    v140 = 0;
  }

  v281 = v140 + *a2;
  v141 = v3 - &v280;
  if (*v3 == 1)
  {
    v141 = 0;
  }

  v142 = v141 + *v3;
  v280 = v142;
  v143 = (&v283 + v133);
  if (v133 == 1)
  {
    v143 = 0;
  }

  if (v142 == 1)
  {
    v144 = 0;
  }

  else
  {
    v144 = (&v280 + v142);
  }

  v145 = *v143;
  if (v143 != v144)
  {
    *v143 = v145 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*v144 >> 1) & 1));
  }

  if ((v145 & 2) == 0)
  {
    goto LABEL_447;
  }

  v274 = v3;
  v146 = &v281 - &v286;
  if (v281 == 1)
  {
    v146 = 0;
  }

  v147 = v146 + v281;
  v148 = &v282 - &v285;
  if (v282.i64[0] == 1)
  {
    v148 = 0;
  }

  v149 = v148 + v282.i64[0];
  v285 = v148 + v282.i64[0];
  v286 = v147;
  v150 = &v282.u64[1] - &v284;
  if (v282.i64[1] == 1)
  {
    v150 = 0;
  }

  v151 = v150 + v282.i64[1];
  v284 = v151;
  v152 = &v284 + v151;
  if (v151 == 1)
  {
    v152 = 0;
  }

  if (v147 == 1)
  {
    v153 = 0;
  }

  else
  {
    v153 = &v286 + v147;
  }

  v275 = a1;
  if (v152 == v153)
  {
    goto LABEL_444;
  }

  v279 = 8;
  v278 = &v284 - &v293;
  v277 = 16;
  v276 = &v286 - &v290;
  while (1)
  {
    if (v149 == 1)
    {
      v154 = 0;
    }

    else
    {
      v154 = &v285 + v149;
      if ((*(&v285 + v149) & 2) == 0)
      {
        goto LABEL_445;
      }
    }

    v155 = *(v152 + 1);
    v156 = v152 + 8 - v295;
    if (v155 == 1)
    {
      v156 = 0;
    }

    v157 = v156 + v155;
    v295[0] = v157;
    v158 = v295 + v157;
    if (v157 == 1)
    {
      v158 = 0;
    }

    if (v154 != v158)
    {
      break;
    }

    v159 = *(v152 + 2);
    v160 = v152 + 16 - &v294;
    if (v159 == 1)
    {
      v160 = 0;
    }

    v161 = v160 + v159;
    v294 = v161;
    if (v161 == 1)
    {
      v273 = 475;
      goto LABEL_453;
    }

    v162 = &v295[-1] + v161;
    if ((*v162 & 2) == 0)
    {
      *v162 |= 2uLL;
      if (v284 == 1)
      {
        v163 = 0;
      }

      else
      {
        v163 = (&v284 + v284);
      }

      *v163 &= ~2uLL;
      v164 = v277;
      v165 = v278;
      if (v294 == 1)
      {
        v164 = 0;
      }

      if (v284 == 1)
      {
        v165 = 0;
      }

      v292 = v164 + v294;
      v293 = v165 + v284;
      v166 = &v284 + v284;
      if (v284 == 1)
      {
        v166 = 0;
      }

      v167 = *v166 & 0xFFFFFFFFFFFFFFFDLL;
      v168 = v166 - &v291;
      if (v167 == 1)
      {
        v168 = 0;
      }

      v291 = v168 + v167;
      v169 = v276;
      if (v286 == 1)
      {
        v169 = 0;
      }

      v290 = v169 + v286;
      result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left(&v293, &v292, &v291, &v290);
      v151 = v284;
      v170 = &v284 + v284;
      if (v284 == 1)
      {
        v170 = 0;
      }

      v171 = *(v170 + 2);
      v172 = v170 + 16 - &v293;
      if (v171 == 1)
      {
        v172 = 0;
      }

      v173 = v172 + v171;
      if (v173 == 1)
      {
        v174 = 0;
      }

      else
      {
        v174 = -8;
      }

      v175 = v174 + v173;
      v294 = v175;
      if (v175 == 1)
      {
        v273 = 481;
        goto LABEL_453;
      }

      v162 = &v295[-1] + v175;
    }

    v176 = *(v162 + 1);
    v177 = v162 + 8 - &v293;
    if (v176 == 1)
    {
      v177 = 0;
    }

    v178 = v177 + v176;
    v179 = *(v162 + 2);
    v180 = v162 + 16 - &v292;
    if (v179 == 1)
    {
      v180 = 0;
    }

    v181 = v180 + v179;
    v292 = v180 + v179;
    v293 = v178;
    v182 = v178 == 1;
    if (v178 != 1)
    {
      v183 = (&v293 + v178);
      v184 = *(&v293 + v178);
      if ((v184 & 2) == 0)
      {
        if (v181 != 1)
        {
          v182 = 0;
          v185 = *(&v292 + v181);
LABEL_343:
          if ((v185 & 2) == 0)
          {
            v219 = &v284 + v151;
LABEL_420:
            if (v151 == 1)
            {
              v259 = 0;
            }

            else
            {
              v259 = v219;
            }

            *v162 = *v162 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*v259 >> 1) & 1));
            if (v284 == 1)
            {
              v260 = 0;
            }

            else
            {
              v260 = (&v284 + v284);
            }

            *v260 |= 2uLL;
            v261 = &v295[-1] + v294;
            if (v294 == 1)
            {
              v261 = 0;
            }

            v262 = *(v261 + 2);
            v263 = v261 + 16 - &v291;
            if (v262 == 1)
            {
              v263 = 0;
            }

            v264 = v263 + v262;
            v291 = v264;
            if (v264 != 1)
            {
              *(&v291 + v264) |= 2uLL;
            }

            v265 = &v284 - &v290;
            if (v284 == 1)
            {
              v265 = 0;
            }

            v290 = v265 + v284;
            v266 = &v284 + v284;
            if (v284 == 1)
            {
              v266 = 0;
            }

            v267 = *(v266 + 2);
            v268 = v266 + 16 - &v289;
            if (v267 == 1)
            {
              v268 = 0;
            }

            v289 = v268 + v267;
            v269 = *v266 & 0xFFFFFFFFFFFFFFFDLL;
            v270 = v266 - &v288;
            if (v269 == 1)
            {
              v270 = 0;
            }

            v288 = v270 + v269;
            v271 = &v286 - &v287;
            if (v286 == 1)
            {
              v271 = 0;
            }

            v287 = v271 + v286;
            result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left(&v290, &v289, &v288, &v287);
            goto LABEL_443;
          }

          if (v182)
          {
            v183 = 0;
          }

          else
          {
            v183 = (&v293 + v178);
          }

          v184 = *v183;
        }

        *v183 = v184 | 2;
        if (v294 == 1)
        {
          v246 = 0;
        }

        else
        {
          v246 = (&v295[-1] + v294);
        }

        *v246 &= ~2uLL;
        v247 = 24;
        v248 = &v293 - &v290;
        if (v293 == 1)
        {
          v248 = 0;
        }

        if (v294 == 1)
        {
          v247 = 0;
        }

        v291 = v247 + v294;
        v290 = v248 + v293;
        v249 = &v295[-1] + v294;
        if (v294 == 1)
        {
          v249 = 0;
        }

        v250 = *v249 & 0xFFFFFFFFFFFFFFFDLL;
        v251 = v249 - &v289;
        if (v250 == 1)
        {
          v251 = 0;
        }

        v289 = v251 + v250;
        v252 = &v286 - &v288;
        if (v286 == 1)
        {
          v252 = 0;
        }

        v288 = v252 + v286;
        boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right(&v291, &v290, &v289, &v288);
        v151 = v284;
        v219 = &v284 + v284;
        if (v284 == 1)
        {
          v253 = 0;
        }

        else
        {
          v253 = &v284 + v284;
        }

        v254 = *(v253 + 2);
        v255 = v253 + 16 - &v291;
        if (v254 == 1)
        {
          v255 = 0;
        }

        v256 = v255 + v254;
        v257 = &v291 - &v294;
        if (v256 == 1)
        {
          v257 = 0;
        }

        v258 = v257 + v256;
        v294 = v258;
        if (v258 != 1)
        {
          v162 = &v295[-1] + v258;
          goto LABEL_420;
        }

        v273 = 497;
LABEL_453:
        __assert_rtn("rebalance_after_erasure_restore_invariants", "rbtree_algorithms.hpp", v273, "w");
      }
    }

    if (v181 != 1)
    {
      v185 = *(&v292 + v181);
      if ((v185 & 2) == 0)
      {
        goto LABEL_343;
      }
    }

LABEL_320:
    *v162 &= ~2uLL;
    if (v284 == 1)
    {
      v211 = 0;
    }

    else
    {
      v211 = &v284 - &v285;
    }

    v149 = v211 + v284;
    v285 = v149;
    v212 = &v284 + v284;
    if (v284 == 1)
    {
      v212 = 0;
    }

    v213 = *v212 & 0xFFFFFFFFFFFFFFFDLL;
    v214 = v212 - &v291;
    if (v213 == 1)
    {
      v214 = 0;
    }

    v215 = v214 + v213;
    if (v215 == 1)
    {
      v216 = 0;
    }

    else
    {
      v216 = &v291 - &v284;
    }

    v151 = v216 + v215;
    v284 = v151;
    v152 = &v284 + v151;
    if (v151 == 1)
    {
      v152 = 0;
    }

    if (v286 == 1)
    {
      v217 = 0;
    }

    else
    {
      v217 = &v286 + v286;
    }

    if (v152 == v217)
    {
      goto LABEL_444;
    }
  }

  v186 = v279;
  if (v157 == 1)
  {
    v186 = 0;
  }

  v187 = v186 + v157;
  v294 = v187;
  if (v187 == 1)
  {
    v162 = 0;
  }

  else
  {
    v162 = &v295[-1] + v187;
  }

  if ((*v162 & 2) == 0)
  {
    *v162 |= 2uLL;
    if (v284 == 1)
    {
      v188 = 0;
    }

    else
    {
      v188 = (&v284 + v284);
    }

    *v188 &= ~2uLL;
    v189 = v277;
    v190 = v278;
    if (v294 == 1)
    {
      v189 = 0;
    }

    if (v284 == 1)
    {
      v190 = 0;
    }

    v292 = v189 + v294;
    v293 = v190 + v284;
    v191 = &v284 + v284;
    if (v284 == 1)
    {
      v191 = 0;
    }

    v192 = *v191 & 0xFFFFFFFFFFFFFFFDLL;
    v193 = v191 - &v291;
    if (v192 == 1)
    {
      v193 = 0;
    }

    v291 = v193 + v192;
    v194 = v276;
    if (v286 == 1)
    {
      v194 = 0;
    }

    v290 = v194 + v286;
    result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right(&v293, &v292, &v291, &v290);
    v151 = v284;
    v195 = &v284 + v284;
    if (v284 == 1)
    {
      v195 = 0;
    }

    v196 = *(v195 + 1);
    v197 = v195 + 8 - &v293;
    if (v196 == 1)
    {
      v197 = 0;
    }

    v198 = v197 + v196;
    if (v198 == 1)
    {
      v199 = 0;
    }

    else
    {
      v199 = -8;
    }

    v200 = v199 + v198;
    v294 = v200;
    if (v200 == 1)
    {
      v273 = 516;
      goto LABEL_453;
    }

    v162 = &v295[-1] + v200;
  }

  v201 = *(v162 + 1);
  v202 = v162 + 8 - &v293;
  if (v201 == 1)
  {
    v202 = 0;
  }

  v203 = v202 + v201;
  v204 = *(v162 + 2);
  v205 = v162 + 16 - &v292;
  if (v204 == 1)
  {
    v205 = 0;
  }

  v206 = v205 + v204;
  v292 = v206;
  v293 = v203;
  v207 = v206 == 1;
  if (v206 == 1 || (v208 = (&v292 + v206), v209 = *(&v292 + v206), (v209 & 2) != 0))
  {
    if (v203 != 1)
    {
      v210 = *(&v293 + v203);
      if ((v210 & 2) == 0)
      {
        goto LABEL_339;
      }
    }

    goto LABEL_320;
  }

  if (v203 != 1)
  {
    v207 = 0;
    v210 = *(&v293 + v203);
LABEL_339:
    if ((v210 & 2) == 0)
    {
      v218 = &v284 + v151;
      goto LABEL_371;
    }

    if (v207)
    {
      v208 = 0;
    }

    else
    {
      v208 = (&v292 + v206);
    }

    v209 = *v208;
  }

  *v208 = v209 | 2;
  if (v294 == 1)
  {
    v220 = 0;
  }

  else
  {
    v220 = (&v295[-1] + v294);
  }

  *v220 &= ~2uLL;
  v221 = 24;
  v222 = &v292 - &v290;
  if (v292 == 1)
  {
    v222 = 0;
  }

  if (v294 == 1)
  {
    v221 = 0;
  }

  v291 = v221 + v294;
  v290 = v222 + v292;
  v223 = &v295[-1] + v294;
  if (v294 == 1)
  {
    v223 = 0;
  }

  v224 = *v223 & 0xFFFFFFFFFFFFFFFDLL;
  v225 = v223 - &v289;
  if (v224 == 1)
  {
    v225 = 0;
  }

  v289 = v225 + v224;
  v226 = &v286 - &v288;
  if (v286 == 1)
  {
    v226 = 0;
  }

  v288 = v226 + v286;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_left(&v291, &v290, &v289, &v288);
  v151 = v284;
  v218 = &v284 + v284;
  if (v284 == 1)
  {
    v227 = 0;
  }

  else
  {
    v227 = &v284 + v284;
  }

  v228 = *(v227 + 1);
  v229 = v227 + 8 - &v291;
  if (v228 == 1)
  {
    v229 = 0;
  }

  v230 = v229 + v228;
  v231 = &v291 - &v294;
  if (v230 == 1)
  {
    v231 = 0;
  }

  v232 = v231 + v230;
  v294 = v232;
  if (v232 == 1)
  {
    v273 = 532;
    goto LABEL_453;
  }

  v162 = &v295[-1] + v232;
LABEL_371:
  if (v151 == 1)
  {
    v233 = 0;
  }

  else
  {
    v233 = v218;
  }

  *v162 = *v162 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*v233 >> 1) & 1));
  if (v284 == 1)
  {
    v234 = 0;
  }

  else
  {
    v234 = (&v284 + v284);
  }

  *v234 |= 2uLL;
  v235 = &v295[-1] + v294;
  if (v294 == 1)
  {
    v235 = 0;
  }

  v236 = *(v235 + 1);
  v237 = v235 + 8 - &v291;
  if (v236 == 1)
  {
    v237 = 0;
  }

  v238 = v237 + v236;
  v291 = v238;
  if (v238 != 1)
  {
    *(&v291 + v238) |= 2uLL;
  }

  v239 = &v284 - &v290;
  if (v284 == 1)
  {
    v239 = 0;
  }

  v290 = v239 + v284;
  v240 = &v284 + v284;
  if (v284 == 1)
  {
    v240 = 0;
  }

  v241 = *(v240 + 1);
  v242 = v240 + 8 - &v289;
  if (v241 == 1)
  {
    v242 = 0;
  }

  v289 = v242 + v241;
  v243 = *v240 & 0xFFFFFFFFFFFFFFFDLL;
  v244 = v240 - &v288;
  if (v243 == 1)
  {
    v244 = 0;
  }

  v288 = v244 + v243;
  v245 = &v286 - &v287;
  if (v286 == 1)
  {
    v245 = 0;
  }

  v287 = v245 + v286;
  result = boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rotate_right(&v290, &v289, &v288, &v287);
LABEL_443:
  v149 = v285;
LABEL_444:
  if (v149 != 1)
  {
LABEL_445:
    *(&v285 + v149) |= 2uLL;
  }

  v3 = v274;
  a1 = v275;
LABEL_447:
  v272 = v3 - a1;
  if (*v3 == 1)
  {
    v272 = 0;
  }

  *a1 = v272 + *v3;
  return result;
}

uint64_t boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *(a1 + 24);
    v3 = a1 + 24 - &v5;
    if (v2 == 1)
    {
      v3 = 0;
    }

    v5 = v3 + v2;
    boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate(a1, &v5, *(a1 + 16));
  }

  return a1;
}

char *boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate(char *result, void *a2, unint64_t a3)
{
  if (a3 >= 0x18)
  {
    v4 = *a2 == 1;
    v3 = a2 + *a2;
    v4 = v4 || v3 == 0;
    if (!v4)
    {
      if (*result == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = &result[*result];
      }

      return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v5, v3);
    }
  }

  return result;
}

void boost::interprocess::ipcdetail::placement_destroy<boost::container::vector<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>>::destroy_n(uint64_t a1, void *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    do
    {
      v7 = (a2 + 1);
      v8 = a2[2];
      if (v8)
      {
        if (*v7 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = &v7[*v7];
        }

        v10 = v9 - &v17;
        do
        {
          if (v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = 1;
          }

          v17 = v11;
          boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v17);
          v9 += 32;
          v10 += 32;
          --v8;
        }

        while (v8);
      }

      if (a2[3])
      {
        v12 = v7 - &v17;
        if (*v7 == 1)
        {
          v12 = 0;
        }

        v17 = v12 + *v7;
        v13 = &v17 + v17;
        if (v17 != 1 && v13 != 0)
        {
          if (*a2 == 1)
          {
            v15 = 0;
          }

          else
          {
            v15 = a2 + *a2;
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v15, v13);
        }
      }

      a2 += 4;
      v16 = *a4 + 1;
      *a4 = v16;
    }

    while (v16 < a3);
  }
}

char *boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(char *result)
{
  if (*result == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = &result[*result];
  }

  if (!v1)
  {
    __assert_rtn("destroy", "allocator.hpp", 269, "ptr != 0");
  }

  if (*(v1 + 3))
  {
    v2 = *(v1 + 1);
    v3 = v1 - &v9;
    if (v2 == 1)
    {
      v3 = 0;
    }

    v10 = v3 + v2;
    v4 = &v10 + v3 + v2;
    if (v3 + v2 != 1 && v4 != 0)
    {
      v6 = *v1;
      v7 = &v1[*v1];
      if (v6 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v8, v4);
    }
  }

  return result;
}

void boost::interprocess::ipcdetail::placement_destroy<boost::container::vector<double,boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>>::destroy_n(uint64_t a1, void *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      if (v6[3])
      {
        v9 = v6[1];
        v10 = v8 - &v14;
        if (v9 == 1)
        {
          v10 = 0;
        }

        v15 = v10 + v9;
        v11 = &v15 + v10 + v9;
        if (v10 + v9 != 1 && v11 != 0)
        {
          if (*v6 == 1)
          {
            v13 = 0;
          }

          else
          {
            v13 = &v8[*v6];
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v13, v11);
          v7 = *a4;
        }
      }

      v6 += 4;
      *a4 = ++v7;
      v8 += 32;
    }

    while (v7 < a3);
  }
}

void boost::interprocess::mapped_region::~mapped_region(boost::interprocess::mapped_region *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 28) == 1)
    {
      if (shmdt(v2))
      {
        __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
      }
    }

    else
    {
      munmap(&v2[-*(this + 2)], *(this + 1) + *(this + 2));
      *this = 0;
    }
  }
}

void boost::interprocess::ipcdetail::file_wrapper::~file_wrapper(boost::interprocess::ipcdetail::file_wrapper *this)
{
  v2 = *this;
  if (v2 != -1)
  {
    close(v2);
    *this = -1;
  }
}

void boost::interprocess::spin_wait::yield(boost::interprocess::spin_wait *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    {
      v9 = sysconf(58);
      if (v9 > 0xFFFFFFFE)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      if (v9 < 1)
      {
        v10 = 1;
      }

      boost::interprocess::spin_wait::init_limits(void)::num_cores = v10;
    }

    v2 = 32 * (boost::interprocess::spin_wait::init_limits(void)::num_cores < 2);
    *(this + 4) = v2;
  }

  if (v2 >= 8)
  {
    if (v2 == 32)
    {
      mach_timebase_info(&v11);
      v3 = sysconf(3);
      v6 = 100;
      if (v3 >= 1)
      {
        v6 = v3;
      }

      LODWORD(v5) = HIDWORD(v11.tv_sec);
      LODWORD(v4) = v11.tv_sec;
      *(this + 1) = ((0x3B9AC9FF / v6 + 1) / (v4 / v5));
      *this = mach_absolute_time();
      goto LABEL_17;
    }

    if (*(this + 1))
    {
      if (mach_absolute_time() - *this >= *(this + 1))
      {
        *(this + 1) = 0;
LABEL_13:
        v11.tv_sec = 0;
        v7 = sysconf(3);
        v8 = 100;
        if (v7 >= 1)
        {
          v8 = v7;
        }

        v11.tv_nsec = (0x3B9AC9FF / v8 + 1) >> 1;
        nanosleep(&v11, 0);
        goto LABEL_17;
      }
    }

    else if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    sched_yield();
  }

LABEL_17:
  ++*(this + 4);
}

uint64_t boost::interprocess::mapped_region::mapped_region<boost::interprocess::ipcdetail::file_wrapper>(uint64_t a1, int *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 28) = 0;
  v6 = *a2;
  {
    sysconf(29);
  }

  if (fstat(v6, &v19))
  {
    v10 = *__error();
    LODWORD(v20) = v10;
    v11 = &boost::interprocess::ec_table;
    v12 = 128;
    while (*v11 != v10)
    {
      v11 += 2;
      v12 -= 8;
      if (!v12)
      {
        v13 = 1;
        goto LABEL_20;
      }
    }

    v13 = v11[1];
LABEL_20:
    HIDWORD(v20) = v13;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v20);
LABEL_23:
  }

  st_size = v19.st_size;
  if (v19.st_size < 0)
  {
    v20 = 0x1200000000;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v20);
    goto LABEL_23;
  }

  if (((0x1Du >> a3) & 1) == 0)
  {
    *&v19.st_dev = 0x1100000000;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v19);
    goto LABEL_23;
  }

  v8 = mmap(0, v19.st_size, dword_1B36A1FBC[a3], dword_1B36A1FA8[a3], *a2, 0);
  if (v8 == -1)
  {
    v15 = *__error();
    v19.st_dev = v15;
    v16 = &boost::interprocess::ec_table;
    v17 = 128;
    while (*v16 != v15)
    {
      v16 += 2;
      v17 -= 8;
      if (!v17)
      {
        v18 = 1;
        goto LABEL_22;
      }
    }

    v18 = v16[1];
LABEL_22:
    *&v19.st_mode = v18;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v19);
    goto LABEL_23;
  }

  *(a1 + 8) = st_size;
  *(a1 + 16) = 0;
  *a1 = v8;
  return a1;
}

uint64_t boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::truncate_device<true>(int a1, off_t a2)
{
  result = ftruncate(a1, a2);
  if (result)
  {
    v3 = *__error();
    v8[0] = v3;
    v4 = &boost::interprocess::ec_table;
    v5 = 128;
    while (*v4 != v3)
    {
      v4 += 2;
      v5 -= 8;
      if (!v5)
      {
        v6 = 1;
        goto LABEL_7;
      }
    }

    v6 = v4[1];
LABEL_7:
    v8[1] = v6;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, v8);
  }

  return result;
}

uint64_t boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::segment_manager(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = vdupq_n_s64(1uLL);
  *(a1 + 24) = 1;
  v2 = a1 + 8 - &v45;
  v45 = v2;
  v3 = &v45 - &v46;
  if (v2 == 1)
  {
    v3 = 0;
  }

  v4 = v3 + v2;
  v46 = v4;
  v5 = &v46 - v48;
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = &v46 - v48;
  }

  v7 = v6 + v4;
  v48[0] = v7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v48 + v7);
  }

  *v8 = *v8 & 2 | 1;
  v9 = &v46 - &v47;
  if (v46 == 1)
  {
    v9 = 0;
    v5 = 0;
  }

  v10 = v5 + v46;
  v11 = v9 + v46;
  v12 = v48 + v10;
  if (v10 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v48 + v10;
  }

  v14 = (&v47 - (v13 + 8));
  if (v11 == 1)
  {
    v14 = 0;
  }

  *(v13 + 1) = &v14[v11];
  if (v10 == 1)
  {
    v12 = 0;
  }

  v15 = (&v47 - (v12 + 16));
  if (v11 == 1)
  {
    v15 = 0;
  }

  *(v12 + 2) = &v15[v11];
  v16 = (&v45 + v45);
  if (v45 == 1)
  {
    v16 = 0;
  }

  *v16 &= ~2uLL;
  *a1 = 0;
  *(a1 + 48) = a2;
  *(a1 + 32) = xmmword_1B36A1D90;
  v17 = (a1 + 119) & 0xFFFFFFFFFFFFFFF8;
  v18 = a2 + a1 - v17 - 8;
  if (v18 <= 0x37)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 385, "segment_size >= (BlockCtrlBytes + EndCtrlBlockBytes)");
  }

  v19 = (v17 + 8);
  v20 = (v17 + 8);
  v20[1] = vdupq_n_s64(1uLL);
  v21 = v20 + 1;
  v21[1].i64[0] = 1;
  v22 = (v18 >> 3) + 0x3FFFFFFFFFFFFFFELL;
  v21[-1].i64[1] = v22 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v22 & 0x3FFFFFFFFFFFFFFFuLL) <= 4)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 390, "first_big_block->m_size >= BlockCtrlUnits");
  }

  v23 = 8 * v22;
  v24 = &v19[v22];
  v24[1] &= ~0x4000000000000000uLL;
  *v24 = v19[1] & 0x3FFFFFFFFFFFFFFFLL;
  v24[1] = v24[1] & 0xC000000000000000 | v22 & 0x1FFFFFFFFFFFFFFFLL;
  *v19 = v22 & 0x1FFFFFFFFFFFFFFFLL;
  v24[1] |= 0x8000000000000000;
  v25 = v19[1];
  v19[1] = v25 | 0x4000000000000000;
  if (v23 != 8 * v25)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 408, "priv_next_block(first_big_block) == end_block");
  }

  if ((*(v24 + 15) & 0x40) != 0)
  {
    __assert_rtn("priv_prev_block", "rbtree_best_fit.hpp", 1138, "!ptr->m_prev_allocated");
  }

  if (&v24[-*v24] != v19)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 409, "priv_prev_block(end_block) == first_big_block");
  }

  v27 = (a1 + *(a1 + 32) + 55) & 0xFFFFFFFFFFFFFFF8;
  if ((v27 + 8) != v19)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 410, "priv_first_block() == first_big_block");
  }

  if ((v27 + 8 + ((*(a1 + 48) - (v27 - a1 + 8)) & 0xFFFFFFFFFFFFFFF8) - 16) != v24)
  {
    __assert_rtn("priv_add_segment", "rbtree_best_fit.hpp", 411, "priv_end_block() == end_block");
  }

  v28 = a1 + 8 - &v42;
  v42 = v28;
  v43 = v21 - &v43;
  v29 = v21 - &v41;
  v41 = v29;
  v30 = &v42 - &v45;
  if (v28 == 1)
  {
    v30 = 0;
  }

  v31 = v30 + v28;
  v32 = &v41 - &v44;
  if (v29 == 1)
  {
    v32 = 0;
  }

  v33 = v32 + v29;
  v44 = v33;
  v45 = v31;
  LOBYTE(v48[0]) = 0;
  v48[1] = 1;
  if (v31 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = &v45 - &v47;
  }

  v47 = v34 + v31;
  if (v33 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = &v44 - &v46;
  }

  v46 = v35 + v33;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_equal_upper_bound_check<boost::intrusive::detail::key_nodeptr_comp<std::less<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>,boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,boost::move_detail::identity<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl>>>(&v47, &v46, v48);
  if (v45 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = &v45 - &v47;
  }

  v47 = v36 + v45;
  if (v44 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = &v44 - &v46;
  }

  v46 = v37 + v44;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_commit(&v47, &v46, v48);
  v38 = &v42 - v48;
  if (v42 == 1)
  {
    v38 = 0;
  }

  v48[0] = v38 + v42;
  v39 = &v41 - &v47;
  if (v41 == 1)
  {
    v39 = 0;
  }

  v47 = v39 + v41;
  boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rebalance_after_insertion(v48, &v47);
  ++*a1;
  boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::iset_index(a1 + 56);
  boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::iset_index(a1 + 88);
  if ((a1 & 7) != 0)
  {
    __assert_rtn("segment_manager", "segment_manager.hpp", 442, "(0 == (std::size_t)this_addr % boost::move_detail::alignment_of<segment_manager>::value)");
  }

  return a1;
}

void sub_1B35E8E4C(_Unwind_Exception *a1)
{
  boost::intrusive::bstbase<boost::intrusive::bhtraits<boost::interprocess::ipcdetail::intrusive_value_type_impl<boost::intrusive::generic_hook<(boost::intrusive::algo_types)5,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,boost::intrusive::dft_tag,(boost::intrusive::link_mode_type)1,(boost::intrusive::base_hook_type)3>,char,unsigned long>,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)1,boost::intrusive::dft_tag,3u>,void,void,true,unsigned long,(boost::intrusive::algo_types)5,void>::~bstbase(v2);
  boost::intrusive::bstbase<boost::intrusive::bhtraits<boost::interprocess::ipcdetail::intrusive_value_type_impl<boost::intrusive::generic_hook<(boost::intrusive::algo_types)5,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,boost::intrusive::dft_tag,(boost::intrusive::link_mode_type)1,(boost::intrusive::base_hook_type)3>,char,unsigned long>,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)1,boost::intrusive::dft_tag,3u>,void,void,true,unsigned long,(boost::intrusive::algo_types)5,void>::~bstbase(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::intrusive::bstbase<boost::intrusive::bhtraits<boost::interprocess::ipcdetail::intrusive_value_type_impl<boost::intrusive::generic_hook<(boost::intrusive::algo_types)5,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,boost::intrusive::dft_tag,(boost::intrusive::link_mode_type)1,(boost::intrusive::base_hook_type)3>,char,unsigned long>,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)1,boost::intrusive::dft_tag,3u>,void,void,true,unsigned long,(boost::intrusive::algo_types)5,void>::~bstbase(uint64_t result)
{
  v1 = result + 8 - &v56;
  v56 = v1;
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = (result + 8);
  }

  v3 = *v2 & 0xFFFFFFFFFFFFFFFDLL;
  v4 = v2 - &v58;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v58 = v5;
  if (v5 != 1)
  {
    v6 = &v58 - &v57 + v5;
    v57 = v6;
    if (v6 != 1)
    {
      do
      {
        v7 = &v57 + v6;
        v8 = *(&v57 + v6 + 8);
        v9 = &v57 + v6 + 8 - &v59;
        if (v8 == 1)
        {
          v9 = 0;
        }

        v10 = v9 + v8;
        if (v10 == 1)
        {
          v11 = *(v7 + 2);
          v12 = v7 + 16 - &v61;
          if (v11 == 1)
          {
            v12 = 0;
          }

          v13 = v12 + v11;
          if (v13 == 1)
          {
            v14 = 0;
          }

          else
          {
            v14 = &v61 - &v59;
          }

          v15 = v6 + &v57 - &v60;
          v59 = v14 + v13;
          v60 = v15;
          if (v15 == 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = &v60 - &v61;
          }

          v17 = v16 + v15;
          v61 = v17;
          if (v17 == 1)
          {
            v18 = 0;
          }

          else
          {
            v18 = (&v61 + v17);
          }

          *v18 = *v18 & 2 | 1;
          if (v60 == 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = &v60 - &v61;
          }

          if (v19 + v60 == 1)
          {
            v20 = 0;
          }

          else
          {
            v20 = &v61 + v19 + v60;
          }

          *(v20 + 1) = 1;
          *(v20 + 2) = 1;
          if (v57 == 1)
          {
            v21 = 0;
          }

          else
          {
            v21 = &v57 - &v60;
          }

          v22 = v21 + v57;
          v60 = v21 + v57;
          if (v21 + v57 == 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = &v60 - &v61;
          }

          v24 = v23 + v22;
          v61 = v24;
          if (v24 == 1)
          {
            v25 = 0;
          }

          else
          {
            v25 = (&v61 + v24);
          }

          *v25 = *v25 & 2 | 1;
          if (v60 == 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = &v60 - &v61;
          }

          if (v26 + v60 == 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = &v61 + v26 + v60;
          }

          *(v27 + 1) = 1;
          *(v27 + 2) = 1;
          if (v57 == 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = &v57 + v57;
          }

          v61 = v28 - &v61;
          if (v28 - &v61 == 1)
          {
            __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
          }

          v10 = v59;
        }

        else
        {
          v29 = *(&v59 + v10 + 16);
          v30 = &v59 + v10 + 16 - &v60;
          if (v29 == 1)
          {
            v30 = 0;
          }

          v31 = v30 + v29;
          if (v6 + &v57 - &v61 == 1)
          {
            v7 = 0;
          }

          v32 = (&v60 - (v7 + 8));
          if (v31 == 1)
          {
            v32 = 0;
          }

          *(v7 + 1) = &v32[v31];
          v33 = &v57 - &v60 + v6;
          if (v10 + &v59 - &v61 == 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = &v59 + v10;
          }

          v35 = (&v60 - (v34 + 16));
          if (v33 == 1)
          {
            v35 = 0;
          }

          *(v34 + 2) = &v35[v33];
        }

        if (v10 == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = &v59 - &v57;
        }

        v6 = v36 + v10;
        v57 = v6;
      }

      while (v6 != 1);
      v1 = v56;
    }

    v37 = -24;
    if (v1 == 1)
    {
      v37 = 0;
    }

    v38 = v37 + v1;
    v59 = v38;
    v39 = &v59 - &v61;
    if (v38 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = &v59 - &v61;
    }

    v41 = v40 + v38;
    v61 = v41;
    if (v41 == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = (&v61 + v41);
    }

    *v42 = *v42 & 2 | 1;
    v43 = &v59 - &v60;
    if (v59 == 1)
    {
      v43 = 0;
      v39 = 0;
    }

    v44 = v39 + v59;
    v45 = v43 + v59;
    v46 = &v61 + v44;
    if (v44 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = &v61 + v44;
    }

    v48 = (&v60 - (v47 + 8));
    if (v45 == 1)
    {
      v48 = 0;
    }

    *(v47 + 1) = &v48[v45];
    if (v44 == 1)
    {
      v46 = 0;
    }

    v49 = (&v60 - (v46 + 16));
    if (v45 == 1)
    {
      v49 = 0;
    }

    *(v46 + 2) = &v49[v45];
  }

  v50 = result + 8 - &v60;
  v60 = v50;
  v51 = &v60 - &v61;
  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = &v60 - &v61;
  }

  v53 = v52 + v50;
  v61 = v53;
  if (v53 == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = (&v61 + v53);
  }

  *v54 = *v54 & 2 | 1;
  if (v60 == 1)
  {
    v51 = 0;
  }

  if (v51 + v60 == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = &v61 + v51 + v60;
  }

  *(v55 + 1) = 1;
  *(v55 + 2) = 1;
  return result;
}

uint64_t boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::iset_index(uint64_t result)
{
  *(result + 8) = vdupq_n_s64(1uLL);
  *(result + 24) = 1;
  v1 = result + 8 - &v16;
  v16 = v1;
  v2 = &v16 - &v17;
  if (v1 == 1)
  {
    v2 = 0;
  }

  v3 = v2 + v1;
  v17 = v3;
  v4 = &v17 - &v19;
  if (v3 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = &v17 - &v19;
  }

  v6 = v5 + v3;
  v19 = v6;
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&v19 + v6);
  }

  *v7 = *v7 & 2 | 1;
  v8 = &v17 - v18;
  if (v17 == 1)
  {
    v8 = 0;
    v4 = 0;
  }

  v9 = v4 + v17;
  v10 = v8 + v17;
  v11 = &v19 + v9;
  if (v9 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = &v19 + v9;
  }

  v13 = (v18 - (v12 + 8));
  if (v10 == 1)
  {
    v13 = 0;
  }

  *(v12 + 1) = &v13[v10];
  if (v9 == 1)
  {
    v11 = 0;
  }

  v14 = (v18 - (v11 + 16));
  if (v10 == 1)
  {
    v14 = 0;
  }

  *(v11 + 2) = &v14[v10];
  v15 = (&v16 + v16);
  if (v16 == 1)
  {
    v15 = 0;
  }

  *v15 &= ~2uLL;
  *result = 0;
  return result;
}

void sub_1B35E9620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(va1);
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory(va);

  _Unwind_Resume(a1);
}

void boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_heap_memory(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

uint64_t boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(uint64_t a1, char *__s, void *a3)
{
  if (*a3 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3 + *a3;
  }

  if (v5)
  {
    v6 = &v5[-a1];
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = 1;
  v7 = a1 + 9;
  v8 = a1 + 9 - &v92;
  v9 = &v92 - &v90;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  v11 = &v90 - &v91;
  if (v10 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + v10;
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = &v91 + v12;
  }

  if (v13)
  {
    v14 = v13 - &v92;
  }

  else
  {
    v14 = 1;
  }

  v15 = &v92 + v14;
  if (v14 == 1)
  {
    v15 = 0;
  }

  *v15 = 0;
  v16 = strlen(__s);
  if (*a1 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1 + a1;
  }

  v19 = *(v18 + 48);
  if (v19 - 1 < v16)
  {
    boost::container::throw_length_error("basic_string::reserve max_size() exceeded", v17);
  }

  v20 = v16;
  v21 = *(a1 + 8);
  if (v21)
  {
    if (v16 < 0x17)
    {
      goto LABEL_110;
    }

    v26 = v21 >> 1;
    if (v21 >> 1 <= v16)
    {
      v26 = v16;
    }

    v24 = v26 + 1;
    v22 = 23;
    v25 = 46;
  }

  else
  {
    v22 = *(a1 + 16);
    if (v22 - 1 >= v16)
    {
      goto LABEL_110;
    }

    v23 = *(a1 + 8) >> 1;
    if (v23 <= v16)
    {
      v23 = v16;
    }

    v24 = v23 + 1;
    if (v22 < 0)
    {
      v25 = -1;
    }

    else
    {
      v25 = 2 * v22;
    }
  }

  v27 = v24 + v22;
  if (v25 < v19)
  {
    v19 = v25;
  }

  if (v27 <= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = v27;
  }

  v88 = 1;
  v89 = v28;
  boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v87, a1, 1, v24, &v89, &v88);
  v29 = *(a1 + 8);
  if (v29)
  {
    v32 = v7 - &v86;
  }

  else
  {
    v30 = *(a1 + 24);
    v31 = a1 - &v83;
    if (v30 == 1)
    {
      v31 = 0;
    }

    v32 = v31 + v30;
  }

  v33 = &v86 - &v85;
  v34 = &v86 - &v92;
  if (v32 == 1)
  {
    v33 = 0;
  }

  v35 = v33 + v32;
  v85 = v33 + v32;
  v86 = v32;
  if (v32 == 1)
  {
    v34 = 0;
  }

  v36 = v34 + v32;
  if ((v29 & 1) == 0)
  {
    v29 = *(a1 + 8);
  }

  v37 = (v29 >> 1) + v36;
  v38 = &v92 - &v84;
  if (v37 == 1)
  {
    v38 = 0;
  }

  v39 = v38 + v37;
  v40 = v87;
  v41 = &v87 - &v83;
  if (v87 == 1)
  {
    v41 = 0;
  }

  v42 = v41 + v87;
  v83 = v41 + v87;
  v84 = v39;
  v43 = &v83 - &v91;
  if (v41 + v87 == 1)
  {
    v43 = 0;
  }

  v91 = v43 + v42;
  v44 = &v85 + v35;
  if (v35 == 1)
  {
    v44 = 0;
  }

  v45 = &v84 + v39;
  if (v39 == 1)
  {
    v45 = 0;
  }

  if (v44 == v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = 0;
    do
    {
      if (v42 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = &v83 - &v90;
      }

      v48 = v47 + v42;
      v90 = v48;
      if (v48 == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = &v90 + v48;
      }

      if (v49)
      {
        v50 = v49 - &v92;
      }

      else
      {
        v50 = 1;
      }

      if (v50 == 1)
      {
        v51 = 0;
      }

      else
      {
        v51 = &v92 + v50;
      }

      *v51 = *v44;
      v42 = ++v83;
      v52 = v85++;
      ++v46;
      if (v52)
      {
        v44 = &v85 + v85;
      }

      else
      {
        v44 = 0;
      }

      if (v84 == 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = &v84 + v84;
      }
    }

    while (v44 != v53);
    v40 = v87;
  }

  v54 = &v87 - &v92;
  if (v40 == 1)
  {
    v54 = 0;
  }

  v55 = v40 + v46 + v54;
  v56 = &v92 - &v90;
  if (v55 == 1)
  {
    v56 = 0;
  }

  v57 = v56 + v55;
  v58 = &v90 - &v91;
  if (v57 == 1)
  {
    v58 = 0;
  }

  v59 = v58 + v57;
  v60 = &v91 + v59;
  if (v59 == 1)
  {
    v60 = 0;
  }

  if (v60)
  {
    v61 = v60 - &v92;
  }

  else
  {
    v61 = 1;
  }

  v62 = &v92 + v61;
  if (v61 == 1)
  {
    v62 = 0;
  }

  *v62 = 0;
  if (*(a1 + 8))
  {
    v65 = v7 - &v92;
    v66 = 23;
  }

  else
  {
    v63 = *(a1 + 24);
    v64 = a1 + 24 - &v92;
    if (v63 == 1)
    {
      v64 = 0;
    }

    v65 = v64 + v63;
    v66 = *(a1 + 16);
  }

  v92 = v65;
  boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate(a1, &v92, v66);
  if (*(a1 + 8))
  {
    *(a1 + 8) &= ~1uLL;
  }

  v67 = &v87 - &v92;
  if (v87 == 1)
  {
    v67 = 0;
  }

  v68 = &v92 - a1 - 24;
  if (v67 + v87 == 1)
  {
    v68 = 0;
  }

  *(a1 + 24) = &v68[v67 + v87];
  if (v46 < 0)
  {
    goto LABEL_139;
  }

  v69 = *(a1 + 8);
  *(a1 + 8) = v69 & 1 | (2 * v46);
  LOBYTE(v21) = v69 & 1 | (2 * v46);
  if ((v69 & 1) == 0)
  {
    *(a1 + 16) = v89;
  }

LABEL_110:
  if (v21)
  {
    v72 = v7 - &v92;
  }

  else
  {
    v70 = *(a1 + 24);
    v71 = a1 + 24 - &v92;
    if (v70 == 1)
    {
      v71 = 0;
    }

    v72 = v71 + v70;
  }

  if (v72 == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = &v92 + v72;
  }

  if (v20)
  {
    memmove(v73, __s, v20);
  }

  v74 = &v73[v20] - &v90;
  if (!v73)
  {
    v74 = 1;
  }

  v75 = &v90 - &v91;
  if (v74 == 1)
  {
    v75 = 0;
  }

  v76 = v75 + v74;
  if (v76 == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = &v91 + v76;
  }

  if (v77)
  {
    v78 = v77 - &v92;
  }

  else
  {
    v78 = 1;
  }

  if (v78 == 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = &v92 + v78;
  }

  *v79 = 0;
  if (*(a1 + 8))
  {
    if (v20 <= 0x7F)
    {
      *(a1 + 8) = (2 * v20) | 1;
      return a1;
    }

    v81 = 468;
    v82 = "priv_short_size";
LABEL_141:
    __assert_rtn(v82, "string.hpp", v81, "sz <= mask");
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_139:
    v81 = 476;
    v82 = "priv_long_size";
    goto LABEL_141;
  }

  *(a1 + 8) = *(a1 + 8) & 1 | (2 * v20);
  return a1;
}

uint64_t *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::find_node_impl<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_61;
  }

  v6 = (*(a2 + 24) - 1) & a3;
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v51, a2, v6);
  v7 = &v51 + v51;
  if (v51 == 1)
  {
    v7 = 0;
  }

  v8 = *v7;
  v9 = v7 - v50;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  if (v10 == 1)
  {
    goto LABEL_61;
  }

  v11 = &v50[v10];
  if (v10 + v50 - &v51 == 1)
  {
    v11 = 0;
  }

  v12 = *(v11 + 10);
  v13 = v11 + 80 - &v48;
  if (v12 == 1)
  {
    v13 = 0;
  }

  v14 = v13 + v12;
  v48 = v13 + v12;
  if (v13 + v12 == 1)
  {
LABEL_61:
    v44 = 1;
  }

  else
  {
    v15 = &v48 - &v51;
    v16 = *(a4 + 24);
    v17 = a4 - v49 + 9;
    v18 = a4 + 24 - v49;
    v19 = &v48 - &v46;
    v20 = *(a4 + 8);
    if (v16 == 1)
    {
      v18 = 0;
    }

    if (v20)
    {
      v21 = v20 >> 1;
    }

    else
    {
      v21 = *(a4 + 8) >> 1;
    }

    v22 = v18 + v16;
    if ((v20 & 1) == 0)
    {
      v17 = v22;
    }

    v23 = &v49[v17];
    if (v17 == 1)
    {
      v23 = 0;
    }

    __s1 = v23;
    v24 = &v46 - v47;
    while (1)
    {
      v25 = v14 + v15;
      if (v14 + v15 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = &v49[v14 - 8];
      }

      v27 = v26[8];
      v28 = v27 >> 1;
      if ((v27 & 1) == 0)
      {
        v28 = *(v26 + 1) >> 1;
      }

      if (v21 == v28)
      {
        if (v27)
        {
          v31 = v26 - &v51 + 9;
        }

        else
        {
          v29 = *(v26 + 3);
          v30 = v26 + 24 - &v51;
          if (v29 == 1)
          {
            v30 = 0;
          }

          v31 = v30 + v29;
        }

        v32 = v31 == 1 ? 0 : &v51 + v31;
        result = memcmp(__s1, v32, v21);
        v19 = &v48 - &v46;
        v15 = &v48 - &v51;
        v24 = &v46 - v47;
        if (!result)
        {
          break;
        }
      }

      if (v25 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = &v49[v14 - 8];
      }

      if ((*(v33 + 11) & 0x7FFFFFFFFFFFFFFFLL) == v6)
      {
        v34 = v19 + v14 == 1 ? 0 : v24;
        v35 = v34 + v19 + v14;
        while (1)
        {
          if (v35 == 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = v47 - v50;
          }

          v37 = v36 + v35;
          if (v37 == 1)
          {
            v38 = 0;
          }

          else
          {
            v38 = &v50[v37];
          }

          v39 = *(v38 + 10);
          v40 = v38 + 80 - &v51;
          if (v39 == 1)
          {
            v40 = 0;
          }

          v41 = v40 + v39;
          v42 = v41 == 1 ? 0 : &v51 - v47;
          v35 = v42 + v41;
          if (v35 == 1)
          {
            break;
          }

          if ((*&v47[v35 + 88] & 0x8000000000000000) == 0)
          {
            v43 = v47 - &v48;
            goto LABEL_60;
          }
        }

        v43 = 0;
LABEL_60:
        v14 = v43 + v35;
        v48 = v43 + v35;
        if (v43 + v35 != 1)
        {
          continue;
        }
      }

      goto LABEL_61;
    }

    v44 = &v48 - v4 + v14;
  }

  *v4 = v44;
  return result;
}