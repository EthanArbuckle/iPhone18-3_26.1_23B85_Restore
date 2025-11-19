uint64_t std::__fs::filesystem::operator<[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) >> 31;
}

uint64_t skit::IndexWriter::end_txn(skit::IndexWriter *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this)
  {
    goto LABEL_46;
  }

  if ((*(v1 + 528) & 1) == 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v20 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      v29 = 68289026;
      *v30 = 16;
      *&v30[4] = 2098;
      *&v30[6] = v1;
      _os_log_fault_impl(&dword_2998C6000, v20, OS_LOG_TYPE_FAULT, "IndexWriterImpl::end_txn : transaction %{public,uuid_t}.16P is not active", &v29, 0x12u);
    }

    goto LABEL_46;
  }

  v2 = (v1 + 208);
  skit::internal::MultiIndexV2::close((v1 + 208));
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::flush(v1 + 40, 1);
  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close((v1 + 40)))
  {
LABEL_45:
    skit::internal::IndexWriterImpl::abort_txn(v1);
LABEL_46:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if (*(v1 + 529) == 1)
  {
    v4 = (v1 + 208);
    if (*(v1 + 231) < 0)
    {
      v4 = *v2;
    }

    v5 = (v1 + 16);
    v6 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v6 = *v5;
    }

    if (renamex_np(v4, v6, 2u))
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v23 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        if (*(v1 + 231) < 0)
        {
          v2 = *v2;
        }

        if (*(v1 + 39) < 0)
        {
          v5 = *v5;
        }

        v27 = *__error();
        v29 = 136446722;
        *v30 = v2;
        *&v30[8] = 2082;
        *&v30[10] = v5;
        *&v30[18] = 1024;
        *&v30[20] = v27;
        _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed to move transaction directory @ %{public}s ->  %{public}s : %{darwin.errno}d", &v29, 0x1Cu);
      }

      goto LABEL_45;
    }
  }

  v7 = (v1 + 208);
  if (*(v1 + 231) < 0)
  {
    v7 = *v2;
  }

  if (skit::internal::remove_all(v7, v3))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v21 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      if (*(v1 + 231) < 0)
      {
        v2 = *v2;
      }

      v22 = *__error();
      v29 = 136446466;
      *v30 = v2;
      *&v30[8] = 1024;
      *&v30[10] = v22;
      _os_log_error_impl(&dword_2998C6000, v21, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed to remove transaction directory @ %{public}s : %{darwin.errno}d", &v29, 0x12u);
    }
  }

  if (*(v1 + 529) != 1)
  {
    goto LABEL_22;
  }

  v8 = (v1 + 16);
  v9 = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    v9 = *v8;
  }

  v10 = open(v9, 0);
  if (v10 < 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v24 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    if (*(v1 + 39) < 0)
    {
      v8 = *v8;
    }

    v25 = *__error();
    v29 = 136315394;
    *v30 = v8;
    *&v30[8] = 1024;
    *&v30[10] = v25;
    v26 = "IndexWriterImpl::end_txn : failed to open index directory @ %s : %{darwin.errno}d";
LABEL_65:
    _os_log_error_impl(&dword_2998C6000, v24, OS_LOG_TYPE_ERROR, v26, &v29, 0x12u);
LABEL_22:
    v13 = skit::internal::get_logging_context(void)::once;
    *(v1 + 528) = 0;
    if (v13 != -1)
    {
    }

    goto LABEL_24;
  }

  v11 = v10;
  if (fcntl(v10, 85))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v12 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v18 = (v1 + 16);
      if (*(v1 + 39) < 0)
      {
        v18 = *v8;
      }

      v19 = *__error();
      v29 = 136315394;
      *v30 = v18;
      *&v30[8] = 1024;
      *&v30[10] = v19;
      _os_log_error_impl(&dword_2998C6000, v12, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed fcntl barrier @ %s : %{darwin.errno}d", &v29, 0x12u);
    }
  }

  if (!close(v11))
  {
    goto LABEL_22;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v24 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    if (*(v1 + 39) < 0)
    {
      v8 = *v8;
    }

    v28 = *__error();
    v29 = 136315394;
    *v30 = v8;
    *&v30[8] = 1024;
    *&v30[10] = v28;
    v26 = "IndexWriterImpl::end_txn : failed to close index directory @ %s : %{darwin.errno}d";
    goto LABEL_65;
  }

LABEL_56:
  *(v1 + 528) = 0;
LABEL_24:
  v14 = skit::internal::get_logging_context(void)::logger;
  result = os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO);
  if (result)
  {
    v16 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v16 = *v16;
    }

    v29 = 68158210;
    *v30 = 16;
    *&v30[4] = 2096;
    *&v30[6] = v1;
    *&v30[14] = 2082;
    *&v30[16] = v16;
    _os_log_impl(&dword_2998C6000, v14, OS_LOG_TYPE_INFO, "IndexWriterImpl::end_txn : completed transaction %{uuid_t}.16P @ %{public}s", &v29, 0x1Cu);
    result = 0;
  }

LABEL_28:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2998D2FF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::set_dp_class(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 - 8) <= 0xFFFFFFF6)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v5 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_fault_impl(&dword_2998C6000, v5, OS_LOG_TYPE_FAULT, "KvStore : invalid protection class %d", v6, 8u);
    }
  }

  *(a1 + 156) = a2;
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(uint64_t result)
{
  if (*(result + 162) == 1)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      v3 = *(result + 32);
      v4 = v3 >= 0xC;
      v5 = v3 - 12;
      if (v4)
      {
        if (v5)
        {
          v6 = (v2 + 12);
          v7 = -1;
          do
          {
            v8 = *v6++;
            v7 = crc32_tab[(v8 ^ v7)] ^ (v7 >> 8);
            --v5;
          }

          while (v5);
          v9 = ~v7;
        }

        else
        {
          v9 = -1;
        }

        result = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(result);
        if (!result)
        {
          v10 = *(v1 + 112);
          if (v10)
          {
            v11 = *(v1 + 120);
            if (v11)
            {
              v12 = -1;
              do
              {
                v13 = *v10++;
                v12 = crc32_tab[(v13 ^ v12)] ^ (v12 >> 8);
                --v11;
              }

              while (v11);
              LODWORD(v10) = ~v12;
            }

            else
            {
              LODWORD(v10) = -1;
            }
          }

          v14 = *(v1 + 24);
          *(v14 + 4) = v9;
          *(v14 + 8) = v10;
          *(v1 + 162) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 20) >= (*(v2 + 28) * a2))
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = *(a1 + 152);
  if (v4 >= v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a2 + 63) >> 6;
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a1, *(a1 + 8));
  }

  else
  {
    v28 = *a1;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__replacement.__pn_, ".tmp");
  std::__fs::filesystem::path::replace_extension(&v28, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v28;
  }

  else
  {
    v9 = v28.__r_.__value_.__r.__words[0];
  }

  v10 = open_dprotected_np(v9, 1538, *(a1 + 156), 0, *(a1 + 160));
  v11 = v10;
  v12 = (v7 << 9) | 0x28;
  if (v10 == -1)
  {
    v14 = 0;
LABEL_32:
    close(v11);
    goto LABEL_33;
  }

  if (ftruncate(v10, (v7 << 9) | 0x28))
  {
    v14 = 0;
  }

  else
  {
    v15 = mmap(0, (v7 << 9) | 0x28, 3, *(a1 + 136) | 1u, v11, 0);
    v14 = v15;
    if (v15 != -1 && !madvise(v15, (v7 << 9) | 0x28, 1))
    {
      skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::KvTableImpl(v14, v7);
      v16 = *(a1 + 24);
      if (*(v16 + 16))
      {
        v17 = 0;
        v18 = (v16 + 296);
        do
        {
          v19 = 64;
          v20 = v18;
          do
          {
            v21 = *(v20 - 64);
            if (v21 != -2)
            {
              if (v21 == -1)
              {
                break;
              }

              __dmb(9u);
              skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v14, v21, *v20);
            }

            ++v20;
            --v19;
          }

          while (v19);
          ++v17;
          v18 += 128;
        }

        while (v17 < *(v16 + 16));
        v16 = *(a1 + 24);
      }

      *(v14 + 12) = *(v16 + 12);
      *(v14 + 20) = *(v16 + 20);
      if (!close(v11))
      {
        munmap(*(a1 + 24), *(a1 + 32));
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v28;
        }

        else
        {
          v25 = v28.__r_.__value_.__r.__words[0];
        }

        v26 = a1;
        if (*(a1 + 23) < 0)
        {
          v26 = *a1;
        }

        rename(v25, v26, v24);
        v8 = 0;
        *(a1 + 24) = v14;
        *(a1 + 32) = v12;
        *(a1 + 162) = 1;
        goto LABEL_39;
      }
    }
  }

  if (v11)
  {
    goto LABEL_32;
  }

LABEL_33:
  if ((v14 + 1) >= 2)
  {
    munmap(v14, v12);
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v28;
  }

  else
  {
    v22 = v28.__r_.__value_.__r.__words[0];
  }

  remove(v22, v13);
  v8 = 0xFFFFFFFFLL;
LABEL_39:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_2998D3498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::put(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_12;
  }

  v7 = *(v3 + 16) << 6;
  if (!v7 || (*(v3 + 28) * v7) < (*(v3 + 20) + 1))
  {
    if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(a1, (v7 + (v7 >> 1)) | 1))
    {
      goto LABEL_12;
    }
  }

  v8 = *(a2 + 8);
  v9 = (2 * v8 + 8);
  (MEMORY[0x2A1C7C4A8])();
  v10 = &v20[-((v9 + 15) & 0x1FFFFFFF0)];
  bzero(v10, v9);
  v12 = *a2;
  v10[2] = v8;
  *v10 = *(a3 + 8) + *(a3 + 24) + *(a3 + 40) + 2 * v8 + 8;
  if (v8)
  {
    v11 = memmove(v10 + 3, v12, 2 * v8);
  }

  v10[v8 + 3] = 0;
  if (*(a1 + 72) + *v10 > *(a1 + 80))
  {
    goto LABEL_12;
  }

  MEMORY[0x2A1C7C4A8](v11, v12);
  *&v20[-64] = v10;
  *&v20[-56] = v9;
  v13 = *(a3 + 16);
  *&v20[-48] = *a3;
  *&v20[-32] = v13;
  *&v20[-16] = *(a3 + 32);
  skit::internal::BlobFile::append(v20, (a1 + 40), &v20[-64], 4u);
  if (v22)
  {
    goto LABEL_12;
  }

  v14 = *(a1 + 24);
  v15 = skit::internal::murmur3_32(*a2, 2 * *(a2 + 8), *(v14 + 12));
  v16 = v21;
  if ((skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v14, v15 & 0x7FFFFFFF, *(v14 + 24)) & 1) == 0)
  {
    skit::internal::BlobFile::resize((a1 + 40), *(a1 + 72) - v16);
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  result = 0;
  v18.i32[0] = 1;
  v18.i32[1] = v16;
  *(v14 + 20) = vadd_s32(*(v14 + 20), v18);
  *(a1 + 162) = 1;
LABEL_13:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = a2 - a2 / *(a1 + 16) * *(a1 + 16);
  while (1)
  {
    v4 = (a1 + 40 + (v3 << 9));
    v5 = atomic_load(v4);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v6 = 0;
    while (v6 != 63)
    {
      v7 = atomic_load((a1 + 44 + (v3 << 9) + 4 * v6++));
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }
    }

    v3 = (v3 + 1) % *(a1 + 16);
    if (v3 == a2 - a2 / *(a1 + 16) * *(a1 + 16))
    {
      return 0;
    }
  }

  v6 = 0;
LABEL_11:
  v9 = &v4[v6];
  v10 = atomic_load(v9);
  if (v6 != 63 && v10 == -1)
  {
    v4[(v6 + 1)] = -1;
  }

  v9[64] = a3;
  __dmb(0xBu);
  *v9 = a2;
  return 1;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::flush(uint64_t a1, char a2)
{
  v3 = a1;
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) && (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(a1), msync(*(v3 + 24), *(v3 + 32), 1)))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v6 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v7 = *__error();
      v8 = 136446466;
      v9 = v3;
      v10 = 1024;
      v11 = v7;
      _os_log_error_impl(&dword_2998C6000, v6, OS_LOG_TYPE_ERROR, "BlobFile::resize : msync for kv table file failed @ %{public}s : %{darwin.errno}d", &v8, 0x12u);
    }

    result = 0xFFFFFFFFLL;
  }

  else if (skit::internal::BlobFile::flush((v3 + 40), a2))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::internal::MemMetaStore::write(skit::internal::MemMetaStore *this, std::__fs::filesystem::path *a2, int a3, uint64_t a4)
{
  v6 = a2;
  v55 = *MEMORY[0x29EDCA608];
  v52.iov_base = this;
  v52.iov_len = 48;
  v8 = *(this + 7) - *(this + 6);
  v53 = *(this + 6);
  v54 = v8;
  std::string::append(&a2->__pn_, ".ms", 3uLL);
  if (SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, v6->__pn_.__r_.__value_.__l.__data_, v6->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v6->__pn_;
  }

  v44 = *&pn.__r_.__value_.__l.__data_;
  v45 = pn.__r_.__value_.__r.__words[2];
  v46 = -1;
  v47 = xmmword_2998EB7E0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  if ((skit::internal::BlobFile::open(&v44, 1538, a3, a4) & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  skit::internal::BlobFile::append(&__replacement, &v44, &v52, 2u);
  if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x80000000) != 0 || (skit::internal::BlobFile::flush(&v44, 0) & 0x80000000) != 0 || (skit::internal::BlobFile::close(&v44) & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  if (!*(*(this + 11) + 8))
  {
LABEL_18:
    v15 = 0;
    goto LABEL_53;
  }

  v41 = ".xid";
  v42 = 4;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__replacement.__pn_, &v41);
  std::__fs::filesystem::path::replace_extension(v6, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v6->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  v11 = open_dprotected_np(v10, 1538, a3, 0, a4);
  v12 = v11;
  if (v11 < 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v17 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v18 = v6->__pn_.__r_.__value_.__r.__words[0];
    v19 = __error();
    if (v17 >= 0)
    {
      v20 = v6;
    }

    else
    {
      v20 = v18;
    }

    v21 = *v19;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v20;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v21;
    v22 = "FlatSet::write : file open failed @ %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  v13 = *(this + 11);
  v14 = (336 * v13[1] + 16);
  if (write(v11, v13, v14) != v14)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v23 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v24 = v6->__pn_.__r_.__value_.__r.__words[0];
    v25 = __error();
    if (v23 >= 0)
    {
      v26 = v6;
    }

    else
    {
      v26 = v24;
    }

    v27 = *v25;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v26;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v27;
    v22 = "FlatSet::write : failed to write table to %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  if (fsync(v12))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v28 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v29 = v6->__pn_.__r_.__value_.__r.__words[0];
    v30 = __error();
    if (v28 >= 0)
    {
      v31 = v6;
    }

    else
    {
      v31 = v29;
    }

    v32 = *v30;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v31;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v32;
    v22 = "FlatSet::write : failed on file flush %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  if (!close(v12))
  {
    goto LABEL_18;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v16 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v33 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v34 = v6->__pn_.__r_.__value_.__r.__words[0];
    v35 = __error();
    if (v33 >= 0)
    {
      v36 = v6;
    }

    else
    {
      v36 = v34;
    }

    v37 = *v35;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v36;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v37;
    v22 = "FlatSet::write : failed on file close %{public}s : %{darwin.errno}d";
LABEL_47:
    _os_log_error_impl(&dword_2998C6000, v16, OS_LOG_TYPE_ERROR, v22, &__replacement, 0x12u);
  }

LABEL_48:
  skit::internal::BlobFile::clear(&v44, v9);
  v41 = ".xid";
  v42 = 4;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__replacement.__pn_, &v41);
  std::__fs::filesystem::path::replace_extension(v6, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  remove(v6, v38);
  v15 = 0xFFFFFFFFLL;
LABEL_53:
  skit::internal::BlobFile::~BlobFile(&v44);
  v39 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_2998D3D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 89) < 0)
  {
    operator delete(*(v9 - 112));
  }

  skit::internal::BlobFile::~BlobFile(va);
  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_2998D3E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<skit::internal::IndexDiskImplV2>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    skit::internal::IndexDiskImplV2::~IndexDiskImplV2(v2);
    MEMORY[0x29C2A3200]();
  }

  return a1;
}

void skit::internal::IndexDiskImplV2::~IndexDiskImplV2(void **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(this))
  {
    v2 = "term index";
  }

  else
  {
    if (!skit::internal::DiskMetaStore::close((this + 21)))
    {
      goto LABEL_9;
    }

    v2 = "meta store";
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v3 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446210;
    v6 = v2;
    _os_log_error_impl(&dword_2998C6000, v3, OS_LOG_TYPE_ERROR, "IndexDiskImplV2::close : %{public}s failed", &v5, 0xCu);
  }

LABEL_9:
  skit::internal::DiskMetaStore::close((this + 21));
  skit::internal::MmapFile::~MmapFile((this + 36));
  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100]((this + 28), 0);
  skit::internal::MmapFile::~MmapFile((this + 24));
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  v4 = *MEMORY[0x29EDCA608];

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(this);
}

void sub_2998D3FEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::internal::DiskMetaStore::close(skit::internal::DiskMetaStore *this)
{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    v4 = munmap(v2, *(this + 4));
  }

  else
  {
    v4 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](this + 56, 0);
  v5 = *(this + 15);
  if (v5)
  {
    LODWORD(v5) = munmap(v5, *(this + 16));
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  result = v5 | v4;
  *(this + 5) = 0;
  return result;
}

void skit::internal::MmapFile::~MmapFile(skit::internal::MmapFile *this)
{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }

  *this = 0;
  *(this + 1) = 0;
}

uint64_t skit::internal::remove_all(const std::__fs::filesystem::path *this, const char *a2)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  if (result == 20)
  {

    return remove(this, v4);
  }

  return result;
}

uint64_t skit::internal::anonymous namespace::remove_cb(skit::internal::_anonymous_namespace_ *this, const char *a2, const stat *a3, int a4, FTW *a5)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 2) & 0x92) == 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v6 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = this;
      v7 = "remove_all : file does not have write permission : %s";
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v10 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
        {
          v15 = 136446210;
          v16 = this;
          _os_log_fault_impl(&dword_2998C6000, v10, OS_LOG_TYPE_FAULT, "remove_all : visiting directory in pre-order traversal : %{public}s", &v15, 0xCu);
        }
      }

      else if (a3 == 2)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v6 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446210;
          v16 = this;
          v7 = "remove_all : directory cannot be read, skipping removal : %{public}s";
LABEL_17:
          v8 = v6;
          v9 = 12;
LABEL_18:
          _os_log_error_impl(&dword_2998C6000, v8, OS_LOG_TYPE_ERROR, v7, &v15, v9);
          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if ((a3 - 5) < 2)
  {
LABEL_19:
    if (!unlink(this))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a3 == 3)
  {
    if (!rmdir(this))
    {
      goto LABEL_27;
    }

LABEL_26:
    if (*__error() != 2)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v13 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        v15 = 136446466;
        v16 = this;
        v17 = 1024;
        v18 = v14;
        v7 = "remove_all : directory cannot be read, skipping removal : %{public}s : %{darwin.errno}d";
        v8 = v13;
        v9 = 18;
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

  if (a3 == 4)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v6 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446210;
      v16 = this;
      v7 = "remove_all : directory cannot be read, skipping removal : %{public}s";
      goto LABEL_17;
    }
  }

LABEL_27:
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(__int128 *a1, std::__fs::filesystem::path::__string_view a2, std::__fs::filesystem::path *a3)
{
  size = a2.__size_;
  data = a2.__data_;
  v7 = a2.__data_;
  a2.__data_ = a1;
  v8 = std::__fs::filesystem::operator<[abi:ne200100](v7, a2);
  v35.__data_ = data;
  v9 = std::__fs::filesystem::operator<[abi:ne200100](size, v35);
  if (v8)
  {
    if (v9)
    {
      v11 = *(a1 + 2);
      v12 = *a1;
      v13 = size->__pn_.__r_.__value_.__r.__words[2];
      *a1 = *&size->__pn_.__r_.__value_.__l.__data_;
      *(a1 + 2) = v13;
LABEL_9:
      *&size->__pn_.__r_.__value_.__l.__data_ = v12;
      size->__pn_.__r_.__value_.__r.__words[2] = v11;
      goto LABEL_10;
    }

    v20 = *(a1 + 2);
    v21 = *a1;
    v22 = data->__pn_.__r_.__value_.__r.__words[2];
    *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
    *(a1 + 2) = v22;
    *&data->__pn_.__r_.__value_.__l.__data_ = v21;
    data->__pn_.__r_.__value_.__r.__words[2] = v20;
    v10.__data_ = data;
    if (std::__fs::filesystem::operator<[abi:ne200100](size, v10))
    {
      v11 = data->__pn_.__r_.__value_.__r.__words[2];
      v12 = *&data->__pn_.__r_.__value_.__l.__data_;
      v23 = size->__pn_.__r_.__value_.__r.__words[2];
      *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
      data->__pn_.__r_.__value_.__r.__words[2] = v23;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v14 = data->__pn_.__r_.__value_.__r.__words[2];
    v15 = *&data->__pn_.__r_.__value_.__l.__data_;
    v16 = size->__pn_.__r_.__value_.__r.__words[2];
    *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
    data->__pn_.__r_.__value_.__r.__words[2] = v16;
    *&size->__pn_.__r_.__value_.__l.__data_ = v15;
    size->__pn_.__r_.__value_.__r.__words[2] = v14;
    v10.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](data, v10))
    {
      v17 = *(a1 + 2);
      v18 = *a1;
      v19 = data->__pn_.__r_.__value_.__r.__words[2];
      *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
      *(a1 + 2) = v19;
      *&data->__pn_.__r_.__value_.__l.__data_ = v18;
      data->__pn_.__r_.__value_.__r.__words[2] = v17;
    }
  }

LABEL_10:
  v10.__data_ = size;
  if (std::__fs::filesystem::operator<[abi:ne200100](a3, v10))
  {
    v26 = size->__pn_.__r_.__value_.__r.__words[2];
    v27 = *&size->__pn_.__r_.__value_.__l.__data_;
    v28 = a3->__pn_.__r_.__value_.__r.__words[2];
    *&size->__pn_.__r_.__value_.__l.__data_ = *&a3->__pn_.__r_.__value_.__l.__data_;
    size->__pn_.__r_.__value_.__r.__words[2] = v28;
    *&a3->__pn_.__r_.__value_.__l.__data_ = v27;
    a3->__pn_.__r_.__value_.__r.__words[2] = v26;
    v24.__data_ = data;
    if (std::__fs::filesystem::operator<[abi:ne200100](size, v24))
    {
      v30 = data->__pn_.__r_.__value_.__r.__words[2];
      v31 = *&data->__pn_.__r_.__value_.__l.__data_;
      v32 = size->__pn_.__r_.__value_.__r.__words[2];
      *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
      data->__pn_.__r_.__value_.__r.__words[2] = v32;
      *&size->__pn_.__r_.__value_.__l.__data_ = v31;
      size->__pn_.__r_.__value_.__r.__words[2] = v30;
      v29.__data_ = a1;
      if (std::__fs::filesystem::operator<[abi:ne200100](data, v29))
      {
        v33 = *(a1 + 2);
        result = *a1;
        v34 = data->__pn_.__r_.__value_.__r.__words[2];
        *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 2) = v34;
        *&data->__pn_.__r_.__value_.__l.__data_ = result;
        data->__pn_.__r_.__value_.__r.__words[2] = v33;
      }
    }
  }

  return result;
}

float skit::entity_token_wgt(skit *this)
{
  if (this > 0x10)
  {
    return ((this * 4.0) + -1.0) / (this + (this * this));
  }

  else
  {
  }
}

void skit::FieldSpanMatcherV3::FieldSpanMatcherV3()
{
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>();
}

{
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>();
}

void sub_2998D4AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char *a27)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector((v28 + 142));
  skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector((v28 + 88));
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector((v28 + 76));
  v31 = *(v27 + 672);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v27 + 640);
  if (v32 != a10)
  {
    free(v32);
  }

  if (*v29 != a11)
  {
    free(*v29);
  }

  if (*(v27 + 95) < 0)
  {
    operator delete(*v28);
  }

  if (*(v27 + 71) < 0)
  {
    operator delete(*(v28 - 3));
  }

  a27 = a13;
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = &a15;
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v33);
  _Unwind_Resume(a1);
}

void std::basic_string<char16_t>::__init_copy_ctor_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __sz)
{
  if (__sz > 0xA)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      if ((__sz | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (__sz | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v3);
    }

    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 2 * __sz + 2;

  memmove(this, __s, v4);
}

void std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<skit::Token>,skit::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6F910, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_ptr_emplace<skit::internal::FieldSpanMatcherImpl>::__on_zero_shared(uint64_t a1)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector(a1 + 1208);
  skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector(a1 + 776);
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(a1 + 680);
  v2 = *(a1 + 672);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 640);
  if (v3 != (a1 + 656))
  {
    free(v3);
  }

  v4 = *(a1 + 96);
  if (v4 != (a1 + 112))
  {
    free(v4);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v5 = (a1 + 24);
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector(uint64_t a1)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(*a1, *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 104 * v3;
    do
    {
      v2 = (skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v2) + 104);
      v4 -= 104;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(uint64_t a1)
{
  skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*a1, *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = 40 * a2;
    do
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 40;
      v3 -= 40;
    }

    while (v3);
  }
}

uint64_t skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != (a1 + 88))
  {
    free(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = 72 * a2;
    do
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 72;
      v3 -= 72;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<skit::internal::FieldSpanMatcherImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F93B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2A3200);
}

uint64_t skit::FieldSpanMatcherV3::query_token_stream_begin(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::query_token_stream_end(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::alias_span_matcher(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9[10] = *MEMORY[0x29EDCA608];
  v8[0] = v9;
  v8[1] = 0x200000000;
  v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = skit::FieldSpanMatcherV3::alias_span_matcher(a1, &v7, a3, a4, v8, 0);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v8);
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_2998D52F4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  _Unwind_Resume(a1);
}

uint64_t skit::FieldSpanMatcherV3::alias_span_matcher(uint64_t *a1, __int128 *a2, char a3, uint64_t a4, uint64_t *a5, int a6)
{
  v6 = *a1;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = skit::internal::FieldSpanMatcherImpl::alias_span_matcher(v6, &v9, a3, a4, a5, a6);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  return v7;
}

void sub_2998D5370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void skit::FieldSpanMatcherV3::alias_filters(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    skit::internal::FieldSpanMatcherImpl::alias_filters(v3, a2, a3);
  }
}

void skit::FieldSpanMatcherV3::clear_alias_span_matcher(skit::internal::FieldSpanMatcherImpl **this)
{
  v1 = *this;
  if (v1)
  {
    skit::internal::FieldSpanMatcherImpl::clear_alias_span_matcher(v1);
  }
}

uint64_t skit::FieldSpanMatcherV3::query_alias_matches_begin(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 752);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::query_alias_matches_end(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 752) + 104 * *(*this + 760);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::match(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7[10] = *MEMORY[0x29EDCA608];
  v6[0] = v7;
  v6[1] = 0x200000000;
  v3 = *a1;
  if (v3)
  {
    skit::internal::FieldSpanMatcherImpl::match(v3, a2, a3, v6, 0);
  }

  result = skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v6);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998D5470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  _Unwind_Resume(a1);
}

uint64_t skit::FieldSpanMatcherV3::match(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  result = *a1;
  if (result)
  {
    return skit::internal::FieldSpanMatcherImpl::match(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t skit::FieldSpanMatcherV3::merge_field(uint64_t *a1, uint64_t a2, int32x4_t *a3, char a4)
{
  v4 = *a1;
  if (*a1)
  {
    if ((a4 & 1) == 0)
    {
      *a2 = vaddq_s32(*a2, a3[2]);
    }

    if (a3[3].i32[2])
    {
      v6 = 48;
      if (*(v4 + 602))
      {
        v6 = 24;
      }

      if ((*(v4 + v6 + 23) & 0x8000000000000000) != 0)
      {
        v7 = *(v4 + v6);
        v8 = *(v4 + v6 + 8);
      }

      v9 = a3[3].i64[0];
      v10 = *(a2 + 24);
      if (v10 == *(a2 + 28))
      {
        skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_reserve_more((a2 + 16), v10 + (v10 >> 1) + 1);
        v12 = *(a2 + 24);
      }

      v11 = *(a2 + 16);
      skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::MergedFieldMatchImpl();
    }
  }

  return 0;
}

void skit::FieldSpanMatcherV3::finalize(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && *(a2 + 44))
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 56))
    {
      v7 = *(a2 + 48);
      do
      {
        v8 = v7[1] - *v7;
        if (v8 < 0x34)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }

        if (v8 < 0x18)
        {
          v9 = 3;
        }

        if (v8 < 0xB)
        {
          v9 = 2;
        }

        if (v8 < 5)
        {
          v9 = 1;
        }

        if (v8 >= 3)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v7, *(a2 + 44), v6);
        if (v8 > 2 || (*(v2 + 602) & 1) != 0 || v7[1] - *v7 <= v8 || v7[2] <= v10)
        {
          v7 += 16;
        }

        else
        {
          skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(a2 + 48, v7);
        }
      }

      while (v7 != (*(a2 + 48) + (*(a2 + 56) << 6)));
    }
  }
}

{
  v2 = *a1;
  if (*a1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 24))
    {
      v7 = *(a2 + 16);
      while (1)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = 0;
          v10 = 112 * v8;
          v11 = (*v7 + 44);
          do
          {
            v12 = *v11;
            v11 += 28;
            v9 += v12;
            v10 -= 112;
          }

          while (v10);
        }

        else
        {
          v9 = 0;
        }

        v13 = *(a2 + 12) <= v9 ? v9 : *(a2 + 12);
        if (!v13)
        {
          break;
        }

        v14 = *(v7 + 492) - *(v7 + 488);
        if (v14 < 0x34)
        {
          v15 = 4;
        }

        else
        {
          v15 = 5;
        }

        if (v14 < 0x18)
        {
          v15 = 3;
        }

        if (v14 < 0xB)
        {
          v15 = 2;
        }

        if (v14 < 5)
        {
          v15 = 1;
        }

        if (v14 >= 3)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v7 + 488, v13, v6);
        if ((*(v2 + 602) & 1) != 0 || *(v7 + 492) - *(v7 + 488) <= v14 || *(v7 + 496) <= v16)
        {
          v17 = *(v7 + 8);
          if (v17)
          {
            v18 = 112 * v17;
            v19 = *v7 + 48;
            do
            {
              if (*(v19 - 16))
              {
                skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v19, *(v19 - 4), v6);
              }

              v19 += 112;
              v18 -= 112;
            }

            while (v18);
          }

          goto LABEL_41;
        }

        skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::erase(a2 + 16, v7);
LABEL_42:
        if (v7 == *(a2 + 16) + 552 * *(a2 + 24))
        {
          return;
        }
      }

      *(v7 + 500) = 0;
LABEL_41:
      v7 += 552;
      goto LABEL_42;
    }
  }
}

uint64_t skit::SmallVector<skit::AliasMatch,2u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 40 * *(a1 + 8);
  for (i = a2 + 40; i != v4; i += 40)
  {
    v6 = (i - 40);
    if (*(i - 17) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *i;
    v7 = *(i + 24);
    *(i - 24) = *(i + 16);
    *(i + 23) = 0;
    *i = 0;
    *(i - 16) = v7;
    *(i - 8) = *(i + 32);
  }

  if (*(v4 - 17) < 0)
  {
    operator delete(*(v4 - 40));
  }

  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<std::tuple<std::basic_string<char16_t>,skit::GroupId>,2u,true>::_reserve_more(__int128 **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(32 * a2, 0x1012040F4512C97uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v13, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 2);
      *v7 = v9;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      *(v7 + 12) = *(v8 + 12);
      v7 += 2;
      v8 += 2;
    }

    while (v8 != &v5[2 * v6]);
    v10 = 32 * v6;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
      v10 -= 32;
    }

    while (v10);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result >> 5;
  return result;
}

void skit::internal::BlobFile::resize(skit::internal::BlobFile *this, off_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!skit::internal::BlobFile::flush_internal_cache(this))
  {
    if (ftruncate(*(this + 6), a2))
    {
      v5 = *__error();
      if (fcntl(*(this + 6), 50, v11) == -1)
      {
        v11[0] = 0;
      }

      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v6 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v8 = v11;
        v9 = 1024;
        v10 = v5;
        _os_log_error_impl(&dword_2998C6000, v6, OS_LOG_TYPE_ERROR, "BlobFile::resize : file truncate failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
      }
    }

    else
    {
      *(this + 4) = a2;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

size_t skit::SpanMatchV3::append_alias_id(size_t result, unsigned __int16 a2, int a3)
{
  v3 = result;
  *(result + 24) += a3;
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = &v5[v6];
  if (v6)
  {
    v8 = 2 * v6;
    while (1)
    {
      v9 = *v5;
      if (v9 == a2)
      {
        break;
      }

      if (v9 > a2)
      {
        goto LABEL_7;
      }

      ++v5;
      v8 -= 2;
      if (!v8)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v6 + 1;
    if ((v6 + 1) <= *(result + 44))
    {
      if (v7 != v5)
      {
        v19 = v7;
        do
        {
          v20 = *--v19;
          *v7 = v20;
          v7 = v19;
        }

        while (v19 != v5);
        v7 = v5;
      }
    }

    else
    {
      v11 = v10 + (v6 >> 1);
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = skit::SmallVector<skit::GroupId,4u,true>::allocate(v12);
      v14 = *(v3 + 32);
      v7 = v13;
      if (v14 != v5)
      {
        do
        {
          v15 = *v14++;
          *v7++ = v15;
        }

        while (v14 != v5);
        v14 = *(v3 + 32);
      }

      v16 = &v14[*(v3 + 40)];
      if (v16 != v5)
      {
        v17 = v7 + 1;
        do
        {
          v18 = *v5++;
          *v17++ = v18;
        }

        while (v5 != v16);
        v14 = *(v3 + 32);
      }

      if (v14 != (v3 + 48))
      {
        free(v14);
      }

      *(v3 + 32) = v13;
      result = malloc_size(v13);
      *(v3 + 44) = result >> 1;
    }

    *(v3 + 40) = v10;
    *v7 = a2;
  }

  return result;
}

void *skit::SmallVector<skit::GroupId,4u,true>::allocate(unsigned int a1)
{
  result = malloc_type_malloc(2 * a1, 0x1000040BDFB0063uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  return result;
}

size_t skit::SpanMatchV3::merge(size_t this, int32x2_t *a2)
{
  LODWORD(v2) = *this;
  LODWORD(v3) = *(this + 4);
  v4 = a2->u32[1];
  if (a2->i32[0] >= *this)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2->u32[0];
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  else
  {
    v3 = v3;
  }

  *this = v2 | (v3 << 32);
  *(this + 8) += a2[1].i32[0];
  *(this + 12) = *&a2[1].i32[1] + *(this + 12);
  *(this + 16) = vadd_s32(*(this + 16), a2[2]);
  *(this + 24) += a2[3].i32[0];
  v5 = a2[5].u32[0];
  if (v5)
  {
    v6 = this;
    if (*(this + 40))
    {
      v7 = a2[4];
      v8 = 2 * v5;
      do
      {
        v9 = *v7++;
        this = skit::SpanMatchV3::append_alias_id(v6, v9, 0);
        v8 -= 2;
      }

      while (v8);
    }

    else if (this != a2)
    {
      v10 = a2[4];
      if (*(this + 44) >= v5)
      {
        v15 = *(this + 32);
        v16 = 2 * v5;
        do
        {
          v17 = *v10++;
          *v15++ = v17;
          v16 -= 2;
        }

        while (v16);
      }

      else
      {
        v11 = skit::SmallVector<skit::GroupId,4u,true>::allocate(a2[5].u32[0]);
        v12 = v11;
        for (i = 0; i != v5; ++i)
        {
          *&v11[i * 2] = v10[i];
        }

        v14 = *(v6 + 32);
        if (v14 != (v6 + 48))
        {
          free(v14);
        }

        *(v6 + 32) = v12;
        this = malloc_size(v12);
        *(v6 + 44) = this >> 1;
      }

      *(v6 + 40) = v5;
    }
  }

  return this;
}

double skit::SpanMatchV3::operator skit::SpanMatchV2@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

BOOL skit::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0;
  }

  return *(a1 + 20) > *(a2 + 20);
}

void *skit::operator<<(void *a1, unsigned int *a2)
{
  v4 = MEMORY[0x29C2A30A0](a1, *a2);
  v24 = 58;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v24, 1);
  v6 = MEMORY[0x29C2A30A0](v5, a2[1]);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (", 2);
  v8 = MEMORY[0x29C2A30A0](v7, a2[2]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") score=", 8);
  v9 = a2[3];
  v10 = std::ostream::operator<<();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " token_cnt=", 11);
  v12 = MEMORY[0x29C2A30A0](v11, a2[4]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " stop_word_cnt=", 15);
  v14 = MEMORY[0x29C2A30A0](v13, a2[5]);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " alias_token_cnt=", 17);
  v16 = MEMORY[0x29C2A30A0](v15, a2[6]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " group_ids={ ", 13);
  v17 = a2[10];
  if (v17)
  {
    v18 = *(a2 + 4);
    v19 = 2 * v17;
    do
    {
      v20 = *v18++;
      v21 = MEMORY[0x29C2A30B0](a1, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
      v19 -= 2;
    }

    while (v19);
  }

  v23 = 125;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v23, 1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2A3070](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2A3080](v20);
  return a1;
}

void sub_2998D64C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2A3080](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2998D649CLL);
}

void skit::to_string(std::string *a1, uint64_t a2, std::string::size_type a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  skit::to_string(a1, a2, a3);
}

void sub_2998D6574(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 552 * *(a1 + 8);
  v5 = a2 + 552;
  if (a2 + 552 != v4)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = 112 * v8;
        do
        {
          v7 = (skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v7) + 112);
          v9 -= 112;
        }

        while (v9);
        v7 = *v6;
      }

      if (v7 != (v6 + 16))
      {
        free(v7);
      }

      skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(v6, v5);
      if (*(v6 + 487) < 0)
      {
        operator delete(*(v6 + 464));
      }

      *(v6 + 464) = *(v5 + 464);
      *(v6 + 480) = *(v5 + 480);
      *(v5 + 487) = 0;
      *(v5 + 464) = 0;
      *(v6 + 488) = *(v5 + 488);
      *(v6 + 500) = *(v5 + 500);
      skit::SmallVector<skit::GroupId,4u,true>::operator=((v6 + 520), v5 + 520);
      *(v6 + 544) = *(v5 + 544);
      v5 += 552;
      v6 += 552;
    }

    while (v5 != v4);
  }

  skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(v4 - 552);
  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(552 * a2, 0x1032040BBF17678uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(v7, v8);
      v9 = *(v8 + 464);
      *(v7 + 480) = *(v8 + 480);
      *(v7 + 464) = v9;
      *(v8 + 464) = 0;
      *(v8 + 472) = 0;
      *(v8 + 480) = 0;
      v10 = *(v8 + 488);
      *(v7 + 500) = *(v8 + 500);
      *(v7 + 488) = v10;
      skit::SmallVector<skit::GroupId,4u,true>::move(v7 + 520, v8 + 520);
      *(v7 + 544) = *(v8 + 544);
      v8 += 552;
      v7 += 552;
    }

    while (v8 != &v5[552 * v6]);
    v11 = 552 * v6;
    do
    {
      skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(v5);
      v5 += 552;
      v11 -= 552;
    }

    while (v11);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x228;
  return result;
}

uint64_t skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != (a1 + 96))
  {
    free(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

skit::SpanMatchV3 *skit::SpanMatchV3::SpanMatchV3(skit::SpanMatchV3 *this, const skit::SpanMatchV3 *a2)
{
  v4 = *a2;
  *(this + 12) = *(a2 + 12);
  *this = v4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 10);
  if (v6 < 5)
  {
    v9 = (this + 48);
    *(this + 4) = this + 48;
    *(this + 10) = v6;
    *(this + 11) = 4;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = skit::SmallVector<skit::GroupId,4u,true>::allocate(*(a2 + 10));
    *(this + 4) = v7;
    v8 = malloc_size(v7);
    v9 = *(this + 4);
    *(this + 10) = v6;
    *(this + 11) = v8 >> 1;
  }

  v10 = 2 * v6;
  do
  {
    v11 = *v5++;
    *v9++ = v11;
    v10 -= 2;
  }

  while (v10);
LABEL_6:
  *(this + 14) = *(a2 + 14);
  return this;
}

uint64_t skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 112 * v3;
    do
    {
      v2 = (skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v2) + 112);
      v4 -= 112;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void *skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::allocate(unsigned int a1)
{
  result = malloc_type_malloc(112 * a1, 0x1032040567AB6A7uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  return result;
}

skit::SpanMatchV3 *std::uninitialized_copy[abi:ne200100]<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>> const*,skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>*>(skit::SpanMatchV3 *result, skit::SpanMatchV3 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      *(a3 + v6) = *(v5 + v6);
      v8 = (a3 + v6 + 8);
      if (*(v5 + v6 + 31) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v8, *(v7 + 1), *(v7 + 2));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 3);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      *(a3 + v6 + 32) = *(v7 + 2);
      result = skit::SpanMatchV3::SpanMatchV3((a3 + v6 + 48), (v5 + v6 + 48));
      v6 += 112;
    }

    while (v7 + 112 != a2);
  }

  return result;
}

uint64_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2 != (a1 + 536))
  {
    free(v2);
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  return skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::~SmallVector(a1);
}

uint64_t skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*a2 == a2 + 16)
  {
    v5 = result + 16;
    *result = result + 16;
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 112 * v6;
      v9 = *a2;
      do
      {
        *v5 = *v9;
        v10 = *(v9 + 8);
        *(v5 + 24) = *(v9 + 24);
        *(v5 + 8) = v10;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        *(v5 + 32) = *(v9 + 32);
        v11 = *(v9 + 48);
        *(v5 + 60) = *(v9 + 60);
        *(v5 + 48) = v11;
        skit::SmallVector<skit::GroupId,4u,true>::move(v5 + 80, v9 + 80);
        *(v5 + 104) = *(v9 + 104);
        v9 += 112;
        v5 += 112;
      }

      while (v9 != v8);
      v12 = 112 * v6;
      do
      {
        result = skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v7);
        v7 += 112;
        v12 -= 112;
      }

      while (v12);
    }

    v4 = (v3 + 12);
  }

  else
  {
    *result = *a2;
    v4 = (a2 + 12);
    *(result + 12) = *(a2 + 12);
    *a2 = a2 + 16;
  }

  *v4 = 4;
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  return result;
}

uint64_t skit::SmallVector<skit::GroupId,4u,true>::move(uint64_t result, uint64_t a2)
{
  if (*a2 == a2 + 16)
  {
    v3 = (result + 16);
    *result = result + 16;
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *a2;
      v6 = 2 * v4;
      do
      {
        v7 = *v5++;
        *v3++ = v7;
        v6 -= 2;
      }

      while (v6);
    }

    v2 = (result + 12);
  }

  else
  {
    *result = *a2;
    v2 = (a2 + 12);
    *(result + 12) = *(a2 + 12);
    *a2 = a2 + 16;
  }

  *v2 = 4;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  return result;
}

void **skit::SmallVector<skit::GroupId,4u,true>::operator=(void **a1, uint64_t a2)
{
  v5 = a1 + 2;
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  skit::SmallVector<skit::GroupId,4u,true>::move(a1, a2);
  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6F918, MEMORY[0x29EDC9350]);
}

void std::basic_string<char16_t>::push_back(std::basic_string<char16_t> *this, std::basic_string<char16_t>::value_type __c)
{
  v4 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 10)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v5 = 10;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v5 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v5)
  {
LABEL_5:
    std::basic_string<char16_t>::__grow_by(this, v5, 1uLL, v5, v5, v2, v3);
    size = v5;
  }

  v4->__r_.__value_.__l.__size_ = size + 1;
  v4 = v4->__r_.__value_.__r.__words[0];
LABEL_8:
  *(&v4->__r_.__value_.__l.__data_ + 2 * size) = 32;
}

void std::basic_string<char16_t>::__grow_by_and_replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add, const std::basic_string<char16_t>::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v9 = 2 * __old_cap;
    }

    if ((v9 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (v9 | 3) + 1;
    }

    v11 = v9 >= 0xB;
    v12 = 11;
    if (v11)
    {
      v12 = v10;
    }

    if (__old_cap > 0x3FFFFFFFFFFFFFF2)
    {
      v13 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v13 = v12;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v13);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

void std::basic_string<char16_t>::__grow_by(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add)
{
  if (0x7FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v8 | 3) + 1;
    }

    v10 = v8 >= 0xB;
    v11 = 11;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap <= 0x3FFFFFFFFFFFFFF2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v12);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 392 * *(a1 + 8);
  if (a2 + 392 != v4)
  {
    v5 = a2;
    do
    {
      skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(*v5, *(v5 + 8));
      if (v5 + 16 != *v5)
      {
        free(*v5);
      }

      skit::SmallVector<skit::FieldMatchV2,4u,true>::move(v5, (v5 + 392));
      if (*(v5 + 359) < 0)
      {
        operator delete(*(v5 + 336));
      }

      *(v5 + 352) = *(v5 + 744);
      *(v5 + 336) = *(v5 + 728);
      *(v5 + 751) = 0;
      *(v5 + 728) = 0;
      v6 = *(v5 + 768);
      *(v5 + 360) = *(v5 + 752);
      *(v5 + 376) = v6;
      v7 = v5 + 784;
      v5 += 392;
    }

    while (v7 != v4);
  }

  skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(v4 - 392);
  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(392 * a2, 0x10320407C6195B8uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      skit::SmallVector<skit::FieldMatchV2,4u,true>::move(v7, v8);
      v9 = *(v8 + 21);
      *(v7 + 352) = *(v8 + 44);
      *(v7 + 336) = v9;
      *(v8 + 42) = 0;
      *(v8 + 43) = 0;
      *(v8 + 44) = 0;
      v10 = *(v8 + 376);
      *(v7 + 360) = *(v8 + 360);
      *(v7 + 376) = v10;
      v7 += 392;
      v8 += 392;
    }

    while (v8 != &v5[392 * v6]);
    v11 = 392 * v6;
    do
    {
      skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(v5);
      v5 += 392;
      v11 -= 392;
    }

    while (v11);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x188;
  return result;
}

uint64_t skit::SmallVector<skit::FieldMatchV2,4u,true>::~SmallVector(uint64_t a1)
{
  skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(*a1, *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 80 * a2;
    v3 = (a1 + 31);
    do
    {
      if (*v3 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 += 80;
      v2 -= 80;
    }

    while (v2);
  }
}

__n128 std::uninitialized_copy[abi:ne200100]<skit::FieldMatchV2 const*,skit::FieldMatchV2*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      *(a3 + v6) = *(a1 + v6);
      v8 = (a3 + v6 + 8);
      if (*(a1 + v6 + 31) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v8, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 24);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v10 = a3 + v6;
      result = *(v7 + 32);
      v12 = *(v7 + 64);
      *(v10 + 48) = *(v7 + 48);
      *(v10 + 64) = v12;
      *(v10 + 32) = result;
      v6 += 80;
    }

    while (v7 + 80 != a2);
  }

  return result;
}

uint64_t skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  return skit::SmallVector<skit::FieldMatchV2,4u,true>::~SmallVector(a1);
}

void skit::SmallVector<skit::FieldMatchV2,4u,true>::move(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2 + 2)
  {
    v5 = a1 + 16;
    *a1 = a1 + 16;
    v6 = *(a2 + 2);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 80 * v6;
      v9 = *a2;
      do
      {
        *v5 = *v9;
        v10 = *(v9 + 8);
        *(v5 + 24) = *(v9 + 24);
        *(v5 + 8) = v10;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        v11 = *(v9 + 32);
        v12 = *(v9 + 64);
        *(v5 + 48) = *(v9 + 48);
        *(v5 + 64) = v12;
        *(v5 + 32) = v11;
        v5 += 80;
        v9 += 80;
      }

      while (v9 != v8);
      v13 = (v7 + 31);
      v14 = 80 * v6;
      do
      {
        if (*v13 < 0)
        {
          operator delete(*(v13 - 23));
        }

        v13 += 80;
        v14 -= 80;
      }

      while (v14);
    }

    v4 = (a1 + 12);
  }

  else
  {
    *a1 = *a2;
    v4 = a2 + 3;
    *(a1 + 12) = *(a2 + 3);
    *a2 = (a2 + 2);
  }

  *v4 = 4;
  *(a1 + 8) = *(a2 + 2);
  *(a2 + 2) = 0;
}

float skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV2>(uint64_t a1, float *a2, int a3, int a4)
{
  if ((*(a1 + 602) & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a1 + 80);
    if (v4 + 1 < v5)
    {
      v6 = *(a2 + 1);
      if (v6 < v5)
      {
        v7 = *(a2 + 2);
        v8 = v6 - v4;
        v9 = *(a1 + 72);
        v10 = *(*a1 + 48 * *(v9 + 4 * v4) + 24);
        v11 = *(*a1 + 48 * (*(v9 + 4 * v6 + 2) - 1) + 28);
        v12 = v7;
        v13 = v11 - v10 >= v8;
        v14 = v11 - v10 - v8;
        if (v14 != 0 && v13)
        {
          v12 = v14 + v7;
          *(a2 + 2) = v14 + v7;
        }

        *a2 = v10 | (v11 << 32);
        a2[3] = a2[3] + (v12 - v7);
      }
    }
  }

  result = a2[3] / (a4 + a3);
  a2[3] = result;
  return result;
}

float skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(a1 + 602) & 1) == 0)
  {
    v7 = *(a1 + 80);
    if (*a2 + 1 < v7)
    {
      v8 = *(a2 + 4);
      if (v8 < v7)
      {
        v9 = *(a2 + 8);
        skit::internal::FieldSpanMatcherImpl::align_to_token_boundaries<skit::SpanMatchV3>(*a1, *(a1 + 72), a2, v8 - *a2);
        *(a2 + 12) = *(a2 + 12) + (*(a2 + 8) - v9);
      }
    }
  }

  result = *(a2 + 12) / (a4 + a3);
  *(a2 + 12) = result;
  return result;
}

uint64_t skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + (*(a1 + 8) << 6);
  if (a2 + 64 != v4)
  {
    v5 = a2 + 96;
    do
    {
      *(v5 - 96) = *(v5 - 32);
      *(v5 - 84) = *(v5 - 20);
      skit::SmallVector<skit::GroupId,4u,true>::operator=((v5 - 64), v5);
      *(v5 - 40) = *(v5 + 24);
      v6 = v5 + 32;
      v5 += 64;
    }

    while (v6 != v4);
  }

  v7 = *(v4 - 32);
  if (v7 != (v4 - 16))
  {
    free(v7);
  }

  --*(a1 + 8);
  return a2;
}

uint64_t skit::internal::FieldSpanMatcherImpl::align_to_token_boundaries<skit::SpanMatchV3>(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v4 = *(result + 48 * *(a2 + 4 * *a3) + 24);
  v5 = *(result + 48 * (*(a2 + 4 * a3[1] + 2) - 1) + 28);
  if (v5 - v4 > a4)
  {
    a3[2] += v5 - v4 - a4;
  }

  *a3 = v4 | (v5 << 32);
  return result;
}

BOOL skit::internal::AliasFilter::select_by_group_id(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  if (a2 && *a1 && *a1 != a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 1);
  v6 = v4 - 1;
  do
  {
    v7 = *v5++;
    result = v7 == a3;
  }

  while (v7 != a3 && v6-- != 0);
  return result;
}

BOOL skit::internal::anonymous namespace::is_possessive_token(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((HIDWORD(a3) - a3) < 3)
  {
    return 0;
  }

  v3 = a1 + 2 * HIDWORD(a3);
  return *(v3 - 4) == 7536679 || *(v3 - 4) == 7544857;
}

void skit::internal::anonymous namespace::merge_token_spans(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = *(a4 + 8);
  if (a5)
  {
    v7 = a5;
    v11 = 0;
    do
    {
      if (v7 >= v6)
      {
LABEL_20:
        ++v11;
      }

      else
      {
        v12 = 0;
        v13 = (*a4 + (v11 << 6));
        v14 = v7;
        v27 = v7;
        v28 = v6;
LABEL_5:
        v26 = v12;
        v15 = v6 - v14;
        v16 = v14 << 6;
        do
        {
          v17 = *a4;
          v18 = (*a4 + v16);
          if (v18[4] <= 1u)
          {
            v19 = v13->u32[1];
            v20 = *v18 - v19;
            if (*v18 >= v19)
            {
              if (*v18 == v19)
              {
                goto LABEL_16;
              }

              v21 = v19 - a3;
              if (a2 < v21)
              {
                std::__throw_out_of_range[abi:ne200100]("string_view::substr");
              }

              if (a2 - v21 < v20)
              {
                v20 = a2 - v21;
              }

              v29[0] = a1 + 2 * v21;
              v29[1] = v20;
              if (!skit::is_significant(v29))
              {
                v18 = (v17 + v16);
LABEL_16:
                skit::SpanMatchV3::merge(v18, v13);
                ++v14;
                v12 = 1;
                v7 = v27;
                v6 = v28;
                if (v28 != v14)
                {
                  goto LABEL_5;
                }

                goto LABEL_19;
              }
            }
          }

          ++v14;
          v16 += 64;
          --v15;
        }

        while (v15);
        v7 = v27;
        v6 = v28;
        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(a4, *a4 + (v11 << 6));
        --v7;
        --v6;
      }
    }

    while (v11 < v7);
    v6 = *(a4 + 8);
  }

  v22 = *a4;
  v23 = (*a4 + (v6 << 6));
  v24 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(v22, v23, v25, 1);
}

char **skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3 << 6;
    v5 = v2 + 48;
    do
    {
      v6 = *(v5 - 2);
      if (v5 != v6)
      {
        free(v6);
      }

      v5 += 64;
      v4 -= 64;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(uint64_t a1, unsigned int *a2, uint64_t a3, char a4)
{
  v193 = *MEMORY[0x29EDCA608];
  while (2)
  {
    v8 = a2 - 16;
    k = a1;
    while (1)
    {
      while (1)
      {
        a1 = k;
        v10 = (a2 - k) >> 6;
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(k, k + 16, a2 - 16);
              goto LABEL_300;
            case 4:
              _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(k, k + 16, k + 32);
              v65 = *(a2 - 16);
              v66 = k[32];
              if (v65 >= v66)
              {
                if (v65 > v66)
                {
                  goto LABEL_300;
                }

                v157 = *(a2 - 15);
                v158 = k[33];
                if (v157 <= v158 && (v157 < v158 || *(a2 - 10) >= k[38]))
                {
                  goto LABEL_300;
                }
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((k + 32), (a2 - 16));
              v67 = k[32];
              v68 = k[16];
              if (v67 >= v68)
              {
                if (v67 > v68)
                {
                  goto LABEL_300;
                }

                v176 = k[33];
                v177 = k[17];
                if (v176 <= v177 && (v176 < v177 || k[38] >= k[22]))
                {
                  goto LABEL_300;
                }
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((k + 16), (k + 32));
              v69 = k[16];
              if (v69 >= *k)
              {
                if (v69 > *k)
                {
                  goto LABEL_300;
                }

                v179 = k[17];
                v180 = k[1];
                if (v179 <= v180 && (v179 < v180 || k[22] >= k[6]))
                {
                  goto LABEL_300;
                }
              }

              v61 = (k + 16);
LABEL_142:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, v61);
              goto LABEL_300;
            case 5:
              _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(k, k + 16, k + 32, k + 48, a2 - 16);
              goto LABEL_300;
          }
        }

        else
        {
          if (v10 < 2)
          {
            goto LABEL_300;
          }

          if (v10 == 2)
          {
            v61 = (a2 - 16);
            v62 = *(a2 - 16);
            if (v62 >= *k)
            {
              if (v62 > *k)
              {
                goto LABEL_300;
              }

              v63 = *(a2 - 15);
              v64 = k[1];
              if (v63 <= v64 && (v63 < v64 || *(a2 - 10) >= k[6]))
              {
                goto LABEL_300;
              }
            }

            goto LABEL_142;
          }
        }

        if (v10 <= 23)
        {
          v70 = a2;
          if (a4)
          {
            if (a1 != a2)
            {
              v71 = a1 + 64;
              if ((a1 + 64) != a2)
              {
                v72 = 0;
                v73 = a1;
                do
                {
                  v74 = v73;
                  v73 = v71;
                  v75 = v74[16];
                  if (v75 < *v74 || v75 <= *v74 && ((v78 = *(v73 + 4), v79 = v74[1], v78 > v79) || v78 >= v79 && *(v73 + 24) < v74[6]))
                  {
                    v76 = *v73;
                    *&v187[12] = *(v73 + 12);
                    *v187 = v76;
                    if (*(v73 + 32) == v73 + 48)
                    {
                      v188 = &v191;
                      v80 = *(v73 + 40);
                      v77 = &v190;
                      if (v80)
                      {
                        v81 = *(v73 + 32);
                        v82 = 2 * v80;
                        v83 = &v191;
                        do
                        {
                          v84 = *v81++;
                          *v83 = v84;
                          v83 = (v83 + 2);
                          v82 -= 2;
                        }

                        while (v82);
                        v77 = &v190;
                      }
                    }

                    else
                    {
                      v188 = *(v73 + 32);
                      v77 = (v73 + 44);
                      v190 = *(v73 + 44);
                      *(v73 + 32) = v73 + 48;
                    }

                    *v77 = 4;
                    v189 = *(v73 + 40);
                    *(v73 + 40) = 0;
                    v192 = *(v73 + 56);
                    for (i = v72; ; i -= 64)
                    {
                      v86 = a1 + i;
                      *(v86 + 64) = *(a1 + i);
                      *(v86 + 76) = *(a1 + i + 12);
                      v87 = (a1 + i + 32);
                      skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + i + 96), v87);
                      *(v86 + 120) = *(v86 + 56);
                      if (!i)
                      {
                        v90 = a1;
                        goto LABEL_170;
                      }

                      v88 = *(v86 - 64);
                      if (*v187 >= v88)
                      {
                        if (*v187 > v88)
                        {
                          break;
                        }

                        v89 = *(a1 + i - 60);
                        if (*&v187[4] <= v89 && (*&v187[4] < v89 || *&v187[24] >= *(a1 + i - 40)))
                        {
                          break;
                        }
                      }
                    }

                    v90 = a1 + i;
                    v87 = (v90 + 32);
LABEL_170:
                    v91 = *v187;
                    *(v90 + 12) = *&v187[12];
                    *v90 = v91;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=(v87, &v188);
                    *(v90 + 56) = v192;
                    if (v188 != &v191)
                    {
                      free(v188);
                    }

                    a2 = v70;
                  }

                  v71 = v73 + 64;
                  v72 += 64;
                }

                while ((v73 + 64) != a2);
              }
            }
          }

          else if (a1 != a2)
          {
            for (j = a1 + 64; (a1 + 64) != a2; j = a1 + 64)
            {
              v160 = a1;
              a1 = j;
              v161 = *(v160 + 64);
              if (v161 >= *v160)
              {
                if (v161 > *v160)
                {
                  continue;
                }

                v164 = *(a1 + 4);
                v165 = *(v160 + 4);
                if (v164 <= v165 && (v164 < v165 || *(a1 + 24) >= *(v160 + 24)))
                {
                  continue;
                }
              }

              v162 = *a1;
              *&v187[12] = *(a1 + 12);
              *v187 = v162;
              if (*(a1 + 32) == a1 + 48)
              {
                v188 = &v191;
                v166 = *(a1 + 40);
                v163 = &v190;
                if (v166)
                {
                  v167 = *(a1 + 32);
                  v168 = 2 * v166;
                  v169 = &v191;
                  do
                  {
                    v170 = *v167++;
                    *v169 = v170;
                    v169 = (v169 + 2);
                    v168 -= 2;
                  }

                  while (v168);
                  v163 = &v190;
                }
              }

              else
              {
                v188 = *(a1 + 32);
                v163 = (a1 + 44);
                v190 = *(a1 + 44);
                *(a1 + 32) = a1 + 48;
              }

              *v163 = 4;
              v189 = *(a1 + 40);
              *(a1 + 40) = 0;
              v192 = *(a1 + 56);
              do
              {
                do
                {
                  v171 = v160;
                  *(v160 + 64) = *v160;
                  *(v160 + 76) = *(v160 + 12);
                  skit::SmallVector<skit::GroupId,4u,true>::operator=((v160 + 96), v160 + 32);
                  v172 = *(v160 - 64);
                  v160 -= 64;
                  *(v160 + 184) = *(v160 + 120);
                  v173 = *v187 > v172;
                }

                while (*v187 < v172);
                if (v173)
                {
                  break;
                }

                v174 = *(v171 - 60);
              }

              while (*&v187[4] > v174 || *&v187[4] >= v174 && *&v187[24] < *(v171 - 40));
              v175 = *v187;
              *(v171 + 12) = *&v187[12];
              *v171 = v175;
              skit::SmallVector<skit::GroupId,4u,true>::operator=((v171 + 32), &v188);
              *(v171 + 56) = v192;
              if (v188 != &v191)
              {
                free(v188);
              }

              a2 = v70;
            }
          }

          goto LABEL_300;
        }

        if (!a3)
        {
          if (k != a2)
          {
            v92 = v11 >> 1;
            v93 = v11 >> 1;
            do
            {
              v94 = v93;
              if (v92 >= v93)
              {
                v95 = (2 * v93) | 1;
                v96 = a1 + (v95 << 6);
                if (2 * v94 + 2 < v10)
                {
                  v97 = *(v96 + 64);
                  if (*v96 < v97 || *v96 <= v97 && ((v117 = *(v96 + 4), v118 = *(v96 + 68), v117 > v118) || v117 >= v118 && *(v96 + 24) < *(v96 + 88)))
                  {
                    v96 += 64;
                    v95 = 2 * v94 + 2;
                  }
                }

                v98 = a1 + (v94 << 6);
                if (*v96 >= *v98)
                {
                  if (*v96 > *v98 || (v101 = *(v96 + 4), v102 = *(v98 + 4), v101 <= v102) && (v101 < v102 || *(v96 + 24) >= *(v98 + 24)))
                  {
                    v99 = *v98;
                    *&v187[12] = *(v98 + 12);
                    *v187 = v99;
                    if (*(v98 + 32) == v98 + 48)
                    {
                      v188 = &v191;
                      v103 = *(v98 + 40);
                      v100 = &v190;
                      if (v103)
                      {
                        v104 = *(v98 + 32);
                        v105 = 2 * v103;
                        v106 = &v191;
                        do
                        {
                          v107 = *v104++;
                          *v106 = v107;
                          v106 = (v106 + 2);
                          v105 -= 2;
                        }

                        while (v105);
                        v100 = &v190;
                      }
                    }

                    else
                    {
                      v188 = *(v98 + 32);
                      v100 = (v98 + 44);
                      v190 = *(v98 + 44);
                      *(v98 + 32) = v98 + 48;
                    }

                    *v100 = 4;
                    v189 = *(v98 + 40);
                    *(v98 + 40) = 0;
                    v192 = *(v98 + 56);
                    while (1)
                    {
                      v108 = v96;
                      v109 = *v96;
                      *(v98 + 12) = *(v96 + 12);
                      *v98 = v109;
                      skit::SmallVector<skit::GroupId,4u,true>::operator=((v98 + 32), v96 + 32);
                      *(v98 + 56) = *(v108 + 56);
                      if (v92 < v95)
                      {
                        break;
                      }

                      v110 = 2 * v95;
                      v95 = (2 * v95) | 1;
                      v96 = a1 + (v95 << 6);
                      v111 = v110 + 2;
                      if (v111 < v10)
                      {
                        v112 = *(v96 + 64);
                        if (*v96 < v112 || *v96 <= v112 && ((v114 = *(v96 + 4), v115 = *(v96 + 68), v114 > v115) || v114 >= v115 && *(v96 + 24) < *(v96 + 88)))
                        {
                          v96 += 64;
                          v95 = v111;
                        }
                      }

                      if (*v96 < *v187)
                      {
                        break;
                      }

                      v98 = v108;
                      if (*v96 <= *v187)
                      {
                        v113 = *(v96 + 4);
                        if (v113 > *&v187[4])
                        {
                          break;
                        }

                        v98 = v108;
                        if (v113 >= *&v187[4])
                        {
                          v98 = v108;
                          if (*(v96 + 24) < *&v187[24])
                          {
                            break;
                          }
                        }
                      }
                    }

                    v116 = *v187;
                    *(v108 + 12) = *&v187[12];
                    *v108 = v116;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=((v108 + 32), &v188);
                    *(v108 + 56) = v192;
                    if (v188 != &v191)
                    {
                      free(v188);
                    }
                  }
                }
              }

              v93 = v94 - 1;
            }

            while (v94);
            v119 = a1 + 48;
            do
            {
              *&v181[12] = *(a1 + 12);
              *v181 = *a1;
              if (*(a1 + 32) == v119)
              {
                v182 = &v185;
                v121 = *(a1 + 40);
                v120 = &v184;
                if (v121)
                {
                  v122 = *(a1 + 32);
                  v123 = 2 * v121;
                  v124 = &v185;
                  do
                  {
                    v125 = *v122++;
                    *v124 = v125;
                    v124 = (v124 + 2);
                    v123 -= 2;
                  }

                  while (v123);
                  v120 = &v184;
                }
              }

              else
              {
                v182 = *(a1 + 32);
                v184 = *(a1 + 44);
                *(a1 + 32) = v119;
                v120 = (a1 + 44);
              }

              v126 = a2;
              v127 = 0;
              *v120 = 4;
              v183 = *(a1 + 40);
              *(a1 + 40) = 0;
              v186 = *(a1 + 56);
              v128 = a1;
              do
              {
                v129 = v128;
                v130 = &v128[16 * v127];
                v128 = v130 + 16;
                v131 = 2 * v127;
                v127 = (2 * v127) | 1;
                v132 = v131 + 2;
                if (v132 < v10)
                {
                  v133 = v130[32];
                  v134 = v130[16];
                  if (v134 < v133 || v134 <= v133 && ((v136 = v130[17], v137 = v130[33], v136 > v137) || v136 >= v137 && v130[22] < v130[38]))
                  {
                    v128 = v130 + 32;
                    v127 = v132;
                  }
                }

                v135 = *v128;
                *(v129 + 3) = *(v128 + 3);
                *v129 = v135;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v129 + 4, (v128 + 8));
                v129[14] = v128[14];
              }

              while (v127 <= ((v10 - 2) >> 1));
              v138 = v126 - 16;
              if (v128 == v126 - 16)
              {
                *(v128 + 3) = *&v181[12];
                *v128 = *v181;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, &v182);
                v128[14] = v186;
              }

              else
              {
                v139 = *v138;
                *(v128 + 3) = *(v126 - 13);
                *v128 = v139;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, (v126 - 8));
                v128[14] = *(v126 - 2);
                *(v126 - 13) = *&v181[12];
                *v138 = *v181;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v126 - 4, &v182);
                *(v126 - 2) = v186;
                v140 = (v128 - a1 + 64) >> 6;
                v32 = v140 < 2;
                v141 = v140 - 2;
                if (!v32)
                {
                  v142 = v141 >> 1;
                  v143 = a1 + (v141 >> 1 << 6);
                  if (*v143 < *v128 || *v143 <= *v128 && ((v146 = *(v143 + 4), v147 = v128[1], v146 > v147) || v146 >= v147 && *(v143 + 24) < v128[6]))
                  {
                    v144 = *v128;
                    *&v187[12] = *(v128 + 3);
                    *v187 = v144;
                    if (*(v128 + 4) == v128 + 12)
                    {
                      v145 = &v190;
                      v188 = &v191;
                      v148 = v128[10];
                      if (v148)
                      {
                        v149 = *(v128 + 4);
                        v150 = 2 * v148;
                        v151 = &v191;
                        do
                        {
                          v152 = *v149++;
                          *v151 = v152;
                          v151 = (v151 + 2);
                          v150 -= 2;
                        }

                        while (v150);
                        v145 = &v190;
                      }
                    }

                    else
                    {
                      v188 = *(v128 + 4);
                      v145 = v128 + 11;
                      v190 = v128[11];
                      *(v128 + 4) = v128 + 12;
                    }

                    *v145 = 4;
                    v189 = v128[10];
                    v128[10] = 0;
                    v192 = v128[14];
                    while (1)
                    {
                      v153 = v143;
                      v154 = *v143;
                      *(v128 + 3) = *(v143 + 12);
                      *v128 = v154;
                      skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, v143 + 32);
                      v128[14] = *(v153 + 56);
                      if (!v142)
                      {
                        break;
                      }

                      v142 = (v142 - 1) >> 1;
                      v143 = a1 + (v142 << 6);
                      v128 = v153;
                      if (*v143 >= *v187)
                      {
                        if (*v143 > *v187)
                        {
                          break;
                        }

                        v155 = *(v143 + 4);
                        v128 = v153;
                        if (v155 <= *&v187[4])
                        {
                          if (v155 < *&v187[4])
                          {
                            break;
                          }

                          v128 = v153;
                          if (*(v143 + 24) >= *&v187[24])
                          {
                            break;
                          }
                        }
                      }
                    }

                    v156 = *v187;
                    *(v153 + 12) = *&v187[12];
                    *v153 = v156;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=((v153 + 32), &v188);
                    *(v153 + 56) = v192;
                    if (v188 != &v191)
                    {
                      free(v188);
                    }
                  }
                }
              }

              if (v182 != &v185)
              {
                free(v182);
              }

              a2 = v126 - 16;
              v32 = v10-- <= 2;
            }

            while (!v32);
          }

          goto LABEL_300;
        }

        v12 = v10 >> 1;
        v13 = &k[16 * (v10 >> 1)];
        if (v10 < 0x81)
        {
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_((a1 + (v10 >> 1 << 6)), a1, a2 - 16);
        }

        else
        {
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, (a1 + (v10 >> 1 << 6)), a2 - 16);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_((a1 + 64), v13 - 16, a2 - 32);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_((a1 + 128), (a1 + 64 + (v12 << 6)), a2 - 48);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(v13 - 16, (a1 + (v10 >> 1 << 6)), (a1 + 64 + (v12 << 6)));
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a1 + (v10 >> 1 << 6));
        }

        --a3;
        if (a4)
        {
          break;
        }

        v14 = *(a1 - 64);
        if (v14 < *a1)
        {
          break;
        }

        if (v14 <= *a1)
        {
          v15 = *(a1 - 60);
          v16 = *(a1 + 4);
          if (v15 > v16 || v15 >= v16 && *(a1 - 40) < *(a1 + 24))
          {
            break;
          }
        }

        v38 = *a1;
        *&v187[12] = *(a1 + 12);
        *v187 = v38;
        if (*(a1 + 32) == a1 + 48)
        {
          v39 = &v190;
          v188 = &v191;
          v40 = *(a1 + 40);
          if (v40)
          {
            v41 = *(a1 + 32);
            v42 = 2 * v40;
            v43 = &v191;
            do
            {
              v44 = *v41++;
              *v43 = v44;
              v43 = (v43 + 2);
              v42 -= 2;
            }

            while (v42);
            v39 = &v190;
          }
        }

        else
        {
          v188 = *(a1 + 32);
          v39 = (a1 + 44);
          v190 = *(a1 + 44);
          *(a1 + 32) = a1 + 48;
        }

        *v39 = 4;
        v189 = *(a1 + 40);
        *(a1 + 40) = 0;
        v192 = *(a1 + 56);
        v45 = *v8;
        if (*v187 < *v8)
        {
          v46 = *&v187[4];
LABEL_82:
          v47 = *&v187[24];
          goto LABEL_83;
        }

        v46 = *&v187[4];
        if (*v187 > v45)
        {
          goto LABEL_91;
        }

        v60 = *(a2 - 15);
        if (*&v187[4] > v60)
        {
          goto LABEL_82;
        }

        if (*&v187[4] < v60)
        {
LABEL_91:
          v47 = *&v187[24];
LABEL_92:
          for (k = (a1 + 64); k < a2; k += 16)
          {
            if (*v187 < *k)
            {
              break;
            }

            if (*v187 <= *k)
            {
              v49 = k[1];
              if (*&v187[4] > v49 || *&v187[4] >= v49 && v47 < k[6])
              {
                break;
              }
            }
          }

          goto LABEL_100;
        }

        v47 = *&v187[24];
        if (*&v187[24] >= *(a2 - 10))
        {
          goto LABEL_92;
        }

LABEL_83:
        for (k = (a1 + 64); *v187 >= *k; k += 16)
        {
          if (*v187 <= *k)
          {
            v48 = k[1];
            if (v46 > v48 || v46 >= v48 && v47 < k[6])
            {
              break;
            }
          }
        }

LABEL_100:
        m = a2;
        if (k < a2)
        {
          for (m = (a2 - 16); ; m -= 64)
          {
            if (*v187 >= v45)
            {
              if (*v187 > v45)
              {
                break;
              }

              v51 = *(m + 4);
              if (v46 <= v51 && (v46 < v51 || v47 >= *(m + 24)))
              {
                break;
              }
            }

            v52 = *(m - 64);
            v45 = v52;
          }
        }

        while (k < m)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, m);
          for (k += 16; *v187 >= *k; k += 16)
          {
            if (*v187 <= *k)
            {
              v53 = k[1];
              if (*&v187[4] > v53 || *&v187[4] >= v53 && *&v187[24] < k[6])
              {
                break;
              }
            }
          }

          do
          {
            do
            {
              v54 = *(m - 64);
              m -= 64;
              v55 = *v187 > v54;
            }

            while (*v187 < v54);
            if (v55)
            {
              break;
            }

            v56 = *(m + 4);
          }

          while (*&v187[4] > v56 || *&v187[4] >= v56 && *&v187[24] < *(m + 24));
        }

        v57 = k - 16;
        if (k - 16 != a1)
        {
          v58 = *v57;
          *(a1 + 12) = *(k - 13);
          *a1 = v58;
          skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + 32), (k - 8));
          *(a1 + 56) = *(k - 2);
        }

        v59 = *v187;
        *(k - 13) = *&v187[12];
        *v57 = v59;
        skit::SmallVector<skit::GroupId,4u,true>::operator=(k - 4, &v188);
        *(k - 2) = v192;
        if (v188 != &v191)
        {
          free(v188);
        }

LABEL_73:
        a4 = 0;
      }

      v17 = *a1;
      *&v187[12] = *(a1 + 12);
      *v187 = v17;
      if (*(a1 + 32) == a1 + 48)
      {
        v18 = &v190;
        v188 = &v191;
        v19 = *(a1 + 40);
        if (v19)
        {
          v20 = *(a1 + 32);
          v21 = 2 * v19;
          v22 = &v191;
          do
          {
            v23 = *v20++;
            *v22 = v23;
            v22 = (v22 + 2);
            v21 -= 2;
          }

          while (v21);
          v18 = &v190;
        }
      }

      else
      {
        v188 = *(a1 + 32);
        v18 = (a1 + 44);
        v190 = *(a1 + 44);
        *(a1 + 32) = a1 + 48;
      }

      *v18 = 4;
      v189 = *(a1 + 40);
      *(a1 + 40) = 0;
      v192 = *(a1 + 56);
      for (n = (a1 + 64); ; n += 16)
      {
        if (*n >= *v187)
        {
          if (*n > *v187)
          {
            break;
          }

          v25 = n[1];
          if (v25 <= *&v187[4] && (v25 < *&v187[4] || n[6] >= *&v187[24]))
          {
            break;
          }
        }
      }

      ii = a2 - 16;
      if (n - 16 == a1)
      {
        for (ii = a2 - 16; n < ii + 16; ii -= 16)
        {
          if (*ii < *v187)
          {
            goto LABEL_50;
          }

          if (*ii <= *v187)
          {
            v28 = ii[1];
            if (v28 > *&v187[4] || v28 >= *&v187[4] && ii[6] < *&v187[24])
            {
              goto LABEL_50;
            }
          }
        }

        ii += 16;
      }

      else
      {
        while (*ii >= *v187)
        {
          if (*ii <= *v187)
          {
            v27 = ii[1];
            if (v27 > *&v187[4] || v27 >= *&v187[4] && ii[6] < *&v187[24])
            {
              break;
            }
          }

          ii -= 16;
        }
      }

LABEL_50:
      k = n;
      if (n < ii)
      {
        v29 = ii;
        k = n;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, v29);
          for (k += 16; ; k += 16)
          {
            if (*k >= *v187)
            {
              if (*k > *v187)
              {
                break;
              }

              v30 = k[1];
              if (v30 <= *&v187[4] && (v30 < *&v187[4] || k[6] >= *&v187[24]))
              {
                break;
              }
            }
          }

          while (1)
          {
            v31 = *(v29 - 64);
            v29 -= 64;
            v32 = v31 > *v187;
            if (v31 < *v187)
            {
              break;
            }

            if (!v32)
            {
              v33 = *(v29 + 4);
              if (v33 > *&v187[4] || v33 >= *&v187[4] && *(v29 + 24) < *&v187[24])
              {
                break;
              }
            }
          }
        }

        while (k < v29);
      }

      v34 = k - 16;
      if (k - 16 != a1)
      {
        v35 = *v34;
        *(a1 + 12) = *(k - 13);
        *a1 = v35;
        skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + 32), (k - 8));
        *(a1 + 56) = *(k - 2);
      }

      v36 = *v187;
      *(k - 13) = *&v187[12];
      *v34 = v36;
      skit::SmallVector<skit::GroupId,4u,true>::operator=(k - 4, &v188);
      *(k - 2) = v192;
      if (v188 != &v191)
      {
        free(v188);
      }

      if (n < ii)
      {
LABEL_72:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(a1, k - 16, a3, a4 & 1);
        goto LABEL_73;
      }

      matched = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(a1, k - 16);
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(k, a2))
      {
        break;
      }

      if (!matched)
      {
        goto LABEL_72;
      }
    }

    a2 = k - 16;
    if (!matched)
    {
      continue;
    }

    break;
  }

LABEL_300:
  v178 = *MEMORY[0x29EDCA608];
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  *v15 = *a1;
  *&v15[12] = *(a1 + 12);
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v6 == (a1 + 48))
  {
    v9 = &v19;
    v16 = &v19;
    v8 = *(a1 + 40);
    if (v8)
    {
      v10 = 2 * v8;
      do
      {
        v11 = *v5++;
        *v9 = v11;
        v9 = (v9 + 2);
        v10 -= 2;
      }

      while (v10);
    }

    v7 = &v18;
  }

  else
  {
    v16 = v5;
    v7 = (a1 + 44);
    v18 = *(a1 + 44);
    *(a1 + 32) = a1 + 48;
    LODWORD(v8) = *(a1 + 40);
  }

  *v7 = 4;
  *(a1 + 40) = 0;
  v12 = *(a1 + 56);
  v17 = v8;
  v20 = v12;
  v13 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v13;
  skit::SmallVector<skit::GroupId,4u,true>::operator=(v4, a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *a2 = *v15;
  *(a2 + 12) = *&v15[12];
  skit::SmallVector<skit::GroupId,4u,true>::operator=((a2 + 32), &v16);
  *(a2 + 56) = v20;
  if (v16 != &v19)
  {
    free(v16);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v5 = a1;
  v6 = *a2;
  if (*a2 < *a1)
  {
    goto LABEL_2;
  }

  if (v6 > *a1)
  {
    goto LABEL_4;
  }

  v10 = a2[1];
  v11 = a1[1];
  if (v10 > v11)
  {
LABEL_2:
    v7 = 1;
    goto LABEL_5;
  }

  if (v10 < v11)
  {
LABEL_4:
    v7 = 0;
  }

  else
  {
    v7 = a2[6] < a1[6];
  }

LABEL_5:
  if (*a3 < v6)
  {
    goto LABEL_6;
  }

  if (*a3 > v6)
  {
LABEL_9:
    v8 = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v12 = a3[1];
  v13 = a2[1];
  if (v12 <= v13)
  {
    if (v12 >= v13)
    {
      v8 = a3[6] < a2[6];
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_6:
  v8 = 1;
  if (!v7)
  {
LABEL_20:
    if (!v8)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
    if (*a2 >= *v5)
    {
      if (*a2 > *v5)
      {
        return;
      }

      v16 = a2[1];
      v17 = v5[1];
      if (v16 <= v17 && (v16 < v17 || a2[6] >= v5[6]))
      {
        return;
      }
    }

    a1 = v5;
    v9 = a2;
    goto LABEL_23;
  }

LABEL_10:
  if (!v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
    if (*a3 >= *a2)
    {
      if (*a3 > *a2)
      {
        return;
      }

      v14 = a3[1];
      v15 = a2[1];
      if (v14 <= v15 && (v14 < v15 || a3[6] >= a2[6]))
      {
        return;
      }
    }

    a1 = a2;
  }

  v9 = a3;
LABEL_23:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, v9);
}

void _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v10 = a4[1], v11 = a3[1], v10 > v11) || v10 >= v11 && a4[6] < a3[6]))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a3, a4);
    if (*a3 < *a2 || *a3 <= *a2 && ((v12 = a3[1], v13 = a2[1], v12 > v13) || v12 >= v13 && a3[6] < a2[6]))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
      if (*a2 < *a1 || *a2 <= *a1 && ((v20 = a2[1], v21 = a1[1], v20 > v21) || v20 >= v21 && a2[6] < a1[6]))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && ((v14 = a5[1], v15 = a4[1], v14 > v15) || v14 >= v15 && a5[6] < a4[6]))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a4, a5);
    if (*a4 < *a3 || *a4 <= *a3 && ((v16 = a4[1], v17 = a3[1], v16 > v17) || v16 >= v17 && a4[6] < a3[6]))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a3, a4);
      if (*a3 < *a2 || *a3 <= *a2 && ((v18 = a3[1], v19 = a2[1], v18 > v19) || v18 >= v19 && a3[6] < a2[6]))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
        if (*a2 < *a1 || *a2 <= *a1 && ((v22 = a2[1], v23 = a1[1], v22 > v23) || v22 >= v23 && a2[6] < a1[6]))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
        }
      }
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(unsigned int *a1, unsigned int *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 16);
        v6 = *(a2 - 16);
        if (v6 >= *a1)
        {
          if (v6 > *a1)
          {
            goto LABEL_61;
          }

          v7 = *(a2 - 15);
          v8 = a1[1];
          if (v7 <= v8 && (v7 < v8 || *(a2 - 10) >= a1[6]))
          {
            goto LABEL_61;
          }
        }

        goto LABEL_48;
      }

      goto LABEL_15;
    }

LABEL_61:
    result = 1;
    goto LABEL_62;
  }

  switch(v4)
  {
    case 3:
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a2 - 16);
      goto LABEL_61;
    case 4:
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a1 + 32);
      v29 = *(a2 - 16);
      v30 = a1[32];
      if (v29 >= v30)
      {
        if (v29 > v30)
        {
          goto LABEL_61;
        }

        v34 = *(a2 - 15);
        v35 = a1[33];
        if (v34 <= v35 && (v34 < v35 || *(a2 - 10) >= a1[38]))
        {
          goto LABEL_61;
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((a1 + 32), (a2 - 16));
      v31 = a1[32];
      v32 = a1[16];
      if (v31 >= v32)
      {
        if (v31 > v32)
        {
          goto LABEL_61;
        }

        v36 = a1[33];
        v37 = a1[17];
        if (v36 <= v37 && (v36 < v37 || a1[38] >= a1[22]))
        {
          goto LABEL_61;
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((a1 + 16), (a1 + 32));
      v33 = a1[16];
      if (v33 >= *a1)
      {
        if (v33 > *a1)
        {
          goto LABEL_61;
        }

        v40 = a1[17];
        v41 = a1[1];
        if (v40 <= v41 && (v40 < v41 || a1[22] >= a1[6]))
        {
          goto LABEL_61;
        }
      }

      v5 = (a1 + 16);
LABEL_48:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, v5);
      goto LABEL_61;
    case 5:
      _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      goto LABEL_61;
  }

LABEL_15:
  v9 = a1 + 32;
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a1 + 32);
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    goto LABEL_61;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (*v10 < *v9 || *v10 <= *v9 && ((v16 = v10[1], v17 = v9[1], v16 > v17) || v16 >= v17 && v10[6] < v9[6]))
    {
      *v42 = *v10;
      *&v42[12] = *(v10 + 3);
      v13 = *(v10 + 4);
      if (v13 == v10 + 12)
      {
        v43 = &v46;
        v15 = v10[10];
        if (v15)
        {
          v18 = 2 * v15;
          v19 = &v46;
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            *v19 = v20;
            v19 = (v19 + 2);
            v18 -= 2;
          }

          while (v18);
        }

        v14 = &v45;
      }

      else
      {
        v43 = *(v10 + 4);
        v14 = v10 + 11;
        v45 = v10[11];
        *(v10 + 4) = v10 + 12;
        LODWORD(v15) = v10[10];
      }

      *v14 = 4;
      v10[10] = 0;
      v21 = v10[14];
      v44 = v15;
      v47 = v21;
      for (i = v11; ; i -= 64)
      {
        v23 = a1 + i;
        *(v23 + 12) = *(a1 + i + 128);
        *(v23 + 204) = *(a1 + i + 140);
        v24 = (a1 + i + 160);
        skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + i + 224), v24);
        *(v23 + 62) = *(v23 + 46);
        if (i == -128)
        {
          v27 = a1;
          goto LABEL_39;
        }

        v25 = *(v23 + 16);
        if (*v42 >= v25)
        {
          if (*v42 > v25)
          {
            break;
          }

          v26 = *(a1 + i + 68);
          if (*&v42[4] <= v26 && (*&v42[4] < v26 || *&v42[24] >= *(a1 + i + 88)))
          {
            break;
          }
        }
      }

      v28 = a1 + i;
      v27 = a1 + i + 128;
      v24 = (v28 + 160);
LABEL_39:
      *v27 = *v42;
      *(v27 + 12) = *&v42[12];
      skit::SmallVector<skit::GroupId,4u,true>::operator=(v24, &v43);
      *(v27 + 56) = v47;
      if (v43 != &v46)
      {
        free(v43);
      }

      if (++v12 == 8)
      {
        break;
      }
    }

    v9 = v10;
    v11 += 64;
    v10 += 16;
    if (v10 == a2)
    {
      goto LABEL_61;
    }
  }

  result = v10 + 16 == a2;
LABEL_62:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

size_t skit::SmallVector<skit::SpanMatchV3,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(a2 << 6, 0x10200408C599F99uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 12) = *(v8 + 12);
      *v7 = v9;
      skit::SmallVector<skit::GroupId,4u,true>::move((v7 + 32), (v8 + 32));
      *(v7 + 14) = *(v8 + 14);
      v8 += 64;
      v7 += 64;
    }

    while (v8 != &v5[64 * v6]);
    v10 = v6 << 6;
    v11 = v5 + 48;
    do
    {
      v12 = *(v11 - 2);
      if (v11 != v12)
      {
        free(v12);
      }

      v11 += 64;
      v10 -= 64;
    }

    while (v10);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result >> 6;
  return result;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v11 = this->__r_.__value_.__r.__words[2];
      v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v10 = HIBYTE(v11);
    }

    else
    {
      v9 = 10;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    if (v9 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by(this, v9, __n - v9 + size, size, size, v3, v4);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v10 & 0x80) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    v13 = 0;
    v14 = vdupq_n_s64(__n - 1);
    v15 = &v12->__r_.__value_.__s.__data_[size + 4];
    do
    {
      v16 = vdupq_n_s64(v13);
      v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7C0)));
      if (vuzp1_s8(vuzp1_s16(v17, *v14.i8), *v14.i8).u8[0])
      {
        *(v15 - 4) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v14), *&v14).i8[1])
      {
        *(v15 - 3) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7B0)))), *&v14).i8[2])
      {
        *(v15 - 2) = __c;
        *(v15 - 1) = __c;
      }

      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7A0)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i32[1])
      {
        *v15 = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i8[5])
      {
        v15[1] = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB790))))).i8[6])
      {
        v15[2] = __c;
        v15[3] = __c;
      }

      v13 += 8;
      v15 += 8;
    }

    while (((__n + 7) & 0xFFFFFFFFFFFFFFF8) != v13);
    v19 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v19 & 0x7F;
    }

    v12->__r_.__value_.__s.__data_[v19] = 0;
  }

  return this;
}

size_t skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v12, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 4 * v6;
    v8 = v4;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v7 -= 4;
    }

    while (v7);
    v5 = *a1;
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 2;
  return result;
}

size_t skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::emplace_back<unsigned short &,unsigned short &>(size_t result, _WORD *a2, __int16 *a3)
{
  v5 = result;
  v6 = *(result + 8);
  if (v6 == *(result + 12))
  {
    result = skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::_reserve_more(result, v6 + (v6 >> 1) + 1);
    v6 = *(v5 + 8);
  }

  v7 = (*v5 + 4 * v6);
  v8 = *a3;
  *v7 = *a2;
  v7[1] = v8;
  *(v5 + 8) = v6 + 1;
  return result;
}

void skit::internal::FieldSpanMatcherImpl::combine_alias_matches(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t *a6)
{
  if (!a4)
  {
    skit::Alias::match((a1 + 640), a5, a3);
  }

  v9 = *(a5 + 8);
  v10 = *(a6 + 2) + v9;
  if (v10)
  {
    if (*(a2 + 12) < v10)
    {
      skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v10);
      v9 = *(a5 + 8);
    }

    if (v9)
    {
      v11 = *a5;
      v12 = v9;
      v13 = *(a2 + 8);
      v14 = 40 * v12;
      do
      {
        if (v13 == *(a2 + 12))
        {
          skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v13 + (v13 >> 1) + 1);
          v13 = *(a2 + 8);
        }

        *(*a2 + 8 * v13++) = v11;
        *(a2 + 8) = v13;
        v11 += 40;
        v14 -= 40;
      }

      while (v14);
    }

    v15 = *(a6 + 2);
    v16 = *(a2 + 8);
    if (v15)
    {
      v17 = *a6;
      v18 = 40 * v15;
      do
      {
        if (v16 == *(a2 + 12))
        {
          skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v16 + (v16 >> 1) + 1);
          v16 = *(a2 + 8);
        }

        *(*a2 + 8 * v16++) = v17;
        *(a2 + 8) = v16;
        v17 += 40;
        v18 -= 40;
      }

      while (v18);
    }

    v19 = *a2;
    v20 = (*a2 + 8 * v16);
    v21 = 126 - 2 * __clz(v16);
    if (v16)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }
}

size_t skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(8 * a2, 0x6004044C4A2DFuLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v12, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v4;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v7 -= 8;
    }

    while (v7);
    v5 = *a1;
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 3;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v125 = *v8;
        v126 = *v9;
        v127 = *(*v8 + 24);
        v128 = *(*v9 + 24);
        if (v127 < v128 || v127 <= v128 && *(v125 + 28) > *(v126 + 28))
        {
          *v9 = v125;
          *v8 = v126;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
    }

    if (v10 == 5)
    {
      v129 = *v8;
      v130 = v9[3];
      v131 = *(*v8 + 24);
      v132 = *(v130 + 24);
      if (v131 < v132 || v131 <= v132 && *(v129 + 28) > *(v130 + 28))
      {
        v9[3] = v129;
        *v8 = v130;
        v134 = v9[2];
        v133 = v9[3];
        v135 = *(v133 + 24);
        v136 = *(v134 + 24);
        if (v135 < v136 || v135 <= v136 && *(v133 + 28) > *(v134 + 28))
        {
          v9[2] = v133;
          v9[3] = v134;
          v137 = v9[1];
          v138 = *(v137 + 24);
          if (v135 < v138 || v135 <= v138 && *(v133 + 28) > *(v137 + 28))
          {
            v9[1] = v133;
            v9[2] = v137;
            v139 = *v9;
            v140 = *(*v9 + 24);
            if (v135 < v140 || v135 <= v140 && *(v133 + 28) > *(v139 + 28))
            {
              *v9 = v133;
              v9[1] = v139;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v141 = v9 + 1;
      v143 = v9 == a2 || v141 == a2;
      if (a4)
      {
        if (!v143)
        {
          v144 = 0;
          v145 = v9;
          do
          {
            v146 = v145;
            v145 = v141;
            v148 = *v146;
            v147 = v146[1];
            v149 = *(v147 + 24);
            v150 = *(*v146 + 24);
            if (v149 < v150 || v149 <= v150 && *(v147 + 28) > *(v148 + 28))
            {
              v146[1] = v148;
              v151 = v9;
              if (v146 != v9)
              {
                v152 = v144;
                while (1)
                {
                  v153 = *(v9 + v152 - 8);
                  v154 = *(v153 + 24);
                  if (v149 >= v154)
                  {
                    if (v149 > v154)
                    {
                      v151 = (v9 + v152);
                      goto LABEL_236;
                    }

                    if (*(v147 + 28) <= *(v153 + 28))
                    {
                      break;
                    }
                  }

                  --v146;
                  *(v9 + v152) = v153;
                  v152 -= 8;
                  if (!v152)
                  {
                    v151 = v9;
                    goto LABEL_236;
                  }
                }

                v151 = v146;
              }

LABEL_236:
              *v151 = v147;
            }

            v141 = v145 + 1;
            v144 += 8;
          }

          while (v145 + 1 != a2);
        }
      }

      else if (!v143)
      {
        do
        {
          v203 = v7;
          v7 = v141;
          v205 = *v203;
          v204 = v203[1];
          v206 = *(v204 + 24);
          v207 = *(*v203 + 24);
          if (v206 < v207 || v206 <= v207 && *(v204 + 28) > *(v205 + 28))
          {
            do
            {
              do
              {
                v208 = v203;
                v209 = *--v203;
                v203[2] = v205;
                v205 = v209;
                v210 = *(v209 + 24);
              }

              while (v206 < v210);
            }

            while (v206 <= v210 && *(v204 + 28) > *(v205 + 28));
            *v208 = v204;
          }

          v141 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v155 = (v10 - 2) >> 1;
      v156 = v155;
      do
      {
        v157 = v156;
        if (v155 >= v156)
        {
          v158 = (2 * v156) | 1;
          v159 = &v9[v158];
          if (2 * v157 + 2 < v10)
          {
            v160 = v159[1];
            v161 = *(*v159 + 24);
            result = *(v160 + 24);
            if (v161 < result || v161 <= result && *(*v159 + 28) > *(v160 + 28))
            {
              ++v159;
              v158 = 2 * v157 + 2;
            }
          }

          v162 = *v159;
          v163 = v9[v157];
          v164 = *(*v159 + 24);
          v165 = *(v163 + 24);
          if (v164 >= v165 && (v164 > v165 || *(v162 + 28) <= *(v163 + 28)))
          {
            v9[v157] = v162;
            if (v155 >= v158)
            {
              while (1)
              {
                v167 = 2 * v158;
                v158 = (2 * v158) | 1;
                v166 = &v9[v158];
                v168 = v167 + 2;
                if (v168 < v10)
                {
                  result = *v166;
                  v169 = v166[1];
                  v170 = *(*v166 + 24);
                  v171 = *(v169 + 24);
                  if (v170 < v171 || v170 <= v171 && (result = *(result + 28), result > *(v169 + 28)))
                  {
                    ++v166;
                    v158 = v168;
                  }
                }

                v172 = *v166;
                v173 = *(*v166 + 24);
                if (v173 < v165)
                {
                  break;
                }

                if (v173 <= v165)
                {
                  result = *(v163 + 28);
                  if (*(v172 + 28) > result)
                  {
                    break;
                  }
                }

                *v159 = v172;
                v159 = v166;
                if (v155 < v158)
                {
                  goto LABEL_252;
                }
              }
            }

            v166 = v159;
LABEL_252:
            *v166 = v163;
          }
        }

        v156 = v157 - 1;
      }

      while (v157);
      while (2)
      {
        v174 = 0;
        v175 = *v9;
        v176 = v9;
        do
        {
          v177 = v176;
          v178 = &v176[v174];
          v176 = v178 + 1;
          v179 = 2 * v174;
          v174 = (2 * v174) | 1;
          v180 = v179 + 2;
          if (v180 < v10)
          {
            v183 = v178[2];
            v181 = v178 + 2;
            v182 = v183;
            v184 = *(v181 - 1);
            result = *(v184 + 24);
            v185 = *(v183 + 24);
            if (result < v185 || result <= v185 && *(v184 + 28) > *(v182 + 28))
            {
              v176 = v181;
              v174 = v180;
            }
          }

          *v177 = *v176;
        }

        while (v174 <= ((v10 - 2) >> 1));
        if (v176 != --a2)
        {
          *v176 = *a2;
          *a2 = v175;
          v186 = (v176 - v9 + 8) >> 3;
          v187 = v186 - 2;
          if (v186 < 2 || (v188 = v187 >> 1, v189 = &v9[v187 >> 1], v190 = *v189, v175 = *v176, v191 = *(*v189 + 24), v192 = *(*v176 + 24), v191 >= v192) && (v191 > v192 || *(v190 + 28) <= *(v175 + 28)))
          {
LABEL_285:
            if (v10-- <= 2)
            {
              return result;
            }

            continue;
          }

          *v176 = v190;
          if (v187 >= 2)
          {
            while (1)
            {
              v193 = v188 - 1;
              v188 = (v188 - 1) >> 1;
              v176 = &v9[v188];
              v194 = *v176;
              v195 = *(*v176 + 24);
              if (v195 >= v192 && (v195 > v192 || *(v194 + 28) <= *(v175 + 28)))
              {
                break;
              }

              *v189 = v194;
              v189 = &v9[v188];
              if (v193 <= 1)
              {
                goto LABEL_284;
              }
            }
          }

          v176 = v189;
        }

        break;
      }

LABEL_284:
      *v176 = v175;
      goto LABEL_285;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 24);
      v17 = *(*v9 + 24);
      if (v16 < v17 || v16 <= v17 && *(v14 + 28) > *(v15 + 28))
      {
        v18 = *v8;
        v19 = *(*v8 + 24);
        if (v19 < v16 || v19 <= v16 && *(v18 + 28) > *(v14 + 28))
        {
          *v9 = v18;
        }

        else
        {
          *v9 = v14;
          *v12 = v15;
          v38 = *v8;
          v39 = *(*v8 + 24);
          if (v39 >= v17 && (v39 > v17 || *(v38 + 28) <= *(v15 + 28)))
          {
            goto LABEL_34;
          }

          *v12 = v38;
        }

        *v8 = v15;
        goto LABEL_34;
      }

      v26 = *v8;
      v27 = *(*v8 + 24);
      if (v27 < v16 || v27 <= v16 && *(v26 + 28) > *(v14 + 28))
      {
        *v12 = v26;
        *v8 = v14;
        v28 = *v12;
        v29 = *v9;
        v30 = *(*v12 + 24);
        v31 = *(*v9 + 24);
        if (v30 < v31 || v30 <= v31 && *(v28 + 28) > *(v29 + 28))
        {
          *v9 = v28;
          *v12 = v29;
        }
      }

LABEL_34:
      v40 = v11 - 1;
      v41 = v9[v11 - 1];
      v42 = v9[1];
      v43 = *(v41 + 24);
      v44 = *(v42 + 24);
      if (v43 < v44 || v43 <= v44 && *(v41 + 28) > *(v42 + 28))
      {
        v45 = *(a2 - 2);
        v46 = *(v45 + 24);
        if (v46 < v43 || v46 <= v43 && *(v45 + 28) > *(v41 + 28))
        {
          v9[1] = v45;
        }

        else
        {
          v9[1] = v41;
          v9[v40] = v42;
          v55 = *(a2 - 2);
          v56 = *(v55 + 24);
          if (v56 >= v44 && (v56 > v44 || *(v55 + 28) <= *(v42 + 28)))
          {
            goto LABEL_52;
          }

          v9[v40] = v55;
        }

        *(a2 - 2) = v42;
        goto LABEL_52;
      }

      v47 = *(a2 - 2);
      v48 = *(v47 + 24);
      if (v48 < v43 || v48 <= v43 && *(v47 + 28) > *(v41 + 28))
      {
        v9[v40] = v47;
        *(a2 - 2) = v41;
        v49 = v9[v40];
        v50 = v9[1];
        v51 = *(v49 + 24);
        v52 = *(v50 + 24);
        if (v51 < v52 || v51 <= v52 && *(v49 + 28) > *(v50 + 28))
        {
          v9[1] = v49;
          v9[v40] = v50;
        }
      }

LABEL_52:
      v59 = v12[1];
      v57 = v12 + 1;
      v58 = v59;
      v60 = v9[2];
      v61 = *(v59 + 24);
      v62 = *(v60 + 24);
      if (v61 < v62 || v61 <= v62 && *(v58 + 28) > *(v60 + 28))
      {
        v63 = *(a2 - 3);
        v64 = *(v63 + 24);
        if (v64 < v61 || v64 <= v61 && *(v63 + 28) > *(v58 + 28))
        {
          v9[2] = v63;
        }

        else
        {
          v9[2] = v58;
          *v57 = v60;
          v71 = *(a2 - 3);
          v72 = *(v71 + 24);
          if (v72 >= v62 && (v72 > v62 || *(v71 + 28) <= *(v60 + 28)))
          {
            goto LABEL_65;
          }

          *v57 = v71;
        }

        *(a2 - 3) = v60;
        goto LABEL_65;
      }

      v65 = *(a2 - 3);
      v66 = *(v65 + 24);
      if (v66 < v61 || v66 <= v61 && *(v65 + 28) > *(v58 + 28))
      {
        *v57 = v65;
        *(a2 - 3) = v58;
        v67 = *v57;
        v68 = v9[2];
        v69 = *(*v57 + 24);
        v70 = *(v68 + 24);
        if (v69 < v70 || v69 <= v70 && *(v67 + 28) > *(v68 + 28))
        {
          v9[2] = v67;
          *v57 = v68;
        }
      }

LABEL_65:
      v73 = *v13;
      v74 = v9[v40];
      v75 = *(*v13 + 24);
      v76 = *(v74 + 24);
      if (v75 < v76 || v75 <= v76 && *(v73 + 28) > *(v74 + 28))
      {
        v77 = *v57;
        v78 = *(*v57 + 24);
        if (v78 < v75 || v78 <= v75 && *(v77 + 28) > *(v73 + 28))
        {
          v9[v40] = v77;
        }

        else
        {
          v9[v40] = v73;
          *v13 = v74;
          if (v78 >= v76 && (v78 > v76 || *(v77 + 28) <= *(v74 + 28)))
          {
            v73 = v74;
            goto LABEL_78;
          }

          *v13 = v77;
          v73 = v77;
        }
      }

      else
      {
        v79 = *v57;
        v80 = *(*v57 + 24);
        if (v80 >= v75 && (v80 > v75 || *(v79 + 28) <= *(v73 + 28)))
        {
          goto LABEL_78;
        }

        *v13 = v79;
        *v57 = v73;
        if (v80 >= v76 && (v80 > v76 || *(v79 + 28) <= *(v74 + 28)))
        {
          v73 = v79;
          goto LABEL_78;
        }

        v9[v40] = v79;
        v57 = v13;
        v73 = v74;
      }

      *v57 = v74;
LABEL_78:
      v81 = *v9;
      *v9 = v73;
      *v13 = v81;
      goto LABEL_79;
    }

    v20 = *v9;
    v21 = *v12;
    v22 = *(*v9 + 24);
    v23 = *(*v13 + 24);
    if (v22 >= v23 && (v22 > v23 || *(v20 + 28) <= *(v21 + 28)))
    {
      v32 = *v8;
      v33 = *(*v8 + 24);
      if (v33 < v22 || v33 <= v22 && *(v32 + 28) > *(v20 + 28))
      {
        *v9 = v32;
        *v8 = v20;
        v34 = *v9;
        v35 = *v13;
        v36 = *(*v9 + 24);
        v37 = *(*v13 + 24);
        if (v36 < v37 || v36 <= v37 && *(v34 + 28) > *(v35 + 28))
        {
          *v13 = v34;
          *v9 = v35;
        }
      }

      goto LABEL_79;
    }

    v24 = *v8;
    v25 = *(*v8 + 24);
    if (v25 < v22 || v25 <= v22 && *(v24 + 28) > *(v20 + 28))
    {
      *v13 = v24;
    }

    else
    {
      *v13 = v20;
      *v9 = v21;
      v53 = *v8;
      v54 = *(*v8 + 24);
      if (v54 >= v23 && (v54 > v23 || *(v53 + 28) <= *(v21 + 28)))
      {
        goto LABEL_79;
      }

      *v9 = v53;
    }

    *v8 = v21;
LABEL_79:
    --a3;
    v82 = *v9;
    if (a4)
    {
      v83 = *(v82 + 24);
LABEL_84:
      for (i = v9 + 1; ; ++i)
      {
        v87 = *i;
        v88 = *(*i + 24);
        if (v88 >= v83 && (v88 > v83 || *(v87 + 28) <= *(v82 + 28)))
        {
          break;
        }
      }

      v89 = i - 1;
      if (i - 1 == v9)
      {
        v92 = a2;
        if (i < a2)
        {
          v94 = *v8;
          v95 = *(*v8 + 24);
          v92 = a2 - 1;
          if (v95 >= v83)
          {
            v92 = a2 - 1;
            do
            {
              if (v95 <= v83)
              {
                if (i >= v92 || *(v94 + 28) > *(v82 + 28))
                {
                  break;
                }
              }

              else if (i >= v92)
              {
                break;
              }

              v96 = *--v92;
              v94 = v96;
              v95 = *(v96 + 24);
            }

            while (v95 >= v83);
          }
        }
      }

      else
      {
        v90 = *v8;
        v91 = *(*v8 + 24);
        v92 = a2 - 1;
        if (v91 >= v83)
        {
          v92 = a2 - 1;
          do
          {
            if (v91 <= v83 && *(v90 + 28) > *(v82 + 28))
            {
              break;
            }

            v93 = *--v92;
            v90 = v93;
            v91 = *(v93 + 24);
          }

          while (v91 >= v83);
        }
      }

      if (i < v92)
      {
        v97 = *v92;
        v98 = i;
        v99 = v92;
        do
        {
          *v98 = v97;
          v98 += 8;
          *v99 = v87;
          while (1)
          {
            v87 = *v98;
            v100 = *(*v98 + 24);
            if (v100 >= v83 && (v100 > v83 || *(v87 + 28) <= *(v82 + 28)))
            {
              break;
            }

            v98 += 8;
          }

          v89 = (v98 - 8);
          do
          {
            v101 = *--v99;
            v97 = v101;
            v102 = *(v101 + 24);
          }

          while (v102 >= v83 && (v102 > v83 || *(v97 + 28) <= *(v82 + 28)));
        }

        while (v98 < v99);
      }

      if (v89 != v9)
      {
        *v9 = *v89;
      }

      *v89 = v82;
      if (i < v92)
      {
        goto LABEL_122;
      }

      v9 = v89 + 1;
      if (result)
      {
        a2 = v89;
        if (v103)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v103)
      {
LABEL_122:
        a4 = 0;
        v9 = v89 + 1;
      }
    }

    else
    {
      v84 = *(v9 - 1);
      v85 = *(v84 + 24);
      v83 = *(v82 + 24);
      if (v85 < v83 || v85 <= v83 && *(v84 + 28) > *(v82 + 28))
      {
        goto LABEL_84;
      }

      v104 = *v8;
      v105 = *(*v8 + 24);
      if (v83 < v105 || v83 <= v105 && *(v82 + 28) > *(v104 + 28))
      {
        do
        {
          v107 = v9[1];
          ++v9;
          v106 = v107;
          v108 = *(v107 + 24);
        }

        while (v83 >= v108 && (v83 > v108 || *(v82 + 28) <= *(v106 + 28)));
      }

      else
      {
        for (++v9; v9 < a2; ++v9)
        {
          v118 = *(*v9 + 24);
          if (v83 < v118 || v83 <= v118 && *(v82 + 28) > *(*v9 + 28))
          {
            break;
          }
        }
      }

      v109 = a2;
      if (v9 < a2)
      {
        v109 = a2 - 1;
        while (v83 < v105 || v83 <= v105 && *(v82 + 28) > *(v104 + 28))
        {
          v110 = *--v109;
          v104 = v110;
          v105 = *(v110 + 24);
        }
      }

      if (v9 < v109)
      {
        v111 = *v9;
        v112 = *v109;
        do
        {
          *v9 = v112;
          *v109 = v111;
          do
          {
            v113 = v9[1];
            ++v9;
            v111 = v113;
            v114 = *(v113 + 24);
          }

          while (v83 >= v114 && (v83 > v114 || *(v82 + 28) <= *(v111 + 28)));
          do
          {
            do
            {
              v115 = *--v109;
              v112 = v115;
              v116 = *(v115 + 24);
            }

            while (v83 < v116);
          }

          while (v83 <= v116 && *(v82 + 28) > *(v112 + 28));
        }

        while (v9 < v109);
      }

      v117 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v117;
      }

      a4 = 0;
      *v117 = v82;
    }
  }

  v119 = *v9;
  v120 = v9[1];
  v121 = *(v120 + 24);
  v122 = *(*v9 + 24);
  if (v121 < v122 || v121 <= v122 && *(v120 + 28) > *(v119 + 28))
  {
    v123 = *v8;
    v124 = *(*v8 + 24);
    if (v124 < v121 || v124 <= v121 && *(v123 + 28) > *(v120 + 28))
    {
      *v9 = v123;
    }

    else
    {
      *v9 = v120;
      v9[1] = v119;
      v211 = *v8;
      v212 = *(*v8 + 24);
      if (v212 >= v122 && (v212 > v122 || *(v211 + 28) <= *(v119 + 28)))
      {
        return result;
      }

      v9[1] = v211;
    }

    *v8 = v119;
    return result;
  }

  v197 = *v8;
  v198 = *(*v8 + 24);
  if (v198 < v121 || v198 <= v121 && *(v197 + 28) > *(v120 + 28))
  {
    v9[1] = v197;
    *v8 = v120;
    v200 = *v9;
    v199 = v9[1];
    v201 = *(v199 + 24);
    v202 = *(*v9 + 24);
    if (v201 < v202 || v201 <= v202 && *(v199 + 28) > *(v200 + 28))
    {
      *v9 = v199;
      v9[1] = v200;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 24);
  v7 = *(*result + 24);
  if (v6 < v7 || v6 <= v7 && *(v4 + 28) > *(v5 + 28))
  {
    v8 = *a3;
    v9 = *(*a3 + 24);
    if (v9 < v6 || v9 <= v6 && *(v8 + 28) > *(v4 + 28))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      v15 = *(*a3 + 24);
      if (v15 >= v7 && (v15 > v7 || *(v4 + 28) <= *(v5 + 28)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  v10 = *(*a3 + 24);
  if (v10 >= v6 && (v10 > v6 || *(v5 + 28) <= *(v4 + 28)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v11 = *a2;
  v12 = *result;
  v13 = *(*a2 + 24);
  v14 = *(*result + 24);
  if (v13 < v14 || v13 <= v14 && *(v11 + 28) > *(v12 + 28))
  {
    *result = v11;
    *a2 = v12;
    v4 = *a3;
  }

LABEL_15:
  v16 = *a4;
  v17 = *(*a4 + 24);
  v18 = *(v4 + 24);
  if (v17 < v18 || v17 <= v18 && *(v16 + 28) > *(v4 + 28))
  {
    *a3 = v16;
    *a4 = v4;
    v19 = *a3;
    v20 = *a2;
    v21 = *(*a3 + 24);
    v22 = *(*a2 + 24);
    if (v21 < v22 || v21 <= v22 && *(v19 + 28) > *(v20 + 28))
    {
      *a2 = v19;
      *a3 = v20;
      v23 = *a2;
      v24 = *result;
      v25 = *(*a2 + 24);
      v26 = *(*result + 24);
      if (v25 < v26 || v25 <= v26 && *(v23 + 28) > *(v24 + 28))
      {
        *result = v23;
        *a2 = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = *a1;
        v22 = a1[1];
        v23 = *(v22 + 24);
        v24 = *(*a1 + 24);
        if (v23 >= v24 && (v23 > v24 || *(v22 + 28) <= *(v21 + 28)))
        {
          v35 = *(a2 - 1);
          v36 = *(v35 + 24);
          if (v36 < v23 || v36 <= v23 && *(v35 + 28) > *(v22 + 28))
          {
            a1[1] = v35;
            *(a2 - 1) = v22;
            v38 = *a1;
            v37 = a1[1];
            v39 = *(v37 + 24);
            v40 = *(*a1 + 24);
            if (v39 < v40 || v39 <= v40 && *(v37 + 28) > *(v38 + 28))
            {
              *a1 = v37;
              a1[1] = v38;
            }
          }

          return 1;
        }

        v25 = *(a2 - 1);
        v26 = *(v25 + 24);
        if (v26 < v23 || v26 <= v23 && *(v25 + 28) > *(v22 + 28))
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v22;
          a1[1] = v21;
          v43 = *(a2 - 1);
          v44 = *(v43 + 24);
          if (v44 >= v24 && (v44 > v24 || *(v43 + 28) <= *(v21 + 28)))
          {
            return 1;
          }

          a1[1] = v43;
        }

        *(a2 - 1) = v21;
        return 1;
      case 4:
        return 1;
      case 5:
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 24);
        v12 = *(v10 + 24);
        if (v11 < v12 || v11 <= v12 && *(v9 + 28) > *(v10 + 28))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 24);
          v16 = *(v14 + 24);
          if (v15 < v16 || v15 <= v16 && *(v13 + 28) > *(v14 + 28))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            v18 = *(v17 + 24);
            if (v15 < v18 || v15 <= v18 && *(v13 + 28) > *(v17 + 28))
            {
              a1[1] = v13;
              a1[2] = v17;
              v19 = *a1;
              v20 = *(*a1 + 24);
              if (v15 < v20 || v15 <= v20 && *(v13 + 28) > *(v19 + 28))
              {
                *a1 = v13;
                a1[1] = v19;
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
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 24);
      v8 = *(*a1 + 24);
      if (v7 < v8 || v7 <= v8 && *(v5 + 28) > *(v6 + 28))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v27 = (a1 + 2);
  v28 = *a1;
  v29 = a1 + 1;
  v30 = a1[1];
  v31 = *(v30 + 24);
  v32 = *(*a1 + 24);
  if (v31 < v32 || v31 <= v32 && *(v30 + 28) > *(v28 + 28))
  {
    v33 = *v27;
    v34 = *(*v27 + 24);
    if (v34 < v31 || v34 <= v31 && *(v33 + 28) > *(v30 + 28))
    {
      *a1 = v33;
    }

    else
    {
      *a1 = v30;
      a1[1] = v28;
      if (v34 >= v32 && (v34 > v32 || *(v33 + 28) <= *(v28 + 28)))
      {
        goto LABEL_48;
      }

      *v29 = v33;
    }

    v29 = a1 + 2;
LABEL_47:
    *v29 = v28;
    goto LABEL_48;
  }

  v41 = *v27;
  v42 = *(*v27 + 24);
  if (v42 < v31 || v42 <= v31 && *(v41 + 28) > *(v30 + 28))
  {
    *v29 = v41;
    *v27 = v30;
    if (v42 < v32 || v42 <= v32 && *(v41 + 28) > *(v28 + 28))
    {
      *a1 = v41;
      goto LABEL_47;
    }
  }

LABEL_48:
  v45 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v27;
    v50 = *(*v45 + 24);
    v51 = *(*v27 + 24);
    if (v50 >= v51 && (v50 > v51 || *(v48 + 28) <= *(v49 + 28)))
    {
      goto LABEL_62;
    }

    *v45 = v49;
    v52 = v46;
    while (1)
    {
      v53 = *(a1 + v52 + 8);
      v54 = *(v53 + 24);
      if (v50 >= v54)
      {
        break;
      }

LABEL_55:
      v27 -= 8;
      *(a1 + v52 + 16) = v53;
      v52 -= 8;
      if (v52 == -16)
      {
        v27 = a1;
        goto LABEL_61;
      }
    }

    if (v50 <= v54)
    {
      if (*(v48 + 28) <= *(v53 + 28))
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v27 = a1 + v52 + 16;
LABEL_61:
    *v27 = v48;
    if (++v47 != 8)
    {
LABEL_62:
      v27 = v45;
      v46 += 8;
      if (++v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 1 == a2;
  }
}

uint64_t skit::internal::FieldSpanMatcherImpl::alias_span_matcher(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t *a5, int a6)
{
  v28[8] = *MEMORY[0x29EDCA608];
  if (*a2 && (*(*a2 + 64) & 1) != 0)
  {
    v11 = *a2;
    *a2 = 0;
    a2[1] = 0;
    v12 = *(a1 + 648);
    *(a1 + 640) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*(a1 + 656), *(a1 + 664));
    *(a1 + 664) = 0;
    v26 = v28;
    v27 = 0x800000000;
    v24[0] = &v25;
    v24[1] = 0x200000000;
    skit::internal::FieldSpanMatcherImpl::combine_alias_matches(a1, &v26, a1, a6, v24, a5);
    v13 = v27;
    if (*(a1 + 668) < v27)
    {
      skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more((a1 + 656), v27);
      v13 = v27;
    }

    if (v13)
    {
      v14 = v26;
      v15 = *(a1 + 664);
      v16 = 8 * v13;
      do
      {
        v17 = *v14;
        if (v15 == *(a1 + 668))
        {
          skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more((a1 + 656), v15 + (v15 >> 1) + 1);
          v15 = *(a1 + 664);
        }

        v18 = (*(a1 + 656) + 40 * v15);
        if (*(v17 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v18, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v18->__r_.__value_.__r.__words[2] = *(v17 + 2);
          *&v18->__r_.__value_.__l.__data_ = v19;
        }

        v20 = *(v17 + 3);
        v18[1].__r_.__value_.__s.__data_[4] = *(v17 + 16);
        v18[1].__r_.__value_.__r.__words[0] = v20;
        v15 = *(a1 + 664) + 1;
        *(a1 + 664) = v15;
        ++v14;
        v16 -= 8;
      }

      while (v16);
    }

    skit::internal::FieldSpanMatcherImpl::alias_filters(a1, a3, a4);
    skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v24);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 0;
  }

  else
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v23 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24[0]) = 0;
      _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, "FieldSpanMatcherImpl::alias_span_matcher : Alias span matcher is not initialized", v24, 2u);
    }

    result = 0xFFFFFFFFLL;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998DB22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(&a9);
  if (a21 != v21)
  {
    free(a21);
  }

  _Unwind_Resume(a1);
}

void skit::internal::FieldSpanMatcherImpl::alias_filters(uint64_t *a1, char a2, uint64_t a3)
{
  v74 = *MEMORY[0x29EDCA608];
  *(a1 + 608) = a2;
  if (a1 + 77 != a3)
  {
    v4 = *a3;
    v5 = *(a3 + 8);
    if (*(a1 + 157) >= v5)
    {
      if (v5)
      {
        v12 = a1[77];
        v13 = *(a3 + 8);
        do
        {
          v14 = *v4++;
          *v12++ = v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v6 = *(a1 + 156) + (*(a1 + 156) >> 1);
      if (v6 + 1 > v5)
      {
        v7 = (v6 + 1);
      }

      else
      {
        v7 = v5;
      }

      v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
      if (!v8)
      {
        exception = __cxa_allocate_exception(8uLL);
        v58 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v58, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
      }

      v9 = v8;
      v10 = 0;
      do
      {
        *(v8 + v10) = v4[v10];
        ++v10;
      }

      while (v5 != v10);
      v11 = a1[77];
      if (v11 != a1 + 79)
      {
        free(v11);
      }

      a1[77] = v9;
      *(a1 + 157) = malloc_size(v9);
    }

    *(a1 + 156) = v5;
  }

  v15 = *(a1 + 190);
  if (v15)
  {
    v16 = a1[94];
    v17 = 104 * v15;
    do
    {
      v16 = skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v16) + 104;
      v17 -= 104;
    }

    while (v17);
  }

  v60 = (a1 + 94);
  *(a1 + 190) = 0;
  v18 = *(a1 + 166);
  if (*(a1 + 191) < v18)
  {
    skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(v60, v18);
  }

  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(a1[148], *(a1 + 298));
  *(a1 + 298) = 0;
  v19 = *(a1 + 166);
  v59 = (a1 + 148);
  if (*(a1 + 299) < v19)
  {
    skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(a1 + 148, v19);
    v19 = *(a1 + 166);
  }

  if (v19)
  {
    v20 = a1[82];
    v21 = (v20 + 40 * v19);
    do
    {
      if (skit::internal::AliasFilter::select_by_group_id(a1 + 608, *(v20 + 32), *(v20 + 33)))
      {
        v23 = v20 + 3;
        v22 = *(v20 + 6);
        v24 = *a1;
        v25 = *(v20 + 7);
        *v64 = *(*a1 + 48 * v22 + 24);
        *&v64[4] = *(*a1 + 48 * (v25 - 1) + 28);
        *&v64[8] = 0;
        *&v64[16] = 0;
        *&v64[24] = 0;
        v65 = &v67;
        v66 = 0x400000000;
        v68 = 0;
        if (v22 >= v25)
        {
          v27 = 0;
          v26 = 0;
          v34 = 0.0;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = v25 - v22;
          v29 = v24 + 48 * v22 + 40;
          v30 = 0.0;
          v31 = v29;
          do
          {
            v32 = *v31;
            v31 += 24;
            v33 = v27 + ((v32 >> 2) & 1);
            if ((v32 & 2) != 0)
            {
              v27 = v33;
              ++v26;
            }

            v30 = v30 + (*(v29 - 8) * (*(v29 - 12) - *(v29 - 16)));
            v29 = v31;
            --v28;
          }

          while (v28);
          v34 = v30 * 0.85;
        }

        *&v64[12] = v34;
        *&v64[16] = v26;
        skit::SpanMatchV3::append_alias_id(v64, *(v20 + 16), v26);
        *&v64[20] = v27;
        v35 = *(a1 + 298);
        if (v35 == *(a1 + 299))
        {
          skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(v59, v35 + (v35 >> 1) + 1);
          v35 = *(a1 + 298);
        }

        v36 = *v59;
        if (*(v20 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v69, *v20, *(v20 + 1));
        }

        else
        {
          *v69 = *v20;
          *&v69[16] = *(v20 + 2);
        }

        *&v69[24] = *v23;
        v37 = *&v69[24];
        LOWORD(v70) = *(v20 + 16);
        v38 = v70;
        v39 = *v64;
        v40 = *&v64[8];
        v41 = *&v64[12];
        v42 = *&v64[16];
        v43 = *&v64[24];
        v44 = v36 + 72 * v35;
        *v44 = *v69;
        *(v44 + 2) = *&v69[16];
        *(v44 + 3) = v37;
        *(v44 + 16) = v38;
        *(v44 + 5) = v39;
        *(v44 + 12) = v40;
        *(v44 + 13) = v41;
        *(v44 + 7) = v42;
        *(v44 + 8) = v43;
        ++*(a1 + 298);
        v45 = *(a1 + 190);
        if (v45 == *(a1 + 191))
        {
          skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(v60, v45 + (v45 >> 1) + 1);
          v55 = *(a1 + 190);
        }

        v46 = *v60;
        if (*(v20 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v61, *v20, *(v20 + 1));
        }

        else
        {
          v47 = *v20;
          v61.__r_.__value_.__r.__words[2] = *(v20 + 2);
          *&v61.__r_.__value_.__l.__data_ = v47;
        }

        v48 = *v23;
        v63 = *(v20 + 16);
        v62 = v48;
        *v69 = *v64;
        *&v69[12] = *&v64[12];
        v49 = v65;
        if (v65 == &v67)
        {
          v70 = v73;
          v50 = v66;
          if (v66)
          {
            v52 = 2 * v66;
            v53 = v73;
            do
            {
              v54 = *v49++;
              *v53++ = v54;
              v52 -= 2;
            }

            while (v52);
          }

          v51 = &v72;
        }

        else
        {
          v70 = v65;
          v50 = v66;
          v72 = HIDWORD(v66);
          v65 = &v67;
          v51 = &v66 + 1;
        }

        *v51 = 4;
        LODWORD(v66) = 0;
        v71 = v50;
        v73[2] = v68;
        skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::AliasSpanMatchImpl();
      }

      v20 = (v20 + 40);
    }

    while (v20 != v21);
  }

  v56 = *MEMORY[0x29EDCA608];
}

void sub_2998DB740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a34 != v35)
  {
    free(a34);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 != v34)
  {
    free(a26);
  }

  _Unwind_Resume(exception_object);
}

size_t skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(104 * a2, 0x1032040E39E8272uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 2);
      *v7 = v9;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      v10 = *(v8 + 3);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 3) = v10;
      v11 = *(v8 + 40);
      *(v7 + 52) = *(v8 + 52);
      *(v7 + 40) = v11;
      skit::SmallVector<skit::GroupId,4u,true>::move((v7 + 72), (v8 + 72));
      *(v7 + 24) = *(v8 + 24);
      v8 += 104;
      v7 += 104;
    }

    while (v8 != &v5[104 * v6]);
    v12 = 104 * v6;
    do
    {
      skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v5);
      v5 += 104;
      v12 -= 104;
    }

    while (v12);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x68;
  return result;
}

size_t skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(__int128 **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(72 * a2, 0x101204049D86D5EuLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 2);
      *v7 = v9;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      v10 = *(v8 + 3);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 3) = v10;
      v11 = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      *(v7 + 40) = v11;
      v7 += 72;
      v8 = (v8 + 72);
    }

    while (v8 != (v5 + 72 * v6));
    v12 = 72 * v6;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 72);
      v12 -= 72;
    }

    while (v12);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x48;
  return result;
}

void skit::internal::FieldSpanMatcherImpl::clear_alias_span_matcher(skit::internal::FieldSpanMatcherImpl *this)
{
  *(this + 608) = 0;
  *(this + 156) = 0;
  v2 = *(this + 81);
  *(this + 40) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*(this + 82), *(this + 166));
  *(this + 166) = 0;
  v3 = *(this + 190);
  if (v3)
  {
    v4 = *(this + 94);
    v5 = 104 * v3;
    do
    {
      v4 = skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v4) + 104;
      v5 -= 104;
    }

    while (v5);
  }

  *(this + 190) = 0;
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(*(this + 148), *(this + 298));
  *(this + 298) = 0;
}

uint64_t skit::internal::FieldSpanMatcherImpl::match(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*a3 != a3[1])
  {
    v8[0] = &v9;
    v8[1] = 0x800000000;
    v6[0] = &v7;
    v6[1] = 0x200000000;
    if (*(result + 760))
    {
      skit::internal::FieldSpanMatcherImpl::combine_alias_matches(result, v8, a3, a5, v6, a4);
    }

    skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::clear();
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998DCE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(&STACK[0x220]);
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(&STACK[0x430]);
  if (a67 != a10)
  {
    free(a67);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(&a45);
  if (a57 != a11)
  {
    free(a57);
  }

  _Unwind_Resume(a1);
}

size_t skit::SmallVector<float,16u,false>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v13, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 4 * v6;
    v8 = v4;
    v9 = *a1;
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      v7 -= 4;
    }

    while (v7);
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 2;
  return result;
}

void *skit::internal::IndexDiskImplV2::to_posting_list(void *result, uint64_t a2)
{
  if (a2 && ((v2 = *(a2 + 4), v3 = a2 + 2 * v2 + 8, v4 = *a2 - 2 * v2 - 8, a2 + 2 * v2 != -8) ? (v5 = v4 >= 0x10) : (v5 = 0), v5 && (v6 = *(a2 + 2 * *(a2 + 4) + 16), (8 * v6) + (6 * *(a2 + 2 * *(a2 + 4) + 20)) + 16 == v4)))
  {
    v7 = a2 + 6;
    v8 = a2 + 2 * *(a2 + 4) + 24;
    v9 = v8 + 8 * v6;
  }

  else
  {
    v3 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v2 = 0;
  }

  *result = v7;
  result[1] = v2;
  result[2] = v3;
  result[3] = v8;
  result[4] = v9;
  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::KvTableImpl(uint64_t a1, int a2)
{
  *a1 = xmmword_2998EB7D0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1064514355;
  *(a1 + 32) = time(0);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      atomic_store(0xFFFFFFFF, v4);
      v4 += 128;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[15];
    if (v3)
    {
      __p[16] = v3;
      operator delete(v3);
    }

    v4 = __p[12];
    if (v4)
    {
      __p[13] = v4;
      operator delete(v4);
    }

    v5 = __p[2];
    if (v5 != __p + 4)
    {
      free(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear(uint64_t a1)
{
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(a1);
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  remove(v3, v2);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a1, *(a1 + 8));
  }

  else
  {
    v7 = *a1;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__replacement.__pn_, ".dat");
  v4 = std::__fs::filesystem::path::replace_extension(&v7, &__replacement);
  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  remove(v4, v5);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2998DD1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void skit::internal::IndexWriterImpl::abort_txn(skit::internal::IndexWriterImpl *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(this + 528) == 1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v2 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
    {
      v3 = (this + 16);
      if (*(this + 39) < 0)
      {
        v3 = *v3;
      }

      v5[0] = 68289282;
      v5[1] = 16;
      v6 = 2098;
      v7 = this;
      v8 = 2082;
      v9 = v3;
      _os_log_impl(&dword_2998C6000, v2, OS_LOG_TYPE_INFO, "IndexWriterImpl::abort_txn : aborting transaction %{public,uuid_t}.16P @ %{public}s", v5, 0x1Cu);
    }

    skit::internal::MultiIndexV2::clear((this + 208));
    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear(this + 40);
    *(this + 264) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t skit::internal::get_logging_context(skit::internal *this)
{
  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  return skit::internal::get_logging_context(void)::logger;
}

os_log_t skit::internal::anonymous namespace::initialize_logging_context(skit::internal::_anonymous_namespace_ *this, void *a2)
{
  result = os_log_create("com.apple.skit", "SKIT");
  *this = result;
  return result;
}

uint64_t skit::internal::MmapFile::create(skit::internal::MmapFile *this, const char *a2, size_t a3, off_t a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v16 = -1;
    v19 = 10;
    v20 = "path check";
    goto LABEL_13;
  }

  v15 = open_dprotected_np(a2, a5, a6, a7, a8);
  v16 = v15;
  if (v15 < 0)
  {
    v19 = 4;
    v20 = "open";
    goto LABEL_13;
  }

  if (ftruncate(v15, a4 + a3))
  {
    v19 = 9;
    v20 = "ftruncate";
    goto LABEL_13;
  }

  if (!skit::internal::MmapFile::open(this, v16, a9, a10, a11, a3, a4))
  {
    result = close(v16);
    if (!result)
    {
      goto LABEL_8;
    }

    v19 = 5;
    v20 = "close";
LABEL_13:
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v21 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v22 = *__error();
      *buf = 68158466;
      v24 = v19;
      v25 = 2082;
      v26 = v20;
      v27 = 2082;
      v28 = a2;
      v29 = 1024;
      v30 = v22;
      _os_log_error_impl(&dword_2998C6000, v21, OS_LOG_TYPE_ERROR, "MmapFile::create : %{public}.*s failed @ %{public}s : %{darwin.errno}d", buf, 0x22u);
    }

    if (*this)
    {
      munmap(*this, *(this + 1));
    }

    *this = 0;
    *(this + 1) = 0;
    if (v16 == -1)
    {
      goto LABEL_6;
    }
  }

  close(v16);
LABEL_6:
  result = 0xFFFFFFFFLL;
LABEL_8:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::internal::StringRegistry::lookup(void *a1, unsigned int a2, unsigned __int16 **a3)
{
  v3 = a1[3];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a2;
  v6 = a2 - a2 / *(v3 + 16) * *(v3 + 16);
  v7 = v6;
  do
  {
    v8 = 0;
    v9 = v3 + 40 + (v7 << 9);
    v10 = 1;
    while (1)
    {
      v11 = *(v9 + 4 * v8);
      if (v11 == -1)
      {
LABEL_15:
        v14 = v4;
        if (v10)
        {
          return v14;
        }

        goto LABEL_18;
      }

      if (v11 == v5)
      {
        __dmb(9u);
        v12 = *(v9 + 256 + 4 * v8);
        v13 = a1[15];
        if (v12 + 6 <= v13)
        {
          v14 = a1[14] + v12;
          if (v13 >= (*v14 + v12))
          {
            v15 = *(v14 + 4);
            if (a3[1] == v15)
            {
              break;
            }
          }
        }
      }

LABEL_14:
      v10 = v8++ < 0x3F;
      if (v8 == 64)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 4))
    {
      v16 = (v14 + 6);
      v17 = *a3;
      while (*v17 == *v16)
      {
        ++v16;
        ++v17;
        v15 = (v15 - 1);
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

LABEL_17:
    if (v10)
    {
      return v14;
    }

LABEL_18:
    v7 = (v7 + 1) % *(v3 + 16);
    v4 = v14;
  }

  while (v7 != v6);
  return v14;
}

uint64_t skit::internal::StringRegistry::erase_internal(skit::internal::StringRegistry *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (*(v2 + 16))
  {
    v3 = 0;
    v4 = a2;
    v5 = a2 - a2 / *(v2 + 16) * *(v2 + 16);
    v6 = v5;
    while (2)
    {
      v7 = 0;
      v8 = (v2 + 40 + (v6 << 9) + 256);
      v9 = 1;
      while (1)
      {
        v10 = *(v8 - 64);
        if (v10 == -1)
        {
LABEL_9:
          if (v9)
          {
            return v3 & 1;
          }

          goto LABEL_10;
        }

        if (v10 == v4)
        {
          __dmb(9u);
          v11 = *v8;
          v12 = *(this + 15);
          if (v11 + 6 <= v12 && v12 >= (*(*(this + 14) + v11) + v11))
          {
            break;
          }
        }

        v9 = v7 < 0x3F;
        ++v8;
        if (++v7 == 64)
        {
          goto LABEL_9;
        }
      }

      *(v8 - 64) = -2;
      --*(*(this + 3) + 20);
      v3 = 1;
      *(this + 162) = 1;
      if (v9)
      {
        return v3 & 1;
      }

LABEL_10:
      v6 = (v6 + 1) % *(v2 + 16);
      if (v6 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t skit::internal::StringRegistry::put_str(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v25[2] = *MEMORY[0x29EDCA608];
  v25[0] = a2;
  v25[1] = a3;
  if (*(a1 + 24) && !skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    v10 = 2 * a3;
    for (i = skit::internal::murmur3_32(a2, 2 * a3, *(*(a1 + 24) + 12)) & 0x7FFFFFFF; ; ++i)
    {
      v11 = skit::internal::StringRegistry::lookup(a1, i, v25);
      if (v11)
      {
        v6 = 0;
        goto LABEL_4;
      }

      if ((v12 & 1) == 0)
      {
        break;
      }
    }

    if ((v13 = *(a1 + 24), (v14 = *(v13 + 16) << 6) != 0) && (*(v13 + 28) * v14) >= (*(v13 + 20) + 1) || (v11 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(a1, (v14 + (v14 >> 1)) | 1), !v11))
    {
      MEMORY[0x2A1C7C4A8](v11, v12);
      v16 = &v22[-v15];
      bzero(&v22[-v15], (v10 + 8) & 0xFFFFFFFE);
      *(v16 + 2) = a3;
      *v16 = v10 + 8;
      if (a3)
      {
        v17 = memmove(v16 + 6, a2, 2 * a3);
      }

      *(v16 + a3 + 3) = 0;
      if (*(a1 + 72) + *v16 <= *(a1 + 80))
      {
        MEMORY[0x2A1C7C4A8](v17, v18);
        *&v22[-16] = v16;
        *&v22[-8] = (v10 + 8) & 0xFFFFFFFE;
        skit::internal::BlobFile::append(v22, (a1 + 40), &v22[-16], 1u);
        if (!v24)
        {
          v19 = *(a1 + 24);
          v20 = v23;
          if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v19, i, *(v19 + 24)))
          {
            v6 = 0;
            v21.i32[0] = 1;
            v21.i32[1] = v20;
            *(v19 + 20) = vadd_s32(*(v19 + 20), v21);
            *(a1 + 162) = 1;
            goto LABEL_4;
          }

          skit::internal::BlobFile::resize((a1 + 40), *(a1 + 72) - v20);
        }
      }
    }
  }

  v6 = 0xFFFFFFFF00000000;
  i = -1;
LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return v6 | i;
}

uint64_t skit::internal::StringRegistry::get_str(skit::internal::StringRegistry *this, unsigned int a2)
{
  if (!*(this + 3))
  {
    return 0;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(this))
  {
    return 0;
  }

  v5 = *(this + 3);
  if (!*(v5 + 16))
  {
    return 0;
  }

  result = 0;
  v6 = a2 - a2 / *(v5 + 16) * *(v5 + 16);
  v7 = v6;
  while (2)
  {
    v8 = (v5 + 40 + (v7 << 9) + 256);
    v9 = 1;
    v10 = -64;
    while (1)
    {
      v11 = *(v8 - 64);
      if (v11 == -1)
      {
LABEL_14:
        if (v9)
        {
          return result;
        }

        goto LABEL_15;
      }

      if (v11 == a2)
      {
        __dmb(9u);
        v12 = *v8;
        v13 = *(this + 15);
        if (v12 + 6 <= v13)
        {
          v14 = *(this + 14);
          if (v13 >= (*(v14 + v12) + v12))
          {
            break;
          }
        }
      }

      v9 = (v10 + 64) < 0x3F;
      ++v8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_14;
      }
    }

    result = v14 + v12 + 6;
    v16 = *(v14 + v12 + 4);
    if (v9)
    {
      return result;
    }

LABEL_15:
    v7 = (v7 + 1) % *(v5 + 16);
    if (v7 != v6)
    {
      continue;
    }

    return result;
  }
}

BOOL skit::internal::StringRegistry::is_registered(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v10[0] = a2;
  v10[1] = a3;
  if (!a1[3] || skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    return 0;
  }

  for (i = skit::internal::murmur3_32(a2, 2 * a3, *(a1[3] + 12)) & 0x7FFFFFFF; ; ++i)
  {
    v8 = skit::internal::StringRegistry::lookup(a1, i, v10);
    result = v8 != 0;
    if (v8)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::internal::CompressedMetaRecord>>(unint64_t a1)
{
  if (a1 < 0x199999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<skit::internal::CompressedMetaRecord>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 1);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 10 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 1) < v6)
    {
      if (a2 <= 0x1999999999999999)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 1);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xCCCCCCCCCCCCCCCLL)
        {
          v10 = 0x1999999999999999;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<skit::internal::CompressedMetaRecord>>(v10);
      }

      std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
    }

    v12 = 10 * ((10 * v6 - 10) / 0xA) + 10;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

uint64_t skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash(uint64_t a1, unsigned int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 16) + 4) > a2)
  {
    result = 0;
    goto LABEL_3;
  }

  v6 = *(a1 + 8);
  if (((v6 - 16) / 0x150uLL) < a2)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v21 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(a1 + 16) + 4);
      *buf = 67109376;
      v27 = a2;
      v28 = 1024;
      v29 = v22;
      _os_log_error_impl(&dword_2998C6000, v21, OS_LOG_TYPE_ERROR, "FlatSet::rehash : bucket count too large, %u > %u", buf, 0xEu);
    }

    goto LABEL_24;
  }

  skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>(&v24, v6, a2);
  v7 = v24;
  if (!v24)
  {
LABEL_24:
    result = 0xFFFFFFFFLL;
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  v9 = v8 + 16;
  LODWORD(v10) = -1;
  do
  {
    v10 = (v10 + 1);
  }

  while (*(v9 + v10) < -1);
  v11 = 16 * *(v8 + 4);
  v12 = v11 - 1;
  if (v10 == v12)
  {
    *(a1 + 16) = v24;
  }

  else
  {
    v13 = v9 + v10;
    v14 = v9 + v12;
    v15 = (v9 + v11 + 20 * v10);
    do
    {
      v16 = skit::internal::murmur3_32(v15, 0x10uLL, 0);
      skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>::emplace<false,skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash::{lambda(std::pair<skit::Uuid,unsigned int> const&)#1},std::pair<skit::Uuid,unsigned int>>(buf, v7, v16, v15, v15);
      if (v30 <= 0)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v20 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2998C6000, v20, OS_LOG_TYPE_ERROR, "FlatSet::rehash : failed to insert item into new hash table", v23, 2u);
        }

        v24 = 0;
        if (v7)
        {
          v25(v7);
        }

        goto LABEL_24;
      }

      v17 = v13;
      do
      {
        v18 = *++v17;
      }

      while (v18 < -1);
      v15 = (v15 + 20 * (v17 - v13));
      v13 = v17;
    }

    while (v17 != v14);
    v19 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  (*(a1 + 24))();
LABEL_17:
  result = 0;
  *(a1 + 24) = v25;
  v24 = 0;
LABEL_3:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998DDFD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>::emplace<false,skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash(unsigned int)::{lambda(std::pair<skit::Uuid,unsigned int> const&)#1},std::pair<skit::Uuid,unsigned int>>(uint64_t result, _DWORD *a2, unsigned int a3, void *a4, __int128 *a5)
{
  v5 = a2[1];
  v6 = a3 & 0x7F;
  v7 = 16 * ((*a2 ^ (a3 >> 7)) % v5);
  v8 = 16 * v5;
  v9 = a2 + 4;
  v10 = &a2[v8 / 4 + 4];
  for (i = v7; ; i = (v12 + 1) % v8)
  {
    v12 = i;
    v13 = *(v9 + i);
    if (v13 == v6)
    {
      v14 = &v10[20 * i];
      if (*a4 == *v14 && a4[1] == *(v14 + 1))
      {
        v18 = 0;
        v16 = v9 + v12;
        goto LABEL_13;
      }
    }

    if (v13 == 128)
    {
      break;
    }
  }

  if (*(v9 + v7) >= -1)
  {
    do
    {
      v7 = (v7 + 1) % v8;
    }

    while (*(v9 + v7) > -2);
  }

  v16 = v9 + v7;
  v14 = &v10[20 * v7];
  v17 = *a5;
  *(v14 + 4) = *(a5 + 4);
  *v14 = v17;
  *v16 = v6;
  ++a2[2];
  v18 = 1;
LABEL_13:
  *result = v16;
  *(result + 8) = v14;
  *(result + 16) = v18;
  return result;
}

BOOL skit::internal::MemMetaStore::set_doc_wgt(uint64_t a1, skit::internal *this, float a3)
{
  v6 = *(a1 + 88);
  v7 = skit::internal::murmur3_32(this, 0x10uLL, 0);
  v8 = v6[1];
  v9 = v7 & 0x7F;
  v10 = 16 * ((*v6 ^ (v7 >> 7)) % v8);
  v11 = 16 * v8;
  v12 = &v6[v11 / 4 + 4];
  while (1)
  {
    v13 = v10;
    v14 = *(v6 + v10 + 16);
    if (v14 == v9)
    {
      v15 = &v12[20 * v13];
      v16 = *v15;
      v17 = *(v15 + 1);
      if (*this == v16 && *(this + 1) == v17)
      {
        break;
      }
    }

    if (v14 == 128)
    {
      return 0;
    }

    v10 = (v13 + 1) % v11;
  }

  v20 = (v11 - 1);
  result = v20 != v13;
  if (v20 != v13)
  {
    v21 = (*(a1 + 48) + 10 * *&v12[20 * v13 + 16]);
    _H0 = *v21;
    __asm { FCVT            S0, H0 }

    if (_S0 >= 0.00000011921)
    {
      v27 = 65504.0;
      if (a3 <= 65504.0)
      {
        v27 = a3;
      }

      _S0 = 0.0;
      if (a3 >= 0.0)
      {
        _S0 = v27;
      }

      if (_S0 < 0.00000011921)
      {
        ++*(a1 + 16);
        _S0 = 0.0;
      }

      __asm { FCVT            H0, S0 }

      *v21 = _H0;
    }
  }

  return result;
}

unint64_t skit::internal::DiskMetaStore::get_doc_internal(skit::internal::DiskMetaStore *this, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5) + 10 * a2;
  _H0 = *v2;
  __asm { FCVT            S0, H0 }

  if (_S0 < 0.00000011921 || (v9 = *(v2 + 2), v9 == -1))
  {
LABEL_11:
    result = 0;
    goto LABEL_6;
  }

  v11 = *(this + 16);
  if (v11 <= v9 || v11 < (*(v2 + 6) + v9))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v14 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      v15 = *(v2 + 2);
      v16 = *(v2 + 6);
      v17 = *(this + 16);
      v18[0] = 67109632;
      v18[1] = v15;
      v19 = 1024;
      v20 = v16;
      v21 = 2048;
      v22 = v17;
      _os_log_fault_impl(&dword_2998C6000, v14, OS_LOG_TYPE_FAULT, "DiskMetaStore::populate_doc : Invalid record offset/size : record=(%u, %u), doc_store_file_size=%lu", v18, 0x18u);
    }

    goto LABEL_11;
  }

  result = *(this + 15) + v9;
LABEL_6:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void skit::internal::DiskMetaStore::clear(std::string::size_type *this)
{
  skit::internal::DiskMetaStore::close(this);
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *this, this[1]);
  }

  else
  {
    v16 = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&v16, ".ms", "");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v16;
  }

  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *this, this[1]);
  }

  else
  {
    v15 = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&v15, ".xid", "");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v15;
  }

  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *this, this[1]);
  }

  else
  {
    __p = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&__p, ".ids", "");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = __p;
  }

  v3 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v4 = v17.__r_.__value_.__r.__words[0];
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v17;
  }

  else
  {
    v5 = v17.__r_.__value_.__r.__words[0];
  }

  remove(v5, v2);
  v7 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  v8 = v16.__r_.__value_.__r.__words[0];
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v16;
  }

  else
  {
    v9 = v16.__r_.__value_.__r.__words[0];
  }

  remove(v9, v6);
  v11 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  v12 = v15.__r_.__value_.__r.__words[0];
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v15;
  }

  else
  {
    v13 = v15.__r_.__value_.__r.__words[0];
  }

  remove(v13, v10);
  if (v11 < 0)
  {
    operator delete(v12);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v3 & 0x80000000) == 0)
      {
        return;
      }

LABEL_37:
      operator delete(v4);
      return;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v8);
  if (v3 < 0)
  {
    goto LABEL_37;
  }
}

void sub_2998DE580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

unint64_t skit::internal::DiskMetaStore::populate_doc(unint64_t this, uint64_t a2, uint64_t a3)
{
  if (*(this + 120))
  {
    v4 = a2;
    if (a2 != a3)
    {
      v5 = this;
      v6 = *(*(this + 24) + 32);
      do
      {
        v7 = *(v5 + 3);
        v8 = *(v4 + 8);
        if (*(v7 + 32) <= v8 && *(v7 + 40) > v8)
        {
          this = skit::internal::DiskMetaStore::get_doc_internal(v5, v8 - v6);
          *(v4 + 24) = this;
          *(v4 + 32) = v9;
        }

        v4 += 40;
      }

      while (v4 != a3);
    }
  }

  return this;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *>(std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2.__data_ - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = (a2.__data_ - 24);
        a2.__data_ = a1;
        v18 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, a2);
        v54.__data_ = &a1[1];
        v19 = std::__fs::filesystem::operator<[abi:ne200100](v5, v54);
        if (v18)
        {
          if (!v19)
          {
            v39 = a1->__pn_.__r_.__value_.__r.__words[2];
            v40 = *&a1->__pn_.__r_.__value_.__l.__data_;
            *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
            a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
            *&a1[1].__pn_.__r_.__value_.__l.__data_ = v40;
            a1[1].__pn_.__r_.__value_.__r.__words[2] = v39;
            v15.__data_ = &a1[1];
            if (!std::__fs::filesystem::operator<[abi:ne200100](v5, v15))
            {
              return 1;
            }

            v20 = a1[1].__pn_.__r_.__value_.__r.__words[2];
            v21 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
            v41 = v5->__pn_.__r_.__value_.__r.__words[2];
            *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
            a1[1].__pn_.__r_.__value_.__r.__words[2] = v41;
            goto LABEL_16;
          }

LABEL_15:
          v20 = a1->__pn_.__r_.__value_.__r.__words[2];
          v21 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v22 = v5->__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v22;
LABEL_16:
          *&v5->__pn_.__r_.__value_.__l.__data_ = v21;
          v5->__pn_.__r_.__value_.__r.__words[2] = v20;
          return 1;
        }

        if (!v19)
        {
          return 1;
        }

        v30 = a1[1].__pn_.__r_.__value_.__r.__words[2];
        v31 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        v32 = v5->__pn_.__r_.__value_.__r.__words[2];
        *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
        a1[1].__pn_.__r_.__value_.__r.__words[2] = v32;
        *&v5->__pn_.__r_.__value_.__l.__data_ = v31;
        v5->__pn_.__r_.__value_.__r.__words[2] = v30;
        break;
      case 4:
        v29 = (a2.__data_ - 24);
        v56.__data_ = &a1[1];
        v56.__size_ = &a1[2];
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v56, v29);
        return 1;
      case 5:
        v7 = (a2.__data_ - 24);
        v52.__data_ = &a1[1];
        v52.__size_ = &a1[2];
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v52, a1 + 3);
        v53.__data_ = &a1[3];
        if (!std::__fs::filesystem::operator<[abi:ne200100](v7, v53))
        {
          return 1;
        }

        v9 = a1[3].__pn_.__r_.__value_.__r.__words[2];
        v10 = *&a1[3].__pn_.__r_.__value_.__l.__data_;
        v11 = v7->__pn_.__r_.__value_.__r.__words[2];
        *&a1[3].__pn_.__r_.__value_.__l.__data_ = *&v7->__pn_.__r_.__value_.__l.__data_;
        a1[3].__pn_.__r_.__value_.__r.__words[2] = v11;
        *&v7->__pn_.__r_.__value_.__l.__data_ = v10;
        v7->__pn_.__r_.__value_.__r.__words[2] = v9;
        v8.__data_ = &a1[2];
        if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 3, v8))
        {
          return 1;
        }

        v13 = a1[2].__pn_.__r_.__value_.__r.__words[2];
        v14 = *&a1[2].__pn_.__r_.__value_.__l.__data_;
        *&a1[2].__pn_.__r_.__value_.__l.__data_ = *&a1[3].__pn_.__r_.__value_.__l.__data_;
        a1[2].__pn_.__r_.__value_.__r.__words[2] = a1[3].__pn_.__r_.__value_.__r.__words[2];
        *&a1[3].__pn_.__r_.__value_.__l.__data_ = v14;
        a1[3].__pn_.__r_.__value_.__r.__words[2] = v13;
        v12.__data_ = &a1[1];
        if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v12))
        {
          return 1;
        }

        v16 = a1[1].__pn_.__r_.__value_.__r.__words[2];
        v17 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&a1[2].__pn_.__r_.__value_.__l.__data_;
        a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
        *&a1[2].__pn_.__r_.__value_.__l.__data_ = v17;
        a1[2].__pn_.__r_.__value_.__r.__words[2] = v16;
        break;
      default:
        goto LABEL_17;
    }

    v15.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, v15))
    {
      v33 = a1->__pn_.__r_.__value_.__r.__words[2];
      v34 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v34;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v33;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2.__data_ - 24);
    v6 = (a2.__data_ - 24);
    a2.__data_ = a1;
    if (!std::__fs::filesystem::operator<[abi:ne200100](v6, a2))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v23 = &a1[2];
  a2.__data_ = a1;
  v24 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, a2);
  v55.__data_ = &a1[1];
  v25 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v55);
  if (v24)
  {
    if (v25)
    {
      v27 = a1->__pn_.__r_.__value_.__r.__words[2];
      v28 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *v23;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    }

    else
    {
      v42 = a1->__pn_.__r_.__value_.__r.__words[2];
      v43 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v43;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v42;
      v26.__data_ = &a1[1];
      if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v26))
      {
        goto LABEL_33;
      }

      v27 = a1[1].__pn_.__r_.__value_.__r.__words[2];
      v28 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = *v23;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    }

    *v23 = v28;
    a1[2].__pn_.__r_.__value_.__r.__words[2] = v27;
  }

  else if (v25)
  {
    v35 = a1[1].__pn_.__r_.__value_.__r.__words[2];
    v36 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
    *&a1[1].__pn_.__r_.__value_.__l.__data_ = *v23;
    a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    *v23 = v36;
    a1[2].__pn_.__r_.__value_.__r.__words[2] = v35;
    v26.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, v26))
    {
      v37 = a1->__pn_.__r_.__value_.__r.__words[2];
      v38 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v38;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v37;
    }
  }

LABEL_33:
  v44 = a1 + 3;
  if (&a1[3] == data)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v26.__data_ = v23;
    if (std::__fs::filesystem::operator<[abi:ne200100](v44, v26))
    {
      v51 = *v44;
      v44->__pn_.__r_.__value_.__l.__size_ = 0;
      v44->__pn_.__r_.__value_.__r.__words[2] = 0;
      v44->__pn_.__r_.__value_.__r.__words[0] = 0;
      v47 = v45;
      do
      {
        v48 = (&a1->__pn_.__r_.__value_.__l.__data_ + v47);
        if (*(&a1[3].__pn_.__r_.__value_.__r.__words[2] + v47 + 7) < 0)
        {
          operator delete(v48[9]);
        }

        *(v48 + 9) = *(v48 + 3);
        v48[11] = v48[8];
        *(v48 + 71) = 0;
        *(v48 + 48) = 0;
        if (v47 == -48)
        {
          v49 = a1;
          goto LABEL_44;
        }

        v26.__data_ = &a1[1] + v47;
        v47 -= 24;
      }

      while ((std::__fs::filesystem::operator<[abi:ne200100](&v51, v26) & 1) != 0);
      v49 = &a1[3] + v47;
      if (*(v49 + 23) < 0)
      {
        operator delete(*v49);
      }

LABEL_44:
      *v49 = v51;
      if (++v46 == 8)
      {
        return &v44[1] == data;
      }
    }

    v23 = v44;
    v45 += 24;
    if (++v44 == data)
    {
      return 1;
    }
  }
}

uint64_t skit::internal::MultiIndexV2::clear(skit::internal::MultiIndexV2 *this)
{
  v15 = *MEMORY[0x29EDCA608];
  skit::internal::IndexMemImplV2::clear((this + 48));
  v4 = *(this + 3);
    ;
  }

  *(this + 4) = v4;
  if (*(this + 23) >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (skit::internal::remove_all(v5, v2))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v8 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v9 = this;
      if (*(this + 23) < 0)
      {
        v9 = *this;
      }

      v10 = *__error();
      v11 = 136446466;
      v12 = v9;
      v13 = 1024;
      v14 = v10;
      _os_log_error_impl(&dword_2998C6000, v8, OS_LOG_TYPE_ERROR, "MultiIndexV2::clear : failed to remove transaction directory @ %{public}s : %{darwin.errno}d", &v11, 0x12u);
    }
  }

  result = std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::shrink_to_fit(this + 24);
  *(this + 68) = 0;
  *(this + 288) = 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::internal::MultiIndexV2::get_doc_freq(void *a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = *(a2 + 8) >> 1;
      v12[0] = *a2;
      v12[1] = v8;
      v9 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(v7, v12);
      skit::internal::IndexDiskImplV2::to_posting_list(v13, v9);
      if (v14[2])
      {
        v6 += *(v14[0] + 12);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  skit::internal::IndexMemImplV2::get(v13, a1 + 6, a2);
  if (v14[5])
  {
    v6 += *(v14[3] + 12);
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(void *a1, uint64_t a2)
{
  if (!a1[3])
  {
    return 0;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = skit::internal::murmur3_32(*a2, 2 * *(a2 + 8), *(v4 + 12));
  v6 = *(v4 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = v5 & 0x7FFFFFFF;
  v9 = (v5 & 0x7FFFFFFFu) % v6;
  v10 = v9;
  do
  {
    v11 = 0;
    v12 = v4 + 40 + (v10 << 9);
    v13 = 1;
    do
    {
      v14 = *(v12 + 4 * v11);
      if (v14 == -1)
      {
        break;
      }

      if (v14 == v8)
      {
        __dmb(9u);
        v15 = *(v12 + 256 + 4 * v11);
        v16 = a1[15];
        if (v15 + 6 <= v16)
        {
          result = a1[14] + v15;
          if (v16 >= (*result + v15))
          {
            v18 = *(result + 4);
            if (*(a2 + 8) == v18)
            {
              if (!*(result + 4))
              {
                goto LABEL_18;
              }

              v19 = (result + 6);
              v20 = *a2;
              while (*v20 == *v19)
              {
                ++v19;
                v20 = (v20 + 2);
                if (!--v18)
                {
                  goto LABEL_18;
                }
              }
            }
          }
        }
      }

      v13 = v11++ < 0x3F;
    }

    while (v11 != 64);
    result = v7;
LABEL_18:
    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) % *(v4 + 16);
    v7 = result;
  }

  while (v10 != v9);
  return result;
}

void skit::internal::IndexMemImplV2::get(uint64_t a1, void *a2, uint64_t a3)
{
  v34[3] = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = std::__string_view_hash<char16_t>::operator()[abi:ne200100](*a3, v6 >> 1);
  v8 = a2[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a2 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    v32 = v34;
    v33 = 0x1800000000;
    v30 = 0uLL;
    v31 = 0;
LABEL_19:
    *a1 = a1 + 16;
    *(a1 + 8) = 0x1800000000;
    LODWORD(v33) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (*(v14 + 6) != v6 || memcmp(v14[2], v5, v6))
  {
    goto LABEL_17;
  }

  v32 = v34;
  v33 = 0x1800000000;
  if (&v32 == (v14 + 2))
  {
    v30 = *(v14 + 7);
    v31 = v14[9];
    goto LABEL_19;
  }

  v17 = v14[2];
  v18 = *(v14 + 6);
  if (v18 < 0x19)
  {
    if (v18)
    {
      v22 = *(v14 + 6);
      v23 = v34;
      do
      {
        v24 = *v17++;
        *v23++ = v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v19 = skit::SmallVector<std::byte,24u,false>::allocate(*(v14 + 6));
    v20 = v19;
    for (i = 0; i != v18; ++i)
    {
      *(v19 + i) = v17[i];
    }

    if (v32 != v34)
    {
      free(v32);
    }

    v32 = v20;
    HIDWORD(v33) = malloc_size(v20);
  }

  LODWORD(v33) = v18;
  v25 = v32;
  v30 = *(v14 + 7);
  v31 = v14[9];
  if (v32 == v34)
  {
    v26 = (a1 + 16);
    *a1 = a1 + 16;
    if (v18)
    {
      v27 = v18;
      v28 = v25;
      do
      {
        v29 = *v28++;
        *v26++ = v29;
        --v27;
      }

      while (v27);
    }

    *(a1 + 8) = v18;
    *(a1 + 12) = 24;
    LODWORD(v33) = 0;
    *(a1 + 40) = v30;
    *(a1 + 56) = v31;
    if (v25 != v34)
    {
      free(v25);
    }
  }

  else
  {
    *a1 = v32;
    *(a1 + 8) = v33;
LABEL_20:
    *(a1 + 40) = v30;
    *(a1 + 56) = v31;
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2998DF128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != v13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::internal::MultiIndexV2::disk_index_size(skit::internal::IndexDiskImplV2 **this, skit::internal::MultiIndexV2 *a2)
{
  if (this == a2)
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  do
  {
    if (*v3)
    {
      v4 += skit::internal::IndexDiskImplV2::mem_size(*v3);
    }

    ++v3;
  }

  while (v3 != a2);
  return v4;
}

uint64_t skit::internal::IndexDiskImplV2::mem_size(skit::internal::IndexDiskImplV2 *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v1 = (*(v1 + 24) + (*(v1 + 16) << 9) + 40);
  }

  v2 = *(*(this + 24) + 12);
  v3 = *(this + 28);
  if (v3)
  {
    v3 = (336 * *(v3 + 4) + 16);
  }

  if (v2)
  {
    v4 = 10 * v2 + 48;
  }

  else
  {
    v4 = 0;
  }

  return v4 + v1 + v3 + *(this + 37);
}

uint64_t skit::internal::MultiIndexV2::index_count_threshold(skit::internal::IndexDiskImplV2 **this, skit::internal::MultiIndexV2 *a2, unint64_t a3)
{
  if (this == a2)
  {
    return 0;
  }

  v5 = this;
  v6 = 0;
  do
  {
    if (*v5)
    {
      if (skit::internal::IndexDiskImplV2::mem_size(*v5) >= a3)
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }
    }

    ++v5;
  }

  while (v5 != a2);
  return v6;
}

uint64_t skit::internal::IndexMemImplV2::open_doc_store(skit::internal::IndexMemImplV2 *this, std::__fs::filesystem::path *a2, int a3, uint64_t a4, uint64_t a5)
{
  buf[3] = *MEMORY[0x29EDCA608];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = a2->__pn_;
  }

  std::string::append(&__p, ".ids", 4uLL);
  if (*(this + 44) == -1)
  {
    *(this + 27) = a5;
    buf[0] = __p.__r_.__value_.__l.__size_;
    v9 = __p.__r_.__value_.__r.__words[0];
    *(buf + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (*(this + 175) < 0)
    {
      operator delete(*(this + 19));
    }

    v11 = buf[0];
    *(this + 19) = v9;
    *(this + 20) = v11;
    *(this + 167) = *(buf + 7);
    *(this + 175) = v10;
    v12 = skit::internal::BlobFile::open((this + 152), 1538, a3, a4);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t skit::internal::MultiIndexV2::search(void *a1, void *a2, uint64_t *a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, float a9)
{
  v442 = a5;
  v448 = a1;
  v470 = *MEMORY[0x29EDCA608];
  v461 = a9;
  v13 = a6 + 1;
  v14 = a2[2];
  v451 = a2;
  v15 = *a2;
  _CF = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *a2) >> 3) >= v13;
  v452 = a3;
  if (!_CF)
  {
    v17 = v451[1] - v15;
    std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Hit>>(v13);
  }

  v441 = v442 - 2;
  if (v442 == 2)
  {
    a7 = 1;
  }

  else if (v442 == 3)
  {
    a7 = -1431655765 * ((a3[1] - *a3) >> 4);
  }

  v449 = a7;
  v18 = *a3;
  v447 = a3[1];
  v446 = v18;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v447 - v18) >> 4);
  v20 = (v447 - v18) >> 1;
  if (v19 > 0x3F)
  {
    operator new[]();
  }

  v21 = 0xAAAAAAAAAAAAAAACLL * ((v447 - v18) >> 4);
  MEMORY[0x2A1C7C4A8](v13, 0x1000C8077774924);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v457 = &v437[-v22];
  bzero(&v437[-v22], v20);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v25 = &v437[-v22];
  v26 = v452;
  bzero(v25, v20);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v444 = &v437[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v444, 4 * v19);
  v450 = a6;
  v438 = a8;
  v440 = v19;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
LABEL_46:
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v64 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2998C6000, v64, OS_LOG_TYPE_FAULT, "MultiIndexV2::token_wgts : Unknown token weight method", buf, 2u);
        }

        goto LABEL_78;
      }

      v35 = *v26;
      v34 = v26[1];
      v36 = v448[3];
      v37 = v448[4];
      if (v36 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        do
        {
          v39 = *v36++;
          v38 += *(*(v39 + 192) + 12);
        }

        while (v36 != v37);
      }

      v76 = v444;
      if (v34 != v35)
      {
        v77 = 0;
        v78 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 4);
        v79 = (v38 + *(v448 + 27));
        do
        {
          v80 = *v452;
          v81 = *v452 + v77;
          if (*(v81 + 40))
          {
            v82 = *(v81 + 23);
            if (v82 < 0)
            {
              v84 = v80 + v77;
              v83 = *v84;
              v82 = *(v84 + 8);
            }

            else
            {
              v83 = (v80 + v77);
            }

            skit::internal::Term::Term(buf, *(v81 + 36), v83, v82);
            doc_freq = skit::internal::MultiIndexV2::get_doc_freq(v448, buf);
            *v76 = log10f((v79 / doc_freq) + 1.0);
            if (*buf != v464)
            {
              free(*buf);
            }
          }

          else
          {
            *v76 = 0.0;
          }

          ++v76;
          v77 += 48;
          --v78;
        }

        while (v78);
      }
    }

    else
    {
      v62 = v26[1] - *v26;
      if (v62)
      {
        v63 = 0xAAAAAAAAAAAAAAABLL * (v62 >> 4);
        if (v63 <= 1)
        {
          v63 = 1;
        }

        memset_pattern16(v444, &unk_2998EB820, 4 * v63);
      }
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v41 = *v26;
        v40 = v26[1];
        v42 = v448[3];
        v43 = v448[4];
        if (v42 == v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = 0;
          do
          {
            v45 = *v42++;
            v44 += *(*(v45 + 192) + 12);
          }

          while (v42 != v43);
        }

        v65 = v444;
        if (v40 != v41)
        {
          v66 = 0;
          v67 = (v44 + *(v448 + 27));
          v68 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 4);
          do
          {
            v69 = *v452;
            v70 = *v452 + v66;
            if (*(v70 + 40))
            {
              v71 = *(v70 + 23);
              if (v71 < 0)
              {
                v73 = v69 + v66;
                v72 = *v73;
                v71 = *(v73 + 8);
              }

              else
              {
                v72 = (v69 + v66);
              }

              skit::internal::Term::Term(buf, *(v70 + 36), v72, v71);
              v74 = skit::internal::MultiIndexV2::get_doc_freq(v448, buf);
              *v65 = logf((((v67 - v74) + 0.5) / (v74 + 0.5)) + 1.0);
              if (*buf != v464)
              {
                free(*buf);
              }
            }

            else
            {
              *v65 = 0.0;
            }

            ++v65;
            v66 += 48;
            --v68;
          }

          while (v68);
        }

        break;
      case 3:
        v46 = v26;
        v47 = v26[1];
        v48 = *v46;
        v49 = v47 - *v46;
        v50 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 4);
        if (v49)
        {
          v51 = 0;
          v52 = 0.0;
          v53 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 4);
          v54 = v444;
          v55 = 0.0;
          do
          {
            v56 = *v452;
            v57 = *v452 + v51;
            if (*(v57 + 40))
            {
              v58 = *(v57 + 23);
              if (v58 < 0)
              {
                v60 = v56 + v51;
                v59 = *v60;
                v58 = *(v60 + 8);
              }

              else
              {
                v59 = (v56 + v51);
              }

              skit::internal::Term::Term(buf, *(v57 + 36), v59, v58);
              v61 = skit::internal::MultiIndexV2::get_doc_freq(v448, buf);
              *v54 = v61;
              if (*buf != v464)
              {
                free(*buf);
              }

              v52 = v52 + 1.0;
              v55 = v55 + v61;
            }

            else
            {
              *v54 = 0.0;
            }

            ++v54;
            v51 += 48;
            --v53;
          }

          while (v53);
        }

        else
        {
          v55 = 0.0;
          v52 = 0.0;
        }

        v75 = v444;
        if (v47 != v48)
        {
          do
          {
            *v75 = 1.0 - (*v75 * (((((v52 * (v52 * v52)) + (v52 * -2.0)) + 1.0) * 0.5) / (v55 * (v52 * (v52 * v52)))));
            ++v75;
            --v50;
          }

          while (v50);
        }

        break;
      case 4:
        v29 = v26[1] - *v26;
        if (v29)
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 4);
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = (*v26 + 32);
          v32 = v444;
          do
          {
            v33 = *v31;
            v31 += 12;
            *v32++ = v33;
            --v30;
          }

          while (v30);
        }

        break;
      default:
        goto LABEL_46;
    }
  }

LABEL_78:
  v439 = 0;
  v86 = v448[4];
  v454 = v448[3];
  v445 = v86;
  v87 = v451;
  if (v454 != v86)
  {
    v459 = v464;
    v458 = (v25 + 8);
    v88 = v440;
    if (v440 <= 1)
    {
      v88 = 1;
    }

    v443 = v88;
    v455 = (v25 + 24);
    v453 = (v25 + 16);
    do
    {
      if (v447 != v446)
      {
        v89 = 0;
        v90 = 0;
        v460 = *v454;
        v91 = v444;
        v92 = v443;
        v93 = v452;
        do
        {
          v94 = *v93 + v89;
          if (*(v94 + 40))
          {
            v95 = *(v94 + 23);
            if (v95 < 0)
            {
              v97 = *v93 + v89;
              v96 = *v97;
              v95 = *(v97 + 8);
            }

            else
            {
              v96 = (*v93 + v89);
            }

            skit::internal::Term::Term(buf, *(v94 + 36), v96, v95);
            v462[0] = *buf;
            v462[1] = *&buf[8] >> 1;
            v98 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(v460, v462);
            skit::internal::IndexDiskImplV2::to_posting_list(&v467, v98);
            if (v469)
            {
              v99 = &v457[6 * v90];
              *v99 = v468;
              v100 = v469;
              *(v99 + 2) = v469;
              v101 = &v25[24 * v90];
              v102 = *v91;
              *v101 = v99;
              *(v101 + 1) = v100;
              *(v101 + 4) = v102;
              ++v90;
            }

            if (*buf != v459)
            {
              free(*buf);
            }
          }

          ++v91;
          v89 += 48;
          --v92;
        }

        while (v92);
        v103 = v449;
        v104 = v450;
        v105 = v453;
        if (v90 >= v449)
        {
          v456 = *(v460[24] + 32);
          if (v90 < 2)
          {
            if (v90 == 1)
            {
              v133 = *(v25 + 1);
              if (v133 < *(*v25 + 16) + 6 * *(**v25 + 12))
              {
                do
                {
                  v134 = v456 + *v133;
                  _H0 = *(v133 + 2);
                  __asm { FCVT            S0, H0 }

                  _H1 = *(v460[26] + 10 * (v134 - *(v460[24] + 32)));
                  __asm { FCVT            S1, H1 }

                  v139 = *v25;
                  v133 = (*(v25 + 1) + 6);
                  *(v25 + 1) = v133;
                }

                while (v133 < v139[2] + 6 * *(*v139 + 12));
              }
            }
          }

          else if (v442 <= 1)
          {
            if (!v442)
            {
              while (1)
              {
LABEL_235:
                v236 = v90 - 1;
                if (v90 != 1)
                {
                  if (!v90)
                  {
                    goto LABEL_94;
                  }

                  v220 = -1;
                  v221 = v455;
                  for (i = 1; i != v90; ++i)
                  {
                    v223 = v221;
                    v224 = v220;
                    do
                    {
                      if (**(v223 + 1) >= **(v223 - 2))
                      {
                        break;
                      }

                      v225 = v223 - 24;
                      v226 = *v223;
                      v464[0] = *(v223 + 2);
                      *buf = v226;
                      *v223 = *(v223 - 24);
                      *(v223 + 4) = *(v223 - 2);
                      v227 = *buf;
                      *(v225 + 16) = v464[0];
                      *v225 = v227;
                      v223 = (v223 - 24);
                      _CF = __CFADD__(v224++, 1);
                    }

                    while (!_CF);
                    --v220;
                    v221 = (v221 + 24);
                  }
                }

                v228 = 0.0;
                v229 = -1;
                v230 = v105;
                while (v229 - v236 != -1)
                {
                  v231 = **(v230 - 2);
                  _H2 = *(v231 + 4);
                  __asm { FCVT            S2, H2 }

                  v234 = *v230;
                  v230 += 6;
                  v228 = v228 + (v234 * _S2);
                  LOWORD(_S2) = *(v231 + 6);
                  __asm { FCVT            S2, H2 }

                  ++v229;
                  if ((v228 * _S2) > v461)
                  {
                    v236 = v229;
                    goto LABEL_212;
                  }
                }

                LODWORD(v229) = v90 - 1;
LABEL_212:
                v237 = **&v25[24 * v236 + 8];
                if (**(v25 + 1) == v237)
                {
                  v238 = 0;
                  v239 = v456 + v237;
                  _H0 = *(v460[26] + 10 * (v456 + v237 - *(v460[24] + 32)));
                  __asm { FCVT            S0, H0 }

                  v242 = 0.0;
                  v243 = v458;
                  while (1)
                  {
                    v244 = *v243;
                    if (**v243 != v237)
                    {
                      break;
                    }

                    _H2 = *(v244 + 2);
                    __asm { FCVT            S2, H2 }

                    v242 = v242 + (v243[2] * _S2);
                    *v243 = v244 + 6;
                    v243 += 6;
                    if (v90 == ++v238)
                    {
                      LODWORD(v238) = v90;
                      break;
                    }
                  }
                }

                else if (v229)
                {
                  v247 = 0;
                  do
                  {
                    v248 = &v25[24 * v247];
                    v249 = v248[1];
                    v250 = *(*v248 + 16) + 6 * *(**v248 + 12) - v249;
                    if (v250)
                    {
                      v251 = 0xAAAAAAAAAAAAAAABLL * (v250 >> 1);
                      do
                      {
                        v252 = v251 >> 1;
                        v253 = &v249[6 * (v251 >> 1)];
                        v255 = *v253;
                        v254 = v253 + 6;
                        v251 += ~(v251 >> 1);
                        if (v255 < v237)
                        {
                          v249 = v254;
                        }

                        else
                        {
                          v251 = v252;
                        }
                      }

                      while (v251);
                    }

                    v248[1] = v249;
                    ++v247;
                  }

                  while (v247 != v236);
                }

                v256 = 0;
                do
                {
                  v257 = v256 + 1;
                  if (*&v25[24 * v256 + 8] >= *(*&v25[24 * v256] + 16) + 6 * *(**&v25[24 * v256] + 12))
                  {
                    if (v257 < v90)
                    {
                      v258 = &v25[24 * v257];
                      v259 = v256;
                      do
                      {
                        v260 = &v25[24 * v259];
                        v261 = *v258;
                        *(v260 + 4) = *(v258 + 4);
                        *v260 = v261;
                        ++v257;
                        ++v259;
                        v258 += 24;
                      }

                      while (v257 < v90);
                    }

                    --v90;
                  }

                  else
                  {
                    ++v256;
                  }
                }

                while (v256 < v90);
              }
            }

            if (v442 == 1)
            {
              while (1)
              {
                if (v90 == 1)
                {
                  LODWORD(v148) = 0;
                }

                else
                {
                  if (!v90)
                  {
                    break;
                  }

                  v140 = -1;
                  v141 = v455;
                  for (j = 1; j != v90; ++j)
                  {
                    v143 = v141;
                    v144 = v140;
                    do
                    {
                      if (**(v143 + 1) >= **(v143 - 2))
                      {
                        break;
                      }

                      v145 = v143 - 24;
                      v146 = *v143;
                      v464[0] = *(v143 + 2);
                      *buf = v146;
                      *v143 = *(v143 - 24);
                      *(v143 + 4) = *(v143 - 2);
                      v147 = *buf;
                      *(v145 + 16) = v464[0];
                      *v145 = v147;
                      v143 = (v143 - 24);
                      _CF = __CFADD__(v144++, 1);
                    }

                    while (!_CF);
                    --v140;
                    v141 = (v141 + 24);
                  }

                  v148 = v90 - 1;
                  v149 = 0;
                  v150 = 0.0;
                  v151 = v105;
                  v152 = 0.0;
                  while (1)
                  {
                    v153 = **(v151 - 2);
                    _H3 = *(v153 + 4);
                    __asm { FCVT            S3, H3 }

                    v150 = v150 + (*v151 * _S3);
                    LOWORD(_S3) = *(v153 + 6);
                    __asm { FCVT            S3, H3 }

                    if (v152 < _S3)
                    {
                      v152 = _S3;
                    }

                    if ((v150 * v152) > v461)
                    {
                      break;
                    }

                    ++v149;
                    v151 += 6;
                    if (v148 == v149)
                    {
                      goto LABEL_143;
                    }
                  }

                  LODWORD(v148) = v149;
                }

LABEL_143:
                v157 = 0;
                v158 = **&v25[24 * v148 + 8];
                if ((v148 + 1) > 1)
                {
                  v159 = (v148 + 1);
                }

                else
                {
                  v159 = 1;
                }

                v160 = 0.0;
                v161 = v458;
                v162 = 0.0;
                do
                {
                  v163 = *(v161 - 1);
                  v164 = skit::internal::PostingListV2::seek_to_block(v163, *v161, v158);
                  *v161 = v164;
                  v165 = v163[2];
                  if (v164 < v165 + 6 * *(*v163 + 12))
                  {
                    v166 = ((v164 - v165) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                    v167 = v163[1] + 8 * ((v166 >> 6) + (v166 >> 63));
                    _H0 = *(v167 + 4);
                    __asm { FCVT            S0, H0 }

                    v160 = v160 + _S0;
                    LOWORD(_S0) = *(v167 + 6);
                    __asm { FCVT            S0, H0 }

                    if (v162 < _S0)
                    {
                      v162 = _S0;
                    }
                  }

                  ++v157;
                  v161 += 3;
                }

                while (v159 != v157);
                if (v90 > v157)
                {
                  v171 = v90 - v159;
                  v172 = &v458[3 * v159];
                  while (**v172 == v158)
                  {
                    v173 = *(v172 - 1);
                    v174 = skit::internal::PostingListV2::seek_to_block(v173, *v172, v158);
                    *v172 = v174;
                    v175 = v173[2];
                    if (v174 < v175 + 6 * *(*v173 + 12))
                    {
                      v176 = ((v174 - v175) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                      v177 = v173[1] + 8 * ((v176 >> 6) + (v176 >> 63));
                      _H0 = *(v177 + 4);
                      __asm { FCVT            S0, H0 }

                      v160 = v160 + _S0;
                      LOWORD(_S0) = *(v177 + 6);
                      __asm { FCVT            S0, H0 }

                      if (v162 < _S0)
                      {
                        v162 = _S0;
                      }
                    }

                    LODWORD(v159) = v159 + 1;
                    v172 += 3;
                    if (!--v171)
                    {
                      LODWORD(v157) = v90;
                      goto LABEL_160;
                    }
                  }

                  LODWORD(v157) = v159;
                }

LABEL_160:
                v87 = v451;
                if ((v162 * v160) <= v461)
                {
                  v198 = 0;
                  if (v157 <= 1)
                  {
                    v199 = 1;
                  }

                  else
                  {
                    v199 = v157;
                  }

                  v200 = v458;
                  v201 = v199;
                  v105 = v453;
                  do
                  {
                    v202 = *(v200 - 1);
                    v203 = v202[2];
                    if (*v200 < v203 + 6 * *(*v202 + 12) && v198 <= *(v202[1] + 8 * ((*v200 - v203) / 384)))
                    {
                      v198 = *(v202[1] + 8 * ((*v200 - v203) / 384));
                    }

                    v200 += 3;
                    --v201;
                  }

                  while (v201);
                  v204 = 0;
                  v205 = v198 + 1;
                  do
                  {
                    v206 = &v25[24 * v204];
                    v207 = v206[1];
                    v208 = *(*v206 + 16) + 6 * *(**v206 + 12) - v207;
                    if (v208)
                    {
                      v209 = 0xAAAAAAAAAAAAAAABLL * (v208 >> 1);
                      do
                      {
                        v210 = v209 >> 1;
                        v211 = &v207[6 * (v209 >> 1)];
                        v213 = *v211;
                        v212 = v211 + 6;
                        v209 += ~(v209 >> 1);
                        if (v213 < v205)
                        {
                          v207 = v212;
                        }

                        else
                        {
                          v209 = v210;
                        }
                      }

                      while (v209);
                    }

                    v206[1] = v207;
                    ++v204;
                  }

                  while (v204 != v199);
                }

                else
                {
                  v181 = 0;
                  v182 = v456 + v158;
                  _H0 = *(v460[26] + 10 * (v456 + v158 - *(v460[24] + 32)));
                  if (v157 <= 1)
                  {
                    v184 = 1;
                  }

                  else
                  {
                    v184 = v157;
                  }

                  v185 = 0.0;
                  v186 = v450;
                  v105 = v453;
                  do
                  {
                    v187 = &v25[24 * v181];
                    v188 = *(v187 + 1);
                    v189 = *(*v187 + 16) + 6 * *(**v187 + 12);
                    if (v189 != v188)
                    {
                      v190 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v188) >> 1);
                      do
                      {
                        v191 = v190 >> 1;
                        v192 = (v188 + 6 * (v190 >> 1));
                        v194 = *v192;
                        v193 = v192 + 6;
                        v190 += ~(v190 >> 1);
                        if (v194 < v158)
                        {
                          v188 = v193;
                        }

                        else
                        {
                          v190 = v191;
                        }
                      }

                      while (v190);
                    }

                    *(v187 + 1) = v188;
                    if (v188 < v189 && *v188 == v158)
                    {
                      _H2 = *(v188 + 4);
                      __asm { FCVT            S2, H2 }

                      v185 = v185 + (v187[4] * _S2);
                      *(v187 + 1) = v188 + 6;
                    }

                    ++v181;
                  }

                  while (v181 != v184);
                  __asm { FCVT            S0, H0 }
                }

                v214 = 0;
                do
                {
                  v215 = v214 + 1;
                  if (*&v25[24 * v214 + 8] >= *(*&v25[24 * v214] + 16) + 6 * *(**&v25[24 * v214] + 12))
                  {
                    if (v215 < v90)
                    {
                      v216 = &v25[24 * v215];
                      v217 = v214;
                      do
                      {
                        v218 = &v25[24 * v217];
                        v219 = *v216;
                        *(v218 + 4) = *(v216 + 4);
                        *v218 = v219;
                        ++v215;
                        ++v217;
                        v216 += 24;
                      }

                      while (v215 < v90);
                    }

                    --v90;
                  }

                  else
                  {
                    ++v214;
                  }
                }

                while (v214 < v90);
              }
            }
          }

          else
          {
            if (v441 < 2)
            {
              goto LABEL_235;
            }

            if (v442 == 4)
            {
              while (1)
              {
                if (v90 != 1)
                {
                  if (!v90)
                  {
                    break;
                  }

                  v106 = -1;
                  v107 = v455;
                  for (k = 1; k != v90; ++k)
                  {
                    v109 = v107;
                    v110 = v106;
                    do
                    {
                      if (**(v109 + 1) >= **(v109 - 2))
                      {
                        break;
                      }

                      v111 = v109 - 24;
                      v112 = *v109;
                      v464[0] = *(v109 + 2);
                      *buf = v112;
                      *v109 = *(v109 - 24);
                      *(v109 + 4) = *(v109 - 2);
                      v113 = *buf;
                      *(v111 + 16) = v464[0];
                      *v111 = v113;
                      v109 = (v109 - 24);
                      _CF = __CFADD__(v110++, 1);
                    }

                    while (!_CF);
                    --v106;
                    v107 = (v107 + 24);
                  }
                }

                v114 = 0;
                v115 = **v458;
                v116 = v456 + v115;
                _H0 = *(v460[26] + 10 * (v456 + v115 - *(v460[24] + 32)));
                __asm { FCVT            S0, H0 }

                v122 = 0.0;
                v123 = v458;
                while (1)
                {
                  v124 = *v123;
                  if (**v123 != v115)
                  {
                    break;
                  }

                  _H2 = *(v124 + 2);
                  __asm { FCVT            S2, H2 }

                  v122 = v122 + (v123[2] * _S2);
                  *v123 = v124 + 6;
                  v123 += 6;
                  if (v90 == ++v114)
                  {
                    LODWORD(v114) = v90;
                    break;
                  }
                }

                v127 = 0;
                do
                {
                  v128 = v127 + 1;
                  if (*&v25[24 * v127 + 8] >= *(*&v25[24 * v127] + 16) + 6 * *(**&v25[24 * v127] + 12))
                  {
                    if (v128 < v90)
                    {
                      v129 = &v25[24 * v128];
                      v130 = v127;
                      do
                      {
                        v131 = &v25[24 * v130];
                        v132 = *v129;
                        *(v131 + 4) = *(v129 + 4);
                        *v131 = v132;
                        ++v128;
                        ++v130;
                        v129 += 24;
                      }

                      while (v128 < v90);
                    }

                    --v90;
                  }

                  else
                  {
                    ++v127;
                  }
                }

                while (v127 < v90);
              }
            }
          }
        }
      }

LABEL_94:
      ++v454;
    }

    while (v454 != v445);
  }

  if (v447 != v446)
  {
    v262 = 0;
    v263 = 0;
    v264 = v440 <= 1 ? 1 : v440;
    v265 = v449;
    v266 = v444;
    do
    {
      v267 = *v452;
      v268 = *v452 + v262;
      if (*(v268 + 40))
      {
        v269 = *(v268 + 23);
        if (v269 < 0)
        {
          v271 = v267 + v262;
          v270 = *v271;
          v269 = *(v271 + 8);
        }

        else
        {
          v270 = (v267 + v262);
        }

        skit::internal::Term::Term(&v467, *(v268 + 36), v270, v269);
        skit::internal::IndexMemImplV2::get(buf, v448 + 6, &v467);
        if (v466)
        {
          v272 = &v457[6 * v263];
          *v272 = v465;
          v273 = v466;
          *(v272 + 2) = v466;
          v274 = &v25[24 * v263];
          v275 = *v266;
          *v274 = v272;
          *(v274 + 1) = v273;
          *(v274 + 4) = v275;
          ++v263;
        }

        if (*buf != v464)
        {
          free(*buf);
        }

        if (v467 != &v468)
        {
          free(v467);
        }
      }

      ++v266;
      v262 += 48;
      --v264;
    }

    while (v264);
    if (v263 >= v265)
    {
      v460 = v448[16];
      if (v263 < 2)
      {
        if (v263 == 1)
        {
          v308 = *(v25 + 1);
          if (v308 < *(*v25 + 16) + 6 * *(**v25 + 12))
          {
            do
            {
              v309 = v460 + *v308;
              _H0 = *(v308 + 2);
              __asm { FCVT            S0, H0 }

              _H1 = *(v448[18] + 10 * (v309 - *(v448 + 32)));
              __asm { FCVT            S1, H1 }

              v314 = *v25;
              v308 = (*(v25 + 1) + 6);
              *(v25 + 1) = v308;
            }

            while (v308 < v314[2] + 6 * *(*v314 + 12));
          }
        }
      }

      else if (v442 <= 1)
      {
        if (!v442)
        {
          while (1)
          {
LABEL_370:
            v395 = v263 - 1;
            if (v263 != 1)
            {
              if (!v263)
              {
                goto LABEL_255;
              }

              v396 = -1;
              v397 = v25 + 24;
              for (m = 1; m != v263; ++m)
              {
                v399 = v396;
                v400 = v397;
                do
                {
                  if (**(v400 + 1) >= **(v400 - 2))
                  {
                    break;
                  }

                  v401 = v400 - 24;
                  v402 = *v400;
                  v464[0] = *(v400 + 2);
                  *buf = v402;
                  *v400 = *(v400 - 24);
                  *(v400 + 4) = *(v400 - 2);
                  v403 = *buf;
                  *(v401 + 4) = v464[0];
                  *v401 = v403;
                  v400 -= 24;
                  _CF = __CFADD__(v399++, 1);
                }

                while (!_CF);
                v397 += 24;
                --v396;
              }
            }

            v404 = 0.0;
            v405 = -1;
            v406 = (v25 + 16);
            while (v405 - v395 != -1)
            {
              v407 = **(v406 - 2);
              _H2 = *(v407 + 4);
              __asm { FCVT            S2, H2 }

              v410 = *v406;
              v406 += 6;
              v404 = v404 + (v410 * _S2);
              LOWORD(_S2) = *(v407 + 6);
              __asm { FCVT            S2, H2 }

              ++v405;
              if ((v404 * _S2) > v461)
              {
                v395 = v405;
                goto LABEL_383;
              }
            }

            LODWORD(v405) = v263 - 1;
LABEL_383:
            v412 = **&v25[24 * v395 + 8];
            if (**(v25 + 1) == v412)
            {
              v413 = 0;
              v414 = v460 + v412;
              _H0 = *(v448[18] + 10 * (v460 + v412 - *(v448 + 32)));
              __asm { FCVT            S0, H0 }

              v417 = 0.0;
              v418 = (v25 + 8);
              while (1)
              {
                v419 = *v418;
                if (**v418 != v412)
                {
                  break;
                }

                _H2 = *(v419 + 2);
                __asm { FCVT            S2, H2 }

                v417 = v417 + (v418[2] * _S2);
                *v418 = v419 + 6;
                v418 += 6;
                if (v263 == ++v413)
                {
                  LODWORD(v413) = v263;
                  break;
                }
              }
            }

            else if (v405)
            {
              v422 = 0;
              do
              {
                v423 = &v25[24 * v422];
                v424 = v423[1];
                v425 = *(*v423 + 16) + 6 * *(**v423 + 12) - v424;
                if (v425)
                {
                  v426 = 0xAAAAAAAAAAAAAAABLL * (v425 >> 1);
                  do
                  {
                    v427 = v426 >> 1;
                    v428 = &v424[6 * (v426 >> 1)];
                    v430 = *v428;
                    v429 = v428 + 6;
                    v426 += ~(v426 >> 1);
                    if (v430 < v412)
                    {
                      v424 = v429;
                    }

                    else
                    {
                      v426 = v427;
                    }
                  }

                  while (v426);
                }

                v423[1] = v424;
                ++v422;
              }

              while (v422 != v395);
            }

            v431 = 0;
            do
            {
              v432 = v431 + 1;
              if (*&v25[24 * v431 + 8] >= *(*&v25[24 * v431] + 16) + 6 * *(**&v25[24 * v431] + 12))
              {
                if (v432 < v263)
                {
                  v433 = &v25[24 * v432];
                  v434 = v431;
                  do
                  {
                    v435 = &v25[24 * v434];
                    v436 = *v433;
                    *(v435 + 4) = *(v433 + 4);
                    *v435 = v436;
                    ++v432;
                    ++v434;
                    v433 += 24;
                  }

                  while (v432 < v263);
                }

                --v263;
              }

              else
              {
                ++v431;
              }
            }

            while (v431 < v263);
          }
        }

        if (v442 == 1)
        {
          v458 = (v25 + 24);
          v457 = (v25 + 16);
          v459 = (v25 + 8);
          while (1)
          {
            if (v263 == 1)
            {
              LODWORD(v323) = 0;
            }

            else
            {
              if (!v263)
              {
                break;
              }

              v315 = -1;
              v316 = v458;
              for (n = 1; n != v263; ++n)
              {
                v318 = v316;
                v319 = v315;
                do
                {
                  if (*v318[1] >= **(v318 - 2))
                  {
                    break;
                  }

                  v320 = v318 - 3;
                  v321 = *v318;
                  v464[0] = v318[2];
                  *buf = v321;
                  *v318 = *(v318 - 3);
                  *(v318 + 4) = *(v318 - 2);
                  v322 = *buf;
                  *(v320 + 4) = v464[0];
                  *v320 = v322;
                  v318 -= 3;
                  _CF = __CFADD__(v319++, 1);
                }

                while (!_CF);
                --v315;
                v316 += 3;
              }

              v323 = v263 - 1;
              v324 = 0;
              v325 = 0.0;
              v326 = v457;
              v327 = 0.0;
              while (1)
              {
                v328 = **(v326 - 2);
                _H3 = *(v328 + 4);
                __asm { FCVT            S3, H3 }

                v325 = v325 + (*v326 * _S3);
                LOWORD(_S3) = *(v328 + 6);
                __asm { FCVT            S3, H3 }

                if (v327 < _S3)
                {
                  v327 = _S3;
                }

                if ((v325 * v327) > v461)
                {
                  break;
                }

                ++v324;
                v326 += 6;
                if (v323 == v324)
                {
                  goto LABEL_312;
                }
              }

              LODWORD(v323) = v324;
            }

LABEL_312:
            v332 = 0;
            v333 = **&v25[24 * v323 + 8];
            if ((v323 + 1) > 1)
            {
              v334 = (v323 + 1);
            }

            else
            {
              v334 = 1;
            }

            v335 = 0.0;
            v336 = v459;
            v337 = 0.0;
            do
            {
              v338 = *(v336 - 1);
              v339 = skit::internal::PostingListV2::seek_to_block(v338, *v336, v333);
              *v336 = v339;
              v340 = v338[2];
              if (v339 < v340 + 6 * *(*v338 + 12))
              {
                v341 = ((v339 - v340) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                v342 = v338[1] + 8 * ((v341 >> 6) + (v341 >> 63));
                _H0 = *(v342 + 4);
                __asm { FCVT            S0, H0 }

                v335 = v335 + _S0;
                LOWORD(_S0) = *(v342 + 6);
                __asm { FCVT            S0, H0 }

                if (v337 < _S0)
                {
                  v337 = _S0;
                }
              }

              ++v332;
              v336 += 3;
            }

            while (v334 != v332);
            if (v263 > v332)
            {
              v346 = v263 - v334;
              v347 = &v459[3 * v334];
              while (**v347 == v333)
              {
                v348 = *(v347 - 1);
                v349 = skit::internal::PostingListV2::seek_to_block(v348, *v347, v333);
                *v347 = v349;
                v350 = v348[2];
                if (v349 < v350 + 6 * *(*v348 + 12))
                {
                  v351 = ((v349 - v350) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                  v352 = v348[1] + 8 * ((v351 >> 6) + (v351 >> 63));
                  _H0 = *(v352 + 4);
                  __asm { FCVT            S0, H0 }

                  v335 = v335 + _S0;
                  LOWORD(_S0) = *(v352 + 6);
                  __asm { FCVT            S0, H0 }

                  if (v337 < _S0)
                  {
                    v337 = _S0;
                  }
                }

                LODWORD(v334) = v334 + 1;
                v347 += 3;
                if (!--v346)
                {
                  LODWORD(v332) = v263;
                  goto LABEL_329;
                }
              }

              LODWORD(v332) = v334;
            }

LABEL_329:
            if ((v337 * v335) <= v461)
            {
              v373 = 0;
              if (v332 <= 1)
              {
                v374 = 1;
              }

              else
              {
                v374 = v332;
              }

              v375 = v459;
              v376 = v374;
              do
              {
                v377 = *(v375 - 1);
                v378 = v377[2];
                if (*v375 < v378 + 6 * *(*v377 + 12) && v373 <= *(v377[1] + 8 * ((*v375 - v378) / 384)))
                {
                  v373 = *(v377[1] + 8 * ((*v375 - v378) / 384));
                }

                v375 += 3;
                --v376;
              }

              while (v376);
              v379 = 0;
              v380 = v373 + 1;
              do
              {
                v381 = &v25[24 * v379];
                v382 = v381[1];
                v383 = *(*v381 + 16) + 6 * *(**v381 + 12) - v382;
                if (v383)
                {
                  v384 = 0xAAAAAAAAAAAAAAABLL * (v383 >> 1);
                  do
                  {
                    v385 = v384 >> 1;
                    v386 = &v382[6 * (v384 >> 1)];
                    v388 = *v386;
                    v387 = v386 + 6;
                    v384 += ~(v384 >> 1);
                    if (v388 < v380)
                    {
                      v382 = v387;
                    }

                    else
                    {
                      v384 = v385;
                    }
                  }

                  while (v384);
                }

                v381[1] = v382;
                ++v379;
              }

              while (v379 != v374);
            }

            else
            {
              v356 = 0;
              v357 = v460 + v333;
              _H0 = *(v448[18] + 10 * (v460 + v333 - *(v448 + 32)));
              if (v332 <= 1)
              {
                v359 = 1;
              }

              else
              {
                v359 = v332;
              }

              v360 = 0.0;
              v361 = v450;
              do
              {
                v362 = &v25[24 * v356];
                v363 = *(v362 + 1);
                v364 = *(*v362 + 16) + 6 * *(**v362 + 12);
                if (v364 != v363)
                {
                  v365 = 0xAAAAAAAAAAAAAAABLL * ((v364 - v363) >> 1);
                  do
                  {
                    v366 = v365 >> 1;
                    v367 = (v363 + 6 * (v365 >> 1));
                    v369 = *v367;
                    v368 = v367 + 6;
                    v365 += ~(v365 >> 1);
                    if (v369 < v333)
                    {
                      v363 = v368;
                    }

                    else
                    {
                      v365 = v366;
                    }
                  }

                  while (v365);
                }

                *(v362 + 1) = v363;
                if (v363 < v364 && *v363 == v333)
                {
                  _H2 = *(v363 + 4);
                  __asm { FCVT            S2, H2 }

                  v360 = v360 + (v362[4] * _S2);
                  *(v362 + 1) = v363 + 6;
                }

                ++v356;
              }

              while (v356 != v359);
              __asm { FCVT            S0, H0 }
            }

            v389 = 0;
            do
            {
              v390 = v389 + 1;
              if (*&v25[24 * v389 + 8] >= *(*&v25[24 * v389] + 16) + 6 * *(**&v25[24 * v389] + 12))
              {
                if (v390 < v263)
                {
                  v391 = &v25[24 * v390];
                  v392 = v389;
                  do
                  {
                    v393 = &v25[24 * v392];
                    v394 = *v391;
                    *(v393 + 4) = *(v391 + 4);
                    *v393 = v394;
                    ++v390;
                    ++v392;
                    v391 += 24;
                  }

                  while (v390 < v263);
                }

                --v263;
              }

              else
              {
                ++v389;
              }
            }

            while (v389 < v263);
          }
        }
      }

      else
      {
        if (v441 < 2)
        {
          goto LABEL_370;
        }

        if (v442 == 4)
        {
          v282 = v450;
          v283 = v449;
          while (1)
          {
            if (v263 != 1)
            {
              if (!v263)
              {
                break;
              }

              v284 = -1;
              v285 = v25 + 24;
              for (ii = 1; ii != v263; ++ii)
              {
                v287 = v285;
                v288 = v284;
                do
                {
                  if (**(v287 + 1) >= **(v287 - 2))
                  {
                    break;
                  }

                  v289 = v287 - 24;
                  v290 = *v287;
                  v464[0] = *(v287 + 2);
                  *buf = v290;
                  *v287 = *(v287 - 24);
                  *(v287 + 4) = *(v287 - 2);
                  v291 = *buf;
                  *(v289 + 4) = v464[0];
                  *v289 = v291;
                  v287 -= 24;
                  _CF = __CFADD__(v288++, 1);
                }

                while (!_CF);
                --v284;
                v285 += 24;
              }

              v282 = v450;
              v283 = v449;
            }

            v292 = 0;
            v293 = **(v25 + 1);
            v294 = v460 + v293;
            _H0 = *(v448[18] + 10 * (v460 + v293 - *(v448 + 32)));
            __asm { FCVT            S0, H0 }

            v297 = 0.0;
            v298 = (v25 + 8);
            while (1)
            {
              v299 = *v298;
              if (**v298 != v293)
              {
                break;
              }

              _H2 = *(v299 + 2);
              __asm { FCVT            S2, H2 }

              v297 = v297 + (v298[2] * _S2);
              *v298 = v299 + 6;
              v298 += 6;
              if (v263 == ++v292)
              {
                LODWORD(v292) = v263;
                break;
              }
            }

            v302 = 0;
            do
            {
              v303 = v302 + 1;
              if (*&v25[24 * v302 + 8] >= *(*&v25[24 * v302] + 16) + 6 * *(**&v25[24 * v302] + 12))
              {
                if (v303 < v263)
                {
                  v304 = &v25[24 * v303];
                  v305 = v302;
                  do
                  {
                    v306 = &v25[24 * v305];
                    v307 = *v304;
                    *(v306 + 4) = *(v304 + 4);
                    *v306 = v307;
                    ++v303;
                    ++v305;
                    v304 += 24;
                  }

                  while (v303 < v263);
                }

                --v263;
              }

              else
              {
                ++v302;
              }
            }

            while (v302 < v263);
          }
        }
      }
    }
  }

LABEL_255:
  v276 = v451;
  if (v438)
  {
    v277 = v448[3];
    v278 = v448[4];
    while (v277 != v278)
    {
      v279 = *v277++;
      skit::internal::DiskMetaStore::populate_doc(v279 + 168, *v276, v276[1]);
    }
  }

  result = v439;
  if (v439)
  {
    result = MEMORY[0x29C2A31E0](v439, 0x1000C8077774924);
  }

  v281 = *MEMORY[0x29EDCA608];
  return result;
}