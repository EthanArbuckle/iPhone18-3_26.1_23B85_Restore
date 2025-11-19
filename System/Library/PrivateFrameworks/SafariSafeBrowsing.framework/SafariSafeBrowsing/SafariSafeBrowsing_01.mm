void sub_2255FE040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *(v5 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  Backend::Google::DatabaseInfo::~DatabaseInfo(va);

  _Unwind_Resume(a1);
}

void SafeBrowsing::DatabaseCoordinator::lookupHashes(uint64_t a1@<X1>, uint64_t *a2@<X2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, void *a6@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a4 != 1 || (a3 & 1) == 0)
  {
    v7 = *a1;
    v26 = *(a1 + 8);
    if (*a1 != v26)
    {
      v24 = a3 ^ 1;
      v25 = a5 == 1;
      do
      {
        v9 = *a2;
        v8 = a2[1];
        if (*a2 != v8)
        {
          v10 = 0;
          v11 = v25;
          do
          {
            v13 = *(v9 + 88);
            v12 = *(v9 + 96);
            while (v13 != v12)
            {
              LOBYTE(__s2[0]) = *v13;
              __s2[1] = v7;
              v14 = *(v13 + 1);
              v15 = *(v13 + 1) * LOBYTE(__s2[0]);
              v29 = 0;
              v16 = std::__lower_bound_bisecting[abi:sn200100]<std::_ClassicAlgPolicy,Backend::Google::HashIterator,Backend::Google::HashView,std::__identity,std::__less<void,void>>(LOBYTE(__s2[0]), v14, __s2, v15 / LOBYTE(__s2[0]));
              v18 = *v13;
              v19 = *(v13 + 1);
              if ((*(v13 + 1) + (v19 * v18)) != v17 && LOBYTE(__s2[0]) == v16 && !memcmp(v17, __s2[1], v16))
              {
                v20 = *v9 == 16;
                if ((*(v9 + 80) & 1) == 0)
                {
                  __break(1u);
                }

                Backend::Google::FullHashRequest::FullHashRequest(buf, v7, v18, v9, *(v9 + 64), *(v9 + 72));
                std::vector<Backend::Google::FullHashRequest>::push_back[abi:sn200100](a6, buf);
                v11 |= v20;
                Backend::Google::FullHashRequest::~FullHashRequest(buf);
                v19 = *(v13 + 1);
              }

              v21 = (*v9 == 16) & ~v10;
              if (!v19)
              {
                v21 = 0;
              }

              v10 |= v21;
              v13 += 16;
            }

            v9 += 112;
          }

          while (v9 != v8);
          if (((v11 | v24) & 1) == 0 && ((v10 ^ 1) & 1) == 0)
          {
            v22 = SSBOSLogDatabase();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2255EE000, v22, OS_LOG_TYPE_INFO, "V5: Full hash is not in globalCache.", buf, 2u);
            }

            *__s2 = xmmword_225659800;
            Backend::Google::FullHashRequest::FullHashRequest(buf, v7, 4, __s2, 0, 0);
            std::vector<Backend::Google::FullHashRequest>::push_back[abi:sn200100](a6, buf);
            Backend::Google::FullHashRequest::~FullHashRequest(buf);
          }
        }

        v7 += 2;
      }

      while (v7 != v26);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2255FE2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Backend::Google::FullHashRequest::~FullHashRequest(va);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Backend::Google::FullHashRequest>::push_back[abi:sn200100](uint64_t result, const Backend::Google::FullHashRequest *a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3 >= *(result + 16))
  {
    result = std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    Backend::Google::FullHashRequest::FullHashRequest(*(result + 8), a2);
    result = v3 + 72;
    *(v2 + 8) = v3 + 72;
LABEL_5:
    *(v2 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(result + 8);
  if (v3 >= *(result + 16))
  {
    result = std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest const&>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    Backend::Google::FullHashRequest::FullHashRequest(*(result + 8), a2);
    result = v3 + 72;
    *(v2 + 8) = v3 + 72;
LABEL_5:
    *(v2 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

void SafeBrowsing::DatabaseCoordinator::addDatabaseInfoToDatabases(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      __p = 0;
      v28 = 0uLL;
      v31 = 0uLL;
      v25[1] = 0;
      v26 = 0;
      v25[0] = 0;
      v6 = *(v3 + 12);
      switch(v6)
      {
        case 3:
          v7 = 0;
          HIBYTE(v26) = 5;
          qmemcpy(v25, "apple", 5);
          v8 = 5;
          break;
        case 2:
          v7 = 0;
          HIBYTE(v26) = 7;
          qmemcpy(v25, "tencent", 7);
          v8 = 7;
          break;
        case 1:
          v7 = 0;
          HIBYTE(v26) = 6;
          qmemcpy(v25, "google", 6);
          v8 = 6;
          break;
        default:
          v8 = 0;
          v7 = 1;
          break;
      }

      std::string::basic_string[abi:sn200100](&v24, v8 + 1);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v24;
      }

      else
      {
        v9 = v24.__r_.__value_.__r.__words[0];
      }

      if (v26 >= 0)
      {
        v10 = v25;
      }

      else
      {
        v10 = v25[0];
      }

      v11 = v9 + v8;
      if (v10 >= v9 && v11 > v10)
      {
        goto LABEL_46;
      }

      if ((v7 & 1) == 0)
      {
        memmove(v9, v10, v8);
      }

      if (v11 <= "," && v11 + 1 > ",")
      {
LABEL_46:
        __break(1u);
      }

      *v11 = 44;
      Backend::Google::ThreatListDescriptor::toString(v3, v22);
      if ((v23 & 0x80u) == 0)
      {
        v12 = v22;
      }

      else
      {
        v12 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v13 = v23;
      }

      else
      {
        v13 = v22[1];
      }

      v14 = std::string::append(&v24, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v32[0] = v14->__r_.__value_.__l.__size_;
      *(v32 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p);
      }

      __p = v15;
      *&v28 = v32[0];
      *(&v28 + 7) = *(v32 + 7);
      HIBYTE(v28) = v16;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v17 = *(v3 + 16);
      if (v17)
      {
        v17 = *(v17 + 8);
      }

      v29 = v17;
      v18 = *(v3 + 88);
      v19 = *(v3 + 96);
      if (v18 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v20 += *(v18 + 4);
          v18 += 16;
        }

        while (v18 != v19);
      }

      v30 = v20;
      v31 = *(v3 + 48);
      std::vector<SafeBrowsing::DatabaseStatus::Database>::push_back[abi:sn200100](a3, &__p);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p);
      }

      v3 += 112;
    }

    while (v3 != v4);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2255FE660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SafeBrowsing::DatabaseStatus::Database>::push_back[abi:sn200100](uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3 >= *(result + 16))
  {
    result = std::vector<SafeBrowsing::DatabaseStatus::Database>::__emplace_back_slow_path<SafeBrowsing::DatabaseStatus::Database>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    result = v3 + 56;
LABEL_5:
    *(v2 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SafeBrowsing::DatabaseCoordinator::fromThreatListDescriptor(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 0xF)
  {
    return 2;
  }

  else
  {
    return dword_225659810[v2];
  }
}

uint64_t std::__lower_bound_bisecting[abi:sn200100]<std::_ClassicAlgPolicy,Backend::Google::HashIterator,Backend::Google::HashView,std::__identity,std::__less<void,void>>(uint64_t a1, char *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4)
  {
    v6 = a4;
    v7 = a1;
    v15 = a1;
    v8 = *(a3 + 1);
    v9 = *a3;
    if (v9 >= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a3;
    }

    do
    {
      v11 = &a2[(v6 >> 1) * v7];
      v12 = memcmp(v11, v8, v10);
      v13 = v12 < 0;
      if (!v12)
      {
        v13 = v9 > a1;
      }

      if (v13)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v13)
      {
        a2 = &v11[v15];
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest>(uint64_t a1, const Backend::Google::FullHashRequest *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::FullHashRequest>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 72 * v2);
  *&v16 = v15;
  *(&v16 + 1) = v7 + 72 * v6;
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  Backend::Google::FullHashRequest::FullHashRequest((v7 + 72 * v2), a2);
  *&v16 = v16 + 72;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FullHashRequest>,Backend::Google::FullHashRequest*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Backend::Google::FullHashRequest>::~__split_buffer(&v14);
  return v13;
}

void sub_2255FE960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::FullHashRequest>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator<Backend::Google::FullHashRequest>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(72 * a2);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FullHashRequest>,Backend::Google::FullHashRequest*>(uint64_t a1, Backend::Google::FullHashRequest *a2, const Backend::Google::FullHashRequest *a3, Backend::Google::FullHashRequest *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v8 = Backend::Google::FullHashRequest::FullHashRequest(a4, v7);
      v7 = (v7 + 72);
      a4 = (v8 + 72);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      Backend::Google::FullHashRequest::~FullHashRequest(v6);
      v6 = (v6 + 72);
    }
  }
}

uint64_t std::__split_buffer<Backend::Google::FullHashRequest>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    Backend::Google::FullHashRequest::~FullHashRequest((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        Backend::Google::FullHashRequest::~FullHashRequest((v4 - 72));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<SafeBrowsing::DatabaseStatus::Database>::__emplace_back_slow_path<SafeBrowsing::DatabaseStatus::Database>(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = std::allocator<SafeBrowsing::DatabaseStatus::Database>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 56 * v2);
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = v7 + 56 * v6;
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 24) = v10;
  *&v19 = v8 + 56;
  v11 = *(a1 + 8);
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<SafeBrowsing::DatabaseStatus::Database>,SafeBrowsing::DatabaseStatus::Database*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<SafeBrowsing::DatabaseStatus::Database>::~__split_buffer(&v17);
  return v16;
}

void sub_2255FEC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SafeBrowsing::DatabaseStatus::Database>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator<SafeBrowsing::DatabaseStatus::Database>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(56 * a2);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<SafeBrowsing::DatabaseStatus::Database>,SafeBrowsing::DatabaseStatus::Database*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_12:
        __break(1u);
        return;
      }

      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 56);
    }
  }
}

uint64_t std::__split_buffer<SafeBrowsing::DatabaseStatus::Database>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SafeBrowsing::DatabaseStatus::Database>::__destruct_at_end[abi:sn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SafeBrowsing::DatabaseStatus::Database>::__destruct_at_end[abi:sn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::finish(Backend::Google::FetchThreatListUpdatesResponseJSONParser *this@<X0>, char *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this)
  {
    v10 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v10];
    v5 = v10;
    if (Backend::Google::SSBUtilities::isKindOfNSDictionary(v4, v6))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(v4, a2);
    }

    else
    {
      v7 = SSBOSLogParser();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::finish(v8, v11);
      }

      *a2 = 0;
      a2[40] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[40] = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(void *a1@<X0>, char *a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  BYTE8(v41) = 0;
  v40 = 0;
  v39 = 0uLL;
  LOBYTE(v41) = 0;
  v32 = a1;
  v3 = [v32 ssb_arrayForKey:@"listUpdateResponses"];
  v31 = v3;
  if (v3)
  {
    v4 = SSBOSLogParser();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(v51, [v3 count], v4);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = v3;
    v7 = [v5 countByEnumeratingWithState:&v35 objects:v50 count:16];
    if (v7)
    {
      v8 = *v36;
      v9 = *a2;
      v10 = a2[40];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          if ((Backend::Google::SSBUtilities::isKindOfNSDictionary(v12, v6) & 1) == 0)
          {
            a2[40] = v10;
            *a2 = v9;
            v25 = SSBOSLogParser();
            v3 = v31;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = objc_opt_class();
              Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(v26, buf);
            }

            *a2 = 0;
            a2[40] = 0;
            goto LABEL_43;
          }

          Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v12, buf);
          v13 = v49;
          if (v49 == 1)
          {
            v14 = *(&v39 + 1);
            if (*(&v39 + 1) >= v40)
            {
              updated = std::vector<Backend::Google::ListUpdateResponse>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse>(&v39, buf);
            }

            else
            {
              std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::construct[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,void,0>(&v39, *(&v39 + 1), buf);
              updated = v14 + 120;
            }

            *(&v39 + 1) = updated;
          }

          else
          {
            v16 = SSBOSLogParser();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(&v33, v34, v16);
            }

            v10 = 0;
            v9 = 0;
          }

          if (v49 == 1)
          {
            if (__p)
            {
              v48 = __p;
              operator delete(__p);
            }

            if (v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            v42 = &v44;
            std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v42);
          }

          if (!v13)
          {
            a2[40] = v10;
            *a2 = v9;
            v3 = v31;
LABEL_43:

            goto LABEL_51;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v50 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      *a2 = v9;
      a2[40] = v10;
      v3 = v31;
    }

    v17 = [v32 objectForKeyedSubscript:@"minimumWaitDuration"];
    v19 = v17;
    if (v17 && (Backend::Google::SSBUtilities::isKindOfNSString(v17, v18) & 1) == 0)
    {
      v28 = SSBOSLogParser();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(v29, buf);
      }
    }

    else
    {
      v20 = Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseDuration(v19, &v18->isa);
      if (v21)
      {
        if ((BYTE8(v41) & 1) == 0)
        {
          BYTE8(v41) = 1;
        }

        *&v41 = v20;
        v22 = SSBOSLogParser();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2255EE000, v22, OS_LOG_TYPE_INFO, "Update parsed correctly", buf, 2u);
        }

        *a2 = v39;
        *(a2 + 2) = v40;
        v40 = 0;
        v39 = 0uLL;
        *(a2 + 24) = v41;
        v23 = 1;
        goto LABEL_50;
      }

      v27 = SSBOSLogParser();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse();
      }
    }

    v23 = 0;
    *a2 = 0;
LABEL_50:
    a2[40] = v23;

    goto LABEL_51;
  }

  v24 = SSBOSLogParser();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse();
  }

  *a2 = 0;
  a2[40] = 0;
LABEL_51:

  v42 = &v39;
  std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v42);

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2255FF364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a21;
  std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&a27);

  _Unwind_Resume(a1);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v87 = 0uLL;
  v88 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v86 = 0;
  v72 = [v3 ssb_stringForKey:@"threatType"];
  v4 = [v3 ssb_stringForKey:@"threatEntryType"];
  v5 = [v3 ssb_stringForKey:@"platformType"];
  v6 = [v3 ssb_stringForKey:@"responseType"];
  if (v72)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v5 == 0 || v6 == 0)
  {
    if (!v72)
    {
      v10 = SSBOSLogParser();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
      }
    }

    if (!v4)
    {
      v11 = SSBOSLogParser();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
      }
    }

    if (!v5)
    {
      v12 = SSBOSLogParser();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
      }
    }

    if (!v6)
    {
      v13 = SSBOSLogParser();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
      }
    }

    goto LABEL_48;
  }

  v14 = EnumTraits::toEnumFromNSString<Backend::Google::ThreatType>(v72);
  v15 = EnumTraits::toEnumFromNSString<Backend::Google::ThreatEntryType>(v4);
  v16 = EnumTraits::toEnumFromNSString<Backend::Google::PlatformType>(v5);
  v71 = EnumTraits::toEnumFromNSString<Backend::Google::ResponseType>(v6);
  if ((v14 & 0x100000000) == 0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if ((EnumTraits::isValidEnum<Backend::Google::ThreatType>(v14) & BYTE4(v15) & 1) != 1 || (EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(v15) & BYTE4(v16) & 1) != 1 || (EnumTraits::isValidEnum<Backend::Google::PlatformType>(v16) & BYTE4(v71) & 1) != 1 || !EnumTraits::isValidEnum<Backend::Google::CompressionType>(v71))
  {
    if ((EnumTraits::isValidEnum<Backend::Google::ThreatType>(v14) & 1) == 0)
    {
      v20 = SSBOSLogParser();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
      }
    }

    if ((v15 & 0x100000000) != 0)
    {
      if (!EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(v15))
      {
        v21 = SSBOSLogParser();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
        }
      }

      if ((v16 & 0x100000000) != 0)
      {
        v22 = v71;
        if (!EnumTraits::isValidEnum<Backend::Google::PlatformType>(v16))
        {
          v23 = SSBOSLogParser();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
            v22 = v71;
          }
        }

        if ((v22 & 0x100000000) != 0)
        {
          if (!EnumTraits::isValidEnum<Backend::Google::CompressionType>(v22))
          {
            v24 = SSBOSLogParser();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
            }
          }

LABEL_48:
          *a2 = 0;
          a2[120] = 0;
          goto LABEL_49;
        }
      }
    }

    goto LABEL_110;
  }

  v17 = [v3 ssb_stringForKey:@"newClientState"];
  v18 = v17;
  if (!v17)
  {
    v46 = SSBOSLogParser();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
    }

    *a2 = 0;
    a2[120] = 0;
    goto LABEL_126;
  }

  v63 = v17;
  v83[0] = 0;
  v83[1] = 0;
  v84 = 0;
  v70 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v17 options:1];
  std::vector<unsigned char>::reserve(v83, [v70 length]);
  for (i = 0; i < [v70 length]; ++i)
  {
    std::vector<unsigned char>::push_back[abi:sn200100](v83, ([v70 bytes] + i));
  }

  v26 = [v3 ssb_dictionaryForKey:@"checksum"];
  v27 = v26;
  if (!v26)
  {
    v47 = SSBOSLogParser();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
    }

    goto LABEL_102;
  }

  Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseChecksum(v26, v89);
  if ((v89[32] & 1) == 0)
  {
    v48 = SSBOSLogParser();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
    }

LABEL_102:
    *a2 = 0;
    a2[120] = 0;
    goto LABEL_123;
  }

  v28 = v89[0];
  v98[0] = *&v89[1];
  *(v98 + 15) = *&v89[16];
  v60 = v27;
  v61 = [v3 objectForKeyedSubscript:@"additions"];
  if (v61 && (Backend::Google::SSBUtilities::isKindOfNSArray(v61, v29) & 1) == 0)
  {
    v49 = SSBOSLogParser();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v50, v89);
    }

    *a2 = 0;
    a2[120] = 0;
    goto LABEL_122;
  }

  v59 = v28;
  v30 = SSBOSLogParser();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v97, [(Backend::Google::SSBUtilities *)v61 count], v30);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v61;
  v31 = [(Backend::Google::SSBUtilities *)obj countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (v31)
  {
    v66 = *v80;
    do
    {
      v64 = v31;
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v80 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v79 + 1) + 8 * j);
        if ((Backend::Google::SSBUtilities::isKindOfNSDictionary(v34, v32) & 1) == 0)
        {
          v51 = SSBOSLogParser();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v52, v89);
          }

          *a2 = 0;
          a2[120] = 0;
LABEL_109:

          goto LABEL_122;
        }

        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition(v34, v89);
        v68 = v89[16];
        if (v89[16] == 1)
        {
          std::vector<Backend::Google::ListUpdateResponse::Addition>::emplace_back<Backend::Google::ListUpdateResponse::Addition>(&v87, v89);
        }

        else
        {
          v35 = SSBOSLogParser();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(&buf, v78, v35);
          }

          *a2 = 0;
          a2[120] = 0;
        }

        if (v89[16] == 1)
        {
          v36 = *&v89[8];
          *&v89[8] = 0;
          if (v36)
          {
            operator delete[](v36);
          }
        }

        if (!v68)
        {
          goto LABEL_109;
        }
      }

      v31 = [(Backend::Google::SSBUtilities *)obj countByEnumeratingWithState:&v79 objects:v96 count:16];
    }

    while (v31);
  }

  v37 = [v3 objectForKeyedSubscript:@"removals"];
  v58 = v37;
  if (v37 && (Backend::Google::SSBUtilities::isKindOfNSArray(v37, v38) & 1) == 0)
  {
LABEL_111:
    v53 = SSBOSLogParser();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_opt_class();
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v54, v89);
    }

    *a2 = 0;
    a2[120] = 0;
LABEL_120:
    v45 = v58;
    goto LABEL_121;
  }

  v39 = SSBOSLogParser();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v95, [(Backend::Google::SSBUtilities *)obj count], v39);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = v58;
  v40 = [(Backend::Google::SSBUtilities *)v65 countByEnumeratingWithState:&v73 objects:v94 count:16];
  if (!v40)
  {
    goto LABEL_90;
  }

  v69 = *v74;
  while (2)
  {
    v42 = 0;
    v67 = v40;
    do
    {
      if (*v74 != v69)
      {
        objc_enumerationMutation(v65);
      }

      v43 = *(*(&v73 + 1) + 8 * v42);
      if ((Backend::Google::SSBUtilities::isKindOfNSDictionary(v43, v41) & 1) == 0)
      {
        v55 = SSBOSLogParser();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = objc_opt_class();
          Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(v56, v89);
        }

        goto LABEL_119;
      }

      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval(v43, v89);
      if (v89[24] != 1)
      {
        v57 = SSBOSLogParser();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse();
        }

LABEL_119:
        *a2 = 0;
        a2[120] = 0;

        goto LABEL_120;
      }

      v44 = *v89;
      std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int *,unsigned int *>(__p, *v89, *&v89[8], (*&v89[8] - *v89) >> 2);
      if (v44)
      {
        operator delete(v44);
      }

      ++v42;
    }

    while (v67 != v42);
    v40 = [(Backend::Google::SSBUtilities *)v65 countByEnumeratingWithState:&v73 objects:v94 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_90:

  v91 = 0;
  *v90 = 0u;
  memset(&v89[16], 0, 48);
  *v89 = v14;
  *&v89[4] = v15;
  *&v89[8] = v16;
  *&v89[12] = v71;
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__vdeallocate(&v89[16]);
  *&v89[16] = v87;
  *&v89[32] = v88;
  v88 = 0;
  v87 = 0uLL;
  if (*&v89[40])
  {
    *&v89[48] = *&v89[40];
    operator delete(*&v89[40]);
  }

  *&v89[40] = *__p;
  *&v89[56] = v86;
  __p[1] = 0;
  v86 = 0;
  __p[0] = 0;
  v45 = v58;
  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  *v90 = *v83;
  v91 = v84;
  v83[1] = 0;
  v84 = 0;
  v83[0] = 0;
  v92 = v59;
  v93[0] = v98[0];
  *(v93 + 15) = *(v98 + 15);
  _ZNSt3__127__optional_move_assign_baseIN7Backend6Google18ListUpdateResponseELb0EECI2NS_24__optional_destruct_baseIS3_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(a2, v89);
  Backend::Google::ListUpdateResponse::~ListUpdateResponse(v89);
LABEL_121:

LABEL_122:
  v27 = v60;
LABEL_123:

  if (v83[0])
  {
    v83[1] = v83[0];
    operator delete(v83[0]);
  }

  v18 = v63;
LABEL_126:

LABEL_49:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *&v98[0] = &v87;
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](v98);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2255FFDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char *a51, void *a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  a51 = &a47;
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&a51);

  _Unwind_Resume(a1);
}

unint64_t Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseDuration(Backend::Google::FetchThreatListUpdatesResponseJSONParser *this, NSString *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    if ([(Backend::Google::FetchThreatListUpdatesResponseJSONParser *)v2 length]<= 1)
    {
      v4 = SSBOSLogParser();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseDuration();
      }

LABEL_10:
      v5 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    if (([(Backend::Google::FetchThreatListUpdatesResponseJSONParser *)v3 hasSuffix:@"s"]& 1) == 0)
    {
      v8 = SSBOSLogParser();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseDuration();
      }

      goto LABEL_10;
    }

    v7 = [(Backend::Google::FetchThreatListUpdatesResponseJSONParser *)v3 longLongValue];
    v6 = v7 & 0xFFFFFFFFFFFFFF00;
    v5 = v7;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_11:

  return v6 | v5;
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseChecksum(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 ssb_stringForKey:@"sha256"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:1];
    if ([v4 length] == 32)
    {
      v5 = [v4 bytes];
      v6 = [v4 length];
      if (v6)
      {
        memcpy(__dst, v5, v6);
      }

      v7 = __dst[1];
      *a2 = __dst[0];
      *(a2 + 16) = v7;
      *(a2 + 32) = 1;
    }

    else
    {
      v9 = SSBOSLogParser();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseChecksum();
      }

      *a2 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v8 = SSBOSLogParser();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseChecksum();
    }

    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v21[0] = 0;
  v24 = 0;
  v4 = [v3 ssb_stringForKey:@"compressionType"];
  v5 = v4;
  if (!v4)
  {
    v8 = SSBOSLogParser();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition();
    }

    goto LABEL_19;
  }

  v6 = EnumTraits::toEnumFromNSString<Backend::Google::CompressionType>(v4);
  if ((v6 & 0x100000000) == 0)
  {
    v7 = SSBOSLogParser();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition();
    }

LABEL_19:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    v16 = SSBOSLogParser();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition();
    }

    goto LABEL_19;
  }

  v9 = [v3 ssb_dictionaryForKey:@"rawHashes"];
  v10 = v9;
  if (!v9)
  {
    v18 = SSBOSLogParser();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition(v19, v25);
    }

    goto LABEL_29;
  }

  Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes(v9, v25);
  if (v28 != 1)
  {
    v20 = SSBOSLogParser();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition();
    }

LABEL_29:
    *a2 = 0;
    *(a2 + 16) = 0;

    goto LABEL_20;
  }

  std::optional<Backend::Google::RawHashes>::operator=[abi:sn200100]<Backend::Google::RawHashes&,void>(v21, v25);
  if ((v28 & 1) != 0 && __p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if ((v24 & 1) == 0)
  {
    __break(1u);
  }

  v11 = v21[0];
  v12 = v22;
  v13 = v23;
  v14 = v23 - v22;
  v15 = operator new[](v23 - v22);
  bzero(v15, v14);
  if (v13 != v12)
  {
    memmove(v15, v12, v14);
  }

  *a2 = v11 | ((v14 / v11) << 32);
  *(a2 + 8) = v15;
  *(a2 + 16) = 1;
LABEL_20:

  if (v24 == 1 && v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_225600488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  LOBYTE(v16.__begin_) = 0;
  v17 = 0;
  v4 = [v3 ssb_stringForKey:@"compressionType"];
  v5 = v4;
  if (!v4)
  {
    v8 = SSBOSLogParser();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval();
    }

    goto LABEL_17;
  }

  v6 = EnumTraits::toEnumFromNSString<Backend::Google::CompressionType>(v4);
  if ((v6 & 0x100000000) == 0)
  {
    v7 = SSBOSLogParser();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v6 == 1)
  {
    v9 = [v3 ssb_dictionaryForKey:@"rawIndices"];
    v10 = v9;
    if (v9)
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(v9, &__p);
      if (v19 == 1)
      {
        std::optional<std::vector<unsigned int>>::operator=[abi:sn200100]<std::vector<unsigned int>,void>(&v16, &__p);
        if ((v19 & 1) != 0 && __p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        if ((v17 & 1) == 0)
        {
          __break(1u);
        }

        *a2 = v16;
        memset(&v16, 0, sizeof(v16));
        *(a2 + 24) = 1;
        goto LABEL_28;
      }

      v15 = SSBOSLogParser();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval();
      }
    }

    else
    {
      v13 = SSBOSLogParser();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval(v14, &__p);
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
LABEL_28:

    goto LABEL_18;
  }

  v11 = SSBOSLogParser();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition();
  }

LABEL_17:
  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_18:

  if (v17 == 1 && v16.__begin_)
  {
    v16.__end_ = v16.__begin_;
    operator delete(v16.__begin_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22560073C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a12)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void Backend::Google::ListUpdateResponse::~ListUpdateResponse(Backend::Google::ListUpdateResponse *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = (this + 16);
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v4);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 ssb_numberForKey:@"prefixSize"];
  v5 = [v4 unsignedIntValue];

  if (v5 - 33 > 0xFFFFFFE2)
  {
    v7 = [v3 ssb_stringForKey:@"rawHashes"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v7 options:1];
      v9 = v8;
      if (v8)
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
        std::vector<unsigned char>::reserve(__p, [v8 length]);
        for (i = 0; i < [v9 length]; ++i)
        {
          v11 = v9;
          std::vector<unsigned char>::push_back[abi:sn200100](__p, ([v9 bytes] + i));
        }

        if ((__p[1] - __p[0]) % v5)
        {
          v12 = SSBOSLogParser();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes();
          }

          *a2 = 0;
          *(a2 + 32) = 0;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v15 = SSBOSLogParser();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v21 = (__p[1] - __p[0]) / v5;
            v22 = 1024;
            v23 = v5;
            _os_log_debug_impl(&dword_2255EE000, v15, OS_LOG_TYPE_DEBUG, "Parsed %zu hashes (prefix was %i)", buf, 0x12u);
          }

          v16 = v19;
          *a2 = v5;
          *(a2 + 8) = *__p;
          *(a2 + 24) = v16;
          *(a2 + 32) = 1;
        }
      }

      else
      {
        v14 = SSBOSLogParser();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes();
        }

        *a2 = 0;
        *(a2 + 32) = 0;
      }
    }

    else
    {
      v13 = SSBOSLogParser();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes();
      }

      *a2 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v6 = SSBOSLogParser();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes();
    }

    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_225600AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<Backend::Google::RawHashes>::operator=[abi:sn200100]<Backend::Google::RawHashes&,void>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *a1 = *a2;
  if (v3 == 1)
  {
    if (a1 != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>((a1 + 8), *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
    }
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v4 = (a1 + 8);
    *(a1 + 24) = 0;
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    v7 = v5 - v6;
    if (v5 != v6)
    {
      std::vector<char>::__vallocate[abi:sn200100](v4, v5 - v6);
      v8 = *(a1 + 16);
      memmove(v8, v6, v7);
      *(a1 + 16) = &v8[v7];
    }

    *(a1 + 32) = 1;
  }

  return a1;
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v3 = [v33 objectForKeyedSubscript:@"indices"];
  v5 = v3;
  if (v3 && (Backend::Google::SSBUtilities::isKindOfNSArray(v3, v4) & 1) == 0)
  {
    v29 = SSBOSLogParser();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(v30, &v40);
    }

    *a2 = 0;
    a2[24] = 0;
  }

  else
  {
    v32 = a2;
    v40 = 0uLL;
    v41 = 0;
    v6 = SSBOSLogParser();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(&v40, v6);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v5;
    v9 = [(Backend::Google::SSBUtilities *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = *v35;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          if ((Backend::Google::SSBUtilities::isKindOfNSNumber(v12, v8) & 1) == 0)
          {
            v27 = SSBOSLogParser();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_opt_class();
              Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(v28, v38);
            }

            *v32 = 0;
            v32[24] = 0;

            if (v40)
            {
              *(&v40 + 1) = v40;
              operator delete(v40);
            }

            goto LABEL_34;
          }

          v13 = [(Backend::Google::SSBUtilities *)v12 unsignedIntValue];
          v14 = v13;
          v15 = *(&v40 + 1);
          if (*(&v40 + 1) >= v41)
          {
            v17 = *(&v40 + 1) - v40;
            v18 = ((*(&v40 + 1) - v40) >> 2) + 1;
            if (v18 >> 62)
            {
              goto LABEL_36;
            }

            v19 = &v41[-v40] >> 1;
            if (v19 <= v18)
            {
              v19 = (v17 >> 2) + 1;
            }

            if (&v41[-v40] >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            if (!v20 || (v21 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](&v40, v20)) == 0)
            {
LABEL_35:
              __break(1u);
LABEL_36:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v24 = &v21[4 * v22];
            v23 = &v21[v17];
            *v23 = v14;
            v16 = &v21[v17 + 4];
            v25 = &v23[-(*(&v40 + 1) - v40)];
            memcpy(v25, v40, *(&v40 + 1) - v40);
            v26 = v40;
            *&v40 = v25;
            *(&v40 + 1) = v16;
            v41 = v24;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            if (!*(&v40 + 1))
            {
              goto LABEL_35;
            }

            **(&v40 + 1) = v13;
            v16 = v15 + 4;
          }

          *(&v40 + 1) = v16;
        }

        v9 = [(Backend::Google::SSBUtilities *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    *v32 = v40;
    *(v32 + 2) = v41;
    v32[24] = 1;
  }

LABEL_34:

  v31 = *MEMORY[0x277D85DE8];
}

std::vector<unsigned int> *std::optional<std::vector<unsigned int>>::operator=[abi:sn200100]<std::vector<unsigned int>,void>(std::vector<unsigned int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::__move_assign(this, a2);
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

uint64_t std::vector<Backend::Google::ListUpdateResponse>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::ListUpdateResponse>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[120 * v2];
  *(&v16 + 1) = &v7[120 * v6];
  std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::construct[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,void,0>(a1, v15, a2);
  *&v16 = v15 + 120;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::ListUpdateResponse>,Backend::Google::ListUpdateResponse*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Backend::Google::ListUpdateResponse>::~__split_buffer(&v14);
  return v13;
}

void sub_22560108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::ListUpdateResponse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::construct[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *a2 = *a3;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = *(a3 + 40);
    *(a2 + 56) = *(a3 + 56);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = *(a3 + 80);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    v3 = *(a3 + 88);
    *(a2 + 104) = *(a3 + 104);
    *(a2 + 88) = v3;
  }

  else
  {
    __break(1u);
  }
}

void *std::allocator<Backend::Google::ListUpdateResponse>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x222222222222223)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(120 * a2);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::ListUpdateResponse>,Backend::Google::ListUpdateResponse*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::construct[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,void,0>(a1, a4, v8);
      v8 += 120;
      a4 += 120;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::destroy[abi:sn200100]<Backend::Google::ListUpdateResponse,void,0>(a1, v6);
      v6 += 120;
    }
  }
}

void std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::destroy[abi:sn200100]<Backend::Google::ListUpdateResponse,void,0>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      *(a2 + 72) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 40);
    if (v4)
    {
      *(a2 + 48) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 16);
    std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v5);
  }

  else
  {
    __break(1u);
  }
}

void **std::__split_buffer<Backend::Google::ListUpdateResponse>::~__split_buffer(void **a1)
{
  std::__split_buffer<Backend::Google::ListUpdateResponse>::clear[abi:sn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::ListUpdateResponse>::clear[abi:sn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 120;
    std::allocator_traits<std::allocator<Backend::Google::ListUpdateResponse>>::destroy[abi:sn200100]<Backend::Google::ListUpdateResponse,void,0>(v4, i - 120);
  }
}

uint64_t std::optional<Backend::Google::ListUpdateResponse>::~optional(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 48) = v3;
      operator delete(v3);
    }

    v5 = (a1 + 16);
    std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v5);
  }

  return a1;
}

uint64_t std::vector<Backend::Google::ListUpdateResponse::Addition>::emplace_back<Backend::Google::ListUpdateResponse::Addition>(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3 >= *(result + 16))
  {
    v5 = std::vector<Backend::Google::ListUpdateResponse::Addition>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse::Addition>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    *v3 = *a2;
    v4 = a2[1];
    a2[1] = 0;
    v3[1] = v4;
    v5 = (v3 + 2);
LABEL_5:
    *(v2 + 8) = v5;
    return v5 - 16;
  }

  __break(1u);
  return result;
}

uint64_t std::vector<Backend::Google::ListUpdateResponse::Addition>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse::Addition>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = (v2 >> 4) + 1;
  if (v3 >> 60)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
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

  v21 = a1;
  if (!v7 || (v8 = std::allocator<Backend::Google::Database::HashSizeBucket>::allocate_at_least[abi:sn200100](a1, v7), v9 = &v8[v2], v18 = v8, v19 = &v8[v2], *(&v20 + 1) = &v8[16 * v10], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  *v9 = *a2;
  v11 = a2[1];
  a2[1] = 0;
  *(v9 + 1) = v11;
  *&v20 = v9 + 16;
  v12 = *(a1 + 8);
  v13 = &v9[*a1 - v12];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::ListUpdateResponse::Addition>,Backend::Google::ListUpdateResponse::Addition*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<Backend::Google::ListUpdateResponse::Addition>::~__split_buffer(&v18);
  return v17;
}

void sub_225601498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::ListUpdateResponse::Addition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::ListUpdateResponse::Addition>,Backend::Google::ListUpdateResponse::Addition*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_12:
        __break(1u);
        return;
      }

      *a4 = *v6;
      v7 = v6[1];
      v6[1] = 0;
      a4[1] = v7;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v8 = v5[1];
      v5[1] = 0;
      if (v8)
      {
        operator delete[](v8);
      }

      v5 += 2;
    }
  }
}

uint64_t std::__split_buffer<Backend::Google::ListUpdateResponse::Addition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Backend::Google::ListUpdateResponse::Addition>::__destruct_at_end[abi:sn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::ListUpdateResponse::Addition>::__destruct_at_end[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 16;
    v5 = *(v2 - 8);
    *(v2 - 8) = 0;
    if (v5)
    {
      operator delete[](v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }
}

void *std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 2)
    {
      v19 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v19);
      }

      v14 = &v9[v19];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = *(v7 + 8);
      }

      v17 = &__src[v16];
      v18 = a3 - &__src[v16];
      if (v18)
      {
        result = memmove(v15, v17, v18);
      }

      v14 = &v15[v18];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<Backend::Google::CompressionType>::__vallocate[abi:sn200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void std::vector<Backend::Google::ListUpdateResponse::Addition>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<Backend::Google::ListUpdateResponse::Addition>::clear[abi:sn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 _ZNSt3__127__optional_move_assign_baseIN7Backend6Google18ListUpdateResponseELb0EECI2NS_24__optional_destruct_baseIS3_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = result;
  *(a1 + 120) = 1;
  return result;
}

void *std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v19 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v19);
      }

      v14 = &v9[v19];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = *(v7 + 8);
      }

      v17 = &__src[v16];
      v18 = a3 - &__src[v16];
      if (v18)
      {
        result = memmove(v15, v17, v18);
      }

      v14 = &v15[v18];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<char>::__vallocate[abi:sn200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void *Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(void *a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = &unk_2838CE2B8;
  v9[1] = a3;
  v9[3] = v9;
  CoroutineCaller<std::shared_ptr<ReadStream>>::CoroutineCaller(a1, &v7, v9);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_225601A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

void *Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x148uLL);
  *result = Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse;
  result[38] = a1;
  result[1] = Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 324) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x130uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>;
  v6[34] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 25), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 296) = 0;
  return result;
}

void *Backend::Google::HashListsBatchGetResponseParser::parseHashList@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x228uLL);
  *result = Backend::Google::HashListsBatchGetResponseParser::parseHashList;
  result[54] = a1;
  result[1] = Backend::Google::HashListsBatchGetResponseParser::parseHashList;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 538) = 0;
  return result;
}

uint64_t Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](v9, a2);
  v12 = 0;
  v5 = operator new(0x28uLL);
  *v5 = &unk_2838CE348;
  v6 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      v5[4] = v5 + 1;
      (*(*v6 + 24))(v6);
    }

    else
    {
      v5[4] = v10;
      v10 = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v12 = v5;
  Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>(a1, v11, a3);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v11);
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225601CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](va1);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

__n128 Backend::Google::readAdditions@<Q0>(__n128 *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = operator new(0x80uLL);
  *v6 = Backend::Google::readAdditions;
  *(v6 + 28) = a2;
  result = *a1;
  *(v6 + 72) = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  *(v6 + 1) = Backend::Google::readAdditions;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  v6[120] = 0;
  return result;
}

{
  v6 = operator new(0x80uLL);
  *v6 = Backend::Google::readAdditions;
  *(v6 + 28) = a2;
  result = *a1;
  *(v6 + 72) = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  *(v6 + 1) = Backend::Google::readAdditions;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  v6[120] = 0;
  return result;
}

uint64_t Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](v9, a2);
  v12 = 0;
  v5 = operator new(0x28uLL);
  *v5 = &unk_2838CD868;
  v6 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      v5[4] = v5 + 1;
      (*(*v6 + 24))(v6);
    }

    else
    {
      v5[4] = v10;
      v10 = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v12 = v5;
  Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>(a1, v11, a3);
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v11);
  result = std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225601E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](va1);
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

__n128 Backend::Google::readRemovalIndices@<Q0>(__n128 *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  *v6 = Backend::Google::readRemovalIndices;
  *(v6 + 32) = a2;
  result = *a1;
  *(v6 + 104) = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  *(v6 + 1) = Backend::Google::readRemovalIndices;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  v6[136] = 0;
  return result;
}

{
  v6 = operator new(0x90uLL);
  *v6 = Backend::Google::readRemovalIndices;
  *(v6 + 32) = a2;
  result = *a1;
  *(v6 + 104) = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  *(v6 + 1) = Backend::Google::readRemovalIndices;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  v6[136] = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x98uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>;
  v6[15] = a1;
  result = std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 6), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 144) = 0;
  return result;
}

void *Backend::Google::HashListsBatchGetResponseParser::parseDuration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x78uLL);
  *result = Backend::Google::HashListsBatchGetResponseParser::parseDuration;
  result[8] = a1;
  result[1] = Backend::Google::HashListsBatchGetResponseParser::parseDuration;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 112) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readByteArray<32ul>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xA0uLL);
  *result = Backend::Google::ProtocolMessageReader::readByteArray<32ul>;
  result[11] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readByteArray<32ul>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 152) = 0;
  return result;
}

void detail::lazy_promise<ReadResult<unsigned int>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::HashList>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

_BYTE *std::__optional_move_base<Backend::Google::HashList,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[160] = 0;
  if (*(a2 + 160) == 1)
  {
    std::__construct_at[abi:sn200100]<Backend::Google::HashList,Backend::Google::HashList,Backend::Google::HashList*>(a1, a2);
    a1[160] = 1;
  }

  return a1;
}

uint64_t std::__construct_at[abi:sn200100]<Backend::Google::HashList,Backend::Google::HashList,Backend::Google::HashList*>(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v3 = a2[3];
    v4 = a2[4];
    v5 = a2[5];
    *(result + 96) = *(a2 + 96);
    *(result + 64) = v4;
    *(result + 80) = v5;
    *(result + 48) = v3;
    *(result + 104) = 0;
    *(result + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(result + 104) = *(a2 + 13);
      v6 = *(a2 + 14);
      *(a2 + 14) = 0;
      *(result + 112) = v6;
      *(result + 120) = 1;
    }

    *(result + 128) = 0;
    *(result + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      *(result + 128) = 0;
      *(result + 136) = 0;
      *(result + 144) = 0;
      *(result + 128) = a2[8];
      *(result + 144) = *(a2 + 18);
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      *(a2 + 18) = 0;
      *(result + 152) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__optional_storage_base<Backend::Google::HashList,false>::~__optional_storage_base(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 152) == 1)
    {
      v2 = *(a1 + 128);
      if (v2)
      {
        *(a1 + 136) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v3 = *(a1 + 112);
      *(a1 + 112) = 0;
      if (v3)
      {
        operator delete[](v3);
      }
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      *(a1 + 32) = v4;
      operator delete(v4);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::vector<Backend::Google::HashList>::__emplace_back_slow_path<Backend::Google::HashList>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::HashList>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[10 * v2];
  *(&v16 + 1) = &v7[10 * v6];
  std::__construct_at[abi:sn200100]<Backend::Google::HashList,Backend::Google::HashList,Backend::Google::HashList*>(v15, a2);
  *&v16 = v15 + 10;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashList>,Backend::Google::HashList*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Backend::Google::HashList>::~__split_buffer(&v14);
  return v13;
}

void sub_22560243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::HashList>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator<Backend::Google::HashList>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x19999999999999ALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(160 * a2);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashList>,Backend::Google::HashList*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::__construct_at[abi:sn200100]<Backend::Google::HashList,Backend::Google::HashList,Backend::Google::HashList*>(a4, v8);
      v8 += 10;
      a4 += 160;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<Backend::Google::HashList>>::destroy[abi:sn200100]<Backend::Google::HashList,void,0>(a1, v6);
      v6 += 160;
    }
  }
}

void std::allocator_traits<std::allocator<Backend::Google::HashList>>::destroy[abi:sn200100]<Backend::Google::HashList,void,0>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 152) == 1)
    {
      v3 = *(a2 + 128);
      if (v3)
      {
        *(a2 + 136) = v3;
        operator delete(v3);
      }
    }

    if (*(a2 + 120) == 1)
    {
      v4 = *(a2 + 112);
      *(a2 + 112) = 0;
      if (v4)
      {
        operator delete[](v4);
      }
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      *(a2 + 32) = v5;
      operator delete(v5);
    }

    if (*(a2 + 23) < 0)
    {
      v6 = *a2;

      operator delete(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

void **std::__split_buffer<Backend::Google::HashList>::~__split_buffer(void **a1)
{
  std::__split_buffer<Backend::Google::HashList>::clear[abi:sn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::HashList>::clear[abi:sn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 160;
    std::allocator_traits<std::allocator<Backend::Google::HashList>>::destroy[abi:sn200100]<Backend::Google::HashList,void,0>(v4, i - 160);
  }
}

void detail::lazy_promise<BOOL>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void std::vector<Backend::Google::HashList>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 160;
        std::allocator_traits<std::allocator<Backend::Google::HashList>>::destroy[abi:sn200100]<Backend::Google::HashList,void,0>(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void detail::lazy_promise<std::optional<std::string>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    std::construct_at[abi:sn200100]<std::string,std::string&,std::string*>(this, a2);
    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2];
      v5 = *a2;

      std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v8 = *a2;
    v7 = *(a2 + 8);
    v9 = v7 - *a2;
    if (v7 != *a2)
    {
      std::vector<char>::__vallocate[abi:sn200100](a1, v7 - *a2);
      v10 = *(a1 + 8);
      memmove(v10, v8, v9);
      *(a1 + 8) = &v10[v9];
    }

    *(a1 + 24) = 1;
  }
}

void detail::lazy_promise<std::optional<unsigned long long>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void *RiceDecompressor::decompress4Bytes@<X0>(RiceDecompressor *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = RiceDecompressor::decompress4Bytes;
  result[7] = this;
  result[1] = RiceDecompressor::decompress4Bytes;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

void *RiceDecompressor::decodeQuotient@<X0>(RiceDecompressor *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = RiceDecompressor::decodeQuotient;
  result[7] = this;
  result[1] = RiceDecompressor::decodeQuotient;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

void *RiceDecompressor::decodeRemainder@<X0>(RiceDecompressor *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = RiceDecompressor::decodeRemainder;
  result[7] = this;
  result[1] = RiceDecompressor::decodeRemainder;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

void *BitProvider::nextBit@<X0>(BitProvider *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = BitProvider::nextBit;
  result[7] = this;
  result[1] = BitProvider::nextBit;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

void *ReadStream::readByte@<X0>(ReadStream *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = ReadStream::readByte;
  result[8] = this;
  result[1] = ReadStream::readByte;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

void ByteProvider::readByteOperationForReadStream(ByteProvider *this@<X0>, uint64_t a2@<X8>)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v5, this);
  v3 = v6;
  *a2 = v5;
  *(a2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v6;
    *(a2 + 16) = 0;
    *(a2 + 20) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 20) = 0;
  }
}

void detail::lazy_promise<ReadResult<unsigned char>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<ReadResult<BOOL>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<unsigned int>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3)
    {
      operator delete[](v3);
    }
  }

  return a1;
}

void detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void std::__optional_storage_base<Backend::Google::HashList::Addition,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<Backend::Google::HashList::Addition,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      *a1 = *a2;
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      v4 = *(a1 + 8);
      *(a1 + 8) = v3;
      if (v4)
      {

        operator delete[](v4);
      }
    }
  }

  else if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5)
    {
      operator delete[](v5);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 1;
  }
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (__n >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v3 = this->__end_ - this->__begin_;
    v4 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](this, __n);
    v5 = &v4[v3];
    v7 = &v4[4 * v6];
    v8 = this->__end_ - this->__begin_;
    v9 = &v4[v3 - v8];
    memcpy(v9, this->__begin_, v8);
    begin = this->__begin_;
    this->__begin_ = v9;
    this->__end_ = v5;
    this->__end_cap_.__value_ = v7;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 40) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      *(a1 + 24) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

__n128 std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>(std::vector<unsigned int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == a2[1].n128_u8[8])
  {
    if (LOBYTE(this[1].__begin_))
    {

      result.n128_u64[0] = std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::__move_assign(this, a2).n128_u64[0];
    }
  }

  else if (LOBYTE(this[1].__begin_))
  {
    begin = this->__begin_;
    if (this->__begin_)
    {
      this->__end_ = begin;
      operator delete(begin);
    }

    LOBYTE(this[1].__begin_) = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    result = *a2;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return result;
}

void detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void Backend::Google::HashList::~HashList(Backend::Google::HashList *this)
{
  if (*(this + 152) == 1)
  {
    v2 = *(this + 16);
    if (v2)
    {
      *(this + 17) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 120) == 1)
  {
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__function::__func<Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE2B8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE2B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>((a1 + 8), &v4, a3);
  v3 = *(&v4 + 1);
  if (*(&v4 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

void sub_2256032D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x98uLL);
  *v6 = Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>;
  *(v6 + 1) = Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>;
  v8 = *a2;
  v7 = a2[1];
  *(v6 + 16) = v7;
  *a2 = 0;
  a2[1] = 0;
  *a3 = v6;
  std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::__value_func[abi:sn200100]((v6 + 24), *a1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 13) = v7;
    v9 = v6 + 104;
    *(v6 + 22) = 0;
    *(v6 + 12) = v8;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  else
  {
    *(v6 + 13) = 0;
    v9 = v6 + 104;
    *(v6 + 22) = 0;
    *(v6 + 12) = v8;
  }

  *(v6 + 17) = v9;
  Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse((v6 + 88), v6 + 15);
  v10 = *(v6 + 15);
  *(v6 + 18) = v10;
  *(v6 + 14) = v10;
  if (!v10)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*v10)
  {
    v6[17] = 0;
    v10[2] = v6;
    v11 = **(v6 + 14);

    return v11();
  }

  else
  {
    detail::lazy_promise<std::optional<Backend::Google::HashListsBatchGetResponse>>::result((v10 + 2));
    v6[56] = 0;
    v6[80] = 0;
    if (*(v13 + 24) == 1)
    {
      *(v6 + 56) = *v13;
      *(v6 + 9) = *(v13 + 16);
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v6[80] = 1;
    }

    (*(*(v6 + 18) + 8))();
    v14 = *(v6 + 6);
    if (!v14)
    {
      v16 = std::__throw_bad_function_call[abi:sn200100]();
      if (v6[80] == 1)
      {
        v18 = a1;
        std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v18);
      }

      v17 = **(v6 + 17);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100]((v6 + 24));
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      }

      operator delete(v6);
      _Unwind_Resume(v16);
    }

    (*(*v14 + 48))(v14, v6 + 56);
    if (v6[80] == 1)
    {
      v18 = (v6 + 56);
      std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v18);
    }

    v15 = **(v6 + 17);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v15);
    }

    result = std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100]((v6 + 24));
    *v6 = 0;
    v6[17] = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void detail::lazy_promise<std::optional<Backend::Google::HashListsBatchGetResponse>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *CoroutineCaller<std::shared_ptr<ReadStream>>::CoroutineCaller(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a3 + 24);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v10);
    }

    _Unwind_Resume(v8);
  }

  (*(*v5 + 48))(&v11);
  v6 = v11;
  v11 = 0;
  *a1 = v6;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::HashListsBatchGetResponse>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 40) == 1)
  {
    v4 = (a1 + 16);
    std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashList>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashList>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE300;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::HashList>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashList>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE300;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::HashList>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1)
    {
      v3 = *(a1 + 144);
      if (v3)
      {
        *(a1 + 152) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 136) == 1)
    {
      v4 = *(a1 + 128);
      *(a1 + 128) = 0;
      if (v4)
      {
        operator delete[](v4);
      }
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      *(a1 + 48) = v5;
      operator delete(v5);
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>;
  v6[16] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 7), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 152) = 0;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CE348;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CE348;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2838CE348;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100]((v2 + 1), a1 + 8);
  return v2;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 8);

  operator delete(a1);
}

void *std::__invoke_void_return_wrapper<Lazy<std::optional<Backend::Google::HashList::Addition>>,false>::__call[abi:sn200100]<Lazy<std::optional<Backend::Google::HashList::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1} &,Backend::Google::ProtocolMessageReader &>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0xE8uLL);
  *result = Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[16] = a1;
  result[17] = a2;
  result[1] = Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[2] = 0;
  *(result + 6) = 0;
  *a3 = result;
  *(result + 224) = 0;
  return result;
}

uint64_t std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:sn200100]();
  return detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result(v5);
}

void detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void std::__shared_ptr_emplace<RiceDecompressor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<RiceDecompressor>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE390;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE390;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::HashList::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, __int128 *a2, unsigned int *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3(&v4, *a3);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v4 + 1));
  }
}

void sub_22560414C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA8uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>;
  v6[17] = a1;
  result = std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 8), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 160) = 0;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1},std::allocator<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CD868;
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1},std::allocator<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CD868;
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1},std::allocator<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2838CD868;
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100]((v2 + 1), a1 + 8);
  return v2;
}

void std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1},std::allocator<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 8);

  operator delete(a1);
}

void *std::__invoke_void_return_wrapper<Lazy<std::optional<std::vector<unsigned int>>>,false>::__call[abi:sn200100]<Lazy<std::optional<std::vector<unsigned int>>> Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1} &,Backend::Google::ProtocolMessageReader &>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0xF8uLL);
  *result = Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[18] = a1;
  result[19] = a2;
  result[1] = Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[2] = 0;
  *(result + 6) = 0;
  *a3 = result;
  *(result + 240) = 0;
  return result;
}

uint64_t std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:sn200100]();
  return std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v5);
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDA18;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDA18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<std::vector<unsigned int>>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, __int128 *a2, unsigned int *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3(&v4, *a3);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v4 + 1));
  }
}

void sub_2256047C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDAA8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDAA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>(uint64_t a1)
{
  v3 = *(a1 + 296);
  if (v3 == 2)
  {
    v5 = *(a1 + 256);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::HashList>>::result((v5 + 2));
      std::__optional_move_base<Backend::Google::HashList,false>::__optional_move_base[abi:sn200100]((a1 + 32), v13);
      *(a1 + 24) = 1;
      v14 = *(a1 + 264);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 288);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 280);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 232);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 272), (a1 + 256));
    v4 = *(a1 + 256);
    *(a1 + 232) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 296) = 1;
      v4[2] = a1;
      v6 = *(a1 + 232);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 280) = v1;
  v10 = *(a1 + 256);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 248) = v1;
      v11 = a1 + 248;
      *(a1 + 232) = 0;
      *(a1 + 240) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 248) = 0;
      v11 = a1 + 248;
      *(a1 + 232) = 0;
      *(a1 + 240) = v9;
    }

    *(a1 + 288) = v11;
    v12 = *(a1 + 224);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 288);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 280);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 296) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 232);
    v5 = *(a1 + 264);
    *(a1 + 256) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 296) = 2;
        v5[2] = a1;
        v6 = *(a1 + 256);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 192) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 296) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>(uint64_t a1)
{
  if (*(a1 + 296) > 1u)
  {
    if (*(a1 + 296) != 3)
    {
      v3 = *(a1 + 264);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 288);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 280);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 296))
  {
    v2 = *(a1 + 256);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::HashList>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 200);

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>(unsigned __int8 *a1)
{
  v8 = a1[224];
  if (v8 <= 3)
  {
    if (a1[224] > 1u)
    {
      if (v8 == 2)
      {
        v9 = *(a1 + 14);
        if (v9)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v9 = *(a1 + 14);
        if (v9)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!a1[224])
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a1[56] = 0;
        a1[72] = 0;
        goto LABEL_31;
      }

      v9 = *(a1 + 14);
      if (v9)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_125;
  }

  if (a1[224] > 5u)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 14);
      if (v9)
      {
        goto LABEL_82;
      }

      goto LABEL_125;
    }

    if (v8 == 7)
    {
      v9 = *(a1 + 14);
      if (!v9)
      {
        goto LABEL_125;
      }

LABEL_56:
      detail::lazy_promise<BOOL>::result((v9 + 2));
      v34 = *v33;
      v35 = *(a1 + 15);
      if (v35)
      {
        (*(v35 + 8))();
      }

      if (v34)
      {
        v8 = *(a1 + 54);
        v26 = (a1 + 176);
        v27 = (a1 + 168);
        goto LABEL_92;
      }

      goto LABEL_100;
    }

    v9 = *(a1 + 14);
    if (!v9)
    {
      goto LABEL_125;
    }

LABEL_23:
    detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::result((v9 + 2));
    a1[32] = 0;
    a1[48] = 0;
    if (*(v14 + 16) == 1)
    {
      *(a1 + 4) = *v14;
      v15 = *(v14 + 8);
      *(v14 + 8) = 0;
      *(a1 + 5) = v15;
      a1[48] = 1;
    }

    *(a1 + 6) = 1;
    v16 = *(a1 + 15);
    if (v16)
    {
      (*(v16 + 8))();
    }

    v17 = *(a1 + 13);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v17);
    }

    goto LABEL_102;
  }

  if (v8 != 4)
  {
    v9 = *(a1 + 14);
    if (v9)
    {
      goto LABEL_50;
    }

    goto LABEL_125;
  }

  v9 = *(a1 + 14);
  if (!v9)
  {
    goto LABEL_125;
  }

LABEL_69:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
  v4 = *v39;
  v40 = *(v39 + 8);
  v41 = *(a1 + 15);
  if (v41)
  {
    (*(v41 + 8))();
  }

  if ((v40 & 1) == 0 || HIDWORD(v4))
  {
    goto LABEL_100;
  }

  v8 = v4 + 1;
  v26 = (a1 + 176);
  v27 = (a1 + 168);
  v12 = *(a1 + 52);
  v13 = *(a1 + 53);
LABEL_93:
  v5 = *(a1 + 18);
  v6 = *(a1 + 19);
  while (1)
  {
    v3 = *v26;
    v2 = *v27;
    v1 = *(a1 + 110) | (a1[222] << 16);
    v10 = a1[226];
    v11 = 1;
LABEL_31:
    *(a1 + 53) = v13;
    *(a1 + 54) = v8;
    *(a1 + 21) = v2;
    *(a1 + 22) = v3;
    *(a1 + 52) = v12;
    *(a1 + 19) = v6;
    *(a1 + 20) = v4;
    *(a1 + 102) = v1;
    a1[206] = BYTE2(v1);
    *(a1 + 18) = v5;
    *(a1 + 50) = v11;
    a1[225] = v10;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 17), a1 + 15);
    v9 = *(a1 + 15);
    *(a1 + 14) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v53 = 1;
      goto LABEL_113;
    }

LABEL_33:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v9 + 2));
    v19 = *v18;
    v20 = *v18 >> 8;
    v21 = *v18 & 0xFFFFFFFF00000000;
    a1[222] = BYTE3(*v18);
    *(a1 + 110) = v20;
    a1[226] = v19;
    v22 = *(a1 + 15);
    if (v22)
    {
      (*(v22 + 8))();
    }

    if (v21 != 0x100000000)
    {
      break;
    }

    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          Backend::Google::ProtocolMessageReader::riceDecompressor(*(a1 + 17), *(a1 + 53), *(a1 + 52), a1 + 15);
          v9 = *(a1 + 15);
          *(a1 + 14) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v53 = 5;
            goto LABEL_113;
          }

LABEL_50:
          detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result((v9 + 2));
          v29 = *(v28 + 16);
          if (v29)
          {
            v31 = *v28;
            v30 = *(v28 + 8);
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = *(a1 + 21);
            v31 = *(a1 + 22) & 0xFFFFFFFFFFFFFF00;
          }

          *(a1 + 23) = v32;
          *(a1 + 24) = v31;
          v42 = *(a1 + 15);
          if (v42)
          {
            (*(v42 + 8))();
          }

          if (!v29)
          {
            goto LABEL_100;
          }

          *(a1 + 10) = v31;
          *(a1 + 11) = v32;
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(*(a1 + 16), (a1 + 80), *(a1 + 54));
          v9 = *(a1 + 15);
          *(a1 + 14) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v53 = 6;
            goto LABEL_113;
          }

LABEL_82:
          detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::result((v9 + 2));
          std::__optional_storage_base<Backend::Google::HashList::Addition,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<Backend::Google::HashList::Addition,false>>((a1 + 56), v43);
          v44 = *(a1 + 15);
          if (v44)
          {
            (*(v44 + 8))();
          }

          v45 = *(a1 + 11);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v45);
          }

          v46 = a1[72];
          v47 = 6;
          if ((v46 & 1) == 0)
          {
            a1[32] = 0;
            a1[48] = 0;
            *(a1 + 6) = 1;
            v47 = 3;
          }

          v27 = (a1 + 184);
          v48 = *(a1 + 23);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v48);
          }

          if (!v46)
          {
            goto LABEL_103;
          }

          v26 = (a1 + 192);
          v8 = *(a1 + 54);
LABEL_92:
          v12 = *(a1 + 52);
          v13 = *(a1 + 53);
          v4 = *(a1 + 20);
          goto LABEL_93;
        }

LABEL_54:
        Backend::Google::ProtocolMessageReader::skipField(*(a1 + 17), a1 + 15);
        v9 = *(a1 + 15);
        *(a1 + 14) = v9;
        if (v9)
        {
          if (*v9)
          {
            v53 = 7;
            goto LABEL_113;
          }

          goto LABEL_56;
        }

LABEL_125:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 4;
        goto LABEL_113;
      }

      goto LABEL_69;
    }

    if (v19 == 1)
    {
      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 2;
        goto LABEL_113;
      }

LABEL_62:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v5 = *v36;
      v37 = *(v36 + 8);
      v38 = *(a1 + 15);
      if (v38)
      {
        (*(v38 + 8))();
      }

      if ((v37 & 1) == 0 || HIDWORD(v5))
      {
        goto LABEL_100;
      }

      v8 = *(a1 + 54);
      v26 = (a1 + 176);
      v27 = (a1 + 168);
      v12 = *(a1 + 52);
      v13 = v5;
      v6 = *(a1 + 19);
      v4 = *(a1 + 20);
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_54;
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 3;
        goto LABEL_113;
      }

LABEL_41:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v6 = *v23;
      v24 = *(v23 + 8);
      v25 = *(a1 + 15);
      if (v25)
      {
        (*(v25 + 8))();
      }

      if ((v24 & 1) == 0 || (v6 - 31) <= 0xFFFFFFFFFFFFFFE2)
      {
        goto LABEL_100;
      }

      v13 = *(a1 + 53);
      v8 = *(a1 + 54);
      v26 = (a1 + 176);
      v27 = (a1 + 168);
      v4 = *(a1 + 20);
      v12 = v6;
      v5 = *(a1 + 18);
    }
  }

  if (HIDWORD(v19))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v58 = v57;
    v59 = *(a1 + 13);
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v59);
    }

    if (a1[72] == 1)
    {
      v60 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v60)
      {
        operator delete[](v60);
      }
    }

    *a1 = 0;
    a1[224] = 9;
    _Unwind_Resume(v58);
  }

  if ((v19 & 1) == 0)
  {
LABEL_100:
    a1[32] = 0;
    a1[48] = 0;
    goto LABEL_101;
  }

  if (!*(a1 + 54))
  {
    v55 = operator new(0x30uLL);
    v56 = *(a1 + 16);
    v55[1] = 0;
    v55[2] = 0;
    *v55 = &unk_2838CD668;
    v55[3] = *(a1 + 26);
    v55[4] = 0;
    v55[5] = 0;
    *(a1 + 12) = v55 + 3;
    *(a1 + 13) = v55;
    std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(v56, (a1 + 96), 1);
    v9 = *(a1 + 15);
    *(a1 + 14) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v53 = 8;
LABEL_113:
      a1[224] = v53;
      v9[2] = a1;
      v52 = *(a1 + 14);
LABEL_114:
      v54 = *v52;

      v54();
      return;
    }

    goto LABEL_23;
  }

  a1[32] = 0;
  a1[48] = 0;
  if (a1[72] == 1)
  {
    v49 = *(a1 + 7);
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 4) = v49;
    *(a1 + 5) = v50;
    a1[48] = 1;
  }

LABEL_101:
  *(a1 + 6) = 1;
LABEL_102:
  v47 = 3;
LABEL_103:
  if (a1[72] == 1)
  {
    v51 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v51)
    {
      operator delete[](v51);
    }
  }

  if (v47 == 3)
  {
    *a1 = 0;
    a1[224] = 9;
    v52 = *(a1 + 2);
    goto LABEL_114;
  }

  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::HashList::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2 <= 4)
  {
    if (*(a1 + 224) <= 1u)
    {
      if (!*(a1 + 224))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 225);
      v6 = *(a1 + 204);
      *(a1 + 222) = *(a1 + 206);
      *(a1 + 220) = v6;
      *(a1 + 226) = v5;
    }

    goto LABEL_15;
  }

  if (*(a1 + 224) <= 6u)
  {
    if (v2 != 5)
    {
      v8 = *(a1 + 120);
      if (v8)
      {
        (*(v8 + 8))();
      }

      v9 = *(a1 + 88);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      }

      v4 = *(a1 + 184);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    *(a1 + 184) = *(a1 + 168);
LABEL_15:
    v7 = *(a1 + 120);
    if (v7)
    {
      (*(v7 + 8))();
    }

    goto LABEL_23;
  }

  if (v2 == 7)
  {
    goto LABEL_15;
  }

  if (v2 != 8)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:sn200100](v4);
LABEL_23:
  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v10)
    {
      operator delete[](v10);
    }
  }

LABEL_26:
  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>(uint64_t a1)
{
  v3 = *(a1 + 152);
  if (v3 == 2)
  {
    v5 = *(a1 + 112);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      if (*(v13 + 16) == 1)
      {
        *(a1 + 32) = *v13;
        v14 = *(v13 + 8);
        *(v13 + 8) = 0;
        *(a1 + 40) = v14;
        *(a1 + 48) = 1;
      }

      *(a1 + 24) = 1;
      v15 = *(a1 + 120);
      if (v15)
      {
        (*(v15 + 8))();
      }

      v16 = **(a1 + 144);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      v17 = *(a1 + 136);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 128), (a1 + 112));
    v4 = *(a1 + 112);
    *(a1 + 88) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 152) = 1;
      v4[2] = a1;
      v6 = *(a1 + 88);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 136) = v1;
  v10 = *(a1 + 112);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 104) = v1;
      v11 = a1 + 104;
      *(a1 + 88) = 0;
      *(a1 + 96) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 104) = 0;
      v11 = a1 + 104;
      *(a1 + 88) = 0;
      *(a1 + 96) = v9;
    }

    *(a1 + 144) = v11;
    v12 = *(a1 + 80);
    if (!v12)
    {
      v20 = std::__throw_bad_function_call[abi:sn200100]();
      v21 = **(a1 + 144);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      v22 = *(a1 + 136);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      *a1 = 0;
      *(a1 + 152) = 3;
      _Unwind_Resume(v20);
    }

    (*(*v12 + 48))(v12, a1 + 88);
    v5 = *(a1 + 120);
    *(a1 + 112) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 152) = 2;
        v5[2] = a1;
        v6 = *(a1 + 112);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 152) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v18 = *v6;

  return v18();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList::Addition>(uint64_t a1)
{
  if (*(a1 + 152) > 1u)
  {
    if (*(a1 + 152) != 3)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 144);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 136);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 152))
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 56);

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}::operator()<Backend::Google::ProtocolMessageReader>(unsigned __int8 *a1)
{
  v8 = a1[240];
  if (v8 <= 3)
  {
    if (a1[240] > 1u)
    {
      if (v8 == 2)
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!a1[240])
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a1[64] = 0;
        a1[88] = 0;
        goto LABEL_31;
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_125;
  }

  if (a1[240] > 5u)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        goto LABEL_82;
      }

      goto LABEL_125;
    }

    if (v8 == 7)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        goto LABEL_125;
      }

LABEL_56:
      detail::lazy_promise<BOOL>::result((v9 + 2));
      v34 = *v33;
      v35 = *(a1 + 17);
      if (v35)
      {
        (*(v35 + 8))();
      }

      if (v34)
      {
        v8 = *(a1 + 58);
        v26 = (a1 + 192);
        v27 = (a1 + 184);
        goto LABEL_92;
      }

      goto LABEL_100;
    }

    v9 = *(a1 + 16);
    if (!v9)
    {
      goto LABEL_125;
    }

LABEL_23:
    detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v9 + 2));
    a1[32] = 0;
    a1[56] = 0;
    if (v14[1].n128_u8[8] == 1)
    {
      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      v15 = *v14;
      *(a1 + 2) = *v14;
      *(a1 + 6) = v14[1].n128_u64[0];
      v14->n128_u64[0] = 0;
      v14->n128_u64[1] = 0;
      v14[1].n128_u64[0] = 0;
      a1[56] = 1;
    }

    *(a1 + 6) = 1;
    v16 = *(a1 + 17);
    if (v16)
    {
      (*(v16 + 8))();
    }

    v17 = *(a1 + 15);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v17);
    }

    goto LABEL_102;
  }

  if (v8 != 4)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      goto LABEL_50;
    }

    goto LABEL_125;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_125;
  }

LABEL_69:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
  v4 = *v39;
  v40 = *(v39 + 8);
  v41 = *(a1 + 17);
  if (v41)
  {
    (*(v41 + 8))();
  }

  if ((v40 & 1) == 0 || HIDWORD(v4))
  {
    goto LABEL_100;
  }

  v8 = v4 + 1;
  v26 = (a1 + 192);
  v27 = (a1 + 184);
  v12 = *(a1 + 56);
  v13 = *(a1 + 57);
LABEL_93:
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  while (1)
  {
    v3 = *v26;
    v2 = *v27;
    v1 = *(a1 + 118) | (a1[238] << 16);
    v10 = a1[242];
    v11 = 1;
LABEL_31:
    *(a1 + 57) = v13;
    *(a1 + 58) = v8;
    *(a1 + 23) = v2;
    *(a1 + 24) = v3;
    *(a1 + 56) = v12;
    *(a1 + 21) = v6;
    *(a1 + 22) = v4;
    *(a1 + 110) = v1;
    a1[222] = BYTE2(v1);
    *(a1 + 20) = v5;
    *(a1 + 54) = v11;
    a1[241] = v10;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 19), a1 + 17);
    v9 = *(a1 + 17);
    *(a1 + 16) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v51 = 1;
      goto LABEL_113;
    }

LABEL_33:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v9 + 2));
    v19 = *v18;
    v20 = *v18 >> 8;
    v21 = *v18 & 0xFFFFFFFF00000000;
    a1[238] = BYTE3(*v18);
    *(a1 + 118) = v20;
    a1[242] = v19;
    v22 = *(a1 + 17);
    if (v22)
    {
      (*(v22 + 8))();
    }

    if (v21 != 0x100000000)
    {
      break;
    }

    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          Backend::Google::ProtocolMessageReader::riceDecompressor(*(a1 + 19), *(a1 + 57), *(a1 + 56), a1 + 17);
          v9 = *(a1 + 17);
          *(a1 + 16) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v51 = 5;
            goto LABEL_113;
          }

LABEL_50:
          detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result((v9 + 2));
          v29 = *(v28 + 16);
          if (v29)
          {
            v31 = *v28;
            v30 = *(v28 + 8);
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = *(a1 + 23);
            v31 = *(a1 + 24) & 0xFFFFFFFFFFFFFF00;
          }

          *(a1 + 25) = v32;
          *(a1 + 26) = v31;
          v42 = *(a1 + 17);
          if (v42)
          {
            (*(v42 + 8))();
          }

          if (!v29)
          {
            goto LABEL_100;
          }

          *(a1 + 12) = v31;
          *(a1 + 13) = v32;
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(*(a1 + 18), (a1 + 96), *(a1 + 58));
          v9 = *(a1 + 17);
          *(a1 + 16) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v51 = 6;
            goto LABEL_113;
          }

LABEL_82:
          detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v9 + 2));
          v15 = std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>((a1 + 64), v43);
          v44 = *(a1 + 17);
          if (v44)
          {
            (*(v44 + 8))(v15);
          }

          v45 = *(a1 + 13);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v45);
          }

          v46 = a1[88];
          v47 = 6;
          if ((v46 & 1) == 0)
          {
            a1[32] = 0;
            a1[56] = 0;
            *(a1 + 6) = 1;
            v47 = 3;
          }

          v27 = (a1 + 200);
          v48 = *(a1 + 25);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v48);
          }

          if (!v46)
          {
            goto LABEL_103;
          }

          v26 = (a1 + 208);
          v8 = *(a1 + 58);
LABEL_92:
          v12 = *(a1 + 56);
          v13 = *(a1 + 57);
          v4 = *(a1 + 22);
          goto LABEL_93;
        }

LABEL_54:
        Backend::Google::ProtocolMessageReader::skipField(*(a1 + 19), a1 + 17);
        v9 = *(a1 + 17);
        *(a1 + 16) = v9;
        if (v9)
        {
          if (*v9)
          {
            v51 = 7;
            goto LABEL_113;
          }

          goto LABEL_56;
        }

LABEL_125:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 4;
        goto LABEL_113;
      }

      goto LABEL_69;
    }

    if (v19 == 1)
    {
      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 2;
        goto LABEL_113;
      }

LABEL_62:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v5 = *v36;
      v37 = *(v36 + 8);
      v38 = *(a1 + 17);
      if (v38)
      {
        (*(v38 + 8))();
      }

      if ((v37 & 1) == 0 || HIDWORD(v5))
      {
        goto LABEL_100;
      }

      v8 = *(a1 + 58);
      v26 = (a1 + 192);
      v27 = (a1 + 184);
      v12 = *(a1 + 56);
      v13 = v5;
      v6 = *(a1 + 21);
      v4 = *(a1 + 22);
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_54;
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 3;
        goto LABEL_113;
      }

LABEL_41:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v6 = *v23;
      v24 = *(v23 + 8);
      v25 = *(a1 + 17);
      if (v25)
      {
        (*(v25 + 8))();
      }

      if ((v24 & 1) == 0 || (v6 - 31) <= 0xFFFFFFFFFFFFFFE2)
      {
        goto LABEL_100;
      }

      v13 = *(a1 + 57);
      v8 = *(a1 + 58);
      v26 = (a1 + 192);
      v27 = (a1 + 184);
      v4 = *(a1 + 22);
      v12 = v6;
      v5 = *(a1 + 20);
    }
  }

  if (HIDWORD(v19))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v56 = v55;
    v57 = *(a1 + 15);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v57);
    }

    if (a1[88] == 1)
    {
      v58 = *(a1 + 8);
      if (v58)
      {
        *(a1 + 9) = v58;
        operator delete(v58);
      }
    }

    *a1 = 0;
    a1[240] = 9;
    _Unwind_Resume(v56);
  }

  if ((v19 & 1) == 0)
  {
LABEL_100:
    a1[32] = 0;
    a1[56] = 0;
    goto LABEL_101;
  }

  if (!*(a1 + 58))
  {
    v53 = operator new(0x30uLL);
    v54 = *(a1 + 18);
    v53[1] = 0;
    v53[2] = 0;
    *v53 = &unk_2838CD668;
    v53[3] = *(a1 + 28);
    v53[4] = 0;
    v53[5] = 0;
    *(a1 + 14) = v53 + 3;
    *(a1 + 15) = v53;
    std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(v54, (a1 + 112), 1);
    v9 = *(a1 + 17);
    *(a1 + 16) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v51 = 8;
LABEL_113:
      a1[240] = v51;
      v9[2] = a1;
      v50 = *(a1 + 16);
LABEL_114:
      v52 = *v50;

      v52(v15);
      return;
    }

    goto LABEL_23;
  }

  a1[32] = 0;
  a1[56] = 0;
  if (a1[88] == 1)
  {
    v15 = *(a1 + 4);
    *(a1 + 2) = v15;
    *(a1 + 6) = *(a1 + 10);
    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *(a1 + 8) = 0;
    a1[56] = 1;
  }

LABEL_101:
  *(a1 + 6) = 1;
LABEL_102:
  v47 = 3;
LABEL_103:
  if (a1[88] == 1)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      *(a1 + 9) = v49;
      operator delete(v49);
    }
  }

  if (v47 == 3)
  {
    *a1 = 0;
    a1[240] = 9;
    v50 = *(a1 + 2);
    goto LABEL_114;
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

{
  v8 = a1[240];
  if (v8 <= 3)
  {
    if (a1[240] > 1u)
    {
      if (v8 == 2)
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!a1[240])
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a1[64] = 0;
        a1[88] = 0;
        goto LABEL_31;
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_125;
  }

  if (a1[240] > 5u)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        goto LABEL_82;
      }

      goto LABEL_125;
    }

    if (v8 == 7)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        goto LABEL_125;
      }

LABEL_56:
      detail::lazy_promise<BOOL>::result((v9 + 2));
      v34 = *v33;
      v35 = *(a1 + 17);
      if (v35)
      {
        (*(v35 + 8))();
      }

      if (v34)
      {
        v8 = *(a1 + 58);
        v26 = (a1 + 192);
        v27 = (a1 + 184);
        goto LABEL_92;
      }

      goto LABEL_100;
    }

    v9 = *(a1 + 16);
    if (!v9)
    {
      goto LABEL_125;
    }

LABEL_23:
    detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v9 + 2));
    a1[32] = 0;
    a1[56] = 0;
    if (v14[1].n128_u8[8] == 1)
    {
      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      v15 = *v14;
      *(a1 + 2) = *v14;
      *(a1 + 6) = v14[1].n128_u64[0];
      v14->n128_u64[0] = 0;
      v14->n128_u64[1] = 0;
      v14[1].n128_u64[0] = 0;
      a1[56] = 1;
    }

    *(a1 + 6) = 1;
    v16 = *(a1 + 17);
    if (v16)
    {
      (*(v16 + 8))();
    }

    v17 = *(a1 + 15);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v17);
    }

    goto LABEL_102;
  }

  if (v8 != 4)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      goto LABEL_50;
    }

    goto LABEL_125;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_125;
  }

LABEL_69:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
  v4 = *v39;
  v40 = *(v39 + 8);
  v41 = *(a1 + 17);
  if (v41)
  {
    (*(v41 + 8))();
  }

  if ((v40 & 1) == 0 || HIDWORD(v4))
  {
    goto LABEL_100;
  }

  v8 = v4 + 1;
  v26 = (a1 + 192);
  v27 = (a1 + 184);
  v12 = *(a1 + 56);
  v13 = *(a1 + 57);
LABEL_93:
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  while (1)
  {
    v3 = *v26;
    v2 = *v27;
    v1 = *(a1 + 118) | (a1[238] << 16);
    v10 = a1[242];
    v11 = 1;
LABEL_31:
    *(a1 + 57) = v13;
    *(a1 + 58) = v8;
    *(a1 + 23) = v2;
    *(a1 + 24) = v3;
    *(a1 + 56) = v12;
    *(a1 + 21) = v6;
    *(a1 + 22) = v4;
    *(a1 + 110) = v1;
    a1[222] = BYTE2(v1);
    *(a1 + 20) = v5;
    *(a1 + 54) = v11;
    a1[241] = v10;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 19), a1 + 17);
    v9 = *(a1 + 17);
    *(a1 + 16) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v51 = 1;
      goto LABEL_113;
    }

LABEL_33:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v9 + 2));
    v19 = *v18;
    v20 = *v18 >> 8;
    v21 = *v18 & 0xFFFFFFFF00000000;
    a1[238] = BYTE3(*v18);
    *(a1 + 118) = v20;
    a1[242] = v19;
    v22 = *(a1 + 17);
    if (v22)
    {
      (*(v22 + 8))();
    }

    if (v21 != 0x100000000)
    {
      break;
    }

    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          Backend::Google::ProtocolMessageReader::riceDecompressor(*(a1 + 19), *(a1 + 57), *(a1 + 56), a1 + 17);
          v9 = *(a1 + 17);
          *(a1 + 16) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v51 = 5;
            goto LABEL_113;
          }

LABEL_50:
          detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result((v9 + 2));
          v29 = *(v28 + 16);
          if (v29)
          {
            v31 = *v28;
            v30 = *(v28 + 8);
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = *(a1 + 23);
            v31 = *(a1 + 24) & 0xFFFFFFFFFFFFFF00;
          }

          *(a1 + 25) = v32;
          *(a1 + 26) = v31;
          v42 = *(a1 + 17);
          if (v42)
          {
            (*(v42 + 8))();
          }

          if (!v29)
          {
            goto LABEL_100;
          }

          *(a1 + 12) = v31;
          *(a1 + 13) = v32;
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(*(a1 + 18), (a1 + 96), *(a1 + 58));
          v9 = *(a1 + 17);
          *(a1 + 16) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v51 = 6;
            goto LABEL_113;
          }

LABEL_82:
          detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v9 + 2));
          v15 = std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>((a1 + 64), v43);
          v44 = *(a1 + 17);
          if (v44)
          {
            (*(v44 + 8))(v15);
          }

          v45 = *(a1 + 13);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v45);
          }

          v46 = a1[88];
          v47 = 6;
          if ((v46 & 1) == 0)
          {
            a1[32] = 0;
            a1[56] = 0;
            *(a1 + 6) = 1;
            v47 = 3;
          }

          v27 = (a1 + 200);
          v48 = *(a1 + 25);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v48);
          }

          if (!v46)
          {
            goto LABEL_103;
          }

          v26 = (a1 + 208);
          v8 = *(a1 + 58);
LABEL_92:
          v12 = *(a1 + 56);
          v13 = *(a1 + 57);
          v4 = *(a1 + 22);
          goto LABEL_93;
        }

LABEL_54:
        Backend::Google::ProtocolMessageReader::skipField(*(a1 + 19), a1 + 17);
        v9 = *(a1 + 17);
        *(a1 + 16) = v9;
        if (v9)
        {
          if (*v9)
          {
            v51 = 7;
            goto LABEL_113;
          }

          goto LABEL_56;
        }

LABEL_125:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 4;
        goto LABEL_113;
      }

      goto LABEL_69;
    }

    if (v19 == 1)
    {
      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 2;
        goto LABEL_113;
      }

LABEL_62:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v5 = *v36;
      v37 = *(v36 + 8);
      v38 = *(a1 + 17);
      if (v38)
      {
        (*(v38 + 8))();
      }

      if ((v37 & 1) == 0 || HIDWORD(v5))
      {
        goto LABEL_100;
      }

      v8 = *(a1 + 58);
      v26 = (a1 + 192);
      v27 = (a1 + 184);
      v12 = *(a1 + 56);
      v13 = v5;
      v6 = *(a1 + 21);
      v4 = *(a1 + 22);
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_54;
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 19), a1 + 17);
      v9 = *(a1 + 17);
      *(a1 + 16) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v51 = 3;
        goto LABEL_113;
      }

LABEL_41:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v6 = *v23;
      v24 = *(v23 + 8);
      v25 = *(a1 + 17);
      if (v25)
      {
        (*(v25 + 8))();
      }

      if ((v24 & 1) == 0 || (v6 - 29) <= 0xFFFFFFFFFFFFFFE4)
      {
        goto LABEL_100;
      }

      v13 = *(a1 + 57);
      v8 = *(a1 + 58);
      v26 = (a1 + 192);
      v27 = (a1 + 184);
      v4 = *(a1 + 22);
      v12 = v6;
      v5 = *(a1 + 20);
    }
  }

  if (HIDWORD(v19))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v56 = v55;
    v57 = *(a1 + 15);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v57);
    }

    if (a1[88] == 1)
    {
      v58 = *(a1 + 8);
      if (v58)
      {
        *(a1 + 9) = v58;
        operator delete(v58);
      }
    }

    *a1 = 0;
    a1[240] = 9;
    _Unwind_Resume(v56);
  }

  if ((v19 & 1) == 0)
  {
LABEL_100:
    a1[32] = 0;
    a1[56] = 0;
    goto LABEL_101;
  }

  if (!*(a1 + 58))
  {
    v53 = operator new(0x30uLL);
    v54 = *(a1 + 18);
    v53[1] = 0;
    v53[2] = 0;
    *v53 = &unk_2838CD668;
    v53[3] = *(a1 + 28);
    v53[4] = 0;
    v53[5] = 0;
    *(a1 + 14) = v53 + 3;
    *(a1 + 15) = v53;
    std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(v54, (a1 + 112), 1);
    v9 = *(a1 + 17);
    *(a1 + 16) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v51 = 8;
LABEL_113:
      a1[240] = v51;
      v9[2] = a1;
      v50 = *(a1 + 16);
LABEL_114:
      v52 = *v50;

      v52(v15);
      return;
    }

    goto LABEL_23;
  }

  a1[32] = 0;
  a1[56] = 0;
  if (a1[88] == 1)
  {
    v15 = *(a1 + 4);
    *(a1 + 2) = v15;
    *(a1 + 6) = *(a1 + 10);
    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *(a1 + 8) = 0;
    a1[56] = 1;
  }

LABEL_101:
  *(a1 + 6) = 1;
LABEL_102:
  v47 = 3;
LABEL_103:
  if (a1[88] == 1)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      *(a1 + 9) = v49;
      operator delete(v49);
    }
  }

  if (v47 == 3)
  {
    *a1 = 0;
    a1[240] = 9;
    v50 = *(a1 + 2);
    goto LABEL_114;
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(std::vector<unsigned int>&)#1}::operator()<Backend::Google::ProtocolMessageReader>(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 <= 4)
  {
    if (*(a1 + 240) <= 1u)
    {
      if (!*(a1 + 240))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 241);
      v6 = *(a1 + 220);
      *(a1 + 238) = *(a1 + 222);
      *(a1 + 236) = v6;
      *(a1 + 242) = v5;
    }

    goto LABEL_15;
  }

  if (*(a1 + 240) <= 6u)
  {
    if (v2 != 5)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        (*(v8 + 8))();
      }

      v9 = *(a1 + 104);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      }

      v4 = *(a1 + 200);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    *(a1 + 200) = *(a1 + 184);
LABEL_15:
    v7 = *(a1 + 136);
    if (v7)
    {
      (*(v7 + 8))();
    }

    goto LABEL_23;
  }

  if (v2 == 7)
  {
    goto LABEL_15;
  }

  if (v2 != 8)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(a1 + 120);
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:sn200100](v4);
LABEL_23:
  if (*(a1 + 88) == 1)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      *(a1 + 72) = v10;
      operator delete(v10);
    }
  }

LABEL_26:
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

{
  v2 = *(a1 + 240);
  if (v2 <= 4)
  {
    if (*(a1 + 240) <= 1u)
    {
      if (!*(a1 + 240))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 241);
      v6 = *(a1 + 220);
      *(a1 + 238) = *(a1 + 222);
      *(a1 + 236) = v6;
      *(a1 + 242) = v5;
    }

    goto LABEL_15;
  }

  if (*(a1 + 240) <= 6u)
  {
    if (v2 != 5)
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        (*(v8 + 8))();
      }

      v9 = *(a1 + 104);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      }

      v4 = *(a1 + 200);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    *(a1 + 200) = *(a1 + 184);
LABEL_15:
    v7 = *(a1 + 136);
    if (v7)
    {
      (*(v7 + 8))();
    }

    goto LABEL_23;
  }

  if (v2 == 7)
  {
    goto LABEL_15;
  }

  if (v2 != 8)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(a1 + 120);
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:sn200100](v4);
LABEL_23:
  if (*(a1 + 88) == 1)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      *(a1 + 72) = v10;
      operator delete(v10);
    }
  }

LABEL_26:
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>(uint64_t a1)
{
  v3 = *(a1 + 160);
  if (v3 == 2)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      if (*(v13 + 24) == 1)
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = *v13;
        *(a1 + 48) = *(v13 + 16);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(a1 + 56) = 1;
      }

      *(a1 + 24) = 1;
      v14 = *(a1 + 128);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 152);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 144);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 96);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 136), (a1 + 120));
    v4 = *(a1 + 120);
    *(a1 + 96) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 160) = 1;
      v4[2] = a1;
      v6 = *(a1 + 96);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 144) = v1;
  v10 = *(a1 + 120);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 112) = v1;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 112) = 0;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
    }

    *(a1 + 152) = v11;
    v12 = *(a1 + 88);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 152);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 144);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 160) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 96);
    v5 = *(a1 + 128);
    *(a1 + 120) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 160) = 2;
        v5[2] = a1;
        v6 = *(a1 + 120);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 160) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v17 = *v6;

  return v17();
}

{
  v3 = *(a1 + 160);
  if (v3 == 2)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      if (*(v13 + 24) == 1)
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = *v13;
        *(a1 + 48) = *(v13 + 16);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(a1 + 56) = 1;
      }

      *(a1 + 24) = 1;
      v14 = *(a1 + 128);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 152);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 144);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 96);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 136), (a1 + 120));
    v4 = *(a1 + 120);
    *(a1 + 96) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 160) = 1;
      v4[2] = a1;
      v6 = *(a1 + 96);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 144) = v1;
  v10 = *(a1 + 120);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 112) = v1;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 112) = 0;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
    }

    *(a1 + 152) = v11;
    v12 = *(a1 + 88);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 152);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 144);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 160) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 96);
    v5 = *(a1 + 128);
    *(a1 + 120) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 160) = 2;
        v5[2] = a1;
        v6 = *(a1 + 120);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 160) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>(uint64_t a1)
{
  if (*(a1 + 160) > 1u)
  {
    if (*(a1 + 160) != 3)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 152);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 144);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 160))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 64);

  operator delete(a1);
}

{
  if (*(a1 + 160) > 1u)
  {
    if (*(a1 + 160) != 3)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 152);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 144);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 160))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 64);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(uint64_t a1)
{
  v3 = *(a1 + 144);
  if (v3 == 2)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v5 + 2));
      *(a1 + 32) = *v13;
      *(a1 + 24) = 1;
      v14 = *(a1 + 112);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 136);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 120), (a1 + 104));
    v4 = *(a1 + 104);
    *(a1 + 80) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 144) = 1;
      v4[2] = a1;
      v6 = *(a1 + 80);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 128) = v1;
  v10 = *(a1 + 104);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 96) = v1;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 96) = 0;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
    }

    *(a1 + 136) = v11;
    v12 = *(a1 + 72);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 136);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 128);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 144) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 80);
    v5 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 144) = 2;
        v5[2] = a1;
        v6 = *(a1 + 104);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 144) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

{
  v3 = *(a1 + 144);
  if (v3 == 2)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v5 + 2));
      *(a1 + 32) = *v13;
      *(a1 + 24) = 1;
      v14 = *(a1 + 112);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 136);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 120), (a1 + 104));
    v4 = *(a1 + 104);
    *(a1 + 80) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 144) = 1;
      v4[2] = a1;
      v6 = *(a1 + 80);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 128) = v1;
  v10 = *(a1 + 104);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 96) = v1;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 96) = 0;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
    }

    *(a1 + 136) = v11;
    v12 = *(a1 + 72);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 136);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 128);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 144) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 80);
    v5 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 144) = 2;
        v5[2] = a1;
        v6 = *(a1 + 104);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 144) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

{
  v3 = *(a1 + 144);
  if (v3 == 2)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v5 + 2));
      *(a1 + 32) = *v13;
      *(a1 + 24) = 1;
      v14 = *(a1 + 112);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 136);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 120), (a1 + 104));
    v4 = *(a1 + 104);
    *(a1 + 80) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 144) = 1;
      v4[2] = a1;
      v6 = *(a1 + 80);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 128) = v1;
  v10 = *(a1 + 104);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 96) = v1;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 96) = 0;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
    }

    *(a1 + 136) = v11;
    v12 = *(a1 + 72);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 136);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 128);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 144) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 80);
    v5 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 144) = 2;
        v5[2] = a1;
        v6 = *(a1 + 104);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 144) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

{
  v3 = *(a1 + 144);
  if (v3 == 2)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v5 + 2));
      *(a1 + 32) = *v13;
      *(a1 + 24) = 1;
      v14 = *(a1 + 112);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 136);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 120), (a1 + 104));
    v4 = *(a1 + 104);
    *(a1 + 80) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 144) = 1;
      v4[2] = a1;
      v6 = *(a1 + 80);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 128) = v1;
  v10 = *(a1 + 104);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 96) = v1;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 96) = 0;
      v11 = a1 + 96;
      *(a1 + 80) = 0;
      *(a1 + 88) = v9;
    }

    *(a1 + 136) = v11;
    v12 = *(a1 + 72);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 136);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 128);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 144) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 80);
    v5 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 144) = 2;
        v5[2] = a1;
        v6 = *(a1 + 104);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 144) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(uint64_t a1)
{
  if (*(a1 + 144) > 1u)
  {
    if (*(a1 + 144) != 3)
    {
      v3 = *(a1 + 112);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 136);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 128);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 144))
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  if (*(a1 + 24) == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 32));
  }

  std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 48);

  operator delete(a1);
}

{
  if (*(a1 + 144) > 1u)
  {
    if (*(a1 + 144) != 3)
    {
      v3 = *(a1 + 112);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 136);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 128);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 144))
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  if (*(a1 + 24) == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 32));
  }

  std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 48);

  operator delete(a1);
}

uint64_t ReadStream::readByte(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
LABEL_14:
    v7 = *(a1 + 48);
    *(a1 + 32) = *(a1 + 56);
    *(a1 + 24) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
LABEL_3:
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    if ((v4 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      *(a1 + 32) = v4 | 0x100000000;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 24) = 1;
    goto LABEL_17;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 24) != 1)
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 2;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_14;
  }

  if (*(*v5 + 64) < *(v5 + 16))
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 1;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_3;
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 1;
LABEL_17:
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = **(a1 + 16);

  return v8();
}

{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
LABEL_14:
    v7 = *(a1 + 48);
    *(a1 + 32) = *(a1 + 56);
    *(a1 + 24) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
LABEL_3:
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    if ((v4 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      *(a1 + 32) = v4 | 0x100000000;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 24) = 1;
    goto LABEL_17;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 24) != 1)
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 2;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_14;
  }

  if (*(*v5 + 64) < *(v5 + 16))
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 1;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_3;
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 1;
LABEL_17:
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = **(a1 + 16);

  return v8();
}

{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
LABEL_14:
    v7 = *(a1 + 48);
    *(a1 + 32) = *(a1 + 56);
    *(a1 + 24) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
LABEL_3:
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    if ((v4 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      *(a1 + 32) = v4 | 0x100000000;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 24) = 1;
    goto LABEL_17;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 24) != 1)
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 2;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_14;
  }

  if (*(*v5 + 64) < *(v5 + 16))
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 1;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_3;
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 1;
LABEL_17:
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = **(a1 + 16);

  return v8();
}

{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
LABEL_14:
    v7 = *(a1 + 48);
    *(a1 + 32) = *(a1 + 56);
    *(a1 + 24) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
LABEL_3:
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    if ((v4 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      *(a1 + 32) = v4 | 0x100000000;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 24) = 1;
    goto LABEL_17;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 24) != 1)
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 2;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_14;
  }

  if (*(*v5 + 64) < *(v5 + 16))
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if ((ReadByteOperation::await_ready((a1 + 40)) & 1) == 0)
    {
      *(a1 + 72) = 1;
      return ReadByteOperation::await_suspend((a1 + 40), a1);
    }

    goto LABEL_3;
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 1;
LABEL_17:
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = **(a1 + 16);

  return v8();
}

{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    goto LABEL_14;
  }

  if (v2 == 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 24) != 1)
  {
    ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
    if (!ReadByteOperation::await_ready((a1 + 40)))
    {
      v6 = 2;
      goto LABEL_21;
    }

LABEL_14:
    v7 = *(a1 + 48);
    *(a1 + 32) = *(a1 + 56);
    *(a1 + 24) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    goto LABEL_17;
  }

  if (*(*v5 + 64) >= *(v5 + 16))
  {
    *(a1 + 32) = 1;
    *(a1 + 24) = 1;
LABEL_17:
    *a1 = 0;
    v8 = **(a1 + 16);

    return v8();
  }

  ByteProvider::readByteOperationForReadStream(*v5, a1 + 40);
  if (ReadByteOperation::await_ready((a1 + 40)))
  {
LABEL_3:
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    if ((v4 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      *(a1 + 32) = v4 | 0x100000000;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 24) = 1;
    goto LABEL_17;
  }

  v6 = 1;
LABEL_21:
  *(a1 + 72) = v6;

  return ReadByteOperation::await_suspend((a1 + 40), a1);
}

void sub_225606B9C(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void ReadStream::readByte(unsigned __int8 *__p)
{
  if (__p[72] > 1u)
  {
    if (__p[72] != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!__p[72])
  {
    goto LABEL_7;
  }

  v2 = *(__p + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

LABEL_7:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

{
  if (__p[72] > 1u)
  {
    if (__p[72] != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!__p[72])
  {
    goto LABEL_7;
  }

  v2 = *(__p + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

LABEL_7:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readByteArray<32ul>(uint64_t a1)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 152);
  if (v5 == 2)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_39:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 1)
  {
    v6 = *(a1 + 72);
    if (!v6)
    {
      goto LABEL_39;
    }

LABEL_10:
    detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v6 + 2));
    v9 = *(v8 + 24);
    if (v9 == 1)
    {
      v10 = *v8;
      v1 = v8[1];
      if (v1)
      {
        atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v2 = v8[2] == 32;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 96) = v1;
    *(a1 + 104) = v10;
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 8))();
    }

    if (v9)
    {
      if (v2)
      {
        v12 = 0;
        while (1)
        {
          *(a1 + 153) = v1;
          *(a1 + 112) = v12;
          ReadStream::readByte(*(a1 + 104), (a1 + 80));
          v6 = *(a1 + 80);
          *(a1 + 72) = v6;
          if (!v6)
          {
            goto LABEL_39;
          }

          if (*v6)
          {
            v7 = 2;
            goto LABEL_23;
          }

LABEL_29:
          detail::lazy_promise<ReadResult<unsigned char>>::result((v6 + 2));
          v1 = *v17;
          v18 = *v17 & 0xFFFFFFFF00000000;
          v19 = *(a1 + 80);
          if (v19)
          {
            (*(v19 + 8))();
          }

          if (v18 != 0x100000000)
          {
            break;
          }

          v20 = *(a1 + 112);
          *(v4 + v20) = v1;
          v12 = v20 + 1;
          if (v12 == 32)
          {
            v21 = v4[1];
            *(a1 + 32) = *v4;
            *(a1 + 48) = v21;
            v22 = 1;
            goto LABEL_35;
          }
        }

        v22 = 0;
        *(a1 + 32) = 0;
LABEL_35:
        *(a1 + 64) = v22;
        *(a1 + 24) = 1;
        v13 = *(a1 + 96);
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
      if (v1)
      {
        v13 = v1;
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:sn200100](v13);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 152) = 3;
    v14 = *(a1 + 16);
    goto LABEL_24;
  }

  Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 88), (a1 + 80));
  v6 = *(a1 + 80);
  *(a1 + 72) = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (!*v6)
  {
    goto LABEL_10;
  }

  v7 = 1;
LABEL_23:
  *(a1 + 152) = v7;
  v6[2] = a1;
  v14 = *(a1 + 72);
LABEL_24:
  v15 = *v14;

  return v15();
}

{
  v4 = (a1 + 120);
  v5 = *(a1 + 152);
  if (v5 == 2)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_39:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 1)
  {
    v6 = *(a1 + 72);
    if (!v6)
    {
      goto LABEL_39;
    }

LABEL_10:
    detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v6 + 2));
    v9 = *(v8 + 24);
    if (v9 == 1)
    {
      v10 = *v8;
      v1 = v8[1];
      if (v1)
      {
        atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v2 = v8[2] == 32;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 96) = v1;
    *(a1 + 104) = v10;
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 8))();
    }

    if (v9)
    {
      if (v2)
      {
        v12 = 0;
        while (1)
        {
          *(a1 + 153) = v1;
          *(a1 + 112) = v12;
          ReadStream::readByte(*(a1 + 104), (a1 + 80));
          v6 = *(a1 + 80);
          *(a1 + 72) = v6;
          if (!v6)
          {
            goto LABEL_39;
          }

          if (*v6)
          {
            v7 = 2;
            goto LABEL_23;
          }

LABEL_29:
          detail::lazy_promise<ReadResult<unsigned char>>::result((v6 + 2));
          v1 = *v17;
          v18 = *v17 & 0xFFFFFFFF00000000;
          v19 = *(a1 + 80);
          if (v19)
          {
            (*(v19 + 8))();
          }

          if (v18 != 0x100000000)
          {
            break;
          }

          v20 = *(a1 + 112);
          *(v4 + v20) = v1;
          v12 = v20 + 1;
          if (v12 == 32)
          {
            v21 = v4[1];
            *(a1 + 32) = *v4;
            *(a1 + 48) = v21;
            v22 = 1;
            goto LABEL_35;
          }
        }

        v22 = 0;
        *(a1 + 32) = 0;
LABEL_35:
        *(a1 + 64) = v22;
        *(a1 + 24) = 1;
        v13 = *(a1 + 96);
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
      if (v1)
      {
        v13 = v1;
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:sn200100](v13);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 152) = 3;
    v14 = *(a1 + 16);
    goto LABEL_24;
  }

  Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 88), (a1 + 80));
  v6 = *(a1 + 80);
  *(a1 + 72) = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (!*v6)
  {
    goto LABEL_10;
  }

  v7 = 1;
LABEL_23:
  *(a1 + 152) = v7;
  v6[2] = a1;
  v14 = *(a1 + 72);
LABEL_24:
  v15 = *v14;

  return v15();
}

{
  v4 = (a1 + 120);
  v5 = *(a1 + 152);
  if (v5 == 2)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_39:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 1)
  {
    v6 = *(a1 + 72);
    if (!v6)
    {
      goto LABEL_39;
    }

LABEL_10:
    detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v6 + 2));
    v9 = *(v8 + 24);
    if (v9 == 1)
    {
      v10 = *v8;
      v1 = v8[1];
      if (v1)
      {
        atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v2 = v8[2] == 32;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 96) = v1;
    *(a1 + 104) = v10;
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 8))();
    }

    if (v9)
    {
      if (v2)
      {
        v12 = 0;
        while (1)
        {
          *(a1 + 153) = v1;
          *(a1 + 112) = v12;
          ReadStream::readByte(*(a1 + 104), (a1 + 80));
          v6 = *(a1 + 80);
          *(a1 + 72) = v6;
          if (!v6)
          {
            goto LABEL_39;
          }

          if (*v6)
          {
            v7 = 2;
            goto LABEL_23;
          }

LABEL_29:
          detail::lazy_promise<ReadResult<unsigned char>>::result((v6 + 2));
          v1 = *v17;
          v18 = *v17 & 0xFFFFFFFF00000000;
          v19 = *(a1 + 80);
          if (v19)
          {
            (*(v19 + 8))();
          }

          if (v18 != 0x100000000)
          {
            break;
          }

          v20 = *(a1 + 112);
          *(v4 + v20) = v1;
          v12 = v20 + 1;
          if (v12 == 32)
          {
            v21 = v4[1];
            *(a1 + 32) = *v4;
            *(a1 + 48) = v21;
            v22 = 1;
            goto LABEL_35;
          }
        }

        v22 = 0;
        *(a1 + 32) = 0;
LABEL_35:
        *(a1 + 64) = v22;
        *(a1 + 24) = 1;
        v13 = *(a1 + 96);
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
      if (v1)
      {
        v13 = v1;
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:sn200100](v13);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 152) = 3;
    v14 = *(a1 + 16);
    goto LABEL_24;
  }

  Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 88), (a1 + 80));
  v6 = *(a1 + 80);
  *(a1 + 72) = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (!*v6)
  {
    goto LABEL_10;
  }

  v7 = 1;
LABEL_23:
  *(a1 + 152) = v7;
  v6[2] = a1;
  v14 = *(a1 + 72);
LABEL_24:
  v15 = *v14;

  return v15();
}

{
  v4 = (a1 + 120);
  v5 = *(a1 + 152);
  if (v5 == 2)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_39:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 1)
  {
    v6 = *(a1 + 72);
    if (!v6)
    {
      goto LABEL_39;
    }

LABEL_10:
    detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v6 + 2));
    v9 = *(v8 + 24);
    if (v9 == 1)
    {
      v10 = *v8;
      v1 = v8[1];
      if (v1)
      {
        atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v2 = v8[2] == 32;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 96) = v1;
    *(a1 + 104) = v10;
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 8))();
    }

    if (v9)
    {
      if (v2)
      {
        v12 = 0;
        while (1)
        {
          *(a1 + 153) = v1;
          *(a1 + 112) = v12;
          ReadStream::readByte(*(a1 + 104), (a1 + 80));
          v6 = *(a1 + 80);
          *(a1 + 72) = v6;
          if (!v6)
          {
            goto LABEL_39;
          }

          if (*v6)
          {
            v7 = 2;
            goto LABEL_23;
          }

LABEL_29:
          detail::lazy_promise<ReadResult<unsigned char>>::result((v6 + 2));
          v1 = *v17;
          v18 = *v17 & 0xFFFFFFFF00000000;
          v19 = *(a1 + 80);
          if (v19)
          {
            (*(v19 + 8))();
          }

          if (v18 != 0x100000000)
          {
            break;
          }

          v20 = *(a1 + 112);
          *(v4 + v20) = v1;
          v12 = v20 + 1;
          if (v12 == 32)
          {
            v21 = v4[1];
            *(a1 + 32) = *v4;
            *(a1 + 48) = v21;
            v22 = 1;
            goto LABEL_35;
          }
        }

        v22 = 0;
        *(a1 + 32) = 0;
LABEL_35:
        *(a1 + 64) = v22;
        *(a1 + 24) = 1;
        v13 = *(a1 + 96);
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
      if (v1)
      {
        v13 = v1;
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:sn200100](v13);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      *(a1 + 24) = 1;
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 152) = 3;
    v14 = *(a1 + 16);
    goto LABEL_24;
  }

  Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 88), (a1 + 80));
  v6 = *(a1 + 80);
  *(a1 + 72) = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (!*v6)
  {
    goto LABEL_10;
  }

  v7 = 1;
LABEL_23:
  *(a1 + 152) = v7;
  v6[2] = a1;
  v14 = *(a1 + 72);
LABEL_24:
  v15 = *v14;

  return v15();
}

void sub_225606E88(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  *v1 = 0;
  *(v1 + 152) = 3;
  _Unwind_Resume(a1);
}

void Backend::Google::ProtocolMessageReader::readByteArray<32ul>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[19].__ptr_) > 1u)
  {
    if (LOBYTE(__p[19].__ptr_) != 3)
    {
      ptr = __p[10].__ptr_;
      if (ptr)
      {
        ptr[1]();
      }

      v4 = __p[12].__ptr_;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }
    }
  }

  else if (LOBYTE(__p[19].__ptr_))
  {
    v2 = __p[10].__ptr_;
    if (v2)
    {
      v2[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

{
  if (LOBYTE(__p[19].__ptr_) > 1u)
  {
    if (LOBYTE(__p[19].__ptr_) != 3)
    {
      ptr = __p[10].__ptr_;
      if (ptr)
      {
        ptr[1]();
      }

      v4 = __p[12].__ptr_;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }
    }
  }

  else if (LOBYTE(__p[19].__ptr_))
  {
    v2 = __p[10].__ptr_;
    if (v2)
    {
      v2[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::HashListsBatchGetResponseParser::parseDuration(uint64_t a1)
{
  v5 = *(a1 + 112);
  if (v5 <= 1)
  {
    if (!*(a1 + 112))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 112);
      goto LABEL_14;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_59:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

  if (v5 != 3)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_59;
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
    v2 = *v21;
    v22 = *(v21 + 8);
    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 8))();
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 115);
    v8 = 1;
    v10 = v2;
    v3 = *(a1 + 80);
    v11 = *(a1 + 88);
    while (1)
    {
      v1 = *(a1 + 108) | (*(a1 + 110) << 16);
      v7 = *(a1 + 116);
      v5 = 1;
LABEL_14:
      *(a1 + 115) = v9 & 1;
      *(a1 + 80) = v3;
      *(a1 + 88) = v11;
      *(a1 + 114) = v8 & 1;
      *(a1 + 104) = v10;
      *(a1 + 100) = v1;
      *(a1 + 102) = BYTE2(v1);
      *(a1 + 113) = v7;
      *(a1 + 96) = v5;
      *(a1 + 72) = v2;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 64), (a1 + 56));
      v6 = *(a1 + 56);
      *(a1 + 48) = v6;
      if (!v6)
      {
        goto LABEL_59;
      }

      if (*v6)
      {
        v31 = 1;
        goto LABEL_55;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v6 + 2));
      v13 = *v12;
      v14 = *v12 >> 8;
      v15 = *v12 & 0xFFFFFFFF00000000;
      *(a1 + 110) = BYTE3(*v12);
      *(a1 + 108) = v14;
      *(a1 + 116) = v13;
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if (v15 != 0x100000000)
      {
        if (HIDWORD(v13))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 112) = 5;
          _Unwind_Resume(v34);
        }

        if (v13)
        {
          if (*(a1 + 115))
          {
            v27 = *(a1 + 88);
          }

          else
          {
            v27 = 0;
          }

          v28 = *(a1 + 104) / 1000000000;
          if (!*(a1 + 114))
          {
            v28 = 0;
          }

          *(a1 + 32) = v28 + v27;
          v29 = 1;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v17 = *(a1 + 64);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 2;
          goto LABEL_55;
        }

LABEL_23:
        detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
        v3 = *v18;
        v19 = *(v18 + 8);
        v20 = *(a1 + 56);
        if (v20)
        {
          (*(v20 + 8))();
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_49;
        }

        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
        v9 = 1;
        v11 = v3;
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 4;
          goto LABEL_55;
        }

LABEL_35:
        detail::lazy_promise<BOOL>::result((v6 + 2));
        v25 = *v24;
        v26 = *(a1 + 56);
        if (v26)
        {
          (*(v26 + 8))();
        }

        if (!v25)
        {
          goto LABEL_49;
        }

        v9 = *(a1 + 115);
        v3 = *(a1 + 80);
        v11 = *(a1 + 88);
        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
      }

      v2 = *(a1 + 72);
    }

    Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
    v6 = *(a1 + 56);
    *(a1 + 48) = v6;
    if (!v6)
    {
      goto LABEL_59;
    }

    if (*v6)
    {
      v31 = 3;
LABEL_55:
      *(a1 + 112) = v31;
      v6[2] = a1;
      v30 = *(a1 + 48);
      goto LABEL_56;
    }
  }

LABEL_49:
  v29 = 0;
  *(a1 + 32) = 0;
LABEL_50:
  *(a1 + 40) = v29;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 112) = 5;
  v30 = *(a1 + 16);
LABEL_56:
  v32 = *v30;

  return v32();
}