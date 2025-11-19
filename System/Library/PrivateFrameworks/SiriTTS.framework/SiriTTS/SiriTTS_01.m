void sub_1C2FA5F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *InferenceEngine::VectorOps::flatten_2d_to_1d<float>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*a1 + 8) - **a1;
  result = std::vector<float>::vector[abi:ne200100](a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) * (v4 >> 2));
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      result = memcpy((*a2 + v7), *(v6 + v8), v4);
      ++v9;
      v6 = *a1;
      v8 += 24;
      v7 += 4 * (v4 >> 2);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v9);
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(char *__s@<X2>, unsigned __int8 *a2@<X0>, const void **a3@<X1>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::string,0>(a2, a3, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C2FA60F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t NeuralThermalFallbackConnection::NeuralThermalFallbackConnection(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, unsigned __int8 *a5, uint64_t *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a4;
  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a6;
  v12 = a6[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F42F1A00;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v13;
  *(a1 + 64) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  *a1 = &unk_1F42F1CF8;
  *(a1 + 72) = 0;
  *(a1 + 76) = 2;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "thermal_limit");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("serious", a5, buf, &v34);
  if (v36 < 0)
  {
    operator delete(*buf);
  }

  if ((*(&v34.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(v34.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v34.__r_.__value_.__r.__words[2]) != 8)
      {
        goto LABEL_41;
      }

      v14 = &v34;
LABEL_26:
      if (v14->__r_.__value_.__r.__words[0] != 0x6C61636974697263)
      {
        goto LABEL_41;
      }

      v15 = 3;
      goto LABEL_40;
    }

    if (LODWORD(v34.__r_.__value_.__l.__data_) != 1769104755 || *(v34.__r_.__value_.__r.__words + 3) != 1937076073)
    {
      goto LABEL_41;
    }

LABEL_39:
    v15 = 2;
LABEL_40:
    *(a1 + 76) = v15;
    goto LABEL_41;
  }

  if (v34.__r_.__value_.__l.__size_ != 7)
  {
    if (v34.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_41;
    }

    v14 = v34.__r_.__value_.__r.__words[0];
    goto LABEL_26;
  }

  if (*v34.__r_.__value_.__l.__data_ == 1769104755 && *(v34.__r_.__value_.__r.__words[0] + 3) == 1937076073)
  {
    goto LABEL_39;
  }

LABEL_41:
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v18 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 76);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&dword_1C2F95000, v18, OS_LOG_TYPE_DEFAULT, "NeuralThermalFallbackConnection initialized with thermal limit: %d", buf, 8u);
  }

  Diagnostics::log(5, "NeuralThermalFallbackConnection initialized with thermal limit: %d", v19, *(a1 + 76));
  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v32, *a6);
  if (v32)
  {
    *(a1 + 80) = *(v32 + 80);
  }

  SharedObjectPool::get<GryphonConfig>(&v30, *a6);
  v21 = v30;
  std::string::basic_string[abi:ne200100]<0>(buf, "audio_resampling_fallback");
  GryphonConfig::params_for_module(v28, v21, buf);
  if (v36 < 0)
  {
    operator delete(*buf);
  }

  if (v28[0] == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sample_rate_in");
    v25 = 24000;
    *(a1 + 72) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v28, __p, &v25);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SharedObjectPool::get<SynthesizerConfig>(__p, *(a1 + 56));
  v22 = *(a1 + 96);
  *(a1 + 88) = *__p;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C2FA6560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a18, a17);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v30 = *(v28 + 12);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  Connection::~Connection(v28);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::string,0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }
  }

  else
  {
    v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v7, a4);
  }
}

void sub_1C2FA6758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t NeuralThermalFallbackConnection::should_fallback(NeuralThermalFallbackConnection *this)
{
  if (*(*(this + 11) + 2) == 1)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v1 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C2F95000, v1, OS_LOG_TYPE_DEFAULT, "ignoring low-power and thermal modes due to disable_thermal_fallback", __p, 2u);
    }

    v3 = 0;
    v4 = "ignoring low-power and thermal modes due to disable_thermal_fallback";
LABEL_21:
    Diagnostics::log(5, v4, v2);
    return v3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ignoreThermalState");
  BOOL_for_key = InternalSettings::get_BOOL_for_key(__p);
  v7 = BOOL_for_key;
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else if (BOOL_for_key)
  {
LABEL_9:
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v8 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C2F95000, v8, OS_LOG_TYPE_DEFAULT, "ignoring low-power and thermal modes due to defaults", __p, 2u);
    }

    v3 = 0;
    v4 = "ignoring low-power and thermal modes due to defaults";
    goto LABEL_21;
  }

  v9 = NeuralTTSUtils::check_thermal_limit(*(this + 19));
  if (v9)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEFAULT, "Compact Neural TTS will be used due to thermal condition.", __p, 2u);
    }

    v3 = 1;
    v4 = "Compact Neural TTS will be used due to thermal condition.";
    goto LABEL_21;
  }

  v12 = NSProcessInfoObjCBridge::low_power_mode_enabled(v9);
  v3 = 0;
  if (*(this + 20) != 4 && v12)
  {
    if (*(this + 18) < 20000.0)
    {
      return 0;
    }

    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v13 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C2F95000, v13, OS_LOG_TYPE_DEFAULT, "High sampling rate fallback model will be used due to low power mode.", __p, 2u);
    }

    v3 = 1;
    v4 = "High sampling rate fallback model will be used due to low power mode.";
    goto LABEL_21;
  }

  return v3;
}

void sub_1C2FA6A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    v5 = *(*v4 + 16);
    *a1 = *(*v4 + 8);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void Agglomerate::set<std::shared_ptr<SynthesizerConfig>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void SharedObjectPool::get<SynthesizerConfig>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    operator new();
  }

  v5 = *(*v4 + 16);
  *a1 = *(*v4 + 8);
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void sub_1C2FA6D94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::recursive_mutex::unlock((v1 + 56));
  _Unwind_Resume(a1);
}

uint64_t FS2S1EncoderModule::prepare(uint64_t this)
{
  if ((*(this + 272) & 1) == 0)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v1 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v1, OS_LOG_TYPE_DEFAULT, "Prepare inference.", buf, 2u);
    }

    Diagnostics::log(5, "Prepare inference.", v2);
    operator new();
  }

  return this;
}

void sub_1C2FA70A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t AnetecStreamingDecoderModule::prepare(uint64_t this)
{
  if ((*(this + 288) & 1) == 0)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v1 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v1, OS_LOG_TYPE_DEFAULT, "Prepare inference.", buf, 2u);
    }

    Diagnostics::log(5, "Prepare inference.", v2);
    operator new();
  }

  return this;
}

void sub_1C2FA7480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void InferenceEngine::BaseInferenceController::set_input(uint64_t a1, const void **a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__shared_ptr_emplace<SemanticFeature>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 152);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 128);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 104);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 80);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }
}

void InferenceEngine::DataTensor::unsqueeze(InferenceEngine::DataTensor *this, int a2)
{
  if ((a2 & 0x80000000) == 0 && *(this + 8) == *(this + 7))
  {
    InferenceEngine::DataTensor::unsqueeze();
  }

  InferenceEngine::DataTensor::get_shape(this, 0, &v8);
  v7 = 1;
  std::vector<unsigned long>::insert(&v8, v8 + 8 * a2, &v7);
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v8, v9, (v9 - v8) >> 3);
  InferenceEngine::DataTensor::set_shape(this, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_1C2FA76AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<unsigned long>::emplace_back<unsigned long>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void InferenceEngine::BaseInferenceController::set_input(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::Vocab::OOvWord(*a2, &__p);
  p_p = &__p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 24), &__p.__r_.__value_.__l.__data_);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C2FA7880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **TTSSynthesizer::preheat(TTSSynthesizer *this)
{
  v1 = *this;
  v2 = *(*this + 512);
  v3 = *(*this + 520);
  if (v2 != v3)
  {
    goto LABEL_61;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(__p, (v1 + 400));
  MEMORY[0x1C692AB10](&v35, __p, 0, 0);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (v1 + 520);
  while (v35.__imp_.__ptr_)
  {
    v5 = std::__fs::filesystem::directory_iterator::__dereference(&v35);
    if (SHIBYTE(v5->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&p, v5->__p_.__pn_.__r_.__value_.__l.__data_, v5->__p_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      p = v5->__p_;
    }

    std::__fs::filesystem::path::filename[abi:ne200100](&p, __p);
    if (SBYTE7(v32) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, __p[0], __p[1]);
      if (SBYTE7(v32) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *&v33.__r_.__value_.__l.__data_ = *__p;
      v33.__r_.__value_.__r.__words[2] = v32;
    }

    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_22;
      }

      if (LODWORD(v33.__r_.__value_.__l.__data_) == 1718510701 || LODWORD(v33.__r_.__value_.__l.__data_) == 2019847785)
      {
        goto LABEL_24;
      }

      v6 = &v33;
LABEL_21:
      if (LODWORD(v6->__r_.__value_.__l.__data_) != 1718513266)
      {
LABEL_22:
        if (*(v1 + 272) || std::string::compare(&v33, 0, 4uLL, "clc_"))
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v33.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_22;
    }

    v6 = v33.__r_.__value_.__r.__words[0];
    if (*v33.__r_.__value_.__l.__data_ != 2019847785 && *v33.__r_.__value_.__l.__data_ != 1718510701)
    {
      goto LABEL_21;
    }

LABEL_24:
    MemoryMap::MemoryMap(__p, &p);
    v7 = *(v1 + 520);
    v8 = *(v1 + 528);
    if (v7 >= v8)
    {
      v11 = *(v1 + 512);
      v12 = (v7 - v11) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v11;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = __p[1];
      v17 = 32 * v12;
      *v17 = __p[0];
      *(v17 + 8) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      *(32 * v12 + 0x10) = v32;
      v18 = *(v1 + 520);
      v19 = *(v1 + 512);
      v20 = v17 + v19 - v18;
      if (v19 != v18)
      {
        v21 = *(v1 + 512);
        v22 = v17 + v19 - v18;
        do
        {
          *v22 = *v21;
          v23 = *(v21 + 8);
          *(v22 + 8) = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          *(v22 + 16) = *(v21 + 16);
          v21 += 32;
          v22 += 32;
        }

        while (v21 != v18);
        do
        {
          v24 = *(v19 + 8);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          v19 += 32;
        }

        while (v19 != v18);
      }

      v10 = v17 + 32;
      v25 = *(v1 + 512);
      *(v1 + 512) = v20;
      *v4 = (v17 + 32);
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v7 = __p[0];
      v9 = __p[1];
      *(v7 + 8) = __p[1];
      if (v9)
      {
        atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v32;
      v10 = v7 + 32;
    }

    *v4 = v10;
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

LABEL_51:
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(p.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::directory_iterator::__increment(&v35, 0);
  }

  if (v35.__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35.__imp_.__cntrl_);
  }

  v2 = *(v1 + 512);
  v3 = *(v1 + 520);
LABEL_61:
  while (v2 != v3)
  {
    v26 = *(v2 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    madvise(*(v2 + 16), *(v2 + 24), 3);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v2 += 32;
  }

  result = *(v1 + 280);
  if (result)
  {
    result = ((*result)[8])(result);
    v28 = *result;
    v29 = result[1];
    while (v28 != v29)
    {
      v30 = *v28;
      v28 += 2;
      result = (*(*v30 + 40))(v30);
    }
  }

  return result;
}

void sub_1C2FA7CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Module::~Module(Module *this)
{
  *this = &unk_1F42F3380;
  std::recursive_mutex::~recursive_mutex((this + 208));
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](this + 14);
  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::mutex::~mutex((this + 32));
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::destroy(*(this + 2));
}

uint64_t std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<char **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<char **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<Observer>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<SharedObjectPool>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 80));
  std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::destroy(*(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void VoiceConfigImpl::~VoiceConfigImpl(VoiceConfigImpl *this)
{
  *this = &unk_1F42E4BC0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void VoiceConfigDirectory::~VoiceConfigDirectory(void **this)
{
  *this = &unk_1F42E4D10;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1C692AE10);
}

void VoiceConfigEyrie_1::~VoiceConfigEyrie_1(void **this)
{
  *this = &unk_1F42E4CA0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  VoiceConfigEyrie_1::~VoiceConfigEyrie_1(this);

  JUMPOUT(0x1C692AE10);
}

void Agglomerate::ItemHolder<std::shared_ptr<SynthesizerConfig>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F0098;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::__shared_ptr_emplace<SynthesizerConfig>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);

    operator delete(v3);
  }
}

void Agglomerate::ItemHolder<std::shared_ptr<GryphonConfig>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42ECD98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::__shared_ptr_emplace<Environment>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void FS2S1EncoderP2ADualPromptOptimisedInference::prepare_inputs(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  FS2S1EncoderBaseInference::prepare_inputs(a1, v3);
}

void sub_1C2FA8670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MLInferenceModel::set_input(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1C2FA876C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void FS2S1EncoderP2ADualPromptOptimisedInference::inference()
{
  v3 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v0 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v0, OS_LOG_TYPE_DEBUG, "FS2S1Encoder inference begin.", buf, 2u);
  }

  Diagnostics::log(7, "FS2S1Encoder inference begin.", v1);
  operator new();
}

void sub_1C2FA8E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    __cxa_begin_catch(exception_object);
    (*(**(v16 + 24) + 56))(*(v16 + 24));
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FA8F2C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C2FA8F34);
  }

  __clang_call_terminate(a1);
}

void FS2S1EncoderP2ADualPromptOptimisedInference::get_outputs(void *a1, void *a2)
{
  v4 = a1[3];
  std::string::basic_string[abi:ne200100]<0>(__p, "enc_output");
  (*(*v4 + 32))(&v12, v4, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::DataTensor::get_3d_array<float>(v12, v9);
  v5 = (*a2 + 128);
  if (v5 != v9[0])
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v5, *v9[0], *(v9[0] + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v9[0] + 8) - *v9[0]) >> 3));
  }

  v14 = v9;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v6 = a2[1];
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(a1, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1C2FA9074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 - 40) = &a12;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  v22 = *(v20 - 48);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::MilInferenceModel::get_output(uint64_t a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 184), a2) != 0;
  std::operator+<char>();
  InferenceEngine::Utils::assert_with_log(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 184), a2);
  v6 = v5;
  if (*(a1 + 136) == 1)
  {
    (*(*v5[5] + 24))(v5[5]);
  }

  kaldi::quasar::Vocab::BosWord(v6[5], &__p);
  InferenceEngine::DataTensor::get_shape(v6[5], 0, &v7);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long>,0>();
}

void sub_1C2FA9274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer(InferenceEngine::Mil2BnnsMilIO *this)
{
  v2 = *(this + 17);
  v3 = *(v2 + 144);
  if (v3 == 65552)
  {
    v8 = (this + 32);
    v9 = *(this + 55);
    if (v9 < 0)
    {
      if (*(this + 5) != 4)
      {
        goto LABEL_23;
      }

      v8 = *v8;
    }

    else if (v9 != 4)
    {
      goto LABEL_23;
    }

    if (*v8 == 909209702)
    {
      goto LABEL_27;
    }

LABEL_23:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (v3 == 131104)
  {
    v6 = this + 32;
    v7 = *(this + 55);
    if (v7 < 0)
    {
      if (*(this + 5) != 5)
      {
        goto LABEL_19;
      }

      v6 = *v6;
    }

    else if (v7 != 5)
    {
      goto LABEL_19;
    }

    v10 = *v6;
    v11 = v6[4];
    if (v10 == 863268457 && v11 == 50)
    {
      goto LABEL_27;
    }

LABEL_19:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (v3 != 65568)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v18 = this + 32;
    if (*(this + 55) < 0)
    {
      v18 = *v18;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v38, "dtype %s not supported", v18);
    MEMORY[0x1C692A510](exception, &v38);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v4 = (this + 32);
  v5 = *(this + 55);
  if (v5 < 0)
  {
    if (*(this + 5) != 4)
    {
      goto LABEL_51;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
LABEL_51:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (*v4 != 842231910)
  {
    goto LABEL_51;
  }

LABEL_27:
  HIDWORD(v14) = *(v2 + 4) - 32769;
  LODWORD(v14) = HIDWORD(v14);
  v13 = v14 >> 16;
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 32, 3uLL);
        __p = 0;
        v30 = 0;
        v31 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &__p);
        v15 = __p;
        if (!__p)
        {
          goto LABEL_47;
        }

        v30 = __p;
LABEL_46:
        operator delete(v15);
LABEL_47:
        v16 = v38.__r_.__value_.__r.__words[0];
        if (v38.__r_.__value_.__r.__words[0])
        {
          v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
          goto LABEL_49;
        }

        goto LABEL_50;
      case 4:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 40, 4uLL);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v32, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &v32);
        v15 = v32;
        if (!v32)
        {
          goto LABEL_47;
        }

        v33 = v32;
        goto LABEL_46;
      case 5:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 48, 5uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v35, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &v35);
        v15 = v35;
        if (!v35)
        {
          goto LABEL_47;
        }

        v36 = v35;
        goto LABEL_46;
    }

LABEL_55:
    v19 = __cxa_allocate_exception(0x10uLL);
    InferenceEngine::StringFormatter::StringFormatter(&v38, "layout %ld not supported", *(*(this + 17) + 4));
    MEMORY[0x1C692A510](v19, &v38);
    __cxa_throw(v19, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v13)
  {
    if (v13 == 1)
    {
      memset(&v38, 0, sizeof(v38));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 16, 1uLL);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v23, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
      InferenceEngine::DataTensor::set_shape(this, &v23);
      v15 = v23;
      if (!v23)
      {
        goto LABEL_47;
      }

      v24 = v23;
      goto LABEL_46;
    }

    if (v13 == 2)
    {
      memset(&v38, 0, sizeof(v38));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 24, 2uLL);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v26, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
      InferenceEngine::DataTensor::set_shape(this, &v26);
      v15 = v26;
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v20, 0, 0, 0);
  InferenceEngine::DataTensor::set_shape(this, &v20);
  v16 = v20;
  if (v20)
  {
    v21 = v20;
LABEL_49:
    operator delete(v16);
  }

LABEL_50:
  *(this + 11) = *(*(this + 17) + 136);
}

void sub_1C2FA9700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void InferenceEngine::DataTensor::get_3d_array<float>(InferenceEngine::DataTensor *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]))
    {
      InferenceEngine::DataTensor::get_3d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_3d_array<float>();
  }

  if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5478]))
  {
    InferenceEngine::DataTensor::get_3d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  InferenceEngine::DataTensor::get_shape(this, 0, __p);
  InferenceEngine::DataUtils::convert_data_to_3d_array<float>(v9, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1C2FA9948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v7, v4);
    v5 = std::string::insert(&v7, 0, "type must be BOOLean, but is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v8, exception);
  }

  *a2 = result[8];
  return result;
}

void sub_1C2FA9AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(void *a1, const void **a2)
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
    if (v12 == v6)
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

uint64_t InferenceEngine::MLInferenceModel::reset(InferenceEngine::MLInferenceModel *this)
{
  (*(**(this + 1) + 8))(*(this + 1));
  v2 = ***(this + 1);

  return v2();
}

void InferenceEngine::Mil2BnnsMilInferenceModel::prepare(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::prepare(this);
  v2 = *(this + 26) + *(this + 21);
  *(this + 34) = v2;
  *(this + 35) = malloc_type_malloc(16 * v2, 0x10A20408DAD38D9uLL);
  for (i = *(this + 20); i; i = *i)
  {
    v4 = i[5];
    if (v4)
    {
      v5 = **v4;
      if (v6)
      {
        v7 = i[6];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
LABEL_8:
    v8 = *(this + 30);
    v9 = *(this + 31);
    InferenceEngine::MilIO::get_io_name(v6, &__p);
    ArgumentPosition = BNNSGraphGetArgumentPosition();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(v6 + 32) = ArgumentPosition;
    if (*(this + 136) == 1)
    {
      v11 = *(v6 + 17);
    }

    else
    {
      v11 = *(v6 + 11);
    }

    data_size = InferenceEngine::DataTensor::get_data_size(v6);
    v13 = (*(this + 35) + 16 * *(v6 + 32));
    *v13 = v11;
    v13[1] = data_size;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  for (j = *(this + 25); j; j = *j)
  {
    v15 = j[5];
    if (v15)
    {
      v16 = **v15;
      if (v17)
      {
        v18 = j[6];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
LABEL_23:
    v19 = *(this + 30);
    v20 = *(this + 31);
    InferenceEngine::MilIO::get_io_name(v17, &__p);
    v21 = BNNSGraphGetArgumentPosition();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(v17 + 32) = v21;
    if (*(this + 136) == 1)
    {
      v22 = *(v17 + 17);
    }

    else
    {
      v22 = *(v17 + 11);
    }

    v23 = InferenceEngine::DataTensor::get_data_size(v17);
    v24 = (*(this + 35) + 16 * *(v17 + 32));
    *v24 = v22;
    v24[1] = v23;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v25 = *(this + 26) + *(this + 21);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  std::vector<std::vector<int>>::resize(this + 36, v25);
  if (v25)
  {
    v26 = *(this + 40);
    do
    {
      v27 = *(this + 41);
      if (v26 >= v27)
      {
        v28 = *(this + 39);
        v29 = (v26 - v28) >> 4;
        if ((v29 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v30 = v27 - v28;
        v31 = v30 >> 3;
        if (v30 >> 3 <= (v29 + 1))
        {
          v31 = v29 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_shape_t>>(this + 312, v32);
        }

        v33 = (16 * v29);
        *v33 = *&__p.__r_.__value_.__l.__data_;
        v26 = (16 * v29 + 16);
        v34 = *(this + 39);
        v35 = *(this + 40) - v34;
        v36 = 16 * v29 - v35;
        memcpy(v33 - v35, v34, v35);
        v37 = *(this + 39);
        *(this + 39) = v36;
        *(this + 40) = v26;
        *(this + 41) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v26++ = *&__p.__r_.__value_.__l.__data_;
      }

      *(this + 40) = v26;
      --v25;
    }

    while (v25);
  }
}

void sub_1C2FA9FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void Agglomerate::set<std::shared_ptr<FrontendFeature>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void Module::cache(uint64_t a1, __int128 *a2)
{
  std::recursive_mutex::lock((a1 + 208));
  if ((*(a1 + 160) & 1) == 0)
  {
    std::deque<std::shared_ptr<Agglomerate>>::push_back((a1 + 112), a2);
    Observable::emit((a1 + 8), "cache", 0);
  }

  std::recursive_mutex::unlock((a1 + 208));
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t Module::callback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  if (!v2)
  {
    return 0;
  }

  std::recursive_mutex::lock((v2 + 56));
  {
    std::recursive_mutex::unlock((v2 + 56));
    return 0;
  }

  v6 = *(*v4 + 8);
  v5 = *(*v4 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((v2 + 56));
  if (v6)
  {
    v9 = *a2;
    v10 = *(a2 + 16);
    v7 = *(v6 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    a2 = (*(*v7 + 48))(v7, &v9);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else if (v5)
  {
LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v6)
  {
    return 0;
  }

  return a2;
}

uint64_t InferenceEngine::P2ASoundStormIOProcessor::process_inputs(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "pred_enc_output");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(*buf);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, buf);
  v9 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "P2ASoundStormIOProcessor.cpp", 119, "B == 1");
  }

  (*(*a1 + 16))(&v52, a1, a2, a3);
  (*(*a1 + 24))(&v50, a1, a2, a3);
  (*(*a1 + 32))(&v48, a1, a2, a3);
  (*(*a1 + 48))(&v46, a1, a2, a3);
  (*(*a1 + 64))(&v44, a1, a2, a3);
  (*(*a1 + 40))(&v42, a1, a2, a3);
  (*(*a1 + 88))(&v40, a1, a2, a3);
  InferenceEngine::DataTensor::get_1d_array<float>(v42, buf);
  v10 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v10 >= 1.0)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(v48, buf);
    v14 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "prompt_attention");
    buf[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v15, buf);
    if (buf[0] == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, "prompt_k_");
      std::to_string(&v38, v14);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v38;
      }

      else
      {
        v16 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v39, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v55 = v18->__r_.__value_.__r.__words[2];
      *buf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v38, "prompt_v_");
      std::to_string(&__p, v14);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v38, p_p, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      v24 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
      if (!v24)
      {
        goto LABEL_75;
      }

      std::string::basic_string[abi:ne200100]<0>(&v38, "prompt_k");
      __p.__r_.__value_.__r.__words[0] = &v38;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v38.__r_.__value_.__l.__data_);
      v27 = v24[5];
      v26 = v24[6];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = v25[6];
      v25[5] = v27;
      v25[6] = v26;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      v29 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v39.__r_.__value_.__l.__data_);
      if (!v29)
      {
LABEL_75:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::string::basic_string[abi:ne200100]<0>(&v38, "prompt_v");
      __p.__r_.__value_.__r.__words[0] = &v38;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v38.__r_.__value_.__l.__data_);
      v32 = v29[5];
      v31 = v29[6];
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }

      v33 = v30[6];
      v30[5] = v32;
      v30[6] = v31;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      (*(*a1 + 56))(buf, a1, a2, a3);
      (*(*a1 + 72))(&v39, a1, a2, a3);
      if (v39.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39.__r_.__value_.__l.__size_);
      }

      v30 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    LogObject = InferenceEngine::Diagnostics_GetLogObject(v30);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Prepare P2ASoundStorm inputs finished for loop %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    v13 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_INFO, "Skip loop %d", buf, 8u);
    }
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1C2FAB220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v39 = *(v37 - 128);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(v37 - 112);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_vq_target(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, kaldi::quasar::Vocab **a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v20, "pred_enc_output");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v20);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p.__r_.__value_.__l.__data_);
  v9 = *(__p.__r_.__value_.__r.__words[0] + 8);
  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  if (!a3)
  {
    v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "num_vqs");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, &v18);
    v14 = v18;
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v15, &v18);
    v19 = v18;
    std::vector<float>::vector[abi:ne200100](v20, v14);
    std::vector<std::vector<float>>::vector[abi:ne200100](&__p, v9);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "target");
    InferenceEngine::DataTensor::build_from_2d_array<float>(v20, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "target");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p.__r_.__value_.__l.__data_);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v12;
  a4[1] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::Vocab::OOvWord(v12, &__p);
  v20[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_);
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = v16[6];
  v16[5] = v12;
  v16[6] = v11;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C2FAB600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = &a19;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_q_token_mask(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "pred_enc_output");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
  v9 = *(__p + 1);
  v22 = __p;
  operator delete(__p);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
  if (v22 == __p)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (*(__p + v11) == a3)
      {
        std::vector<float>::vector[abi:ne200100](v19, v9);
        std::vector<std::vector<float>>::vector[abi:ne200100](&v20, 1uLL);
        if (v19[0])
        {
          v19[1] = v19[0];
          operator delete(v19[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v19, "q_token_mask");
        InferenceEngine::DataTensor::build_from_2d_array<float>(v19, &v20);
      }

      ++v11;
    }

    while (v11 < (v22 - __p) >> 2);
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "q_token_mask");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v12[5];
  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v15 = *a4;
  kaldi::quasar::Vocab::OOvWord(*a4, &v20);
  v19[0] = &v20;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v20.__r_.__value_.__l.__data_);
  v17 = *(a4 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = v16[6];
  v16[5] = v15;
  v16[6] = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_1C2FAB960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>,0>(a1, a2);
}

void sub_1C2FABA5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>>(unsigned __int8 *a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  std::vector<float>::reserve(&v13, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v11);
  for (i = v13.__end_; !nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v12, v11); i = v8 + 1)
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v12);
    __x = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &__x);
    v7.__i_ = i;
    v8 = std::vector<int>::insert(&v13, v7, &__x).__i_;
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v12);
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v13.__begin_;
  *a2 = v13;
  return result;
}

void sub_1C2FABBA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

double nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>,0>(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  return nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>>(a1, a2);
}

void sub_1C2FABD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_1C2FABF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_layer_q(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v4, &v14);
  v5 = (v15 - v14) >> 2;
  if (v5 >= 2)
  {
    v6 = (v14 + 4);
    v7 = -v5;
    v8 = -1;
    do
    {
      if (*(v6 - 1) <= a2 && *v6 > a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "layer_q");
        v9 = -v8 + -1.0;
        v11 = 0;
        v12 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v9, &__p, 1uLL);
        InferenceEngine::DataTensor::build_from_1d_array<float>(v13, &__p);
      }

      --v8;
      ++v6;
    }

    while (v7 != v8);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "layer_q");
  v9 = ((v15 - v14) >> 2) + -1.0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v9, &__p, 1uLL);
  InferenceEngine::DataTensor::build_from_1d_array<float>(v13, &__p);
}

void sub_1C2FAC1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  v25 = *(v21 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::build_from_1d_array<float>(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  __p = ((a2[1] - *a2) >> 2);
  memset(v2, 0, sizeof(v2));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v2, &__p, v4, 1uLL);
  InferenceEngine::DataUtils::get_type_string<float>(&__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1C2FAC304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_pred_data(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v24, "pred_enc_output");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v24);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "target");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v24);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      std::string::basic_string[abi:ne200100]<0>(&v24, "q_token_mask");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v24);
      if (v9)
      {
        v11 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_shape(v5, 0, &v24);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_3d_array<float>(v5, &v21);
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v24, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
        v18 = &v21;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
        InferenceEngine::DataTensor::get_3d_array<float>(v8, &v18);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v21, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 3));
        v17[0] = &v18;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v17);
        InferenceEngine::DataTensor::unsqueeze(v11, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v11, v17);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v18, *v17[0], v17[0][1], 0xAAAAAAAAAAAAAAABLL * ((v17[0][1] - *v17[0]) >> 3));
        __p[0] = v17;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
        InferenceEngine::DataTensor::squeeze(v11, 2);
        memset(v15, 0, sizeof(v15));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v15, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v15, v14, 1, v16);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v16, v13, 1, v17);
        __p[0] = v13;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v16;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v14;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v15;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        std::string::basic_string[abi:ne200100]<0>(__p, "pred_data");
        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v17);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C2FAC778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v34 + 8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  __p = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a28 = &a31;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = v35 - 144;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v35 - 144) = v35 - 120;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_1C2FAC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a10 = &a25;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  JUMPOUT(0x1C2FAC834);
}

void sub_1C2FAC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, char a28)
{
  a25 = &a28;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  JUMPOUT(0x1C2FAC844);
}

void sub_1C2FAC8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  a28 = (v28 - 144);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  JUMPOUT(0x1C2FAC854);
}

void sub_1C2FAC904()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C2FAC860);
}

void sub_1C2FAC91C()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C2FAC86CLL);
}

void sub_1C2FAC934()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C2FAC878);
}

void InferenceEngine::DataTensor::squeeze(InferenceEngine::DataTensor *this, int a2)
{
  if ((a2 >= 0) >= ((*(this + 8) - *(this + 7)) >> 3))
  {
    InferenceEngine::DataTensor::squeeze();
  }

  InferenceEngine::DataTensor::get_shape(this, 0, &v10);
  if (a2 >= ((v11 - v10) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(v10 + a2) != 1)
  {
    __assert_rtn("squeeze", "DataTensor.cpp", 242, "get_shape().at(dimension) == 1");
  }

  v11 = v10;
  operator delete(v10);
  InferenceEngine::DataTensor::get_shape(this, 0, &v10);
  v4 = v10;
  v5 = v10 + 8 * a2;
  v6 = v11 - (v5 + 8);
  if (v11 != v5 + 8)
  {
    memmove(v5, v5 + 8, v11 - (v5 + 8));
    v4 = v10;
  }

  v11 = &v5[v6];
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v4, &v5[v6], (&v5[v6] - v4) >> 3);
  InferenceEngine::DataTensor::set_shape(this, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_1C2FACA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::BaseInferenceController::execute(InferenceEngine::MilInferenceModel **this)
{
  v2 = 0;
  v37 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  while (1)
  {
    InferenceEngine::MLInferenceModel::get_model_parameters(this, buf);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(buf, "loop");
    LODWORD(v31.__r_.__value_.__l.__data_) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v4, &v31);
    data = v31.__r_.__value_.__l.__data_;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(buf);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v34, buf[0]);
    if (v2 >= data)
    {
      break;
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = this[8];
    if (!v8 || !(**v8)(v8, this + 24, v2))
    {
      InferenceEngine::MLInferenceModel::get_all_input_names(this, buf);
      v9 = *buf;
      v10 = *v34;
      while (v9 != v10)
      {
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, *v9, *(v9 + 1));
        }

        else
        {
          v11 = *v9;
          v31.__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&v31.__r_.__value_.__l.__data_ = v11;
        }

        v30.__r_.__value_.__r.__words[0] = &v31;
        if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v31.__r_.__value_.__l.__data_)[5])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v26 = &v31;
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v31.__r_.__value_.__r.__words[0];
          }

          InferenceEngine::StringFormatter::StringFormatter(&v30, "Model input %s is not set correctly!", v26);
          MEMORY[0x1C692A510](exception, &v30);
          __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
        }

        v30.__r_.__value_.__r.__words[0] = &v31;
        v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v31.__r_.__value_.__l.__data_);
        v13 = v12[6];
        v28 = v12[5];
        v29 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        InferenceEngine::MLInferenceModel::set_input(this, &v28);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v9 = (v9 + 24);
      }

      v31.__r_.__value_.__r.__words[0] = buf;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
      InferenceEngine::MLInferenceModel::execute(this);
      InferenceEngine::MLInferenceModel::get_all_output_names(this, buf);
      v15 = *buf;
      v14 = *v34;
      while (v15 != v14)
      {
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          v31.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&v31.__r_.__value_.__l.__data_ = v16;
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
        }

        else
        {
          v27 = v31;
        }

        InferenceEngine::MLInferenceModel::get_output(this);
        v32 = &v31;
        v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v31.__r_.__value_.__l.__data_);
        v18 = *&v30.__r_.__value_.__l.__data_;
        *&v30.__r_.__value_.__l.__data_ = 0uLL;
        v19 = v17[6];
        *(v17 + 5) = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          if (v30.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30.__r_.__value_.__l.__size_);
          }
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v15 = (v15 + 24);
      }

      v31.__r_.__value_.__r.__words[0] = buf;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
      InferenceEngine::MLInferenceModel::reset(this);
      v6 = this[8];
      if (v6)
      {
        v6 = (*(*v6 + 8))(v6, this + 24, v2);
        if (v6)
        {
          break;
        }
      }

      LogObject = InferenceEngine::Diagnostics_GetLogObject(v6);
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v2;
        _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Loop %d has completed!", buf, 8u);
      }

      v3 = v3 + ((std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000);
    }

    v2 = (v2 + 1);
  }

  v21 = InferenceEngine::Diagnostics_GetLogObject(v6);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v21, OS_LOG_TYPE_INFO, "Inference completed!", buf, 2u);
  }

  v23 = InferenceEngine::Diagnostics_GetLogObject(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = v2;
    *v34 = 2048;
    *&v34[2] = v3;
    v35 = 2048;
    v36 = (v3 / v2) / 1000.0;
    _os_log_impl(&dword_1C2F95000, v23, OS_LOG_TYPE_INFO, "%i steps, total_time_microseconds: %.3f us, average time per step: %.6f ms", buf, 0x1Cu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void InferenceEngine::P2ASoundStormIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "target");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
    if (v9)
    {
      v10 = v9[6];
      v11 = v9[5];
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v11, a3);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v8, __p);
      (*(*a1 + 80))(a1, a2, __p);
      std::string::basic_string[abi:ne200100]<0>(buf, "target");
      InferenceEngine::DataTensor::build_from_3d_array<float>(buf, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C2FAD2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a13;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1C2FAD388(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C2FAD380);
}

void InferenceEngine::SoundStormIOProcessor::check_outputs<int>(uint64_t a1, InferenceEngine::DataTensor **a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
  v16[0] = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v7, v16);
  v8 = InferenceEngine::DataTensor::contain_value<int>(v6, v16[0]);
  v9 = v8;
  if (v8 >= 1)
  {
    LogObject = InferenceEngine::Diagnostics_GetLogObject(v8);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
      v16[0] = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v14, v16);
      v15 = v16[0];
      v16[0] = 67109632;
      v16[1] = v9;
      v17 = 1024;
      v18 = v15;
      v19 = 1024;
      v20 = a3;
      _os_log_error_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_ERROR, "Found %d appearances of invalid value %d in loop %d", v16, 0x14u);
    }
  }

  v11 = InferenceEngine::DataTensor::contain_nan<int>(*a2);
  if (v11 >= 1)
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(v9, a3, v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *InferenceEngine::DataTensor::get_1d_array<int>@<X0>(InferenceEngine::DataTensor *this@<X0>, void **a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5468]))
    {
      InferenceEngine::DataTensor::get_1d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

  if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5478]))
  {
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  size = InferenceEngine::DataTensor::get_size(this);
  std::vector<int>::vector[abi:ne200100](a2, size);
  v11 = *a2;

  return memcpy(v11, v9, 4 * size);
}

uint64_t InferenceEngine::DataTensor::contain_value<int>(InferenceEngine::DataTensor *a1, float a2)
{
  InferenceEngine::DataTensor::get_1d_array<int>(a1, &v7);
  if (v7 == v8)
  {
    v3 = 0;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_8;
  }

  LODWORD(v3) = 0;
  v4 = v7;
  do
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      v3 = (v3 + 1);
    }

    else
    {
      v3 = v3;
    }
  }

  while (v4 != v8);
  if (v7)
  {
LABEL_8:
    v8 = v7;
    operator delete(v7);
  }

  return v3;
}

uint64_t InferenceEngine::DataTensor::contain_nan<int>(InferenceEngine::DataTensor *a1)
{
  InferenceEngine::DataTensor::get_1d_array<int>(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void InferenceEngine::SoundStormIOProcessor::update_vq_target(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "q_token_mask");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
  if (v5)
  {
    v6 = v5[6];
    v29 = v5[5];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v36 < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "layer_q");
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
    if (v7)
    {
      v9 = v7[5];
      v8 = v7[6];
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (v36 < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "pred_code");
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
      if (v10)
      {
        v12 = v10[5];
        v11 = v10[6];
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "index_b");
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
        if (v13)
        {
          v14 = v13[5];
          v15 = v13[6];
          if (v15)
          {
            atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
          }

          if (v36 < 0)
          {
            operator delete(__p);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "index_t");
          v16 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
          if (v16)
          {
            v18 = v16[5];
            v17 = v16[6];
            if (v17)
            {
              atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
            }

            if (v36 < 0)
            {
              operator delete(__p);
            }

            InferenceEngine::DataTensor::get_1d_array<int>(v12, &__p);
            InferenceEngine::DataTensor::get_1d_array<int>(v14, &v32);
            InferenceEngine::DataTensor::get_1d_array<int>(v18, v31);
            if (v33 - v32 == v31[1] - v31[0])
            {
              if (v33 - v32 == v35 - __p)
              {
                InferenceEngine::DataTensor::get_1d_array<float>(v9, v30);
                v19 = *v30[0];
                v30[1] = v30[0];
                operator delete(v30[0]);
                InferenceEngine::DataTensor::get_2d_array<float>(v29, v30);
                if (v35 != __p)
                {
                  v21 = 0;
                  if (((v35 - __p) >> 2) <= 1)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v22 = (v35 - __p) >> 2;
                  }

                  v23 = v30[0];
                  do
                  {
                    v24 = *(v32 + v21);
                    v25 = *(v31[0] + v21);
                    if (*(v23[3 * v24] + 4 * v25) != 0.0)
                    {
                      LogObject = InferenceEngine::Diagnostics_GetLogObject(v20);
                      v20 = os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR);
                      if (v20)
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v24;
                        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
                        *(&buf.__r_.__value_.__r.__words[1] + 2) = v25;
                        _os_log_error_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_ERROR, "Duplicate value in index_t found in the outputs! q_mask_vector[%d][%d] is already predicted!", &buf, 0xEu);
                      }
                    }

                    v23 = v30[0];
                    *(*(v30[0] + 3 * v24) + 4 * v25) = 1065353216;
                    *(*(*(*a3 + 24 * v24) + 24 * v25) + 4 * v19) = *(__p + v21++);
                  }

                  while (v22 != v21);
                }

                kaldi::quasar::Vocab::OOvWord(v29, &buf);
                InferenceEngine::DataTensor::build_from_2d_array<float>(&buf, v30);
              }

              v27 = "top_k_b_index_vector.size() == top_k_pred_code_vector.size()";
              v28 = 178;
            }

            else
            {
              v27 = "top_k_b_index_vector.size() == top_k_t_index_vector.size()";
              v28 = 177;
            }

            __assert_rtn("update_vq_target", "SoundStormIOProcessor.cpp", v28, v27);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C2FADC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  *(v35 - 144) = &a20;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void *InferenceEngine::DataTensor::get_1d_array<float>@<X0>(InferenceEngine::DataTensor *this@<X0>, void **a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]))
    {
      InferenceEngine::DataTensor::get_1d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

  if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5478]))
  {
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  size = InferenceEngine::DataTensor::get_size(this);
  std::vector<float>::vector[abi:ne200100](a2, size);
  v11 = *a2;

  return memcpy(v11, v9, 4 * size);
}

void InferenceEngine::DataTensor::get_2d_array<float>(InferenceEngine::DataTensor *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]))
    {
      InferenceEngine::DataTensor::get_2d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_2d_array<float>();
  }

  if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5478]))
  {
    InferenceEngine::DataTensor::get_2d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  InferenceEngine::DataTensor::get_shape(this, 0, __p);
  InferenceEngine::DataUtils::convert_data_to_2d_array<float>(v9, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1C2FAE090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataUtils::convert_data_to_2d_array<float>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    InferenceEngine::DataUtils::convert_data_to_2d_array<float>();
  }

  v7 = *v4;
  std::vector<float>::vector[abi:ne200100](__p, v4[1]);
  std::vector<std::vector<float>>::vector[abi:ne200100](a3, v7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = *a2;
  if (**a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      memcpy(*(*a3 + v9), (a1 + 4 * v8[1] * v10++), 4 * v8[1]);
      v8 = *a2;
      v9 += 24;
    }

    while (v10 < **a2);
  }
}

void sub_1C2FAE17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MilInferenceModel::get_all_output_names(InferenceEngine::MilInferenceModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "model_outputs");
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, &__p.__r_.__value_.__l.__data_, v8, &v11);
  v6 = v8;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = v11;
  for (i = v12; v4 != i; v4 += 16)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v6, v4);
    std::string::basic_string[abi:ne200100]<0>(v8, "name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", &v6, v8, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6);
  }

  __p.__r_.__value_.__r.__words[0] = &v11;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C2FAE2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    v5 = *(*v4 + 16);
    *a1 = *(*v4 + 8);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void Module::process(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock((a1 + 208));
  *(a1 + 160) = 0;
  std::recursive_mutex::unlock((a1 + 208));
  v4 = a2[1];
  v18 = *a2;
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 80))(a1, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::recursive_mutex::lock((a1 + 208));
  if (*(a1 + 160) == 1)
  {
    v5 = *(a1 + 120);
    v6 = *(a1 + 128);
    if (v6 == v5)
    {
      v7 = (a1 + 152);
      v6 = *(a1 + 120);
    }

    else
    {
      v7 = (a1 + 152);
      v8 = *(a1 + 144);
      v9 = &v5[v8 >> 8];
      v10 = *v9;
      v11 = *v9 + 16 * v8;
      v12 = *(v5 + (((*(a1 + 152) + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 152) + v8);
      if (v11 != v12)
      {
        do
        {
          v13 = *(v11 + 8);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            v10 = *v9;
          }

          v11 += 16;
          if (v11 - v10 == 4096)
          {
            v14 = v9[1];
            ++v9;
            v10 = v14;
            v11 = v14;
          }
        }

        while (v11 != v12);
        v5 = *(a1 + 120);
        v6 = *(a1 + 128);
      }
    }

    *v7 = 0;
    v15 = v6 - v5;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v5);
        v16 = *(a1 + 128);
        v5 = (*(a1 + 120) + 8);
        *(a1 + 120) = v5;
        v15 = (v16 - v5) >> 3;
      }

      while (v15 > 2);
    }

    if (v15 == 1)
    {
      v17 = 128;
      goto LABEL_21;
    }

    if (v15 == 2)
    {
      v17 = 256;
LABEL_21:
      *(a1 + 144) = v17;
    }
  }

  std::recursive_mutex::unlock((a1 + 208));
}

void sub_1C2FAE5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t StreamingPipeline::process(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(result + 8);
  if (v1 != *(result + 16) && (*(result + 104) & 1) == 0)
  {
    v2 = v1[1];
    v8 = *v1;
    v9 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    *&v4 = __p;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(1uLL);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2FAF428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24)
{
  operator delete(v25);
  if (a11)
  {
    operator delete(a11);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::deque<std::shared_ptr<Connection>>::~deque[abi:ne200100](&a16);
  std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::deque<std::shared_ptr<Module>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v5 - v6) - 1;
  }

  v10 = result[4];
  v9 = result[5];
  v11 = v9 + v10;
  if (v8 == v9 + v10)
  {
    if (v10 < 0x100)
    {
      v12 = result[3];
      v13 = &v12[-*result];
      if (v7 < v13)
      {
        if (v12 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v12 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 >> 2;
      }

      v17 = v3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v14);
    }

    result[4] = v10 - 256;
    *&v16 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(result, &v16);
    v6 = v3[1];
    v9 = v3[5];
    v11 = v9 + v3[4];
  }

  v15 = *a2;
  *(*&v6[(v11 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v11) = *a2;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    v9 = v3[5];
  }

  v3[5] = v9 + 1;
  return result;
}

void sub_1C2FAF764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AsyncContainerModule::retrieve(AsyncContainerModule *this@<X0>, void *a2@<X8>)
{
  if (*(this + 160) == 1)
  {
    v4 = *(this + 15);
    v5 = *(this + 16);
    if (v5 == v4)
    {
      v6 = (this + 152);
      v5 = *(this + 15);
    }

    else
    {
      v6 = (this + 152);
      v7 = *(this + 18);
      v8 = &v4[v7 >> 8];
      v9 = *v8;
      v10 = *v8 + 16 * v7;
      v11 = *(v4 + (((*(this + 19) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 152) + v7);
      if (v10 != v11)
      {
        do
        {
          v12 = *(v10 + 8);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            v9 = *v8;
          }

          v10 += 16;
          if (v10 - v9 == 4096)
          {
            v13 = v8[1];
            ++v8;
            v9 = v13;
            v10 = v13;
          }
        }

        while (v10 != v11);
        v4 = *(this + 15);
        v5 = *(this + 16);
      }
    }

    *v6 = 0;
    v23 = v5 - v4;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v4);
        v24 = *(this + 16);
        v4 = (*(this + 15) + 8);
        *(this + 15) = v4;
        v23 = (v24 - v4) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 128;
    }

    else
    {
      if (v23 != 2)
      {
LABEL_40:

        Module::retrieve(this, a2);
        return;
      }

      v25 = 256;
    }

    *(this + 18) = v25;
    goto LABEL_40;
  }

  if (*(this + 472) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Exception in AsyncContainerModule worker.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(this + 19))
  {
    goto LABEL_40;
  }

  v14 = *(this + 36);
  v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v14 + 24);
  v29.__m_ = (v14 + 24);
  v29.__owns_ = 1;
  std::mutex::lock((v14 + 24));
  v17 = *(v14 + 136);
  if ((v17 & 8) != 0)
  {
    v26 = 2;
    goto LABEL_48;
  }

  if ((v17 & 4) != 0)
  {
    v26 = 0;
    goto LABEL_48;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v15.__d_.__rep_)
  {
    if (std::chrono::steady_clock::now().__d_.__rep_ < v15.__d_.__rep_)
    {
      v18.__d_.__rep_ = v15.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v18.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v19.__d_.__rep_)
        {
          if (v19.__d_.__rep_ < 1)
          {
            if (v19.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_24;
            }

            v20 = 0x8000000000000000;
          }

          else
          {
            if (v19.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_25;
            }

LABEL_24:
            v20 = 1000 * v19.__d_.__rep_;
LABEL_25:
            if (v20 > (v18.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v21.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_28;
            }
          }
        }

        else
        {
          v20 = 0;
        }

        v21.__d_.__rep_ = v20 + v18.__d_.__rep_;
LABEL_28:
        std::condition_variable::__do_timed_wait((v14 + 88), &v29, v21);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v22 = *(v14 + 136);
    if ((v22 & 4) != 0)
    {
      goto LABEL_46;
    }
  }

  v22 = *(v14 + 136);
LABEL_46:
  v26 = ((v22 >> 2) & 1) == 0;
  if (v29.__owns_)
  {
    m = v29.__m_;
LABEL_48:
    std::mutex::unlock(m);
  }

  if (v26)
  {
    v29.__m_ = (this + 360);
    v29.__owns_ = 1;
    std::mutex::lock((this + 360));
    std::condition_variable::wait((this + 424), &v29);
    if (*(this + 472) == 1)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Exception in AsyncContainerModule worker.");
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Module::retrieve(this, a2);
    if (v29.__owns_)
    {
      std::mutex::unlock(v29.__m_);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1C2FAFAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  __cxa_free_exception(v10);
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

void sub_1C2FAFB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Observable::emit(Observable *this, char *a2, void *a3)
{
  std::mutex::lock((this + 24));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v13 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(v6 + 56);
  v7 = *(v6 + 64);
  while (v8 != v7)
  {
    v9 = *v8;
    __p[0] = a3;
    v10 = *(v9 + 48);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, __p);
    v8 += 2;
  }

  std::mutex::unlock((this + 24));
}

void sub_1C2FAFC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v14 + 24));
  _Unwind_Resume(a1);
}

void Module::retrieve(Module *this@<X0>, uint64_t a2@<X8>)
{
  std::recursive_mutex::lock((this + 208));
  if (*(this + 19))
  {
    v4 = *(*(*(this + 15) + ((*(this + 18) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 18));
    *a2 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<Agglomerate>>::pop_front(this + 14);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  std::recursive_mutex::unlock((this + 208));
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<kaldi::nnet1::Nnet>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void SharedObjectPool::get_if<TrackSubstitutions>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    v5 = *(*v4 + 16);
    *a1 = *(*v4 + 8);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MarkerRecord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MarkerRecord>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  a1[1] = v2;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81A1268, MEMORY[0x1E69E5280]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81A1268, MEMORY[0x1E69E5280]);
}

void sub_1C2FB0284(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void FrontendImpl::synthesize(void *a1, char **a2)
{
  v2 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = Frontend::check_hydra_fe(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v7 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v8 = os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT);
  v88 = v2;
  if (v6)
  {
    if (v8)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1C2F95000, v7, OS_LOG_TYPE_DEFAULT, "Detected Scalable FE in runtime.", &buf, 2u);
    }

    Diagnostics::log(5, "Detected Scalable FE in runtime.", v9);
    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v89, v2[7]);
    v10 = v2[14];
    v11 = v2[15];
    if (v10 == v11)
    {
      v22 = 0;
    }

    else
    {
      do
      {
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&buf, *v10, *(v10 + 1));
        }

        else
        {
          v12 = *v10;
          buf.__r_.__value_.__r.__words[2] = *(v10 + 2);
          *&buf.__r_.__value_.__l.__data_ = v12;
        }

        v13 = *(a2 + 23);
        if (v13 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        if (v13 < 0)
        {
          v13 = a2[1];
        }

        v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v16 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v19 = &v13[v14];
          if (v13 >= size)
          {
            v24 = p_buf->__r_.__value_.__s.__data_[0];
            v25 = v14;
            do
            {
              v26 = &v13[-size];
              if (v26 == -1)
              {
                break;
              }

              v27 = memchr(v25, v24, (v26 + 1));
              if (!v27)
              {
                break;
              }

              v20 = v27;
              if (!memcmp(v27, p_buf, size))
              {
                goto LABEL_28;
              }

              v25 = v20 + 1;
              v13 = (v19 - (v20 + 1));
            }

            while (v13 >= size);
          }

          v20 = v19;
LABEL_28:
          v22 = v20 != v19 && v20 - v14 != -1;
        }

        else
        {
          v22 = 1;
        }

        v2 = v88;
        if (v15 < 0)
        {
          operator delete(v16);
        }

        v10 = (v10 + 24);
        v23 = v10 == v11 || v22;
      }

      while (v23 != 1);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "fallback list");
    if (v22)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v28 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        p_p = &__p;
        if (v93 < 0)
        {
          p_p = __p;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = p_p;
        _os_log_impl(&dword_1C2F95000, v28, OS_LOG_TYPE_DEBUG, "Fallback for %s", &buf, 0xCu);
      }

      v31 = &__p;
      if (v93 < 0)
      {
        v31 = __p;
      }

      Diagnostics::log(7, "Fallback for %s", v29, v31);
      if (v2[11])
      {
        operator new();
      }

      v39 = v88[4];
      v88[3] = 0;
      v88[4] = 0;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      v40 = v88[2];
      v88[1] = 0;
      v88[2] = 0;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v41 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        v43 = &__p;
        if (v93 < 0)
        {
          v43 = __p;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v43;
        _os_log_impl(&dword_1C2F95000, v41, OS_LOG_TYPE_DEBUG, "Fallback pipeline initialized for %s", &buf, 0xCu);
      }

      v44 = &__p;
      if (v93 < 0)
      {
        v44 = __p;
      }

      Diagnostics::log(7, "Fallback pipeline initialized for %s", v42, v44);
      v45 = v88[8];
      v96 = v88[7];
      v97 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      GryphonPipelineFactory::nashvilleFE_backend_pipeline();
    }

    if (!v2[3])
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v32 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        v34 = &__p;
        if (v93 < 0)
        {
          v34 = __p;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v34;
        _os_log_impl(&dword_1C2F95000, v32, OS_LOG_TYPE_DEBUG, "Reinit normal pipeline for leaving %s", &buf, 0xCu);
      }

      v35 = &__p;
      if (v93 < 0)
      {
        v35 = __p;
      }

      v36 = Diagnostics::log(7, "Reinit normal pipeline for leaving %s", v33, v35);
      v37 = FrontendModuleBroker::instance(v36);
      v2 = v88;
      v38 = v88[5];
      if (*(v38 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *(v38 + 48), *(v38 + 56));
        v2 = v88;
        v38 = v88[5];
      }

      else
      {
        buf = *(v38 + 48);
      }

      v96 = 0;
      v97 = 0;
      FrontendModuleBroker::create(&v98, v37, &buf, &v96, v38);
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v46 = v98;
      if (*(&v98 + 1))
      {
        atomic_fetch_add_explicit((*(&v98 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v47 = v2[4];
      *(v2 + 3) = v46;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v94 = v46;
      if (*(&v46 + 1))
      {
        atomic_fetch_add_explicit((*(&v46 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      FrontendModule::head(&v95, &v94);
      v48 = v95;
      if (*(&v95 + 1))
      {
        atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v49 = v2[2];
      *(v2 + 1) = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (*(&v48 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
      }

      if (*(&v94 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v94 + 1));
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }
    }

    if (v2[11])
    {
      v50 = v2[20];
      for (i = v2[21]; v50 != i; v50 += 2)
      {
        v52 = v50[1];
        *&v98 = *v50;
        *(&v98 + 1) = v52;
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        (*(*v2 + 64))(v2, &v98);
        if (*(&v98 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v98 + 1));
        }
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](v2 + 20);
    }

    v53 = v2[12];
    v2[11] = 0;
    v2[12] = 0;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v93 < 0)
    {
      operator delete(__p);
    }

    v54 = v89;
    if (v89)
    {
      LOBYTE(__p) = 1;
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v55 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1C2F95000, v55, OS_LOG_TYPE_DEFAULT, "Emitting tts.feature.hydra_frontend event", &buf, 2u);
      }

      Diagnostics::log(5, "Emitting tts.feature.hydra_frontend event", v56);
      Observable::emit(v54, "tts.feature.hydra_frontend", &__p);
    }

    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1C2F95000, v7, OS_LOG_TYPE_DEFAULT, "Detected Hybrid FE in runtime.", &buf, 2u);
    }

    Diagnostics::log(5, "Detected Hybrid FE in runtime.", v9);
  }

  (*(*v2[3] + 24))(v2[3]);
  (*(*v2[1] + 56))(v2[1], a2);
  *(v2 + 104) = 0;
  if ((*(*v2[3] + 56))())
  {
    v57 = 0;
    do
    {
      if (v2[13])
      {
        break;
      }

      memset(&buf, 0, sizeof(buf));
      v58 = (*(**(v2[5] + 160) + 64))(*(v2[5] + 160));
      if (v58[1] != *v58)
      {
        (*(**(v2[5] + 160) + 56))(&__p);
        v59 = __p;
        if (__p)
        {
          if (v59 + 8 == v60)
          {
            v66 = buf.__r_.__value_.__l.__size_;
          }

          else
          {
            v61 = *(*(v60 + 40) + 8);
            v63 = *v61;
            v62 = v61[1];
            v64 = v62 - *v61;
            v65 = buf.__r_.__value_.__r.__words[2];
            v66 = buf.__r_.__value_.__r.__words[0];
            if (buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__r.__words[0] < v64)
            {
              if (buf.__r_.__value_.__r.__words[0])
              {
                v67 = buf.__r_.__value_.__l.__size_;
                v68 = buf.__r_.__value_.__r.__words[0];
                if (buf.__r_.__value_.__l.__size_ != buf.__r_.__value_.__r.__words[0])
                {
                  do
                  {
                    if (*(v67 - 1) < 0)
                    {
                      operator delete(*(v67 - 24));
                    }

                    v67 -= 56;
                  }

                  while (v67 != v66);
                  v68 = buf.__r_.__value_.__r.__words[0];
                }

                buf.__r_.__value_.__l.__size_ = v66;
                operator delete(v68);
                v65 = 0;
                memset(&buf, 0, sizeof(buf));
              }

              v69 = 0x6DB6DB6DB6DB6DB7 * (v64 >> 3);
              if (v69 <= 0x492492492492492)
              {
                v70 = 0x6DB6DB6DB6DB6DB7 * (v65 >> 3);
                if (2 * v70 > v69)
                {
                  v69 = 2 * v70;
                }

                if (v70 >= 0x249249249249249)
                {
                  v71 = 0x492492492492492;
                }

                else
                {
                  v71 = v69;
                }

                if (v71 <= 0x492492492492492)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<TTSSynthesizer::Marker>>(v71);
                }
              }

              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v72 = buf.__r_.__value_.__l.__size_;
            if (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0] >= v64)
            {
              if (v63 != v62)
              {
                do
                {
                  v78 = v66;
                  v80 = *&v63->__r_.__value_.__l.__data_;
                  v81 = *&v63->__r_.__value_.__r.__words[2];
                  v79 = (v63 + 32);
                  *&v66->__r_.__value_.__l.__data_ = v80;
                  *&v66->__r_.__value_.__r.__words[2] = v81;
                  v82 = (v66 + 32);
                  std::string::operator=(v82, v79);
                  v63 = v79 + 1;
                  v66 = v82 + 1;
                }

                while (v63 != v62);
                v66 = (v78 + 56);
                v72 = buf.__r_.__value_.__l.__size_;
              }

              while (v72 != v66)
              {
                if (*(v72 - 1) < 0)
                {
                  operator delete(*(v72 - 24));
                }

                v72 -= 56;
              }
            }

            else
            {
              v73 = (v63 + buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]);
              if (buf.__r_.__value_.__l.__size_ != buf.__r_.__value_.__r.__words[0])
              {
                do
                {
                  v75 = *&v63->__r_.__value_.__l.__data_;
                  v76 = *&v63->__r_.__value_.__r.__words[2];
                  v74 = (v63 + 32);
                  *&v66->__r_.__value_.__l.__data_ = v75;
                  *&v66->__r_.__value_.__r.__words[2] = v76;
                  v77 = (v66 + 32);
                  std::string::operator=(v77, v74);
                  v63 = v74 + 1;
                  v66 = v77 + 1;
                }

                while (v63 != v73);
                v72 = buf.__r_.__value_.__l.__size_;
              }

              v66 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TTSSynthesizer::Marker>,TTSSynthesizer::Marker*,TTSSynthesizer::Marker*,TTSSynthesizer::Marker*>(&buf, v73, v62, v72);
            }

            buf.__r_.__value_.__l.__size_ = v66;
          }

          for (j = buf.__r_.__value_.__r.__words[0]; j != v66; j += 56)
          {
            *(j + 24) += v57;
          }

          v84 = __p;
          if (v84 + 8 != v85)
          {
            v57 += (*(*(*(v85 + 40) + 8) + 64) - *(*(*(v85 + 40) + 8) + 56)) >> 2;
          }

          v2 = v88;
        }

        if (v92)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }
      }

      __p = &buf;
      std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100](&__p);
    }

    while (((*(*v2[3] + 56))(v2[3]) & 1) != 0);
  }

  v86 = *MEMORY[0x1E69E9840];
}

void sub_1C2FB10B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void ExtractFeaturesImpl::generate_tokens(ExtractFeaturesImpl *this)
{
  v187 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock((this + 712));
  (*(*this + 96))(this);
  if (*(this + 8))
  {
    v2 = *MEMORY[0x1E69E9840];

    std::recursive_mutex::unlock((this + 712));
    return;
  }

  v3 = (this + 472);
  *(this + 84) = 1;
  v174 = (this + 160);
  for (i = 1; ; ++i)
  {
    (*(**(this + 2) + 16))(&v176);
    v5 = *&v176.__r_.__value_.__l.__data_;
    *&v176.__r_.__value_.__l.__data_ = 0uLL;
    v6 = *(this + 60);
    *v3 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      v7 = *v3;
      if (v176.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v176.__r_.__value_.__l.__size_);
        if (!v7)
        {
          goto LABEL_142;
        }

        v7 = *v3;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = v5;
    }

    if (!v7)
    {
      goto LABEL_142;
    }

LABEL_12:
    v9 = v7 + 8;
    if ((v7 + 8) == v8)
    {
      *(this + 61) = 0;
      goto LABEL_129;
    }

    v10 = *(v8 + 40);
    v12 = *(v10 + 8);
    v11 = v12;
    *(this + 61) = v10 + 8;
    if (v12 > 1885892461)
    {
      v13 = v11 == 1952807028 || v11 == 1885892462;
      if (!v13)
      {
        goto LABEL_129;
      }

      if (v9 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v14 + 40) + 8;
      }

      v18 = *(*(v10 + 56) + 16);
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      memset(v177, 0, sizeof(v177));
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
      v21 = *(v18 + 23);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v21 = *(v18 + 8);
      }

      if (v20 + v19 <= v21)
      {
        std::string::basic_string(&buf, v18, v19, v20, &v184);
        if (SHIBYTE(v177[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v177[1].__r_.__value_.__l.__data_);
        }

        v177[1] = buf;
      }

      else
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v22 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          v23 = *(this + 61);
          v25 = *(v23 + 8);
          v24 = *(v23 + 16);
          Censor::global_plaintext(&v184, v18);
          v26 = (v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v184 : v184.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218498;
          *(buf.__r_.__value_.__r.__words + 4) = v25;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v24 + v25;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
          v186 = v26;
          _os_log_impl(&dword_1C2F95000, v22, OS_LOG_TYPE_ERROR, "Invalid word range: [%lu, %lu) in text: '%s'", &buf, 0x20u);
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v184.__r_.__value_.__l.__data_);
          }
        }

        v27 = *(this + 61);
        v29 = *(v27 + 8);
        v28 = *(v27 + 16);
        Censor::global_plaintext(&buf, v18);
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        Diagnostics::log(3, "Invalid word range: [%lu, %lu) in text: '%s'", v30, v29, v28 + v29, p_buf);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        MEMORY[0x1C692A640](&v177[1], "");
      }

      memset(&buf, 0, sizeof(buf));
      v32 = *v3;
      if (v32 + 8 != v33)
      {
        if ((*(*(v33 + 40) + 9) & 1) == 0)
        {
          ExtractFeaturesImpl::punctuation(&v184, this, i);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          buf = v184;
          v34 = *(this + 61);
          if (*v34 != 1952807028 || *(v34 + 16))
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v34 + 24), &buf.__r_.__value_.__l.__data_, &v184);
            if (SHIBYTE(v177[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v177[0].__r_.__value_.__l.__data_);
            }

            v177[0] = v184;
          }
        }

        v35 = *(this + 61);
        if (*v35 == 1952807028 && !*(v35 + 16))
        {
          size = HIBYTE(v177[0].__r_.__value_.__r.__words[2]);
          if ((v177[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v177[0].__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            v37 = *(v35 + 47);
            if (v37 < 0)
            {
              v37 = *(v35 + 32);
            }

            if (v37)
            {
              std::string::operator=(v177, (v35 + 24));
            }
          }
        }
      }

      LODWORD(v176.__r_.__value_.__r.__words[1]) = *v15;
      v38 = *(this + 61);
      v39 = *(v38 + 47);
      if (v39 < 0)
      {
        v39 = *(v38 + 32);
      }

      *(&v176.__r_.__value_.__r.__words[1] + 4) = v39;
      v176.__r_.__value_.__r.__words[0] = __PAIR64__(*(v38 + 16), *(v38 + 8) - *(this + 98));
      v40 = *(this + 59);
      if (v40 + 8 == v41)
      {
        *(this + 62) = 0;
      }

      else
      {
        *(this + 62) = *(v41 + 40) + 8;
        (*(***(this + 13) + 24))(&v184);
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        v42 = *&v184.__r_.__value_.__l.__data_;
        *(v15 + 24) = *(&v184.__r_.__value_.__l + 2);
        *(v15 + 8) = v42;
        std::string::operator=(&v178, (v15 + 8));
        v43 = *(this + 61);
        if (*v43 != 1952807028 || *(v43 + 16))
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((*(this + 62) + 24), &buf.__r_.__value_.__l.__data_, &v184);
          if (SHIBYTE(v177[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v177[0].__r_.__value_.__l.__data_);
          }

          v177[0] = v184;
        }
      }

      v44 = *v3;
      if (v44 + 8 != v45)
      {
        std::string::operator=((&v179 + 8), (*(v45 + 40) + 8));
      }

      v46 = *(*(this + 61) + 48);
      v47 = (v46 + 40);
      v48 = *(v46 + 63);
      v49 = v48;
      v50 = *(v46 + 48);
      if ((v48 & 0x80u) == 0)
      {
        v51 = v48;
      }

      else
      {
        v51 = v50;
      }

      v52 = *(this + 183);
      v53 = v52;
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(this + 21);
      }

      if (v51 != v52 || (v49 >= 0 ? (v54 = v47) : (v54 = v47->__r_.__value_.__r.__words[0]), (v55 = *v174, v53 >= 0) ? (v56 = this + 160) : (v56 = *v174), memcmp(v54, v56, v51)))
      {
        std::string::operator=((&v182 + 8), v47);
      }

      v57 = *v3;
      if (v57 + 8 == v58)
      {
        *(this + 74) = 0;
      }

      else
      {
        v59 = *(v58 + 40);
        v60 = *(v59 + 8);
        *(this + 74) = v59 + 8;
        if (v60)
        {
          (*(*this + 152))(this, &v176);
          *(this + 84) += **(this + 74);
        }
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_117;
    }

    if (v11 != 1635083369)
    {
      if (v11 == 1651664235 && ExtractFeaturesImpl::pause_duration(v7))
      {
        ++*(this + 84);
      }

      goto LABEL_129;
    }

    *(this + 74) = 0;
    if (v9 == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(v16 + 40) + 8);
    }

    if (v9 == v61)
    {
      goto LABEL_129;
    }

    v62 = *(v61 + 40);
    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    memset(v177, 0, sizeof(v177));
    if (*(v62 + 32) == 0x7FFFFFFF)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, 60, (v62 + 40));
      std::string::push_back(&buf, 62);
      v184.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
      v63 = buf.__r_.__value_.__r.__words[0];
      *(v184.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v64 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      memset(&buf, 0, sizeof(buf));
      if ((SHIBYTE(v177[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v177[0].__r_.__value_.__r.__words[0] = v63;
        v177[0].__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
        *(&v177[0].__r_.__value_.__r.__words[1] + 7) = *(v184.__r_.__value_.__r.__words + 7);
        *(&v177[0].__r_.__value_.__s + 23) = v64;
        if (v17)
        {
          goto LABEL_113;
        }

        goto LABEL_104;
      }

      operator delete(v177[0].__r_.__value_.__l.__data_);
      v177[0].__r_.__value_.__r.__words[0] = v63;
      v177[0].__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
      *(&v177[0].__r_.__value_.__r.__words[1] + 7) = *(v184.__r_.__value_.__r.__words + 7);
      *(&v177[0].__r_.__value_.__s + 23) = v64;
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_112:
        if (v17)
        {
          goto LABEL_113;
        }

        goto LABEL_104;
      }
    }

    else
    {
      StringFormatter::StringFormatter(&buf, "<#%04d>", *(v62 + 32));
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &buf;
      }

      else
      {
        v66 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = buf.__r_.__value_.__l.__size_;
      }

      MEMORY[0x1C692A650](v177, v66, v67);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if (v17)
    {
LABEL_113:
      v65 = *v17;
      goto LABEL_114;
    }

LABEL_104:
    v65 = 0;
LABEL_114:
    v68 = HIBYTE(v177[0].__r_.__value_.__r.__words[2]);
    if ((v177[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v177[0].__r_.__value_.__r.__words[1];
    }

    LODWORD(v176.__r_.__value_.__r.__words[1]) = v65;
    *(&v176.__r_.__value_.__r.__words[1] + 4) = v68;
    v176.__r_.__value_.__r.__words[0] = __PAIR64__(*(*(this + 61) + 16), *(*(this + 61) + 8) - *(this + 98));
    (*(*this + 152))(this, &v176);
LABEL_117:
    if (SHIBYTE(v183) < 0)
    {
      operator delete(*(&v182 + 1));
    }

    if (SBYTE7(v182) < 0)
    {
      operator delete(v181);
    }

    if (SHIBYTE(v180) < 0)
    {
      operator delete(*(&v179 + 1));
    }

    if (SBYTE7(v179) < 0)
    {
      operator delete(v178);
    }

    if (SHIBYTE(v177[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v177[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v177[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v177[0].__r_.__value_.__l.__data_);
    }

LABEL_129:
    if (*(this + 233) == 1)
    {
      (*(**(this + 2) + 16))(&v176);
      v69 = v176.__r_.__value_.__r.__words[0];
      if (v176.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v176.__r_.__value_.__l.__size_);
      }

      if (!v69)
      {
        *(this + 920) = 1;
      }
    }

    v70 = *v3;
    if (v70 + 8 != v71)
    {
      break;
    }

LABEL_138:
    ;
  }

  v72 = *(v71 + 40);
  if ((*(v72 + 9) & 1) == 0)
  {
    if (*(v72 + 8) == 1)
    {
      ++*(this + 84);
    }

    goto LABEL_138;
  }

LABEL_142:
  (*(*this + 104))(this);
  v73 = *(this + 71);
  v74 = 0uLL;
  *(this + 35) = 0u;
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    v74 = 0uLL;
  }

  v75 = *(this + 73);
  *(this + 36) = v74;
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  v171 = (this + 536);
  *(this + 600) = 0u;
  v76 = 1;
  while (1)
  {
LABEL_147:
    (*(**(this + 2) + 16))(&v176);
    silence = *&v176.__r_.__value_.__l.__data_;
    *&v176.__r_.__value_.__l.__data_ = 0uLL;
    v78 = *(this + 60);
    *v3 = silence;
    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      v79 = *v3;
      if (v176.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v176.__r_.__value_.__l.__size_);
      }

      if (!v79)
      {
        goto LABEL_283;
      }
    }

    else if (!silence.i64[0])
    {
      goto LABEL_283;
    }

    (*(**(this + 2) + 32))(*(this + 2));
    v80 = *(this + 59);
    v82 = v80 + 8;
    if (v80 + 8 != v81)
    {
      break;
    }

    *(this + 61) = 0;
  }

  *(this + 61) = *(v81 + 40) + 8;
  v173 = v83;
  if (v82 == v83)
  {
    v172 = 0;
  }

  else
  {
    v84 = *(v83 + 40);
    v85 = v84[4];
    if (v85 != *(this + 72))
    {
      v86 = v84[5];
      if (v86)
      {
        atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
      }

      *(this + 72) = v85;
      v87 = *(this + 73);
      *(this + 73) = v86;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        v85 = *(this + 72);
      }

      if (v85 + 8 == v88)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(v88 + 40) + 8;
      }

      *(this + 76) = v89;
      *(this + 79) = -1;
    }

    v172 = v84 + 1;
    v90 = v84[2];
    if (v90 != *(this + 70))
    {
      v91 = v84[3];
      if (v91)
      {
        atomic_fetch_add_explicit((v91 + 8), 1uLL, memory_order_relaxed);
      }

      *(this + 70) = v90;
      v92 = *(this + 71);
      *(this + 71) = v91;
      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        v90 = *(this + 70);
      }

      if (v90 + 8 == v93)
      {
        v94 = 0;
      }

      else
      {
        v94 = *(v93 + 40) + 8;
      }

      *(this + 75) = v94;
      *(this + 80) = 0;
      *(this + 82) = 0;
      ++*(this + 79);
    }
  }

  if (v76)
  {
    ExtractFeaturesImpl::extract_silence(this, 50);
  }

  v95 = *(this + 61);
  data = v95[2].__r_.__value_.__l.__data_;
  if (data != *(this + 63))
  {
    v97 = v95[2].__r_.__value_.__l.__size_;
    if (v97)
    {
      atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
    }

    v98 = *(this + 64);
    *(this + 63) = data;
    *(this + 64) = v97;
    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    v176.__r_.__value_.__r.__words[0] = &v176;
    *&v176.__r_.__value_.__r.__words[1] = &v176;
    if (v95[2].__r_.__value_.__r.__words[0])
    {
      operator new();
    }

    if (*(this + 130) != 100)
    {
      (*(*this + 192))(this, 100);
      *(this + 130) = 100;
    }

    if (*(this + 131) != 100)
    {
      (*(*this + 200))(this, 100);
      *(this + 131) = 100;
    }

    if (*(this + 132) != 80)
    {
      (*(*this + 208))(this, 80);
      *(this + 132) = 80;
    }

    v99 = v95[2].__r_.__value_.__l.__data_;
    v100 = (v99 + 296);
    v101 = v99[319];
    v102 = v101;
    v103 = *(v99 + 38);
    if ((v101 & 0x80u) == 0)
    {
      v104 = v101;
    }

    else
    {
      v104 = v103;
    }

    v105 = *(this + 559);
    v106 = v105;
    if ((v105 & 0x80u) != 0)
    {
      v105 = *(this + 68);
    }

    if (v104 != v105 || (v102 >= 0 ? (v107 = v100) : (v107 = *v100), (v108 = v171->__r_.__value_.__r.__words[0], v106 >= 0) ? (v109 = this + 536) : (v109 = v171->__r_.__value_.__r.__words[0]), memcmp(v107, v109, v104)))
    {
      (*(*this + 216))(this, v100);
      std::string::operator=(v171, (v95[2].__r_.__value_.__r.__words[0] + 296));
    }

    std::__list_imp<char *>::clear(&v176);
    v95 = *(this + 61);
  }

  std::string::operator=((this + 400), v95 + 1);
  v110 = *v3;
  if (v110 + 8 == v111)
  {
    MEMORY[0x1C692A640](this + 424, "null");
  }

  else
  {
    std::string::operator=((this + 424), (*(v111 + 40) + 8));
  }

  MEMORY[0x1C692A640](this + 448, "null");
  if (v82 == v173 || (v172[1] & 1) != 0)
  {
    goto LABEL_231;
  }

  ExtractFeaturesImpl::punctuation(&v176, this, 0);
  v112 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    v114 = v176.__r_.__value_.__r.__words[0];
    if (v176.__r_.__value_.__l.__size_ != 1)
    {
LABEL_230:
      operator delete(v114);
      goto LABEL_231;
    }

    v113 = *v176.__r_.__value_.__l.__data_;
LABEL_215:
    if (v113 <= 57)
    {
      if (v113 == 33)
      {
        v115 = "exclamation";
        goto LABEL_227;
      }

      if (v113 == 46)
      {
        v115 = "period";
        goto LABEL_227;
      }
    }

    else
    {
      switch(v113)
      {
        case ':':
          v115 = "colon";
          goto LABEL_227;
        case ';':
          v115 = "semicolon";
          goto LABEL_227;
        case '?':
          v115 = "question";
          goto LABEL_227;
      }
    }

    v115 = "comma";
    if (v113 != 44)
    {
LABEL_228:
      if ((v112 & 0x80) == 0)
      {
        goto LABEL_231;
      }

      v114 = v176.__r_.__value_.__r.__words[0];
      goto LABEL_230;
    }

LABEL_227:
    MEMORY[0x1C692A640](this + 448, v115);
    v112 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
    goto LABEL_228;
  }

  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) == 1)
  {
    v113 = v176.__r_.__value_.__s.__data_[0];
    goto LABEL_215;
  }

LABEL_231:
  v116 = *v3;
  if (v116 + 8 != v117)
  {
    v118 = *(v117 + 40);
    *(this + 62) = v118 + 8;
    std::string::operator=((this + 400), (v118 + 32));
    v119 = *(this + 62);
    v121 = *v119;
    v120 = v119[1];
    v175 = v120;
    while (v121 != v120)
    {
      (*(*this + 112))(this);
      *(this + 81) = 0;
      v122 = *v121;
      v123 = v121[1];
      v13 = v123 == *v121;
      *(this + 77) = (v123 - *v121) >> 6;
      if (!v13)
      {
        do
        {
          *(this + 176) = *(this + 175);
          *(this + 175) = *(v122 + 4);
          *(this + 696) = *v122 > 0;
          *(this + 83) = 0;
          v124 = *(v122 + 16);
          v125 = *(v122 + 24);
          for (*(this + 78) = 0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 3); v124 != v125; v124 += 24)
          {
            if (*(v122 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v176, *(v122 + 40), *(v122 + 48));
            }

            else
            {
              v176 = *(v122 + 40);
            }

            (*(*this + 160))(this, v124, 0, &v176);
            if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v176.__r_.__value_.__l.__data_);
            }

            ++*(this + 83);
          }

          *(this + 648) = vaddq_s64(*(this + 648), vdupq_n_s64(1uLL));
          ++*(this + 86);
          v122 += 64;
        }

        while (v122 != v123);
      }

      (*(*this + 120))(this);
      ++*(this + 80);
      ++*(this + 85);
      v121 += 3;
      v120 = v175;
    }

LABEL_253:
    if (*(this + 423) < 0)
    {
      **(this + 50) = 0;
      *(this + 51) = 0;
    }

    else
    {
      *(this + 400) = 0;
      *(this + 423) = 0;
    }

    if (*(this + 447) < 0)
    {
      **(this + 53) = 0;
      *(this + 54) = 0;
    }

    else
    {
      *(this + 424) = 0;
      *(this + 447) = 0;
    }

    if (v82 == v173)
    {
      goto LABEL_278;
    }

    if (v172[1])
    {
      v133 = 180;
      goto LABEL_282;
    }

    (*(**(this + 2) + 16))(&v176);
    if (v176.__r_.__value_.__r.__words[0] && ExtractFeaturesImpl::is_paragraph_break(v176.__r_.__value_.__l.__data_))
    {
      (*(**(this + 2) + 32))(*(this + 2));
      silence = ExtractFeaturesImpl::extract_silence(this, 500);
      v127 = 0;
      v128 = 3;
    }

    else
    {
      v128 = 0;
      v127 = 1;
    }

    if (v176.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v176.__r_.__value_.__l.__size_);
    }

    if (v127)
    {
      if (*v172 == 1)
      {
        v129 = *(this + 61);
        v130 = (v129 + 24);
        v131 = *(v129 + 47);
        if (v131 < 0)
        {
          if (*(v129 + 32) != 1)
          {
            goto LABEL_276;
          }

          v130 = *v130;
        }

        else if (v131 != 1)
        {
LABEL_276:
          v132 = 120;
          goto LABEL_277;
        }

        if (!memchr("()", *v130, 4uLL))
        {
          goto LABEL_276;
        }

        v132 = 2;
LABEL_277:
        silence = ExtractFeaturesImpl::extract_silence(this, v132);
      }

LABEL_278:
      v128 = 0;
    }

    v76 = 0;
    if (v128)
    {
      goto LABEL_283;
    }

    goto LABEL_147;
  }

  *(this + 62) = 0;
  v126 = **(this + 61);
  if (v126 > 1835102826)
  {
    if (v126 == 1835102827)
    {
      (*(*this + 136))(this);
      goto LABEL_253;
    }

    if (v126 != 1886547312)
    {
      goto LABEL_253;
    }

LABEL_251:
    (*(*this + 144))(this);
    goto LABEL_253;
  }

  if (v126 == 1635083369)
  {
    goto LABEL_251;
  }

  if (v126 != 1651664235)
  {
    goto LABEL_253;
  }

  if (!ExtractFeaturesImpl::is_paragraph_break(v116))
  {
    (*(*this + 128))(this);
    goto LABEL_253;
  }

  v133 = 500;
LABEL_282:
  silence = ExtractFeaturesImpl::extract_silence(this, v133);
LABEL_283:
  v134 = *(this + 98);
  v135 = *(this + 97);
  v136 = 0x84BDA12F684BDA13 * ((v134 - v135) >> 3);
  if (v136 >= 2)
  {
    v137 = 0;
    v138 = 0;
    v139 = 1;
    v140 = 4;
    silence = xmmword_1C378AEF0;
    do
    {
      v141 = v139;
      if (*(v135 + 216 * v137 + 172))
      {
        if (v137 >= v138)
        {
          v142 = 0;
          v143 = v138;
          v144 = *(v135 + 216 * v139 + 60);
          v145 = vdupq_n_s64(~v143 + v139);
          v146 = (v140 - v143) & 0xFFFFFFFFFFFFFFFCLL;
          v147 = (v135 + 216 * v143);
          do
          {
            v148 = vdupq_n_s64(v142);
            v149 = vmovn_s64(vcgeq_u64(v145, vorrq_s8(v148, xmmword_1C378AF00)));
            if (vuzp1_s16(v149, 2).u8[0])
            {
              v147[16] = v144;
            }

            if (vuzp1_s16(v149, 2).i8[2])
            {
              v147[70] = v144;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v145, vorrq_s8(v148, xmmword_1C378AEF0)))).i32[1])
            {
              v147[124] = v144;
              v147[178] = v144;
            }

            v142 += 4;
            v147 += 216;
          }

          while (v146 != v142);
        }

        v138 = v141;
      }

      v139 = v141 + 1;
      ++v140;
      v137 = v141;
    }

    while (v141 + 1 != v136);
  }

  if (v135 != v134)
  {
    *(v134 - 152) = 0;
  }

  (*(*this + 176))(this, silence);
  (*(*this + 168))(this);
  (*(*this + 184))(this);
  *(this + 60) += *(this + 59);
  v150 = *(this + 295);
  if (v150 < 0)
  {
    v150 = *(this + 35);
  }

  if (v150)
  {
    std::string::append((this + 272), " ");
  }

  v151 = *(this + 31);
  v152 = *(this + 271);
  if (v152 >= 0)
  {
    v153 = this + 248;
  }

  else
  {
    v153 = *(this + 31);
  }

  if (v152 >= 0)
  {
    v154 = *(this + 271);
  }

  else
  {
    v154 = *(this + 32);
  }

  std::string::append((this + 272), v153, v154);
  v155 = *(this + 343);
  if (v155 < 0)
  {
    v155 = *(this + 41);
  }

  if (v155)
  {
    std::string::append((this + 320), " ");
  }

  v156 = *(this + 319);
  if (v156 >= 0)
  {
    v157 = this + 296;
  }

  else
  {
    v157 = *(this + 37);
  }

  if (v156 >= 0)
  {
    v158 = *(this + 319);
  }

  else
  {
    v158 = *(this + 38);
  }

  std::string::append((this + 320), v157, v158);
  v159 = *(this + 391);
  if (v159 < 0)
  {
    v159 = *(this + 47);
    if (v159)
    {
      v160 = *(this + 46);
      goto LABEL_324;
    }
  }

  else if (*(this + 391))
  {
    v160 = this + 368;
LABEL_324:
    v161 = &v160[v159];
    v162 = v160;
    v163 = v161;
    do
    {
      if (*v162 == 115)
      {
        v164 = 1u;
        while (v164 != 3)
        {
          if (&v162[v164] == v161)
          {
            goto LABEL_334;
          }

          v165 = v162[v164];
          v166 = aSil_2[v164++];
          if (v165 != v166)
          {
            goto LABEL_326;
          }
        }

        v163 = v162;
      }

LABEL_326:
      ++v162;
    }

    while (v162 != v161);
LABEL_334:
    if (v163 != v161 && v163 - v160 != -1)
    {
      std::string::erase((this + 368), v163 - v160, 3uLL);
    }
  }

  v167 = *(this + 367);
  if (v167 >= 0)
  {
    v168 = this + 344;
  }

  else
  {
    v168 = *(this + 43);
  }

  if (v167 >= 0)
  {
    v169 = *(this + 367);
  }

  else
  {
    v169 = *(this + 44);
  }

  v170 = *MEMORY[0x1E69E9840];

  std::string::append((this + 368), v168, v169);
}

void sub_1C2FB2A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExtractFeaturesToPipeline::extract_sentence_text(ExtractFeaturesToPipeline *this)
{
  v19 = 0u;
  v2 = (this + 776);
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  std::vector<PhoneFeature>::__vdeallocate(this + 776);
  *(this + 99) = 0;
  *v2 = 0u;
  v11 = 0;
  v12 = 0u;
  std::vector<WordFeature>::__vdeallocate(this + 800);
  *(this + 102) = 0;
  *(this + 50) = 0u;
  v13 = 0;
  v14 = 0u;
  std::vector<Prompt>::__vdeallocate(this + 103);
  *(this + 105) = 0;
  *(this + 824) = 0u;
  memset(v15, 0, sizeof(v15));
  v3 = (this + 848);
  if (*(this + 871) < 0)
  {
    operator delete(*v3);
  }

  *v3 = 0;
  *(this + 107) = 0;
  *(this + 108) = 0;
  BYTE7(v17[0]) = 0;
  LOBYTE(v16) = 0;
  v4 = (this + 872);
  if (*(this + 895) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *(v17 + 8);
  *(this + 111) = *(&v17[1] + 1);
  HIBYTE(v17[1]) = 0;
  BYTE8(v17[0]) = 0;
  v5 = (this + 896);
  if (*(this + 919) < 0)
  {
    operator delete(*v5);
  }

  *v5 = v18;
  *(this + 114) = v19;
  BYTE7(v19) = 0;
  LOBYTE(v18) = 0;
  *(this + 920) = 0;
  v20 = v15;
  std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v13;
  std::vector<WordFeature>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v11;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v20);
  ExtractFeaturesImpl::extract_sentence_text(this);
  if ((*(this + 8) & 1) == 0)
  {
    std::string::operator=((this + 872), (this + 184));
    v6 = std::string::operator=((this + 848), (this + 296));
    v7 = GryphonAnalysis::Storage(v6);
    if (*v7 == 1)
    {
      v8 = GryphonAnalysis::Storage(v7);
      v9 = std::string::operator=(v8 + 2, (this + 184));
      v10 = GryphonAnalysis::Storage(v9);
      std::string::operator=(v10 + 3, (this + 296));
    }
  }
}

void std::vector<PhoneFeature>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<PhoneFeature>>::destroy[abi:ne200100]<PhoneFeature,0>(i))
    {
      i -= 216;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(unsigned __int8 *a1, const void **a2, std::string::value_type *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    v5 = *a3;
  }

  else
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
    v12.__r_.__value_.__s.__data_[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v6, &v12);
    v5 = v12.__r_.__value_.__s.__data_[0];
  }

  return v5 & 1;
}

void sub_1C2FB2E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t NeuralTTSUtils::has_compact_neural_fallback(NeuralTTSUtils *this, const char *a2)
{
  v5 = this;
  v2 = MGGetSInt32Answer();
  if ((v2 & 0xFFFFFFFE) == 6 || (is_ane_available = NeuralTTSUtils::is_ane_available(v2), !is_ane_available) || NeuralTTSUtils::is_amx_available(is_ane_available))
  {
    std::allocate_shared[abi:ne200100]<Environment,std::allocator<Environment>,char const*&,0>();
  }

  return 0;
}

void sub_1C2FB30D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, unsigned __int8 a24, uint64_t a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a25, a24);
  v27 = *(v25 - 64);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v25 - 48);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v25 - 32);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81A1260, MEMORY[0x1E69E5278]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81A1260, MEMORY[0x1E69E5278]);
}

void Agglomerate::ItemHolder<std::shared_ptr<VoiceConfig>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F3798;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

uint64_t Module::Module(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = &unk_1F42F3380;
  *(a1 + 8) = a1 + 16;
  *(a1 + 112) = 0u;
  *(a1 + 184) = 0u;
  v6 = (a1 + 184);
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0;
  MEMORY[0x1C692AA50](a1 + 208);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 176);
  *(a1 + 168) = v8;
  *(a1 + 176) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "id");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("module", a2, __p, &v13);
    if (*(a1 + 207) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v13;
    *(&v13.__r_.__value_.__s + 23) = 0;
    v13.__r_.__value_.__s.__data_[0] = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    MEMORY[0x1C692A640](v6, "module");
  }

  return a1;
}

void sub_1C2FB33E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::recursive_mutex::~recursive_mutex((v14 + 208));
  if (*(v14 + 207) < 0)
  {
    operator delete(*v17);
  }

  v20 = *(v14 + 176);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](v16);
  v21 = *(v14 + 104);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::mutex::~mutex(v15);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::destroy(*v18);
  _Unwind_Resume(a1);
}

kaldi::LinearResample *kaldi::LinearResample::LinearResample(kaldi::LinearResample *this, uint64_t a2, int a3, float a4, int a5, const char *a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 24) = 0u;
  *(this + 11) = 0;
  v7 = (this + 88);
  *(this + 3) = a5;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (a2 < 1 || a3 < 1 || a4 <= 0.0 || ((v8 = a4 + a4, v8 < a2) ? (v9 = v8 < a3) : (v9 = 0), v9 ? (v10 = a5 <= 0) : (v10 = 1), v10))
  {
    kaldi::KaldiAssertFailure_("LinearResample", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/feat/resample.cc", 0x28, "samp_rate_in_hz > 0.0 && samp_rate_out_hz > 0.0 && filter_cutoff_hz > 0.0 && filter_cutoff_hz * 2 < samp_rate_in_hz && filter_cutoff_hz * 2 < samp_rate_out_hz && num_zeros > 0", a6);
  }

  v11 = kaldi::Gcd<int>(a2, a3);
  v12 = *(this + 1) / v11;
  *(this + 4) = *this / v11;
  *(this + 5) = v12;
  kaldi::LinearResample::SetIndexesAndWeights(this);
  *(this + 9) = 0;
  *(this + 10) = 0;
  kaldi::Vector<float>::Resize(v7, 0, 0, v13, v14);
  return this;
}

void sub_1C2FB354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  kaldi::Vector<float>::Destroy(v11);
  a10 = (v10 + 48);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 32) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t kaldi::Gcd<int>(uint64_t result, int a2)
{
  if (result && a2)
  {
    while (1)
    {
      LODWORD(result) = result % a2;
      if (!result)
      {
        break;
      }

      a2 %= result;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    LODWORD(result) = a2;
  }

  else
  {
    if (!(a2 | result))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Gcd", "../engine/common/libquasar/libkaldi/src/base/kaldi-math.h", 319);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Undefined GCD since m = 0, n = 0.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
    }

    if (!result)
    {
      LODWORD(result) = a2;
    }
  }

LABEL_11:
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

void std::vector<kaldi::Vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, v9);
    }

    v17 = 0;
    v18 = 24 * v6;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v19 = 24 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 24 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(a1, *a1, v12, v13, v14);
    v15 = *a1;
    *a1 = v13;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(&v17);
  }
}

void sub_1C2FB38DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::Vector<float>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<kaldi::Vector<float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 24 * a2);
  }
}

void kaldi::LinearResample::SetIndexesAndWeights(std::vector<int> *this)
{
  std::vector<float>::resize(this + 1, SHIDWORD(this->__end_cap_.__value_));
  std::vector<kaldi::Vector<float>>::resize(&this[2].__begin_, SHIDWORD(this->__end_cap_.__value_));
  if (SHIDWORD(this->__end_cap_.__value_) >= 1)
  {
    v4 = 0;
    v5 = SHIDWORD(this->__end_) / (*&this->__end_ + *&this->__end_);
    do
    {
      v6 = v4 / SHIDWORD(this->__begin_);
      v7 = vcvtpd_s64_f64((v6 - v5) * SLODWORD(this->__begin_));
      v8 = vcvtmd_s64_f64((v5 + v6) * SLODWORD(this->__begin_)) - v7;
      v9 = v8 + 1;
      this[1].__begin_[v4] = v7;
      kaldi::Vector<float>::Resize(&this[2].__begin_[6 * v4], v9, 0, v2, v3);
      if ((v8 & 0x80000000) == 0)
      {
        v10 = 0;
        begin_low = SLODWORD(this->__begin_);
        v12 = SLODWORD(this->__begin_);
        v13 = *&this[2].__begin_[6 * v4];
        do
        {
          v14 = v7 / begin_low - v6;
          *(v13 + 4 * v10++) = kaldi::LinearResample::FilterFunc(this, v14) / v12;
          ++v7;
        }

        while (v9 != v10);
      }

      ++v4;
    }

    while (v4 < SHIDWORD(this->__end_cap_.__value_));
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v6, "cannot get value");
    nlohmann::detail::invalid_iterator::create(214, v6, exception);
  }

  if (*(a1 + 32))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v6, "cannot get value");
    nlohmann::detail::invalid_iterator::create(214, v6, v4);
  }

  return result;
}

void sub_1C2FB3BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__count_multi<char [9]>(uint64_t a1, std::string::value_type *__s)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (std::string::compare((v3 + 4), __s) > 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (std::string::compare((v3 + 4), __s) < 0)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = *v3;
  v7 = v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v8 = std::string::compare((v6 + 4), __s);
      if (v8 >= 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 28) & 8));
    }

    while (v6);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v10 < 1)))
  {
    v10 = std::string::compare((i + 32), __s);
    if (v10 > 0)
    {
      v2 = i;
    }
  }

  if (v7 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v11 = v7[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v7[2];
        v13 = *v12 == v7;
        v7 = v12;
      }

      while (!v13);
    }

    ++result;
    v7 = v12;
  }

  while (v12 != v2);
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 != a3)
  {
    v8 = a4;
    v9 = a2;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      kaldi::Vector<float>::Resize(v8, *(v9 + 8), 1, a4, a5);
      kaldi::VectorBase<float>::CopyFromVec(v8, v9, v10, v11, v12);
      v9 += 24;
      v8 = v17 + 24;
      v17 += 24;
    }

    while (v9 != a3);
  }

  v15 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v14);
}

uint64_t std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::Vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      kaldi::Vector<float>::Destroy(v4);
      v4 += 24;
    }

    while (v4 != a3);
  }
}

void std::__split_buffer<kaldi::Vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 24;
    kaldi::Vector<float>::Destroy(v4 - 24);
  }
}

float kaldi::LinearResample::FilterFunc(kaldi::LinearResample *this, float a2)
{
  v3 = fabsf(a2);
  v4 = *(this + 3);
  v5 = *(this + 2);
  v6 = v5;
  v7 = 0.0;
  if (v4 / (v6 + v6) > v3)
  {
    v7 = (cos(v6 * 6.28318531 / v4 * a2) + 1.0) * 0.5;
  }

  if (a2 == 0.0)
  {
    v8 = v5 + v5;
  }

  else
  {
    v8 = sin(v6 * 6.28318531 * a2) / (a2 * 3.14159265);
  }

  return v7 * v8;
}

void RewriteImpl::generate_tokens(RewriteImpl *this)
{
  v69 = *MEMORY[0x1E69E9840];
  (*(*this + 64))(&v61);
  v2 = *v61;
  v3 = *v61;
  v53 = v61[1];
  if (*v61 != v53)
  {
    while (1)
    {
      v4 = *(v3 + 23);
      if (v4 < 0)
      {
        if (*(v3 + 8))
        {
LABEL_4:
          v5 = *(this + 59);
          status[0] = U_ZERO_ERROR;
          if (v4 >= 0)
          {
            v6 = v3;
          }

          else
          {
            v6 = *v3;
          }

          if (v4 >= 0)
          {
            v7 = v4;
          }

          else
          {
            v7 = *(v3 + 8);
          }

          v8 = utext_openUTF8(0, v6, v7, status);
          if (status[0] <= U_ZERO_ERROR)
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }

          UTFRegex::set_text(v5, v9, 1);
          if (*(this + 167) < 0)
          {
            std::string::__init_copy_ctor_external(&v59, *(this + 18), *(this + 19));
          }

          else
          {
            v59 = *(this + 6);
          }

          if (UTFRegex::search(*(this + 59)))
          {
            v10 = *(this + 59);
            status[0] = U_ZERO_ERROR;
            uregex_start(*v10, 0, status);
            v11 = *(this + 59);
            UTFRegex::group<std::basic_string<char16_t>>();
          }

          v12 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(this + 27), &v59.__r_.__value_.__l.__data_);
          if (*(this + 27) + 8 == v12)
          {
            (*(*this + 152))(this);
          }

          else
          {
            v13 = v12;
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v14 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(status[0]) = 0;
              _os_log_impl(&dword_1C2F95000, v14, OS_LOG_TYPE_DEFAULT, "rewrite started", status, 2u);
            }

            Diagnostics::log(5, "rewrite started", v15);
            kdebug_trace();
            v52.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            (***(v13 + 56))(status);
            if ((v56 & 0x80u) == 0)
            {
              v16 = v56;
            }

            else
            {
              v16 = v55;
            }

            v17 = *(v3 + 23);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v3 + 8);
            }

            if (v16 == v17 && ((v56 & 0x80u) == 0 ? (v19 = status) : (v19 = *status), (v20 = *v3, v18 >= 0) ? (v21 = v3) : (v21 = *v3), !memcmp(v19, v21, v16)))
            {
              (*(*this + 152))(this);
            }

            else
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v22 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
              {
                Censor::global_plaintext(&v68, v3);
                v23 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
                v24 = v68.__r_.__value_.__r.__words[0];
                Censor::global_plaintext(&__str, status);
                if (v23 >= 0)
                {
                  v25 = &v68;
                }

                else
                {
                  v25 = v24;
                }

                p_str = &__str;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_str = __str.__r_.__value_.__r.__words[0];
                }

                *buf = 136315394;
                v64 = v25;
                v65 = 2080;
                v66 = p_str;
                _os_log_impl(&dword_1C2F95000, v22, OS_LOG_TYPE_DEFAULT, "#Rewrite:\n[FROM] - %s\n[ TO ] - %s", buf, 0x16u);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&v68, v3);
              v27 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
              v28 = v68.__r_.__value_.__r.__words[0];
              Censor::global_plaintext(&__str, status);
              if (v27 >= 0)
              {
                v30 = &v68;
              }

              else
              {
                v30 = v28;
              }

              v31 = &__str;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v31 = __str.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(5, "#Rewrite:\n[FROM] - %s\n[ TO ] - %s", v29, v30, v31);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v68.__r_.__value_.__l.__data_);
              }

              (*(*this + 168))(this, status);
            }

            v32 = *v57;
            v33 = v57[1];
            while (v32 != v33)
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v34 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v36 = *v32;
                LODWORD(v68.__r_.__value_.__l.__data_) = 67109120;
                HIDWORD(v68.__r_.__value_.__r.__words[0]) = v36;
                _os_log_impl(&dword_1C2F95000, v34, OS_LOG_TYPE_DEFAULT, "#Rewrite - POS - %d", &v68, 8u);
              }

              Diagnostics::log(5, "#Rewrite - POS - %d", v35, *v32);
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v37 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
              {
                Censor::global_plaintext(&v68, (v32 + 2));
                v38 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
                LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
                *(__str.__r_.__value_.__r.__words + 4) = v38;
                _os_log_impl(&dword_1C2F95000, v37, OS_LOG_TYPE_DEFAULT, "#Rewrite - Matched - %s", &__str, 0xCu);
                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&v68, (v32 + 2));
              if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v40 = &v68;
              }

              else
              {
                v40 = v68.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(5, "#Rewrite - Matched - %s", v39, v40);
              if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v68.__r_.__value_.__l.__data_);
              }

              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v41 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
              {
                Censor::global_plaintext(&v68, (v32 + 8));
                v42 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
                LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
                *(__str.__r_.__value_.__r.__words + 4) = v42;
                _os_log_impl(&dword_1C2F95000, v41, OS_LOG_TYPE_DEFAULT, "#Rewrite - Replaced - %s", &__str, 0xCu);
                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&v68, (v32 + 8));
              if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v44 = &v68;
              }

              else
              {
                v44 = v68.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(5, "#Rewrite - Replaced - %s", v43, v44);
              if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v68.__r_.__value_.__l.__data_);
              }

              v32 += 20;
            }

            FrontendNNModule::polish_first_token_positions(this);
            v45.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            kdebug_trace();
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v46 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v68.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_1C2F95000, v46, OS_LOG_TYPE_DEFAULT, "rewrite ended", &v68, 2u);
            }

            Diagnostics::log(5, "rewrite ended", v47);
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v48 = (v45.__d_.__rep_ - v52.__d_.__rep_) / 1000000;
            v49 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v68.__r_.__value_.__l.__data_) = 134217984;
              *(v68.__r_.__value_.__r.__words + 4) = v48 / 1000.0;
              _os_log_impl(&dword_1C2F95000, v49, OS_LOG_TYPE_DEFAULT, "rewrite latency: %.3f s", &v68, 0xCu);
            }

            Diagnostics::log(5, "rewrite latency: %.3f s", v50, v48 / 1000.0);
            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

            if (v56 < 0)
            {
              operator delete(*status);
            }
          }

          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }

          goto LABEL_108;
        }
      }

      else if (*(v3 + 23))
      {
        goto LABEL_4;
      }

      memset(v60, 0, sizeof(v60));
      std::vector<std::shared_ptr<Agglomerate>>::__init_with_size[abi:ne200100]<std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>*>(v60, *(v3 + 24), *(v3 + 32), (*(v3 + 32) - *(v3 + 24)) >> 4);
      (*(*this + 160))(this, v60);
      *status = v60;
      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](status);
LABEL_108:
      v3 += 48;
      if (v3 == v53)
      {
        goto LABEL_112;
      }
    }
  }

  *(this + 8) = 1;
LABEL_112:
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v51 = *MEMORY[0x1E69E9840];
}

void sub_1C2FB4BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (*(v40 - 153) < 0)
  {
    operator delete(*(v40 - 176));
  }

  if (*(v40 - 121) < 0)
  {
    operator delete(*(v40 - 144));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void FrontendModule::token(FrontendModule *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 9);
  if (v5 <= a2)
  {
    while (*(this + 8) != 1)
    {
      (*(*this + 48))(this);
      v7 = *(this + 9);
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v8 = v7 - v5;
      v9 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        if (*(this + 103) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *(this + 10), *(this + 11));
        }

        else
        {
          v15 = *(this + 80);
        }

        v11 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v15 : v15.__r_.__value_.__r.__words[0];
        *buf = 136315394;
        v17 = v11;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&dword_1C2F95000, v9, OS_LOG_TYPE_DEBUG, "generate_tokens %s: %zd", buf, 0x16u);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      if (*(this + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *(this + 10), *(this + 11));
      }

      else
      {
        v15 = *(this + 80);
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v15;
      }

      else
      {
        v12 = v15.__r_.__value_.__r.__words[0];
      }

      Diagnostics::log(7, "generate_tokens %s: %zd", v10, v12, v8);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      v5 = *(this + 9);
      if (v5 > a2)
      {
        goto LABEL_2;
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
LABEL_2:
    v6 = *(*(*(this + 5) + (((*(this + 8) + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 64) + a2));
    *a3 = v6;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1C2FB641C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  v49 = *(a23 + 8);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(exception_object);
}

void BreaksNNImpl::generate_tokens(BreaksNNImpl *this)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(this + 86))
  {
    BreaksNNImpl::apply_ICU_sent_break(this);
    if (*(this + 9))
    {
      goto LABEL_114;
    }
  }

  (*(**(this + 2) + 16))(&status);
  v2 = status.__r_.__value_.__r.__words[0];
  if (status.__r_.__value_.__r.__words[0])
  {
    {
      LODWORD(v2) = 1;
    }

    else
    {
      LODWORD(v2) = 2;
    }
  }

  if (status.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](status.__r_.__value_.__l.__size_);
  }

  v3 = *(this + 75);
  if (!v3 && v2 == 1)
  {
    (*(*this + 56))(__p, this, 0);
    *(this + 85) = 0;
    if (!v50)
    {
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_84;
    }

    v4 = v49;
    v5 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v4 = __p[1];
    }

    if (v4)
    {
      operator new();
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      v5 = v49;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_114;
  }

  if (v3 || v2 != 2)
  {
    if (*(this + 92))
    {
      BreaksNNImpl::create_chunk_from_tslevel(this);
    }

    goto LABEL_84;
  }

  if (*(this + 92))
  {
    goto LABEL_73;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    (*(**(this + 2) + 16))(&v52);
    v8 = v52.__r_.__value_.__r.__words[0];
    if (!v52.__r_.__value_.__r.__words[0])
    {
      v11 = 0;
      goto LABEL_67;
    }

    if (v8 + 8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v9 + 40) + 8;
    }

    v12 = *(v10 + 48);
    if (!v6)
    {
      v13 = *(v10 + 56);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

LABEL_37:
      v14 = *v10;
      v15 = 1;
      if (*v10 > 1835102826)
      {
        if (v14 != 1835102827)
        {
          v16 = 1885892462;
LABEL_42:
          if (v14 != v16)
          {
            v15 = 0;
          }
        }
      }

      else if (v14 != 1635083369)
      {
        v16 = 1651664235;
        goto LABEL_42;
      }

      if (*(v10 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&status, *(v10 + 24), *(v10 + 32));
      }

      else
      {
        status = *(v10 + 24);
      }

      v54 = v15;
      v55 = *&v52.__r_.__value_.__l.__data_;
      if (v52.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v52.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 44);
      v18 = *(this + 89);
      v19 = *(this + 88);
      if (v18 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 85 * (v18 - v19) - 1;
      }

      v21 = *(this + 91);
      v22 = *(this + 92) + v21;
      if (v20 == v22)
      {
        if (v21 < 0x55)
        {
          v23 = *(this + 90);
          v24 = *(this + 87);
          if (v18 - v19 < (v23 - v24))
          {
            if (v23 != v18)
            {
              operator new();
            }

            operator new();
          }

          if (v23 == v24)
          {
            v25 = 1;
          }

          else
          {
            v25 = (v23 - v24) >> 2;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v25);
        }

        *(this + 91) = v21 - 85;
        __p[0] = *v19;
        *(this + 88) = v19 + 1;
        std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(this + 87, __p);
        v19 = *(this + 88);
        v22 = *(this + 92) + *(this + 91);
      }

      v26 = v19[v22 / 0x55] + 48 * v22 + -4080 * (v22 / 0x55);
      v27 = *&status.__r_.__value_.__l.__data_;
      *(v26 + 16) = *(&status.__r_.__value_.__l + 2);
      *v26 = v27;
      memset(&status, 0, sizeof(status));
      *(v26 + 24) = v54;
      *(v26 + 32) = v55;
      v55 = 0uLL;
      ++*(this + 92);
      if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(status.__r_.__value_.__l.__data_);
      }

      (*(**(this + 2) + 32))(*(this + 2));
      v11 = 1;
      goto LABEL_66;
    }

    v13 = *(v10 + 56);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v6 == v12)
    {
      v12 = v6;
      goto LABEL_37;
    }

    v11 = 0;
LABEL_66:
    v6 = v12;
    v7 = v13;
LABEL_67:
    if (v52.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52.__r_.__value_.__l.__size_);
    }
  }

  while ((v11 & 1) != 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 92))
  {
LABEL_73:
    BreaksNNImpl::create_chunk_from_tslevel(this);
  }

LABEL_84:
  if (*(this + 75))
  {
    v28 = (*(*(this + 71) + ((*(this + 74) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((*(this + 74) & 0x3FLL) << 6));
    std::string::operator=((this + 608), v28);
    if ((this + 608) != v28)
    {
      v29 = (this + 632);
      data = v28[1].__r_.__value_.__l.__data_;
      size = v28[1].__r_.__value_.__l.__size_;
      v32 = size - data;
      v33 = *(this + 81);
      v34 = *(this + 79);
      if (v33 - v34 < (size - data))
      {
        v35 = v32 >> 5;
        if (v34)
        {
          std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](this + 79);
          operator delete(*v29);
          v33 = 0;
          *v29 = 0;
          *(this + 80) = 0;
          *(this + 81) = 0;
        }

        if (!(v35 >> 59))
        {
          v36 = v33 >> 4;
          if (v33 >> 4 <= v35)
          {
            v36 = v35;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFE0)
          {
            v37 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          std::vector<std::pair<unsigned long,std::string>>::__vallocate[abi:ne200100](this + 632, v37);
        }

        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v38 = *(this + 80);
      if (v38 - v34 >= v32)
      {
        if (data != size)
        {
          do
          {
            v43 = v34;
            v45 = *data;
            v44 = (data + 1);
            v34->__r_.__value_.__r.__words[0] = v45;
            std::string::operator=(&v34->__r_.__value_.__r.__words[1], v44);
            data = v44[1].__r_.__value_.__r.__words;
            v34 = (v34 + 32);
          }

          while (data != size);
          v34 = (v43 + 32);
          v38 = *(this + 80);
        }

        while (v38 != v34)
        {
          if (SHIBYTE(v38[-1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38[-1].__r_.__value_.__l.__data_);
          }

          v38 = (v38 - 32);
        }

        *(this + 80) = v34;
      }

      else
      {
        v39 = data + v38 - v34;
        if (v38 != v34)
        {
          do
          {
            v41 = *data;
            v40 = (data + 1);
            v34->__r_.__value_.__r.__words[0] = v41;
            v42 = &v34->__r_.__value_.__r.__words[1];
            std::string::operator=(v42, v40);
            data = v40[1].__r_.__value_.__r.__words;
            v34 = v42 + 1;
          }

          while (data != v39);
          v38 = *(this + 80);
        }

        *(this + 80) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*,std::pair<unsigned long,std::string>*,std::pair<unsigned long,std::string>*>(this + 632, v39, size, v38);
      }
    }

    *(this + 82) = v28[2].__r_.__value_.__l.__data_;
    *(this + 83) = v28[2].__r_.__value_.__l.__size_;
    std::allocator<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::destroy[abi:ne200100](*(*(this + 71) + ((*(this + 74) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((*(this + 74) & 0x3FLL) << 6));
    v46 = vaddq_s64(*(this + 37), xmmword_1C3844B60);
    *(this + 37) = v46;
    if (v46.i64[0] >= 0x80uLL)
    {
      operator delete(**(this + 71));
      *(this + 71) += 8;
      *(this + 74) -= 64;
    }

    BreaksNNImpl::apply_ICU_sent_break(this);
  }

  else if (!*(this + 9))
  {
    *(this + 8) = 1;
    *(this + 42) = 0u;
  }

LABEL_114:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1C2FB810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, __int128 a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, int a46, __int16 a47, char a48, char a49, int a50, __int16 a51, char a52, char a53)
{
  std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>::~tuple(&a44);
  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 145) < 0)
  {
    operator delete(*(v53 - 168));
  }

  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::~pair(&a25);
  _Unwind_Resume(a1);
}

void TextSourceImpl::generate_tokens(TextSourceImpl *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  if (v2)
  {
    v3 = this + 176;
    if (*(this + 176) == 1)
    {
      (*(**(this + 20) + 16))(&__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        *buf = &v24;
        {
          operator new();
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &__p);
        (*(**(this + 20) + 32))(*(this + 20));
      }

      else
      {
        *(this + 8) = 1;
        *(this + 176) = 0;
      }
    }

    else
    {
      v4 = *(v2 + 16);
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        Censor::global_plaintext(&__p, v4);
        v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEBUG, "Text Source: %s", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      Censor::global_plaintext(&__p, v4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      Diagnostics::log(7, "Text Source: %s", v7, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = *(this + 18);
      if (!v9 || !(**v9)(v9, v4))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 1952807028;
        memset(&v19, 0, sizeof(v19));
        __p.__r_.__value_.__l.__size_ = 0;
        v12 = *(v4 + 23);
        if ((v12 & 0x8000000000000000) != 0)
        {
          v12 = *(v4 + 8);
        }

        __p.__r_.__value_.__r.__words[2] = v12;
        v14 = *(this + 16);
        v13 = *(this + 17);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = v14;
        v21 = v13;
        std::string::operator=(&v19, v4);
        operator new();
      }

      v10 = *(this + 20);
      v11 = *(this + 17);
      v22 = *(this + 16);
      v23 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 56))(v10, v4, &v22);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      (*(**(this + 20) + 16))(&__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        *buf = &v24;
        {
          operator new();
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &__p);
        (*(**(this + 20) + 32))(*(this + 20));
      }

      else
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v15 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C2F95000, v15, OS_LOG_TYPE_DEBUG, "No valid input from ssml input", buf, 2u);
        }

        Diagnostics::log(7, "No valid input from ssml input", v16);
        v3 = this + 8;
      }

      *v3 = 1;
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    *(this + 8) = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1C2FB88D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14NeuralTTSUtils16is_ane_availableEv_block_invoke()
{
  v0 = MGGetBoolAnswer();
  NeuralTTSUtils::is_ane_available(void)::is_ane_available = v0;
  if (v0)
  {
    v1 = MGGetStringAnswer();
    if (CFStringCompare(v1, @"t8006", 0) == kCFCompareEqualTo || MGGetBoolAnswer())
    {
      NeuralTTSUtils::is_ane_available(void)::is_ane_available = 0;
    }

    CFRelease(v1);
  }
}

NeuralTTSUtils *NeuralTTSUtils::is_ane_only_platform(NeuralTTSUtils *this)
{
  result = NeuralTTSUtils::is_ane_available(this);
  if (result)
  {
    return !NeuralTTSUtils::is_amx_available(result);
  }

  return result;
}

uint64_t NeuralTTSUtils::is_natural_tts_platform(NeuralTTSUtils *this)
{
  if (NeuralTTSUtils::is_natural_tts_platform(void)::onceToken != -1)
  {
    dispatch_once(&NeuralTTSUtils::is_natural_tts_platform(void)::onceToken, &__block_literal_global_26);
  }

  return NeuralTTSUtils::is_natural_tts_platform(void)::isNaturalTTSPlatform;
}

uint64_t ___ZN14NeuralTTSUtils23is_natural_tts_platformEv_block_invoke()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "allowNaturalVoice");
  BOOL_for_key = InternalSettings::get_BOOL_for_key(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  result = MGGetBoolAnswer();
  NeuralTTSUtils::is_natural_tts_platform(void)::isNaturalTTSPlatform = (result | BOOL_for_key) & 1;
  return result;
}

void sub_1C2FB8A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MarkupSentenceImpl::generate_tokens(MarkupSentenceImpl *this)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  do
  {
    (*(**(this + 2) + 16))(buf);
    v2 = *buf;
    if (*buf)
    {
      if (v2 + 8 == v3)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = *(*(v3 + 40) + 8) ^ 1;
      }

      std::vector<std::shared_ptr<Agglomerate>>::push_back[abi:ne200100](&v30, buf);
      (*(**(this + 2) + 32))(*(this + 2));
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  while ((v2 & 1) != 0);
  if (v30 == v31)
  {
    *(this + 8) = 1;
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEFAULT, "Process Markup on sentence level", buf, 2u);
    }

    Diagnostics::log(5, "Process Markup on sentence level", v5, this);
    v6 = v30;
    if (v30 != v31)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + v7);
        *buf = v9;
        if (*(&v9 + 1))
        {
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v10 = v9;
        if (v10 + 8 == v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(v11 + 40) + 8;
        }

        if (v10 + 8 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 40) + 8;
        }

        if (*(v10 + 16) == 2)
        {
          if ((*(v12 + 47) & 0x8000000000000000) != 0)
          {
            if (!*(v12 + 32))
            {
LABEL_30:
              if (v14)
              {
                goto LABEL_43;
              }
            }
          }

          else if (!*(v12 + 47))
          {
            goto LABEL_30;
          }
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back((v29 + 32), buf);
        v15 = v30;
        v16 = (v31 - v30) >> 4;
        if (v16 <= v8 - 1)
        {
          goto LABEL_56;
        }

        v17 = *(v30 + v7);
        if (v17 + 8 == v18)
        {
          goto LABEL_43;
        }

        v19 = v14;
        v20 = v12;
        v21 = *(v18 + 40);
        v22 = *(v21 + 8);
        if (!v22 && !*(v21 + 16))
        {
          goto LABEL_43;
        }

        if (v8 - 1 != v16 - 1)
        {
          if (v16 <= v8)
          {
LABEL_56:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v23 = *(v18 + 40);
          v24 = *(v15 + v7 + 16);
          v19 = v14;
          v20 = v12;
          if (v24 + 8 != v25)
          {
            v26 = *(v25 + 40);
            if (*(v26 + 8) == v22 && *(v26 + 16) == *(v23 + 16))
            {
              goto LABEL_43;
            }
          }
        }

        if (!*(v20 + 16))
        {
          v28 = *(v20 + 47);
          if (v28 < 0)
          {
            v28 = *(v20 + 32);
          }

          if (!v28 && v19)
          {
            if (*(v10 + 16) <= 3uLL)
            {
              std::deque<std::shared_ptr<Agglomerate>>::pop_back((v29 + 32));
              goto LABEL_43;
            }

LABEL_42:
            *(v20 + 16) = *(v19 + 8);
            goto LABEL_43;
          }
        }

        if (v19)
        {
          goto LABEL_42;
        }

LABEL_43:
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v6 = v30;
        v27 = v8++ >= (v31 - v30) >> 4;
        v7 += 16;
      }

      while (!v27);
    }
  }

  *buf = &v30;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1C2FB8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  a13 = &a10;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void FilterAudioImpl::generate_tokens(FilterAudioImpl *this)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(this + 8))
  {
    goto LABEL_56;
  }

  (*(**(this + 2) + 16))(&v33);
  if (v33)
  {
    (*(**(this + 2) + 32))(*(this + 2));
    if (**(this + 13) || ((*(**(this + 14) + 72))(*(this + 14)) & 1) != 0)
    {
      v2 = v33;
      if (v2 + 8 != v3)
      {
        v4 = *(v3 + 40);
        v6 = *(v4 + 8);
        v5 = v4 + 8;
        if (v6 == 1635083369)
        {
          if (v2 + 8 == v7)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            StringFormatter::StringFormatter(&v28, "Audio token without associated audio item");
            MEMORY[0x1C692A510](exception, &v28);
            __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          v8 = *(v7 + 40);
          v9 = (v8 + 8);
          if (*(v8 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v8 + 8), *(v8 + 16));
          }

          else
          {
            v10 = *v9;
            __str.__r_.__value_.__r.__words[2] = *(v8 + 24);
            *&__str.__r_.__value_.__l.__data_ = v10;
          }

          PromptStream::normalize_audio_prompt_name(&__str.__r_.__value_.__l.__data_);
          LOBYTE(v28) = 0;
          *(&v28 + 1) = 0;
          v29 = 0;
          v30 = 0x7FFFFFFF;
          memset(&__p, 0, sizeof(__p));
          prompt_by_id = PromptDatabase::find_prompt_by_id(*(this + 13), &__str, 1);
          if (prompt_by_id)
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v12 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
            {
              v14 = (v8 + 8);
              if (*(v8 + 31) < 0)
              {
                v14 = *v9;
              }

              *buf = 136315138;
              *&buf[4] = v14;
            }

            if (*(v8 + 31) < 0)
            {
              v9 = *v9;
            }

            std::string::operator=(&__p, &__str);
            v29 = *(prompt_by_id + 4);
            v15 = *(&v33 + 1);
            v27 = v33;
            if (*(&v33 + 1))
            {
              atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            FilterAudioImpl::audio_item_post_check(this, &v27, v5, &v28);
          }

          else
          {
            v16 = *(this + 14);
            std::string::basic_string[abi:ne200100]<0>(buf, "🥫");
            v17 = (*(*v16 + 16))(v16, &__str, buf);
            if (v35 < 0)
            {
              operator delete(*buf);
            }

            if (v17 == -1)
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v21 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
              {
                v23 = (v8 + 8);
                if (*(v8 + 31) < 0)
                {
                  v23 = *v9;
                }

                *buf = 136315138;
                *&buf[4] = v23;
              }

              if (*(v8 + 31) < 0)
              {
                v9 = *v9;
              }

              goto LABEL_50;
            }

            MEMORY[0x1C692A640](&__p, "GPROMPT");
            v30 = v17;
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v18 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
            {
              v20 = (v8 + 8);
              if (*(v8 + 31) < 0)
              {
                v20 = *v9;
              }

              *buf = 136315138;
              *&buf[4] = v20;
            }

            if (*(v8 + 31) < 0)
            {
              v9 = *v9;
            }

            v15 = *(&v33 + 1);
            v26 = v33;
            if (*(&v33 + 1))
            {
              atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            FilterAudioImpl::audio_item_post_check(this, &v26, v5, &v28);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

LABEL_50:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_54;
        }
      }
    }

    std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v33);
  }

  else
  {
    *(this + 8) = 1;
  }

LABEL_54:
  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

LABEL_56:
  v24 = *MEMORY[0x1E69E9840];
}