void sub_22563C9BC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_group_enter(*(v1 + 16));
  v2 = *(v1 + 200);

  Backend::Google::DatabaseUpdater::initialize(v2);
}

void ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_group_enter(*(v1 + 16));
  v2 = *(v1 + 304);

  Backend::Google::DatabaseUpdater::initialize(v2);
}

void ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_group_enter(*(v1 + 16));
  v2 = *(v1 + 408);

  Backend::Google::DatabaseUpdater::initialize(v2);
}

void SafeBrowsing::Service::registerDatabaseLoadingDispatchGroupBlock(SafeBrowsing::Service *this)
{
  v1 = *(this + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEv_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c79_ZTSKZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEvE3__0_e5_v8__0l;
  block[4] = this;
  dispatch_async(v1, block);
}

void SafeBrowsing::Service::regionCodeDidChange(SafeBrowsing::Service *this)
{
  if (Backend::Google::SSBUtilities::shouldConsultWithTencent(this))
  {
    SafeBrowsing::Service::databaseBaseDirectory(v5);
    v2 = v7;
    if (v7 == 1)
    {
      std::string::basic_string[abi:sn200100]<0>(&__p, "Tencent");
      Platform::stringByAppendingPathComponent(v5, &__p, &v4);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p);
      }

      __p = 0;
      v9 = 0;
      v10 = 0;
      SafeBrowsing::Service::initializeDatabaseManager(this, &v4, &__p, 0x200000001uLL);
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&p_p);
      v3 = *(this + 1);
      __p = MEMORY[0x277D85DD0];
      v9 = 3321888768;
      v10 = ___ZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEv_block_invoke;
      v11 = &__block_descriptor_40_ea8_32c79_ZTSKZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEvE3__0_e5_v8__0l;
      v12 = this;
      dispatch_async(v3, &__p);
      notify_post("com.apple.Safari.SafeBrowsing.DidFinishTencentDatabaseUpdate");
      if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4.__r_.__value_.__l.__data_);
      }

      v2 = v7;
    }

    if ((v2 & 1) != 0 && v6 < 0)
    {
      operator delete(v5[0]);
    }
  }

  else
  {

    notify_post("com.apple.Safari.SafeBrowsing.DidFinishTencentDatabaseUpdate");
  }
}

void sub_22563CD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void SafeBrowsing::Service::remoteConfigurationDidChange(uint64_t *a1, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  SafeBrowsing::Service::databaseBaseDirectory(v28);
  if (v30 == 1)
  {
    if (a2 != 3)
    {
      if (a2 != 2)
      {
        if (a2 != 1)
        {
          goto LABEL_49;
        }

        v25 = a1;
        v5 = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](&__p, v28);
        v6 = a1[25];
        if (v6)
        {
          if (*(v6 + 248))
          {
            v7 = v27;
            if (v27 == 1)
            {
              v33[0] = __p.__r_.__value_.__l.__size_;
              v8 = __p.__r_.__value_.__r.__words[0];
              *(v33 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
              v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              memset(&__p, 0, sizeof(__p));
            }

            else
            {
              v8 = 0;
            }

            v9 = v25;
            v35 = 0;
            v10 = operator new(0x30uLL);
            *v10 = &unk_2838CF290;
            v10[1] = v9;
            *(v10 + 16) = 0;
            *(v10 + 40) = 0;
            if (v7)
            {
              v11 = v33[0];
              v10[2] = v8;
              v10[3] = v11;
              *(v10 + 31) = *(v33 + 7);
              *(v10 + 39) = v2;
              v33[0] = 0;
              *(v33 + 7) = 0;
              *(v10 + 40) = 1;
              v2 = 0;
              v8 = 0;
            }

            v35 = v10;
            std::vector<std::function<void ()(void)>>::push_back[abi:sn200100](a1 + 30, v34);
            v5 = std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](v34);
            if (v7 && v2 < 0)
            {
              operator delete(v8);
            }
          }

          else
          {
            SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0::operator()(&v25);
          }
        }

        if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if ((Backend::Google::SSBUtilities::shouldConsultWithTencent(v5) & 1) == 0)
      {
        goto LABEL_49;
      }

      v25 = a1;
      v5 = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](&__p, v28);
      v12 = a1[38];
      if (v12)
      {
        if (*(v12 + 248))
        {
          v13 = v27;
          if (v27 == 1)
          {
            v32[0] = __p.__r_.__value_.__l.__size_;
            v14 = __p.__r_.__value_.__r.__words[0];
            *(v32 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
            v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            memset(&__p, 0, sizeof(__p));
          }

          else
          {
            v14 = 0;
          }

          v15 = v25;
          v35 = 0;
          v16 = operator new(0x30uLL);
          *v16 = &unk_2838CF2D8;
          v16[1] = v15;
          *(v16 + 16) = 0;
          *(v16 + 40) = 0;
          if (v13)
          {
            v17 = v32[0];
            v16[2] = v14;
            v16[3] = v17;
            *(v16 + 31) = *(v32 + 7);
            *(v16 + 39) = v2;
            v32[0] = 0;
            *(v32 + 7) = 0;
            *(v16 + 40) = 1;
            v14 = 0;
            v2 = 0;
          }

          v35 = v16;
          std::vector<std::function<void ()(void)>>::push_back[abi:sn200100](a1 + 43, v34);
          v5 = std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](v34);
          if (v13 && v2 < 0)
          {
            operator delete(v14);
          }
        }

        else
        {
          SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1::operator()(&v25);
        }
      }

      if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (Backend::Google::SSBUtilities::shouldConsultWithApple(v5))
    {
      v25 = a1;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](&__p, v28);
      v18 = a1[51];
      if (v18)
      {
        if (*(v18 + 248))
        {
          v19 = v27;
          if (v27 == 1)
          {
            v31[0] = __p.__r_.__value_.__l.__size_;
            v20 = __p.__r_.__value_.__r.__words[0];
            *(v31 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
            v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            memset(&__p, 0, sizeof(__p));
          }

          else
          {
            v20 = 0;
          }

          v21 = v25;
          v35 = 0;
          v22 = operator new(0x30uLL);
          *v22 = &unk_2838CF320;
          v22[1] = v21;
          *(v22 + 16) = 0;
          *(v22 + 40) = 0;
          if (v19)
          {
            v23 = v31[0];
            v22[2] = v20;
            v22[3] = v23;
            *(v22 + 31) = *(v31 + 7);
            *(v22 + 39) = v2;
            v31[0] = 0;
            *(v31 + 7) = 0;
            *(v22 + 40) = 1;
            v20 = 0;
            v2 = 0;
          }

          v35 = v22;
          std::vector<std::function<void ()(void)>>::push_back[abi:sn200100](a1 + 56, v34);
          std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](v34);
          if (v19 && v2 < 0)
          {
            operator delete(v20);
          }
        }

        else
        {
          SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2::operator()(&v25);
        }
      }

      if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_49:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22563D154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::vector<std::function<void ()(void)>>::push_back[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = a1[1];
  if (result >= a1[2])
  {
    result = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(a1, a2);
    goto LABEL_5;
  }

  if (result)
  {
    result = std::__function::__value_func<void ()(void)>::__value_func[abi:sn200100](result, a2) + 32;
LABEL_5:
    a1[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

void SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0::operator()(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    std::string::basic_string[abi:sn200100]<0>(__p, "Google");
    Platform::stringByAppendingPathComponent((a1 + 8), __p, &v5);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    SafeBrowsing::Service::initializeDatabaseManager(v2, &v5, __p, 0x100000001uLL);
    v6 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v6);
    notify_post("com.apple.Safari.SafeBrowsing.DidFinishGoogleDatabaseUpdate");
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22563D2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1::operator()(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    std::string::basic_string[abi:sn200100]<0>(__p, "Tencent");
    Platform::stringByAppendingPathComponent((a1 + 8), __p, &v5);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    SafeBrowsing::Service::initializeDatabaseManager(v2, &v5, __p, 0x200000001uLL);
    v6 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v6);
    notify_post("com.apple.Safari.SafeBrowsing.DidFinishTencentDatabaseUpdate");
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22563D3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2::operator()(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    std::string::basic_string[abi:sn200100]<0>(__p, "Apple");
    Platform::stringByAppendingPathComponent((a1 + 8), __p, &v5);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    SafeBrowsing::Service::initializeDatabaseManager(v2, &v5, __p, 0x300000001uLL);
    v6 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v6);
    notify_post("com.apple.Safari.SafeBrowsing.DidFinishAppleDatabaseUpdate");
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22563D4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SafeBrowsing::Service::didLoadDatabases(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 264);
  v6 = *(a2 + 268);
  v7 = SSBOSLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109376;
    v10[1] = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_2255EE000, v7, OS_LOG_TYPE_INFO, "Databases loaded for protection type %d and provider %d", v10, 0xEu);
  }

  if (v5 == 1)
  {
    switch(v6)
    {
      case 3:
        std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 424));
        *(a1 + 424) = *a3;
        *(a1 + 440) = *(a3 + 16);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        dispatch_group_leave(*(a1 + 16));
        v8 = (a1 + 392);
        break;
      case 2:
        std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 320));
        *(a1 + 320) = *a3;
        *(a1 + 336) = *(a3 + 16);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        dispatch_group_leave(*(a1 + 16));
        v8 = (a1 + 288);
        break;
      case 1:
        std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 216));
        *(a1 + 216) = *a3;
        *(a1 + 232) = *(a3 + 16);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        dispatch_group_leave(*(a1 + 16));
        v8 = (a1 + 184);
        break;
      default:
        dispatch_group_leave(*(a1 + 16));
        goto LABEL_12;
    }

    std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](v8, 0);
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::Service::didBeginUpdate(SafeBrowsing::Service *this, Backend::Google::DatabaseUpdater *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 66);
  v4 = *(a2 + 67);
  v5 = SSBOSLogDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p) = 67109376;
    HIDWORD(__p) = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_2255EE000, v5, OS_LOG_TYPE_INFO, "Begin database update for protection type %d and provider %d", &__p, 0xEu);
  }

  if (v3 == 1)
  {
    switch(v4)
    {
      case 3:
        v6 = operator new(0x18uLL);
        std::string::basic_string[abi:sn200100]<0>(&__p, "Updating Apple Databases");
        Platform::Transaction::Transaction(v6, &__p);
        if (v12 < 0)
        {
          operator delete(__p);
        }

        v7 = 400;
        goto LABEL_16;
      case 2:
        v6 = operator new(0x18uLL);
        std::string::basic_string[abi:sn200100]<0>(&__p, "Updating Tencent Databases");
        Platform::Transaction::Transaction(v6, &__p);
        if (v12 < 0)
        {
          operator delete(__p);
        }

        v7 = 296;
        goto LABEL_16;
      case 1:
        v6 = operator new(0x18uLL);
        std::string::basic_string[abi:sn200100]<0>(&__p, "Updating Google Databases");
        Platform::Transaction::Transaction(v6, &__p);
        if (v12 < 0)
        {
          operator delete(__p);
        }

        v7 = 192;
LABEL_16:
        std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((this + v7), v6);
        break;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22563D850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::didFinishUpdate(SafeBrowsing::Service *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 264);
  v6 = SSBOSLogDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109376;
    v14[1] = v5;
    v15 = 1024;
    v16 = HIDWORD(v5);
    _os_log_impl(&dword_2255EE000, v6, OS_LOG_TYPE_DEFAULT, "Finished database update for protection type %d and provider %d", v14, 0xEu);
  }

  if (v5 == 1)
  {
    v7 = HIDWORD(v5) - 1;
    if ((HIDWORD(v5) - 1) <= 2)
    {
      v8 = off_278565220[v7];
      v9 = (a1 + (104 * v7));
      std::vector<Backend::Google::DatabaseInfo>::__vdeallocate(v9 + 27);
      *(v9 + 27) = *a3;
      v9[29] = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      notify_post(v8);
    }

    v10 = *(a1 + 15);
    if (v10)
    {
      if (!xpc_activity_set_state(v10, 5))
      {
        v11 = SSBOSLogService();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          SafeBrowsing::Service::didFinishUpdate();
        }
      }

      v12 = *(a1 + 15);
      *(a1 + 15) = 0;
    }

    SafeBrowsing::Service::registerUpdateActivity(a1, "com.apple.Safari.SafeBrowsing.BrowsingDatabases.Update");
  }

  SafeBrowsing::Service::didAttemptUpdate(a1, v5);
  v13 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::Service::registerUpdateActivity(SafeBrowsing::Service *this, const char *a2)
{
  if (SafeBrowsing::Service::isEnabled(this))
  {
    PollingTimeAndDatabaseConfiguration = SafeBrowsing::Service::nextPollingTimeAndDatabaseConfiguration(this);
    v6 = v5;
    v7 = PollingTimeAndDatabaseConfiguration - std::chrono::system_clock::now().__d_.__rep_;
    v8 = *(this + 65) != *(this + 66);
    SafeBrowsing::Service::dispatchPendingClientInUseMessages(this, PollingTimeAndDatabaseConfiguration);
    v9 = SafeBrowsing::createActivityCriteria(v7, v8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN12SafeBrowsing7Service22registerUpdateActivityEPKc_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c62_ZTSKZN12SafeBrowsing7Service22registerUpdateActivityEPKcE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
    v10[4] = v6;
    v10[5] = this;
    xpc_activity_register(a2, v9, v10);
  }
}

void SafeBrowsing::Service::didAttemptUpdate(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 && (HIDWORD(a2) - 1) <= 2)
  {
    ___ZN12SafeBrowsing7Service16didAttemptUpdateEN7Backend6Google21DatabaseConfigurationE_block_invoke(a1, a1 + (104 * (HIDWORD(a2) - 1)) + 184);
  }
}

void SafeBrowsing::Service::didFailUpdate(SafeBrowsing::Service *a1, uint64_t a2)
{
  v3 = *(a2 + 264);
  v4 = SSBOSLogDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    SafeBrowsing::Service::didFailUpdate(v3, v3, v4);
  }

  if (v3 == 1)
  {
    v5 = *(a1 + 15);
    if (v5)
    {
      if (!xpc_activity_set_state(v5, 5))
      {
        v6 = SSBOSLogService();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          SafeBrowsing::Service::didFinishUpdate();
        }
      }

      v7 = *(a1 + 15);
      *(a1 + 15) = 0;
    }

    SafeBrowsing::Service::registerUpdateActivity(a1, "com.apple.Safari.SafeBrowsing.BrowsingDatabases.Update");
  }

  SafeBrowsing::Service::didAttemptUpdate(a1, v3);
}

void ___ZN12SafeBrowsing7Service16didAttemptUpdateEN7Backend6Google21DatabaseConfigurationE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v8 = v3;
  v9 = *(a2 + 64);
  v4 = v9;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = v4;
  while (v3 != v5)
  {
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = std::__throw_bad_function_call[abi:sn200100]();
      v10 = &v8;
      std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v10);
      _Unwind_Resume(v7);
    }

    (*(*v6 + 48))(v6);
    v3 += 32;
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((a2 + 8), 0);
  v10 = &v8;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v10);
}

void SafeBrowsing::Service::runUpdateActivityOperations(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = [*(a1 + 152) onHighCellularDataPlan];
  if (a3 == 1)
  {
    v8 = v7;
    objc_storeStrong((a1 + 120), a2);
    v9 = +[RemoteConfigurationController sharedController];
    v10 = v9;
    switch(HIDWORD(a3))
    {
      case 1:
        v16 = [v9 googleProviderConfiguration];
        v17 = [v16 providerOff];

        if ((v17 & 1) == 0)
        {
          if (Backend::Google::DeviceIdentificationTokenFetcher::shouldFetchDeviceIdentificationToken(*(a1 + 264)))
          {
            v18 = *(a1 + 264);
            v19 = *(a1 + 8);
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = ___ZN12SafeBrowsing7Service27runUpdateActivityOperationsEPU24objcproto13OS_xpc_object8NSObjectN7Backend6Google21DatabaseConfigurationE_block_invoke;
            v23[3] = &__block_descriptor_44_e5_v8__0l;
            v23[4] = a1;
            v24 = v8;
            Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(v18, v19, v23);
          }

          else
          {
            v20 = [ProxyConfiguration alloc];
            v21 = Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(*(a1 + 264));
            v22 = [(ProxyConfiguration *)v20 initWithDeviceIdentificationToken:v21];

            Backend::Google::DatabaseUpdater::update(*(a1 + 200), v8, v22);
          }
        }

        goto LABEL_14;
      case 2:
        v14 = [v9 tencentProviderConfiguration];
        v15 = [v14 providerOff];

        if (v15)
        {
LABEL_14:

          goto LABEL_15;
        }

        v13 = 304;
        break;
      case 3:
        v11 = [v9 appleProviderConfiguration];
        v12 = [v11 providerOff];

        if (v12)
        {
          goto LABEL_14;
        }

        v13 = 408;
        break;
      default:
        goto LABEL_14;
    }

    Backend::Google::DatabaseUpdater::update(*(a1 + v13), v8, 0);
    goto LABEL_14;
  }

LABEL_15:
}

void ___ZN12SafeBrowsing7Service27runUpdateActivityOperationsEPU24objcproto13OS_xpc_object8NSObjectN7Backend6Google21DatabaseConfigurationE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [ProxyConfiguration alloc];
  v4 = Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(*(v2 + 264));
  v5 = [(ProxyConfiguration *)v3 initWithDeviceIdentificationToken:v4];

  Backend::Google::DatabaseUpdater::update(*(v2 + 200), *(a1 + 40), v5);
}

std::chrono::duration<long long, std::ratio<1, 1000000>>::rep SafeBrowsing::Service::nextPollingTimeAndDatabaseConfiguration(SafeBrowsing::Service *this)
{
  PollingTimeFromDatabases = SafeBrowsing::nextPollingTimeFromDatabases((this + 216));
  if ((v3 & 1) == 0)
  {
    PollingTimeFromDatabases = std::chrono::system_clock::now().__d_.__rep_;
  }

  v4 = PollingTimeFromDatabases;
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(PollingTimeFromDatabases);
  if (shouldConsultWithTencent)
  {
    shouldConsultWithTencent = SafeBrowsing::nextPollingTimeFromDatabases(this + 20);
    if (v6)
    {
      if (shouldConsultWithTencent >= v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      shouldConsultWithTencent = std::chrono::system_clock::now().__d_.__rep_;
    }

    v4 = shouldConsultWithTencent;
  }

LABEL_9:
  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v7 = SafeBrowsing::nextPollingTimeFromDatabases((this + 424));
    if ((v8 & 1) == 0)
    {
      return std::chrono::system_clock::now().__d_.__rep_;
    }

    if (v7 >= v4)
    {
      return v4;
    }

    return v7;
  }

  return v4;
}

uint64_t SafeBrowsing::nextPollingTimeFromDatabases(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *a1;
  if (*a1 == v2)
  {
    return 0;
  }

  for (i = v3 + 7; i != v2; i += 7)
  {
    if (*(v3 + 6) < *(i + 6))
    {
      v3 = i;
    }
  }

  v11 = *v3;
  v5 = *(v3 + 3);
  v12 = *(v3 + 2);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v17 = *(v3 + 80);
  v15 = v7;
  v16 = v8;
  v14 = v6;
  std::vector<Backend::Google::Database::HashSizeBucket>::vector[abi:sn200100](v18, v3 + 88);
  v9 = *(&v15 + 1);
  Backend::Google::DatabaseInfo::~DatabaseInfo(&v11);
  return v9;
}

void sub_22563E0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKc_block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  state = xpc_activity_get_state(v3);
  v6 = state;
  if (state)
  {
    if (state == 2)
    {
      if (!xpc_activity_set_state(v3, 4))
      {
        v7 = SSBOSLogService();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          ___ZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKc_block_invoke_cold_1();
        }
      }

      v8 = *(v4 + 8);
      *&v16 = MEMORY[0x277D85DD0];
      *(&v16 + 1) = 3321888768;
      v17 = ___ZZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      v18 = &__block_descriptor_56_ea8_32c120_ZTSKZZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE__e5_v8__0l;
      v9 = v3;
      v10 = a1[6];
      v19 = v9;
      v20 = v10;
      v21 = v4;
      dispatch_async(v8, &v16);
    }

    else
    {
      v14 = SSBOSLogService();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v16) = 134217984;
        *(&v16 + 4) = v6;
        _os_log_impl(&dword_2255EE000, v14, OS_LOG_TYPE_DEFAULT, "Unhandled activity state %li", &v16, 0xCu);
      }
    }
  }

  else
  {
    v11 = xpc_activity_copy_criteria(v3);

    if (!v11)
    {
      v12.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v13 = SafeBrowsing::createActivityCriteria(a1[5] - v12.__d_.__rep_, 0);
      xpc_activity_set_criteria(v3, v13);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

__n128 __copy_helper_block_ea8_32c71_ZTSKZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void SafeBrowsing::Service::dispatchPendingClientInUseMessages(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 520);
  v4 = *(a1 + 528);
  if (v3 != v4)
  {
    do
    {
      v6 = *v3++;
      SafeBrowsing::Service::sendClientInUseReply(a1, v6, a2);
    }

    while (v3 != v4);
    v4 = *(a1 + 528);
    v3 = *(a1 + 520);
  }

  while (v4 != v3)
  {
    v7 = *--v4;
  }

  *(a1 + 528) = v3;
}

id SafeBrowsing::createActivityCriteria(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = arc4random_uniform(0x3Cu);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], ((a1 & ~(a1 >> 63)) + 1000000 * v5) / 0xF4240);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86330], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], a2 == 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863A0], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], 1800);

  return v4;
}

void ___ZN12SafeBrowsing7Service22registerUpdateActivityEPKc_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (!xpc_activity_set_state(v3, 4))
    {
      v6 = SSBOSLogService();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKc_block_invoke_cold_1();
      }
    }

    v7 = *(v4 + 8);
    *&v12 = MEMORY[0x277D85DD0];
    *(&v12 + 1) = 3321888768;
    v13 = ___ZZN12SafeBrowsing7Service22registerUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v14 = &__block_descriptor_56_ea8_32c111_ZTSKZZN12SafeBrowsing7Service22registerUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE__e5_v8__0l;
    v8 = v3;
    v9 = *(a1 + 32);
    v15 = v8;
    v16 = v9;
    v17 = v4;
    dispatch_async(v7, &v12);
  }

  else
  {
    v10 = SSBOSLogService();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12) = 134217984;
      *(&v12 + 4) = state;
      _os_log_impl(&dword_2255EE000, v10, OS_LOG_TYPE_DEFAULT, "Unhandled activity state %li", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

__n128 __copy_helper_block_ea8_32c62_ZTSKZN12SafeBrowsing7Service22registerUpdateActivityEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void ___ZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEvENK3__0clEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_group_notify(v2, v3, block);
}

void SafeBrowsing::Service::handleForceDeviceIdentificationTokenUpdate(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RemoteConfigurationController sharedController];
  v5 = [v4 googleProviderConfiguration];
  v6 = [v5 proxyOff];

  if (v6)
  {
    reply = xpc_dictionary_create_reply(v3);
    xpc_dictionary_set_BOOL(reply, "forceDeviceIdentificationTokenUpdateKey", 0);
    v8 = xpc_dictionary_get_remote_connection(v3);
    xpc_connection_send_message(v8, reply);
  }

  else
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3321888768;
    v11[2] = ___ZN12SafeBrowsing7Service42handleForceDeviceIdentificationTokenUpdateEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v11[3] = &__block_descriptor_40_ea8_32c116_ZTSKZN12SafeBrowsing7Service42handleForceDeviceIdentificationTokenUpdateEPU24objcproto13OS_xpc_object8NSObjectE3__0_e5_v8__0l;
    v12 = v3;
    Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(v9, v10, v11);
  }
}

void sub_22563E7FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing7Service42handleForceDeviceIdentificationTokenUpdateEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(message, "forceDeviceIdentificationTokenUpdateKey", 1);
  v2 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  xpc_connection_send_message(v2, message);
}

id __copy_helper_block_ea8_32c116_ZTSKZN12SafeBrowsing7Service42handleForceDeviceIdentificationTokenUpdateEPU24objcproto13OS_xpc_object8NSObjectE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void SafeBrowsing::Service::enabledStateDidChange(SafeBrowsing::Service *this)
{
  isEnabled = SafeBrowsing::Service::isEnabled(this);
  v3 = SSBOSLogService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (isEnabled)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_DEFAULT, "Safe Browsing was enabled", v5, 2u);
    }

    SafeBrowsing::Service::registerUpdateActivity(this, "com.apple.Safari.SafeBrowsing.BrowsingDatabases.Update");
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_DEFAULT, "Safe Browsing was disabled", buf, 2u);
    }

    xpc_activity_unregister("com.apple.Safari.SafeBrowsing.BrowsingDatabases.Update");
  }
}

void SafeBrowsing::Service::enabledStateDidChange(SafeBrowsing::Service *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  if ((_MergedGlobals & 1) == 0)
  {
    SafeBrowsing::Service::shared();
  }

  SafeBrowsing::Service::enabledStateDidChange(&unk_280B0EDA0);
}

void SafeBrowsing::Service::main(SafeBrowsing::Service *this)
{
  if ((_MergedGlobals & 1) == 0)
  {
    Platform::OnceConstructedNeverDestroyed<SafeBrowsing::Service>::OnceConstructedNeverDestroyed(&algn_280B0ED91[7]);
    _MergedGlobals = 1;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.Safari.SafeBrowsing.Service", MEMORY[0x277D85CD0], 1uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN12SafeBrowsing7Service4mainEv_block_invoke;
  handler[3] = &__block_descriptor_40_ea8_32c41_ZTSKZN12SafeBrowsing7Service4mainEvE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = &unk_280B0EDA0;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, SafeBrowsing::Service::enabledStateDidChange, @"SafeBrowsingEnabledStateDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  dispatch_main();
}

void ___ZN12SafeBrowsing7Service4mainEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86450])
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3321888768;
    v7[2] = ___ZZN12SafeBrowsing7Service4mainEvENK3__0clEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v7[3] = &__block_descriptor_48_ea8_32c90_ZTSKZZN12SafeBrowsing7Service4mainEvENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE__e5_v8__0l;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void SafeBrowsing::Service::handleNewConnection(uint64_t a1, void *a2)
{
  v6 = a2;
  std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__emplace_unique_key_args<NSObject  {objcproto13OS_xpc_object}* {__strong},NSObject  {objcproto13OS_xpc_object}* const {__strong}&>((a1 + 128), &v6, &v6);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  handler[3] = &__block_descriptor_48_ea8_32c93_ZTSKZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  v3 = v6;
  v5 = v3;
  xpc_connection_set_event_handler(v3, handler);

  xpc_connection_resume(v6);
}

void ___ZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::allocate_shared[abi:sn200100]<Platform::Transaction,std::allocator<Platform::Transaction>,char const(&)[17],0>("Handling Message", &v16);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectENK3__0clES3__block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c108_ZTSKZZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectENK3__0clES3_EUlvE__e5_v8__0l;
  v6 = *(a1 + 40);
  v7 = v3;
  v9 = v16;
  v8 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  v10 = v6;
  v12 = v10;
  v13 = v7;
  v14 = v9;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_async(v5, block);
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  else
  {
    dispatch_async(v5, block);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v17);
  }
}

id __copy_helper_block_ea8_32c93_ZTSKZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectE3__0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = v3;
  *(a1 + 40) = result;
  return result;
}

void SafeBrowsing::Service::handleConnectionEvent(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    SafeBrowsing::Service::handleConnectionError(a1, v6);
  }

  else
  {
    SafeBrowsing::Service::handleConnectionMessage(a1, v5);
  }
}

void SafeBrowsing::Service::handleConnectionError(uint64_t a1, void *a2)
{
  v3 = a2;
  std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__erase_unique<NSObject  {objcproto13OS_xpc_object}* {__strong}>(a1 + 128, &v3);
  Backend::Google::Configuration::cleanupSessionForConnection(a1 + 24, v3);
}

void SafeBrowsing::Service::handleConnectionMessage(void *a1, void *a2)
{
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "message");
  if (uint64 <= 5)
  {
    if (uint64 > 2)
    {
      if (uint64 == 3)
      {
        SafeBrowsing::Service::handleGetServiceStatus(a1, v3);
      }

      else if (uint64 == 4)
      {
        SafeBrowsing::Service::handleCheckFullHashes(a1, v3);
      }

      else
      {
        SafeBrowsing::Service::handleForceLoadRemoteConfigurationFromDisk(uint64, v3);
      }

      goto LABEL_27;
    }

    if (uint64 == 1)
    {
      SafeBrowsing::Service::handleForceDatabaseUpdate(a1);
      goto LABEL_27;
    }

    if (uint64 == 2)
    {
      SafeBrowsing::Service::handleGetDatabases(a1, v3);
      goto LABEL_27;
    }
  }

  else
  {
    if (uint64 <= 8)
    {
      if (uint64 == 6)
      {
        SafeBrowsing::Service::handleForceUpdateRemoteConfigurationFromServer(uint64, v3);
      }

      else if (uint64 == 7)
      {
        SafeBrowsing::Service::handleDeleteAllDatabases(uint64, v3);
      }

      else
      {
        SafeBrowsing::Service::handleClientInUse(a1, v3);
      }

      goto LABEL_27;
    }

    switch(uint64)
    {
      case 9:
        SafeBrowsing::Service::handleFetchCellularDataPlan(a1, v3);
        goto LABEL_27;
      case 0xA:
        SafeBrowsing::Service::handleGetSafeBrowsingEnabledState(uint64, v3);
        goto LABEL_27;
      case 0xB:
        SafeBrowsing::Service::handleForceDeviceIdentificationTokenUpdate(a1, v3);
        goto LABEL_27;
    }
  }

  v5 = SSBOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    SafeBrowsing::Service::handleConnectionMessage();
  }

  v6 = xpc_dictionary_get_remote_connection(v3);
  xpc_connection_cancel(v6);

LABEL_27:
}

void sub_22563F10C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleForceDatabaseUpdate(uint64_t a1)
{
  v2 = +[RemoteConfigurationController sharedController];
  v3 = [v2 googleProviderConfiguration];
  v4 = [v3 providerOff];

  if ((v4 & 1) == 0)
  {
    if (Backend::Google::DeviceIdentificationTokenFetcher::shouldFetchDeviceIdentificationToken(*(a1 + 264)))
    {
      v6 = *(a1 + 264);
      v7 = *(a1 + 8);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = ___ZN12SafeBrowsing7Service25handleForceDatabaseUpdateEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      v16[3] = &__block_descriptor_40_e5_v8__0l;
      v16[4] = a1;
      Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(v6, v7, v16);
    }

    else
    {
      v8 = [ProxyConfiguration alloc];
      v9 = Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(*(a1 + 264));
      v10 = [(ProxyConfiguration *)v8 initWithDeviceIdentificationToken:v9];

      Backend::Google::DatabaseUpdater::update(*(a1 + 200), 2, v10);
    }
  }

  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v5);
  if (shouldConsultWithTencent)
  {
    v12 = [v2 tencentProviderConfiguration];
    v13 = [v12 providerOff];

    if ((v13 & 1) == 0)
    {
      Backend::Google::DatabaseUpdater::update(*(a1 + 304), 2, 0);
    }
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v14 = [v2 appleProviderConfiguration];
    v15 = [v14 providerOff];

    if ((v15 & 1) == 0)
    {
      Backend::Google::DatabaseUpdater::update(*(a1 + 408), 2, 0);
    }
  }
}

void SafeBrowsing::Service::handleGetDatabases(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = v3;
  int64 = xpc_dictionary_get_int64(v3, "protectionType");
  if (EnumTraits::isValidEnum<Backend::Google::ProtectionType>(int64))
  {
    v5 = int64;
  }

  else
  {
    v5 = 1;
  }

  v6 = SSBOSLogDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v20 = v5;
    _os_log_impl(&dword_2255EE000, v6, OS_LOG_TYPE_INFO, "Received GetDatabases message with protection type %d", buf, 8u);
  }

  if (v5 == 1)
  {
    v7 = +[RemoteConfigurationController sharedController];
    v8 = [v7 googleProviderConfiguration];
    v9 = [v8 providerOff];

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 216) == *(a1 + 224);
      DeviceIdentificationToken = Backend::Google::DeviceIdentificationTokenFetcher::shouldFetchDeviceIdentificationToken(*(a1 + 264));
      if (DeviceIdentificationToken)
      {
        Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(*(a1 + 264), *(a1 + 8), &__block_literal_global_58);
      }
    }

    shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(DeviceIdentificationToken);
    if (shouldConsultWithTencent)
    {
      v13 = [v7 tencentProviderConfiguration];
      v14 = [v13 providerOff];

      if ((v14 | v11))
      {
        v11 |= v14 ^ 1;
      }

      else
      {
        v11 = *(a1 + 320) == *(a1 + 328);
      }
    }

    if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
    {
      v15 = [v7 appleProviderConfiguration];
      v16 = [v15 providerOff];

      if ((v16 | v11))
      {
        if (!(v11 & 1 | ((v16 & 1) == 0)))
        {
          goto LABEL_22;
        }

LABEL_20:
        std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::push_back[abi:sn200100]((a1 + 160), &v18);
LABEL_23:

        v3 = v18;
        goto LABEL_24;
      }

      if (*(a1 + 424) == *(a1 + 432))
      {
        goto LABEL_20;
      }
    }

    else if (v11)
    {
      goto LABEL_20;
    }

LABEL_22:
    SafeBrowsing::Service::sendGetDatabasesReply(a1, v3, 1);
    goto LABEL_23;
  }

LABEL_24:

  v17 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::Service::handleGetServiceStatus(void *a1, void *a2)
{
  xdict = a2;
  reply = xpc_dictionary_create_reply(xdict);
  v4 = xpc_array_create(0, 0);
  Platform::Transaction::activeTransactionDescriptions(v22);
  v5 = v22[0];
  v6 = v22[1];
  while (v5 != v6)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v8 = xpc_string_create(v7);
    xpc_array_append_value(v4, v8);

    v5 += 24;
  }

  xpc_dictionary_set_value(reply, "activeTransactions", v4);
  v9 = xpc_array_create(0, 0);
  v10 = a1[16];
  if (v10 != a1 + 17)
  {
    do
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      pid = xpc_connection_get_pid(v10[4]);
      xpc_dictionary_set_int64(v11, "pid", pid);
      v13 = v10[4];
      v14 = xpc_connection_copy_bundle_id();
      if (v14)
      {
        xpc_dictionary_set_string(v11, "bundleIdentifier", v14);
        free(v14);
      }

      xpc_array_append_value(v9, v11);

      v15 = v10[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v10[2];
          v17 = *v16 == v10;
          v10 = v16;
        }

        while (!v17);
      }

      v10 = v16;
    }

    while (v16 != a1 + 17);
  }

  xpc_dictionary_set_value(reply, "connections", v9);
  xpc_dictionary_set_int64(reply, "googleDatabaseUpdaterState", *(a1[25] + 248));
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v18);
  if (shouldConsultWithTencent)
  {
    xpc_dictionary_set_int64(reply, "tencentDatabaseUpdaterState", *(a1[38] + 248));
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    xpc_dictionary_set_int64(reply, "appleDatabaseUpdaterState", *(a1[51] + 248));
  }

  v20 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v20, reply);

  v23 = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v23);
}

void sub_22563F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&a14);

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleCheckFullHashes(uint64_t a1, void *a2)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SSBOSLogFullHash();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Received CheckFullHashes message", buf, 2u);
  }

  v5 = xpc_dictionary_get_value(v3, "requests");
  v6 = v5;
  if (v5 && MEMORY[0x22AA67EF0](v5) == MEMORY[0x277D86440])
  {
    v32 = 0uLL;
    v33 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3321888768;
    v29 = ___ZN12SafeBrowsingL15requestsFromXPCEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v30 = &__block_descriptor_40_ea8_32c82_ZTSKZN12SafeBrowsingL15requestsFromXPCEPU24objcproto13OS_xpc_object8NSObjectE3__0_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    v31 = &v32;
    if (xpc_array_apply(v6, buf))
    {
      v25 = v32;
      v26 = v33;
      v33 = 0;
      v32 = 0uLL;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      LOBYTE(v25) = 0;
    }

    v27 = v7;
    v34 = &v32;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v34);
  }

  else
  {
    LOBYTE(v25) = 0;
    v27 = 0;
  }

  if (v27)
  {
    reply = xpc_dictionary_create_reply(v3);
    v9 = xpc_dictionary_get_remote_connection(v3);
    v10 = (a1 + 504);
    if (!*(a1 + 504))
    {
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashChecker,std::allocator<Backend::Google::FullHashChecker>,Backend::Google::Configuration &,0>((a1 + 24), buf);
      v21 = *buf;
      memset(buf, 0, sizeof(buf));
      v22 = *(a1 + 512);
      *v10 = v21;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*&buf[8]);
        }
      }
    }

    v11 = [ProxyConfiguration alloc];
    v12 = Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(*(a1 + 264));
    v13 = [(ProxyConfiguration *)v11 initWithDeviceIdentificationToken:v12];

    if ((v27 & 1) == 0)
    {
      __break(1u);
    }

    v14 = *v10;
    v23 = v25;
    v24 = v26;
    v26 = 0;
    v25 = 0uLL;
    v15 = *(a1 + 8);
    v16 = xpc_dictionary_get_BOOL(v3, "allowGoogle");
    v17 = v9;
    v18 = reply;
    v35[0] = &unk_2838CF368;
    v35[1] = v17;
    v35[2] = v18;
    v35[3] = v35;
    Backend::Google::FullHashChecker::checkHashes(v14, &v23, v17, v13, v15, v16, v35);
    std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](v35);
    *buf = &v23;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](buf);
  }

  else
  {
    v19 = SSBOSLogFullHash();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2255EE000, v19, OS_LOG_TYPE_INFO, "Cancel xpc connection because there are no requests", buf, 2u);
    }

    v18 = xpc_dictionary_get_remote_connection(v3);
    xpc_connection_cancel(v18);
  }

  if (v27 == 1)
  {
    *buf = &v25;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22563FB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void **a17)
{
  if (a16 == 1)
  {
    a17 = &a13;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&a17);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleForceLoadRemoteConfigurationFromDisk(uint64_t a1, void *a2)
{
  original = a2;
  v2 = +[RemoteConfigurationController sharedController];
  v3 = [v2 forceLoadConfigurationFromDisk];

  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_BOOL(reply, "loadRemoteConfigurationState", v3);
  v5 = xpc_dictionary_get_remote_connection(original);
  xpc_connection_send_message(v5, reply);
}

void sub_22563FCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleForceUpdateRemoteConfigurationFromServer(uint64_t a1, void *a2)
{
  original = a2;
  v2 = +[RemoteConfigurationController sharedController];
  v3 = [v2 forceUpdateConfigurationFromServer];

  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_BOOL(reply, "updateRemoteConfigurationState", v3);
  v5 = xpc_dictionary_get_remote_connection(original);
  xpc_connection_send_message(v5, reply);
}

void sub_22563FDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleDeleteAllDatabases(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  SafeBrowsing::Service::databaseBaseDirectory(__p);
  if (v17)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    if (v16 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v14 = 0;
    v6 = [v3 removeItemAtPath:v5 error:&v14];
    v7 = v14;

    if ((v6 & 1) == 0)
    {
      v8 = SSBOSLogDatabase();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 ssb_privacyPreservingDescription];
        SafeBrowsing::Service::handleDeleteAllDatabases(v9, v18, v8);
      }
    }
  }

  else
  {
    v10 = SSBOSLogDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SafeBrowsing::Service::handleDeleteAllDatabases();
    }

    v6 = 0;
  }

  reply = xpc_dictionary_create_reply(v2);
  xpc_dictionary_set_BOOL(reply, "deleteAllDatabasesState", v6);
  v12 = xpc_dictionary_get_remote_connection(v2);
  xpc_connection_send_message(v12, reply);

  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22563FF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleClientInUse(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SSBOSLogDatabase();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Received ClientInUse message", buf, 2u);
  }

  if (SafeBrowsing::Service::isEnabled(v5))
  {
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN12SafeBrowsing7Service17handleClientInUseEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v9[3] = &unk_278565200;
    v11 = a1;
    v10 = v3;
    dispatch_group_notify(v6, v7, v9);
  }

  else
  {
    v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    SafeBrowsing::Service::sendClientInUseReply(v8.__d_.__rep_, v3, v8.__d_.__rep_ + 3600000000);
  }
}

void SafeBrowsing::Service::handleFetchCellularDataPlan(uint64_t a1, void *a2)
{
  original = a2;
  v3 = [*(a1 + 152) fetchCellularDataPlanSynchronously];
  reply = xpc_dictionary_create_reply(original);
  if ([v3 length])
  {
    xpc_dictionary_set_string(reply, "cellularDataPlan", [v3 UTF8String]);
  }

  v5 = xpc_dictionary_get_remote_connection(original);
  xpc_connection_send_message(v5, reply);
}

void sub_2256401E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::handleGetSafeBrowsingEnabledState(uint64_t a1, void *a2)
{
  xdict = a2;
  reply = xpc_dictionary_create_reply(xdict);
  isEnabled = SafeBrowsing::Service::isEnabled(reply);
  xpc_dictionary_set_BOOL(reply, "safeBrowsingEnabled", isEnabled);
  v4 = +[RemoteConfigurationController sharedController];
  v5 = xpc_dictionary_get_remote_connection(xdict);
  if (v4)
  {
    v6 = [v4 googleProviderConfiguration];

    if (v6)
    {
      v7 = [v4 googleProviderConfiguration];
      xpc_dictionary_set_BOOL(reply, "googleShouldUseV5", [v7 useV5ForConnection:v5]);
    }
  }

  xpc_connection_send_message(v5, reply);
}

void sub_225640314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing7Service25handleForceDatabaseUpdateEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [ProxyConfiguration alloc];
  v3 = Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(*(v1 + 264));
  v4 = [(ProxyConfiguration *)v2 initWithDeviceIdentificationToken:v3];

  Backend::Google::DatabaseUpdater::update(*(v1 + 200), 2, v4);
}

void *std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::push_back[abi:sn200100](void *result, id *a2)
{
  v2 = result;
  v3 = result[1];
  if (v3 >= result[2])
  {
    result = std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__emplace_back_slow_path<NSObject  {objcproto13OS_xpc_object}* const {__strong}&>(result, a2);
    v4 = result;
    goto LABEL_5;
  }

  if (v3)
  {
    result = *a2;
    *v3 = result;
    v4 = v3 + 1;
LABEL_5:
    v2[1] = v4;
    return result;
  }

  __break(1u);
  return result;
}

void SafeBrowsing::Service::sendGetDatabasesReply(void *a1, void *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = xpc_array_create(0, 0);
  v7 = xpc_dictionary_get_remote_connection(v5);
  if (a3 == 1)
  {
    v8 = xpc_dictionary_get_BOOL(v5, "allowGoogle");
    if (v8)
    {
      v10 = a1[27];
      v11 = a1[28];
      while (v10 != v11)
      {
        v12 = SafeBrowsing::databaseDictionary(v10, v9);
        xpc_array_append_value(v6, v12);

        v10 = (v10 + 112);
      }
    }

    shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v8);
    if (shouldConsultWithTencent)
    {
      v15 = a1[40];
      v16 = a1[41];
      while (v15 != v16)
      {
        v17 = SafeBrowsing::databaseDictionary(v15, v14);
        xpc_array_append_value(v6, v17);

        v15 = (v15 + 112);
      }
    }

    if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
    {
      v19 = a1[53];
      v20 = a1[54];
      while (v19 != v20)
      {
        v21 = SafeBrowsing::databaseDictionary(v19, v18);
        xpc_array_append_value(v6, v21);

        v19 = (v19 + 112);
      }
    }
  }

  reply = xpc_dictionary_create_reply(v5);
  xpc_dictionary_set_value(reply, "databases", v6);
  v23 = SSBOSLogDatabase();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v25[0] = 67109120;
    v25[1] = a3;
    _os_log_impl(&dword_2255EE000, v23, OS_LOG_TYPE_INFO, "Send GetDatabases reply with protection type %d", v25, 8u);
  }

  xpc_connection_send_message(v7, reply);

  v24 = *MEMORY[0x277D85DE8];
}

id SafeBrowsing::databaseDictionary(SafeBrowsing *this, const Backend::Google::DatabaseInfo *a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  Backend::Google::ThreatListDescriptor::toString(this, __p);
  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  xpc_dictionary_set_string(v3, "name", v4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = Backend::Google::ThreatListDescriptor::toXPC(this);
  xpc_dictionary_set_value(v3, "threatListDescriptor", v5);

  v6 = *(this + 2);
  if (v6)
  {
    v7 = xpc_shmem_create(*v6, *(v6 + 8));
    xpc_dictionary_set_value(v3, "shmem", v7);
  }

  return v3;
}

void SafeBrowsing::Service::sendClientInUseReply(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "nextMessageTime", a3 / 1000000);
  v6 = xpc_dictionary_get_remote_connection(v4);
  v7 = SSBOSLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2255EE000, v7, OS_LOG_TYPE_INFO, "Send ClientInUse reply", v8, 2u);
  }

  xpc_connection_send_message(v6, reply);
}

void SafeBrowsing::Service::checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUse(SafeBrowsing::Service *a1, void *a2, const char *a3)
{
  v13 = a2;
  v5 = *(*(a1 + 25) + 248);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v13);
  if (shouldConsultWithTencent)
  {
    v5 |= *(*(a1 + 38) + 248);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v5 |= *(*(a1 + 51) + 248);
  }

  if (v5)
  {
    std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::push_back[abi:sn200100](a1 + 20, &v13);
  }

  else
  {
    PollingTimeAndDatabaseConfiguration = SafeBrowsing::Service::nextPollingTimeAndDatabaseConfiguration(a1);
    v9 = v8;
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (PollingTimeAndDatabaseConfiguration >= v10.__d_.__rep_)
    {
      SafeBrowsing::Service::sendClientInUseReply(v10.__d_.__rep_, v13, PollingTimeAndDatabaseConfiguration);
    }

    else
    {
      v11 = *MEMORY[0x277D86238];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3321888768;
      handler[2] = ___ZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeE_block_invoke;
      handler[3] = &__block_descriptor_48_ea8_32c168_ZTSKZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeEE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
      handler[4] = v9;
      handler[5] = a1;
      xpc_activity_register(a3, v11, handler);
      std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::push_back[abi:sn200100](a1 + 65, &v13);
    }
  }
}

void ___ZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeE_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  state = xpc_activity_get_state(v3);
  v6 = state;
  if (state)
  {
    if (state == 2)
    {
      if (!xpc_activity_set_state(v3, 4))
      {
        v7 = SSBOSLogService();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          ___ZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKc_block_invoke_cold_1();
        }
      }

      v8 = *(v4 + 8);
      *&v16 = MEMORY[0x277D85DD0];
      *(&v16 + 1) = 3321888768;
      v17 = ___ZZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeEENK3__0clES3__block_invoke;
      v18 = &__block_descriptor_56_ea8_32c183_ZTSKZZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeEENK3__0clES3_EUlvE__e5_v8__0l;
      v9 = v3;
      v10 = *(a1 + 32);
      v19 = v9;
      v20 = v10;
      v21 = v4;
      dispatch_async(v8, &v16);
    }

    else
    {
      v14 = SSBOSLogService();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v16) = 134217984;
        *(&v16 + 4) = v6;
        _os_log_impl(&dword_2255EE000, v14, OS_LOG_TYPE_DEFAULT, "Unhandled activity state %li", &v16, 0xCu);
      }
    }
  }

  else
  {
    v11 = xpc_activity_copy_criteria(v3);
    v12 = v11;
    if (!v11 || !xpc_dictionary_get_BOOL(v11, *MEMORY[0x277D86230]))
    {
      v13 = SafeBrowsing::createActivityCriteria(0, 1);
      xpc_activity_set_criteria(v3, v13);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

__n128 __copy_helper_block_ea8_32c168_ZTSKZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void SafeBrowsing::Service::~Service(SafeBrowsing::Service *this)
{
  SafeBrowsing::Service::~Service(this);

  operator delete(v1);
}

{
  *this = &unk_2838CDD30;
  v9 = (this + 520);
  std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__destroy_vector::operator()[abi:sn200100](&v9);
  v2 = *(this + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(this + 60);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  v9 = (this + 448);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v9);
  v9 = (this + 424);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v9);
  v4 = *(this + 52);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 50, 0);
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 49, 0);
  v5 = *(this + 47);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v5);
  }

  v9 = (this + 344);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v9);
  v9 = (this + 320);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v9);
  v6 = *(this + 39);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 37, 0);
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 36, 0);
  v7 = *(this + 34);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v9 = (this + 240);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v9);
  v9 = (this + 216);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v9);
  v8 = *(this + 26);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 24, 0);
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 23, 0);
  v9 = (this + 160);
  std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__destroy_vector::operator()[abi:sn200100](&v9);

  std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::destroy(this + 128, *(this + 17));
  Backend::Google::Configuration::~Configuration((this + 24));
}

void std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:sn200100]<std::string const*,std::string const*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::string>::__vallocate[abi:sn200100](result, a4);
    size = v6->__r_.__value_.__l.__size_;
    if (a2 == a3)
    {
      v8 = v6->__r_.__value_.__l.__size_;
    }

    else
    {
      v8 = v6->__r_.__value_.__l.__size_;
      do
      {
        result = std::construct_at[abi:sn200100]<std::string,std::string&,std::string*>(v8, a2);
        a2 = (a2 + 24);
        ++v8;
      }

      while (a2 != a3);
    }

    v6->__r_.__value_.__l.__size_ = v8;
  }

  return result;
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v17 = v8, v18 = &v8[v2], *(&v19 + 1) = &v8[32 * v9], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = std::__function::__value_func<void ()(void)>::__value_func[abi:sn200100](&v8[v2], a2);
  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v10 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v17);
  return v16;
}

void sub_225640E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      v8 = std::__function::__value_func<void ()(void)>::__value_func[abi:sn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Backend::Google::DatabaseInfo>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        Backend::Google::DatabaseInfo::~DatabaseInfo((v3 - 112));
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

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 __copy_helper_block_ea8_32c120_ZTSKZZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c111_ZTSKZZN12SafeBrowsing7Service22registerUpdateActivityEPKcENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEvENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[20];
  v3 = v1[21];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      SafeBrowsing::Service::sendGetDatabasesReply(v1, v4, 1);
    }

    while (v2 != v3);
    v2 = v1[20];
    v3 = v1[21];
  }

  while (v3 != v2)
  {
    v5 = *--v3;
  }

  v1[21] = v2;
}

id __copy_helper_block_ea8_32c90_ZTSKZZN12SafeBrowsing7Service4mainEvENK3__0clEPU24objcproto13OS_xpc_object8NSObjectEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

id __copy_helper_block_ea8_32c108_ZTSKZZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectENK3__0clES3_EUlvE_(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  result = *(a2 + 48);
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c108_ZTSKZZN12SafeBrowsing7Service19handleNewConnectionEPU24objcproto13OS_xpc_object8NSObjectENK3__0clES3_EUlvE_(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(a1 + 40);
}

void *std::allocate_shared[abi:sn200100]<Platform::Transaction,std::allocator<Platform::Transaction>,char const(&)[17],0>@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<Platform::Transaction>::__shared_ptr_emplace[abi:sn200100]<char const(&)[17],std::allocator<Platform::Transaction>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<Platform::Transaction>::__shared_ptr_emplace[abi:sn200100]<char const(&)[17],std::allocator<Platform::Transaction>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD438;
  std::construct_at[abi:sn200100]<Platform::Transaction,char const(&)[17],Platform::Transaction*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<Platform::Transaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:sn200100]<Platform::Transaction,char const(&)[17],Platform::Transaction*>(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    std::string::basic_string[abi:sn200100]<0>(__p, a2);
    Platform::Transaction::Transaction(v2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_225641418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__emplace_back_slow_path<NSObject  {objcproto13OS_xpc_object}* const {__strong}&>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = (v2 >> 3) + 1;
  if (v3 >> 61)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (!v7 || (v8 = std::allocator<Backend::LookupResult>::allocate_at_least[abi:sn200100](a1, v7), v9 = (v8 + v2), v17 = v8, v18 = v9, *(&v19 + 1) = &v8[v10], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  *v9 = *a2;
  *&v19 = v9 + 1;
  v11 = *(a1 + 8);
  v12 = (v9 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<NSObject  {objcproto13OS_xpc_object}* {__strong}>,NSObject  {objcproto13OS_xpc_object}* {__strong}*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<NSObject  {objcproto13OS_xpc_object}* {__strong}>::~__split_buffer(&v17);
  return v16;
}

void sub_22564152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NSObject  {objcproto13OS_xpc_object}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<NSObject  {objcproto13OS_xpc_object}* {__strong}>,NSObject  {objcproto13OS_xpc_object}* {__strong}*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v7 = *v6;
      *v6++ = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v8 = *v5++;
    }
  }
}

uint64_t std::__split_buffer<NSObject  {objcproto13OS_xpc_object}* {__strong}>::~__split_buffer(uint64_t a1)
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

uint64_t ___ZN12SafeBrowsingL15requestsFromXPCEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Backend::Google::FullHashRequest::fromXPC(v4, v11);
  v5 = v12;
  if (v12)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 16))
    {
      v8 = std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest>(v6, v11);
    }

    else
    {
      if (!v7)
      {
        __break(1u);
      }

      Backend::Google::FullHashRequest::FullHashRequest(*(v6 + 8), v11);
      v8 = v7 + 72;
      *(v6 + 8) = v7 + 72;
    }

    *(v6 + 8) = v8;
    if (v12)
    {
      Backend::Google::FullHashRequest::~FullHashRequest(v11);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2256416CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 + 8) = v21;
  if (a19 == 1)
  {
    Backend::Google::FullHashRequest::~FullHashRequest(&a10);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c183_ZTSKZZN12SafeBrowsing7Service58checkInOrRegisterUpdateActivityIfNecessaryDueToClientInUseEPU24objcproto13OS_xpc_object8NSObjectPKcN7Backend6Google14ProtectionTypeEENK3__0clES3_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:sn200100](uint64_t a1)
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

void std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::destroy(a1, *a2);
    std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

std::once_flag::_State_type *Platform::OnceConstructedNeverDestroyed<SafeBrowsing::Service>::OnceConstructedNeverDestroyed(std::once_flag::_State_type *a1)
{
  *a1 = 0;
  v3 = a1;
  if (atomic_load_explicit(a1, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(a1, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<Platform::OnceConstructedNeverDestroyed<SafeBrowsing::Service>::OnceConstructedNeverDestroyed(void)::{lambda(void)#1} &&>>);
  }

  return a1;
}

void std::allocate_shared[abi:sn200100]<Backend::Google::DeviceIdentificationTokenFetcher,std::allocator<Backend::Google::DeviceIdentificationTokenFetcher>,Backend::Google::Configuration &,Backend::Google::SafeBrowsingProvider &,0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xF0uLL);
  std::__shared_ptr_emplace<Backend::Google::DeviceIdentificationTokenFetcher>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration &,Backend::Google::SafeBrowsingProvider &,std::allocator<Backend::Google::DeviceIdentificationTokenFetcher>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a3, v6 + 3, (v6 + 3));
}

void *std::__shared_ptr_emplace<Backend::Google::DeviceIdentificationTokenFetcher>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration &,Backend::Google::SafeBrowsingProvider &,std::allocator<Backend::Google::DeviceIdentificationTokenFetcher>,0>(void *a1, uint64_t a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD470;
  Backend::Google::DeviceIdentificationTokenFetcher::DeviceIdentificationTokenFetcher(a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<Backend::Google::DeviceIdentificationTokenFetcher>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocate_shared[abi:sn200100]<Backend::Google::DatabaseUpdater,std::allocator<Backend::Google::DatabaseUpdater>,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, Backend::Google::Configuration *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, void *a7@<X8>)
{
  v14 = operator new(0x128uLL);
  std::__shared_ptr_emplace<Backend::Google::DatabaseUpdater>::__shared_ptr_emplace[abi:sn200100]<SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,std::allocator<Backend::Google::DatabaseUpdater>,0>(v14, a1, a2, a3, a4, a5, a6);
  *a7 = v14 + 3;
  a7[1] = v14;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a7, v14 + 3, (v14 + 3));
}

void *std::__shared_ptr_emplace<Backend::Google::DatabaseUpdater>::__shared_ptr_emplace[abi:sn200100]<SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,std::allocator<Backend::Google::DatabaseUpdater>,0>(void *a1, uint64_t a2, uint64_t *a3, Backend::Google::Configuration *a4, uint64_t a5, uint64_t a6, void *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD588;
  std::construct_at[abi:sn200100]<Backend::Google::DatabaseUpdater,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,Backend::Google::DatabaseUpdater*>((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void std::__shared_ptr_emplace<Backend::Google::DatabaseUpdater>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:sn200100]<Backend::Google::DatabaseUpdater,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,Backend::Google::DatabaseUpdater*>(uint64_t result, uint64_t a2, uint64_t *a3, Backend::Google::Configuration *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v11 = result;
    v12 = *a3;
    Backend::Google::Configuration::Configuration(&v14, a4);
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
    }

    else
    {
      __p = *a5;
    }

    Backend::Google::DatabaseUpdater::DatabaseUpdater(v11, a2, v12, &v14, &__p, a6, *a7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    Backend::Google::Configuration::~Configuration(&v14);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CF290;
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::~__func(void **__p)
{
  *__p = &unk_2838CF290;
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

char *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2838CF290;
  *(v2 + 1) = v3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((v2 + 16), a1 + 16);
  return v2;
}

std::string *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838CF290;
  *(a2 + 8) = v2;
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((a2 + 16), a1 + 16);
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_0>,void ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CF2D8;
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::~__func(void **__p)
{
  *__p = &unk_2838CF2D8;
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

char *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2838CF2D8;
  *(v2 + 1) = v3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((v2 + 16), a1 + 16);
  return v2;
}

std::string *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838CF2D8;
  *(a2 + 8) = v2;
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((a2 + 16), a1 + 16);
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_1>,void ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CF320;
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::~__func(void **__p)
{
  *__p = &unk_2838CF320;
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

char *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2838CF320;
  *(v2 + 1) = v3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((v2 + 16), a1 + 16);
  return v2;
}

std::string *std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838CF320;
  *(a2 + 8) = v2;
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((a2 + 16), a1 + 16);
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2,std::allocator<SafeBrowsing::Service::remoteConfigurationDidChange(Backend::Google::SafeBrowsingProvider)::$_2>,void ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 40) == 1 && *(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t *std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__emplace_unique_key_args<NSObject  {objcproto13OS_xpc_object}* {__strong},NSObject  {objcproto13OS_xpc_object}* const {__strong}&>(uint64_t **a1, unint64_t *a2, id *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x28uLL);
    v12[1] = a1;
    v12[2] = 1;
    v10[4] = *a3;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v8, v6, v10);
    v12[0] = 0;
    std::unique_ptr<std::__tree_node<NSObject  {objcproto13OS_xpc_object}* {__strong},void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<NSObject  {objcproto13OS_xpc_object}* {__strong},void *>>>>::~unique_ptr[abi:sn200100](v12);
    return v10;
  }

  return v8;
}

uint64_t std::unique_ptr<std::__tree_node<NSObject  {objcproto13OS_xpc_object}* {__strong},void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<NSObject  {objcproto13OS_xpc_object}* {__strong},void *>>>>::~unique_ptr[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::__erase_unique<NSObject  {objcproto13OS_xpc_object}* {__strong}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<NSObject  {objcproto13OS_xpc_object}* {__strong}>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

void std::allocate_shared[abi:sn200100]<Backend::Google::FullHashChecker,std::allocator<Backend::Google::FullHashChecker>,Backend::Google::Configuration &,0>(const Backend::Google::Configuration *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  std::__shared_ptr_emplace<Backend::Google::FullHashChecker>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration &,std::allocator<Backend::Google::FullHashChecker>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a2, v4 + 3, (v4 + 3));
}

void *std::__shared_ptr_emplace<Backend::Google::FullHashChecker>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration &,std::allocator<Backend::Google::FullHashChecker>,0>(void *a1, const Backend::Google::Configuration *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD4E0;
  Backend::Google::FullHashChecker::FullHashChecker((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<Backend::Google::FullHashChecker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__func(id *a1)
{

  operator delete(a1);
}

void *std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2838CF368;
  v2[1] = *(a1 + 8);
  v2[2] = *(a1 + 16);
  return v2;
}

id std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2838CF368;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<SafeBrowsing::Service::handleCheckFullHashes(NSObject  {objcproto13OS_xpc_object}*)::$_0>,void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = *(a1 + 16);
  v6 = xpc_array_create(0, 0);
  if (v3 != v4)
  {
    v7 = v3;
    do
    {
      v10 = *v7;
      v8 = Backend::Google::ThreatListDescriptor::toXPC(&v10);
      xpc_array_append_value(v6, v8);

      ++v7;
    }

    while (v7 != v4);
  }

  xpc_dictionary_set_value(v5, "threatListDescriptors", v6);

  v9 = SSBOSLogFullHash();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_2255EE000, v9, OS_LOG_TYPE_INFO, "Send CheckFullHashes reply", &v10, 2u);
  }

  xpc_connection_send_message(*(a1 + 8), *(a1 + 16));
  if (v3)
  {
    operator delete(v3);
  }
}

void sub_225642978(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *Platform::computeSHA256@<X0>(_DWORD *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = a1[2];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  return CC_SHA256(a1, v5, a2);
}

void Platform::SharedMemory::createFileMapping(int *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (fstat(*a1, &v13))
  {
    v4 = SSBOSLogPlatform();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      v6 = __error();
      Platform::SharedMemory::createFileMapping(v6, v14, v5);
    }
  }

  else
  {
    v7 = mmap(0, v13.st_size, 1, 1, *a1, 0);
    if (v7 != -1)
    {
      v8 = operator new(0x28uLL);
      v8[1] = 0;
      v8[2] = 0;
      *v8 = &unk_2838CD400;
      st_size = v13.st_size;
      v8[3] = v7;
      v8[4] = st_size;
      *a2 = v8 + 3;
      a2[1] = v8;
      goto LABEL_7;
    }

    v4 = SSBOSLogPlatform();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      v12 = __error();
      Platform::SharedMemory::createFileMapping(v12, v14, v11);
    }
  }

  *a2 = 0;
  a2[1] = 0;
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

void *Platform::SharedMemory::SharedMemory(void *this, void *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

void std::__shared_ptr_emplace<Platform::SharedMemory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void OUTLINED_FUNCTION_0_2(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 1024;
  *(a3 + 10) = v4;
}

void sub_225642E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = v17;

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void safeBrowsingEnabledStateChanged(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [SSBLookupContext sharedLookupContext:a3];
  [v5 _setSafeBrowsingEnabledStateNeedsUpdate];
}

void sub_225642F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SSBLookupContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22564314C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

void sub_22564322C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2256432D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_22564337C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_225643424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2256434CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_225643574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_22564361C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2256436C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_22564376C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_225643918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void _ZNSt3__115allocate_sharedB8sn200100IN12SafeBrowsing13LookupContextENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xD8uLL);
  _ZNSt3__120__shared_ptr_emplaceIN12SafeBrowsing13LookupContextENS_9allocatorIS2_EEEC2B8sn200100IJES4_Li0EEES4_DpOT_(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a1, v2 + 3, (v2 + 3));
}

void *_ZNSt3__120__shared_ptr_emplaceIN12SafeBrowsing13LookupContextENS_9allocatorIS2_EEEC2B8sn200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD630;
  SafeBrowsing::LookupContext::LookupContext((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<SafeBrowsing::LookupContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZZ24__SSBLookupContext_init_ENK3__0clEN7Backend6Google21DatabaseConfigurationE_block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 36);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"SSBLookupContextDatabasesDidUpdateNotificationUserInfoProvider";
    if ((v3 - 1) <= 2)
    {
      v3 = *off_278565248[v3 - 1];
    }

    v8[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postNotificationName:@"SSBLookupContextDatabasesDidUpdateNotification" object:WeakRetained userInfo:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_225643D54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_225644098(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

id nsErrorFromReplyErrorCode(std::error_code a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  Platform::xpcErrorCategory();
  v10 = *MEMORY[0x277CCA450];
  v1 = MEMORY[0x277CCACA8];
  std::error_code::message(&__p, &v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v3 = [v1 stringWithUTF8String:p_p];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9.__val_ == 1)
  {
    v5 = 4097;
  }

  else
  {
    if (v9.__val_ != 2)
    {
      goto LABEL_11;
    }

    v5 = 4099;
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:v5 userInfo:v4];
LABEL_11:

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_225644434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22564485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 40) = &a9;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100]((v10 - 40));
  _Unwind_Resume(a1);
}

void SafeBrowsing::BrowsingDatabaseCoordinator::addToDatabases(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  SafeBrowsing::DatabaseCoordinator::addDatabaseInfoToDatabases(a1, a1 + 7, a3);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v5);
  if (shouldConsultWithTencent)
  {
    SafeBrowsing::DatabaseCoordinator::addDatabaseInfoToDatabases(a1, a1 + 10, a3);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {

    SafeBrowsing::DatabaseCoordinator::addDatabaseInfoToDatabases(a1, a1 + 13, a3);
  }
}

uint64_t SafeBrowsing::BrowsingDatabaseCoordinator::databasesAreEmpty(SafeBrowsing::BrowsingDatabaseCoordinator *this, SafeBrowsing::LookupContext *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 8);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(this);
  v6 = v3 == v4;
  if (v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = shouldConsultWithTencent;
  }

  if (shouldConsultWithTencent && !v6)
  {
    v7 = *(this + 10) == *(this + 11);
  }

  shouldConsultWithApple = Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent);
  v9 = shouldConsultWithApple | v7;
  if (shouldConsultWithApple && !v7)
  {
    v9 = *(this + 13) == *(this + 14);
  }

  return v9 & 1;
}

void SafeBrowsing::BrowsingDatabaseCoordinator::clearDatabases(void *a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 3:
      v9 = a1[13];
        ;
      }

      a1[14] = v9;
      break;
    case 2:
      v7 = a1[10];
        ;
      }

      a1[11] = v7;
      break;
    case 1:
      v5 = a1[7];
        ;
      }

      a1[8] = v5;
      break;
  }
}

void SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v9, (a1 + 8));
  v5 = *(&v9 + 1);
  v10 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::__value_func[abi:sn200100](v11, a3);
  v14 = 0;
  v6 = operator new(0x38uLL);
  *v6 = &unk_2838CD940;
  *(v6 + 8) = v10;
  v10 = 0uLL;
  v7 = v12;
  if (v12)
  {
    if (v12 == v11)
    {
      *(v6 + 6) = v6 + 24;
      (*(*v7 + 24))(v7);
    }

    else
    {
      *(v6 + 6) = v12;
      v12 = 0;
    }
  }

  else
  {
    *(v6 + 6) = 0;
  }

  v14 = v6;
  SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(a2, 1, v13);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v13);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v10 + 1));
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225646368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](va1);
  SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0::~$_0(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::BrowsingDatabaseCoordinator::handleGetDatabasesReply(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SSBOSLogDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2255EE000, v5, OS_LOG_TYPE_INFO, "Receive GetDatabases response from safe browsing service", v31, 2u);
  }

  *(a1 + 24) = 0;
  v6 = MEMORY[0x22AA67EF0](v4);
  if (v6 == MEMORY[0x277D86480])
  {
    shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v6);
    Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent);
    *&v33.__val_ = Platform::xpcErrorCode(v4);
    v33.__cat_ = v20;
    if (v33.__val_)
    {
      v21 = SSBOSLogDatabase();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(v31, &v33);
        SafeBrowsing::BrowsingDatabaseCoordinator::handleGetDatabasesReply(v31, buf, v21);
      }
    }

    v22 = *(a1 + 32);
    *v35 = v22;
    *&v35[8] = *(a1 + 40);
    v23 = *&v35[8];
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    v24 = v23;
    while (v22 != v24)
    {
      std::function<void ()(std::error_code)>::operator()(v22, *&v33.__val_, v33.__cat_);
      v22 += 32;
    }

    v36 = v35;
    std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v36);
  }

  else
  {
    v7 = xpc_dictionary_get_value(v4, "databases");
    v8 = v7;
    if (v7)
    {
      memset(v35, 0, sizeof(v35));
      *&v33.__val_ = 0;
      v33.__cat_ = 0;
      v34 = 0;
      memset(buf, 0, sizeof(buf));
      v38 = 0;
      count = xpc_array_get_count(v7);
      if (count)
      {
        v10 = 0;
        while (1)
        {
          v11 = xpc_array_get_value(v8, v10);
          SafeBrowsing::DatabaseCoordinator::databaseInfo(v11, v31);

          if (v32)
          {
            break;
          }

LABEL_18:
          if (count == ++v10)
          {
            goto LABEL_19;
          }
        }

        if (HIDWORD(v31[0].__r_.__value_.__r.__words[1]) == 1)
        {
          v12 = std::vector<Backend::Google::DatabaseInfo>::push_back[abi:sn200100](v35, v31);
        }

        v13 = Backend::Google::SSBUtilities::shouldConsultWithTencent(v12);
        v14 = v32;
        if (v13)
        {
          if ((v32 & 1) == 0)
          {
            goto LABEL_39;
          }

          if (HIDWORD(v31[0].__r_.__value_.__r.__words[1]) != 2)
          {
            goto LABEL_15;
          }

          std::vector<Backend::Google::DatabaseInfo>::push_back[abi:sn200100](&v33, v31);
          v14 = v32;
        }

        if ((v14 & 1) == 0)
        {
LABEL_39:
          __break(1u);
        }

LABEL_15:
        if (HIDWORD(v31[0].__r_.__value_.__r.__words[1]) != 3 || (std::vector<Backend::Google::DatabaseInfo>::push_back[abi:sn200100](buf, v31), (v32 & 1) != 0))
        {
          Backend::Google::DatabaseInfo::~DatabaseInfo(v31);
        }

        goto LABEL_18;
      }

LABEL_19:
      std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 56));
      *(a1 + 56) = *v35;
      *(a1 + 72) = *&v35[16];
      memset(v35, 0, sizeof(v35));
      std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 80));
      *(a1 + 80) = v33;
      *(a1 + 96) = v34;
      v33.__cat_ = 0;
      v34 = 0;
      *&v33.__val_ = 0;
      std::vector<Backend::Google::DatabaseInfo>::__vdeallocate((a1 + 104));
      *(a1 + 104) = *buf;
      *(a1 + 120) = v38;
      v38 = 0;
      memset(buf, 0, sizeof(buf));
      v15 = *(a1 + 32);
      *&v31[0].__r_.__value_.__r.__words[1] = *(a1 + 40);
      size = v31[0].__r_.__value_.__l.__size_;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v17 = size;
      v31[0].__r_.__value_.__r.__words[0] = v15;
      if (v15 != size)
      {
        v18 = std::system_category();
        do
        {
          std::function<void ()(std::error_code)>::operator()(v15, 0, v18);
          v15 += 32;
        }

        while (v15 != v17);
      }

      v36 = v31;
      std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v36);
      v31[0].__r_.__value_.__r.__words[0] = buf;
      std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](v31);
      v31[0].__r_.__value_.__r.__words[0] = &v33;
      std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](v31);
      v31[0].__r_.__value_.__r.__words[0] = v35;
      std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](v31);
    }

    else
    {
      v25 = SSBOSLogDatabase();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_2255EE000, v25, OS_LOG_TYPE_INFO, "Database array obtained from safe browsing service is empty", v31, 2u);
      }

      v31[0] = *(a1 + 32);
      v27 = v31[0].__r_.__value_.__l.__size_;
      v26 = v31[0].__r_.__value_.__r.__words[0];
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v28 = v27;
      if (v26 != v27)
      {
        v29 = std::system_category();
        do
        {
          std::function<void ()(std::error_code)>::operator()(v26, 0, v29);
          v26 += 32;
        }

        while (v26 != v28);
      }

      *v35 = v31;
      std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](v35);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<Backend::Google::DatabaseInfo>::push_back[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Backend::Google::DatabaseInfo>::__emplace_back_slow_path<Backend::Google::DatabaseInfo>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<Backend::Google::DatabaseInfo>>::construct[abi:sn200100]<Backend::Google::DatabaseInfo,Backend::Google::DatabaseInfo,void,0>(a1, *(a1 + 8), a2);
    result = v3 + 112;
    *(a1 + 8) = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

void SafeBrowsing::BrowsingDatabaseCoordinator::handleCheckFullHashesReply(uint64_t a1, int a2, xpc_object_t xdict, uint64_t a4)
{
  v23 = 0x200000000;
  v24 = 0x100000000;
  v22 = 0x400000000;
  v6 = xpc_dictionary_get_array(xdict, "threatListDescriptors");
  v7 = v6;
  if (v6)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3321888768;
    applier[2] = ___ZN12SafeBrowsing27BrowsingDatabaseCoordinator26handleCheckFullHashesReplyERNS_13LookupContextEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEE_block_invoke;
    applier[3] = &__block_descriptor_64_ea8_32c238_ZTSKZN12SafeBrowsing27BrowsingDatabaseCoordinator26handleCheckFullHashesReplyERNS_13LookupContextEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEEE3__0_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    applier[4] = &v24;
    applier[5] = a1;
    applier[6] = &v23;
    applier[7] = &v22;
    xpc_array_apply(v6, applier);
  }

  v8 = v24;
  v9 = operator new(8uLL);
  v18 = v9;
  *v9 = v8;
  v19 = v9 + 1;
  v20 = v9 + 1;
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent((v9 + 1));
  if (shouldConsultWithTencent)
  {
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v18, &v23);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v18, &v22);
  }

  __p = 0;
  __dst = 0;
  v17 = 0;
  v11 = v18;
  v12 = v19 - v18;
  if (v19 != v18)
  {
    std::vector<Backend::LookupResult>::__vallocate[abi:sn200100](&__p, v12 >> 3);
    v13 = __dst;
    memmove(__dst, v11, v12);
    __dst = &v13[v12];
  }

  v14 = std::system_category();
  std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a4, &__p, 0, v14);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

uint64_t ___ZN12SafeBrowsing27BrowsingDatabaseCoordinator26handleCheckFullHashesReplyERNS_13LookupContextEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  Backend::Google::ThreatListDescriptor::fromXPC(v4, v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    v6 = SafeBrowsing::DatabaseCoordinator::fromThreatListDescriptor(v5, v8);
    **(a1 + 32) |= v6;
  }

  result = Backend::Google::SSBUtilities::shouldConsultWithTencent(v6);
  if (result)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v9 == 2)
    {
      result = SafeBrowsing::DatabaseCoordinator::fromThreatListDescriptor(v5, v8);
      **(a1 + 48) |= result;
    }
  }

  result = Backend::Google::SSBUtilities::shouldConsultWithApple(result);
  if (!result)
  {
LABEL_12:

    return 1;
  }

  if (v10)
  {
    if (v9 == 3)
    {
      **(a1 + 56) |= SafeBrowsing::DatabaseCoordinator::fromThreatListDescriptor(v5, v8);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

__n128 __copy_helper_block_ea8_32c238_ZTSKZN12SafeBrowsing27BrowsingDatabaseCoordinator26handleCheckFullHashesReplyERNS_13LookupContextEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void SafeBrowsing::BrowsingDatabaseCoordinator::performURLLookup(uint64_t a1, SafeBrowsing::LookupContext *a2, void *a3, int a4, int a5, uint64_t a6)
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = SSBOSLogDatabase();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2255EE000, v12, OS_LOG_TYPE_INFO, "Perform url lookup in the database", buf, 2u);
  }

  v13 = SSBOSLogDatabase();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    SafeBrowsing::BrowsingDatabaseCoordinator::performURLLookup(v11, v13);
  }

  Backend::Google::CanonicalURL::canonicalizeURL(v11, buf);
  Backend::Google::CanonicalURL::computeHashes(buf, v38);
  v36 = 0uLL;
  v37 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  memset(v30, 0, sizeof(v30));
  std::vector<Backend::Google::DatabaseInfo>::__init_with_size[abi:sn200100]<Backend::Google::DatabaseInfo*,Backend::Google::DatabaseInfo*>(v30, *(a1 + 56), *(a1 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 4));
  SafeBrowsing::DatabaseCoordinator::lookupHashes(v38, v30, *(a1 + 128), a4, a5, v31);
  std::vector<Backend::Google::FullHashRequest>::__vdeallocate(&v36);
  v36 = *v31;
  v37 = v32;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v42 = v31;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v42);
  v42 = v30;
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v42);
  *v31 = 0x100000000;
  std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v33, v31);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v14);
  if (shouldConsultWithTencent)
  {
    memset(v29, 0, sizeof(v29));
    std::vector<Backend::Google::DatabaseInfo>::__init_with_size[abi:sn200100]<Backend::Google::DatabaseInfo*,Backend::Google::DatabaseInfo*>(v29, *(a1 + 80), *(a1 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - *(a1 + 80)) >> 4));
    SafeBrowsing::DatabaseCoordinator::lookupHashes(v38, v29, 0, 0, 0, v31);
    v42 = v29;
    std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v42);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<Backend::Google::FullHashRequest *,Backend::Google::FullHashRequest *,std::back_insert_iterator<std::vector<Backend::Google::FullHashRequest>>>(&v41, *v31, *&v31[8], &v36);
    v42 = 0x200000000;
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v33, &v42);
    v42 = v31;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v42);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    memset(v28, 0, sizeof(v28));
    std::vector<Backend::Google::DatabaseInfo>::__init_with_size[abi:sn200100]<Backend::Google::DatabaseInfo*,Backend::Google::DatabaseInfo*>(v28, *(a1 + 104), *(a1 + 112), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 112) - *(a1 + 104)) >> 4));
    SafeBrowsing::DatabaseCoordinator::lookupHashes(v38, v28, 0, 0, 0, v31);
    v42 = v28;
    std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v42);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<Backend::Google::FullHashRequest *,Backend::Google::FullHashRequest *,std::back_insert_iterator<std::vector<Backend::Google::FullHashRequest>>>(&v41, *v31, *&v31[8], &v36);
    v42 = 0x400000000;
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v33, &v42);
    v42 = v31;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v42);
  }

  if (v36 == *(&v36 + 1))
  {
    v16 = SSBOSLogDatabase();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&dword_2255EE000, v16, OS_LOG_TYPE_INFO, "There are no matches in databases with given url", v31, 2u);
    }

    v17 = SSBOSLogDatabase();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      SafeBrowsing::BrowsingDatabaseCoordinator::performURLLookup(v11, v17);
    }

    __p = 0;
    __dst = 0;
    v27 = 0;
    v18 = v33;
    v19 = v34 - v33;
    if (v34 != v33)
    {
      std::vector<Backend::LookupResult>::__vallocate[abi:sn200100](&__p, v19 >> 3);
      v20 = __dst;
      memmove(__dst, v18, v19);
      __dst = &v20[v19];
    }

    v21 = std::system_category();
    std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a6, &__p, 0, v21);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  else
  {
    v23 = v36;
    v24 = v37;
    v37 = 0;
    v36 = 0uLL;
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v43, a6);
    SafeBrowsing::LookupContext::checkFullHashes(a2, 1, &v23, v43);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v43);
    *v31 = &v23;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](v31);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v33 = &v36;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v33);
  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (*buf)
  {
    v40 = *buf;
    operator delete(*buf);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22564704C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, char *a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  a28 = &a31;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&a28);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::BrowsingDatabaseCoordinator::~BrowsingDatabaseCoordinator(SafeBrowsing::BrowsingDatabaseCoordinator *this)
{
  *this = &unk_2838CDD70;
  v2 = (this + 56);
  v3 = (this + 104);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v3);
  v3 = (this + 80);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v3);
  v3 = v2;
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v3);
  SafeBrowsing::DatabaseCoordinator::~DatabaseCoordinator(this);
}

{
  *this = &unk_2838CDD70;
  v2 = (this + 56);
  v4 = (this + 104);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v4);
  v4 = (this + 80);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v4);
  v4 = v2;
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v4);
  SafeBrowsing::DatabaseCoordinator::~DatabaseCoordinator(this);
  operator delete(v3);
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<Backend::Google::FullHashRequest *,Backend::Google::FullHashRequest *,std::back_insert_iterator<std::vector<Backend::Google::FullHashRequest>>>(uint64_t a1, const Backend::Google::FullHashRequest *a2, const Backend::Google::FullHashRequest *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      if (v7 >= *(a4 + 16))
      {
        v7 = std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest>(a4, v5);
      }

      else
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        Backend::Google::FullHashRequest::FullHashRequest(v7, v5);
        v7 = (v7 + 72);
        *(a4 + 8) = v7;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 72);
    }

    while (v5 != a3);
  }
}

void SafeBrowsing::DatabaseCoordinator::~DatabaseCoordinator(SafeBrowsing::DatabaseCoordinator *this)
{
  *this = &unk_2838CDDC0;
  v3 = (this + 32);
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(void *a1)
{
  *a1 = &unk_2838CD940;
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(void *a1)
{
  *a1 = &unk_2838CD940;
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void *std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v3 = v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v2 = &unk_2838CD940;
  v2[1] = v5;
  v2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::__value_func[abi:sn200100]((v2 + 3), a1 + 24);
  return v3;
}

void sub_225647468(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2838CD940;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::__value_func[abi:sn200100]((a2 + 3), a1 + 24);
}

void sub_2256474EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy[abi:sn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = a1 + 24;
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 56);
    v9 = *(v7 + 64);
    v10 = v8 + 112;
    if (v8 != v9 && v10 != v9)
    {
      do
      {
        if (*(v10 + 48) < *(v8 + 48))
        {
          v8 = v10;
        }

        v10 += 112;
      }

      while (v10 != v9);
    }

    if (v8 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v8 + 48);
    }

    v4 = std::system_category();
    v5 = a1 + 24;
    v6 = v12;
    v3 = 0;
  }

  return std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::operator()(v5, v6, v3, v4);
}

void std::__function::__alloc_func<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::BrowsingDatabaseCoordinator::getLastDatabaseUpdateTime(SafeBrowsing::LookupContext &,std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy[abi:sn200100](uint64_t a1)
{
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t std::function<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7[0] = a3;
  v7[1] = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v8, v7);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return [(NSURL(SSBExtras) *)v6 ssb_hasUserInfo];
}

void sub_225647800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2256478FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

id localizedStringForKey(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

uint64_t Backend::Google::SSBUtilities::isKindOfNSNumber(Backend::Google::SSBUtilities *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t Backend::Google::SSBUtilities::isKindOfNSString(Backend::Google::SSBUtilities *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t Backend::Google::SSBUtilities::isKindOfNSArray(Backend::Google::SSBUtilities *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t Backend::Google::SSBUtilities::isKindOfNSDictionary(Backend::Google::SSBUtilities *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id Backend::Google::SSBUtilities::hexStringAsNSData(Backend::Google::SSBUtilities *this, NSString *a2)
{
  v2 = this;
  v3 = [(Backend::Google::SSBUtilities *)v2 length];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB28] dataWithCapacity:v3 >> 1];
    v10 = 0;
    v5 = 0;
    v8 = 0;
    v6 = [(Backend::Google::SSBUtilities *)v2 UTF8String]+ 1;
    while (v5 < v3)
    {
      *__str = *(v6 - 1);
      v5 += 2;
      v8 = strtoul(__str, 0, 16);
      v6 += 2;
      [v4 appendBytes:&v8 length:1];
    }
  }

  return v4;
}

uint64_t Backend::Google::SSBUtilities::isInternalInstall(Backend::Google::SSBUtilities *this)
{
  if (Backend::Google::SSBUtilities::isInternalInstall(void)::onceToken != -1)
  {
    Backend::Google::SSBUtilities::isInternalInstall();
  }

  return Backend::Google::SSBUtilities::isInternalInstall(void)::isInternalInstall;
}

uint64_t ___ZN7Backend6Google12SSBUtilities17isInternalInstallEv_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  Backend::Google::SSBUtilities::isInternalInstall(void)::isInternalInstall = result;
  return result;
}

id Backend::Google::SSBUtilities::currentCountryCode(Backend::Google::SSBUtilities *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = SSBOSLogPlatform();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      Backend::Google::SSBUtilities::currentCountryCode(v5, v8, v4);
    }

    v3 = 0;
  }

  else
  {
    if ([v1 length] == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = [v1 length] - 2;
    }

    v3 = [v1 substringFromIndex:v2];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

BOOL Backend::Google::SSBUtilities::hasWebBrowserEntitlement(void *a1)
{
  v1 = a1;
  v2 = xpc_connection_copy_entitlement_value();
  v3 = v2;
  if (v2)
  {
    isSafari = MEMORY[0x22AA67EF0](v2) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v3);
  }

  else
  {
    isSafari = Backend::Google::SSBUtilities::isSafari();
  }

  return isSafari;
}

BOOL Backend::Google::SSBUtilities::isSafari()
{
  v0 = xpc_connection_copy_entitlement_value();
  v1 = v0;
  v2 = 0;
  if (v0)
  {
    if (MEMORY[0x22AA67EF0](v0) == MEMORY[0x277D864C0])
    {
      string_ptr = xpc_string_get_string_ptr(v1);
      if (!strcmp(string_ptr, "com.apple.mobilesafari") || !strcmp(string_ptr, "com.apple.ssbutil"))
      {
        v2 = 1;
      }
    }
  }

  return v2;
}

uint64_t Backend::Google::SSBUtilities::shouldConsultWithTencent(Backend::Google::SSBUtilities *this)
{
  if (Backend::Google::SSBUtilities::shouldConsultWithTencent(void)::onceToken != -1)
  {
    Backend::Google::SSBUtilities::shouldConsultWithTencent();
  }

  return Backend::Google::SSBUtilities::shouldConsultWithTencent(void)::shouldConsultWithTencent;
}

void ___ZN7Backend6Google12SSBUtilities24shouldConsultWithTencentEv_block_invoke(Backend::Google::SSBUtilities *a1)
{
  Backend::Google::SSBUtilities::shouldConsultWithTencent(void)::shouldConsultWithTencent = ___ZN7Backend6Google12SSBUtilities24shouldConsultWithTencentEv_block_invoke_2(a1);
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *MEMORY[0x277CBE620];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN7Backend6Google12SSBUtilities24shouldConsultWithTencentEv_block_invoke_3;
  v4[3] = &unk_278565400;
  v5 = &__block_literal_global_24;
  v3 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
}

uint64_t ___ZN7Backend6Google12SSBUtilities24shouldConsultWithTencentEv_block_invoke_2(Backend::Google::SSBUtilities *a1)
{
  if (Backend::Google::SSBUtilities::isInternalInstall(void)::onceToken != -1)
  {
    Backend::Google::SSBUtilities::isInternalInstall();
  }

  if (Backend::Google::SSBUtilities::isInternalInstall(void)::isInternalInstall == 1)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"DebugSafeBrowsingShouldConsultWithTencent"];

    if (v2)
    {
      return 1;
    }
  }

  v4 = Backend::Google::SSBUtilities::currentCountryCode(a1);
  if ([v4 isEqualToString:@"CN"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4 isEqualToString:@"HK"];
  }

  return v3;
}

uint64_t ___ZN7Backend6Google12SSBUtilities24shouldConsultWithTencentEv_block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (Backend::Google::SSBUtilities::shouldConsultWithTencent(void)::shouldConsultWithTencent != result)
  {
    Backend::Google::SSBUtilities::shouldConsultWithTencent(void)::shouldConsultWithTencent = result;

    return notify_post("com.apple.Safari.SafeBrowsing.RegionCodeDidChange");
  }

  return result;
}

void Backend::Google::SSBUtilities::reportActivity(Backend::Google::SSBUtilities *this)
{
  v1 = nw_activity_create();
  nw_activity_activate();
  nw_activity_complete_with_reason();
}

char **Backend::Google::ThreatListDescriptor::toV5Name@<X0>(Backend::Google::ThreatListDescriptor *this@<X0>, char **a2@<X8>)
{
  v4 = *this - 1;
  if (v4 > 0xF)
  {
    v5 = &unk_2256583B1;
  }

  else
  {
    v5 = off_278565420[v4];
  }

  return std::string::basic_string[abi:sn200100]<0>(a2, v5);
}

void *Backend::Google::ThreatListDescriptor::toString@<X0>(Backend::Google::ThreatListDescriptor *this@<X0>, void *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:sn200100](&v20);
  v4 = *this - 2;
  if (v4 > 0xE)
  {
    v5 = "malware";
  }

  else
  {
    v5 = off_2785654A0[v4];
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&v20, v5, v6);
  v25 = 44;
  std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&v20, &v25, 1);
  v7 = *(this + 1) - 2;
  if (v7 > 5)
  {
    v8 = "windows";
  }

  else
  {
    v8 = off_278565518[v7];
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&v20, v8, v9);
  v25 = 44;
  std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&v20, &v25, 1);
  v10 = *(this + 2);
  v11 = "url_expression";
  if (v10 == 2)
  {
    v11 = "binary_digest";
  }

  if (v10 == 3)
  {
    v12 = "ip_range";
  }

  else
  {
    v12 = v11;
  }

  v13 = strlen(v12);
  std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&v20, v12, v13);
  result = std::stringbuf::view[abi:sn200100](&v21);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v16 = result;
  v17 = v15;
  if (v15 > 0x16)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    result = operator new(v18);
    a2[1] = v17;
    a2[2] = v18 | 0x8000000000000000;
    *a2 = result;
    a2 = result;
  }

  else
  {
    *(a2 + 23) = v15;
  }

  v19 = a2 + v17;
  if (a2 <= v16 && v19 > v16)
  {
    __break(1u);
  }

  else
  {
    if (v17)
    {
      memmove(a2, v16, v17);
    }

    *v19 = 0;
    v20 = *MEMORY[0x277D82828];
    *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
    v21 = MEMORY[0x277D82878] + 16;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    v21 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v22);
    std::ostream::~ostream();
    return MEMORY[0x22AA67400](&v24);
  }

  return result;
}

void sub_225648D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x22AA67400](&a23);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:sn200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:sn200100]((a1 + 1), 16);
  return a1;
}

void sub_225648EBC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AA67400](v1);
  _Unwind_Resume(a1);
}

uint64_t Backend::Google::operator<(int *a1, int *a2)
{
  v4[0] = a1;
  v4[1] = a1 + 1;
  v4[2] = a1 + 2;
  v3[0] = a2;
  v3[1] = a2 + 1;
  v3[2] = a2 + 2;
  return (std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatType const&,Backend::Google::PlatformType const&,Backend::Google::ThreatEntryType const&,Backend::Google::ThreatType const&,Backend::Google::PlatformType const&,Backend::Google::ThreatEntryType const&,0ul,1ul,2ul>(v4, v3) >> 7) & 1;
}

id Backend::Google::ThreatListDescriptor::toXPC(Backend::Google::ThreatListDescriptor *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "threatType", *this);
  xpc_dictionary_set_uint64(v2, "platformType", *(this + 1));
  xpc_dictionary_set_uint64(v2, "threatEntryType", *(this + 2));
  xpc_dictionary_set_uint64(v2, "safeBrowsingProvider", *(this + 3));

  return v2;
}

void Backend::Google::ThreatListDescriptor::fromXPC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    *a2 = 0;
    a2[16] = 0;
    goto LABEL_10;
  }

  if ((Backend::Google::getEnumValue<Backend::Google::ThreatType>(v3, "threatType", &v7) & 1) == 0 || !Backend::Google::getEnumValue<Backend::Google::PlatformType>(v4, "platformType", &v7 + 1) || !Backend::Google::getEnumValue<Backend::Google::ThreatEntryType>(v4, "threatEntryType", &v7 + 2))
  {
    goto LABEL_7;
  }

  v5 = xpc_dictionary_get_value(v4, "safeBrowsingProvider");

  if (!v5)
  {
    HIDWORD(v7) = 1;
    goto LABEL_12;
  }

  if (Backend::Google::getEnumValue<Backend::Google::SafeBrowsingProvider>(v4, "safeBrowsingProvider", &v7 + 3))
  {
LABEL_12:
    *a2 = v7;
    v6 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
  *a2 = 0;
LABEL_8:
  a2[16] = v6;
LABEL_10:
}

uint64_t Backend::Google::getEnumValue<Backend::Google::ThreatType>(void *a1, const char *a2, unsigned int *a3)
{
  v4 = xpc_dictionary_get_value(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x22AA67EF0](v4) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(v5);
    *a3 = value;
    v6 = EnumTraits::isValidEnum<Backend::Google::ThreatType>(value);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL Backend::Google::getEnumValue<Backend::Google::PlatformType>(void *a1, const char *a2, int *a3)
{
  v4 = xpc_dictionary_get_value(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x22AA67EF0](v4) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(v5);
    *a3 = value;
    v6 = EnumTraits::isValidEnum<Backend::Google::PlatformType>(value);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL Backend::Google::getEnumValue<Backend::Google::ThreatEntryType>(void *a1, const char *a2, int *a3)
{
  v4 = xpc_dictionary_get_value(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x22AA67EF0](v4) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(v5);
    *a3 = value;
    v6 = EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(value);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL Backend::Google::getEnumValue<Backend::Google::SafeBrowsingProvider>(void *a1, const char *a2, int *a3)
{
  v4 = xpc_dictionary_get_value(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x22AA67EF0](v4) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(v5);
    *a3 = value;
    v6 = EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(value);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatType const&,Backend::Google::PlatformType const&,Backend::Google::ThreatEntryType const&,Backend::Google::ThreatType const&,Backend::Google::PlatformType const&,Backend::Google::ThreatEntryType const&,0ul,1ul,2ul>(int **a1, int **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = *a1[1];
    v7 = *a2[1];
    v8 = v6 == v7;
    v5 = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v8)
    {
      v9 = *a1[2];
      v10 = *a2[2];
      v11 = v9 == v10;
      if (v9 < v10)
      {
        LODWORD(v5) = -1;
      }

      else
      {
        LODWORD(v5) = 1;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t std::stringbuf::basic_stringbuf[abi:sn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AA673C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:sn200100](a1);
  return a1;
}

void sub_225649540(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:sn200100](uint64_t a1)
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
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) == 0)
  {
    return;
  }

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
    if (v8 < 0)
    {
LABEL_19:
      __break(1u);
      return;
    }
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

void *std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA672A0](v13, a1);
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

    if (!std::__pad_and_output[abi:sn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AA672B0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:sn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
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

void sub_2256499A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 96);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 48);
    if (v4 < v5)
    {
      *(a1 + 88) = v5;
      v4 = v5;
    }

    result = *(a1 + 40);
    if ((v4 - result) < 0)
    {
LABEL_9:
      __break(1u);
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return 0;
    }

    result = *(a1 + 16);
    if (*(a1 + 32) - result < 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void Backend::xpcConnectionClientIdentifierFromConnection(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a1;
  v3 = xpc_connection_copy_entitlement_value();
  v4 = v3;
  if (v3 && MEMORY[0x22AA67EF0](v3) == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    length = xpc_string_get_length(v4);
    v8 = operator new(0x18uLL);
    v5 = v8;
    if (!string_ptr && length)
    {
      goto LABEL_22;
    }

    if (length >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (length > 0x16)
    {
      v9 = (length | 7) == 0x17 ? 25 : (length | 7) + 1;
      v8 = operator new(v9);
      v5[1] = length;
      v5[2] = v9 | 0x8000000000000000;
      *v5 = v8;
    }

    else
    {
      v8[23] = length;
    }

    v10 = &v8[length];
    if (v8 <= string_ptr && v10 > string_ptr)
    {
LABEL_22:
      __break(1u);
      return;
    }

    if (length)
    {
      memmove(v8, string_ptr, length);
    }

    *v10 = 0;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

char **Backend::xpcConnectionClientStringFromIdentifier@<X0>(uint64_t **a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      v5 = *(v4 + 23);
      if (v5 != 17)
      {
        if (v5 != 22)
        {
          goto LABEL_31;
        }

        v6 = *v4;
        v7 = v4[1];
        v8 = *(v4 + 14);
        v9 = v6 == 0x6C7070612E6D6F63 && v7 == 0x656C69626F6D2E65;
        if (!v9 || v8 != 0x697261666173656CLL)
        {
          goto LABEL_31;
        }

LABEL_33:
        v18 = "Safari";
        return std::string::basic_string[abi:sn200100]<0>(a2, v18);
      }

LABEL_24:
      v13 = *v4;
      v14 = v4[1];
      v15 = *(v4 + 16);
      if (v13 != 0x6C7070612E6D6F63 || v14 != 0x6974756273732E65 || v15 != 108)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (v4[1] == 22)
    {
      v11 = **v4 == 0x6C7070612E6D6F63 && *(*v4 + 8) == 0x656C69626F6D2E65;
      if (v11 && *(*v4 + 14) == 0x697261666173656CLL)
      {
        goto LABEL_33;
      }
    }

    if (v4[1] == 17)
    {
      v4 = *v4;
      goto LABEL_24;
    }
  }

LABEL_31:
  v18 = "ThirdParty";
  return std::string::basic_string[abi:sn200100]<0>(a2, v18);
}

uint64_t Backend::xpcConnectionClientIsSafari(uint64_t **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 + 23) < 0)
  {
    if (v1[1] == 22)
    {
      v8 = **v1 == 0x6C7070612E6D6F63 && *(*v1 + 8) == 0x656C69626F6D2E65;
      if (v8 && *(*v1 + 14) == 0x697261666173656CLL)
      {
        return 1;
      }
    }

    if (v1[1] != 17)
    {
      return 0;
    }

    v1 = *v1;
LABEL_21:
    v10 = *v1;
    v11 = v1[1];
    v12 = *(v1 + 16);
    return v10 == 0x6C7070612E6D6F63 && v11 == 0x6974756273732E65 && v12 == 108;
  }

  v2 = *(v1 + 23);
  if (v2 == 17)
  {
    goto LABEL_21;
  }

  if (v2 != 22)
  {
    return 0;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 14);
  return v3 == 0x6C7070612E6D6F63 && v4 == 0x656C69626F6D2E65 && v5 == 0x697261666173656CLL;
}

id Backend::xpcConnectionClientAuditTokenDataFromConnection(void *a1)
{
  v1 = a1;
  xpc_connection_get_audit_token();
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:32];

  return v2;
}

uint64_t Platform::Transaction::Transaction(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  MEMORY[0x22AA67F50]();
  if ((_MergedGlobals_0 & 1) == 0)
  {
    Platform::Transaction::Transaction();
  }

  std::mutex::lock(&stru_280B0EFD0);
  v5 = a1;
  std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::__emplace_unique_key_args<Platform::Transaction *,Platform::Transaction *>(&unk_280B0F010, &v5, &v5);
  std::mutex::unlock(&stru_280B0EFD0);
  return a1;
}

void Platform::Transaction::~Transaction(void **this)
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    Platform::Transaction::Transaction();
  }

  std::mutex::lock(&stru_280B0EFD0);
  v2 = this;
  std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::__erase_unique<Platform::Transaction *>(qword_280B0F010, &v2);
  std::mutex::unlock(&stru_280B0EFD0);
  MEMORY[0x22AA67F60]();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Platform::Transaction::activeTransactionDescriptions(uint64_t *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if ((_MergedGlobals_0 & 1) == 0)
  {
    Platform::Transaction::Transaction();
  }

  std::mutex::lock(&stru_280B0EFD0);
  for (i = qword_280B0F020; i; i = *i)
  {
    std::vector<std::string>::push_back[abi:sn200100](a1, *(i + 16));
  }

  std::mutex::unlock(&stru_280B0EFD0);
  v4 = a1[1];
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3));
  if (v4 == *a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(*a1, v4, &v7, v6, 1);
}

std::once_flag::_State_type *Platform::OnceConstructedNeverDestroyed<Platform::SynchronizedValue<std::unordered_set<Platform::Transaction *>>>::OnceConstructedNeverDestroyed(std::once_flag::_State_type *a1)
{
  *a1 = 0;
  v3 = a1;
  if (atomic_load_explicit(a1, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(a1, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<Platform::OnceConstructedNeverDestroyed<Platform::SynchronizedValue<std::unordered_set<Platform::Transaction *>>>::OnceConstructedNeverDestroyed(void)::{lambda(void)#1} &&>>);
  }

  return a1;
}

double std::__call_once_proxy[abi:sn200100]<std::tuple<Platform::OnceConstructedNeverDestroyed<Platform::SynchronizedValue<std::unordered_set<Platform::Transaction *>>>::OnceConstructedNeverDestroyed(void)::{lambda(void)#1} &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  *(v1 + 8) = 850045863;
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1065353216;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 24);
  v74 = a2 - 3;
  v9 = (a2 - 72);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 24), v10);
        v58 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (v10 + 24));
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            goto LABEL_96;
          }

          v122 = *(v10 + 16);
          v98 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 16) = *(v10 + 40);
          *(v10 + 24) = v98;
          *(v10 + 40) = v122;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (v10 + 24)) & 0x80) == 0)
          {
            return;
          }

          v70 = *(v10 + 40);
          v71 = *(v10 + 24);
          v72 = *(a2 - 1);
          *(v10 + 24) = *v8;
          *(v10 + 40) = v72;
          *v8 = v71;
LABEL_97:
          *(a2 - 1) = v70;
          return;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return;
        }

        v59 = *(v10 + 40);
        v60 = *(v10 + 24);
        v61 = *(a2 - 1);
        *(v10 + 24) = *v8;
        *(v10 + 40) = v61;
        *v8 = v60;
        *(a2 - 1) = v59;
LABEL_71:
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 24), v10) & 0x80) != 0)
        {
          v121 = *(v10 + 16);
          v97 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 16) = *(v10 + 40);
          *(v10 + 24) = v97;
          *(v10 + 40) = v121;
        }

        return;
      case 4uLL:

        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, (v10 + 24), (v10 + 48), a2 - 3);
        return;
      case 5uLL:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, (v10 + 24), (v10 + 48), (v10 + 72));
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (v10 + 72)) & 0x80) == 0)
        {
          return;
        }

        v62 = *(v10 + 88);
        v63 = *(v10 + 72);
        v64 = *(a2 - 1);
        *(v10 + 72) = *v8;
        *(v10 + 88) = v64;
        *v8 = v63;
        *(a2 - 1) = v62;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 72), (v10 + 48)) & 0x80) == 0)
        {
          return;
        }

        v65 = *(v10 + 64);
        v66 = *(v10 + 48);
        *(v10 + 48) = *(v10 + 72);
        *(v10 + 64) = *(v10 + 88);
        *(v10 + 72) = v66;
        *(v10 + 88) = v65;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 48), (v10 + 24)) & 0x80) == 0)
        {
          return;
        }

        v67 = *(v10 + 40);
        v68 = *(v10 + 24);
        *(v10 + 24) = *(v10 + 48);
        *(v10 + 40) = *(v10 + 64);
        *(v10 + 48) = v68;
        *(v10 + 64) = v67;
        goto LABEL_71;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 24 * (v14 >> 1));
    if (v13 >= 0xC01)
    {
      v17 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 24 * v15), v10);
      v18 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (a1 + 24 * v15));
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          v105 = *(a1 + 16);
          v81 = *a1;
          v29 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v29;
        }

        else
        {
          v104 = *(a1 + 16);
          v80 = *a1;
          v25 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v25;
          v16[2] = v104;
          *v16 = v80;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (a1 + 24 * v15)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v105 = v16[2];
          v81 = *v16;
          v26 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v26;
        }

        *v8 = v81;
        *(a2 - 1) = v105;
      }

      else if (v18 < 0)
      {
        v100 = v16[2];
        v76 = *v16;
        v19 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v19;
        *v8 = v76;
        *(a2 - 1) = v100;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v15), a1) & 0x80) != 0)
        {
          v101 = *(a1 + 16);
          v77 = *a1;
          v20 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v20;
          v16[2] = v101;
          *v16 = v77;
        }
      }

LABEL_29:
      v30 = (a1 + 24 * v15 - 24);
      v31 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v30, (a1 + 24));
      v32 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v74, v30);
      if (v31 < 0)
      {
        if (v32 < 0)
        {
          v38 = *(a1 + 40);
          v39 = *(a1 + 24);
          v40 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v40;
          *v74 = v39;
          *(a2 - 4) = v38;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v35 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v35;
          *(a1 + 24 * v15 - 8) = v110;
          *v30 = v86;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v74, v30) & 0x80) != 0)
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v30;
            v36 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v30 = v36;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v32 < 0)
      {
        v108 = *(a1 + 24 * v15 - 8);
        v84 = *v30;
        v33 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v30 = v33;
        *v74 = v84;
        *(a2 - 4) = v108;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v30, (a1 + 24)) & 0x80) != 0)
        {
          v85 = *(a1 + 24);
          v109 = *(a1 + 40);
          v34 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v34;
          *(a1 + 24 * v15 - 8) = v109;
          *v30 = v85;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), (a1 + 48));
      v43 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, (v41 + 24));
      if (v42 < 0)
      {
        if (v43 < 0)
        {
          v48 = *(a1 + 64);
          v49 = *(a1 + 48);
          v50 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v50;
          *v9 = v49;
        }

        else
        {
          v90 = *(a1 + 48);
          v114 = *(a1 + 64);
          v46 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v46;
          *(v41 + 40) = v114;
          *(v41 + 24) = v90;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, (v41 + 24)) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v47 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v47;
          *v9 = v91;
          v48 = v115;
        }

        *(a2 - 7) = v48;
      }

      else if (v43 < 0)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v44 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v44;
        *v9 = v88;
        *(a2 - 7) = v112;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v45 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v45;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

LABEL_48:
      v51 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v16, v30);
      v52 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), v16);
      if ((v51 & 0x80) == 0)
      {
        if (v52 < 0)
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v16, v30) & 0x80) != 0)
          {
            v117 = v30[2];
            v93 = *v30;
            *v30 = *v16;
            v30[2] = v16[2];
            v16[2] = v117;
            *v16 = v93;
          }
        }

        goto LABEL_57;
      }

      if (v52 < 0)
      {
        v119 = v30[2];
        v95 = *v30;
        *v30 = *(v41 + 24);
        v30[2] = *(v41 + 40);
LABEL_56:
        *(v41 + 40) = v119;
        *(v41 + 24) = v95;
      }

      else
      {
        v118 = v30[2];
        v94 = *v30;
        *v30 = *v16;
        v30[2] = v16[2];
        v16[2] = v118;
        *v16 = v94;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), v16) & 0x80) != 0)
        {
          v119 = v16[2];
          v95 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          goto LABEL_56;
        }
      }

LABEL_57:
      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v21 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v10, (v10 + 24 * v15));
    v22 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
    if (v21 < 0)
    {
      if (v22 < 0)
      {
        v107 = v16[2];
        v83 = *v16;
        v37 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v37;
      }

      else
      {
        v106 = v16[2];
        v82 = *v16;
        v27 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v27;
        *(a1 + 16) = v106;
        *a1 = v82;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v107 = *(a1 + 16);
        v83 = *a1;
        v28 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v28;
      }

      *v8 = v83;
      *(a2 - 1) = v107;
      goto LABEL_58;
    }

    if (v22 < 0)
    {
      v102 = *(a1 + 16);
      v78 = *a1;
      v23 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v23;
      *v8 = v78;
      *(a2 - 1) = v102;
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 24 * v15)) & 0x80) != 0)
      {
        v103 = v16[2];
        v79 = *v16;
        v24 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v24;
        *(a1 + 16) = v103;
        *a1 = v79;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && (std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 - 24), a1) & 0x80) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54);
    v10 = v54 + 24;
    if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v54 + 24, a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v69 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v10);
  if (v69 < 0)
  {
LABEL_96:
    v123 = *(v10 + 16);
    v99 = *v10;
    v73 = *v8;
    *(v10 + 16) = *(a2 - 1);
    *v10 = v73;
    *v8 = v99;
    v70 = v123;
    goto LABEL_97;
  }
}

__n128 std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void **a1, void **a2, void **a3, void *a4)
{
  v8 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1);
  v9 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v16 = v2;
    v17 = v3;
    v6 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v6, v9) & 0x80) != 0)
        {
          v14 = *v8;
          v15 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v10 = v7;
          do
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 47) < 0)
            {
              operator delete(*(v11 + 24));
            }

            *(v11 + 24) = *v11;
            *(v11 + 40) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            if (!v10)
            {
              v13 = a1;
              goto LABEL_13;
            }

            v10 -= 24;
          }

          while ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, (v10 + a1)) & 0x80) != 0);
          v12 = *(a1 + v10 + 47);
          v13 = a1 + v10 + 24;
          if (v12 < 0)
          {
            operator delete(*v13);
          }

LABEL_13:
          *v13 = v14;
          *(v13 + 16) = v15;
        }

        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v5 = 0;
      v6 = 24;
      do
      {
        v7 = v6;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v4, (a1 + v5)) & 0x80) != 0)
        {
          v10 = *v4;
          v11 = v4[2];
          v4[1] = 0;
          v4[2] = 0;
          *v4 = 0;
          do
          {
            v8 = a1 + v5;
            if (*(a1 + v5 + 47) < 0)
            {
              operator delete(*(v8 + 24));
            }

            *(v8 + 24) = *v8;
            *(v8 + 40) = *(v8 + 16);
            *(v8 + 23) = 0;
            *v8 = 0;
            if (v5 == -24)
            {
              __break(1u);
              return;
            }

            v5 -= 24;
          }

          while ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, (a1 + v5)) & 0x80) != 0);
          v9 = a1 + v5;
          if (*(a1 + v5 + 47) < 0)
          {
            operator delete(*(v9 + 24));
          }

          *(v9 + 24) = v10;
          *(v9 + 40) = v11;
        }

        v6 = v7 + 24;
        v4 = (a1 + v7 + 24);
        v5 = v7;
      }

      while (v4 != a2);
    }
  }
}

uint64_t std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(void **a1, unint64_t a2)
{
  v14 = *a1;
  v15 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, (a2 - 24));
  if ((result & 0x80) != 0)
  {
    v6 = a1;
    while (1)
    {
      v6 += 3;
      if (v6 == a2)
      {
        goto LABEL_27;
      }

      result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v6);
      if ((result & 0x80) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  v5 = a1 + 3;
  do
  {
    v6 = v5;
    if (v5 >= a2)
    {
      break;
    }

    result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v5);
    v5 = v6 + 3;
  }

  while ((result & 0x80) == 0);
LABEL_9:
  v7 = a2;
  if (v6 < a2)
  {
    v7 = a2;
    while (v7 != a1)
    {
      v7 -= 24;
      result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v7);
      if ((result & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_27;
  }

LABEL_19:
  if (v6 < v7)
  {
    v8 = *v6;
    v17 = v6[2];
    v16 = v8;
    v9 = *v7;
    v6[2] = *(v7 + 16);
    *v6 = v9;
    v10 = v16;
    *(v7 + 16) = v17;
    *v7 = v10;
    while (1)
    {
      v6 += 3;
      if (v6 == a2)
      {
        break;
      }

      result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v6);
      if ((result & 0x80) != 0)
      {
        while (v7 != a1)
        {
          v7 -= 24;
          result = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v7);
          if ((result & 0x80) == 0)
          {
            goto LABEL_19;
          }
        }

        break;
      }
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v11 = v6 - 3;
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v11);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v11;
    a1[2] = *(v6 - 1);
    *a1 = v12;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v13 = v14;
  *(v6 - 1) = v15;
  *v11 = v13;
  return v6;
}

__int128 *std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, __int128 *a2)
{
  v5 = 0;
  v16 = *a1;
  v17 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 = (a1 + v5 + 24);
    if (v6 == a2)
    {
      goto LABEL_24;
    }

    v5 += 24;
  }

  while ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v16) & 0x80) != 0);
  v7 = (a1 + v5);
  if (v5 != 24)
  {
    v8 = a2;
    while (v8 != a1)
    {
      v8 = (v8 - 24);
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &v16) & 0x80) != 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_24;
  }

  v8 = a2;
  do
  {
    if (v7 >= v8)
    {
      break;
    }

    v8 = (v8 - 24);
  }

  while ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &v16) & 0x80) == 0);
LABEL_12:
  v2 = v7;
  if (v7 < v8)
  {
    v9 = v8;
LABEL_14:
    v18 = *v2;
    v10 = v18;
    v19 = *(v2 + 2);
    v11 = v19;
    v12 = *(v9 + 2);
    *v2 = *v9;
    *(v2 + 2) = v12;
    *(v9 + 2) = v11;
    *v9 = v10;
    while (1)
    {
      v2 = (v2 + 24);
      if (v2 == a2)
      {
        break;
      }

      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v2, &v16) & 0x80) == 0)
      {
        while (v9 != a1)
        {
          v9 = (v9 - 24);
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v9, &v16) & 0x80) != 0)
          {
            if (v2 < v9)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        break;
      }
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_20:
  a2 = (v2 - 24);
  if ((v2 - 24) != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *a2;
    *(a1 + 2) = *(v2 - 1);
    *a1 = v13;
    *(v2 - 1) = 0;
    *(v2 - 24) = 0;
    goto LABEL_27;
  }

LABEL_25:
  if (*(v2 - 1) < 0)
  {
    operator delete(*a2);
  }

LABEL_27:
  v14 = v16;
  *(a2 + 2) = v17;
  *a2 = v14;
  return a2;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
        v15 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
  v23 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:sn200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:sn200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void *std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v13, a1) & 0x80) != 0)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 3);
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 2);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 1) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x277D85DE8];
  return a3;
}

__n128 std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && (std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v11), (v12 + 24)) & 0x80u) != 0)
      {
        v12 += 24;
        v11 = v13;
      }

      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v7) & 0x80) == 0)
      {
        v19 = *v7;
        v20 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v15 = v12;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v16 = *v12;
          v7[1].n128_u64[0] = *(v12 + 16);
          *v7 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 24 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && (std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v17), (v12 + 24)) & 0x80u) != 0)
          {
            v12 += 24;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v12, &v19) & 0x80) != 0)
          {
            if (v15[1].n128_i8[7] < 0)
            {
              operator delete(v15->n128_u64[0]);
            }

            break;
          }
        }

        result = v19;
        v15[1].n128_u64[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = (v7 + 48);
      if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>((v7 + 24), (v7 + 48)) & 0x80u) != 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    *(v8 + 23) = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v8, (a2 - 24)) & 0x80) != 0)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      while (1)
      {
        v11 = v8;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v12 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v12;
        *(v8 + 23) = 0;
        *v8 = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v9 = v11;
        if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &v13) & 0x80) == 0)
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          break;
        }
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 2) = v14;
    }
  }

  return result;
}

void *std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::__emplace_unique_key_args<Platform::Transaction *,Platform::Transaction *>(uint64_t a1, void *a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x18uLL);
  *i = 0;
  i[1] = v8;
  i[2] = *a3;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned char>>>>::__rehash<true>(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::__erase_unique<Platform::Transaction *>(void *a1, void *a2)
{
  result = std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::find<Platform::Transaction *>(a1, a2);
  if (result)
  {
    std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::find<Platform::Transaction *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void *std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::remove(result, a2, &__p);
    v3 = __p;
    __p = 0;
    if (v3)
    {
      operator delete(v3);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<Platform::Transaction *,std::hash<Platform::Transaction *>,std::equal_to<Platform::Transaction *>,std::allocator<Platform::Transaction *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void *Platform::URLConnection::URLConnection(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = a2;
  a1[3] = 0;
  [v8 _CFURLRequest];
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFURLConnectionCreate();
  v11 = a1[3];
  if (v11 == v10)
  {
    if (v10)
    {
      CFRelease(v10);
      v12 = a1[3];
    }
  }

  else
  {
    if (v11)
    {
      CFRelease(v11);
      a1[3] = 0;
    }

    a1[3] = v10;
  }

  CFURLConnectionSetDelegateDispatchQueue();

  return a1;
}

void sub_22564C2E0(_Unwind_Exception *a1)
{
  v5 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(v2 + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v2 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

void Platform::URLConnection::~URLConnection(Platform::URLConnection *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void Platform::URLConnection::cancel(Platform::URLConnection *this)
{
  if (*(this + 3))
  {
    CFURLConnectionCancel();
    v2 = *(this + 3);
    if (v2)
    {
      CFRelease(v2);
      *(this + 3) = 0;
    }
  }
}

uint64_t Platform::URLConnection::URLConnection(Platform::URLConnection::Client &,NSObject  {objcproto17OS_dispatch_queue}*,NSURLRequest *)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HTTPResponse = CFURLResponseGetHTTPResponse();
  CFHTTPMessageGetResponseStatusCode(HTTPResponse);
  v5 = *(**(a3 + 16) + 16);

  return v5();
}

uint64_t Platform::URLConnection::URLConnection(Platform::URLConnection::Client &,NSObject  {objcproto17OS_dispatch_queue}*,NSURLRequest *)::$_2::__invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 24) = 0;
  }

  v4 = *(**(a2 + 16) + 32);

  return v4();
}

uint64_t Platform::URLConnection::URLConnection(Platform::URLConnection::Client &,NSObject  {objcproto17OS_dispatch_queue}*,NSURLRequest *)::$_3::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a3 + 24) = 0;
  }

  v5 = *(**(a3 + 16) + 40);

  return v5();
}

void Platform::mapSharedMemory(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3 && (region = 0, (v5 = xpc_shmem_map(v3, &region)) != 0))
  {
    std::allocate_shared[abi:sn200100]<Platform::SharedMemory,std::allocator<Platform::SharedMemory>,void *&,unsigned long &,0>(&region, &v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void *Platform::xpcErrorCategory(void)
{
  {
    Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed();
  }

  return &unk_280B0F098;
}

void Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed()
{
  Platform::xpcErrorCategory(void)::xpcErrorCategory = 0;
  v0 = &Platform::xpcErrorCategory(void)::xpcErrorCategory;
  if (atomic_load_explicit(&Platform::xpcErrorCategory(void)::xpcErrorCategory, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&Platform::xpcErrorCategory(void)::xpcErrorCategory, &v1, std::__call_once_proxy[abi:sn200100]<std::tuple<Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t Platform::xpcErrorCode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == MEMORY[0x277D863F0])
  {
    {
      v3 = 1;
      goto LABEL_9;
    }

    Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed();
    v3 = 1;
LABEL_13:
    goto LABEL_9;
  }

  if (v1 == MEMORY[0x277D863F8])
  {
    {
      v3 = 2;
      goto LABEL_9;
    }

    Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed();
    v3 = 2;
    goto LABEL_13;
  }

  {
    Platform::OnceConstructedNeverDestroyed<Platform::xpcErrorCategory(void)::XPCErrorCategory>::OnceConstructedNeverDestroyed();
    v3 = 3;
    goto LABEL_13;
  }

  v3 = 3;
LABEL_9:

  return v3;
}

void *std::allocate_shared[abi:sn200100]<Platform::SharedMemory,std::allocator<Platform::SharedMemory>,void *&,unsigned long &,0>@<X0>(void **a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  result = std::__shared_ptr_emplace<Platform::SharedMemory>::__shared_ptr_emplace[abi:sn200100]<void *&,unsigned long &,std::allocator<Platform::SharedMemory>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<Platform::SharedMemory>::__shared_ptr_emplace[abi:sn200100]<void *&,unsigned long &,std::allocator<Platform::SharedMemory>,0>(void *a1, void **a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD400;
  Platform::SharedMemory::SharedMemory(a1 + 3, *a2, *a3);
  return a1;
}

void Platform::xpcErrorCategory(void)::XPCErrorCategory::~XPCErrorCategory(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

void Platform::xpcErrorCategory(void)::XPCErrorCategory::message(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    v6 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    xdict = qword_278565560[v3];
    v4 = qword_278565548[v3];
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    std::string::basic_string[abi:sn200100]<0>(a2, string);
    v6 = xdict;
  }
}

uint64_t Backend::Google::DeviceIdentificationTokenFetcher::DeviceIdentificationTokenFetcher(uint64_t a1, const Backend::Google::Configuration *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  Backend::Google::Configuration::Configuration((a1 + 16), a2);
  *(a1 + 120) = dispatch_queue_create("com.apple.Safari.SafeBrowsing.DeviceIdentificationTokenFetcher", 0);
  *(a1 + 128) = 850045863;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = a3;
  *(a1 + 112) = 0;
  return a1;
}

void sub_22564C994(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void Backend::Google::DeviceIdentificationTokenFetcher::~DeviceIdentificationTokenFetcher(Backend::Google::DeviceIdentificationTokenFetcher *this)
{
  std::mutex::~mutex(this + 2);

  Backend::Google::Configuration::~Configuration((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::mutex::lock((a1 + 128));
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v15, a1);
  *(a1 + 112) = 1;
  v7 = *(a1 + 120);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke;
  v11[3] = &__block_descriptor_64_ea8_32c155_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__0_e5_v8__0l;
  v8 = v15;
  v9 = v16;
  v15 = 0;
  v16 = 0;
  v11[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v5;
  v10 = v5;
  v14 = MEMORY[0x22AA67A70](v6);
  dispatch_async(v7, v11);

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v16);
  }

  std::mutex::unlock((a1 + 128));
}

void sub_22564CB38(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void ___ZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 208) == 1)
  {
    v3 = Backend::Google::Configuration::getDeviceIdentificationTokenRequestURLRequest((v1 + 16));
    if (v3)
    {
      v4 = SSBOSLogDeviceIdentificationToken();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 208);
        *buf = 67109120;
        *&buf[4] = v5;
        _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Initiate device identification token request for %d server", buf, 8u);
      }

      v6 = *(*(a1 + 32) + 96);
      *buf = MEMORY[0x277D85DD0];
      v16 = 3321888768;
      v17 = ___ZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEv_block_invoke;
      v18 = &__block_descriptor_64_ea8_32c200_ZTSKZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvEUlP6NSDataP13NSURLResponseP7NSErrorE__e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v14 = v8;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(a1 + 48);
      v10 = MEMORY[0x22AA67A70](*(a1 + 56));
      v19 = v8;
      v20 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v9;
      v21 = v11;
      v22 = MEMORY[0x22AA67A70](v10);
      v12 = [v6 dataTaskWithRequest:v3 completionHandler:{buf, v14, v7}];

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      }

      [v12 resume];

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22564CD68(_Unwind_Exception *a1)
{
  Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(void))::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::~NSError(v4 + 32);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c155_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = *(a2 + 48);
  result = MEMORY[0x22AA67A70](*(a2 + 56));
  a1[7] = result;
  return result;
}

void __destroy_helper_block_ea8_32c155_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void Backend::Google::DeviceIdentificationTokenFetcher::didFetchDeviceIdentificationToken(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  std::mutex::lock((a1 + 128));
  if (v13 || [v12 statusCode] != 200)
  {
    v24 = SSBOSLogDeviceIdentificationToken();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = [v12 statusCode];
      v30 = *(a1 + 208);
      *buf = 138412802;
      v37 = v13;
      v38 = 1024;
      v39 = v29;
      v40 = 1024;
      v41 = v30;
      _os_log_error_impl(&dword_2255EE000, v24, OS_LOG_TYPE_ERROR, "Encountered error %@ / status %d when requesting device identification token for %d server", buf, 0x18u);
    }

    v25 = *(a1 + 192);
    *(a1 + 192) = 0;

    *(a1 + 112) = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke;
    block[3] = &__block_descriptor_40_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__0_e5_v8__0l;
    v35 = MEMORY[0x22AA67A70](v15);
    dispatch_async(v14, block);

    v17 = v35;
  }

  else
  {
    v33 = 0;
    v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:&v33];
    v17 = v33;
    if (v17 || !v16)
    {
      v27 = SSBOSLogDeviceIdentificationToken();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        Backend::Google::DeviceIdentificationTokenFetcher::didFetchDeviceIdentificationToken(v17, a1, v27);
      }

      v28 = *(a1 + 192);
      *(a1 + 192) = 0;

      *(a1 + 112) = 0;
      v21 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3321888768;
      v22 = &__block_descriptor_40_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__1_e5_v8__0l;
      v23 = ___ZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke_2;
    }

    else
    {
      objc_storeStrong((a1 + 192), v16);
      *(a1 + 200) = std::chrono::steady_clock::now();
      *(a1 + 112) = 0;
      v18 = SSBOSLogDeviceIdentificationToken();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 208);
        *buf = 67109120;
        LODWORD(v37) = v19;
        _os_log_impl(&dword_2255EE000, v18, OS_LOG_TYPE_INFO, "Received device identification token dictionary for %d server", buf, 8u);
      }

      v20 = SSBOSLogDeviceIdentificationToken();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        Backend::Google::DeviceIdentificationTokenFetcher::didFetchDeviceIdentificationToken((a1 + 192), v20);
      }

      v21 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3321888768;
      v22 = &__block_descriptor_40_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__2_e5_v8__0l;
      v23 = ___ZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke_3;
    }

    v21[2] = v23;
    v21[3] = v22;
    v21[4] = MEMORY[0x22AA67A70](v15);
    dispatch_async(v14, v21);
  }

  std::mutex::unlock((a1 + 128));
  v26 = *MEMORY[0x277D85DE8];
}

void sub_22564D1CC(_Unwind_Exception *a1)
{
  std::mutex::unlock(v5 + 2);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x22AA67A70](*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

uint64_t __copy_helper_block_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x22AA67A70](*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

uint64_t __copy_helper_block_ea8_32c195_ZTSKZN7Backend6Google32DeviceIdentificationTokenFetcher33didFetchDeviceIdentificationTokenEP6NSDataP17NSHTTPURLResponseP7NSErrorPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEE3__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x22AA67A70](*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

BOOL Backend::Google::DeviceIdentificationTokenFetcher::shouldFetchDeviceIdentificationToken(std::mutex *this)
{
  std::mutex::lock(this + 2);
  if (Backend::Google::SSBUtilities::shouldConsultWithTencent(v2))
  {
    v3 = 0;
  }

  else
  {
    v4 = +[RemoteConfigurationController sharedController];
    v5 = [v4 googleProviderConfiguration];
    v6 = [v5 proxyOff];

    if (v6 & 1) != 0 || (this[1].__m_.__opaque[40])
    {
      v3 = 0;
    }

    else if (this[3].__m_.__sig)
    {
      v3 = std::chrono::steady_clock::now().__d_.__rep_ - *this[3].__m_.__opaque > 0x105EF39B1FFFLL;
    }

    else
    {
      v3 = 1;
    }
  }

  std::mutex::unlock(this + 2);
  return v3;
}

void sub_22564D3BC(_Unwind_Exception *a1)
{
  v4 = v3;

  std::mutex::unlock(v1 + 2);
  _Unwind_Resume(a1);
}

id Backend::Google::DeviceIdentificationTokenFetcher::getCurrentDeviceIdentificationToken(Backend::Google::DeviceIdentificationTokenFetcher *this)
{
  std::mutex::lock(this + 2);
  v2 = *(this + 24);
  std::mutex::unlock(this + 2);

  return v2;
}

void ___ZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEv_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(v14 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clES9_SB_SD__block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c221_ZTSKZZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clES9_SB_SD_EUlvE__e5_v8__0l;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 48);
  v17 = MEMORY[0x22AA67A70](*(a1 + 56));
  v18 = v10;
  v19 = v11;
  v20 = v12;
  block[4] = v14;
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v16;
  v21 = v16;
  v28 = MEMORY[0x22AA67A70](v17);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  dispatch_async(v15, block);

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v26);
  }
}

uint64_t __copy_helper_block_ea8_32c200_ZTSKZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvEUlP6NSDataP13NSURLResponseP7NSErrorE_(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = *(a2 + 48);
  result = MEMORY[0x22AA67A70](*(a2 + 56));
  a1[7] = result;
  return result;
}

void __destroy_helper_block_ea8_32c200_ZTSKZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvEUlP6NSDataP13NSURLResponseP7NSErrorE_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t Backend::Google::DeviceIdentificationTokenFetcher::fetchDeviceIdentificationToken(NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(void))::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::~NSError(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

id __copy_helper_block_ea8_32c221_ZTSKZZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clES9_SB_SD_EUlvE_(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = *(a2 + 48);
  a1[7] = MEMORY[0x22AA67A70](*(a2 + 56));
  a1[8] = *(a2 + 64);
  a1[9] = *(a2 + 72);
  result = *(a2 + 80);
  a1[10] = result;
  return result;
}

void __destroy_helper_block_ea8_32c221_ZTSKZZZN7Backend6Google32DeviceIdentificationTokenFetcher30fetchDeviceIdentificationTokenEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clES9_SB_SD_EUlvE_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void Backend::Google::DatabaseUpdater::mapDatabaseIntoMemory(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  _os_log_error_impl(&dword_2255EE000, v4, OS_LOG_TYPE_ERROR, "Failed to initialize database '%{public}s'", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void Backend::Google::DatabaseUpdater::writeUpdatedDatabase(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  _os_log_fault_impl(&dword_2255EE000, v4, OS_LOG_TYPE_FAULT, "Checksum for database '%{public}s' is invalid", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5(&dword_2255EE000, a2, a3, "Parsing %zu updates", a1);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Response is incorrectly formatted. listUpdatesResponses can only contain dictionaries. Contained a %{public}@", v4);
}

{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Invalid minimum wait duration. Expected a string. Got %{public}@", v4);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Failed to parse an entry from the listUpdatesResponses dictionary", buf, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseFetchThreatListUpdatesResponse()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Additions are incorrectly formatted. Expected an array. Got %{public}@", v4);
}

{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Addition is incorrectly formatted. Expected an dictionary. Got %{public}@", v4);
}

{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Removals are incorrectly formatted. Expected an array. Got %{public}@", v4);
}

{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Removal is incorrectly formatted. Expected an dictionary. Got %{public}@", v4);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5(&dword_2255EE000, a2, a3, "Parsing %zu additions", a1);
}

{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5(&dword_2255EE000, a2, a3, "Parsing %zu removals", a1);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseListUpdateResponse(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Failed to parse addition", buf, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseDuration()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseChecksum()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseAddition()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRemoval()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawHashes()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Indices are incorrectly formatted. Expected an array. Got %{public}@", v4);
}

{
  OUTLINED_FUNCTION_4(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v2, v3, "Indice is incorrectly formatted. Expected a number. Got %{public}@", v4);
}

void Backend::Google::FetchThreatListUpdatesResponseJSONParser::parseRawIndices(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a1[1] - *a1) >> 2;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "Parsing %zu indices", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void std::__optional_copy_base<std::vector<unsigned int>,false>::__optional_copy_base[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::operator()(uint64_t result)
{
  v3 = *(result + 56);
  if (v3 != -1)
  {
    *&v4[1] = v1;
    v5 = v2;
    return (off_2838CE5E8[v3])(v4, result);
  }

  return result;
}

void Backend::Google::FullHashFetcher::didFetchFullHashes(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 124);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2255EE000, a2, OS_LOG_TYPE_ERROR, "Encountered error when requesting from %d server", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t Backend::Google::FullHashFetcher::didFetchFullHashes(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 != -1)
  {
    result = (off_2838CE7C8[v2])(&v3, result);
  }

  *(v1 + 56) = -1;
  return result;
}

uint64_t ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_1(v1);
    return v3(v2);
  }

  return result;
}

void Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 124);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2255EE000, a2, OS_LOG_TYPE_ERROR, "Encountered error when parsing response from %d server", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::~LookupContext(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::~__hash_table(a1 + 80);
  v3 = (a1 + 48);
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v3);

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void SafeBrowsing::LookupContext::handleForceDeviceIdentificationTokenUpdateReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for ForceDeviceIdentificationTokenUpdate response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::lookUpURL(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "URL %@ is safe", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::handleConnectionError(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Handle connection with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleCheckFullHashesReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for CheckFullHashes response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleForceLoadRemoteConfigurationFromDiskReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for ForceLoadRemoteConfigurationFromDisk response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleForceUpdateRemoteConfigurationFromServerReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for ForceUpdateRemoteConfigurationFromServer response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleDeleteAllDatabasesReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for DeleteAllDatabases response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleClientInUseReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for ClientInUse response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleFetchCellularDataPlanReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for FetchCellularDataPlan response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::LookupContext::handleGetSafeBrowsingEnabledStateReply(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered xpc error for GetSafeBrowsingEnabledState response with error: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::operator()(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered error when trying to get safe browsing enabled state: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::operator()(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  OUTLINED_FUNCTION_2_0(v3, v7, 4.8751e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v8, v9, "Encountered error when trying to get databases: %{public}s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

std::once_flag::_State_type *SafeBrowsing::Service::shared()
{
  result = Platform::OnceConstructedNeverDestroyed<SafeBrowsing::Service>::OnceConstructedNeverDestroyed(&algn_280B0ED91[7]);
  _MergedGlobals = 1;
  return result;
}

void SafeBrowsing::Service::databaseBaseDirectory(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to get user cache directory: %{public}s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::Service::initializeDatabaseManager(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to create database directory: %{public}s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void SafeBrowsing::Service::didFailUpdate(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = HIDWORD(a1);
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Service: Database update failed for protection type %d and provider %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::Service::handleDeleteAllDatabases(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_2255EE000, a2, a3, "Failed to delete all databases: %{public}@", a2);
}

void Platform::SharedMemory::createFileMapping(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_2(1.5047e-36, a1, a2, a3);
  _os_log_error_impl(&dword_2255EE000, v5, OS_LOG_TYPE_ERROR, "Failed to fstat file descriptor %i: %{errno}i", v4, 0xEu);
}

{
  v3 = *a1;
  OUTLINED_FUNCTION_0_2(1.5047e-36, a1, a2, a3);
  _os_log_error_impl(&dword_2255EE000, v5, OS_LOG_TYPE_ERROR, "Failed to mmap file descriptor %i: %{errno}i", v4, 0xEu);
}

void SafeBrowsing::BrowsingDatabaseCoordinator::handleGetDatabasesReply(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Encountered xpc error for GetDatabases response with error: %{public}s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void SafeBrowsing::BrowsingDatabaseCoordinator::performURLLookup(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "Perform url lookup in the database: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "There are no matches in databases with given url: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void Backend::Google::SSBUtilities::currentCountryCode(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "AppleLocale preferences is a %@ but expected a string", buf, 0xCu);
}

std::once_flag::_State_type *Platform::Transaction::Transaction()
{
  result = Platform::OnceConstructedNeverDestroyed<Platform::SynchronizedValue<std::unordered_set<Platform::Transaction *>>>::OnceConstructedNeverDestroyed(&algn_280B0EFC1[7]);
  _MergedGlobals_0 = 1;
  return result;
}

void Backend::Google::DeviceIdentificationTokenFetcher::didFetchDeviceIdentificationToken(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "Token dictionary keys %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void Backend::Google::DeviceIdentificationTokenFetcher::didFetchDeviceIdentificationToken(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 208);
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v3;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Device identification token parse error %@ for %d server", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x282110068](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}