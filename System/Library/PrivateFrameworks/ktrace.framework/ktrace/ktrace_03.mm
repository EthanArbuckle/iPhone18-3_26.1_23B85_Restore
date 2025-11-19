uint64_t append_transformed_events_internal(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, UInt8 *a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v10 = 32;
  if (a6)
  {
    v10 = 64;
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = __append_transformed_events_internal_block_invoke;
  v18[3] = &unk_27886E278;
  v19 = a6;
  v18[4] = a9;
  v18[5] = &v25;
  v20 = a8 != 0;
  v18[8] = 0x400000;
  v18[9] = a8;
  v18[10] = a5;
  v18[11] = a1;
  v18[12] = a2;
  v18[13] = v10;
  v18[6] = &v29;
  v18[7] = &v21;
  trace_enumerate(a3, a4, a6, v18);
  v15 = *(v30 + 6);
  if (!v15)
  {
    v16 = v26[3];
    if (v16)
    {
      v15 = lazy_chunk_write(a1, a2, a8 != 0, a5, v16);
      *(v30 + 6) = v15;
    }

    else
    {
      v15 = 0;
    }
  }

  *a7 = v22[3];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v15;
}

uint64_t __append_transformed_events_internal_block_invoke(uint64_t a1, unsigned int *__src)
{
  v4 = *__src;
  if (*(a1 + 112) == 1)
  {
    v5 = __src[13];
    v6 = (__src + 12);
    v7 = *(__src + 2);
    v8 = *(__src + 6);
    v9 = *(__src + 5);
  }

  else
  {
    v5 = HIBYTE(v4);
    v4 &= 0xFFFFFFFFFFFFFFuLL;
    v6 = (__src + 7);
    v10 = *(__src + 1);
    v11 = *(__src + 2);
    *&v12 = v10;
    *(&v12 + 1) = HIDWORD(v10);
    v7 = v12;
    *&v12 = v11;
    *(&v12 + 1) = HIDWORD(v11);
    v8 = v12;
    v9 = __src[6];
  }

  v13 = *v6;
  v14 = *(a1 + 32);
  if (v14)
  {
    v25 = v8;
    v26 = v7;
    v15 = (*(v14 + 16))(v14, v4, v13, v7, *(&v7 + 1), v8, *(&v8 + 1), v9, v5);
    v8 = v25;
    v7 = v26;
    if (!v15)
    {
      return 0;
    }
  }

  v16 = *(*(*(a1 + 40) + 8) + 24);
  v17 = *(a1 + 64) - v16;
  if (*(a1 + 113) != 1)
  {
    v23 = *(a1 + 104);
    if (v23 > v17)
    {
      *(*(*(a1 + 48) + 8) + 24) = lazy_chunk_write(*(a1 + 88), *(a1 + 96), 0, *(a1 + 80), v16);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      v16 = *(*(*(a1 + 40) + 8) + 24);
      v23 = *(a1 + 104);
    }

    memcpy((*(a1 + 80) + v16), __src, v23);
    v21 = *(a1 + 104);
    goto LABEL_14;
  }

  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = &v18[12 * *v18];
  *(v18 + 2) = v4;
  *(v20 + 6) = v7;
  *(v20 + 10) = v8;
  *(v20 + 7) = v9;
  *(v20 + 8) = v13 | (v5 << 32);
  v21 = ktrace_compressor_commit(v18, (v19 + *(*(*(a1 + 40) + 8) + 24)), v17);
  if (v21)
  {
LABEL_14:
    v22 = 0;
    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) += v21;
    return v22;
  }

  *(*(*(a1 + 48) + 8) + 24) = lazy_chunk_write(*(a1 + 88), *(a1 + 96), *(a1 + 113), *(a1 + 80), *(*(*(a1 + 40) + 8) + 24));
  v22 = *(*(*(a1 + 48) + 8) + 24);
  if (!v22)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v21 = ktrace_compressor_commit(*(a1 + 72), *(a1 + 80), *(a1 + 64));
    if (!v21)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    goto LABEL_14;
  }

  return v22;
}

uint64_t lazy_chunk_write(uint64_t a1, uint64_t *a2, int a3, UInt8 *bytes, CFIndex length)
{
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v9 = *a2;
  if (!v9)
  {
    v10 = setup_events_chunk(a1, a3);
    if (!v10)
    {
      return *__error();
    }

    v9 = v10;
    *a2 = v10;
  }

  result = ktrace_file_append_data(a1, v9, bytes, length);
  if (result)
  {
    *a2 = 0;
  }

  return result;
}

BOOL __ktrace_file_passive_interval_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 32816)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v5 = ktrace_chunk_copy_data(a2, 0, *(a1 + 48), 0x30uLL);
    if (v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = v5;
    }
  }

  return v4 != 32816;
}

uint64_t __find_unused_subfile_id_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 216);
  v3 = *(result + 32);
  if (v2 >= *v3)
  {
    *v3 = v2 + 1;
  }

  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t *OUTLINED_FUNCTION_9@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void ktrace_catalog_internal::IterateProcesses(uint64_t a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  for (i = *a2; i != *a3; *a2 = i)
  {
    if (!(*(a4 + 16))(a4, i + *i))
    {
      break;
    }

    i = *a2 + 1;
  }
}

void ktrace_catalog_internal::IterateThreads(uint64_t a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  for (i = *a2; i != *a3; *a2 = i)
  {
    if (!(*(a4 + 16))(a4, i + *i))
    {
      break;
    }

    i = *a2 + 1;
  }
}

void *ktrace_catalog_internal::IterateLostEvents(void *result, uint64_t a2)
{
  v2 = *(*result - **result + 10);
  v3 = (*result + v2);
  v4 = *v3;
  v5 = *(v3 + v4);
  if (v5)
  {
    v7 = 4 * v5 - 4;
    v8 = v4 + v2 + *result + 4;
    v9 = v8;
    do
    {
      v10 = *v9++;
      result = (*(a2 + 16))(a2, v8 + v10);
      if (result)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      v7 -= 4;
      v8 = v9;
    }

    while (!v11);
  }

  return result;
}

char **ktrace_catalog_internal::IterateProcesses(char **result, uint64_t a2)
{
  v3 = *result;
  v4 = **result;
  v5 = *&(*result)[-v4 + 6];
  if (*&(*result)[-v4 + 6])
  {
    v4 = *&v3[v5];
    v6 = &v3[v5 + v4];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = v4;
  }

  v7 = &v3[4 * *&v3[v5 + v4] + v5 + v4];
  if (v6 != v7)
  {
    v8 = v6 + 4;
    v9 = (v7 + 4);
    v10 = (v6 + 4);
    do
    {
      v11 = *v10++;
      result = (*(a2 + 16))(a2, &v8[v11]);
      if (result)
      {
        v12 = v10 == v9;
      }

      else
      {
        v12 = 1;
      }

      v8 = v10;
    }

    while (!v12);
  }

  return result;
}

char **ktrace_catalog_internal::IterateThreads(char **result, uint64_t a2)
{
  v3 = *result;
  v4 = **result;
  v5 = *&(*result)[-v4 + 8];
  if (*&(*result)[-v4 + 8])
  {
    v4 = *&v3[v5];
    v6 = &v3[v5 + v4];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = v4;
  }

  v7 = &v3[4 * *&v3[v5 + v4] + v5 + v4];
  if (v6 != v7)
  {
    v8 = v6 + 4;
    v9 = (v7 + 4);
    v10 = (v6 + 4);
    do
    {
      v11 = *v10++;
      result = (*(a2 + 16))(a2, &v8[v11]);
      if (result)
      {
        v12 = v10 == v9;
      }

      else
      {
        v12 = 1;
      }

      v8 = v10;
    }

    while (!v12);
  }

  return result;
}

uint64_t ktrace_catalog_internal::GetProcessFromTid(ktrace_catalog_internal *this, unint64_t a2)
{
  v20[0] = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v20[2] = v20;
  v19 = std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 1, v20)[3];
  v3 = v17[3];
  if (!v3)
  {
    v4 = *(this + 6);
    v5 = (*this + *(*this - **this + 6));
    v6 = &v5[*(v5 + *v5) + 1] + *v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v11 = ___ZN23ktrace_catalog_internal17GetProcessFromTidEy_block_invoke;
    v12 = &unk_27886E2E8;
    v14 = this;
    v15 = v20[0];
    v13 = &v16;
    if (v4 == v6)
    {
      v3 = 0;
    }

    else
    {
      do
      {
        v7 = v11(v10, (v4 + *v4));
        if (++v4 == v6)
        {
          v8 = 0;
        }

        else
        {
          v8 = v7;
        }
      }

      while ((v8 & 1) != 0);
      v3 = v17[3];
    }
  }

  _Block_object_dispose(&v16, 8);
  return v3;
}

void sub_22EDA69AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23ktrace_catalog_internal17GetProcessFromTidEy_block_invoke(void *a1, int *a2)
{
  v2 = *(a2 - *a2 + 10);
  v3 = *(a2 + v2);
  v4 = *(a2 + v2 + v3);
  if (!v4)
  {
    return 1;
  }

  v7 = a1[5];
  v8 = 4 * v4;
  for (i = v2 + v3; ; i += 4)
  {
    v10 = *(a2 + i + 4);
    v11 = a2 + i + v10;
    v12 = a2 + i + v10 - *(v11 + 1);
    if (*(v12 + 2) < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 4);
      if (v13)
      {
        v13 = *(a2 + i + v10 + v13 + 4);
      }
    }

    v17[0] = v13;
    v17[1] = a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,KernelTraceCatalog::Process const*>>((v7 + 8), v17);
    v14 = v10 - *(v11 + 1);
    if (*(a2 + i + v14 + 4) < 5u)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + i + v14 + 8);
      if (v15)
      {
        v15 = *(a2 + i + v10 + v15 + 4);
      }
    }

    if (v15 == a1[6])
    {
      break;
    }

    v8 -= 4;
    if (!v8)
    {
      return 1;
    }
  }

  result = 0;
  *(*(a1[4] + 8) + 24) = a2;
  return result;
}

unsigned int *ktrace_catalog_internal::GetThreadFromTid(ktrace_catalog_internal *this, uint64_t a2)
{
  v2 = (*this + *(*this - **this + 8));
  v3 = (v2 + *v2);
  __key = a2;
  result = bsearch(&__key, v3 + 1, *v3, 4uLL, flatbuffers::Vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::KeyCompare<unsigned long long>);
  if (result)
  {
    return (result + *result);
  }

  return result;
}

char *ktrace_catalog_internal::GetProcessFromUniqueID(ktrace_catalog_internal *this, unint64_t *a2)
{
  v3 = (*this + *(*this - **this + 6));
  v4 = (v3 + *v3);
  __key = a2;
  v5 = bsearch(&__key, v4 + 1, *v4, 4uLL, flatbuffers::Vector<flatbuffers::Offset<KernelTraceCatalog::Process>>::KeyCompare<unsigned long long>);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  v7 = v5 + v6;
  v8 = *(v5 + v6 - *(v5 + v6) + 10);
  v9 = (v5 + v6 + v8);
  v10 = *v9;
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = 0;
    v13 = 4 * v11;
    v14 = v5 + v8 + v6 + v10;
    do
    {
      v15 = *&v14[v12 + 4];
      v16 = &v14[v12 + v15 - *&v14[v12 + 4 + v15]];
      if (*(v16 + 2) >= 5u && (v17 = *(v16 + 4)) != 0)
      {
        v18 = *&v14[v12 + 4 + v15 + v17];
      }

      else
      {
        v18 = 0;
      }

      v20 = v18;
      __key = &v20;
      std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 1, &v20)[3] = v7;
      v12 += 4;
    }

    while (v13 != v12);
  }

  return v7;
}

uint64_t ktrace_catalog_open(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __ktrace_catalog_open_block_invoke;
  v9[3] = &unk_27886E310;
  v9[4] = &v10;
  v1 = ktrace_file_iterate(a1, 0, v9);
  if (v1)
  {
    *__error() = v1;
    goto LABEL_10;
  }

  v2 = v11[3];
  if (!v2)
  {
    v6 = __error();
    v7 = 45;
LABEL_9:
    *v6 = v7;
    goto LABEL_10;
  }

  v3 = ktrace_chunk_size_t(v2);
  v4 = malloc_type_malloc(v3, 0x37B99EFAuLL);
  if (!v4)
  {
    v6 = __error();
    v7 = 12;
    goto LABEL_9;
  }

  v5 = ktrace_chunk_copy_data(v11[3], 0, v4, v3);
  if (!v5)
  {
    operator new();
  }

  free(v4);
  *__error() = v5;
LABEL_10:
  _Block_object_dispose(&v10, 8);
  return 0;
}

void sub_22EDA6E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ktrace_catalog_open_block_invoke(uint64_t a1, uint64_t a2)
{
  if (ktrace_chunk_tag(a2) != 32788 || ktrace_chunk_version_major(a2) > 1)
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  return result;
}

void ktrace_catalog_create(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = xmmword_22EE3F2D0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 256;
  *(a3 + 88) = 0;
  __src = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  __p = 0;
  v61 = 0;
  v62 = 0;
  v5 = *(a1 + 296);
  v70 = 0;
  v71 = &v70;
  v72 = 0x4002000000;
  v73 = __Block_byref_object_copy__24;
  v76[0] = 0;
  v76[1] = 0;
  v74 = __Block_byref_object_dispose__25;
  v75 = v76;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 0x40000000;
  v69[2] = ___ZL30ktrace_catalog_read_thread_mapP6kthmapRN11flatbuffers17FlatBufferBuilderERNSt3__16vectorINS1_6OffsetIN18KernelTraceCatalog7ProcessEEENS4_9allocatorIS9_EEEERNS5_INS6_INS7_6ThreadEEENSA_ISF_EEEE_block_invoke;
  v69[3] = &unk_27886E400;
  v69[6] = a3;
  v69[7] = &v63;
  v69[4] = &v70;
  v69[5] = v5;
  v59 = v5;
  kthmap_iterate_threads(v5, v69);
  v57 = a1;
  v6 = v71[5];
  v7 = v71 + 6;
  if (v6 != v71 + 6)
  {
    do
    {
      v8 = *(v6 + 8);
      v9 = v6[5];
      v10 = kthmap_name_for_pid(v59, v8);
      v11 = v10;
      if (v10)
      {
        v12 = strlen(v10);
        LODWORD(v11) = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);
      }

      v13 = v6[7] - v6[6];
      if (v13)
      {
        v14 = v6[6];
      }

      else
      {
        v14 = &flatbuffers::data<flatbuffers::Offset<KernelTraceCatalog::Thread>,std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>> &)::t;
      }

      v15 = flatbuffers::FlatBufferBuilder::CreateVectorOfSortedTables<KernelTraceCatalog::Thread>(a3, v14, v13 >> 2);
      flatbuffers::FlatBufferBuilder::NotNested(a3);
      *(a3 + 70) = 1;
      v16 = *(a3 + 32);
      v17 = *(a3 + 48);
      v18 = *(a3 + 40);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a3, 4, v9, 0);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 10, v15);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 8, v11);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v8, 0);
      v19 = flatbuffers::FlatBufferBuilder::EndTable(a3, v16 - v17 + v18);
      v20 = v67;
      if (v67 >= v68)
      {
        v22 = __src;
        v23 = v67 - __src;
        v24 = (v67 - __src) >> 2;
        v25 = v24 + 1;
        if ((v24 + 1) >> 62)
        {
          std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v68 - __src;
        if ((v68 - __src) >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
        v28 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(&__src, v28);
        }

        *(4 * v24) = v19;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v29 = __src;
        __src = 0;
        v67 = v21;
        v68 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v67 = v19;
        v21 = (v20 + 4);
      }

      v67 = v21;
      v30 = v6[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v6[2];
          v32 = *v31 == v6;
          v6 = v31;
        }

        while (!v32);
      }

      v6 = v31;
    }

    while (v31 != v7);
  }

  _Block_object_dispose(&v70, 8);
  std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::destroy(&v75, v76[0]);
  v33 = *a2;
  v34 = a2[1];
  if (*a2 != v34)
  {
    do
    {
      v35 = *v33;
      flatbuffers::FlatBufferBuilder::NotNested(a3);
      *(a3 + 70) = 1;
      v36 = *(a3 + 40);
      v37 = *(a3 + 48);
      v38 = *(a3 + 32);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a3, 4, v35, 0);
      v39 = flatbuffers::FlatBufferBuilder::EndTable(a3, v38 - v37 + v36);
      v40 = v61;
      if (v61 >= v62)
      {
        v42 = __p;
        v43 = v61 - __p;
        v44 = (v61 - __p) >> 2;
        v45 = v44 + 1;
        if ((v44 + 1) >> 62)
        {
          std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
        }

        v46 = v62 - __p;
        if ((v62 - __p) >> 1 > v45)
        {
          v45 = v46 >> 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v47 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(&__p, v47);
        }

        *(4 * v44) = v39;
        v41 = 4 * v44 + 4;
        memcpy(0, v42, v43);
        v48 = __p;
        __p = 0;
        v61 = v41;
        v62 = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v61 = v39;
        v41 = (v40 + 4);
      }

      v61 = v41;
      ++v33;
    }

    while (v33 != v34);
  }

  v49 = *(v57 + 496);
  if (v67 == __src)
  {
    v50 = &flatbuffers::data<flatbuffers::Offset<KernelTraceCatalog::Process>,std::allocator<flatbuffers::Offset<KernelTraceCatalog::Process>>>(std::vector<flatbuffers::Offset<KernelTraceCatalog::Process>> &)::t;
  }

  else
  {
    v50 = __src;
  }

  v51 = flatbuffers::FlatBufferBuilder::CreateVectorOfSortedTables<KernelTraceCatalog::Thread>(a3, v50, (v67 - __src) >> 2);
  if (v64 == v63)
  {
    v52 = &flatbuffers::data<flatbuffers::Offset<KernelTraceCatalog::Thread>,std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>> &)::t;
  }

  else
  {
    v52 = v63;
  }

  v53 = flatbuffers::FlatBufferBuilder::CreateVectorOfSortedTables<KernelTraceCatalog::Thread>(a3, v52, (v64 - v63) >> 2);
  if (v61 == __p)
  {
    v54 = &flatbuffers::data<flatbuffers::Offset<KernelTraceCatalog::LostEvent>,std::allocator<flatbuffers::Offset<KernelTraceCatalog::LostEvent>>>(std::vector<flatbuffers::Offset<KernelTraceCatalog::LostEvent>> const&)::t;
  }

  else
  {
    v54 = __p;
  }

  v55 = flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(a3, v54, (v61 - __p) >> 2);
  Catalog = KernelTraceCatalog::CreateCatalog(a3, v49, v51, v53, v55);
  flatbuffers::FlatBufferBuilder::Finish(a3, Catalog, "KTCA", 0);
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (__src)
  {
    v67 = __src;
    operator delete(__src);
  }
}

void sub_22EDA7424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  _Block_object_dispose((v21 - 152), 8);
  std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::destroy(v21 - 112, *(v21 - 104));
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v20);
  _Unwind_Resume(a1);
}

uint64_t ktrace_catalog_postprocess_file(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4002000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = ___ZL36ktrace_catalog_file_contains_catalogP11ktrace_file_block_invoke;
  v14[3] = &unk_27886E428;
  v14[4] = &v15;
  ktrace_file_iterate(a2, 0, v14);
  v6 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  if ((v6 & 1) == 0)
  {
    ktrace_set_execnames_enabled(a1, 1);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __ktrace_catalog_postprocess_file_block_invoke;
    v9[3] = &unk_27886E338;
    v9[4] = v10;
    ktrace_events_single(a1, 117571592, v9);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __ktrace_catalog_postprocess_file_block_invoke_2;
    v8[3] = &unk_27886E360;
    v8[4] = v10;
    v8[5] = a1;
    v8[6] = a2;
    ktrace_postprocessing_set_completed_handler(a3, v8);
  }

  _Block_object_dispose(v10, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_22EDA7684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose((v28 - 96), 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __ktrace_catalog_postprocess_file_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[6];
  v4 = v3[7];
  if (v5 >= v4)
  {
    v7 = v3[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>((v3 + 5), v13);
    }

    v14 = v9;
    v15 = (8 * v9);
    v16 = *a2;
    v17 = &v15[-v14];
    *v15 = v16;
    v6 = v15 + 1;
    memcpy(v17, v7, v8);
    v18 = v3[5];
    v3[5] = v17;
    v3[6] = v6;
    v3[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  v3[6] = v6;
}

void __ktrace_catalog_postprocess_file_block_invoke_2(void *a1)
{
  ktrace_catalog_create(a1[5], (*(a1[4] + 8) + 40), v3);
  BufferPointer = flatbuffers::FlatBufferBuilder::GetBufferPointer(v3);
  if (BufferPointer)
  {
    ktrace_file_append_chunk(a1[6], 32788, 1, 0, BufferPointer, (v3[8] - v3[12] + v3[10]));
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v3);
}

uint64_t flatbuffers::FlatBufferBuilder::GetBufferPointer(flatbuffers::FlatBufferBuilder *this)
{
  if ((*(this + 71) & 1) == 0)
  {
    flatbuffers::FlatBufferBuilder::GetBufferPointer();
  }

  result = *(this + 6);
  if (!result)
  {
    flatbuffers::FlatBufferBuilder::GetBufferPointer();
  }

  return result;
}

uint64_t ktrace_process_unique_id(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 5u && (v2 = v1[2]) != 0)
  {
    return *(*a1 + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_process_id(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 7u && (v2 = v1[3]) != 0)
  {
    return *(*a1 + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_process_last_name(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 9u && (v2 = v1[4]) != 0)
  {
    return *a1 + v2 + *(*a1 + v2) + 4;
  }

  else
  {
    return 0;
  }
}

void ktrace_catalog_iterate_threads(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3802000000;
  v6[3] = __Block_byref_object_copy__8;
  v6[4] = __Block_byref_object_dispose__9;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3802000000;
  v5[3] = __Block_byref_object_copy__10;
  v5[4] = __Block_byref_object_dispose__11;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3802000000;
  v4[3] = __Block_byref_object_copy__10;
  v4[4] = __Block_byref_object_dispose__11;
  v4[6] = v7;
  v5[6] = v7;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __ktrace_catalog_iterate_threads_block_invoke;
  v3[3] = &unk_27886E388;
  v3[7] = v5;
  v3[8] = v2;
  v3[5] = v6;
  v3[6] = v4;
  v3[4] = a2;
  ktrace_catalog_internal::IterateThreads(v2, v3);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
}

void sub_22EDA7A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __ktrace_catalog_iterate_threads_block_invoke(void *a1, int *a2)
{
  v4 = a1[8];
  v5 = (a2 - *a2);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v7 = 0;
  }

  ProcessFromTid = ktrace_catalog_internal::GetProcessFromTid(v4, v7);
  v9 = (a2 - *a2);
  v10 = *v9;
  if (v10 >= 9 && (v11 = v9[4]) != 0 && *(a2 + v9[4]))
  {
    v12 = a1 + 5;
    *(*(a1[5] + 8) + 40) = ProcessFromTid;
    v13 = a1 + 6;
    *(*(a1[6] + 8) + 40) = a2;
    v14 = a2;
  }

  else
  {
    v15 = (ProcessFromTid + *(ProcessFromTid - *ProcessFromTid + 10));
    v16 = (v15 + *v15);
    v17 = *v16;
    if (v17)
    {
      v18 = 0;
      v19 = 4 * v17;
      while (1)
      {
        v20 = v16[v18 / 4 + 1];
        v21 = &v16[v18 / 4] + v20 - *(&v16[v18 / 4 + 1] + v20);
        if (*(v21 + 2) >= 9u)
        {
          v22 = *(v21 + 6);
          if (v22)
          {
            if (*(&v16[v18 / 4 + 1] + v20 + v22))
            {
              break;
            }
          }
        }

        v18 += 4;
        if (v19 == v18)
        {
          goto LABEL_15;
        }
      }

      v14 = v16 + v20 + v18 + 4;
    }

    else
    {
LABEL_15:
      v14 = 0;
    }

    v12 = a1 + 5;
    *(*(a1[5] + 8) + 40) = ProcessFromTid;
    v13 = a1 + 6;
    *(*(a1[6] + 8) + 40) = a2;
    if (v10 < 9)
    {
      goto LABEL_20;
    }

    v11 = v9[4];
    if (!v9[4])
    {
      goto LABEL_20;
    }
  }

  if (*(a2 + v11))
  {
    v14 = *(*v13 + 8) + 40;
    v23 = 48;
    goto LABEL_21;
  }

LABEL_20:
  v12 = a1 + 7;
  *(*(a1[5] + 8) + 48) = *(a1[7] + 8) + 40;
  v23 = 40;
LABEL_21:
  *(*(*v12 + 8) + v23) = v14;
  v24 = *(a1[4] + 16);
  v25 = *(a1[6] + 8) + 40;

  return v24();
}

void ktrace_catalog_iterate_processes(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3802000000;
  v6[3] = __Block_byref_object_copy__8;
  v6[4] = __Block_byref_object_dispose__9;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3802000000;
  v4[3] = __Block_byref_object_copy__10;
  v7[1] = v5;
  v4[4] = __Block_byref_object_dispose__11;
  v5[1] = v7;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __ktrace_catalog_iterate_processes_block_invoke;
  v3[3] = &unk_27886E3B0;
  v3[5] = v6;
  v3[6] = v4;
  v3[4] = a2;
  ktrace_catalog_internal::IterateProcesses(v2, v3);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v6, 8);
}

void sub_22EDA7DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t __ktrace_catalog_iterate_processes_block_invoke(uint64_t a1, int *a2)
{
  v2 = *(a2 - *a2 + 10);
  v3 = *(a2 + v2);
  v4 = *(a2 + v2 + v3);
  if (v4)
  {
    v5 = 4 * v4;
    v6 = v2 + v3;
    while (1)
    {
      v7 = *(a2 + v6 + 4);
      v8 = a2 + v6 + v7 - *(a2 + v6 + v7 + 4);
      if (*(v8 + 2) >= 9u)
      {
        v9 = *(v8 + 6);
        if (v9)
        {
          if (*(a2 + v6 + v7 + v9 + 4))
          {
            break;
          }
        }
      }

      v6 += 4;
      v5 -= 4;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    *(*(*(a1 + 40) + 8) + 40) = a2;
    v11 = a1 + 48;
    v10 = a2 + v7 + v6 + 4;
    v12 = 40;
  }

  else
  {
LABEL_7:
    v10 = 0;
    v11 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 40) = a2;
    v12 = 48;
  }

  *(*(*v11 + 8) + v12) = v10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(a1 + 40) + 8) + 40);
}

void *ktrace_process_iterate_threads(void *result, uint64_t a2)
{
  v11[1] = result;
  v2 = *(*result - **result + 10);
  v3 = (*result + v2);
  v4 = *v3;
  v5 = *(v3 + v4);
  if (v5)
  {
    v7 = 4 * v5;
    v8 = v4 + v2 + *result + 4;
    v9 = v8;
    do
    {
      v10 = *v9++;
      v11[0] = v8 + v10;
      result = (*(a2 + 16))(a2, v11);
      v8 = v9;
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

void ktrace_catalog_iterate_lostevents(uint64_t a1, uint64_t a2)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3002000000;
  v16[3] = __Block_byref_object_copy__15;
  v16[4] = __Block_byref_object_dispose__16;
  v2 = *(a1 + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v12 = __ktrace_catalog_iterate_lostevents_block_invoke;
  v13 = &unk_27886E3D8;
  v14 = a2;
  v15 = v16;
  v3 = *v2;
  v4 = *&(*v2)[-**v2 + 10];
  v5 = *&v3[v4];
  v6 = *&v3[v4 + v5];
  if (v6)
  {
    v7 = 4 * v6 - 4;
    v8 = &v3[v5 + 4 + v4];
    do
    {
      v9 = v12(v11, &v8[*v8]);
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v7 -= 4;
      v8 += 4;
    }

    while ((v10 & 1) != 0);
  }

  _Block_object_dispose(v16, 8);
}

void sub_22EDA804C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ktrace_lostevent_get_timestamp(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 5u && (v2 = v1[2]) != 0)
  {
    return *(*a1 + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_catalog_get_timestamp(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = (v1 - *v1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0)
  {
    return *(v1 + v3);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_thread_id(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 5u && (v2 = v1[2]) != 0)
  {
    return *(*a1 + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_thread_last_name(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 7u && (v2 = v1[3]) != 0)
  {
    return *a1 + v2 + *(*a1 + v2) + 4;
  }

  else
  {
    return 0;
  }
}

void ktrace_catalog_close(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v2 + 8);
    MEMORY[0x2318F6E50](v2, 0x10F0C4042F376B1);
  }

  free(*a1);

  free(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x2318F6E30](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x2318F6E30);
  }
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    flatbuffers::Allocator::reallocate_downward();
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void *__Block_byref_object_copy__24(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void ___ZL30ktrace_catalog_read_thread_mapP6kthmapRN11flatbuffers17FlatBufferBuilderERNSt3__16vectorINS1_6OffsetIN18KernelTraceCatalog7ProcessEEENS4_9allocatorIS9_EEEERNS5_INS6_INS7_6ThreadEEENSA_ISF_EEEE_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, const void *a4)
{
  v8 = kthmap_thread_name_for_tid(*(a1 + 40), a4);
  is_main_thread = kthmap_tid_is_main_thread(*(a1 + 40), a4);
  v10 = *(a1 + 48);
  if (v8)
  {
    v11 = strlen(v8);
    LODWORD(v8) = flatbuffers::FlatBufferBuilder::CreateString(v10, v8, v11);
  }

  flatbuffers::FlatBufferBuilder::NotNested(v10);
  *(v10 + 70) = 1;
  v12 = *(v10 + 40);
  v13 = *(v10 + 32) - *(v10 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v10, 4, a4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(v10, 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v10, 8, is_main_thread, 0);
  v17 = flatbuffers::FlatBufferBuilder::EndTable(v10, v13 + v12);
  std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100](*(a1 + 56), &v17);
  v14 = *(*(a1 + 32) + 8);
  v16[0] = a2;
  v16[1] = a3;
  v18 = v16;
  v15 = std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::__emplace_unique_key_args<std::pair<int,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::pair<int,unsigned long long>&&>,std::tuple<>>(v14 + 40, v16);
  std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100]((v15 + 48), &v17);
}

void std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(a1, v12);
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

void std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::NotNested(this);
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  v6 = (*(this + 6) - flatbuffers::vector_downward::ensure_space(this, 1uLL));
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    v7 = (*(this + 6) - flatbuffers::vector_downward::ensure_space(this, a3));
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

uint64_t flatbuffers::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    flatbuffers::FlatBufferBuilder::NotNested();
  }

  if (*(this + 64))
  {
    flatbuffers::FlatBufferBuilder::NotNested();
  }

  return this;
}

unint64_t flatbuffers::vector_downward::fill(flatbuffers::vector_downward *this, unint64_t a2)
{
  result = flatbuffers::vector_downward::ensure_space(this, a2);
  *(this + 6) -= result;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = (*(a1 + 48) - flatbuffers::vector_downward::ensure_space(a1, 4uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t flatbuffers::vector_downward::ensure_space(flatbuffers::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v5 = *(this + 5), v3 < v5))
  {
    flatbuffers::vector_downward::ensure_space();
  }

  if (v2 - v3 < a2)
  {
    flatbuffers::vector_downward::reallocate(this, a2);
    v5 = *(this + 5);
    v2 = *(this + 6);
  }

  if ((*(this + 8) - v2 + v5) >= 0x7FFFFFFF)
  {
    flatbuffers::vector_downward::ensure_space();
  }

  return a2;
}

char *flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = &v4[v5 - *(this + 6)];
  v7 = *(this + 7) - v4;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v8 > a2)
  {
    a2 = v8;
  }

  v9 = (*(this + 3) + v5 + a2 - 1) & -*(this + 3);
  *(this + 4) = v9;
  v10 = *this;
  if (v4)
  {
    if (v10)
    {
      result = (*(*v10 + 32))(v10);
    }

    else
    {
      v13 = &unk_28439FE50;
      result = flatbuffers::Allocator::reallocate_downward(&v13, v4, v5, v9, v6, v7);
    }
  }

  else
  {
    if (!v10)
    {
      v13 = &unk_28439FE50;
      operator new[]();
    }

    result = (*(*v10 + 16))(v10, v9);
  }

  v12 = &result[*(this + 4) - v6];
  *(this + 5) = result;
  *(this + 6) = v12;
  *(this + 7) = &result[v7];
  return result;
}

unint64_t flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);
    result = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = (*(a1 + 48) - flatbuffers::vector_downward::ensure_space(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = flatbuffers::FlatBufferBuilder::ReferTo(result, a3);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5, 0);
  }

  return result;
}

unint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::ReferTo(flatbuffers::FlatBufferBuilder *this, unsigned int a2)
{
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    flatbuffers::FlatBufferBuilder::ReferTo();
  }

  return v6 + 4;
}

unint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);
    result = flatbuffers::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = (*(a1 + 48) - flatbuffers::vector_downward::ensure_space(a1, 1uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    flatbuffers::FlatBufferBuilder::EndTable();
  }

  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = (*(this + 6) - flatbuffers::vector_downward::ensure_space(this, v5));
  *(this + 6) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    flatbuffers::FlatBufferBuilder::EndTable();
  }

  v8 = *(this + 6);
  if (!v8)
  {
    flatbuffers::FlatBufferBuilder::GetBufferPointer();
  }

  v8[1] = v7;
  *v8 = *(this + 34);
  v9 = *(this + 7);
  if (!v9)
  {
    flatbuffers::FlatBufferBuilder::EndTable();
  }

  v10 = *(this + 16);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        flatbuffers::FlatBufferBuilder::EndTable();
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  v17 = v16 - v8 + v15;
  if (*(this + 81))
  {
    if (!v15)
    {
      flatbuffers::FlatBufferBuilder::EndTable();
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(this + 5);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(this + 6) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    flatbuffers::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v17;
    *(this + 7) = v22 + 1;
    v16 = *(this + 4);
    v15 = *(this + 5);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(this + 70) = 0;
  return v4;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27886DCF0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<KernelTraceCatalog::Thread>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::__emplace_unique_key_args<std::pair<int,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::pair<int,unsigned long long>&&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::__find_equal<std::pair<int,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::__find_equal<std::pair<int,unsigned long long>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = v8[5];
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::__map_value_compare<std::pair<int,unsigned long long>,std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>,std::less<std::pair<int,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<int,unsigned long long>,std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t flatbuffers::FlatBufferBuilder::CreateVectorOfSortedTables<KernelTraceCatalog::Thread>(flatbuffers::FlatBufferBuilder *a1, int32x2_t *a2, unint64_t a3)
{
  v6 = (a2 + 4 * a3);
  v10 = a1;
  v7 = 126 - 2 * __clz(a3);
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,false>(a2, v6, &v10, v8, 1);
  return flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(a1, a2, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<KernelTraceCatalog::Thread>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  flatbuffers::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = flatbuffers::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return flatbuffers::FlatBufferBuilder::EndVector(a1, a3);
}

int32x2_t *std::__introsort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,false>(int32x2_t *result, int32x2_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v20 = *(*a3 + 40) + *(*a3 + 32);
        result = KernelTraceCatalog::Thread::KeyCompareLessThan((v20 - a2[-1].u32[1]), (v20 - v9->u32[0]));
        if (result)
        {
          v21 = v9->i32[0];
          v9->i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v21;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9, v9 + 1, &v9[1], a3);
      v22 = *(*a3 + 40) + *(*a3 + 32);
      result = KernelTraceCatalog::Thread::KeyCompareLessThan((v22 - a2[-1].u32[1]), (v22 - v9[1].u32[0]));
      if (result)
      {
        v23 = v9[1].i32[0];
        v9[1].i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v23;
        v24 = *(*a3 + 40) + *(*a3 + 32);
        result = KernelTraceCatalog::Thread::KeyCompareLessThan((v24 - v9[1].u32[0]), (v24 - v9->u32[1]));
        if (result)
        {
          v26 = v9->i32[1];
          v25 = v9[1].u32[0];
          v27 = v9->u32[0];
          v9->i32[1] = v25;
          v9[1].i32[0] = v26;
          v28 = *(*a3 + 40) + *(*a3 + 32);
          result = KernelTraceCatalog::Thread::KeyCompareLessThan((v28 - v25), (v28 - v27));
          if (result)
          {
            *v9 = vrev64_s32(*v9);
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, &a2[-1] + 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9 + (v12 >> 1), v9, &a2[-1] + 1, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9, v9 + (v12 >> 1), &a2[-1] + 1, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9 + 1, v14 - 1, &a2[-1], a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(&v9[1], v9 + v13 + 1, &a2[-2] + 1, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v14 - 1, v14, v9 + v13 + 1, a3);
      v15 = v9->i32[0];
      v9->i32[0] = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v16 = *(*a3 + 40) + *(*a3 + 32);
    if (!KernelTraceCatalog::Thread::KeyCompareLessThan((v16 - v9[-1].u32[1]), (v16 - v9->u32[0])))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &>(v9, a2, a3);
      v9 = result;
      goto LABEL_23;
    }

LABEL_18:
    v17 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &>(v9, a2, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    v19 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(v9, v17, a3);
    v9 = (v17 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>((v17 + 1), a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v17;
      if (v19)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v19)
    {
LABEL_21:
      result = std::__introsort<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,false>(v8, v17, a3, -v11, a5 & 1);
      v9 = (v17 + 1);
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(v9, v9 + 1, &a2[-1] + 1, a3);
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v8 = *(*a4 + 40) + *(*a4 + 32);
  v9 = KernelTraceCatalog::Thread::KeyCompareLessThan((v8 - *a2), (v8 - *a1));
  v10 = *(*a4 + 40) + *(*a4 + 32);
  result = KernelTraceCatalog::Thread::KeyCompareLessThan((v10 - *a3), (v10 - *a2));
  if (v9)
  {
    v12 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      v16 = *(*a4 + 40) + *(*a4 + 32);
      if (KernelTraceCatalog::Thread::KeyCompareLessThan((v16 - *a3), (v16 - v12)))
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v14 = *(*a4 + 40) + *(*a4 + 32);
    if (KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - *a2), (v14 - *a1)))
    {
      v15 = *a1;
      *a1 = *a2;
      *a2 = v15;
    }
  }

  return 1;
}

BOOL std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(a1, a2, a3, a6);
  v12 = *(*a6 + 40) + *(*a6 + 32);
  if (KernelTraceCatalog::Thread::KeyCompareLessThan((v12 - *a4), (v12 - *a3)))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *(*a6 + 40) + *(*a6 + 32);
    if (KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - *a3), (v14 - *a2)))
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *(*a6 + 40) + *(*a6 + 32);
      if (KernelTraceCatalog::Thread::KeyCompareLessThan((v16 - *a2), (v16 - *a1)))
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  v18 = *(*a6 + 40) + *(*a6 + 32);
  result = KernelTraceCatalog::Thread::KeyCompareLessThan((v18 - *a5), (v18 - *a4));
  if (result)
  {
    v20 = *a4;
    *a4 = *a5;
    *a5 = v20;
    v21 = *(*a6 + 40) + *(*a6 + 32);
    result = KernelTraceCatalog::Thread::KeyCompareLessThan((v21 - *a4), (v21 - *a3));
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = *(*a6 + 40) + *(*a6 + 32);
      result = KernelTraceCatalog::Thread::KeyCompareLessThan((v23 - *a3), (v23 - *a2));
      if (result)
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        v25 = *(*a6 + 40) + *(*a6 + 32);
        result = KernelTraceCatalog::Thread::KeyCompareLessThan((v25 - *a2), (v25 - *a1));
        if (result)
        {
          v26 = *a1;
          *a1 = *a2;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(*a3 + 40) + *(*a3 + 32);
        result = KernelTraceCatalog::Thread::KeyCompareLessThan((v11 - v9), (v11 - v10));
        if (result)
        {
          v12 = *v8;
          v13 = v7;
          while (1)
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              break;
            }

            v14 = *(*a3 + 40) + *(*a3 + 32);
            result = KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - v12), (v14 - *(v4 + v13 - 4)));
            v13 -= 4;
            if ((result & 1) == 0)
            {
              v15 = (v4 + v13 + 4);
              goto LABEL_10;
            }
          }

          v15 = v4;
LABEL_10:
          *v15 = v12;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = result + 1; v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      v9 = *(*a3 + 40) + *(*a3 + 32);
      result = KernelTraceCatalog::Thread::KeyCompareLessThan((v9 - v7), (v9 - v8));
      if (result)
      {
        v10 = *v4;
        v11 = v4;
        do
        {
          v12 = v11;
          v13 = *--v11;
          *v12 = v13;
          v14 = *(*a3 + 40) + *(*a3 + 32);
          result = KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - v10), (v14 - *(v12 - 2)));
        }

        while ((result & 1) != 0);
        *v11 = v10;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(*a3 + 40) + *(*a3 + 32);
  if (KernelTraceCatalog::Thread::KeyCompareLessThan((v7 - v6), (v7 - *(a2 - 1))))
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
      v10 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v10 - v6), (v10 - v9)));
  }

  else
  {
    v11 = a1 + 1;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *(*a3 + 40) + *(*a3 + 32);
      ++v11;
    }

    while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v12 - v6), (v12 - *v8)));
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *--v4;
      v14 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - v6), (v14 - v13)));
  }

  while (v8 < v4)
  {
    v15 = *v8;
    *v8 = *v4;
    *v4 = v15;
    do
    {
      v16 = v8[1];
      ++v8;
      v17 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v17 - v6), (v17 - v16)));
    do
    {
      v18 = *--v4;
      v19 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (KernelTraceCatalog::Thread::KeyCompareLessThan((v19 - v6), (v19 - v18)));
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &>(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = *(*a3 + 40) + *(*a3 + 32);
  }

  while (KernelTraceCatalog::Thread::KeyCompareLessThan((v8 - a1[++v6]), (v8 - v7)));
  v10 = &a1[v6];
  v11 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v14 = *--a2;
      v15 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v15 - v14), (v15 - v7)));
  }

  else
  {
    do
    {
      v12 = *--a2;
      v13 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v13 - v12), (v13 - v7)));
  }

  if (v10 < a2)
  {
    v16 = &a1[v6];
    v17 = a2;
    do
    {
      v18 = *v16;
      *v16 = *v17;
      *v17 = v18;
      do
      {
        v19 = v16[1];
        ++v16;
        v20 = *(*a3 + 40) + *(*a3 + 32);
      }

      while (KernelTraceCatalog::Thread::KeyCompareLessThan((v20 - v19), (v20 - v7)));
      do
      {
        v21 = *--v17;
        v22 = *(*a3 + 40) + *(*a3 + 32);
      }

      while (!KernelTraceCatalog::Thread::KeyCompareLessThan((v22 - v21), (v22 - v7)));
    }

    while (v16 < v17);
    v11 = v16 - 1;
  }

  if (v11 != a1)
  {
    *a1 = *v11;
  }

  *v11 = v7;
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(a1, a1 + 1, &a2[-1] + 1, a3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(a1, a1 + 1, &a1[1], a3);
        v19 = *(*a3 + 40) + *(*a3 + 32);
        if (KernelTraceCatalog::Thread::KeyCompareLessThan((v19 - a2[-1].u32[1]), (v19 - a1[1].u32[0])))
        {
          v20 = a1[1].i32[0];
          a1[1].i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v20;
          v21 = *(*a3 + 40) + *(*a3 + 32);
          if (KernelTraceCatalog::Thread::KeyCompareLessThan((v21 - a1[1].u32[0]), (v21 - a1->u32[1])))
          {
            v23 = a1->i32[1];
            v22 = a1[1].u32[0];
            v24 = a1->u32[0];
            a1->i32[1] = v22;
            a1[1].i32[0] = v23;
            v25 = *(*a3 + 40) + *(*a3 + 32);
            if (KernelTraceCatalog::Thread::KeyCompareLessThan((v25 - v22), (v25 - v24)))
            {
              *a1 = vrev64_s32(*a1);
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(*a3 + 40) + *(*a3 + 32);
    if (KernelTraceCatalog::Thread::KeyCompareLessThan((v7 - a2[-1].u32[1]), (v7 - a1->u32[0])))
    {
      v8 = a1->i32[0];
      a1->i32[0] = a2[-1].i32[1];
      a2[-1].i32[1] = v8;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 1;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,0>(a1, a1 + 1, &a1[1], a3);
  v10 = (a1 + 12);
  if (&a1[1].u8[4] == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(*a3 + 40) + *(*a3 + 32);
    if (KernelTraceCatalog::Thread::KeyCompareLessThan((v13 - v10->u32[0]), (v13 - v9->u32[0])))
    {
      v14 = v10->u32[0];
      v15 = v11;
      while (1)
      {
        *(&a1[1].i32[1] + v15) = *(a1[1].i32 + v15);
        if (v15 == -8)
        {
          break;
        }

        v16 = *(*a3 + 40) + *(*a3 + 32);
        v17 = KernelTraceCatalog::Thread::KeyCompareLessThan((v16 - v14), (v16 - *(&a1->u32[1] + v15)));
        v15 -= 4;
        if (!v17)
        {
          v18 = (a1 + v15 + 12);
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      v18->i32[0] = v14;
      if (++v12 == 8)
      {
        return &v10->u8[4] == a2;
      }
    }

    v9 = v10;
    v11 += 4;
    v10 = (v10 + 4);
    if (v10 == a2)
    {
      return 1;
    }
  }
}

BOOL KernelTraceCatalog::Thread::KeyCompareLessThan(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 < 5u)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[2];
    if (v3)
    {
      v3 = *(a1 + v3);
    }
  }

  v4 = (a2 - *a2);
  if (*v4 < 5u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      v5 = *(a2 + v5);
    }
  }

  return v3 < v5;
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *(*a4 + 40) + *(*a4 + 32);
        if (KernelTraceCatalog::Thread::KeyCompareLessThan((v13 - *v12), (v13 - *a1)))
        {
          v14 = *v12;
          *v12 = *a1;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(_BOOL8 result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v14 = *(*a2 + 40) + *(*a2 + 32);
        if (KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - *v12), (v14 - v12[1])))
        {
          ++v12;
          v11 = v13;
        }
      }

      v15 = *(*a2 + 40) + *(*a2 + 32);
      result = KernelTraceCatalog::Thread::KeyCompareLessThan((v15 - *v12), (v15 - *v5));
      if (!result)
      {
        v21 = *v5;
        do
        {
          v16 = v5;
          v5 = v12;
          *v16 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (v6 + 4 * v17);
          v18 = 2 * v11 + 2;
          if (v18 < a3)
          {
            v19 = *(*a2 + 40) + *(*a2 + 32);
            if (KernelTraceCatalog::Thread::KeyCompareLessThan((v19 - *v12), (v19 - v12[1])))
            {
              ++v12;
              v17 = v18;
            }
          }

          v20 = *(*a2 + 40) + *(*a2 + 32);
          result = KernelTraceCatalog::Thread::KeyCompareLessThan((v20 - *v12), (v20 - v21));
          v11 = v17;
        }

        while (!result);
        *v5 = v21;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      v14 = *(*a2 + 40) + *(*a2 + 32);
      if (KernelTraceCatalog::Thread::KeyCompareLessThan((v14 - *(v12 - 1)), (v14 - v13)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::FlatBufferBuilder::TableKeyComparator<KernelTraceCatalog::Thread> &,flatbuffers::Offset<KernelTraceCatalog::Thread> *>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    v10 = *(*a3 + 40) + *(*a3 + 32);
    result = KernelTraceCatalog::Thread::KeyCompareLessThan((v10 - *v8), (v10 - *(a2 - 4)));
    if (result)
    {
      v11 = *v9;
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        v13 = *(*a3 + 40) + *(*a3 + 32);
        result = KernelTraceCatalog::Thread::KeyCompareLessThan((v13 - *v8), (v13 - v11));
      }

      while (result);
      *v9 = v11;
    }
  }

  return result;
}

unint64_t flatbuffers::FlatBufferBuilder::StartVector(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  flatbuffers::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return flatbuffers::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::EndVector(flatbuffers::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    flatbuffers::FlatBufferBuilder::EndVector();
  }

  *(this + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a2);
}

uint64_t KernelTraceCatalog::CreateCatalog(unint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  flatbuffers::FlatBufferBuilder::NotNested(a1);
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, a2, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a1, 10, a5);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a1, 8, a4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a1, 6, a3);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, unsigned int a2, const char *a3, int a4)
{
  v8 = a3 != 0;
  flatbuffers::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  v9 = 4;
  if (a4)
  {
    v9 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v9 + 4 * v8, *(this + 9));
  if (a3)
  {
    if (strlen(a3) != 4)
    {
      flatbuffers::FlatBufferBuilder::Finish();
    }

    v10 = (*(this + 6) - flatbuffers::vector_downward::ensure_space(this, 4uLL));
    *(this + 6) = v10;
    *v10 = *a3;
  }

  v11 = flatbuffers::FlatBufferBuilder::ReferTo(this, a2);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, v11);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x2318F6E50](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

void std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a1, *a2);
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL ___ZL36ktrace_catalog_file_contains_catalogP11ktrace_file_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_tag(a2);
  if (v3 == 32788)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 != 32788;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,KernelTraceCatalog::Process const*>>(void *a1, unint64_t *a2)
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

uint64_t flatbuffers::Vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::KeyCompare<unsigned long long>(unint64_t *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 < 5u)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      v5 = *(v2 + v5);
      if (v5 <= v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = -1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v5 >= v3)
  {
    return v6;
  }

  else
  {
    return v6 + 1;
  }
}

uint64_t flatbuffers::Vector<flatbuffers::Offset<KernelTraceCatalog::Process>>::KeyCompare<unsigned long long>(unint64_t *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 < 5u)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      v5 = *(v2 + v5);
      if (v5 <= v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = -1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v5 >= v3)
  {
    return v6;
  }

  else
  {
    return v6 + 1;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ktrace_set_file(uint64_t a1, const char *a2)
{
  v3 = ktrace_file_open(a2, 0);
  if (!v3)
  {
    return *__error();
  }

  ktrace_set_ktrace_file(a1, v3, 1);
  return 0;
}

uint64_t ktrace_set_ktrace_file(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 608))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 == 1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3 && *(a2 + 200))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = *(a1 + 224);
  if (v6 & 2) != 0 || (v6)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __ktrace_set_ktrace_file_block_invoke;
  v10[3] = &__block_descriptor_tmp_4;
  v10[4] = a1;
  ktrace_file_header_iterate(a2, 0, v10);
  *(a1 + 608) = a2;
  if (*a1 == 3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
  if (*(a1 + 256))
  {
    kteventnames_add_chunks(a1 + 360, a2);
  }

  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 224) = *(a1 + 224) & 0xFFFB | v8;
  return 0;
}

uint64_t ktrace_chunks_range(uint64_t a1, int a2, int a3, const void *a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = ktrace_callback_list_add(a1, a1 + 112);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  *v7 = 3;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = 3;
  v9 = _Block_copy(a4);
  result = 0;
  *(v8 + 3) = v9;
  return result;
}

uint64_t _session_start_file(uint64_t a1, int a2)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 608);
  if (!v3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = ___session_start_file_block_invoke;
  v14[3] = &unk_27886E490;
  v14[4] = &v19;
  v14[5] = &v15;
  v14[6] = &v29;
  v14[7] = v33;
  v14[8] = v27;
  v14[9] = &v35;
  v14[10] = &v23;
  v14[11] = a1;
  if (!ktrace_file_iterate(v3, 0, v14) && !*(v24 + 6))
  {
    kttimesync_init(a1 + 432, *(a1 + 608), *(v20 + 24));
    if (!*(a1 + 452))
    {
      v7 = *(a1 + 428);
      ktrace_log_init();
      v8 = ktrace_log;
      v9 = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        if (v9)
        {
          _session_start_file_cold_1((a1 + 424), (a1 + 428), v8);
        }

        *(a1 + 448) = *(a1 + 424);
      }

      else
      {
        if (v9)
        {
          _session_start_file_cold_2(v8);
        }

        if (mach_timebase_info((a1 + 448)))
        {
          ktrace_postprocess_file_internal_cold_4();
        }
      }
    }

    started = _session_machine_init(a1);
    if (started)
    {
      goto LABEL_27;
    }

    started = _session_cpus_init(a1);
    if (started)
    {
      goto LABEL_27;
    }

    v11 = ktrace_file_earliest_timestamp(*(a1 + 608), (a1 + 504));
    v12 = *(a1 + 504);
    *(a1 + 520) = kttimesync_timestamp_from_ns(a1 + 432, *(a1 + 512)) + v12;
    if (*(v30 + 24) == 1)
    {
      ktrace_start_file_ariadne_prepass(a1);
    }

    else
    {
      if (!v11 && !v12 || (v36[3] & 1) == 0 && *(v16 + 24) != 1)
      {
        v13 = 1;
LABEL_26:
        started = ktrace_start_file_internal(a1, v13, a2);
LABEL_27:
        v5 = started;
        goto LABEL_6;
      }

      ktrace_start_file_prepass(a1);
    }

    v13 = 0;
    goto LABEL_26;
  }

  v5 = 1;
LABEL_6:
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
  return v5;
}

uint64_t ___session_start_file_block_invoke(void *a1, uint64_t *a2)
{
  v4 = ktrace_config_create(a2);
  if (v4)
  {
    v5 = v4;
    *(*(a1[4] + 8) + 24) = ktrace_config_kdebug_using_mach_continuous_time(v4);
    *(*(a1[5] + 8) + 24) = ktrace_config_get_context_kind(v5) == 2;
    ktrace_config_destroy(v5);
  }

  v6 = ktrace_chunk_tag(a2);
  if (v6 <= 7935)
  {
    if (v6 == 7424)
    {
      v7 = a1[7];
      goto LABEL_19;
    }

    if (v6 != 7680)
    {
      return 1;
    }

LABEL_12:
    if ((*(*(a1[7] + 8) + 24) & 1) == 0 && (*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    v7 = a1[8];
    goto LABEL_19;
  }

  switch(v6)
  {
    case 7936:
      *(a1[11] + 224) |= 0x40u;
      goto LABEL_12;
    case 32782:
      v8 = a1[11];
      if (*(v8 + 288))
      {
        *(*(a1[10] + 8) + 24) = ktrace_chunk_copy_data(a2, 0, (v8 + 528), 0x18uLL);
      }

      break;
    case 20982:
      v7 = a1[6];
LABEL_19:
      *(*(v7 + 8) + 24) = 1;
      break;
  }

  return 1;
}

void ktrace_start_file_ariadne_prepass(uint64_t a1)
{
  v1 = *(a1 + 128);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ktrace_start_file_ariadne_prepass_block_invoke;
  block[3] = &__block_descriptor_tmp_7_1;
  block[4] = a1;
  dispatch_async(v1, block);
}

void ktrace_start_file_prepass(uint64_t a1)
{
  if (*(a1 + 284))
  {
    _session_ensure_uuidmap(a1);
    v2 = *(a1 + 232);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ktrace_start_file_prepass_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  v3 = *(a1 + 128);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __ktrace_start_file_prepass_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_9_0;
  v6[4] = a1;
  dispatch_async(v3, v6);
  v4 = *(a1 + 128);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __ktrace_start_file_prepass_block_invoke_3;
  v5[3] = &__block_descriptor_tmp_16;
  v5[4] = a1;
  dispatch_async(v4, v5);
}

uint64_t ktrace_start_file_internal(uint64_t a1, char a2, int a3)
{
  is_64_bit = ktrace_file_is_64_bit(*(a1 + 608));
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = a3 == 0;
  }

  else
  {
    a2 = 0;
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(a1 + 128);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ktrace_start_file_internal_block_invoke;
    block[3] = &__block_descriptor_tmp_29;
    block[4] = a1;
    dispatch_async(v9, block);
    v7 = *(a1 + 24);
  }

  if (v7 >= 1)
  {
    v10 = ktrace_stream_create(0, is_64_bit, (*(a1 + 224) >> 6) & 1);
    *(a1 + 616) = v10;
    if (!v10)
    {
      return *__error();
    }
  }

  v11 = *(a1 + 128);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __ktrace_start_file_internal_block_invoke_9;
  v13[3] = &__block_descriptor_tmp_35;
  v13[4] = a1;
  v14 = a2;
  v15 = is_64_bit;
  dispatch_async(v11, v13);
  return 0;
}

uint64_t __ktrace_start_file_ariadne_prepass_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 608);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ktrace_start_file_ariadne_prepass_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_6;
  v4[4] = v1;
  return ktrace_file_iterate(v2, 0, v4);
}

uint64_t __ktrace_start_file_ariadne_prepass_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __ktrace_start_file_ariadne_prepass_block_invoke_3;
  v5[3] = &__block_descriptor_tmp_5_1;
  v5[4] = v2;
  v5[5] = a2;
  dispatch_async(v3, v5);
  return 1;
}

void __ktrace_start_file_prepass_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 296) && (*(v1 + 260) || *(v1 + 280)))
  {
    v3 = ktrace_catalog_open(*(v1 + 608));
    if (v3)
    {
      v4 = v3;
      kthmap_read_catalog(*(*(a1 + 32) + 296), v3);

      ktrace_catalog_close(v4);
    }
  }
}

uint64_t __ktrace_start_file_prepass_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 20990)
  {
    goto LABEL_7;
  }

  if (v4 == 32770)
  {
    if (ktrace_chunk_version_major(a2) <= 1)
    {
LABEL_7:
      v5 = *(a1 + 32);
      v6 = *(v5 + 232);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = __ktrace_start_file_prepass_block_invoke_5;
      v8[3] = &__block_descriptor_tmp_12_0;
      v8[4] = a2;
      v8[5] = v5;
      dispatch_async(v6, v8);
    }
  }

  else if (v4 == 36864 && !ktrace_chunk_version_major(a2))
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t __ktrace_start_file_prepass_block_invoke_5(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __ktrace_start_file_prepass_block_invoke_6;
  v3[3] = &__block_descriptor_tmp_11_0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return ktrace_stackshot_chunk_unwrap(v1, v3);
}

uint64_t __ktrace_start_file_internal_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 608);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ktrace_start_file_internal_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_28;
  v4[4] = v1;
  return ktrace_file_iterate(v2, 0, v4);
}

BOOL __ktrace_start_file_internal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((*(a1 + 32) + 156));
  if (v2)
  {
    return (v2 & 1) == 0;
  }

  v5 = ktrace_chunk_tag(a2);
  if (v5 > 32772)
  {
    if (v5 <= 32799)
    {
      if (v5 == 32773)
      {
        if (!ktrace_chunk_version_major(a2))
        {
          v12 = *(a1 + 32);
          v7 = *(v12 + 232);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 0x40000000;
          v17[2] = __ktrace_start_file_internal_block_invoke_6;
          v17[3] = &__block_descriptor_tmp_25_0;
          v17[4] = v12;
          v17[5] = a2;
          v8 = v17;
          goto LABEL_23;
        }
      }

      else if (v5 == 32784 && !ktrace_chunk_version_major(a2))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 232);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 0x40000000;
        v16[2] = __ktrace_start_file_internal_block_invoke_7;
        v16[3] = &__block_descriptor_tmp_26_0;
        v16[4] = v6;
        v16[5] = a2;
        v8 = v16;
LABEL_23:
        dispatch_async(v7, v8);
        return (v2 & 1) == 0;
      }

      return (v2 & 1) == 0;
    }

    if (v5 == 32800)
    {
      if (!ktrace_chunk_version_major(a2))
      {
        v13 = *(a1 + 32);
        v7 = *(v13 + 232);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v15[2] = __ktrace_start_file_internal_block_invoke_8;
        v15[3] = &__block_descriptor_tmp_27_0;
        v15[4] = v13;
        v15[5] = a2;
        v8 = v15;
        goto LABEL_23;
      }

      return (v2 & 1) == 0;
    }

    if (v5 != 36869)
    {
      return (v2 & 1) == 0;
    }

LABEL_15:
    if (!ktrace_chunk_version_major(a2))
    {
      v10 = *(a1 + 32);
      v7 = *(v10 + 232);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = __ktrace_start_file_internal_block_invoke_3;
      v20[3] = &__block_descriptor_tmp_22;
      v20[4] = v10;
      v20[5] = a2;
      v8 = v20;
      goto LABEL_23;
    }

    return (v2 & 1) == 0;
  }

  if (v5 == 20530)
  {
    if (!ktrace_chunk_version_major(a2))
    {
      v11 = *(a1 + 32);
      v7 = *(v11 + 232);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = __ktrace_start_file_internal_block_invoke_4;
      v19[3] = &__block_descriptor_tmp_23_0;
      v19[4] = v11;
      v19[5] = a2;
      v8 = v19;
      goto LABEL_23;
    }

    return (v2 & 1) == 0;
  }

  if (v5 == 32769)
  {
    goto LABEL_15;
  }

  if (v5 == 32772 && ktrace_chunk_version_major(a2) <= 1)
  {
    v9 = *(a1 + 32);
    v7 = *(v9 + 232);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __ktrace_start_file_internal_block_invoke_5;
    v18[3] = &__block_descriptor_tmp_24;
    v18[4] = v9;
    v18[5] = a2;
    v8 = v18;
    goto LABEL_23;
  }

  return (v2 & 1) == 0;
}

uint64_t __ktrace_start_file_internal_block_invoke_3(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  return ktrace_uuid_map_learn_sharedcache_with_chunk(v3, v2);
}

void __ktrace_start_file_internal_block_invoke_4(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  ktrace_uuid_map_learn_ariadne_process_dict_with_chunk(v3, v2);
}

void __ktrace_start_file_internal_block_invoke_5(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  ktrace_uuid_map_learn_inodes_with_chunk(v3, v2);
}

void __ktrace_start_file_internal_block_invoke_6(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  ktrace_uuid_map_learn_kernelmap_with_chunk(v3, v2);
}

void __ktrace_start_file_internal_block_invoke_7(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  ktrace_uuid_map_learn_process_info_with_chunk(v3, v2);
}

uint64_t __ktrace_start_file_internal_block_invoke_8(uint64_t a1)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 304);

  return ktrace_uuid_map_learn_aot_translations_with_chunk(v3, v2);
}

void __ktrace_start_file_internal_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 320))
  {
    _session_handle_stackshot(v1, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void trace_end(int a1)
{
  if (trace_end_get_global_once != -1)
  {
    trace_end_cold_1();
  }

  v2 = trace_end_s;

  ktrace_end(v2, a1);
}

void *trace_set_dropped_events_handler(void *aBlock)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_dropped_events_handler(v2, aBlock);
}

void *trace_set_thread_exit_handler(void *aBlock)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_thread_exit_handler(v2, aBlock);
}

uint64_t trace_set_walltime_enabled(int a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_walltimes_enabled(v2, a1);
}

uint64_t trace_set_raw_file(const char *a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_file(v2, a1);
}

uint64_t trace_set_use_existing()
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v1 = global_session;

  return ktrace_set_use_existing(v1);
}

uint64_t trace_filter(const char *a1, const void *a2)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v4 = global_session;

  return ktrace_events_filter(v4, a1, a2);
}

uint64_t trace_exclude_process(const char *a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_exclude_process(v2, a1);
}

uint64_t trace_exclude_pid(int a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_exclude_pid(v2, a1);
}

uint64_t trace_filter_pid(int a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_filter_pid(v2, a1);
}

uint64_t trace_set_command_map_enabled(int a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_execnames_enabled(v2, a1);
}

void *trace_set_completion_handler(void *aBlock)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_completion_handler(v2, aBlock);
}

uint64_t trace_all(const void *a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_events_all(v2, a1);
}

uint64_t trace_single(int a1, const void *a2)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v4 = global_session;

  return ktrace_events_single(v4, a1, a2);
}

uint64_t trace_single_paired(int a1, const void *a2)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v4 = global_session;

  return ktrace_events_single_paired(v4, a1, a2);
}

uint64_t trace_range(int a1, int a2, const void *a3)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v6 = global_session;

  return ktrace_events_range(v6, a1, a2, a3);
}

uint64_t trace_range_paired(int a1, unsigned int a2, const void *a3)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v6 = global_session;

  return ktrace_events_range_paired(v6, a1, a2, a3);
}

uint64_t trace_start(NSObject *a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  result = ktrace_start(global_session, a1);
  if (result == 1)
  {
    fwrite("libktrace: cannot trace in a live mode unless root\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    exit(1);
  }

  return result;
}

uint64_t trace_get_command_for_thread(const void *a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_get_execname_for_thread(v2, a1);
}

uint64_t trace_set_buffer_size(uint64_t a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_buffer_size(v2, a1);
}

uint64_t trace_set_mode(unsigned int a1)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v2 = global_session;

  return ktrace_set_mode(v2, a1);
}

void trace_set_signal_handler()
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v1 = global_session;

  ktrace_set_signal_handler(v1);
}

uint64_t trace_parse_arg(int a1, uint64_t a2, int a3)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v6 = global_session;

  return ktrace_parse_arg(v6, a1, a2, a3);
}

uint64_t trace_parse_args(int a1, char **a2)
{
  if (allocated_once != -1)
  {
    trace_set_dropped_events_handler_cold_1();
  }

  v4 = global_session;

  return ktrace_parse_args(v4, a1, a2);
}

void *__initialize_global_session_block_invoke()
{
  result = ktrace_session_create();
  global_session = result;
  return result;
}

uint64_t apply_kernel_typefilter_and_pid_filter(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 560) || *(a1 + 576) == 2 || (v3 = a1, v4 = 0, CFSetApplyFunction(*(a1 + 552), pid_set_applier, &v3), result = v4, !v4))
  {
    if (*(a1 + 16))
    {
      return 0;
    }

    result = trace_set_filter(*(a1 + 8));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void populate_threadmap(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    _session_start_live_cold_13();
  }

  if (*(a1 + 232) && *(a1 + 260))
  {
    v6 = 0;
    v7 = 0;
    if (a2)
    {
      kdebug_alloc_current_thread_map(&v7, &v6);
    }

    else
    {
      kdebug_alloc_thread_map(&v7, &v6);
    }

    if (v7)
    {
      v3 = *(a1 + 232);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __populate_threadmap_block_invoke;
      v4[3] = &__block_descriptor_57_e5_v8__0l;
      v4[4] = a1;
      v4[5] = v7;
      v4[6] = v6;
      v5 = 1;
      dispatch_async(v3, v4);
    }
  }
}

uint64_t ktrace_reset_existing()
{
  v1 = atomic_load(&live_session);
  if (v1)
  {
    if ((*(v1 + 224) & 2) == 0)
    {
      ktrace_reset_existing_cold_1();
    }

    v2 = v1;
    atomic_compare_exchange_strong(&live_session, &v2, 0);
    if (v2 != v1)
    {
      return 22;
    }
  }

  return trace_remove_internal();
}

uint64_t ktrace_disable_configured(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*(a1 + 224) & 2) == 0)
  {
    return 22;
  }

  v3 = a1;
  atomic_compare_exchange_strong(&live_session, &v3, 0);
  if (v3 != a1)
  {
    return 48;
  }

  return trace_set_enable(0);
}

uint64_t pid_set_applier(uint64_t result, _DWORD *a2)
{
  if (!a2[2])
  {
    result = trace_set_pid_filter(*(*a2 + 560) == 2, result);
    a2[2] = result;
  }

  return result;
}

void __populate_threadmap_block_invoke(uint64_t a1)
{
  kthmap_read_kdebug_map(*(*(a1 + 32) + 296), *(a1 + 40), *(a1 + 48), 0, *(a1 + 56));
  v2 = *(a1 + 40);

  free(v2);
}

void __drain_callbacks_block_invoke(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 157));
  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 720);
    if (v5)
    {
      v6 = *(v4 + 160);
      v7 = v5 > v6;
      v8 = v5 - v6;
      if (!v7)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if (v3 >= v8 << 6)
      {
        v3 = v8 << 6;
      }
    }

    v9 = *(a1 + 48);
    is_64_bit = current_system_is_64_bit();
    _session_process_events(v4, v9, v3, is_64_bit);
  }

  trace_free(*(a1 + 48));
  v11 = *(a1 + 32);
  v12 = *(v11 + 720);
  if (v12 && *(v11 + 160) == v12)
  {

    _session_end_internal(v11, 1, 6);
  }
}

uint64_t __drain_trailing_duration_block_invoke(void *a1)
{
  v2 = atomic_load((a1[4] + 157));
  if ((v2 & 1) == 0)
  {
    v3 = a1[6];
    if (v3 >= 0x40)
    {
      v4 = v3 >> 6;
      v6 = a1[4];
      v5 = a1[5];
      do
      {
        ktrace_time_ringbuffer_handle_tracepoint(*(v6 + 640), v5);
        v5 += 64;
        --v4;
      }

      while (v4);
    }
  }

  v7 = a1[5];

  return trace_free(v7);
}

uint64_t ktrace_exclude_process(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = validate_filter(a1, 1);
  if (!result)
  {
    v5 = strdup(a2);
    if (v5)
    {
      *(a1 + 576) = 1;
      CFSetAddValue(*(a1 + 568), v5);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t validate_filter(uint64_t a1, int a2)
{
  if (*(a1 + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(a1 + 560) == v2 || *(a1 + 576) == v2)
  {
    return 22;
  }

  v3 = *(a1 + 260);
  if (v3)
  {
    return 0;
  }

  *(a1 + 260) = 2;
  return v3;
}

uint64_t ktrace_filter_process(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = validate_filter(a1, 0);
  if (!result)
  {
    v5 = strdup(a2);
    if (v5)
    {
      *(a1 + 576) = 2;
      CFSetAddValue(*(a1 + 568), v5);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t ktrace_exclude_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = validate_filter(a1, 1);
  if (!v4)
  {
    *(a1 + 560) = 1;
    CFSetAddValue(*(a1 + 552), a2);
  }

  return v4;
}

uint64_t ktrace_filter_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = validate_filter(a1, 0);
  if (!v4)
  {
    *(a1 + 560) = 2;
    CFSetAddValue(*(a1 + 552), a2);
  }

  return v4;
}

uint64_t ktrace_ignore_process_filter_for_event(uint64_t a1, void *value)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a1 + 580) = 1;
  CFSetAddValue(*(a1 + 584), value);
  return 0;
}

uint64_t kdebug_wait(unsigned int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 23;
  *v5 = 0x1800000001;
  v4 = a1;
  if (sysctl(v5, 3u, 0, &v4, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_wait_cold_1();
    }

    *__error() = v2;
    if (*__error())
    {
      result = *__error();
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kdebug_read_events(void *a1, size_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 10;
  *v6 = 0x1800000001;
  if (sysctl(v6, 3u, a1, a2, 0, 0) < 0)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_read_events_cold_1(a2);
    }

    *__error() = v4;
    if (*__error())
    {
      result = *__error();
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    result = 0;
    *a2 <<= 6;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kdebug_wait_and_read_events(void *a1, size_t *a2, unsigned int a3)
{
  result = kdebug_wait(a3);
  if (!result)
  {

    return kdebug_read_events(a1, a2);
  }

  return result;
}

uint64_t kdebug_get_flags()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  if (kdebug_get_bufinfo(&v1))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t kdebug_alloc_current_cpu_map(void *a1, size_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v14 = 25;
  size = 0;
  *v13 = 0x1800000001;
  if (sysctl(v13, 3u, 0, &size, 0, 0))
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_alloc_current_cpu_map_cold_1(&size);
    }

    *__error() = v4;
    v5 = *__error();
    if (v5)
    {
      result = v5;
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    v7 = malloc_type_malloc(size, 0x7C44AC97uLL);
    if (!v7)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v8 = v7;
    result = sysctl(v13, 3u, v7, &size, 0, 0);
    if (result)
    {
      v9 = *__error();
      free(v8);
      v10 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        kdebug_alloc_current_cpu_map_cold_2();
      }

      *__error() = v10;
      if (v9)
      {
        result = v9;
      }

      else
      {
        result = 22;
      }
    }

    else
    {
      *a1 = v8;
      *a2 = size;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kdebug_alloc_current_thread_map(uint64_t a1, size_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = 36000;
  v3 = malloc_type_malloc(0x8CA0uLL, 0x49B66139uLL);
  if (!v3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = v3;
  v10 = 21;
  *v9 = 0x1800000001;
  if (sysctl(v9, 3u, v3, a2, 0, 0) < 0)
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_alloc_current_thread_map_cold_1();
    }

    *__error() = v6;
    v7 = *__error();
    free(v4);
    if (v7)
    {
      result = v7;
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kdebug_alloc_thread_map(void *a1, size_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  result = kdebug_get_bufinfo(&v12);
  if (!result)
  {
    if (HIDWORD(v13))
    {
      v6 = 32 * SHIDWORD(v13);
      *a2 = v6;
      v7 = malloc_type_malloc(v6, 0x35954BEuLL);
      if (!v7)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v8 = v7;
      v16 = 12;
      *v15 = 0x1800000001;
      if (sysctl(v15, 3u, v7, a2, 0, 0) < 0)
      {
        v9 = *__error();
        free(v8);
        if (v9 == 22)
        {
          result = kdebug_alloc_current_thread_map(v10, a2);
        }

        else
        {
          v11 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            kdebug_alloc_thread_map_cold_1();
          }

          *__error() = v11;
          if (v9)
          {
            result = v9;
          }

          else
          {
            result = 22;
          }
        }
      }

      else
      {
        result = 0;
        *a1 = v8;
      }
    }

    else
    {
      result = 2;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t ktrace_end_on_event_match(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 760) = *(a2 + 4);
  *(a1 + 728) = v3;
  *(a1 + 744) = v4;
  v6 = *a3;
  v5 = a3[1];
  *(a1 + 800) = *(a3 + 4);
  *(a1 + 768) = v6;
  *(a1 + 784) = v5;
  *(a1 + 828) |= 2u;
  return 0;
}

void ktrace_iterate_threads(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  kthmap_iterate_threads(v3, a2);
}

uint64_t ktrace_set_execnames_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  if (!a2)
  {
    if (*(result + 560) || *(result + 576))
    {
      a2 = 2;
    }

    else
    {
      a2 = 0;
    }
  }

  *(result + 260) = a2;
  return result;
}

uint64_t ktrace_get_execnames_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 260);
}

uint64_t ktrace_get_execname_for_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_name_for_pid(v3, a2);
}

uint64_t ktrace_get_name_for_cpu(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = *(a1 + 352);
  if (result)
  {

    return ktrace_cpus_get_cpu_name(result, a2);
  }

  return result;
}

uint64_t ktrace_get_cpu_is_coproc(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = *(a1 + 352);
  if (result)
  {

    return ktrace_cpus_get_cpu_is_coproc(result, a2);
  }

  return result;
}

uint64_t ktrace_session_get_event_names_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 256);
}

const void *ktrace_name_for_eventid(uint64_t a1, void *a2)
{
  if (*(a1 + 256))
  {
    return kteventnames_name_from_id(a1 + 360, a2);
  }

  else
  {
    return 0;
  }
}

const void *ktrace_eventid_for_name(uint64_t a1, const void *a2)
{
  if (*(a1 + 256))
  {
    return kteventnames_id_from_name(a1 + 360, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_set_uuid_map_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_thread_cputime_enabled_cold_3();
  }

  if (a2 == 2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 284) = a2;
  return result;
}

uint64_t ktrace_get_jetsam_coalitions_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 276);
}

uint64_t ktrace_get_thread_group_flags(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 296);

  return kthmap_flags_for_thread_group(v4, a2, a3);
}

uint64_t ktrace_set_dsc_unslid_base_addresses(unint64_t *a1, uint64_t a2)
{
  _session_ensure_uuidmap(a1);
  v4 = a1[38];

  return ktrace_uuid_map_set_dsc_unslid_base_addresses(v4, a2);
}

uint64_t ktrace_enable_symbolication(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  _session_ensure_uuidmap(a1);
  ktrace_uuid_map_learn_live_kernelmap(a1[38]);
  symbolicator = ktrace_get_symbolicator(a1);
  v7 = a1[38];
  v8 = a1[76];

  return ktrace_symbolicator_enable_symbolication(symbolicator, a2, a3, v7, v8);
}

uint64_t ktrace_get_symbolicator(uint64_t a1)
{
  result = *(a1 + 312);
  if (!result)
  {
    ktrace_symbolicator_create();
  }

  if ((*(a1 + 224) & 0x10) == 0)
  {
    v3 = *(a1 + 608);
    if (v3)
    {
      ktrace_symbolicator_read_file(result, v3);
      *(a1 + 224) |= 0x10u;
      return *(a1 + 312);
    }
  }

  return result;
}

double ktrace_get_uuid_offset_for@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a1 + 304);
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 16);
  switch(v7)
  {
    case 2:
      v14 = *(a2 + 8);
      break;
    case 1:
      v12 = *(a2 + 8);
      v13 = kthmap_uniqueid_for_tid(*(a1 + 296), v12);
      if (v13 == -1)
      {
        v17 = kthmap_pid_for_tid(*(a1 + 296), v12);
        if ((v17 & 0x80000000) == 0)
        {
          v8 = v17;
          v5 = *(a1 + 304);
          goto LABEL_7;
        }

LABEL_18:
        result = 0.0;
        a3[3] = 0u;
        a3[4] = 0u;
        a3[1] = 0u;
        a3[2] = 0u;
        *a3 = 0u;
        return result;
      }

      v14 = v13;
      v5 = *(a1 + 304);
      break;
    case 0:
      v8 = *(a2 + 8);
LABEL_7:
      v9 = *a2;
      v10 = *(a2 + 24) & 1;

      return ktrace_uuid_map_get_offset_for_pid_address(v5, v8, v9, v10, a3);
    default:
      goto LABEL_18;
  }

  v15 = *a2;
  v16 = *(a2 + 24) & 1;

  return ktrace_uuid_map_get_offset_for_address(v5, v14, v15, v16, a3);
}

double ktrace_get_uuid_offset_for_task_address@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v5[0] = a3;
  v5[1] = a2;
  v5[2] = 2;
  v6 = 0;
  return ktrace_get_uuid_offset_for (a1, v5, a4);
}

double ktrace_get_uuid_offset_for_pid_address@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v5[0] = a3;
  v5[1] = a2;
  v5[2] = 0;
  v6 = 0;
  return ktrace_get_uuid_offset_for (a1, v5, a4);
}

double ktrace_get_uuid_offset_for_thread_address@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v5[0] = a3;
  v5[1] = a2;
  v5[2] = 1;
  v6 = 0;
  return ktrace_get_uuid_offset_for (a1, v5, a4);
}

uint64_t ktrace_create_cssymbolicator_for_pid(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 304);

  return ktrace_uuid_map_create_cssymbolicator_for_pid(v2);
}

uint64_t ktrace_create_cssymbolicator_for_task(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 304);

  return ktrace_uuid_map_create_cssymbolicator_for_task(v2);
}

uint64_t ktrace_create_cssymbolicator_for_thread(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (ktrace_get_task_uniqueid_for_thread(a1, a4) != -1)
  {
    return ktrace_uuid_map_create_cssymbolicator_for_task(*(a1 + 304));
  }

  if ((ktrace_get_pid_for_thread(a1, a4) & 0x80000000) != 0)
  {
    return 0;
  }

  return ktrace_uuid_map_create_cssymbolicator_for_pid(*(a1 + 304));
}

UInt8 *ktrace_describe_uuid_offset(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 304);
    symbolicator = ktrace_get_symbolicator(a1);
    v5 = a2[3];
    v13 = a2[2];
    v14 = v5;
    v15 = a2[4];
    v6 = a2[1];
    v11 = *a2;
    v12 = v6;
    result = ktrace_symbolicator_get_description(v3, symbolicator, &v11);
  }

  else
  {
    v8 = a2[3];
    v13 = a2[2];
    v14 = v8;
    v15 = a2[4];
    v9 = a2[1];
    v11 = *a2;
    v12 = v9;
    result = ktrace_uuid_offset_get_description(0, &v11);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_symbolicate_uuid_offset(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  symbolicator = ktrace_get_symbolicator(a1);
  v12 = a2[3];
  v16[2] = a2[2];
  v16[3] = v12;
  v16[4] = a2[4];
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  result = ktrace_symbolicator_symbolicate(symbolicator, v16, a3, a4, a5, a6);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_set_jetsam_coalitions_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  *(result + 276) = a2;
  return result;
}

uint64_t ktrace_get_jetsam_coalition_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_jetsam_coalition_for_tid(v3, a2);
}

uint64_t ktrace_get_jetsam_coalition_for_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_jetsam_coalition_for_pid(v3, a2);
}

uint64_t ktrace_set_thread_groups_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  *(result + 280) = a2;
  return result;
}

uint64_t ktrace_get_thread_groups_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 280);
}

uint64_t ktrace_get_thread_group_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_thread_group_for_tid(v3, a2);
}

char *ktrace_get_thread_group_name(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_name_for_thread_group(v3, a2);
}

uint64_t ktrace::RingBufferImpl::handleTracepoint(uint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*a2 >= *(result + 72))
  {
    v3 = result;
    ktrace::RingBufferImpl::handlerSupportCheckTimeTruncation(result, a2);
    result = ktrace::RingBufferImpl::handlerSupportCheckTimeBackwards(v3, a2);
    v4 = *(v3 + 56);
    v5 = *(v3 + 48) + 48 * v4;
    v6 = *a2;
    v7 = *(a2 + 48);
    *v5 = *a2 & 0xFFFFFFFFFFFFFFLL | (*(a2 + 52) << 56);
    v8 = *(a2 + 40);
    *(v5 + 8) = v7;
    *(v5 + 12) = v8;
    *(v5 + 16) = *(a2 + 8);
    *(v5 + 32) = *(a2 + 24);
    *(v3 + 56) = v4 + 1;
    *(v3 + 80) = v6;
    if (v7 == 117571592)
    {
      *(*(v3 + 32) + 16) = 1;
    }

    if (v4 + 1 == *(v3 + 40))
    {
      v9 = *(v3 + 24);
      if (v9 != *(v3 + 32))
      {
        v10 = 0;
        v11 = MEMORY[0x277D85DF8];
        while (*(v3 + 80) - *(v9 + 8) >= *v3)
        {
          *(v3 + 24) = *v9;
          if (v10)
          {
            result = ktrace::MemoryPool<ktrace::RingBufferHeader>::freeToMemoryPool(*(v3 + 112), v9);
            v9 = v10;
          }

          else
          {
            *(v9 + 16) = 0;
            if ((*(v3 + 16) & 1) == 0)
            {
              fwrite("WARNING: The ring buffer size now covers the full requested ring buffer time.\n", 0x4EuLL, 1uLL, *v11);
              v12 = *__error();
              ktrace_log_init();
              v13 = ktrace_log;
              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v21 = v12;
                _os_log_error_impl(&dword_22ED7A000, v13, OS_LOG_TYPE_ERROR, "WARNING: The ring buffer size now covers the full requested ring buffer time. (%{errno}d)", buf, 8u);
              }

              result = __error();
              *result = v12;
              *(v3 + 16) = 1;
            }
          }

          v10 = v9;
          v9 = *(v3 + 24);
          if (v9 == *(v3 + 32))
          {
            goto LABEL_25;
          }
        }

        if (v10)
        {
          goto LABEL_25;
        }
      }

      result = ktrace::MemoryPool<ktrace::RingBufferHeader>::allocateFromMemoryPool(*(v3 + 112));
      if (result)
      {
        v10 = result;
        v14 = (result + 16);
      }

      else
      {
        v10 = *(v3 + 24);
        if (v10 == *(v3 + 32))
        {
          ktrace::RingBufferImpl::handleTracepoint();
        }

        v14 = (v3 + 16);
        v15 = *(v3 + 16);
        *(v3 + 24) = *v10;
        *(v10 + 16) = 0;
        if (v15 != 1)
        {
          goto LABEL_25;
        }

        fwrite("WARNING: The maximum ring buffer size has been reached. The trace will not be able to cover the full requested ring buffer time.\n", 0x81uLL, 1uLL, *MEMORY[0x277D85DF8]);
        v16 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace::RingBufferImpl::handleTracepoint();
        }

        result = __error();
        *result = v16;
      }

      *v14 = 0;
LABEL_25:
      v17 = *(v3 + 32);
      v18 = *(v3 + 80);
      *v17 = v10;
      v17[1] = v18;
      *v10 = 0;
      *(v3 + 32) = v10;
      *(v3 + 48) = v10 + 24;
      *(v3 + 56) = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

int *ktrace::RingBufferImpl::handlerSupportCheckTimeTruncation(int *result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 7))
  {
    v3 = result;
    v4 = result[23];
    if (!v4)
    {
      fwrite("ERROR: Timestamp size exceeded. Trace file will probably be corrupted and unreadable. You can fix this by rebooting.\n", 0x75uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace::RingBufferImpl::handlerSupportCheckTimeTruncation();
      }

      result = __error();
      *result = v5;
      *(v3 + 96) = 1;
      v4 = v3[23];
    }

    v3[23] = v4 + 1;
  }

  v6 = *(a2 + 40);
  if (HIDWORD(v6))
  {
    fprintf(*MEMORY[0x277D85DF8], "WARNING: Thread id size exceeded for debugid: 0x%08x cpuid: %-2u tid: 0x%llx\n", *(a2 + 48), *(a2 + 52), v6);
    v7 = *__error();
    ktrace_log_init();
    v8 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 48);
      v11 = *(a2 + 52);
      v12 = *(a2 + 40);
      *buf = 67109888;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 1024;
      v20 = v7;
      _os_log_error_impl(&dword_22ED7A000, v8, OS_LOG_TYPE_ERROR, "WARNING: Thread id size exceeded for debugid: 0x%08x cpuid: %-2u tid: 0x%llx (%{errno}d)", buf, 0x1Eu);
    }

    result = __error();
    *result = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

int *ktrace::RingBufferImpl::handlerSupportCheckTimeBackwards(int *result, uint64_t a2)
{
  if (*(result + 10) > *a2)
  {
    v2 = result;
    v3 = result[22];
    if (!v3)
    {
      fprintf(*MEMORY[0x277D85DF8], "ERROR: Timestamps out of order for class 0x%x. Trace file will probably be corrupted and unreadable. Please file a bug against Purple Ariadne with this trace.\n", *(a2 + 51));
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace::RingBufferImpl::handlerSupportCheckTimeBackwards(a2 + 48);
      }

      result = __error();
      *result = v5;
      *(v2 + 96) = 1;
      v3 = v2[22];
    }

    v2[22] = v3 + 1;
  }

  return result;
}

uint64_t ktrace::MemoryPool<ktrace::RingBufferHeader>::freeToMemoryPool(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 48));
  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  ++*(a1 + 8);
  ktrace::MemoryPool<ktrace::RingBufferHeader>::checkPinnedThresholds(a1);

  return pthread_mutex_unlock((a1 + 48));
}

void *ktrace::MemoryPool<ktrace::RingBufferHeader>::allocateFromMemoryPool(uint64_t a1)
{
  pthread_mutex_lock((a1 + 48));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = *v2;
    --*(a1 + 8);
    ktrace::MemoryPool<ktrace::RingBufferHeader>::checkPinnedThresholds(a1);
  }

  pthread_mutex_unlock((a1 + 48));
  return v2;
}

_DWORD *ktrace::RingBufferImpl::handleCompletion(ktrace::RingBufferImpl *this, ktrace_file *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  appended = ktrace_file_append_start(a2, 20982, 0, 0);
  if (appended)
  {
    v6 = appended;
    v7 = *(this + 4);
    if (v4 != v7)
    {
      v8 = MEMORY[0x277D85DF8];
      do
      {
        if (*(v4 + 16) == 1)
        {
          v9 = *(this + 25);
          if (!v9)
          {
            fwrite("ERROR: The trace buffer has lost samples. This is currently not supported by the UI. Run with --help-dropped-events for additional help.\n", 0x89uLL, 1uLL, *v8);
            v10 = *__error();
            ktrace_log_init();
            v11 = ktrace_log;
            if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v24) = v10;
              _os_log_error_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_ERROR, "ERROR: The trace buffer has lost samples. This is currently not supported by the UI. Run with --help-dropped-events for additional help. (%{errno}d)", buf, 8u);
            }

            *__error() = v10;
            v9 = *(this + 25);
          }

          *(this + 25) = v9 + 1;
          *(this + 96) = 1;
        }

        v12 = 48 * *(this + 10);
        if (ktrace_file_append_data(a2, v6, v4 + 24, v12))
        {
          v13 = v12 / 0x30;
          fprintf(*v8, "ERROR: Failed to write %ld kdebug events into chunk in output file\n", v12 / 0x30);
          v14 = *__error();
          ktrace_log_init();
          v15 = ktrace_log;
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v24 = v13;
            v25 = 1024;
            v26 = v14;
            _os_log_error_impl(&dword_22ED7A000, v15, OS_LOG_TYPE_ERROR, "ERROR: Failed to write %ld kdebug events into chunk in output file (%{errno}d)", buf, 0x12u);
          }

          *__error() = v14;
        }

        v4 = *v4;
        v7 = *(this + 4);
      }

      while (v4 != v7);
    }

    if (*(v7 + 16) == 1)
    {
      v16 = *(this + 25);
      if (!v16)
      {
        fwrite("ERROR: The trace buffer has lost samples. This is currently not supported by the UI. Run with --help-dropped-events for additional help.\n", 0x89uLL, 1uLL, *MEMORY[0x277D85DF8]);
        v17 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace::RingBufferImpl::handleCompletion();
        }

        *__error() = v17;
        v16 = *(this + 25);
        v7 = *(this + 4);
      }

      *(this + 25) = v16 + 1;
      *(this + 96) = 1;
    }

    v18 = *(this + 14);
    if (ktrace_file_append_data(a2, v6, (v7 + 24), 48 * v18))
    {
      fprintf(*MEMORY[0x277D85DF8], "ERROR: Failed to write %ld kdebug events into chunk in output file\n", v18);
      v19 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace::RingBufferImpl::handleCompletion();
      }

      *__error() = v19;
    }

    result = ktrace_file_append_finish(a2, v6);
  }

  else
  {
    fwrite("ERROR: Failed to create kdebug events chunk in output file\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    v21 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace::RingBufferImpl::handleCompletion();
    }

    result = __error();
    *result = v21;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void ktrace::RingBufferImpl::RingBufferImpl(ktrace::RingBufferImpl *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 1;
  *(this + 10) = 50000;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  v11 = 0;
  v12 = 8;
  if (!sysctlbyname("hw.memsize", &v11, &v12, 0, 0))
  {
    v4 = v11 >> 20;
    v5 = *(this + 3);
    if (!v5)
    {
      v5 = v4 >> 3;
      *(this + 3) = v4 >> 3;
    }

    v6 = 3 * v4 / 4;
    if (v6 < v5)
    {
      v5 = v6;
    }

    if (v5 >= 0xFF8)
    {
      v5 = 4088;
    }

    if (v5 <= 2)
    {
      v5 = 2;
    }

    *(this + 2) = v5;
    mach_timebase_info(&info);
    *this = info.denom * a2 / info.numer;
    v7 = *(this + 2);
    ktrace::MemoryPool<ktrace::RingBufferHeader>::create();
  }

  v8 = *__error();
  perror("ERROR: Couldn't get total memory size");
  v9 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    ktrace::RingBufferImpl::RingBufferImpl();
  }

  *__error() = v9;
  exit(1);
}

void sub_22EDAEC00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<ktrace::MemoryPool<ktrace::RingBufferHeader>>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EDAEDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  std::default_delete<ktrace::MemoryPool<ktrace::RingBufferHeader>>::operator()[abi:ne200100](&a10, v10);
  _Unwind_Resume(a1);
}

uint64_t *ktrace_time_ringbuffer_destroy(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    *result = 0;
    if (v1)
    {
      std::default_delete<ktrace::RingBufferImpl>::operator()[abi:ne200100](result, v1);
    }

    JUMPOUT(0x2318F6E50);
  }

  return result;
}

uint64_t ktrace_time_ringbuffer_tracing_started(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    *(*v1 + 72) = result;
  }

  return result;
}

uint64_t *ktrace_time_ringbuffer_handle_tracepoint(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return ktrace::RingBufferImpl::handleTracepoint(*result, a2);
    }
  }

  return result;
}

ktrace::RingBufferImpl **ktrace_time_ringbuffer_tracing_stopped(ktrace::RingBufferImpl **result, ktrace_file *a2)
{
  if (result)
  {
    return ktrace::RingBufferImpl::handleCompletion(*result, a2);
  }

  return result;
}

void sub_22EDAEFA8(_Unwind_Exception *a1)
{
  MEMORY[0x2318F6E50](v2, 0x1020C40FC637495);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    std::default_delete<ktrace::RingBufferImpl>::operator()[abi:ne200100](v1, v4);
  }

  _Unwind_Resume(a1);
}

void std::default_delete<ktrace::RingBufferImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 112);
    v3 = *(a2 + 112);
    *v2 = 0;
    if (v3)
    {
      std::default_delete<ktrace::MemoryPool<ktrace::RingBufferHeader>>::operator()[abi:ne200100](v2, v3);
    }

    JUMPOUT(0x2318F6E50);
  }
}

void ktrace::MemoryPool<ktrace::RingBufferHeader>::checkPinnedThresholds(uint64_t a1)
{
  if (!*(a1 + 44))
  {
    if ((v3 = *(a1 + 8), v3 < *(a1 + 32)) && *(a1 + 24) || *(a1 + 36) < v3)
    {
      v4 = *(a1 + 120);
      if (v4)
      {
        block[5] = v1;
        block[6] = v2;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6ktrace10MemoryPoolINS_16RingBufferHeaderEE21checkPinnedThresholdsEv_block_invoke;
        block[3] = &__block_descriptor_tmp_7;
        block[4] = a1;
        dispatch_async(v4, block);
      }
    }
  }
}

uint64_t ktrace::MemoryPool<ktrace::RingBufferHeader>::reapMemory(int *a1)
{
  pthread_mutex_lock((a1 + 12));
  v2 = a1[2];
  v4 = a1[8];
  v3 = a1[9];
  if (v2 >= v4)
  {
    if (v3 >= v2)
    {
      goto LABEL_21;
    }

    v5 = v2 - (v3 + v4) / 2;
    v6 = 4;
  }

  else
  {
    v5 = (v3 + v4) / 2 - v2;
    v6 = 6;
  }

  v7 = *&a1[v6];
  if (v7)
  {
    if (v5 < 1)
    {
      ktrace::MemoryPool<ktrace::RingBufferHeader>::reapMemory();
    }

    v8 = 1;
    v9 = *&a1[v6];
    if (v5 != 1)
    {
      while (1)
      {
        v10 = *v9;
        if (!*v9)
        {
          break;
        }

        ++v8;
        v9 = *v9;
        if (v5 == v8)
        {
          v9 = v10;
          v8 = v5;
          break;
        }
      }
    }

    v11 = *v9;
    if (v2 >= v4)
    {
      *(a1 + 2) = v11;
      a1[2] = v2 - v8;
    }

    else
    {
      *(a1 + 3) = v11;
    }

    *v9 = 0;
    a1[11] = 1;
    pthread_mutex_unlock((a1 + 12));
    v12 = v7;
    do
    {
      if (v2 >= v4)
      {
        madvise(v12, *a1, 5);
      }

      v12 = *v12;
    }

    while (v12);
    pthread_mutex_lock((a1 + 12));
    a1[11] = 0;
    if (v2 >= v4)
    {
      *v9 = *(a1 + 3);
      *(a1 + 3) = v7;
    }

    else
    {
      *v9 = *(a1 + 2);
      *(a1 + 2) = v7;
      a1[2] += v8;
    }
  }

LABEL_21:

  return pthread_mutex_unlock((a1 + 12));
}

void std::default_delete<ktrace::MemoryPool<ktrace::RingBufferHeader>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 120);
    if (v3)
    {
      dispatch_sync(v3, &__block_literal_global_5);
      *(a2 + 120) = 0;
    }

    JUMPOUT(0x2318F6E50);
  }
}

void *ktrace_set_cleanup_handler(uint64_t a1, void *aBlock)
{
  if (*(a1 + 688))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = _Block_copy(aBlock);
  *(a1 + 688) = result;
  return result;
}

void print_filter(uint64_t a1)
{
  printf("Filter: ");
  if (a1)
  {
    v2 = kdebug_alloc_filter_description(a1);
    if (!v2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v3 = v2;
    puts(v2);

    free(v3);
  }

  else
  {

    puts("ALL");
  }
}

BOOL __ktrace_start_block_invoke(uint64_t a1, void *a2)
{
  v3 = ktrace_config_create(a2);
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    typefilter = ktrace_config_kdebug_get_typefilter(v3);
    print_filter(typefilter);
    ktrace_config_destroy(v4);
  }

  return v4 == 0;
}

uint64_t ktrace_convert_timestamp_to_nanoseconds(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 452))
  {
    return 45;
  }

  v4 = kttimesync_ns_from_timestamp(a1 + 432, a2);
  result = 0;
  *a3 = v4;
  return result;
}

uint64_t ktrace_convert_timestamp_to_walltime(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*(a1 + 480) & 2) == 0)
  {
    return 45;
  }

  v5 = kttimesync_wall_from_timestamp(a1 + 432, a2);
  result = 0;
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t ktrace_convert_continuous_to_walltime(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a1 + 480);
  if ((v5 & 8) == 0)
  {
    a2 = kttimesync_abs_from_cont(a1 + 432, a2);
    v5 = *(a1 + 480);
  }

  if ((v5 & 2) == 0)
  {
    return 45;
  }

  v7 = kttimesync_wall_from_timestamp(a1 + 432, a2);
  result = 0;
  *a3 = v7;
  a3[1] = v8;
  return result;
}

unint64_t ktrace_get_current_timestamp(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(a1 + 496);
  v3 = a1 + 432;
  if ((v1 & 0x80) != 0)
  {
    return kttimesync_cont_from_timestamp(v3, v2);
  }

  else
  {
    return kttimesync_abs_from_timestamp(v3, v2);
  }
}

uint64_t ktrace_set_walltimes_enabled(uint64_t result, int a2)
{
  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  *(result + 264) = a2;
  return result;
}

unint64_t ktrace_get_absolute_from_timestamp(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 224) & 0x80) != 0)
  {
    return kttimesync_abs_from_timestamp(a1 + 432, a2);
  }

  else
  {
    return a2;
  }
}

unint64_t ktrace_get_earliest_timestamp(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(a1 + 504);
  v3 = a1 + 432;
  if ((v1 & 0x80) != 0)
  {
    return kttimesync_cont_from_timestamp(v3, v2);
  }

  else
  {
    return kttimesync_abs_from_timestamp(v3, v2);
  }
}

uint64_t ktrace_set_continuous_timestamps(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  if (a2)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(result + 224) = v2 & 0xFF7D | v3;
  return result;
}

uint64_t ktrace_file_append_ioreg(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ktrace_merge_ioreg_service(Mutable, "IOMobileFramebuffer");
  ktrace_merge_ioreg_service(Mutable, "AGXAccelerator");
  if (!Mutable)
  {
    return 1;
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(Mutable);
  if (Data)
  {
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    appended = ktrace_file_append_chunk(a1, 32776, 0, 0, BytePtr, Length);
    CFRelease(Data);
    return appended != 0;
  }

  else
  {
    v8 = *__error();
    ktrace_log_init();
    v9 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_ioreg_cold_1(v8, v9);
    }

    *__error() = v8;
    return 22;
  }
}

void ktrace_merge_ioreg_service(__CFDictionary *a1, char *name)
{
  existing = 0;
  v4 = IOServiceMatching(name);
  if (IOServiceGetMatchingServices(0, v4, &existing))
  {
    v5 = 0;
LABEL_8:
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    while (1)
    {
      v7 = IOIteratorNext(existing);
      if (!v7)
      {
        v5 = Mutable;
        goto LABEL_8;
      }

      value = 0;
      if (IORegistryEntryCreateCFProperties(v7, &value, 0, 0))
      {
        break;
      }

      CFArrayAppendValue(Mutable, value);
      CFRelease(value);
    }

    v5 = 0;
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    v8 = CFStringCreateWithCString(0, name, 0x8000100u);
    if (!v8)
    {
      v8 = CFStringCreateWithCString(0, name, 0x100u);
    }

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"!!!invalid-enc!!!";
    }

    CFAutorelease(v9);
    CFDictionarySetValue(a1, v9, v5);
    CFRelease(v5);
  }
}

os_log_t __ktrace_log_init_block_invoke()
{
  ktrace_log = os_log_create("com.apple.libktrace", "ktrace");
  result = os_log_create("com.apple.libktrace", "ktrace_file");
  ktrace_file_log = result;
  return result;
}

const char *ktrace_machine_sw_platform_string(unsigned int a1)
{
  if (a1 > 6)
  {
    return "unknown SW platform";
  }

  else
  {
    return off_27886EA18[a1];
  }
}

uint64_t ktrace_machine_create(uint64_t *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = ktrace_chunk_tag(a1);
  if (v2 != 20995)
  {
    v12 = v2;
    v3 = 0;
    v5 = 0;
    v7 = 0;
    v13 = a1;
LABEL_9:
    if (v12 != 35840)
    {
      goto LABEL_36;
    }

    if (ktrace_chunk_version_major(v13) > 1)
    {
      v11 = 0;
      dict = 0;
      v9 = 45;
      if (v7)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (!v5)
      {
        if (!v9)
        {
          return v11;
        }

        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v14 = ktrace_chunk_version_minor(v13);
    v15 = ktrace_chunk_size(v13);
    v16 = ktrace_chunk_map_data(v13, 0, v15);
    if (!v16)
    {
LABEL_36:
      v11 = 0;
      dict = 0;
      v9 = 0;
      if (!v7)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v17 = v16;
    dict = create_dict(v16, v15);
    if (!dict)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_81;
    }

    v18 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10700402D9E20E3uLL);
    v11 = v18;
    if (!v18)
    {
      v9 = 12;
      goto LABEL_81;
    }

    v26 = v14;
    v18[2] = -1;
    *(v18 + 204) = ktrace_file_is_64_bit(*v13);
    *(v11 + 216) = dict;
    if (!dict_string(dict, @"kern_version", 0, 0, (v11 + 40)) && !dict_string(dict, @"boot_args", 0, 0, (v11 + 48)) && !dict_uint64(dict, @"hw_memsize", (v11 + 8)) && !dict_uint32(dict, @"hw_pagesize", (v11 + 168)) && !dict_uint32(dict, @"vm_pagesize", (v11 + 172)) && !dict_string(dict, @"os_name", 0, 0, (v11 + 56)) && !dict_string(dict, @"os_version", 0, 0, (v11 + 64)) && !dict_string(dict, @"os_build", 0, 0, (v11 + 80)) && !dict_string(dict, @"hw_model", 0, 0, (v11 + 88)) && !dict_int(dict, @"cpu_type", (v11 + 192)) && !dict_int(dict, @"cpu_subtype", (v11 + 196)) && !dict_int(dict, @"cpu_family", (v11 + 200)) && !dict_uint32(dict, @"active_cpus", (v11 + 176)) && !dict_uint32(dict, @"max_cpus", (v11 + 180)))
    {
      dict_BOOL(dict, @"apple_internal", (v11 + 205));
    }

    if (!v14)
    {
LABEL_80:
      v9 = 0;
LABEL_81:
      ktrace_chunk_unmap_data(v13, v17, v15);
      if (v7)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v19 = *(v11 + 216);
    dict_string(v19, @"name", 0, 0, (v11 + 104));
    dict_string(v19, @"hostname", 0, 0, (v11 + 112));
    v25 = v15;
    if (dict_string(v19, @"device_uuid", 0, 0, (v11 + 128)))
    {
      v20 = "device UUID";
    }

    else if (dict_string(v19, @"boot_uuid", 0, 0, (v11 + 120)))
    {
      v20 = "boot UUID";
    }

    else if (dict_uint32(v19, @"vm_pages", (v11 + 184)))
    {
      v20 = "VM pages";
    }

    else if (dict_uint64(v19, @"min_kern_vaddr", (v11 + 16)))
    {
      v20 = "minimum kernel address";
    }

    else if (dict_uint64(v19, @"root_vol_size", (v11 + 32)))
    {
      v20 = "root volume size";
    }

    else if (dict_uint32(v19, @"physical_cpus", (v11 + 188)))
    {
      v20 = "physical CPUs";
    }

    else if (dict_BOOL(v19, @"internal_content", (v11 + 206)))
    {
      v20 = "internal content";
    }

    else
    {
      *v11 |= 1uLL;
      if (dict_BOOL(v19, @"hyperthreading", (v11 + 207)))
      {
        v20 = "hyperthreading";
      }

      else
      {
        *v11 |= 2uLL;
        if (!dict_BOOL(v19, @"thread_groups", (v11 + 208)))
        {
          *v11 |= 4uLL;
LABEL_73:
          v15 = v25;
          if (v26 != 1)
          {
            ktrace_machine_v1_2(v11);
            if (v26 >= 3)
            {
              ktrace_machine_v1_3(v11);
              if (v26 != 3)
              {
                ktrace_machine_v1_4(v11);
                if (v26 >= 5)
                {
                  dict_string(*(v11 + 216), @"os_version_extra", 0, 0, (v11 + 72));
                  if (v26 != 5)
                  {
                    dict_string(*(v11 + 216), @"hw_product", 0, 0, (v11 + 96));
                    if (v26 >= 7)
                    {
                      ktrace_machine_v1_7(v11);
                    }
                  }
                }
              }
            }
          }

          goto LABEL_80;
        }

        v20 = "thread groups";
      }
    }

    v24 = v20;
    v22 = *__error();
    ktrace_log_init();
    v23 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_cold_1(v24, v22, v23);
    }

    *__error() = v22;
    goto LABEL_73;
  }

  v3 = ktrace_chunk_size_t(a1);
  v4 = ktrace_chunk_map_data(a1, 0, v3);
  if (!v4)
  {
    v9 = *__error();
    if (v9)
    {
LABEL_47:
      v11 = 0;
      *__error() = v9;
      return v11;
    }

    return 0;
  }

  v5 = v4;
  v6 = ktrace_file_open_memory(v4, v3, 0, 0);
  if (v6)
  {
    v7 = v6;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 0x40000000;
    v27[2] = __ktrace_machine_create_block_invoke;
    v27[3] = &unk_27886E9D0;
    v27[4] = &v28;
    v8 = ktrace_file_header_iterate(v6, 0, v27);
    if (v8)
    {
      v9 = v8;
      _Block_object_dispose(&v28, 8);
      dict = 0;
      v11 = 0;
LABEL_37:
      ktrace_file_close(v7);
      goto LABEL_38;
    }

    v13 = v29[3];
    v12 = ktrace_chunk_tag(v13);
    _Block_object_dispose(&v28, 8);
    goto LABEL_9;
  }

  v11 = 0;
  dict = 0;
  v9 = *__error();
LABEL_42:
  ktrace_chunk_unmap_data(a1, v5, v3);
  if (v9)
  {
LABEL_43:
    if (v11)
    {
      ktrace_machine_destroy(v11);
    }

    if (dict)
    {
      CFRelease(dict);
    }

    goto LABEL_47;
  }

  return v11;
}

BOOL __ktrace_machine_create_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 35840)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v4 != 35840;
}

_DWORD *ktrace_machine_v1_2(uint64_t a1)
{
  result = dict_uint64(*(a1 + 216), @"max_kern_vaddr", (a1 + 24));
  if (result)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_2_cold_1();
    }

    result = __error();
    *result = v2;
  }

  return result;
}

_DWORD *ktrace_machine_v1_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 216);
  v3 = dict_uint32(v2, @"max_clusters", (a1 + 160));
  if (v3)
  {
    *__error() = v3;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_3_cold_1();
    }

    goto LABEL_12;
  }

  v13 = 0;
  v5 = dict_uint32_arr(v2, @"cluster_by_cpu", (a1 + 136), &v13);
  if (v5)
  {
    *__error() = v5;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_3_cold_2();
    }

    goto LABEL_12;
  }

  if (v13 != *(a1 + 180))
  {
    *__error() = 22;
    v4 = *__error();
    ktrace_log_init();
    v7 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 180);
      *buf = 67109632;
      v15 = v11;
      v16 = 1024;
      v17 = v13;
      v18 = 1024;
      v19 = v4;
      v9 = "mismatched number of CPUs for clusters, %u in machine and %u in array (%{errno}d)";
      goto LABEL_15;
    }

LABEL_12:
    result = __error();
    *result = v4;
    goto LABEL_13;
  }

  v12 = 0;
  result = dict_uint64_arr(v2, @"cluster_flags", (a1 + 144), &v12);
  if (v12 != *(a1 + 160))
  {
    *__error() = 22;
    v4 = *__error();
    ktrace_log_init();
    v7 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 160);
      *buf = 67109632;
      v15 = v8;
      v16 = 1024;
      v17 = v12;
      v18 = 1024;
      v19 = v4;
      v9 = "mismatched number of clusters, %u in machine and %u inarray (%{errno}d)";
LABEL_15:
      _os_log_error_impl(&dword_22ED7A000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x14u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *ktrace_machine_v1_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 216);
  v3 = dict_uint32(v2, @"max_dies", (a1 + 164));
  if (v3)
  {
    *__error() = v3;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_4_cold_1();
    }

LABEL_10:
    result = __error();
    *result = v4;
    goto LABEL_11;
  }

  v9 = 0;
  result = dict_uint32_arr(v2, @"die_by_cpu", (a1 + 152), &v9);
  if (result)
  {
    *__error() = result;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_4_cold_2();
    }

    goto LABEL_10;
  }

  if (v9 != *(a1 + 180))
  {
    *__error() = 22;
    v4 = *__error();
    ktrace_log_init();
    v6 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 180);
      *buf = 67109632;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      v14 = 1024;
      v15 = v4;
      _os_log_error_impl(&dword_22ED7A000, v6, OS_LOG_TYPE_ERROR, "mismatched number of CPUs for dies, %u in machine and %u in array (%{errno}d)", buf, 0x14u);
    }

    goto LABEL_10;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *ktrace_machine_v1_7(uint64_t a1)
{
  result = dict_uint32(*(a1 + 216), @"sw_platform", (a1 + 212));
  if (result)
  {
    *__error() = result;
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_v1_7_cold_1();
    }

    result = __error();
    *result = v2;
  }

  return result;
}

uint64_t ktrace_machine_kernel_version(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 40);
}

uint64_t ktrace_machine_boot_args(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 48);
}

uint64_t ktrace_machine_memory_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 8);
}

uint64_t ktrace_machine_hw_page_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 168);
}

uint64_t ktrace_machine_vm_page_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 172);
}

uint64_t ktrace_machine_os_name(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 56);
}

uint64_t ktrace_machine_os_version(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 64);
}

uint64_t ktrace_machine_os_version_extra(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 72);
}

uint64_t ktrace_machine_os_build(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 80);
}

uint64_t ktrace_machine_model(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 88);
}

uint64_t ktrace_machine_product(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 96);
}

uint64_t ktrace_machine_cpu_type(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 192);
}

uint64_t ktrace_machine_cpu_subtype(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 196);
}

uint64_t ktrace_machine_cpu_family(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 200);
}

uint64_t ktrace_machine_active_cpus(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 176);
}

uint64_t ktrace_machine_max_cpus(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 180);
}

uint64_t ktrace_machine_max_clusters(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 160);
}

uint64_t ktrace_machine_cpu_cluster(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 136);
  if (!v3)
  {
    return 45;
  }

  if (*(a1 + 180) <= a2)
  {
    return 34;
  }

  result = 0;
  *a3 = *(v3 + 4 * a2);
  return result;
}

uint64_t ktrace_machine_cluster_flags(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 144);
  if (!v3)
  {
    return 45;
  }

  if (*(a1 + 160) <= a2)
  {
    return 34;
  }

  result = 0;
  *a3 = *(v3 + 8 * a2);
  return result;
}

uint64_t ktrace_machine_cpu_die(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 152);
  if (!v3)
  {
    return 45;
  }

  if (*(a1 + 180) <= a2)
  {
    return 34;
  }

  result = 0;
  *a3 = *(v3 + 4 * a2);
  return result;
}

uint64_t ktrace_machine_name(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 104);
}

uint64_t ktrace_machine_hostname(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 112);
}

uint64_t ktrace_machine_device_uuid(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 128);
}

uint64_t ktrace_machine_boot_uuid(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 120);
}

unint64_t ktrace_machine_vm_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 184) * *(a1 + 172);
}

uint64_t ktrace_machine_physical_cpus(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 188);
}

uint64_t ktrace_machine_root_volume_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 32);
}

uint64_t ktrace_machine_vm_pages(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 184);
}

uint64_t ktrace_machine_apple_internal(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 205);
}

uint64_t ktrace_machine_has_internal_content(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 & 1) == 0)
  {
    return 45;
  }

  result = 0;
  *a2 = a1[206];
  return result;
}

uint64_t ktrace_machine_has_hyperthreading(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 & 2) == 0)
  {
    return 45;
  }

  result = 0;
  *a2 = a1[207];
  return result;
}

uint64_t ktrace_machine_has_thread_groups(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 & 4) == 0)
  {
    return 45;
  }

  result = 0;
  *a2 = a1[208];
  return result;
}

uint64_t ktrace_machine_min_kernel_vaddr(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 16);
  if (v2 == -1)
  {
    return 45;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t ktrace_machine_max_kernel_vaddr(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 45;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t ktrace_machine_print_description(uint64_t a1, FILE *a2)
{
  v4 = ktrace_machine_kernel_version(a1);
  fprintf(a2, "kernel version: %s\n", v4);
  v5 = ktrace_machine_boot_args(a1);
  fprintf(a2, "boot-args: %s\n", v5);
  v6 = ktrace_machine_os_name(a1);
  v7 = ktrace_machine_os_version(a1);
  v8 = ktrace_machine_os_build(a1);
  v9 = ktrace_machine_sw_platform_string(*(a1 + 212));
  fprintf(a2, "OS: %s %s (%s, %s)", v6, v7, v8, v9);
  v10 = ktrace_machine_os_version_extra(a1);
  if (v10)
  {
    fprintf(a2, " [%s]", v10);
  }

  fputc(10, a2);
  v11 = ktrace_machine_model(a1);
  fprintf(a2, "HW model: %s\n", v11);
  v12 = ktrace_machine_product(a1);
  fprintf(a2, "HW product: %s\n", v12);
  v13 = ktrace_machine_memory_size(a1);
  fprintf(a2, "memory size: %'llu\n", v13);
  v14 = ktrace_machine_vm_size(a1);
  if (v14)
  {
    fprintf(a2, "VM size: %'llu", v14);
    v15 = ktrace_machine_vm_pages(a1);
    if (v15)
    {
      fprintf(a2, " (%'llu pages)", v15);
    }

    fputc(10, a2);
  }

  v16 = ktrace_machine_hw_page_size(a1);
  fprintf(a2, "HW page size: %u\n", v16);
  v17 = ktrace_machine_vm_page_size(a1);
  fprintf(a2, "VM page size: %u\n", v17);
  active = ktrace_machine_active_cpus(a1);
  fprintf(a2, "active CPUS: %u\n", active);
  v19 = ktrace_machine_max_cpus(a1);
  fprintf(a2, "max CPUS: %u\n", v19);
  v20 = ktrace_machine_physical_cpus(a1);
  if (v20)
  {
    fprintf(a2, "physical CPUS: %u\n", v20);
  }

  v21 = ktrace_machine_cpu_type(a1);
  fprintf(a2, "CPU type: %#x\n", v21);
  v22 = ktrace_machine_cpu_subtype(a1);
  fprintf(a2, "CPU subtype: %#x\n", v22);
  v23 = ktrace_machine_cpu_family(a1);
  fprintf(a2, "CPU family: %#x\n", v23);
  v24 = *(a1 + 164);
  if (v24 >= 2)
  {
    fprintf(a2, "max dies: %u\n", *(a1 + 164));
  }

  v25 = ktrace_machine_max_clusters(a1);
  if (v25)
  {
    v26 = v25;
    fprintf(a2, "max clusters: %u\n", v25);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        fprintf(a2, "\tCPU %u: cluster ", i);
        LODWORD(v47) = 0;
        if (ktrace_machine_cpu_cluster(a1, i, &v47))
        {
          fwrite("???", 3uLL, 1uLL, a2);
        }

        else
        {
          fprintf(a2, "%u", v47);
        }

        if (v24 < 2)
        {
          fputc(10, a2);
        }

        else
        {
          fwrite(", die ", 6uLL, 1uLL, a2);
          LODWORD(v45) = 0;
          if (ktrace_machine_cpu_die(a1, i, &v45))
          {
            fwrite("???\n", 4uLL, 1uLL, a2);
          }

          else
          {
            fprintf(a2, "%u\n", v45);
          }
        }
      }
    }

    for (j = 0; v26 != j; ++j)
    {
      fprintf(a2, "\tcluster %u:", j);
      v47 = 0;
      v29 = ktrace_machine_cluster_flags(a1, j, &v47);
      if (v29)
      {
        v30 = strerror(v29);
        fprintf(a2, " ??? (%s)", v30);
      }

      else
      {
        v31 = v47;
        if (v47)
        {
          fwrite(" EFFICIENT", 0xAuLL, 1uLL, a2);
          if ((v31 & 2) != 0)
          {
LABEL_33:
            fwrite(" PERFORMANT", 0xBuLL, 1uLL, a2);
            if ((v31 & 4) == 0)
            {
              goto LABEL_30;
            }

LABEL_29:
            fwrite(" M", 2uLL, 1uLL, a2);
            goto LABEL_30;
          }
        }

        else if ((v47 & 2) != 0)
        {
          goto LABEL_33;
        }

        if ((v31 & 4) != 0)
        {
          goto LABEL_29;
        }
      }

LABEL_30:
      fputc(10, a2);
    }
  }

  v46 = 0;
  if (ktrace_machine_has_internal_content(a1, &v46))
  {
    v32 = ktrace_machine_apple_internal(a1);
    v33 = "Apple Internal: %s\n";
  }

  else
  {
    v33 = "Apple Internal content: %s\n";
    v32 = v46;
  }

  if (v32)
  {
    v34 = "YES";
  }

  else
  {
    v34 = "NO";
  }

  fprintf(a2, v33, v34);
  v35 = ktrace_machine_name(a1);
  if (v35)
  {
    fprintf(a2, "name: %s\n", v35);
  }

  v36 = ktrace_machine_hostname(a1);
  if (v36)
  {
    fprintf(a2, "hostname: %s\n", v36);
  }

  v37 = ktrace_machine_device_uuid(a1);
  if (v37)
  {
    fprintf(a2, "device UUID: %s\n", v37);
  }

  v38 = ktrace_machine_boot_uuid(a1);
  if (v38)
  {
    fprintf(a2, "boot UUID: %s\n", v38);
  }

  v47 = -1;
  if (!ktrace_machine_min_kernel_vaddr(a1, &v47))
  {
    fprintf(a2, "min kern vaddr: %#llx\n", v47);
  }

  v45 = -1;
  if (!ktrace_machine_max_kernel_vaddr(a1, &v45))
  {
    fprintf(a2, "max kern vaddr: %#llx\n", v45);
  }

  v39 = ktrace_machine_root_volume_size(a1);
  if (v39)
  {
    fprintf(a2, "root volume size: %'llu\n", v39);
  }

  v44 = 0;
  if (!ktrace_machine_has_hyperthreading(a1, &v44))
  {
    if (v44)
    {
      v40 = "YES";
    }

    else
    {
      v40 = "NO";
    }

    fprintf(a2, "hyperthreading: %s\n", v40);
  }

  v43 = 0;
  if (!ktrace_machine_has_thread_groups(a1, &v43))
  {
    if (v43)
    {
      v41 = "YES";
    }

    else
    {
      v41 = "NO";
    }

    fprintf(a2, "thread groups: %s\n", v41);
  }

  return 0;
}

FILE *ktrace_machine_copy_description(uint64_t a1)
{
  v4 = 0;
  __bufp = 0;
  result = open_memstream(&__bufp, &v4);
  if (result)
  {
    v3 = result;
    ktrace_machine_print_description(a1, result);
    fclose(v3);
    return __bufp;
  }

  return result;
}

uint64_t ktrace_file_create_machine(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __ktrace_file_create_machine_block_invoke;
  v3[3] = &unk_27886E9F8;
  v3[4] = &v4;
  ktrace_file_header_iterate(a1, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __ktrace_file_create_machine_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 35840)
  {
    *(*(*(a1 + 32) + 8) + 24) = ktrace_machine_create(a2);
  }

  return v4 != 35840;
}

uint64_t ktrace_start_writing_ktrace_file(unint64_t a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    ktrace_start_writing_fd_cold_3();
  }

  *(a1 + 648) = a2;
  if (aBlock)
  {
    *(a1 + 664) = _Block_copy(aBlock);
  }

  if (a5)
  {
    *(a1 + 672) = _Block_copy(a5);
  }

  *(a1 + 656) = a3;
  if (*(a1 + 4) != 2)
  {
    *(a1 + 4) = 1;
  }

  if (*(a2 + 16) == 4)
  {
    ktrace_file_write_header_system_default(a2);
  }

  return ktrace_start(a1, 0);
}

uint64_t ktrace_start_writing_path(_DWORD *a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    ktrace_start_writing_fd_cold_3();
  }

  v4 = open(a2, 1538, a3);
  if (v4 == -1)
  {
    return *__error();
  }

  return ktrace_start_writing_fd(a1, v4, 0, 0, 0);
}

uint64_t ktrace_start_writing_file(_DWORD *a1, char *a2, int a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    ktrace_start_writing_fd_cold_3();
  }

  v9 = open(a2, 1538, 438);
  if (v9 == -1)
  {
    v11 = *__error();
    ktrace_log_init();
    v12 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_start_writing_file_cold_1(v11, v12);
    }

    *__error() = v11;
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 22;
    }
  }

  else
  {

    return ktrace_start_writing_fd(a1, v9, a3, a4, a5);
  }
}

uint64_t ktrace_stackshot(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_postprocessing_set_completed_handler_cold_1();
  }

  v4 = ktrace_callback_list_add(a1, a1 + 96);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v4[4] = 4;
  v6 = _Block_copy(a2);
  result = 0;
  *(v5 + 3) = v6;
  *v5 = 2;
  return result;
}

uint64_t ktrace_kpdecode(uint64_t a1, char a2, void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = ktrace_callback_list_add(a1, a1 + 24);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  if ((a2 & 2) != 0)
  {
    v6[1] = 0xFFFFFFFF00000000;
    *(a1 + 16) = 1;
    v8 = 2;
  }

  else
  {
    v8 = 0;
    v6[1] = 0x2600000025000000;
  }

  *v6 = v8;
  *(v6 + 4) = 2;
  if (a2)
  {
    v10 = a3;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __ktrace_kpdecode_block_invoke;
    v12[3] = &unk_27886EA58;
    v12[4] = a3;
    v10 = v12;
  }

  v11 = _Block_copy(v10);
  result = 0;
  v7[3] = v11;
  return result;
}

unint64_t *_session_ensure_uuidmap(unint64_t *result)
{
  if (!result[38])
  {
    v1 = result;
    if (_session_machine_init(result))
    {
      v2 = *__error();
      ktrace_log_init();
      v3 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_ensure_uuidmap_cold_1(v2, v3);
      }

      *__error() = v2;
    }

    result = ktrace_uuid_map_create(v1[43], v1[76]);
    v1[38] = result;
  }

  return result;
}

uint64_t _session_machine_init(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 344))
  {
    return 0;
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___session_machine_init_block_invoke;
    v7[3] = &__block_descriptor_40_e149_B16__0__ktrace_chunk___ktrace_file_Q___q____CFData__QISS__ktrace_chunk__ktrace_chunk_array____ktrace_chunk___ktrace_chunk_QQQqq______ktrace_chunk___8l;
    v7[4] = a1;
    result = ktrace_file_header_iterate(v3, 0, v7);
    if (!result)
    {
      if (!*(a1 + 344))
      {
        v4 = *(a1 + 608);
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = ___session_machine_init_block_invoke_2;
        v6[3] = &__block_descriptor_40_e149_B16__0__ktrace_chunk___ktrace_file_Q___q____CFData__QISS__ktrace_chunk__ktrace_chunk_array____ktrace_chunk___ktrace_chunk_QQQqq______ktrace_chunk___8l;
        v6[4] = a1;
        return ktrace_file_iterate(v4, 0, v6);
      }

      return 0;
    }
  }

  else
  {
    current = ktrace_machine_create_current();
    *(a1 + 344) = current;
    if (current)
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return result;
}

_TtC6ktrace12ProviderList *_session_ensure_providers(_TtC6ktrace12ProviderList *result)
{
  if (!result[25].super.isa)
  {
    v1 = result;
    _session_machine_init(result);
    result = [[_TtC6ktrace12ProviderList alloc] initWithMachine:*v1[14].providers];
    v1[25].super.isa = result;
  }

  return result;
}

void ___session_handle_stackshot_block_invoke_2(uint64_t a1, kcdata_item *a2, void *a3)
{
  _session_ensure_uuidmap(*(a1 + 32));
  v6 = *(*(a1 + 32) + 304);
  v7.item = a2;
  v7.end = a3;

  ktrace_uuid_map_update_with_stackshot(v6, v7);
}

char *ktrace_set_reason(uint64_t a1, char *__s1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  result = strdup(__s1);
  *(a1 + 696) = result;
  return result;
}

uint64_t ktrace_set_trigger_kind(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 712) = a2;
  return result;
}

uint64_t ktrace_get_buffer_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 336);
}

uint64_t ktrace_set_collection_interval(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 152) = a2;
  return result;
}

uint64_t ktrace_get_collection_interval(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 152);
}

uint64_t ktrace_set_collection_qos(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 144) = a2;
  return result;
}

uint64_t ktrace_set_collection_priority(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 148) = a2;
  return result;
}

uint64_t ktrace_get_collection_qos(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 144);
}

uint64_t ktrace_get_collection_priority(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 148);
}

uint64_t ktrace_set_no_postprocessing(uint64_t result)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 828) |= 1u;
  return result;
}

void *ktrace_set_writing_filter(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 680);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 680) = result;
  return result;
}

uint64_t ktrace_add_stackshot_flags(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 168) |= a2;
  return result;
}

BOOL ___session_machine_init_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = ktrace_machine_create(a2);
  if (v3)
  {
    *(*(a1 + 32) + 344) = v3;
  }

  return v3 == 0;
}

BOOL ___session_machine_init_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v3 = ktrace_machine_create(a2);
  if (v3)
  {
    *(*(a1 + 32) + 344) = v3;
  }

  return v3 == 0;
}

uint64_t ktrace_get_machine(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = _session_machine_init(a1);
  *__error() = v2;
  return *(a1 + 344);
}

uint64_t _session_cpus_init(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 352))
  {
    return 0;
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___session_cpus_init_block_invoke;
    v5[3] = &__block_descriptor_40_e149_B16__0__ktrace_chunk___ktrace_file_Q___q____CFData__QISS__ktrace_chunk__ktrace_chunk_array____ktrace_chunk___ktrace_chunk_QQQqq______ktrace_chunk___8l;
    v5[4] = a1;
    return ktrace_file_header_iterate(v3, 0, v5);
  }

  else
  {
    current = ktrace_cpus_create_current();
    *(a1 + 352) = current;
    if (current)
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t ktrace_get_cpus(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 352);
}

void *ktrace_set_thread_exit_handler(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 224);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    _Block_release(v5);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 88) = result;
  return result;
}

void *ktrace_set_completion_handler(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 224);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    _Block_release(v5);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 56) = result;
  return result;
}

void *ktrace_set_dropped_events_handler(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 224);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    _Block_release(v5);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = result;
  return result;
}

void *ktrace_set_post_processing_handler(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 224);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    _Block_release(v5);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 72) = result;
  return result;
}

double ktrace_set_supplemental_timebase(uint64_t a1, double *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = *a2;
  *(a1 + 424) = *a2;
  return result;
}

uint64_t ktrace_parse_arg(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = 1;
  if (a4 <= 81)
  {
    if (a4 == 67)
    {
      v11 = MEMORY[0x277D85E78];
      ktrace_session_add_codes_file(a1, *(a3 + 8 * *MEMORY[0x277D85E78]));
      v5 = 0;
      ++*v11;
      return v5;
    }

    if (a4 != 69)
    {
      if (a4 == 70)
      {
        ktrace_set_mode(a1, 3u);
        return 0;
      }

      return v5;
    }

    if (!ktrace_set_use_existing(a1))
    {
      return 0;
    }

    v8 = *MEMORY[0x277D85DF8];
    v9 = "Unable to use existing trace buffer.\n";
    v5 = 1;
    v10 = 37;
LABEL_31:
    fwrite(v9, v10, 1uLL, v8);
    return v5;
  }

  if (a4 != 120)
  {
    if (a4 != 112)
    {
      if (a4 != 82)
      {
        return v5;
      }

      v6 = *MEMORY[0x277D85E78];
      v7 = *(a3 + 8 * v6);
      *MEMORY[0x277D85E78] = v6 + 1;
      if (!v7)
      {
        v5 = 1;
        fwrite("No trace file specified.\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
        return v5;
      }

      if (!ktrace_set_file(a1, v7))
      {
        return 0;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "Unable to use trace file.\n";
      v5 = 1;
      v10 = 26;
      goto LABEL_31;
    }

    v16 = *MEMORY[0x277D85E78];
    if (v16 < a2)
    {
      v17 = *(a3 + 8 * v16);
      *MEMORY[0x277D85E78] = v16 + 1;
      if ((*v17 - 48) > 9)
      {

        return ktrace_filter_process(a1, v17);
      }

      else
      {
        v18 = atoi(v17);

        return ktrace_filter_pid(a1, v18);
      }
    }

    v8 = *MEMORY[0x277D85DF8];
    v9 = "-p requires an argument\n";
LABEL_30:
    v5 = 1;
    v10 = 24;
    goto LABEL_31;
  }

  v12 = *MEMORY[0x277D85E78];
  if (v12 >= a2)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = "-x requires an argument\n";
    goto LABEL_30;
  }

  v13 = *(a3 + 8 * v12);
  *MEMORY[0x277D85E78] = v12 + 1;
  if ((*v13 - 48) > 9)
  {

    return ktrace_exclude_process(a1, v13);
  }

  else
  {
    v14 = atoi(v13);

    return ktrace_exclude_pid(a1, v14);
  }
}

uint64_t ktrace_set_mode(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(a1 + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  if (a2 >= 5)
  {
    _session_teardown_cold_3();
  }

  if (a2 == 3)
  {
    if (*a1 == 1)
    {
      a2 = 4;
    }

    else
    {
      a2 = 3;
    }
  }

  *a1 = a2;
  return 0;
}

uint64_t ktrace_parse_args(uint64_t a1, int a2, char **a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *MEMORY[0x277D85E70] = 0;
  v6 = MEMORY[0x277D85E80];
  while (getopt(a2, a3, "") != -1)
  {
    if (ktrace_parse_arg(a1, a2, a3, *v6))
    {
      return 1;
    }
  }

  return 0;
}

void ktrace_set_signal_handler(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a1 + 152) = 500;
  if (ktrace_set_signal_handler_signal_queue_once != -1)
  {
    ktrace_set_signal_handler_cold_1();
  }

  v2 = *(a1 + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __ktrace_set_signal_handler_block_invoke_2;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = a1;
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 176) = v3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __ktrace_set_signal_handler_block_invoke_3;
  handler[3] = &unk_27886E8C0;
  handler[4] = v11;
  handler[5] = a1;
  dispatch_source_set_event_handler(v3, handler);
  signal(2, 1);
  v4 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 184) = v4;
  dispatch_source_set_event_handler(v4, v13);
  signal(1, 1);
  v5 = dispatch_source_create(MEMORY[0x277D85D30], 0xDuLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 200) = v5;
  dispatch_source_set_event_handler(v5, v13);
  signal(13, 1);
  v6 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 192) = v6;
  dispatch_source_set_event_handler(v6, v13);
  signal(15, 1);
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 3uLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 208) = v7;
  dispatch_source_set_event_handler(v7, v13);
  signal(3, 1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __ktrace_set_signal_handler_block_invoke_4;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a1;
  v8 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, ktrace_set_signal_handler_signal_queue);
  *(a1 + 216) = v8;
  dispatch_source_set_event_handler(v8, v9);
  signal(29, 1);
  _Block_object_dispose(v11, 8);
}

void sub_22EDB2398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __ktrace_set_signal_handler_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  result = dispatch_queue_create("com.apple.libktrace.signals", v0);
  ktrace_set_signal_handler_signal_queue = result;
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

void __ktrace_set_signal_handler_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    v3 = v5 != 0;
  }

  ktrace_end(v2, v3);
}

uint64_t ktrace_set_coprocessor_tracing_enabled(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 224) = *(result + 224) & 0xFDFF | v2;
  return result;
}

void ktrace_set_trailing_duration(uint64_t a1)
{
  if (*(a1 + 4) != 2)
  {
    ktrace_time_ringbuffer_create();
  }

  ktrace_postprocess_file_internal_cold_4();
}

uint64_t ktrace_get_mode(unsigned int *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *a1;
}

uint64_t ktrace_add_client(uint64_t a1, uint64_t a2, int a3)
{
  if (*a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 592))
  {
    return 22;
  }

  result = 0;
  *(a1 + 592) = a2;
  if (a3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 224) = *(a1 + 224) & 0xFFF7 | v5;
  return result;
}

uint64_t ktrace_stream_create(int a1, char a2, int a3)
{
  if (ktrace_stream_create_once != -1)
  {
    ktrace_stream_create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    bzero((Instance + 32), 0x398uLL);
    *(v7 + 952) = 0;
    *(v7 + 24) = a1;
    *(v7 + 972) = a2;
    if (a3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 32;
    }

    *(v7 + 960) = dispatch_semaphore_create(v8);
    *(v7 + 968) = a3;
  }

  return v7;
}

uint64_t __ktrace_stream_create_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ktrace_stream_typeid = result;
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

intptr_t __ktrace_stream_iterate_group_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  ktrace_chunk_unmap_data(a1[7], a1[5], a1[6]);
  v4 = *(a1[8] + 960);

  return dispatch_semaphore_signal(v4);
}

uint64_t convert_artrace_events_64(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
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

  if (*a2 >= 0x30)
  {
    v6 = 0;
    v4 = 0;
    v7 = *a2 / 0x30uLL;
    v8 = *a4;
    v9 = (a1 + 16);
    while (1)
    {
      v10 = v4 + 64;
      if (v4 + 64 > v8)
      {
        break;
      }

      v11 = *(v9 - 2);
      v12 = a3 + v4;
      *v12 = v11 & 0xFFFFFFFFFFFFFFLL;
      v13 = *(v9 - 1);
      *(v12 + 48) = *(v9 - 2);
      *(v12 + 52) = HIBYTE(v11);
      *(v12 + 8) = *v9;
      *(v12 + 24) = v9[1];
      *(v12 + 40) = v13;
      ++v6;
      v9 += 3;
      v4 = v10;
      if (v7 == v6)
      {
        v4 = v7 << 6;
        v6 = v7;
        break;
      }
    }

    v5 = 48 * v6;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v5;
  *a4 = v4;
  return 0;
}

uint64_t convert_artrace_events_32(int32x4_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
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

  if (*a2 >= 0x30)
  {
    v6 = 0;
    v4 = 0;
    v7 = *a2 / 0x30uLL;
    v8 = *a4;
    v9 = a1 + 1;
    while (1)
    {
      v10 = v4 + 32;
      if (v4 + 32 > v8)
      {
        break;
      }

      v11 = a3 + v4;
      *v11 = v9[-1].i64[0];
      *(v11 + 8) = vuzp1q_s32(*v9, v9[1]);
      *(v11 + 24) = vrev64_s32(v9[-1].u64[1]);
      ++v6;
      v9 += 3;
      v4 = v10;
      if (v7 == v6)
      {
        v4 = 32 * v7;
        v6 = v7;
        break;
      }
    }

    v5 = 48 * v6;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v5;
  *a4 = v4;
  return 0;
}

uint64_t ktrace_stream_out_compressed(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 >= 5)
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

  return 22;
}

unint64_t ktrace_stream_estimate_events(uint64_t *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = ktrace_chunk_tag(a1);
  v3 = ktrace_chunk_size(a1);
  is_64_bit = ktrace_chunk_is_64_bit(a1);
  if (v2 == 20982)
  {
    return v3 / 0x30;
  }

  if (v2 == 7936)
  {
    v7 = 0;
    if (ktrace_chunk_copy_data(a1, 8, &v7, 4uLL))
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v5 = (v3 - 8) >> 6;
    if (!is_64_bit)
    {
      v5 = (v3 - 8) >> 5;
    }

    if (v2 == 7680)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

void ktrace_iter_destroy(void **a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = v2[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[6];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v2);
    *a1 = 0;
  }
}

void *ktrace_stream_create_iterator(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  CFRetain(a1);
  v2 = malloc_type_malloc(0x40uLL, 0x10700401C01FCAEuLL);
  v7 = v2;
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  *v2 = a1[4];
  v2[1] = a1;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  inited = ktrace_iter_init_chunk(v2);
  if (inited)
  {
    v5 = inited;
    ktrace_iter_destroy(&v7);
    *__error() = v5;
    return v7;
  }

  return v3;
}

uint64_t ktrace_iter_init_chunk(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    v3 = **a1;
    v4 = ktrace_chunk_tag(v3);
    switch(v4)
    {
      case 20982:
        if (ktrace_chunk_size(v3) >= 0x30)
        {
          v28 = ktrace_chunk_size_t(v3);
          v29 = ktrace_chunk_copy_cfdata(v3, 0, v28);
          *(a1 + 48) = v29;
          if (v29)
          {
            *(a1 + 24) = CFDataGetBytePtr(v29);
            Length = CFDataGetLength(*(a1 + 48));
            *(a1 + 16) = 0;
            v10 = 48;
LABEL_34:
            *(a1 + 32) = Length;
            *(a1 + 40) = v10;
LABEL_35:
            v30 = ktrace_chunk_tag(v3);
            result = 0;
            *(a1 + 56) = v30;
            goto LABEL_39;
          }

LABEL_38:
          result = 12;
          goto LABEL_39;
        }

        break;
      case 7936:
        v11 = ktrace_stream_estimate_events(v3);
        if (v11)
        {
          v12 = v11;
          if (ktrace_chunk_size(v3) >= 0xD)
          {
            v13 = ktrace_chunk_size_t(v3);
            v14 = ktrace_chunk_map_data(v3, 0, v13);
            if (!v14)
            {
              result = *__error();
              goto LABEL_39;
            }

            v15 = v14;
            v16 = *(*(a1 + 8) + 972) == 0;
            v17 = 32;
            if (*(*(a1 + 8) + 972))
            {
              v17 = 64;
            }

            *(a1 + 40) = v17;
            v18 = 5;
            if (!v16)
            {
              v18 = 6;
            }

            Mutable = CFDataCreateMutable(0, v12 << v18);
            if (Mutable)
            {
              v20 = Mutable;
              CFDataSetLength(Mutable, *(a1 + 40) * v12);
              bzero(v34, 0x388uLL);
              ktrace_compressor_reset(v34);
              v33 = ktrace_chunk_size_t(v3) - 12;
              if (*(*(a1 + 8) + 972))
              {
                v21 = decompress_64;
              }

              else
              {
                v21 = decompress_32;
              }

              MutableBytePtr = CFDataGetMutableBytePtr(v20);
              v23 = CFDataGetLength(v20);
              *(a1 + 32) = v21(v34, v15 + 12, &v33, MutableBytePtr, v23);
              v24 = ktrace_chunk_size_t(v3);
              ktrace_chunk_unmap_data(v3, v15, v24);
              if (!*(a1 + 32))
              {
                CFRelease(v20);
                result = 9;
                goto LABEL_39;
              }

              v25 = *(a1 + 32);
              if (v25 != CFDataGetLength(v20))
              {
                ktrace_log_init();
                v26 = ktrace_file_log;
                if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
                {
                  ktrace_iter_init_chunk_cold_1(v20, (a1 + 32), v26);
                }

                *(a1 + 32) = CFDataGetLength(v20);
              }

              BytePtr = CFDataGetBytePtr(v20);
              *(a1 + 48) = v20;
              *(a1 + 16) = 0;
              *(a1 + 24) = BytePtr;
              goto LABEL_35;
            }

            v31 = ktrace_chunk_size_t(v3);
            ktrace_chunk_unmap_data(v3, v15, v31);
            goto LABEL_38;
          }
        }

        break;
      case 7680:
        v5 = ktrace_chunk_size(v3);
        v6 = 40;
        if (*(*(a1 + 8) + 972))
        {
          v6 = 72;
        }

        if (v5 >= v6)
        {
          v7 = ktrace_chunk_size_t(v3);
          v8 = ktrace_chunk_copy_cfdata(v3, 0, v7);
          *(a1 + 48) = v8;
          if (v8)
          {
            *(a1 + 24) = CFDataGetBytePtr(v8);
            Length = CFDataGetLength(*(a1 + 48));
            *(a1 + 16) = 8;
            v10 = 32;
            if (*(*(a1 + 8) + 972))
            {
              v10 = 64;
            }

            goto LABEL_34;
          }

          goto LABEL_38;
        }

        break;
      default:
        ktrace_stream_iterate_group_cold_1();
    }

    result = 108;
    goto LABEL_39;
  }

  result = 0;
LABEL_39:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void *ktrace_stream_create_end_iterator(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  CFRetain(a1);
  v2 = malloc_type_malloc(0x40uLL, 0x10700401C01FCAEuLL);
  v11 = v2;
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  *v2 = a1[5];
  v2[1] = a1;
  *(v2 + 1) = 0u;
  v4 = v2 + 2;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  inited = ktrace_iter_init_chunk(v2);
  if (inited)
  {
    v6 = inited;
    ktrace_iter_destroy(&v11);
    v3 = 0;
    *__error() = v6;
  }

  else
  {
    v7 = v3[2];
    v8 = v3[5];
    v9 = (v3[4] - v7) / v8;
    if ((v9 & 0x8000000000000000) != 0)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    *v4 = v7 + (v9 - 1) * v8;
  }

  return v3;
}

__n128 ktrace_iter_copy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRetain(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = malloc_type_malloc(0x40uLL, 0x10700401C01FCAEuLL);
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v7;
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t ktrace_iter_prev(uint64_t *a1)
{
  v2 = *a1;
  inited = ktrace_iter_init_chunk(*a1);
  if (inited)
  {
    goto LABEL_2;
  }

  v5 = *(v2 + 56);
  if (v5 != 7680 && v5 != 20982 && v5 != 7936)
  {
    ktrace_stream_iterate_group_cold_1();
  }

  if (!*(v2 + 48))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(v2 + 16);
  v9 = *(v2 + 40);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    inited = 0;
    *(v2 + 16) = v11;
    return inited;
  }

  ktrace_iter_fini_chunk(v2);
  v12 = *v2;
  if (!*(*v2 + 24))
  {
LABEL_17:
    inited = 0;
LABEL_2:
    ktrace_iter_destroy(a1);
    return inited;
  }

  while (1)
  {
    *v2 = *(v12 + 24);
    v13 = ktrace_iter_init_chunk(v2);
    if (v13 != 108)
    {
      break;
    }

    v12 = *v2;
    if (!*v2)
    {
      goto LABEL_17;
    }
  }

  inited = v13;
  if (v13 || !*v2)
  {
    goto LABEL_2;
  }

  return inited;
}

void ktrace_iter_fini_chunk(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFRelease(v2);
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t ktrace_iter_next(uint64_t *a1)
{
  v2 = *a1;
  inited = ktrace_iter_init_chunk(*a1);
  if (inited)
  {
    goto LABEL_2;
  }

  v5 = *(v2 + 56);
  if (v5 != 7680 && v5 != 20982 && v5 != 7936)
  {
    ktrace_stream_iterate_group_cold_1();
  }

  if (!*(v2 + 48))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(v2 + 40);
  v9 = v8 + *(v2 + 16);
  if ((v9 + v8) <= *(v2 + 32))
  {
    inited = 0;
    *(v2 + 16) = v9;
    return inited;
  }

  ktrace_iter_fini_chunk(v2);
  v10 = *v2;
  if (!*(*v2 + 16))
  {
LABEL_17:
    inited = 0;
LABEL_2:
    ktrace_iter_destroy(a1);
    return inited;
  }

  while (1)
  {
    *v2 = *(v10 + 16);
    v11 = ktrace_iter_init_chunk(v2);
    if (v11 != 108)
    {
      break;
    }

    v10 = *v2;
    if (!*v2)
    {
      goto LABEL_17;
    }
  }

  inited = v11;
  if (v11 || !*v2)
  {
    goto LABEL_2;
  }

  return inited;
}

uint64_t ktrace_iter_next_until(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = ktrace_iter_init_chunk(*a1);
  if (!result)
  {
    if (!*(v4 + 48))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v8 = *(*(v4 + 8) + 972) == 0;
    *(v4 + 16) += *(v4 + 40);
    if (v8)
    {
      v6 = 28;
    }

    else
    {
      v6 = 48;
    }

    do
    {
      v7 = *(v4 + 56);
      v8 = v7 == 7680 || v7 == 7936;
      if (v8)
      {
        v9 = *(v4 + 16);
        v11 = *(v4 + 32);
        v10 = *(v4 + 40);
        while (v10 + v9 <= v11)
        {
          if ((*(a2 + 16))(a2, *(*(v4 + 24) + v9 + v6)))
          {
            return 0;
          }

          v11 = *(v4 + 32);
          v10 = *(v4 + 40);
          v9 = *(v4 + 16) + v10;
          *(v4 + 16) = v9;
        }
      }

      else
      {
        if (v7 != 20982)
        {
          ktrace_stream_iterate_group_cold_1();
        }

        v12 = *(v4 + 16);
        v14 = *(v4 + 32);
        v13 = *(v4 + 40);
        while (v13 + v12 <= v14)
        {
          if ((*(a2 + 16))(a2, *(*(v4 + 24) + v12 + 8)))
          {
            return 0;
          }

          v14 = *(v4 + 32);
          v13 = *(v4 + 40);
          v12 = *(v4 + 16) + v13;
          *(v4 + 16) = v12;
        }
      }

      result = ktrace_iter_next(a1);
    }

    while (*a1);
  }

  return result;
}