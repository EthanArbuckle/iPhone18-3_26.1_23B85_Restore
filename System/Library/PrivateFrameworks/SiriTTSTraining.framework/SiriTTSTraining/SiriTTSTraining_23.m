void sub_1AE9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  *(v49 - 176) = &a43;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  *(v49 - 176) = &a46;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  *(v49 - 176) = &a49;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  if (*(v49 - 225) < 0)
  {
    operator delete(*(v49 - 248));
  }

  if (*(v49 - 201) < 0)
  {
    operator delete(*(v49 - 224));
  }

  if (*(v49 - 177) < 0)
  {
    operator delete(*(v49 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::apply_noise_reduction(uint64_t a1)
{
  boost::filesystem::path::path(v11, "apply_noise_reduction");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 256), v11) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &NOISE_REDUCED_WAV_FOLDER_NAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 8, &__s);
    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    v14.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__create_directory(&v14, 0);
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v14.__pn_, &METADATA_DATA_FILTERED_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v14, a1 + 8, &pn);
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v14.__pn_ = pn;
    }

    TrainingUtils::read_metadata_from_file(&v14, &__s);
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v6, "preprocess");
    std::__fs::filesystem::operator/[abi:ne200100](&v6, a1 + 32, &v7);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v5.__pn_, "unet");
    std::__fs::filesystem::operator/[abi:ne200100](&v5, &v7, &v14);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v4, "model_config.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v4, &v14, &__p);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v5.__pn_, "preprocess");
    std::__fs::filesystem::operator/[abi:ne200100](&v5, a1 + 32, &v6);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v4, "cargan");
    std::__fs::filesystem::operator/[abi:ne200100](&v4, &v6, &v14);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v3.__pn_, "model_config.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v3, &v14, &v7);
    if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v3.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__pn_.__r_.__value_.__l.__data_);
    }

    v14.__pn_.__r_.__value_.__r.__words[0] = 0x3FEF0A3D70A3D70ALL;
    LODWORD(v6.__r_.__value_.__l.__data_) = 1024;
    LODWORD(v5.__pn_.__r_.__value_.__l.__data_) = 256;
    LODWORD(v4.__r_.__value_.__l.__data_) = 1024;
    LODWORD(v3.__pn_.__r_.__value_.__l.__data_) = 80;
    buf[0] = 1;
    std::allocate_shared[abi:ne200100]<Mel,std::allocator<Mel>,double,int &,int,int,int,int,BOOL,BOOL,BOOL,BOOL,BOOL,int,char const(&)[11],0>();
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return 0;
}

void sub_1AFF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v66 - 201) < 0)
  {
    operator delete(*(v66 - 224));
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a66);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  *(v66 - 224) = &STACK[0x278];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v66 - 224));
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  _Unwind_Resume(a1);
}

void Preprocessing::run_unet_inference(uint64_t a1, void (****a2)(void), uint64_t **a3)
{
  (***a2)();
  v5 = *a2;
  boost::filesystem::path::path(v16, "mel_bin");
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v5 + 6), v16);
  LODWORD(v14) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  v7 = *a2;
  boost::filesystem::path::path(v16, "frame_length");
  v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v7 + 6), v16);
  LODWORD(v14) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v8, &v14);
  v9 = v14;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  v11 = *a3;
  v10 = a3[1];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, *(v10 - 3), *(v10 - 2), (*(v10 - 2) - *(v10 - 3)) >> 2);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v14, (v9 + 1431655765 * ((a3[1] - *a3) >> 3)));
  std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(a3, a3[1], v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  InferenceEngine::VectorOps::transpose_2d_array<float>(a3, v13);
  boost::filesystem::path::path(&__p, "input_mel");
  InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v13);
}

void sub_1B0898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, char **__p, char **a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, char *a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v27 - 72) = &a9;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v27 - 72));
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  __p = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a24 = &a27;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  v29 = *(v27 - 96);
  if (v29)
  {
    *(v27 - 88) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void Preprocessing::run_cargan_inference(void (****a1)(void)@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  (***a1)();
  v5 = *a1;
  boost::filesystem::path::path(v19, "conditioning_lookback");
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v5 + 6), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, v18);
  v7 = SLODWORD(v18[0]);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v8 = *a1;
  boost::filesystem::path::path(v19, "frames_per_chunk");
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v8 + 6), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v9, v18);
  v10 = SLODWORD(v18[0]);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v11 = *a1;
  boost::filesystem::path::path(v19, "mel_bin");
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v11 + 6), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v12, v18);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v13 = (-1431655765 * ((a2[1] - *a2) >> 3)) / v10;
  LODWORD(v18[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v19, v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v13 >= 1)
  {
    v14 = *a2;
    memset(v18, 0, sizeof(v18));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v18, v14, v14 + 24 * v10, v10);
    InferenceEngine::VectorOps::transpose_2d_array<float>(v18, v17);
    boost::filesystem::path::path(&__p, "input_mel");
    InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v17);
  }

  (**a1)[1]();
  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_1B0E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *v32;
  if (*v32)
  {
    *(v32 + 8) = v34;
    operator delete(v34);
  }

  v35 = *(v33 - 112);
  if (v35)
  {
    *(v33 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B0F6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B0F0CLL);
}

void sub_1B0F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (!a23)
  {
    JUMPOUT(0x1B0F00);
  }

  JUMPOUT(0x1B0EFCLL);
}

uint64_t Preprocessing::extract_speech_feature(uint64_t a1)
{
  boost::filesystem::path::path(v16, "extract_speech_feature");
  if (*a1 & 1) != 0 || (Checkpointable::should_skip_stage(*(a1 + 256), v16))
  {
    v2 = 0;
    goto LABEL_58;
  }

  memset(v15, 0, 24);
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v18.__pn_, &METADATA_FEATURE_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&v18, a1 + 8, &v14);
  if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &SILENCE_TRIMMED_WAV_FOLDER_NAME);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 8, &__s);
  if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = __s.__pn_;
  }

  v18.__pn_ = pn;
  memset(&pn, 0, sizeof(pn));
  std::__fs::filesystem::__create_directory(&v18, 0);
  if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v18.__pn_, &METADATA_DATA_FILTERED_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&v18, a1 + 8, &pn);
  if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
  }

  else
  {
    v18.__pn_ = pn;
  }

  TrainingUtils::read_metadata_from_file(&v18, &__s);
  if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__pn_.__r_.__value_.__l.__data_);
  }

  if (__s.__pn_.__r_.__value_.__l.__size_ != __s.__pn_.__r_.__value_.__r.__words[0])
  {
    v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__s.__pn_.__r_.__value_.__l.__data_, "locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v3, &__p);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v18.__pn_, "final.mlmodelc");
    std::__fs::filesystem::operator/[abi:ne200100](&v18, a1 + 56, &v10);
    if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__pn_.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v9 = *(a1 + 56);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_49;
      }
    }

    else if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_49;
    }

    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v10.__pn_.__r_.__value_.__l.__data_, v10.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v10.__pn_;
    }

    v18.__pn_ = v8;
    memset(&v8, 0, sizeof(v8));
    std::__fs::filesystem::__status(&v18, 0);
    if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 == 255 || !v7)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v8, &__p);
      std::__fs::filesystem::operator/[abi:ne200100](&v8, a1 + 56, &v18);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      v9 = v18.__pn_;
      *(&v18.__pn_.__r_.__value_.__s + 23) = 0;
      v18.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

LABEL_49:
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18.__pn_, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v18.__pn_ = v9;
    }

    std::allocate_shared[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureExtractor,std::allocator<SiriTTS::SpeechFeature::SpeechFeatureExtractor>,std::string,BOOL,0>();
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = (a1 + 328);
    if (*(a1 + 351) < 0)
    {
      v6 = *v6;
    }

    LODWORD(v18.__pn_.__r_.__value_.__l.__data_) = 136315394;
    *(v18.__pn_.__r_.__value_.__r.__words + 4) = v6;
    WORD2(v18.__pn_.__r_.__value_.__r.__words[1]) = 2048;
    *(&v18.__pn_.__r_.__value_.__r.__words[1] + 6) = (__s.__pn_.__r_.__value_.__l.__size_ - __s.__pn_.__r_.__value_.__r.__words[0]) >> 4;
    _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is empty after filtering! metadta_size=%lu", &v18, 0x16u);
  }

  v2 = 1;
  v18.__pn_.__r_.__value_.__r.__words[0] = &__s;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  v18.__pn_.__r_.__value_.__r.__words[0] = v15;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v18);
LABEL_58:
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v2;
}

void sub_1B2EBC(_Unwind_Exception *a1)
{
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  STACK[0x400] = &STACK[0x418];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x45F]) < 0)
  {
    operator delete(STACK[0x448]);
  }

  STACK[0x448] = &STACK[0x460];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x448]);
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::SpeechFeature::WordData>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::SpeechFeature::WordData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::WordData>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

BOOL std::__fs::filesystem::operator!=[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
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

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

void *Preprocessing::trim_silence_and_adjust_speechfeature@<X0>(unsigned __int16 **a1@<X1>, void *a2@<X2>, int a3@<W3>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = a3 / 1000;
  v8 = *a1;
  v7 = a1[1];
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
    v11 = v10 - 1;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = &v8[24 * v11];
    v13 = 0.0;
    v14 = 16;
    while (1)
    {
      if (v9)
      {
        goto LABEL_6;
      }

      v17 = *(v8 + 23);
      if (v17 < 0)
      {
        if (*(v8 + 1) != 3)
        {
          goto LABEL_6;
        }

        v18 = *v8;
      }

      else
      {
        v18 = v8;
        if (v17 != 3)
        {
          goto LABEL_6;
        }
      }

      v23 = *v18;
      v24 = *(v18 + 2);
      if (v23 == 26995 && v24 == 108)
      {
        v26 = *(v8 + 9);
        if (v26 > a5)
        {
          v13 = v26 - a5;
          *(v8 + 8) = a5;
          *(v8 + 9) = a5;
          goto LABEL_23;
        }
      }

LABEL_6:
      if (v11 != v9)
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 23);
      if (v15 < 0)
      {
        if (*(v12 + 1) != 3)
        {
          goto LABEL_22;
        }

        v16 = *v12;
      }

      else
      {
        v16 = &v8[24 * v11];
        if (v15 != 3)
        {
          goto LABEL_22;
        }
      }

      v19 = *v16;
      v20 = *(v16 + 2);
      v21 = v19 == 26995 && v20 == 108;
      if (!v21 || (v22 = v12[9], v22 <= a5))
      {
LABEL_22:
        *&v8[v14] = *&v8[v14] - v13;
        goto LABEL_23;
      }

      v12[8] = (v12[8] - v13) - (v22 - a5);
      v12[9] = a5;
LABEL_23:
      ++v9;
      v14 += 24;
      if (v10 == v9)
      {
        goto LABEL_35;
      }
    }
  }

  v13 = 0.0;
LABEL_35:
  v27 = (*(v7 - 4) * v6);
  return std::vector<short>::__assign_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(a4, (*a2 + 2 * (v13 * v6)), (*a2 + 2 * (v27 + (v13 * v6))), v27);
}

void sub_1B38FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Preprocessing::remove_silence_from_speechfeatures(uint64_t *a1@<X1>, const void **a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = *(v3 + 23);
      }

      else
      {
        v8 = *(v3 + 8);
      }

      v9 = *(a2 + 23);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = a2[1];
      }

      if (v8 != v9 || (v7 >= 0 ? (v11 = v3) : (v11 = *v3), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, v8)))
      {
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, v3);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_1B39C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Preprocessing::align_speech_features(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v7 = (a2[1] - *a2) >> 3;
  a3[1] = 0;
  a3[2] = 0;
  v8 = -1431655765 * v7;
  *a3 = 0;
  if (v8 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = (v8 - 1);
    v17 = v8 & 0x7FFFFFFF;
    v18 = 0.0;
    do
    {
      v19 = (*a2 + v14);
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v19, *(v19 + 1));
      }

      else
      {
        v20 = *v19;
        __str.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&__str.__r_.__value_.__l.__data_ = v20;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) <= v15)
      {
        goto LABEL_20;
      }

      v21 = *a1 + 48 * v15;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v23 = *(v21 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v21 + 8);
      }

      if (size == v23 && ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v26 = *v21, v24 >= 0) ? (v27 = (*a1 + 48 * v15)) : (v27 = *v21), !memcmp(p_str, v27, size)))
      {
        v30 = *(v21 + 32);
        memset(&__p, 0, sizeof(__p));
        std::string::operator=(&__p, &__str);
        v29 = (v30 / a6) * a6;
        v32 = v29 - v18;
        v33 = *(*a1 + 48 * v15 + 40);
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v15;
      }

      else
      {
LABEL_20:
        if (v16)
        {
          v28 = v18 + a5;
        }

        else
        {
          v28 = a4;
        }

        memset(&__p, 0, sizeof(__p));
        std::string::operator=(&__p, &__str);
        v29 = (v28 / a6) * a6;
        v32 = v29 - v18;
        v33 = *(a3[1] - 8);
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v18 = v29;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      --v16;
      v14 += 24;
      --v17;
    }

    while (v17);
  }
}

void sub_1B3C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t Preprocessing::validate_data(Preprocessing *this)
{
  boost::filesystem::path::path(__p, "validate_data");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), __p))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, &METADATA_MEL_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&pn, this + 8, &v9);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v9.__pn_.__r_.__value_.__l.__data_, v9.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v9.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, &v7);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (*(this + 47) <= ((v8 - v7) >> 4))
    {
      v2 = 0;
    }

    else
    {
      LogObject = Diagnostics_GetLogObject();
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
      {
        v5 = (this + 328);
        if (*(this + 351) < 0)
        {
          v5 = *v5;
        }

        v6 = *(this + 47);
        LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
        *(pn.__r_.__value_.__r.__words + 4) = v5;
        WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
        *(&pn.__r_.__value_.__r.__words[1] + 6) = (v8 - v7) >> 4;
        HIWORD(pn.__r_.__value_.__r.__words[2]) = 1024;
        v13 = v6;
        _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is invalid due to not enough data! metadta_size=%lu, minimum_size=%d", &pn, 0x1Cu);
      }

      v2 = 1;
    }

    pn.__r_.__value_.__r.__words[0] = &v7;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&pn);
    if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1B3E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Preprocessing::getPriorityforPrompts(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= 3)
    {
      v3 = *(a2 + 23);
      goto LABEL_5;
    }

    return 5;
  }

  v3 = a2[1];
  if (v3 < 3)
  {
    return 5;
  }

LABEL_5:
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *(v4 + v3 - 3);
  if (v5 > 45)
  {
    if (v5 != 46)
    {
      if (v5 == 63)
      {
        return 2;
      }

      return 5;
    }

    return 1;
  }

  else
  {
    if (v5 != 33)
    {
      if (v5 == 44)
      {
        return 3;
      }

      return 5;
    }

    return 4;
  }
}

uint64_t Preprocessing::prompt_generation(Preprocessing *this)
{
  boost::filesystem::path::path(v49, "prompt_generation");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), v49))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, &METADATA_FEATURE_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&pn, this + 8, &v48);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v48.__pn_.__r_.__value_.__l.__data_, v48.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v48.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, &v46);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v4 = &v47[-v46] >> 4;
    if (v4 >= *(this + 47))
    {
      __ptr = 0;
      __dst = 0;
      v45 = 0;
      memset(v42, 0, sizeof(v42));
      memset(__x, 0, sizeof(__x));
      v6 = 126 - 2 * __clz(v4);
      if (v47 == v46)
      {
        v7 = 0;
      }

      else
      {
        v7 = v6;
      }

      pn.__r_.__value_.__r.__words[0] = this;
      std::__introsort<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,false>(v46, v47, &pn, v7, 1);
      v8 = v46;
      if (v47 != v46)
      {
        v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v46, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v9, &buf);
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v39.__pn_, &SILENCE_TRIMMED_WAV_FOLDER_NAME);
        std::__fs::filesystem::operator/[abi:ne200100](&v39, this + 8, &pn);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v37, size + 4);
        if ((v37.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v37;
        }

        else
        {
          v11 = v37.__pn_.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          memmove(v11, p_buf, size);
        }

        strcpy(v11 + size, ".wav");
        __p = v37;
        memset(&v37, 0, sizeof(v37));
        std::__fs::filesystem::operator/[abi:ne200100](&__p, &pn, &v40);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
        }

        else
        {
          pn = v40;
        }

        reader = PCMFile::create_reader(&pn);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        v14 = *(reader + 6);
        std::vector<float>::vector[abi:ne200100](&v39, v14);
        PCMFile::Reader::read_samples(reader, v14, v39.__pn_.__r_.__value_.__l.__data_, 4, 1, 1.0);
        v15 = *(reader + 6);
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&__ptr, __dst, v39.__pn_.__r_.__value_.__l.__data_, v39.__pn_.__r_.__value_.__l.__size_, (v39.__pn_.__r_.__value_.__l.__size_ - v39.__pn_.__r_.__value_.__r.__words[0]) >> 2);
        LogObject = Diagnostics_GetLogObject();
        v17 = v14 / v15;
        if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
        {
          v18 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
          *(pn.__r_.__value_.__r.__words + 4) = v18;
          WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
          *(&pn.__r_.__value_.__r.__words[1] + 6) = v17;
          HIWORD(pn.__r_.__value_.__r.__words[2]) = 2048;
          v53 = (v17 + 0.0);
          _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Added an utterance %s: %f seconds - total duration: %f seconds", &pn, 0x20u);
        }

        v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v8, "fa_phone_list");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v19, &__p);
        v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v8, "fa_duration_list");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>(v20, &v37);
        v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v8, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v21, &__str);
        memset(&v34, 0, sizeof(v34));
        v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (p_str->__r_.__value_.__s.__data_[0] == 42)
        {
          std::string::erase(&__str, 0, 2uLL);
          v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if ((v22 & 0x80) != 0)
        {
          v22 = __str.__r_.__value_.__l.__size_;
          v24 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
        }

        else
        {
          v24 = *(&v35 + v22);
        }

        if (v24 == 126)
        {
          std::string::erase(&__str, v22 - 2, 2uLL);
        }

        memset(v33, 0, sizeof(v33));
        pn.__r_.__value_.__r.__words[0] = " ";
        pn.__r_.__value_.__l.__size_ = "";
        boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__src, &pn);
        boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(v33, &__str, __src, 0);
      }

      v25 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LODWORD(pn.__r_.__value_.__l.__data_) = 134217984;
        *(pn.__r_.__value_.__r.__words + 4) = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "The full prompt duration: %f seconds.", &pn, 0xCu);
      }

      v26 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        boost::algorithm::join<std::vector<std::string>,char [4]>(" # ", v42, &pn);
        v27 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v27;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "The full prompt transcription %s.", &buf, 0xCu);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      v28 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        boost::algorithm::join<std::vector<std::string>,char [4]>(" ", __x, &pn);
        v29 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "The full prompt locale %s.", &buf, 0xCu);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      memset(&pn, 0, sizeof(pn));
      v39.__pn_.__r_.__value_.__s.__data_[0] = 0;
      v39.__pn_.__r_.__value_.__l.__size_ = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v39);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v39);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(v32);
    }

    v5 = Diagnostics_GetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v30 = (this + 328);
      if (*(this + 351) < 0)
      {
        v30 = *v30;
      }

      v31 = *(this + 47);
      LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
      *(pn.__r_.__value_.__r.__words + 4) = v30;
      WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
      *(&pn.__r_.__value_.__r.__words[1] + 6) = &v47[-v46] >> 4;
      HIWORD(pn.__r_.__value_.__r.__words[2]) = 1024;
      LODWORD(v53) = v31;
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is invalid due to not enough data! metadta_size=%lu, minimum_size=%d", &pn, 0x1Cu);
    }

    v2 = 1;
    pn.__r_.__value_.__r.__words[0] = &v46;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&pn);
    if (SHIBYTE(v48.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  return v2;
}

void sub_1B4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (*(v71 - 121) < 0)
  {
    operator delete(*(v71 - 144));
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a52);
  a52 = (v71 - 176);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a52);
  a52 = &a58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a52);
  a58 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a58);
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  __p = &a67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a70)
  {
    a71 = a70;
    operator delete(a70);
  }

  a70 = &STACK[0x200];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a70);
  if (*(v71 - 225) < 0)
  {
    operator delete(*(v71 - 248));
  }

  if (*(v71 - 201) < 0)
  {
    operator delete(*(v71 - 224));
  }

  _Unwind_Resume(a1);
}

void sub_1B5284()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1B5154);
}

void sub_1B52A4()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1B51DCLL);
}

void sub_1B52BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v63 - 153) < 0)
  {
    operator delete(*(v63 - 176));
  }

  if (a63 < 0)
  {
    JUMPOUT(0x1B51E8);
  }

  JUMPOUT(0x1B51ECLL);
}

void Preprocessing::splitBySubstring(std::string *__str@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = a2[23];
  }

  else
  {
    v11 = *(a2 + 1);
  }

  while (1)
  {
    v12 = v6;
    if (v11)
    {
      break;
    }

LABEL_22:
    if (v12 != -1)
    {
      std::string::basic_string(&__p, __str, v6, v12 - v6, &v21);
      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v19 = a2[23];
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v8 = __str;
      }

      else
      {
        v8 = __str->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = __str->__r_.__value_.__l.__size_;
      }

      v11 = v19 >= 0 ? a2[23] : *(a2 + 1);
      v6 = v11 + v12;
      v10 = v19 >= 0 ? a2 : *a2;
      if (size >= v6)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  v13 = size - v6;
  if ((size - v6) >= v11)
  {
    v14 = v8 + size;
    v15 = v8 + v6;
    v16 = *v10;
    do
    {
      if (v13 - v11 == -1)
      {
        break;
      }

      v17 = memchr(v15, v16, v13 - v11 + 1);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (!memcmp(v17, v10, v11))
      {
        if (v18 == v14)
        {
          break;
        }

        v12 = v18 - v8;
        goto LABEL_22;
      }

      v15 = v18 + 1;
      v13 = v14 - (v18 + 1);
    }

    while (v13 >= v11);
  }

LABEL_37:
  std::string::basic_string(&__p, __str, v6, 0xFFFFFFFFFFFFFFFFLL, &v21);
  std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B54F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v24.__end_cap_.__value_ = this;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v15);
    }

    v24.__first_ = 0;
    v24.__begin_ = (8 * (v12 >> 3));
    v24.__end_ = v24.__begin_;
    v24.__end_cap_.__value_ = 0;
    std::__split_buffer<std::string>::emplace_back<std::string const&>(&v24, __x);
    v16 = v24.__begin_;
    memcpy(v24.__end_, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v24.__begin_;
    v24.__end_ = (v24.__end_ + this->__end_ - i);
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = *&v24.__end_;
    v24.__end_ = v21;
    v24.__end_cap_.__value_ = v22;
    v24.__first_ = v21;
    v24.__begin_ = v21;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
    return v16;
  }

  else if (__position.__i_ == end)
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(this, __x);
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    v8 = this->__end_ <= __x || i > __x;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(i, &__x[v9]);
  }

  return i;
}

uint64_t *boost::algorithm::join<std::vector<std::string>,char [4]>@<X0>(char *__s@<X1>, uint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, a3, v8, &v8[v9], v9); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_1B57D0(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::prepare_p2a_asset(uint64_t a1)
{
  boost::filesystem::path::path(v15, "prepare_p2a_asset");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 256), v15) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &METADATA_P2A_PROMPT_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 8, &__s);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, &__p);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v2 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v2, &pn);
    v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_list");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v3, &v11);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_duration");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>(v4, &v10);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v5, &v9);
    memset(v8, 0, sizeof(v8));
    v7[0] = " ";
    v7[1] = "";
    boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v7);
    boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(v8, &pn, __dst, 0);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return 0;
}

void sub_1B70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (*(v78 - 169) < 0)
  {
    operator delete(*(v78 - 192));
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a73)
  {
    operator delete(a73);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  v80 = a76;
  if (a76)
  {
    STACK[0x200] = a76;
    operator delete(v80);
  }

  a76 = &STACK[0x210];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a76);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  v81 = *(v78 - 160);
  if (v81)
  {
    *(v78 - 152) = v81;
    operator delete(v81);
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  v82 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v82;
    operator delete(v82);
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(&STACK[0x2A0], STACK[0x2A8]);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  STACK[0x2A0] = &STACK[0x2D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  STACK[0x2D0] = &STACK[0x2E8];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D0]);
  v83 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v83;
    operator delete(v83);
  }

  STACK[0x300] = &STACK[0x318];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  STACK[0x330] = &STACK[0x350];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x330]);
  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (*(v78 - 217) < 0)
  {
    operator delete(*(v78 - 240));
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::map<std::string,int>,std::map<std::string,int>,0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,int>,0>(a1, a2);
}

void Preprocessing::run_anetec_encoder_inference(uint64_t a1, void (****a2)(void), uint64_t *a3)
{
  (***a2)();
  InferenceEngine::VectorOps::reshape_1d_to_3d<float>(a3, 1, (a3[1] - *a3) >> 2, v7);
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v5 = (0xAAAAAAAAAAAAAAABLL * ((*(v7[0] + 8) - *v7[0]) >> 3));
    v6 = ((*(*v7[0] + 8) - **v7[0]) >> 2);
    buf = 134218496;
    buf_4 = (0xAAAAAAAAAAAAAAABLL * ((v7[1] - v7[0]) >> 3));
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "The input sample shape: %f x %f x %f.", &buf, 0x20u);
  }

  boost::filesystem::path::path(&buf, "inputs");
  InferenceEngine::DataTensor::build_from_3d_array<float>(&buf, v7);
}

void sub_1B7D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  __p = &a16;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void Preprocessing::align_fa_speech_features(uint64_t *a1@<X1>, void *a2@<X2>, float **a3@<X3>, _DWORD *a4@<X4>, int *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v9 = *a1;
  v8 = a1[1];
  std::vector<float>::vector[abi:ne200100](&__p, a3[1] - *a3);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = __p;
    v14 = *v10;
    v13 = v10 + 1;
    v15 = v14;
    *__p = v14;
    if (v13 != v11)
    {
      v16 = (v12 + 4);
      do
      {
        v17 = *v13++;
        v15 = v15 + v17;
        *v16++ = v15;
      }

      while (v13 != v11);
    }
  }

  boost::filesystem::path::path(&v65, ".");
  boost::filesystem::path::path(&v66, ",");
  boost::filesystem::path::path(&v67, "!");
  boost::filesystem::path::path(&v68, "?");
  boost::filesystem::path::path(&v69, ":");
  boost::filesystem::path::path(&v70, ";");
  boost::filesystem::path::path(&v71, "£");
  boost::filesystem::path::path(&v72, "¿");
  boost::filesystem::path::path(v73, "¡");
  v60 = 0;
  v61 = 0;
  v62 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v60, &v65, &v74, 9uLL);
  v18 = 0;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  do
  {
    if (v73[v18 + 23] < 0)
    {
      operator delete(*&v73[v18]);
    }

    v18 -= 24;
  }

  while (v18 != -216);
  v54 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (v19 > v22)
  {
    v23 = *a1 + 24 * v22;
    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v65, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v65.__r_.__value_.__r.__words[2] = *(v23 + 16);
      *&v65.__r_.__value_.__l.__data_ = v24;
    }

    v25 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v65.__r_.__value_.__l.__size_ != 1)
      {
        goto LABEL_25;
      }

      v26 = *v65.__r_.__value_.__l.__data_;
    }

    else
    {
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_25;
      }

      v26 = v65.__r_.__value_.__s.__data_[0];
    }

    if (v26 == 42)
    {
      v27 = (*a2 + 24 * v21);
      v28 = *(v27 + 23);
      if (v28 < 0)
      {
        if (*(v27 + 1) != 3)
        {
          goto LABEL_74;
        }

        v27 = *v27;
      }

      else if (v28 != 3)
      {
        goto LABEL_74;
      }

      v47 = *v27;
      v48 = *(v27 + 2);
      if (v47 == 26995 && v48 == 108)
      {
        v52 = *a5;
        if (*(__p + v21) / v52 * v52 <= *a5)
        {
          v20 = *a5;
        }

        else
        {
          v20 = *(__p + v21) / v52 * v52;
        }

        v59 = v20;
        std::vector<float>::push_back[abi:ne200100](v7, &v59);
        ++v21;
      }

      else
      {
LABEL_74:
        v20 = *a4 / *a5 * *a5;
        v59 = v20;
        std::vector<float>::push_back[abi:ne200100](v7, &v59);
      }

      ++v22;
LABEL_76:
      v29 = 1;
      goto LABEL_84;
    }

    if (v26 != 126)
    {
LABEL_25:
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v21)
      {
        goto LABEL_49;
      }

      v30 = *a2 + 24 * v21;
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v65.__r_.__value_.__l.__size_;
      }

      v32 = *(v30 + 23);
      v33 = v32;
      v34 = *(v30 + 8);
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v30 + 8);
      }

      if (size == v32)
      {
        v35 = (v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v65 : v65.__r_.__value_.__r.__words[0];
        v36 = *v30;
        v37 = v33 >= 0 ? (*a2 + 24 * v21) : *v30;
        if (!memcmp(v35, v37, size))
        {
          if (*(__p + v21) / *a5 * *a5 <= *a5 + v20)
          {
            v51 = *a5 + v20;
          }

          else
          {
            v51 = *(__p + v21) / *a5 * *a5;
          }

          v59 = (v51 - v20);
          v7 = a6;
          std::vector<float>::push_back[abi:ne200100](a6, &v59);
          ++v22;
          ++v21;
LABEL_83:
          v29 = 1;
          v20 = v51;
          goto LABEL_84;
        }
      }

      if (v33 < 0)
      {
        v38 = v34 == 3;
        v7 = a6;
        if (!v38)
        {
          goto LABEL_49;
        }

        v30 = *v30;
      }

      else
      {
        v7 = a6;
        if (v33 != 3)
        {
          goto LABEL_49;
        }
      }

      v38 = *v30 == 26995 && *(v30 + 2) == 108;
      if (!v38)
      {
LABEL_49:
        if (v19 - 1 == v22)
        {
          v39 = *(v64 - 1);
        }

        else
        {
          if (v54 <= v20)
          {
            goto LABEL_78;
          }

          v40 = v60;
          v41 = v61;
          if (v60 != v61)
          {
            if ((v25 & 0x80000000) == 0)
            {
              v42 = v25;
            }

            else
            {
              v42 = v65.__r_.__value_.__l.__size_;
            }

            if ((v25 & 0x80000000) == 0)
            {
              v43 = &v65;
            }

            else
            {
              v43 = v65.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v44 = *(v40 + 23);
              v45 = v44;
              if ((v44 & 0x80u) != 0)
              {
                v44 = *(v40 + 8);
              }

              if (v44 == v42)
              {
                v46 = v45 >= 0 ? v40 : *v40;
                if (!memcmp(v46, v43, v42))
                {
                  break;
                }
              }

              v40 += 24;
              if (v40 == v41)
              {
                goto LABEL_78;
              }
            }
          }

          v39 = v54;
          if (v40 == v41)
          {
LABEL_78:
            v39 = *a4 + v20;
          }
        }

        v50 = v39 / *a5 * *a5;
        if (v50 <= *a5 + v20)
        {
          v51 = *a5 + v20;
        }

        else
        {
          v51 = v50;
        }

        v59 = (v51 - v20);
        std::vector<float>::push_back[abi:ne200100](v7, &v59);
        ++v22;
        goto LABEL_83;
      }

      v54 = *(__p + v21++) / *a5 * *a5;
      goto LABEL_76;
    }

    v59 = 0.0;
    std::vector<float>::push_back[abi:ne200100](v7, &v59);
    v29 = 0;
LABEL_84:
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
      if ((v29 & 1) == 0)
      {
        break;
      }
    }

    else if ((v29 & 1) == 0)
    {
      break;
    }
  }

  v65.__r_.__value_.__r.__words[0] = &v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

void sub_1B8418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  v29 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void Preprocessing::run_prompt_extractor_inference(uint64_t a1, void (****a2)(void), uint64_t a3, uint64_t a4)
{
  (***a2)();
  LODWORD(v7[0]) = 1065353216;
  std::vector<float>::push_back[abi:ne200100](a4, v7);
  InferenceEngine::VectorOps::reshape_1d_to_2d<float>(a4, (*(a4 + 8) - *a4) >> 2, v7);
  v5 = boost::filesystem::path::path(&v6, "phone");
  InferenceEngine::DataTensor::build_from_2d_array<float>(v5, v7);
}

void sub_1B8E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  a21 = (v53 - 120);
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  *(v53 - 120) = v53 - 96;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100]((v53 - 120));
  *(v53 - 96) = &a30;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100]((v53 - 96));
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    if (!v51)
    {
      goto LABEL_11;
    }
  }

  else if (!v51)
  {
LABEL_11:
    a30 = &a45;
    std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a30);
    if (a36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    }

    if (a49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a49);
    }

    if (__p)
    {
      a51 = __p;
      operator delete(__p);
    }

    v55 = *(v53 - 232);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    __p = (v53 - 224);
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v56 = *(v53 - 192);
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    v57 = *(v53 - 184);
    if (v57)
    {
      *(v53 - 176) = v57;
      operator delete(v57);
    }

    v58 = *(v53 - 152);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    *(v53 - 184) = v53 - 144;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v53 - 184));
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  goto LABEL_11;
}

void InferenceEngine::DataTensor::get_5d_array<float>(InferenceEngine::DataTensor *this@<X0>, void *a2@<X8>)
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
    {
      InferenceEngine::DataTensor::get_5d_array<float>();
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
    InferenceEngine::DataTensor::get_5d_array<float>();
  }

  {
    InferenceEngine::DataTensor::get_5d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  InferenceEngine::DataTensor::get_shape(this, 0, __p);
  InferenceEngine::DataUtils::convert_data_to_5d_array<float>(v9, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B9304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::VectorOps::flatten_4d_to_1d<float>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(v8, 0, sizeof(v8));
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      InferenceEngine::VectorOps::flatten_3d_to_1d<float>((v3 + v5), __p);
      std::vector<std::vector<double>>::push_back[abi:ne200100](v8, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }

  TrainingUtils::flatten_2d_to_1d<float>(v8, a2);
  __p[0] = v8;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B93E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void InferenceEngine::VectorOps::transpose_2d_array<float>(uint64_t **a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
  v8 = **a1;
  v7 = (*a1)[1];
  std::vector<float>::vector[abi:ne200100](__p, v6);
  std::vector<std::vector<float>>::vector[abi:ne200100](a2, (v7 - v8) >> 2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4 != v5)
  {
    v9 = 0;
    v10 = *a1;
    v11 = *a2;
    if (((v7 - v8) >> 2) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v7 - v8) >> 2;
    }

    if (v6 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v6;
    }

    do
    {
      if (v7 != v8)
      {
        v14 = v10[3 * v9];
        v15 = v12;
        v16 = v11;
        do
        {
          v17 = *v14++;
          v18 = v17;
          v19 = *v16;
          v16 += 3;
          *(v19 + 4 * v9) = v18;
          --v15;
        }

        while (v15);
      }

      ++v9;
    }

    while (v9 != v13);
  }
}

void sub_1B9510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::build_from_2d_array<float>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  __p[1] = ((v2[1] - *v2) >> 2);
  memset(v3, 0, sizeof(v3));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v3, __p, &v5, 2uLL);
  InferenceEngine::DataUtils::get_type_string<float>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1B9648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void InferenceEngine::VectorOps::reshape_1d_to_2d<float>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
    v9 = 4 * a2;
    do
    {
      __p = 0;
      v11 = 0;
      v12 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v4 + v6, v4 + v6 + v9, v8);
      std::vector<std::vector<double>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      v7 += v8;
      v4 = *a1;
      v6 += v9;
    }

    while (v7 < (a1[1] - *a1) >> 2);
  }
}

void InferenceEngine::DataTensor::build_from_1d_array<float>(uint64_t a1, void *a2)
{
  __p = ((a2[1] - *a2) >> 2);
  memset(v2, 0, sizeof(v2));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v2, &__p, &v4, 1uLL);
  InferenceEngine::DataUtils::get_type_string<float>(&__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1B99BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void InferenceEngine::VectorOps::reshape_1d_to_3d<float>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 * a2;
    v11 = 4 * v10;
    do
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v5 + v8, v5 + v8 + v11, v10);
      InferenceEngine::VectorOps::reshape_1d_to_2d<float>(&__p, a3, v15);
      std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](a4, v15);
      v16 = v15;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v16);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      v9 += v10;
      v5 = *a1;
      v8 += v11;
    }

    while (v9 < (a1[1] - *a1) >> 2);
  }
}

void InferenceEngine::DataTensor::build_from_3d_array<float>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = v2;
  v3 = *v2;
  __p[1] = (0xAAAAAAAAAAAAAAABLL * (v4[1] - v3));
  __p[2] = ((v3[1] - *v3) >> 2);
  memset(v5, 0, sizeof(v5));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v5, __p, &v7, 3uLL);
  InferenceEngine::DataUtils::get_type_string<float>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1B9C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_1B9E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_1B9F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

_OWORD *SiriTTS::SpeechFeature::WordData::WordData(_OWORD *a1, uint64_t *a2)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 24, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_1BA068(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    v14 = *(i - 16);
    v13 = i - 16;
    LOBYTE(v27) = v14;
    v28 = *(v13 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](&v29, (v30 - 16));
    if (v27 == 1)
    {
      v18 = v28;
      v19 = (v28 + 1);
      v20 = *v28;
      if (*v28 != (v28 + 1))
      {
        v21 = v30;
        do
        {
          if (v21 >= v31)
          {
            v21 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v20 + 56));
          }

          else
          {
            *v21 = v20[56];
            *(v21 + 8) = *(v20 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20 + 56);
            v20[56] = 0;
            *(v20 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
            v21 += 16;
          }

          v30 = v21;
          v22 = *(v20 + 1);
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = *(v20 + 2);
              v11 = *v23 == v20;
              v20 = v23;
            }

            while (!v11);
          }

          v20 = v23;
        }

        while (v23 != v19);
        v18 = v28;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v18, *(v18 + 8));
      *v18 = v18 + 8;
      *(v18 + 16) = 0;
      *(v18 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v15 = v28;
      v16 = *v28;
      v17 = v28[1];
      if (*v28 != v17)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v16);
          v16 += 16;
        }

        while (v16 != v17);
        v15 = v28;
        v16 = *v28;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v15, v16);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_49;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_52;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_49:
        operator delete(v26);
        goto LABEL_50;
      }
    }

LABEL_51:
    operator delete(v24);
    goto LABEL_52;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1, *(*a1 + 8));
    goto LABEL_50;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_50:
    v24 = *a1;
    goto LABEL_51;
  }

LABEL_52:
  v27 = &v29;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1BA53C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v9 = *v8;
        v8 += 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v8 = *v7;
      v7 -= 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v8);
      v9 = v6 == a5;
      v6 = v7;
    }

    while (!v9);
  }
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1BA910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *(a2 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1BAA4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<Checkpointable>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<Checkpointable>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2832F8;
  Checkpointable::Checkpointable(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<Checkpointable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2832F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<Checkpointable>::__on_zero_shared(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 56));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 64), *(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(std::string *this, std::string *a2)
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

void sub_1BAC44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::exception::name(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1BAD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = off_283360;
  *(this + 2) = a2;
  std::runtime_error::runtime_error(this + 1, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = off_283360;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = off_283360;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  operator delete();
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(a3, a1);
  result = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(a3);
  if (*a1 == 1)
  {
    result = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(a1 + 8), a2);
    a3[1] = result;
  }

  return result;
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      boost::filesystem::path::path(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      boost::filesystem::path::path(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, v4);
    }
  }

  return result;
}

void sub_1BB0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void nlohmann::detail::type_error::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  boost::filesystem::path::path(&__p, "type_error");
  nlohmann::detail::exception::name(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = off_2833E0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1BB1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return (&off_26C348)[v1];
  }
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = (&dword_0 + 1);
  }

  return result;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    boost::filesystem::path::path(v8, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create(212, v8, exception);
  }

  if (!v2)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_1BB3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void nlohmann::detail::invalid_iterator::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  boost::filesystem::path::path(&__p, "invalid_iterator");
  nlohmann::detail::exception::name(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = off_2833B8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1BB52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    boost::filesystem::path::path(&v7, v4);
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

void sub_1BB640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unsigned __int8 *nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,double,0>(unsigned __int8 *result, double *a2)
{
  v2 = result;
  v3 = *result;
  switch(v3)
  {
    case 5:
      v4 = *(result + 1);
      break;
    case 7:
      v4 = *(result + 1);
      break;
    case 6:
      v4 = *(result + 1);
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
      boost::filesystem::path::path(&v9, v6);
      v7 = std::string::insert(&v9, 0, "type must be number, but is ");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v11 = v7->__r_.__value_.__r.__words[2];
      v10 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(302, &v10, exception);
  }

  *a2 = v4;
  return result;
}

void sub_1BB794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::string,0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v12, v9);
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

void sub_1BB92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    boost::filesystem::path::path(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1BBA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1BBB30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::__shared_ptr_emplace<Mel>::__shared_ptr_emplace[abi:ne200100]<int &,std::allocator<Mel>,0>(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283408;
  Mel::Mel((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<Mel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(uint64_t a1, const std::string::value_type **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), *a2) >= 1)
  {
    return v2;
  }

  return v5;
}

std::string *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
}

void sub_1BBDDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be string, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v12, exception);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_1BBED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<float>,0>(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  return nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<float>>(a1, a2);
}

void sub_1BC010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<float>>(unsigned __int8 *a1, uint64_t a2)
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

  std::vector<int>::reserve(&v13, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v11);
  for (i = v13.__end_; !nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v12, v11); i = v8 + 4)
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v12);
    v14 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v6, &v14, v7);
    v8 = std::vector<float>::insert(&v13, i, &v14);
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

void sub_1BC198(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(unsigned __int8 **result)
{
  if (!*result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = (&dword_0 + 1);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<nlohmann::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_1BC92C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_1BC9A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BCA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BCCE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BCDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,float const*,float const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 8) = 0;
      v7 = *v6++;
      *v4 = 7;
      *(v4 + 8) = v7;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1BCFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(unsigned __int8 *result, float *a2, float a3)
{
  v3 = result;
  v4 = *result;
  if (v4 > 5)
  {
    if (v4 == 7)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

    if (v4 == 6)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

LABEL_11:
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v3);
    boost::filesystem::path::path(&v10, v7);
    v8 = std::string::insert(&v10, 0, "type must be number, but is ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v11, exception);
  }

  if (v4 == 4)
  {
    LOBYTE(a3) = result[8];
    v5 = LODWORD(a3);
    goto LABEL_10;
  }

  if (v4 != 5)
  {
    goto LABEL_11;
  }

  v5 = *(result + 1);
LABEL_10:
  *a2 = v5;
  return result;
}

void sub_1BD1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a2 - 16), "spl");
      v70 = 0.0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v7, &v70, v8);
      v9 = v70;
      v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v6, "spl");
      v70 = 0.0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v10, &v70, v11);
      if (v9 < v70)
      {
        v12 = *v6;
        *v6 = *(a2 - 16);
        *(a2 - 16) = v12;
        v13 = *(v6 + 8);
        *(v6 + 8) = *(a2 - 1);
        *(a2 - 1) = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v20 = (a1 + 16);
        if (a1 + 16 != a2)
        {
          v21 = 0;
          v22 = a1;
          do
          {
            v23 = v20;
            v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v20, "spl");
            v70 = 0.0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v24, &v70, v25);
            v26 = v70;
            v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v22, "spl");
            v70 = 0.0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v27, &v70, v28);
            if (v26 < v70)
            {
              LOBYTE(v70) = *v23;
              v71 = *(v22 + 24);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              *v23 = 0;
              *(v22 + 24) = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
              v29 = v21;
              while (1)
              {
                v30 = v6 + v29;
                v68[0] = *(v6 + v29);
                v69 = *(v6 + v29 + 8);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v6 + v29));
                *v30 = 0;
                *(v30 + 8) = 0;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                v31 = *(v6 + v29 + 16);
                *(v30 + 16) = v68[0];
                v68[0] = v31;
                v32 = *(v6 + v29 + 24);
                *(v30 + 24) = v69;
                v69 = v32;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v6 + v29 + 16));
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v69, v68[0]);
                if (!v29)
                {
                  break;
                }

                v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(&v70, "spl");
                LODWORD(v64[0]) = 0;
                nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v33, v64, v34);
                v35 = *v64;
                v36 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v30 - 16, "spl");
                LODWORD(v64[0]) = 0;
                nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v36, v64, v37);
                v29 -= 16;
                if (v35 >= *v64)
                {
                  v38 = v6 + v29 + 16;
                  goto LABEL_20;
                }
              }

              v38 = v6;
LABEL_20:
              v66[0] = LOBYTE(v70);
              v67 = v71;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
              LOBYTE(v70) = 0;
              v71 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
              v39 = *v38;
              *v38 = v66[0];
              v66[0] = v39;
              v40 = *(v38 + 8);
              *(v38 + 8) = v67;
              v67 = v40;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v67, v66[0]);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v71, LOBYTE(v70));
            }

            v20 = (v23 + 16);
            v21 += 16;
            v22 = v23;
          }

          while (v23 + 16 != a2);
        }
      }
    }

    else
    {
      v16 = a4;
      v17 = a3 >> 1;
      v18 = &a1[16 * (a3 >> 1)];
      if (a3 <= a5)
      {
        v64[0] = a4;
        v64[1] = &v65;
        v65 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(a1, &a1[16 * (a3 >> 1)], a3 >> 1, a4);
        v65 = a3 >> 1;
        v41 = a3 - v17;
        v42 = v16 + 16 * v17;
        std::__stable_sort_move<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>((v6 + 16 * (a3 >> 1)), a2, v41, v42);
        v65 = a3;
        v43 = v16 + 16 * a3;
        v44 = v42;
        while (v44 != v43)
        {
          v45 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v44, "spl");
          v70 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v45, &v70, v46);
          v47 = v70;
          v48 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v16, "spl");
          v70 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v48, &v70, v49);
          if (v47 >= v70)
          {
            v66[0] = *v16;
            v67 = *(v16 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
            *v16 = 0;
            *(v16 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
            v52 = *v6;
            *v6 = v66[0];
            v66[0] = v52;
            v53 = *(v6 + 8);
            *(v6 + 8) = v67;
            v67 = v53;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v67, v66[0]);
            v16 += 16;
          }

          else
          {
            v68[0] = *v44;
            v69 = *(v44 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v44);
            *v44 = 0;
            *(v44 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
            v50 = *v6;
            *v6 = v68[0];
            v68[0] = v50;
            v51 = *(v6 + 8);
            *(v6 + 8) = v69;
            v69 = v51;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v69, v68[0]);
            v44 += 16;
          }

          v6 += 16;
          if (v16 == v42)
          {
            if (v44 != v43)
            {
              v54 = 0;
              do
              {
                v55 = v44 + v54;
                v56 = v6 + v54;
                LOBYTE(v70) = *(v44 + v54);
                v71 = *(v44 + v54 + 8);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v44 + v54));
                *v55 = 0;
                *(v55 + 8) = 0;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
                v57 = *(v6 + v54);
                *v56 = LOBYTE(v70);
                LOBYTE(v70) = v57;
                v58 = *(v6 + v54 + 8);
                *(v56 + 8) = v71;
                v71 = v58;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v6 + v54));
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v71, LOBYTE(v70));
                v54 += 16;
              }

              while (v55 + 16 != v43);
            }

            goto LABEL_36;
          }
        }

        if (v16 != v42)
        {
          v59 = 0;
          do
          {
            v60 = v16 + v59;
            v61 = v6 + v59;
            LOBYTE(v70) = *(v16 + v59);
            v71 = *(v16 + v59 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v16 + v59));
            *v60 = 0;
            *(v60 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
            v62 = *(v6 + v59);
            *v61 = LOBYTE(v70);
            LOBYTE(v70) = v62;
            v63 = *(v6 + v59 + 8);
            *(v61 + 8) = v71;
            v71 = v63;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v6 + v59));
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v70);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v71, LOBYTE(v70));
            v59 += 16;
          }

          while (v60 + 16 != v42);
        }

LABEL_36:
        std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v64);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(a1, &a1[16 * (a3 >> 1)], a3 >> 1, a4, a5);
        v19 = a3 - v17;
        std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v18, a2, v19, v16, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v6, v18, a2, v17, v19, v16, a5);
      }
    }
  }
}

void sub_1BD88C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::__stable_sort_move<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(unsigned __int8 *result, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = a2;
  v7 = result;
  if (a3 == 2)
  {
    v54 = 0;
    v58 = a4;
    v59 = &v54;
    v8 = a2 - 16;
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a2 - 16), "spl");
    v52 = 0.0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v9, &v52, v10);
    v11 = v52;
    v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "spl");
    v52 = 0.0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v12, &v52, v13);
    if (v11 >= v52)
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      ++v54;
      *(v4 + 16) = *(v6 - 16);
      v14 = v6 - 8;
    }

    else
    {
      *v4 = *(v6 - 16);
      *(v4 + 8) = *(v6 - 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6 - 16);
      *(v6 - 16) = 0;
      *(v6 - 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      ++v54;
      v14 = (v7 + 8);
      *(v4 + 16) = *v7;
      v8 = v7;
    }

    *(v4 + 24) = *v14;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    *v8 = 0;
    *v14 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v4 + 16));
LABEL_37:
    v58 = 0;
    return std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v58);
  }

  if (a3 != 1)
  {
    if (a3 > 8)
    {
      v38 = &result[16 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(result, v38, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v7 + 16 * (a3 >> 1), v6, a3 - (a3 >> 1), v4 + 16 * (a3 >> 1), a3 - (a3 >> 1));
      v54 = 0;
      v58 = v4;
      v59 = &v54;
      v39 = v7 + 16 * (a3 >> 1);
      while (v39 != v6)
      {
        v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v39, "spl");
        v52 = 0.0;
        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v40, &v52, v41);
        v42 = v52;
        v43 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "spl");
        v52 = 0.0;
        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v43, &v52, v44);
        if (v42 >= v52)
        {
          *v4 = *v7;
          *(v4 + 8) = *(v7 + 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
          *v7 = 0;
          *(v7 + 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
          v7 += 16;
        }

        else
        {
          *v4 = *v39;
          *(v4 + 8) = *(v39 + 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
          *v39 = 0;
          *(v39 + 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
          v39 += 16;
        }

        ++v54;
        v4 += 16;
        if (v7 == v38)
        {
          if (v39 != v6)
          {
            v45 = 0;
            do
            {
              v46 = v39 + v45;
              v47 = v4 + v45;
              *v47 = *(v39 + v45);
              *(v47 + 8) = *(v39 + v45 + 8);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v39 + v45));
              *v46 = 0;
              *(v46 + 8) = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v4 + v45));
              ++v54;
              v45 += 16;
            }

            while ((v46 + 16) != v6);
          }

          goto LABEL_37;
        }
      }

      if (v7 != v38)
      {
        v48 = 0;
        do
        {
          v49 = v4 + v48;
          v50 = v7 + v48;
          *v49 = *(v7 + v48);
          *(v49 + 8) = *(v7 + v48 + 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v7 + v48));
          *v50 = 0;
          *(v50 + 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v4 + v48));
          ++v54;
          v48 += 16;
        }

        while ((v50 + 16) != v38);
      }
    }

    else
    {
      if (result == a2)
      {
        return result;
      }

      v56 = 0;
      v58 = a4;
      v59 = &v56;
      *a4 = *result;
      *(a4 + 8) = *(result + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(result);
      *v7 = 0;
      *(v7 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      ++v56;
      v15 = v7 + 16;
      if ((v7 + 16) != v6)
      {
        v16 = 0;
        v17 = v4;
        v51 = v6;
        do
        {
          v18 = v15;
          v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "spl");
          v57 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v19, &v57, v20);
          v21 = v57;
          v22 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v17, "spl");
          v57 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v22, &v57, v23);
          v24 = v17 + 16;
          if (v21 >= v57)
          {
            *(v17 + 16) = *v18;
            *(v17 + 24) = *(v7 + 24);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            *v18 = 0;
            *(v7 + 24) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v17 + 16));
            ++v56;
          }

          else
          {
            *(v17 + 16) = *v17;
            *(v17 + 24) = *(v17 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
            *v17 = 0;
            *(v17 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v17 + 16));
            ++v56;
            v25 = v4;
            if (v17 != v4)
            {
              v26 = v16;
              while (1)
              {
                v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v18, "spl");
                v57 = 0.0;
                nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v27, &v57, v28);
                v29 = v4 + v26;
                v30 = v57;
                v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v4 + v26 - 16, "spl");
                v57 = 0.0;
                nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v31, &v57, v32);
                if (v30 >= v57)
                {
                  break;
                }

                LOBYTE(v54) = *(v29 - 16);
                v33 = v4 + v26;
                v55 = *(v4 + v26 - 8);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v4 + v26 - 16));
                *(v29 - 16) = 0;
                *(v33 - 8) = 0;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v54);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v54);
                v34 = *(v4 + v26);
                *v33 = v54;
                LOBYTE(v54) = v34;
                v35 = *(v4 + v26 + 8);
                *(v33 + 8) = v55;
                v55 = v35;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v4 + v26));
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v54);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v55, v54);
                v26 -= 16;
                if (!v26)
                {
                  v25 = v4;
                  goto LABEL_21;
                }
              }

              v25 = v4 + v26;
LABEL_21:
              v6 = v51;
            }

            LOBYTE(v52) = *v18;
            v53 = *(v7 + 24);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            *v18 = 0;
            *(v7 + 24) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v52);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v52);
            v36 = *v25;
            *v25 = LOBYTE(v52);
            LOBYTE(v52) = v36;
            v37 = *(v25 + 8);
            *(v25 + 8) = v53;
            v53 = v37;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v52);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v53, LOBYTE(v52));
          }

          v15 = (v18 + 16);
          v16 += 16;
          v17 = v24;
          v7 = v18;
        }

        while (v18 + 16 != v6);
      }
    }

    goto LABEL_37;
  }

  *a4 = *result;
  *(a4 + 8) = *(result + 1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(result);
  *v7 = 0;
  *(v7 + 8) = 0;

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
}

void sub_1BDEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned __int8 **std::__inplace_merge<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(unsigned __int8 **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a5;
  if (a5)
  {
    v11 = result;
    while (v83 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = v11 + v12;
        v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "spl");
        LODWORD(v90) = 0;
        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v15, &v90, v16);
        v17 = *&v90;
        v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v11 + v12, "spl");
        LODWORD(v90) = 0;
        result = nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v18, &v90, v19);
        if (v17 < *&v90)
        {
          break;
        }

        v12 += 16;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v21 = -v13;
      v22 = v83;
      v79 = a3;
      v80 = v11;
      if (-v13 >= v83)
      {
        if (v13 == -1)
        {
          v74 = v11 + v12;
          v75 = *(v11 + v12);
          *v74 = *a2;
          *a2 = v75;
          v76 = *(v11 + v12 + 8);
          *(v74 + 8) = *(a2 + 8);
          *(a2 + 8) = v76;
          return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v11 + v12));
        }

        v33 = v21 / 2;
        v34 = a3;
        v25 = v11 + 16 * (v21 / 2) + v12;
        v24 = a2;
        if (a2 != v34)
        {
          v78 = v21 / 2;
          v35 = (v79 - a2) >> 4;
          v24 = a2;
          do
          {
            v36 = v24 + 16 * (v35 >> 1);
            v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v36, "spl");
            LODWORD(v90) = 0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v37, &v90, v38);
            v39 = *&v90;
            v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v25, "spl");
            LODWORD(v90) = 0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v40, &v90, v41);
            if (v39 >= *&v90)
            {
              v35 >>= 1;
            }

            else
            {
              v35 += ~(v35 >> 1);
            }

            if (v39 < *&v90)
            {
              v24 = v36 + 16;
            }
          }

          while (v35);
          v33 = v78;
          v22 = v83;
        }

        v77 = (v24 - a2) >> 4;
      }

      else
      {
        v23 = v11;
        v77 = v83 / 2;
        v24 = a2 + 16 * (v83 / 2);
        v25 = a2;
        v26 = a2 - v23 - v12;
        if (v26)
        {
          v27 = v26 >> 4;
          v25 = v14;
          do
          {
            v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v24, "spl");
            LODWORD(v90) = 0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v28, &v90, v29);
            v30 = *&v90;
            v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v25 + 16 * (v27 >> 1), "spl");
            LODWORD(v90) = 0;
            nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v31, &v90, v32);
            if (v30 < *&v90)
            {
              v27 >>= 1;
            }

            else
            {
              v25 += 16 * (v27 >> 1) + 16;
              v27 += ~(v27 >> 1);
            }
          }

          while (v27);
          v22 = v83;
        }

        v33 = (v25 - v80 - v12) >> 4;
      }

      v42 = v24;
      if (v25 != a2)
      {
        v42 = v25;
        if (a2 != v24)
        {
          v43 = v33;
          v44 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v25, a2, v24);
          v33 = v43;
          v22 = v83;
          v42 = v44;
        }
      }

      a4 = -(v33 + v13);
      v45 = v22 - v77;
      if (v33 + v77 >= v22 - (v33 + v77) - v13)
      {
        v46 = v42;
        v47 = v33;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v42, v24, v79, a4, v22 - v77, a6, a7);
        v24 = v25;
        v45 = v77;
        a4 = v47;
        a3 = v46;
      }

      else
      {
        v14 = v42;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v80 + v12, v25, v42, v33, v77, a6, a7);
        a3 = v79;
      }

      v83 = v45;
      a2 = v24;
      v11 = v14;
      if (!v45)
      {
        return result;
      }
    }

    v84[0] = a6;
    v84[1] = &v85;
    v85 = 0;
    if (a4 <= v83)
    {
      if (a2 != v11)
      {
        v63 = a6;
        v64 = v11;
        do
        {
          *v63 = *v64;
          *(v63 + 8) = *(v64 + 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v64);
          *v64 = 0;
          *(v64 + 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
          ++v85;
          v64 += 16;
          v63 += 16;
        }

        while (v64 != a2);
        while (a2 != a3)
        {
          v65 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "spl");
          v86 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v65, &v86, v66);
          v67 = v86;
          v68 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a6, "spl");
          v86 = 0.0;
          nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v68, &v86, v69);
          if (v67 >= v86)
          {
            v88[0] = *a6;
            v89 = *(a6 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a6);
            *a6 = 0;
            *(a6 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
            v72 = *v11;
            *v11 = v88[0];
            v88[0] = v72;
            v73 = *(v11 + 8);
            *(v11 + 8) = v89;
            v89 = v73;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v89, v88[0]);
            a6 += 16;
          }

          else
          {
            LOBYTE(v90) = *a2;
            v91[0] = *(a2 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
            *a2 = 0;
            *(a2 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v90);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v90);
            v70 = *v11;
            *v11 = v90;
            LOBYTE(v90) = v70;
            v71 = *(v11 + 8);
            *(v11 + 8) = v91[0];
            v91[0] = v71;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v90);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v91, v90);
            a2 += 16;
          }

          v11 += 16;
          if (v63 == a6)
          {
            return std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v84);
          }
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v86, a6, v63, v11);
      }
    }

    else if (a2 != a3)
    {
      v81 = v11;
      v48 = 0;
      do
      {
        v49 = a6 + v48;
        v50 = a2 + v48;
        *v49 = *(a2 + v48);
        *(v49 + 8) = *(a2 + v48 + 8);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + v48));
        *v50 = 0;
        *(v50 + 8) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a6 + v48));
        ++v85;
        v48 += 16;
      }

      while (v50 + 16 != a3);
      v51 = a6 + v48;
      v52 = a3;
      v53 = a3 - 16;
      while (a2 != v81)
      {
        v54 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v51 - 16, "spl");
        LODWORD(v90) = 0;
        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v54, &v90, v55);
        v56 = *&v90;
        v57 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2 - 16, "spl");
        LODWORD(v90) = 0;
        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v57, &v90, v58);
        if (v56 >= *&v90)
        {
          LOBYTE(v86) = *(v51 - 16);
          v87 = *(v51 - 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v51 - 16));
          *(v51 - 16) = 0;
          *(v51 - 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v86);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v86);
          v61 = *v53;
          *v53 = LOBYTE(v86);
          LOBYTE(v86) = v61;
          v62 = *(v53 + 8);
          *(v53 + 8) = v87;
          v87 = v62;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v86);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v87, LOBYTE(v86));
          v51 -= 16;
        }

        else
        {
          v88[0] = *(a2 - 16);
          v89 = *(a2 - 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 - 16));
          *(a2 - 16) = 0;
          *(a2 - 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
          v59 = *v53;
          *v53 = v88[0];
          v88[0] = v59;
          v60 = *(v53 + 8);
          *(v53 + 8) = v89;
          v89 = v60;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v89, v88[0]);
          a2 -= 16;
        }

        v52 -= 16;
        v53 -= 16;
        if (v51 == a6)
        {
          return std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v84);
        }
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>,std::reverse_iterator<std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>>(a6 + v48, v51, a6, a3, v52, &v90);
    }

    return std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v84);
  }

  return result;
}

void sub_1BE610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned __int8 **std::unique_ptr<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::__destruct_n &>::~unique_ptr[abi:ne200100](unsigned __int8 **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = v2;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2);
        v6 = *v5;
        v5 += 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v2 + 1, v6);
        ++v4;
        v2 = v5;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10[0] = *v5;
      v11 = *(v5 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      *v5 = 0;
      *(v5 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11;
      v11 = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>,std::reverse_iterator<std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v8 = a2;
  if (a2 != a3)
  {
    v12 = 0;
    do
    {
      v16[0] = *(v8 + v12 - 16);
      v17 = *(v8 + v12 - 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v8 + v12 - 16));
      *(v8 + v12 - 16) = 0;
      *(v8 + v12 - 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      v14 = *(a5 + v12 - 16);
      v13 = a5 + v12 - 16;
      *v13 = v16[0];
      v16[0] = v14;
      v15 = *(a5 + v12 - 8);
      *(v13 + 8) = v17;
      v17 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v17, v16[0]);
      v12 -= 16;
    }

    while (v8 + v12 != a3);
    a5 += v12;
    v8 += v12;
  }

  *a6 = a1;
  a6[1] = v8;
  a6[2] = a4;
  a6[3] = a5;
}

uint64_t std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a2;
  *a2 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  v8 = a1 + 16;
  for (i = v4 + 16; i != a3; i += 16)
  {
    if (v8 == v4)
    {
      v4 = i;
    }

    v10 = *v8;
    *v8 = *i;
    *i = v10;
    v11 = *(v8 + 8);
    *(v8 + 8) = *(i + 8);
    *(i + 8) = v11;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v8 += 16;
  }

  if (v8 != v4)
  {
    v12 = v8;
    v13 = v4;
    do
    {
      while (1)
      {
        v14 = *v12;
        *v12 = *v13;
        *v13 = v14;
        v15 = *(v12 + 8);
        *(v12 + 8) = *(v13 + 8);
        *(v13 + 8) = v15;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        v12 += 16;
        v13 += 16;
        if (v13 == a3)
        {
          break;
        }

        if (v12 == v4)
        {
          v4 = v13;
        }
      }

      v13 = v4;
    }

    while (v12 != v4);
  }

  return v8;
}

unsigned __int8 *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__move_range(a1, a2, a1[1], a2 + 16 * a5);
        v18 = &v7[16 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, &a3[v16], a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__move_range(a1, v5, v10, &v5[16 * a5]);
        v18 = &v7[v16];
      }

      std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(v23, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v15);
    }

    v19 = (16 * (v13 >> 4));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = 16 * a5;
    v21 = &v19[16 * a5];
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v19, v7);
      v19 += 16;
      v7 += 16;
      v20 -= 16;
    }

    while (v20);
    v24 = v21;
    v5 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v10;
      *(v8 + 8) = *(v10 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      *v10 = 0;
      *(v10 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
      v10 += 16;
      v8 += 16;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v12, a2, v7, v6);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__swap_out_circular_buffer(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v12[0] = *(a3 + v7 - 16);
      v13 = *(a3 + v7 - 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a3 + v7 - 16));
      *(a3 + v7 - 16) = 0;
      *(a3 + v7 - 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      v9 = *(a4 + v7 - 16);
      v8 = a4 + v7 - 16;
      *v8 = v12[0];
      v12[0] = v9;
      v10 = *(a4 + v7 - 8);
      *(v8 + 8) = v13;
      v13 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v13, v12[0]);
      v7 -= 16;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

unsigned __int8 *std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v10, v5);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11;
      v11 = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__shared_ptr_emplace<Mel>::__shared_ptr_emplace[abi:ne200100]<double,int &,int,int,int,int,BOOL,BOOL,BOOL,BOOL,BOOL,int,char const(&)[11],std::allocator<Mel>,0>(void *a1, double *a2, int *a3, int *a4, int *a5, int *a6, int *a7, char *a8, char *a9, char *a10, char *a11, char *a12, int *a13, const char *a14)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283408;
  std::allocator<Mel>::construct[abi:ne200100]<Mel,double,int &,int,int,int,int,BOOL,BOOL,BOOL,BOOL,BOOL,int,char const(&)[11]>(&v14, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void std::allocator<Mel>::construct[abi:ne200100]<Mel,double,int &,int,int,int,int,BOOL,BOOL,BOOL,BOOL,BOOL,int,char const(&)[11]>(uint64_t a1, Mel *a2, double *a3, int *a4, int *a5, int *a6, int *a7, int *a8, char *a9, char *a10, char *a11, char *a12, char *a13, int *a14, const char *a15)
{
  v15 = *a3;
  v26 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *a7;
  v19 = *a8;
  v20 = *a9;
  v21 = *a10;
  v22 = *a11;
  v23 = *a12;
  v24 = *a13;
  v25 = *a14;
  boost::filesystem::path::path(&__p, a15);
  Mel::Mel(a2, v26, v16, v17, v18, v19, v20, v21, v15, v22, v23, v24, v25, &__p);
}

void sub_1BF0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<InferenceEngine::Mil2BnnsMilInferenceModel>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283458;
  InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 std::__function::__func<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0,std::allocator<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0>,unsigned long ()(unsigned long,float *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_2834A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0,std::allocator<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0>,unsigned long ()(unsigned long,float *)>::operator()(uint64_t a1, unint64_t *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **(a1 + 40);
  v7 = *(a1 + 32) - v6;
  if (v7 >= *a2)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *(a1 + 32) - v6;
  }

  memcpy(v5, (**(a1 + 48) + 4 * v6), 4 * v8);
  **(a1 + 40) += v8;
  v9 = v4 - v7;
  if (v4 > v7 && v9 >= 1)
  {
    bzero(&v5[4 * v7], 4 * v9);
  }

  return v4;
}

uint64_t std::__function::__func<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0,std::allocator<Preprocessing::apply_noise_reduction(std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>)::$_0>,unsigned long ()(unsigned long,float *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long,float *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](uint64_t a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with a string argument with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v10, exception);
  }

  v3 = *(a1 + 8);
  *&v10 = a2;
  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, a2) + 56;
}

void sub_1BF56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1BF6F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann10basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS8_14adl_serializerENSB_IhNS4_IhEEEEEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSK_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENST_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  return this;
}

void *std::__shared_ptr_emplace<SiriTTS::SpeechFeature::SpeechFeatureExtractor>::__shared_ptr_emplace[abi:ne200100]<std::string,BOOL,std::allocator<SiriTTS::SpeechFeature::SpeechFeatureExtractor>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283538;
  SiriTTS::SpeechFeature::SpeechFeatureExtractor::SpeechFeatureExtractor(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::SpeechFeature::SpeechFeatureExtractor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::SpeechFeature::SpeechFeatureExtractor>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::vector<SiriTTS::SpeechFeature::WordData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::WordData>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::WordData>,SiriTTS::SpeechFeature::WordData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(&v15);
  return v14;
}

void sub_1BFA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::WordData>,SiriTTS::SpeechFeature::WordData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::WordData>,SiriTTS::SpeechFeature::WordData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::WordData>,SiriTTS::SpeechFeature::WordData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::string const*,std::string const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(a4);
  }

  v7 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v6);
  return a4;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
}

void *std::vector<short>::__assign_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15 = v16;
        v15 += 2;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,false>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = (a2 - 16);
    v98 = (a2 - 48);
    v99 = (a2 - 32);
    v11 = a1;
    v100 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = &a2[-v11] >> 4;
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, v10, a3);
                return;
              case 4:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a1 + 32, v10, a3);
                return;
              case 5:
                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, v10, a3);
                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v10, a1))
              {
                v40 = *a1;
                *a1 = *(a2 - 16);
                *(a2 - 16) = v40;
                v41 = *(a1 + 8);
                *(a1 + 8) = *(a2 - 1);
                *(a2 - 1) = v41;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
              }

              return;
            }
          }

          if (v12 <= 23)
          {
            if (a5)
            {
              if (a1 != a2)
              {
                v42 = a1 + 16;
                if (a1 + 16 != v100)
                {
                  v43 = 0;
                  v44 = a1;
                  do
                  {
                    v45 = v42;
                    if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v42, v44))
                    {
                      v114[0] = *v45;
                      v115 = *(v44 + 24);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
                      *v45 = 0;
                      *(v44 + 24) = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      v46 = v43;
                      while (1)
                      {
                        v47 = a1 + v46;
                        v112[0] = *(a1 + v46);
                        v113 = *(a1 + v46 + 8);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + v46));
                        *v47 = 0;
                        *(v47 + 8) = 0;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        v48 = *(a1 + v46 + 16);
                        *(v47 + 16) = v112[0];
                        v112[0] = v48;
                        v49 = *(a1 + v46 + 24);
                        *(v47 + 24) = v113;
                        v113 = v49;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + v46 + 16));
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
                        if (!v46)
                        {
                          break;
                        }

                        v46 -= 16;
                        if (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v47 - 16))
                        {
                          v50 = a1 + v46 + 16;
                          goto LABEL_71;
                        }
                      }

                      v50 = a1;
LABEL_71:
                      v110[0] = v114[0];
                      v111 = v115;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      v114[0] = 0;
                      v115 = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      v51 = *v50;
                      *v50 = v110[0];
                      v110[0] = v51;
                      v52 = *(v50 + 8);
                      *(v50 + 8) = v111;
                      v111 = v52;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
                    }

                    v42 = (v45 + 16);
                    v43 += 16;
                    v44 = v45;
                  }

                  while (v45 + 16 != v100);
                }
              }
            }

            else if (a1 != a2)
            {
              v90 = a1 + 16;
              if (a1 + 16 != v100)
              {
                do
                {
                  v91 = v90;
                  if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v90, a1))
                  {
                    v114[0] = *v91;
                    v115 = *(a1 + 24);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v91);
                    *v91 = 0;
                    *(a1 + 24) = 0;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    do
                    {
                      v112[0] = *a1;
                      v113 = *(a1 + 8);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
                      *a1 = 0;
                      *(a1 + 8) = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      v93 = *(a1 + 16);
                      v92 = a1 + 16;
                      *v92 = v112[0];
                      v112[0] = v93;
                      v94 = *(v92 + 8);
                      *(v92 + 8) = v113;
                      v113 = v94;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v92);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
                      a1 = v92 - 32;
                    }

                    while (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, a1));
                    v110[0] = v114[0];
                    v111 = v115;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    v114[0] = 0;
                    v115 = 0;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    v96 = *(a1 + 16);
                    v95 = a1 + 16;
                    *v95 = v110[0];
                    v110[0] = v96;
                    v97 = *(v95 + 8);
                    *(v95 + 8) = v111;
                    v111 = v97;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
                  }

                  v90 = (v91 + 16);
                  a1 = v91;
                }

                while (v91 + 16 != v100);
              }
            }

            return;
          }

          if (!a4)
          {
            if (a1 != a2)
            {
              v53 = v13 >> 1;
              v54 = v13 >> 1;
              do
              {
                v55 = v54;
                if (v53 >= v54)
                {
                  v56 = (2 * v54) | 1;
                  v57 = a1 + 16 * v56;
                  if (2 * v54 + 2 < v12 && Preprocessing::prompt_generation(void)::$_0::operator()(a3, a1 + 16 * v56, v57 + 16))
                  {
                    v57 += 16;
                    v56 = 2 * v55 + 2;
                  }

                  v58 = a1 + 16 * v55;
                  if (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v57, v58))
                  {
                    v114[0] = *v58;
                    v115 = *(v58 + 8);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 16 * v55));
                    *v58 = 0;
                    *(v58 + 8) = 0;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    do
                    {
                      v59 = v57;
                      v112[0] = *v57;
                      v113 = *(v57 + 8);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
                      *v57 = 0;
                      *(v57 + 8) = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      v60 = *v58;
                      *v58 = v112[0];
                      v112[0] = v60;
                      v61 = *(v58 + 8);
                      *(v58 + 8) = v113;
                      v113 = v61;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
                      if (v53 < v56)
                      {
                        break;
                      }

                      v62 = (2 * v56) | 1;
                      v57 = a1 + 16 * v62;
                      v56 = 2 * v56 + 2;
                      if (v56 >= v12)
                      {
                        v56 = v62;
                      }

                      else if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, a1 + 16 * v62, v57 + 16))
                      {
                        v57 += 16;
                      }

                      else
                      {
                        v56 = v62;
                      }

                      v58 = v59;
                    }

                    while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v57, v114));
                    v110[0] = v114[0];
                    v111 = v115;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    v114[0] = 0;
                    v115 = 0;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    v63 = *v59;
                    *v59 = v110[0];
                    v110[0] = v63;
                    v64 = *(v59 + 8);
                    *(v59 + 8) = v111;
                    v111 = v64;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
                    a2 = v100;
                  }
                }

                v54 = v55 - 1;
              }

              while (v55);
              do
              {
                v101 = a2;
                v108[0] = *a1;
                v109 = *(a1 + 8);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
                *a1 = 0;
                *(a1 + 8) = 0;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v108);
                v65 = 0;
                v66 = a1;
                do
                {
                  v67 = v66 + 16 * v65;
                  v68 = v67 + 16;
                  v69 = (2 * v65) | 1;
                  v70 = 2 * v65 + 2;
                  if (v70 < v12)
                  {
                    v71 = v67 + 32;
                    if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v67 + 16, v67 + 32))
                    {
                      v68 = v71;
                      v69 = v70;
                    }
                  }

                  v114[0] = *v68;
                  v115 = *(v68 + 8);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                  *v68 = 0;
                  *(v68 + 8) = 0;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                  v72 = *v66;
                  *v66 = v114[0];
                  v114[0] = v72;
                  v73 = *(v66 + 8);
                  *(v66 + 8) = v115;
                  v115 = v73;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
                  v66 = v68;
                  v65 = v69;
                }

                while (v69 <= ((v12 - 2) >> 1));
                a2 = v101 - 16;
                if (v68 == v101 - 16)
                {
                  v106[0] = v108[0];
                  v107 = v109;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v108);
                  v108[0] = 0;
                  v109 = 0;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v106);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v106);
                  v88 = *v68;
                  *v68 = v106[0];
                  v106[0] = v88;
                  v89 = *(v68 + 8);
                  *(v68 + 8) = v107;
                  v107 = v89;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v106);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v107, v106[0]);
                }

                else
                {
                  v104[0] = *(v101 - 16);
                  v105 = *(v101 - 1);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101 - 16);
                  *(v101 - 16) = 0;
                  *(v101 - 1) = 0;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
                  v74 = *v68;
                  *v68 = v104[0];
                  v104[0] = v74;
                  v75 = *(v68 + 8);
                  *(v68 + 8) = v105;
                  v105 = v75;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v105, v104[0]);
                  v102[0] = v108[0];
                  v103 = v109;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v108);
                  v108[0] = 0;
                  v109 = 0;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
                  v76 = *(v101 - 16);
                  *(v101 - 16) = v102[0];
                  v102[0] = v76;
                  v77 = *(v101 - 1);
                  *(v101 - 1) = v103;
                  v103 = v77;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v103, v102[0]);
                  v78 = (v68 - a1 + 16) >> 4;
                  v79 = v78 < 2;
                  v80 = v78 - 2;
                  if (!v79)
                  {
                    v81 = v80 >> 1;
                    v82 = a1 + 16 * (v80 >> 1);
                    if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v82, v68))
                    {
                      v114[0] = *v68;
                      v115 = *(v68 + 8);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                      *v68 = 0;
                      *(v68 + 8) = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      do
                      {
                        v83 = v82;
                        v112[0] = *v82;
                        v113 = *(v82 + 8);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v82);
                        *v82 = 0;
                        *(v82 + 8) = 0;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        v84 = *v68;
                        *v68 = v112[0];
                        v112[0] = v84;
                        v85 = *(v68 + 8);
                        *(v68 + 8) = v113;
                        v113 = v85;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
                        if (!v81)
                        {
                          break;
                        }

                        v81 = (v81 - 1) >> 1;
                        v82 = a1 + 16 * v81;
                        v68 = v83;
                      }

                      while (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v82, v114));
                      v110[0] = v114[0];
                      v111 = v115;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      v114[0] = 0;
                      v115 = 0;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      v86 = *v83;
                      *v83 = v110[0];
                      v110[0] = v86;
                      v87 = *(v83 + 8);
                      *(v83 + 8) = v111;
                      v111 = v87;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v83);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
                    }
                  }

                  a2 = v101 - 16;
                }

                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v108);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v109, v108[0]);
                v79 = v12-- <= 2;
              }

              while (!v79);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = a1 + 16 * (v12 >> 1);
          if (v12 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1 + 16 * (v12 >> 1), a1, v10, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16 * (v12 >> 1), v10, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1 + 16, v15 - 16, v99, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1 + 32, a1 + 16 + 16 * v14, v98, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(v15 - 16, a1 + 16 * (v12 >> 1), a1 + 16 + 16 * v14, a3);
            v16 = *a1;
            *a1 = *v15;
            *v15 = v16;
            v17 = *(a1 + 8);
            *(a1 + 8) = *(v15 + 8);
            *(v15 + 8) = v17;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
          }

          --a4;
          a2 = v100;
          if ((a5 & 1) != 0 || Preprocessing::prompt_generation(void)::$_0::operator()(a3, a1 - 16, a1))
          {
            break;
          }

          v114[0] = *a1;
          v115 = *(a1 + 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
          *a1 = 0;
          *(a1 + 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
          if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v10))
          {
            v11 = a1;
            do
            {
              v11 += 16;
            }

            while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v11));
          }

          else
          {
            v30 = a1 + 16;
            do
            {
              v11 = v30;
              if (v30 >= v100)
              {
                break;
              }

              v31 = Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v30);
              v30 = v11 + 16;
            }

            while (!v31);
          }

          v32 = v100;
          if (v11 < v100)
          {
            v32 = v100;
            do
            {
              v32 -= 16;
            }

            while (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v32));
          }

          while (v11 < v32)
          {
            v33 = *v11;
            *v11 = *v32;
            *v32 = v33;
            v34 = *(v11 + 8);
            *(v11 + 8) = *(v32 + 8);
            *(v32 + 8) = v34;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
            do
            {
              v11 += 16;
            }

            while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v11));
            do
            {
              v32 -= 16;
            }

            while (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v114, v32));
          }

          if (v11 - 16 != a1)
          {
            v112[0] = *(v11 - 16);
            v113 = *(v11 - 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v11 - 16));
            *(v11 - 16) = 0;
            *(v11 - 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
            v35 = *a1;
            *a1 = v112[0];
            v112[0] = v35;
            v36 = *(a1 + 8);
            *(a1 + 8) = v113;
            v113 = v36;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
          }

          v110[0] = v114[0];
          v111 = v115;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
          v114[0] = 0;
          v115 = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
          v37 = *(v11 - 16);
          *(v11 - 16) = v110[0];
          v110[0] = v37;
          v38 = *(v11 - 8);
          *(v11 - 8) = v111;
          v111 = v38;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v11 - 16));
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
          a5 = 0;
        }

        v114[0] = *a1;
        v115 = *(a1 + 8);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
        *a1 = 0;
        *(a1 + 8) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
        v18 = 0;
        do
        {
          v19 = Preprocessing::prompt_generation(void)::$_0::operator()(a3, a1 + v18 + 16, v114);
          v18 += 16;
        }

        while (v19);
        v20 = a1 + v18;
        v21 = v100;
        if (v18 == 16)
        {
          v21 = v100;
          do
          {
            if (v20 >= v21)
            {
              break;
            }

            v21 -= 16;
          }

          while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v21, v114));
        }

        else
        {
          do
          {
            v21 -= 16;
          }

          while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v21, v114));
        }

        v11 = a1 + v18;
        if (v20 < v21)
        {
          v22 = v21;
          do
          {
            v23 = *v11;
            *v11 = *v22;
            *v22 = v23;
            v24 = *(v11 + 8);
            *(v11 + 8) = *(v22 + 8);
            *(v22 + 8) = v24;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
            do
            {
              v11 += 16;
            }

            while (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v11, v114));
            do
            {
              v22 -= 16;
            }

            while (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v22, v114));
          }

          while (v11 < v22);
        }

        if (v11 - 16 != a1)
        {
          v112[0] = *(v11 - 16);
          v113 = *(v11 - 8);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v11 - 16));
          *(v11 - 16) = 0;
          *(v11 - 8) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
          v25 = *a1;
          *a1 = v112[0];
          v112[0] = v25;
          v26 = *(a1 + 8);
          *(a1 + 8) = v113;
          v113 = v26;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v112);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v113, v112[0]);
        }

        v110[0] = v114[0];
        v111 = v115;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
        v114[0] = 0;
        v115 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
        v27 = *(v11 - 16);
        *(v11 - 16) = v110[0];
        v110[0] = v27;
        v28 = *(v11 - 8);
        *(v11 - 8) = v111;
        v111 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v11 - 16));
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v110);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v111, v110[0]);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v114);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v115, v114[0]);
        if (v20 >= v21)
        {
          break;
        }

LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,false>(a1, v11 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }

      v29 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(a1, v11 - 16, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(v11, v100, a3))
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_35;
      }
    }

    a2 = (v11 - 16);
    if (!v29)
    {
      continue;
    }

    break;
  }
}

BOOL Preprocessing::prompt_generation(void)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "transcription");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v4, &v15);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a3, "transcription");
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v5, &__p);
  PriorityforPrompts = Preprocessing::getPriorityforPrompts(v6, &v15);
  v8 = PriorityforPrompts;
  v9 = Preprocessing::getPriorityforPrompts(PriorityforPrompts, &__p);
  if (v8 != v9)
  {
    v12 = v8 < v9;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  v12 = size > v11;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_11:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1C0F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = Preprocessing::prompt_generation(void)::$_0::operator()(a4, a2, a1);
  result = Preprocessing::prompt_generation(void)::$_0::operator()(a4, a3, a2);
  if (v8)
  {
    v10 = *v7;
    if (result)
    {
      *v7 = *a3;
      *a3 = v10;
      v11 = (a3 + 8);
    }

    else
    {
      *v7 = *a2;
      *a2 = v10;
      v15 = *(v7 + 8);
      *(v7 + 8) = *(a2 + 8);
      *(a2 + 8) = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      result = Preprocessing::prompt_generation(void)::$_0::operator()(a4, a3, a2);
      if (!result)
      {
        return result;
      }

      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v11 = (a3 + 8);
      v7 = a2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v11 = (a2 + 8);
    v13 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    result = Preprocessing::prompt_generation(void)::$_0::operator()(a4, a2, v7);
    if (!result)
    {
      return result;
    }

    v14 = *v7;
    *v7 = *a2;
    *a2 = v14;
  }

  v17 = *(v7 + 8);
  *(v7 + 8) = *v11;
  *v11 = v17;

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
}

unsigned __int8 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a2, a3, a5);
  result = Preprocessing::prompt_generation(void)::$_0::operator()(a5, a4, a3);
  if (result)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    result = Preprocessing::prompt_generation(void)::$_0::operator()(a5, a3, a2);
    if (result)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
      result = Preprocessing::prompt_generation(void)::$_0::operator()(a5, a2, a1);
      if (result)
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
        v16 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v16;

        return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
      }
    }
  }

  return result;
}

unsigned __int8 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a2, a3, a4, a6);
  result = Preprocessing::prompt_generation(void)::$_0::operator()(a6, a5, a4);
  if (result)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v14;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
    result = Preprocessing::prompt_generation(void)::$_0::operator()(a6, a4, a3);
    if (result)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      result = Preprocessing::prompt_generation(void)::$_0::operator()(a6, a3, a2);
      if (result)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v18;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
        result = Preprocessing::prompt_generation(void)::$_0::operator()(a6, a2, a1);
        if (result)
        {
          v19 = *a1;
          *a1 = *a2;
          *a2 = v19;
          v20 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v20;

          return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, a2 - 16, a1))
        {
          v7 = *a1;
          *a1 = *(a2 - 16);
          *(a2 - 16) = v7;
          v8 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v8;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a2 - 16, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16, a3);
      return 1;
  }

LABEL_11:
  v9 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,0>(a1, a1 + 16, a1 + 32, a3);
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (Preprocessing::prompt_generation(void)::$_0::operator()(a3, v10, v9))
    {
      v25[0] = *v10;
      v26 = *(v10 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      *v10 = 0;
      *(v10 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
      v13 = v11;
      while (1)
      {
        v14 = a1 + v13;
        v23[0] = *(a1 + v13 + 32);
        v24 = *(a1 + v13 + 40);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + v13 + 32));
        *(a1 + v13 + 32) = 0;
        *(v14 + 40) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
        v15 = *(a1 + v13 + 48);
        *(v14 + 48) = v23[0];
        v23[0] = v15;
        v16 = *(a1 + v13 + 56);
        *(v14 + 56) = v24;
        v24 = v16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + v13 + 48));
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
        if (v13 == -32)
        {
          break;
        }

        v13 -= 16;
        if (!Preprocessing::prompt_generation(void)::$_0::operator()(a3, v25, v14 + 16))
        {
          v17 = a1 + v13 + 48;
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      v21[0] = v25[0];
      v22 = v26;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
      v25[0] = 0;
      v26 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v18 = *v17;
      *v17 = v21[0];
      v21[0] = v18;
      v19 = *(v17 + 8);
      *(v17 + 8) = v22;
      v22 = v19;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
      ++v12;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
      if (v12 == 8)
      {
        return v10 + 16 == a2;
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 16;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

void sub_1C1658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(unsigned __int8 *a1@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<std::string>,0>(a1, a2);
}

void sub_1C16A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<std::string>,0>(unsigned __int8 *a1, std::vector<std::string> *a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v7, v4);
    v5 = std::string::insert(&v7, 0, "type must be array, but is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v8, exception);
  }

  nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<std::string>>(a1, a2);
}

void sub_1C1794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<std::string>>(unsigned __int8 *a1, std::vector<std::string> *a2)
{
  memset(&v7, 0, sizeof(v7));
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

  std::vector<std::string>::reserve(&v7, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v6, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v6);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v5, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v5);
  _ZNSt3__19transformB8ne200100IN8nlohmann6detail9iter_implIKNS1_10basic_jsonINS_3mapENS_6vectorENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbxydSA_NS1_14adl_serializerENS6_IhNSA_IhEEEEEEEENS_15insert_iteratorINS6_ISC_NSA_ISC_EEEEEEZNS2_20from_json_array_implISG_SL_EEDTcmcmcldtfL0p0_7reserveclsr3stdE7declvalINT0_9size_typeEEEEcldtfL0p_3getINSO_10value_typeEEEcvv_EERKT_RSO_NS2_12priority_tagILj1EEEEUlRSH_E_EESO_SS_SS_SO_T1_(v6, v5, &v7, v7.__end_);
  std::vector<std::string>::__vdeallocate(a2);
  *a2 = v7;
  memset(&v7, 0, sizeof(v7));
  v6[0] = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v6);
}

void sub_1C18E4(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

std::vector<std::string> *_ZNSt3__19transformB8ne200100IN8nlohmann6detail9iter_implIKNS1_10basic_jsonINS_3mapENS_6vectorENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbxydSA_NS1_14adl_serializerENS6_IhNSA_IhEEEEEEEENS_15insert_iteratorINS6_ISC_NSA_ISC_EEEEEEZNS2_20from_json_array_implISG_SL_EEDTcmcmcldtfL0p0_7reserveclsr3stdE7declvalINT0_9size_typeEEEEcldtfL0p_3getINSO_10value_typeEEEcvv_EERKT_RSO_NS2_12priority_tagILj1EEEEUlRSH_E_EESO_SS_SS_SO_T1_(unsigned __int8 **a1, unsigned __int8 **a2, std::vector<std::string> *a3, const std::string *a4)
{
  v6 = a2;
  v7 = a1;
  while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(a1, a2))
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v7);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v8, &__x);
    v9.__i_ = a4;
    v10.__i_ = std::vector<std::string>::insert(a3, v9, &__x).__i_;
    if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__x.__r_.__value_.__l.__data_);
    }

    a4 = v10.__i_ + 1;
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v7);
    a1 = v7;
    a2 = v6;
  }

  return a3;
}

void sub_1C1A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v10 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v11 = __position.__i_ - begin;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v24.__end_cap_.__value_ = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v14);
    }

    v24.__first_ = 0;
    v24.__begin_ = (8 * (v11 >> 3));
    v24.__end_ = v24.__begin_;
    v24.__end_cap_.__value_ = 0;
    std::__split_buffer<std::string>::emplace_back<std::string>(&v24, __x);
    v16 = v24.__begin_;
    memcpy(v24.__end_, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v24.__begin_;
    v24.__end_ = (v24.__end_ + this->__end_ - i);
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = *&v24.__end_;
    v24.__end_ = v21;
    v24.__end_cap_.__value_ = v22;
    v24.__first_ = v21;
    v24.__begin_ = v21;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
    return v16;
  }

  else if (__position.__i_ == end)
  {
    v15 = *&__x->__r_.__value_.__l.__data_;
    end->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&end->__r_.__value_.__l.__data_ = v15;
    __x->__r_.__value_.__l.__size_ = 0;
    __x->__r_.__value_.__r.__words[2] = 0;
    __x->__r_.__value_.__r.__words[0] = 0;
    this->__end_ = end + 1;
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(i->__r_.__value_.__l.__data_);
    }

    v8 = *&__x->__r_.__value_.__l.__data_;
    i->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&i->__r_.__value_.__l.__data_ = v8;
    *(&__x->__r_.__value_.__s + 23) = 0;
    __x->__r_.__value_.__s.__data_[0] = 0;
  }

  return i;
}

__n128 std::__split_buffer<std::string>::emplace_back<std::string>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = *(a1 + 32);
      v12.__end_cap_.__value_ = *(a1 + 32);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v12, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    *(a1 + 8) += 8 * v7;
    *(a1 + 16) = v8;
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 16) += 24;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

void std::__split_buffer<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      v10 = v4 - *a1;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = *(a1 + 32);
      v15.__end_cap_.__value_ = *(a1 + 32);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    *(a1 + 8) += 8 * v7;
    *(a1 + 16) = v8;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  *(a1 + 16) += 24;
}

uint64_t std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_1C2418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_1C259C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[7]>();
}

void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,int>,0>(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be object, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v12, exception);
  }

  *(&v12 + 1) = 0;
  v13 = 0;
  *&v12 = &v12 + 8;
  std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>,std::insert_iterator<std::map<std::string,int>>,void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,int>,0>(nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&,std::map<std::string,int> &)::{lambda(std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&)#1}>(**(a1 + 8), (*(a1 + 8) + 8), &v12, &v12 + 1);
  v4 = a2 + 8;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a2, *(a2 + 8));
  v5 = *(&v12 + 1);
  *a2 = v12;
  *(a2 + 8) = v5;
  v6 = v13;
  *(a2 + 16) = v13;
  if (v6)
  {
    *(v5 + 16) = v4;
    *&v12 = &v12 + 8;
    *(&v12 + 1) = 0;
    v13 = 0;
    v5 = 0;
  }

  else
  {
    *a2 = v4;
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(&v12, v5);
}

void *std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>,std::insert_iterator<std::map<std::string,int>>,void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,int>,0>(nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&,std::map<std::string,int> &)::{lambda(std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&)#1}>(void *a1, void *a2, void *a3, void *a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v14 = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v5 + 56, &v14);
      v6 = v14;
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v5[4], v5[5]);
      }

      else
      {
        __p = *(v5 + 4);
      }

      v12 = v6;
      std::insert_iterator<std::map<std::string,int>>::operator=[abi:ne200100](v13, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != a2);
    return v13[0];
  }

  return a3;
}

void sub_1C28FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::insert_iterator<std::map<std::string,int>>::operator=[abi:ne200100](void **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int>>(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

const void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int>>(void *a1, uint64_t *a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::pair<std::string const,int>>();
  }

  return result;
}

const void **std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_1C2C48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::clear[abi:ne200100](uint64_t *a1)
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

void InferenceEngine::DataUtils::convert_data_to_5d_array<float>(uint64_t a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] - *a2 != 40)
  {
    InferenceEngine::DataUtils::convert_data_to_5d_array<float>();
  }

  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = v4[3];
  std::vector<float>::vector[abi:ne200100](__p, v4[4]);
  std::vector<std::vector<float>>::vector[abi:ne200100](v21, v10);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](v22, v9);
  std::vector<std::vector<std::vector<std::vector<float>>>>::vector[abi:ne200100](v23, v8);
  std::vector<std::vector<std::vector<std::vector<std::vector<float>>>>>::vector[abi:ne200100](a3, v7);
  v24 = v23;
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = v22;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = v21;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v11 = *a2;
  v12 = **a2;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      if (v11[1])
      {
        v14 = 0;
        do
        {
          if (v11[2])
          {
            v15 = 0;
            do
            {
              v16 = v11[3];
              if (v16)
              {
                v17 = 0;
                v18 = 0;
                do
                {
                  v19 = v11[4];
                  memcpy(*(*(*(*(*a3 + 24 * i) + 24 * v14) + 24 * v15) + v17), (a1 + 4 * v19 * v18++ + 4 * v16 * v15 * v19 + 4 * v16 * v14 * v19 * v11[2] + 4 * v16 * i * v19 * v11[2] * v11[1]), 4 * v19);
                  v11 = *a2;
                  v16 = (*a2)[3];
                  v17 += 24;
                }

                while (v18 < v16);
              }

              ++v15;
            }

            while (v15 < v11[2]);
          }

          ++v14;
        }

        while (v14 < v11[1]);
        v12 = *v11;
      }
    }
  }
}

void sub_1C2F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v17 - 88) = v16;
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100]((v17 - 88));
  *(v17 - 88) = &a16;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100]((v17 - 88));
  *(v17 - 88) = &a13;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v17 - 88));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::vector<std::vector<std::vector<float>>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C31AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<std::vector<std::vector<std::vector<std::vector<float>>>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C34B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<std::vector<std::vector<std::vector<float>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void InferenceEngine::VectorOps::flatten_3d_to_1d<float>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(v8, 0, sizeof(v8));
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      TrainingUtils::flatten_2d_to_1d<float>((v3 + v5), __p);
      std::vector<std::vector<double>>::push_back[abi:ne200100](v8, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }

  TrainingUtils::flatten_2d_to_1d<float>(v8, a2);
  __p[0] = v8;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1C3750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

char **std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(void *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<float>>::__move_range(a1, a2, a1[1], (a2 + 24 * a5));
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<float>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}