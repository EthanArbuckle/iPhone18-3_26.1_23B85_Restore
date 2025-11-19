unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = *v2;
    if (v4 > 9)
    {
      v5 = "number";
    }

    else
    {
      v5 = off_2784B68D0[v4];
    }

    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be BOOLean, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 302, &v9);
  }

  *a2 = result[8];
  return result;
}

void sub_22285E1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJijfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJijfbSD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100]((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

std::__split_buffer<std::string>::pointer nlv4_inference_orchestrator::vocabulary::Vocabulary::insertToken(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 18), a2);
  v5 = v4;
  v6 = a1[19];
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

  v10 = *(a1[18] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 18), v11 + 2, a2))
  {
    goto LABEL_17;
  }

  v13 = a1[24];
  v14 = (a1 + 23);
  if (v13 >= a1[25])
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v14, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v14, a2);
    result = v13 + 1;
  }

  a1[24] = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

uint64_t nlv4_inference_orchestrator::vocabulary::Vocabulary::Vocabulary(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22[19] = *MEMORY[0x277D85DE8];
  v6 = std::string::basic_string[abi:ne200100]<0>(a1, "[UNK]");
  std::string::basic_string[abi:ne200100]<0>(v6 + 24, "[PAD]");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "[CLS]");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "[SEP]");
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x10000;
  *(a1 + 136) = a3;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v7 = std::ifstream::basic_ifstream(v20, a2);
  v8 = *(a1 + 128);
  MEMORY[0x28223BE20](v7);
  v9 = *(a1 + 128);
  (*(v21[0] + 24))(v21);
  if ((*(&v21[2] + *(v20[0] - 24)) & 5) != 0)
  {
    std::ifstream::close(v20);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v19);
    exception->__vftable = &unk_2835E9238;
  }

  nlv4_inference_orchestrator::vocabulary::Vocabulary::initializeFromStream(a1, v20);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v20 + *(v20[0] - 24)), *(&v21[2] + *(v20[0] - 24)) | 4);
  }

  v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 144), (a1 + 24));
  if (v10)
  {
    v11 = v10[5];
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  v13 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 144), a1);
  if (v13)
  {
    v14 = v13[5];
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  v20[0] = *MEMORY[0x277D82808];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v21);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v22);
  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_22285E9AC(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream((v1 + 24), MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](v1 + 448);
      *(v1 + 24) = v6;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100]((v1 + 24));
      std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v3);
      if (*(v2 + 95) < 0)
      {
        operator delete(*(v2 + 72));
      }

      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
      }

      if (*(v2 + 47) < 0)
      {
        operator delete(*(v2 + 24));
      }

      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v5);
  goto LABEL_6;
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

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::cobject_id>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void nlv4_inference_orchestrator::vocabulary::Vocabulary::initializeFromStream(uint64_t a1, void *a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v4 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v17);
  v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    goto LABEL_2;
  }

  v8 = HIBYTE(v16);
  if (v16 < 0)
  {
    v8 = v15;
  }

  if (!v8)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
    std::vector<std::string>::reserve((a1 + 184), *(a1 + 136));
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1 + 144, vcvtps_u32_f32(*(a1 + 136) / *(a1 + 176)));
    nlv4_inference_orchestrator::vocabulary::Vocabulary::insertToken(a1, &__p);
    v7 = 1;
  }

  v9 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v10 = std::locale::use_facet(&v17, v9);
    v11 = (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v17);
    v12 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, v11);
    v13 = HIBYTE(v16);
    if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v16 < 0)
    {
      v13 = v15;
    }

    if (v13)
    {
      nlv4_inference_orchestrator::vocabulary::Vocabulary::insertToken(a1, &__p);
      ++v7;
    }
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_22285EDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(void *a1, const void **a2)
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

void snlp::ssu::espresso::SSUNessieModel::getEspressoE5Model(snlp::ssu::espresso::SSUNessieModel *this@<X0>, std::string::size_type a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&v14, 0, sizeof(v14));
  std::string::append[abi:ne200100]<char const*,0>(&v14.__pn_, "nessie_e5.bundle/universal.bundle/universal.e5", "");
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, "nessie.mlmodelc/model.bundle/universal.bundle/universal.e5", "");
  std::__fs::filesystem::operator/[abi:ne200100](&v12.__pn_, this, &__p);
  std::__fs::filesystem::__status(&v12, 0);
  if (v15 && v15 != 255)
  {
    if ((SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v5 = 0;
      *a2 = v12;
      goto LABEL_17;
    }

    std::string::__init_copy_ctor_external(a2, v12.__pn_.__r_.__value_.__l.__data_, v12.__pn_.__r_.__value_.__l.__size_);
    goto LABEL_16;
  }

  std::__fs::filesystem::operator/[abi:ne200100](a2, this, &v14);
  std::__fs::filesystem::__status(a2, 0);
  if (v15 && v15 != 255)
  {
    v6 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Falling back on deprecated Espresso model file: %s", &buf, 0xCu);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v5 = 1;
LABEL_17:
  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(this + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *this, *(this + 1));
    }

    else
    {
      buf = *this;
    }

    v10 = std::string::insert(&buf, 0, "Could not find Espresso model in ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v12.__pn_.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v12.__pn_.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v12.__pn_);
    exception->__vftable = &unk_2835E9238;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22285F378(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v28)
  {
LABEL_12:
    __cxa_end_catch();
    JUMPOUT(0x22285F40CLL);
  }

  __cxa_free_exception(v29);
  goto LABEL_12;
}

void sub_22285F434(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x22285F42CLL);
}

void snlp::ssu::espresso::SSUNessieModel::buildFromAssetsDirectory(snlp::ssu::espresso::SSUNessieModel *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  snlp::ssu::espresso::SSUNessieModel::getEspressoE5Model(a1, &v34);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&v33.__pn_, "config.json");
  std::__fs::filesystem::operator/[abi:ne200100](&v32, a1, &v33);
  v2 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v34;
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v47;
    }

    else
    {
      v3 = v47.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v32;
    }

    v4 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v39.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "Building SSU Nessie model using E5 path %s and config JSON path %s", buf, 0x16u);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v32;
  }

  std::ifstream::basic_ifstream(&v47, &v31);
  std::string::basic_string[abi:ne200100]<0>(v37, "SSU");
  if ((*(&v47 + *(v47.__r_.__value_.__r.__words[0] - 24) + 32) & 5) != 0)
  {
    std::operator+<char>();
    v5 = std::string::append(&v50, ".");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v7 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v37;
      if (v38 < 0)
      {
        v8 = v37[0];
      }

      v9 = &v39;
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v39.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315394;
      *(v50.__r_.__value_.__r.__words + 4) = v8;
      WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
      *(&v50.__r_.__value_.__r.__words[1] + 6) = v9;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] %s", &v50, 0x16u);
    }

    memset(buf, 0, sizeof(buf));
    v46 = 1065353216;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    goto LABEL_102;
  }

  v35[0] = 0;
  v36 = 0;
  nlohmann::operator>>(&v47, v35);
  memset(buf, 0, sizeof(buf));
  v46 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "SSU");
  v50.__r_.__value_.__r.__words[0] = v35;
  *&v50.__r_.__value_.__r.__words[1] = 0uLL;
  v51 = 0x8000000000000000;
  v10 = v35[0];
  if (v35[0])
  {
    if (v35[0] == 2)
    {
      v50.__r_.__value_.__r.__words[2] = *v36;
    }

    else if (v35[0] == 1)
    {
      v50.__r_.__value_.__l.__size_ = *v36;
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 1;
  }

  while (1)
  {
    *&v39.__r_.__value_.__r.__words[1] = 0uLL;
    v39.__r_.__value_.__r.__words[0] = v35;
    v40[0] = 0x8000000000000000;
    if (v10 == 2)
    {
      v39.__r_.__value_.__r.__words[2] = v36[1];
    }

    else if (v10 == 1)
    {
      v39.__r_.__value_.__l.__size_ = (v36 + 1);
    }

    else
    {
      v40[0] = 1;
    }

    if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>,(decltype(nullptr))0>(&v50, &v39))
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, "component_name");
      v50.__r_.__value_.__r.__words[0] = &v39;
      v42.__r_.__value_.__r.__words[0] = __p;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::string const&>>(buf, &v39.__r_.__value_.__l.__data_);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v36, v35[0]);
LABEL_102:
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v47.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
      *(v47.__r_.__value_.__r.__words + *(v47.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x223DC47C0](&v47.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x223DC4C10](&v48);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = v34;
      }

      operator new();
    }

    v11 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key(*v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *v11, *(v11 + 8));
    }

    else
    {
      v12 = *v11;
      v42.__r_.__value_.__r.__words[2] = *(v11 + 16);
      *&v42.__r_.__value_.__l.__data_ = v12;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50) == 5)
    {
      break;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50) == 6)
    {
      v15 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50);
      LODWORD(v39.__r_.__value_.__l.__data_) = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned int,0>(v15, &v39);
      data = v39.__r_.__value_.__l.__data_;
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = v42;
      }

      LODWORD(v40[0]) = data;
      v41 = 1;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(buf, &v39.__r_.__value_.__l.__data_);
      goto LABEL_81;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50) == 7)
    {
      v17 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50);
      LODWORD(v39.__r_.__value_.__l.__data_) = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v17, &v39, v18);
      v19 = v39.__r_.__value_.__l.__data_;
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = v42;
      }

      LODWORD(v40[0]) = v19;
      v41 = 2;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(buf, &v39.__r_.__value_.__l.__data_);
      goto LABEL_81;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50) == 4)
    {
      v20 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50);
      v39.__r_.__value_.__s.__data_[0] = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v20, &v39);
      v21 = v39.__r_.__value_.__s.__data_[0];
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = v42;
      }

      LOBYTE(v40[0]) = v21;
      v41 = 3;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(buf, &v39.__r_.__value_.__l.__data_);
      goto LABEL_81;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50) != 3)
    {
      if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50))
      {
        std::operator+<char>();
        v24 = std::string::append(&v49, ".");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        v26 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = __p;
          if (v44 < 0)
          {
            v27 = __p[0];
          }

          if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v39;
          }

          else
          {
            v28 = v39.__r_.__value_.__r.__words[0];
          }

          goto LABEL_96;
        }
      }

      else
      {
        std::operator+<char>();
        v29 = std::string::append(&v49, " is null.  This is currently expected behaviour.");
        v30 = *&v29->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        v26 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = __p;
          if (v44 < 0)
          {
            v27 = __p[0];
          }

          if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v39;
          }

          else
          {
            v28 = v39.__r_.__value_.__r.__words[0];
          }

LABEL_96:
          LODWORD(v49.__r_.__value_.__l.__data_) = 136315394;
          *(v49.__r_.__value_.__r.__words + 4) = v27;
          WORD2(v49.__r_.__value_.__r.__words[1]) = 2080;
          *(&v49.__r_.__value_.__r.__words[1] + 6) = v28;
          _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEBUG, "[%s] %s", &v49, 0x16u);
        }
      }

LABEL_82:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

      v23 = v39.__r_.__value_.__r.__words[0];
      goto LABEL_84;
    }

    v22 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get_impl<std::string,0>(&v49, v22);
    std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>::pair[abi:ne200100]<std::string&,std::string const&,0>(&v39, &v42, &v49);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(buf, &v39.__r_.__value_.__l.__data_);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v40);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v49.__r_.__value_.__r.__words[0];
LABEL_84:
      operator delete(v23);
    }

LABEL_85:
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator++(&v50);
    v10 = v35[0];
  }

  v13 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v50);
  LODWORD(v39.__r_.__value_.__l.__data_) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, &v39);
  v14 = v39.__r_.__value_.__l.__data_;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v42;
  }

  LODWORD(v40[0]) = v14;
  v41 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(buf, &v39.__r_.__value_.__l.__data_);
LABEL_81:
  std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v40);
  goto LABEL_82;
}

void sub_22285FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, unsigned __int8 a36, uint64_t *a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v70 - 169) < 0)
  {
    operator delete(*(v70 - 192));
  }

  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&a64);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a37, a36);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  std::ifstream::~ifstream(&a70, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x2E8]);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,int,unsigned int,float,BOOL,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

int *nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::MatchedSpansFeaturizer(int *a1, uint64_t *a2, uint64_t a3, void *a4, int *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  *a1 = *a5;
  *(a1 + 2) = 0u;
  v59 = a1 + 2;
  *(a1 + 6) = 0u;
  a1[10] = 1065353216;
  nlv4_inference_orchestrator::vocabulary::Vocabulary::Vocabulary((a1 + 12), a2, 32);
  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(a1 + 256, "[NO_SPAN]");
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 35) = v8;
    *(a1 + 36) = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    a1[74] = *a5;
    sirinluinternal::MatchingSpan::MatchingSpan((a1 + 76));
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    *(a1 + 35) = v8;
    *(a1 + 36) = 0;
    a1[74] = *a5;
    sirinluinternal::MatchingSpan::MatchingSpan((a1 + 76));
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "common_Integer");
  std::string::basic_string[abi:ne200100]<0>(v68, "common_MixedFraction");
  std::string::basic_string[abi:ne200100]<0>(v71, "common_ListPosition");
  std::unordered_set<std::string>::unordered_set((a1 + 98), buf, 3);
  for (i = 0; i != -72; i -= 24)
  {
    if (v74[i - 1] < 0)
    {
      operator delete(*&v71[i]);
    }
  }

  a1[108] = *a5;
  sirinluinternal::MatchingSpan::MatchingSpan((a1 + 110));
  *(a1 + 70) = 0;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  *buf = 0;
  std::string::basic_string[abi:ne200100]<0>(&buf[8], "DataDetector");
  v69[0] = 2;
  std::string::basic_string[abi:ne200100]<0>(v70, "UserVocabMatcher");
  v72 = 3;
  std::string::basic_string[abi:ne200100]<0>(v74, "SingleTrieMatcher");
  v75 = 4;
  std::string::basic_string[abi:ne200100]<0>(v76, "ContextMatcher");
  v77 = 5;
  std::string::basic_string[abi:ne200100]<0>(v78, "OvertonMatcher");
  v79 = 6;
  std::string::basic_string[abi:ne200100]<0>(v80, "MRRDetector");
  v81 = 7;
  std::string::basic_string[abi:ne200100]<0>(v82, "MRRMatcher");
  v57 = a4;
  v83 = 8;
  std::string::basic_string[abi:ne200100]<0>(v84, "RegexSpanMatcher");
  v11 = 0;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  a1[140] = 1065353216;
  do
  {
    v12 = *&buf[v11];
    v13 = *(a1 + 134);
    if (!*&v13)
    {
      goto LABEL_27;
    }

    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = *&buf[v11];
      if (*&v13 <= v12)
      {
        v15 = v12 % *&v13;
      }
    }

    else
    {
      v15 = (*&v13 - 1) & v12;
    }

    v16 = *(*(a1 + 66) + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v12)
      {
        break;
      }

      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *&v13)
        {
          v18 %= *&v13;
        }
      }

      else
      {
        v18 &= *&v13 - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_27;
      }

LABEL_26:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    if (*(v17 + 4) != v12)
    {
      goto LABEL_26;
    }

    v11 += 32;
  }

  while (v11 != 256);
  v19 = 0;
  v20 = v59;
  do
  {
    if (v84[v19 + 23] < 0)
    {
      operator delete(*&v84[v19]);
    }

    v19 -= 32;
  }

  while (v19 != -256);
  *(a1 + 71) = *v57;
  v21 = v57[1];
  *(a1 + 72) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 4))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(a1 + 3));
    *(a1 + 3) = 0;
    v22 = *(a1 + 2);
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        *(*v59 + 8 * j) = 0;
      }
    }

    *(a1 + 4) = 0;
  }

  v24 = *v59;
  *v59 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  *(a1 + 3) = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  a1[10] = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(0);
  if (*(a3 + 24))
  {
    std::ifstream::basic_ifstream(buf, a3);
    v25 = *buf;
    if ((*(v69 + *(*buf - 24)) & 5) != 0)
    {
      goto LABEL_86;
    }

    memset(&__str, 0, sizeof(__str));
    v26 = MEMORY[0x277D82680];
LABEL_45:
    std::ios_base::getloc(&buf[*(v25 - 24)]);
    v27 = std::locale::use_facet(&v62, v26);
    v28 = (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v62);
    v29 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__str, v28);
    if ((*(v29 + *(*v29 - 24) + 32) & 5) == 0)
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__str.__r_.__value_.__l.__size_)
        {
          goto LABEL_80;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&__str.__r_.__value_.__s + 23))
        {
          goto LABEL_80;
        }

        p_str = &__str;
      }

      v31 = (&p_str->__r_.__value_.__l.__data_ + 1);
      v32 = p_str;
LABEL_52:
      v33 = v32;
      do
      {
        v34 = v32->__r_.__value_.__s.__data_[0];
        v32 = (v32 + 1);
        if (v34 == 35)
        {
          v32 = (&v33->__r_.__value_.__l.__data_ + 1);
          v31 = v33;
          if (v33 == p_str)
          {
            goto LABEL_80;
          }

          goto LABEL_52;
        }

        v33 = v32;
      }

      while ((&v32[-1].__r_.__value_.__r.__words[2] + 7) != p_str);
      if (v31 == p_str)
      {
        goto LABEL_80;
      }

      v35 = v26;
      v60[0] = " ";
      v60[1] = 1;
      nlv4_inference_orchestrator::trees::split(&v62, &__str, v60);
      v36 = std::__string_hash<char>::operator()[abi:ne200100](v20, &v62);
      v37 = v36;
      v38 = *(a1 + 4);
      if (!*&v38)
      {
        goto LABEL_75;
      }

      v39 = vcnt_s8(v38);
      v39.i16[0] = vaddlv_u8(v39);
      v40 = v39.u32[0];
      if (v39.u32[0] > 1uLL)
      {
        v41 = v36;
        if (v36 >= *&v38)
        {
          v41 = v36 % *&v38;
        }
      }

      else
      {
        v41 = (*&v38 - 1) & v36;
      }

      v42 = *(*v20 + 8 * v41);
      if (!v42 || (v43 = *v42) == 0)
      {
LABEL_75:
        operator new();
      }

      while (1)
      {
        v44 = v43[1];
        if (v44 == v37)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v59, v43 + 2, &v62.__r_.__value_.__l.__data_))
          {
            if (v64 < 0)
            {
              operator delete(__p);
            }

            v20 = v59;
            v26 = v35;
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

LABEL_80:
            v25 = *buf;
            goto LABEL_45;
          }
        }

        else
        {
          if (v40 > 1)
          {
            if (v44 >= *&v38)
            {
              v44 %= *&v38;
            }
          }

          else
          {
            v44 &= *&v38 - 1;
          }

          if (v44 != v41)
          {
            goto LABEL_75;
          }
        }

        v43 = *v43;
        if (!v43)
        {
          goto LABEL_75;
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_86:
    v48 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v49 = *a1;
      if (v49 >= 8)
      {
        v52 = SNLPOSLoggerForCategory(4);
        v50 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v86 = 136315394;
          v87 = "<UNDEFINED_COMPONENT>";
          v88 = 2048;
          v89 = v49;
          _os_log_impl(&dword_22284A000, v52, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v86, 0x16u);
        }
      }

      else
      {
        v50 = off_2784B6F30[v49];
      }

      if ((*(a3 + 24) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v53 = *(a1 + 4);
      if (*(a3 + 23) >= 0)
      {
        v54 = a3;
      }

      else
      {
        v54 = *a3;
      }

      LODWORD(v62.__r_.__value_.__l.__data_) = 136315650;
      *(v62.__r_.__value_.__r.__words + 4) = v50;
      WORD2(v62.__r_.__value_.__r.__words[1]) = 2048;
      *(&v62.__r_.__value_.__r.__words[1] + 6) = v53;
      HIWORD(v62.__r_.__value_.__r.__words[2]) = 2080;
      __p = v54;
      _os_log_impl(&dword_22284A000, v48, OS_LOG_TYPE_DEBUG, "[%s] Read %lu label mappings from %s", &v62, 0x20u);
    }

    *buf = *MEMORY[0x277D82808];
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x223DC47C0](&v67 + 2);
    std::istream::~istream();
    MEMORY[0x223DC4C10](&v85);
  }

  else
  {
    v45 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *a1;
      if (v46 >= 8)
      {
        v51 = SNLPOSLoggerForCategory(4);
        v47 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          v66 = 2048;
          v67 = v46;
          _os_log_impl(&dword_22284A000, v51, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v47 = off_2784B6F30[v46];
      }

      *buf = 136315138;
      *&buf[4] = v47;
      _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_DEBUG, "[%s] No label mapping file specified", buf, 0xCu);
    }
  }

  v55 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_222861358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ifstream::~ifstream(&a26, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x218]);
  v29 = *(v26 + 576);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(v27);
  MEMORY[0x223DC3180](v26 + 440);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v26 + 392);
  nlv4_inference_orchestrator::span_matching::SpanEncoder::~SpanEncoder((v26 + 256));
  nlv4_inference_orchestrator::vocabulary::Vocabulary::~Vocabulary((v26 + 48));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a11);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned int,0>(unsigned __int8 *result, unsigned int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_11;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *v2;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_2784B68D0[v6];
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "type must be number, but is ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 302, &v11);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_11;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_11:
  *a2 = v4;
  return result;
}

void sub_22286164C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::string const&>>(void *a1, const void **a2)
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
    operator new();
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_222861960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::__emplace_unique_key_args<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::piecewise_construct_t const&,std::tuple<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType&&>,std::tuple<std::__fs::filesystem::path&&>>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void snlp::common::e5ml::asset_finder::AssetFinder::findAssetTypesPresent(std::__fs::filesystem::path *this@<X0>, const std::__fs::filesystem::path *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this);
  std::__fs::filesystem::__status(&v10, 0);
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    v9 = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this);
    __p.__r_.__value_.__r.__words[0] = &v9;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::__emplace_unique_key_args<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::piecewise_construct_t const&,std::tuple<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType&&>,std::tuple<std::__fs::filesystem::path&&>>(a3, 0);
    goto LABEL_9;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this + 2);
  std::__fs::filesystem::__status(&v10, 0);
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    v9 = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this + 2);
    __p.__r_.__value_.__r.__words[0] = &v9;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::__emplace_unique_key_args<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::piecewise_construct_t const&,std::tuple<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType&&>,std::tuple<std::__fs::filesystem::path&&>>(a3, 0);
LABEL_9:
    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__pn_.__r_.__value_.__l.__data_);
    }
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this + 1);
  std::__fs::filesystem::__status(&v10, 0);
  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, this + 2);
    std::__fs::filesystem::__status(&__p, 0);
    v6 = v11 == 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, this + 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10.__pn_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v10.__pn_ = __p;
  }

  v7 = snlp::common::e5ml::asset_finder::AssetFinder::checkFastReshapeCompatibility(this, &v10);
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_26;
    }
  }

  else if (v7)
  {
LABEL_26:
    v9 = 2;
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this + 1);
    __p.__r_.__value_.__r.__words[0] = &v9;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::__emplace_unique_key_args<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::piecewise_construct_t const&,std::tuple<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType&&>,std::tuple<std::__fs::filesystem::path&&>>(a3, 2);
    goto LABEL_29;
  }

  v9 = 1;
  std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, a2, this + 1);
  __p.__r_.__value_.__r.__words[0] = &v9;
  v11 = &v10;
  std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::__emplace_unique_key_args<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::piecewise_construct_t const&,std::tuple<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType&&>,std::tuple<std::__fs::filesystem::path&&>>(a3, 1);
LABEL_29:
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_22286209C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(v21);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::createModule(std::__fs::filesystem::path *a1, std::string *a2, void *a3)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a2);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&__p, &v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  snlp::common::e5ml::asset_finder::AssetFinder::findAssetTypesPresent(a1 + 5, &v38, &__p);
  std::string::basic_string[abi:ne200100]<0>(v39, "locale");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a3, v39);
  if (v5 && *(v5 + 16) == 4)
  {
    if (*(v5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, v5[5], v5[6]);
    }

    else
    {
      v41 = *(v5 + 5);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
    v41.__r_.__value_.__s.__data_[0] = 0;
  }

  v42 = v6;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v39, "os_release");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a3, v39);
  if (v7 && *(v7 + 16) == 1)
  {
    v8 = v7[5] & 0xFFFFFF00;
    v9 = *(v7 + 10);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if ((v10 & v42) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "zh_CN");
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v12 = HIBYTE(v40);
    v13 = SHIBYTE(v40);
    if (v40 < 0)
    {
      v12 = v39[1];
    }

    if (size == v12 && ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v14 = &v41) : (v14 = v41.__r_.__value_.__r.__words[0]), (v15 = v39[0], v40 >= 0) ? (v16 = v39) : (v16 = v39[0]), !memcmp(v14, v16, size) && (v17 = v8 | v9, v17 >= 0xC84)))
    {
      if (v13 < 0)
      {
        operator delete(v15);
      }

      if (v17 < 0xCE4)
      {
        v18 = 1;
LABEL_40:
        if (v42 == 1 && SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (v18)
        {
          v19 = SNLPOSLoggerForCategory(5);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v41.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "CN OWL asset fix to [SydneyE, Dawn), Asset Type identified as non-reshapable E5ML OWL", &v41, 2u);
          }

          if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 2))
          {
            operator new();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v20 = *&__p.__r_.__value_.__l.__data_;
        if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 2))
        {
          v21 = SNLPOSLoggerForCategory(5);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v41.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "Asset Type identified as Reshapable E5ML OWL", &v41, 2u);
          }

          if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 2))
          {
            if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&pn, v38.__pn_.__r_.__value_.__l.__data_, v38.__pn_.__r_.__value_.__l.__size_);
            }

            else
            {
              pn = v38.__pn_;
            }

            v23 = std::string::append(&pn, "/");
            v24 = *&v23->__r_.__value_.__l.__data_;
            v36.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v36.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            data = a1[4].__pn_.__r_.__value_.__l.__data_;
            v26 = a1 + 4;
            v25 = data;
            v28 = SHIBYTE(v26->__pn_.__r_.__value_.__r.__words[2]);
            if (v28 >= 0)
            {
              v29 = v26;
            }

            else
            {
              v29 = v25;
            }

            if (v28 >= 0)
            {
              v30 = HIBYTE(v26->__pn_.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v26->__pn_.__r_.__value_.__l.__size_;
            }

            v31 = std::string::append(&v36, v29, v30);
            v32 = *&v31->__r_.__value_.__l.__data_;
            v40 = v31->__r_.__value_.__r.__words[2];
            *v39 = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            operator new();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(v20, *(&v20 + 1), 1))
        {
          v22 = SNLPOSLoggerForCategory(5);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v41.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "Asset Type identified as non-reshapable E5ML OWL", &v41, 2u);
          }

          if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 1))
          {
            operator new();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(v20, *(&v20 + 1), 0))
        {
          v33 = SNLPOSLoggerForCategory(5);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v41.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_DEBUG, "Asset Type identified as pre-E5ML OWL", &v41, 2u);
          }

          if (std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0))
          {
            operator new();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::string::basic_string[abi:ne200100]<0>(&v41, "Could not find v1 espresso assets or E5-ML espresso assets for OWL.");
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, &v41);
        exception->__vftable = &unk_2835E6B78;
      }
    }

    else if (v13 < 0)
    {
      operator delete(v39[0]);
    }
  }

  v18 = 0;
  goto LABEL_40;
}

void sub_2228627F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(&a23);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_222862970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    JUMPOUT(0x22286295CLL);
  }

  JUMPOUT(0x222862960);
}

double *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(double *result, float *a2, float a3)
{
  v3 = result;
  v4 = *result;
  if (v4 > 5)
  {
    if (v4 == 7)
    {
      v5 = result[1];
      goto LABEL_10;
    }

    if (v4 == 6)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

LABEL_11:
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = *v3;
    if (v7 > 9)
    {
      v8 = "number";
    }

    else
    {
      v8 = off_2784B68D0[v7];
    }

    std::string::basic_string[abi:ne200100]<0>(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be number, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 302, &v12);
  }

  if (v4 == 4)
  {
    LOBYTE(a3) = *(result + 8);
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

void sub_222862AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t nlv4_inference_orchestrator::pre_processing::Reformulator::readReformulations@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v50[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  std::ifstream::basic_ifstream(v48);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v49[15])
  {
    memset(&__str, 0, sizeof(__str));
    v6 = MEMORY[0x277D82680];
    while (1)
    {
      while (1)
      {
        do
        {
          std::ios_base::getloc((v48 + *(v48[0] - 24)));
          v7 = std::locale::use_facet(&v41.__loc_, v6);
          v8 = (v7->__vftable[2].~facet_0)(v7, 10);
          std::locale::~locale(&v41.__loc_);
          v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v48, &__str, v8);
          v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
          {
            if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (!std::filebuf::close())
            {
              std::ios_base::clear((v48 + *(v48[0] - 24)), *(&v49[2] + *(v48[0] - 24)) | 4);
            }

            goto LABEL_63;
          }

          v11 = __str.__r_.__value_.__r.__words[0];
          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            v14 = (&p_str->__r_.__value_.__l.__data_ + 1);
          }

          else
          {
            v14 = p_str;
          }

          if (!size)
          {
            break;
          }

          v15 = p_str;
          v16 = v14;
          do
          {
            v17 = v15;
            v18 = v15;
            while (1)
            {
              v19 = *v18++;
              if (v19 == 35)
              {
                break;
              }

              v17 = v18;
              if (v18 == v14)
              {
                v17 = v16;
                goto LABEL_19;
              }
            }

            v15 = (&v17->__r_.__value_.__l.__data_ + 1);
            v16 = v17;
          }

          while (v18 != v14);
LABEL_19:
          ;
        }

        while (v17 != v14 && v17 == p_str);
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          break;
        }

        if (*(&__str.__r_.__value_.__s + 23))
        {
          v11 = &__str;
          goto LABEL_25;
        }
      }

      v10 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
LABEL_25:
        v20 = a1[23];
        v21 = *a1;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a1 + 1);
        }

        else
        {
          v21 = a1;
        }

        v22 = v11 + v10;
        if (v20)
        {
          v25 = *v21;
          v23 = v21 + 1;
          v24 = v25;
          v26 = v11;
          v27 = v22;
          do
          {
            v28 = &v26->__r_.__value_.__s.__data_[1];
            while (v26->__r_.__value_.__s.__data_[0] != v24)
            {
              v26 = (v26 + 1);
              ++v28;
              if (v26 == v22)
              {
                goto LABEL_43;
              }
            }

            v29 = v20 - 1;
            v30 = v23;
            while (v29)
            {
              if (v28 == v22)
              {
                goto LABEL_43;
              }

              v32 = *v28++;
              v31 = v32;
              v33 = *v30++;
              --v29;
              if (v31 != v33)
              {
                goto LABEL_40;
              }
            }

            v27 = v26;
LABEL_40:
            v26 = (v26 + 1);
          }

          while (v26 != v22);
        }

        else
        {
          v27 = v22;
        }

LABEL_43:
        if (v27 != v22 || v20 == 0)
        {
          v35 = v27 - v11;
          if (v27 - v11 != -1)
          {
            std::string::basic_string(&v46, &__str, 0, v27 - v11, &v41);
            std::string::basic_string(&v45, &__str, v35, 0xFFFFFFFFFFFFFFFFLL, &v41);
            v36 = a1[23];
            if ((v36 & 0x8000000000000000) != 0)
            {
              v36 = *(a1 + 1);
            }

            std::string::erase(&v45, 0, v36);
            v37 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v37 = v46.__r_.__value_.__l.__size_;
            }

            if (v37)
            {
              std::regex_traits<char>::regex_traits(&v41);
              v44 = 0;
              v43 = 0u;
              v42 = 0u;
              std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&v40, &v46);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

LABEL_63:
  v48[0] = *MEMORY[0x277D82808];
  *(v48 + *(v48[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v49);
  std::istream::~istream();
  result = MEMORY[0x223DC4C10](v50);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22286323C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>::~pair(&a12);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40);
  JUMPOUT(0x22286329CLL);
}

void sub_2228632C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23)
{
  if (v25 < 0)
  {
    operator delete(v24[25]);
  }

  std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>>::__destroy_vector::operator()[abi:ne200100](v24);
  std::ifstream::~ifstream(&v26, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&v27);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::pre_processing::Reformulator::Reformulator(uint64_t a1, uint64_t *a2)
{
  *(a1 + 23) = 4;
  strcpy(a1, " => ");
  nlv4_inference_orchestrator::pre_processing::Reformulator::readReformulations(a1, a2, (a1 + 24));
  return a1;
}

void sub_222863364(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::EspressoBertModel(uint64_t a1, std::string *a2, uint64_t a3, void *a4)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835E60A8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 730643660;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "position_embedding_vector.txt");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>((a1 + 120), "model.espresso.net");
  std::__fs::filesystem::path::path[abi:ne200100]<char [43],void>((a1 + 144), "model.bundle/universal.bundle/universal.e5");
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::string::append[abi:ne200100]<char const*,0>((a1 + 168), "model.bundle/universal.bundle/main/segment_0__cpu/model.espresso.net", "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 192), "properties");
  std::string::basic_string[abi:ne200100]<0>((a1 + 216), "fast_reshape");
  std::string::basic_string[abi:ne200100]<0>((a1 + 240), "1");
  std::string::basic_string[abi:ne200100]<0>((a1 + 264), "hidden_size");
  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::createModule(a1, a2, a4);
}

void sub_22286380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v44 + 287) < 0)
  {
    operator delete(*(v44 + 264));
  }

  uaap::UPDataDetectorCacheFiles::~UPDataDetectorCacheFiles((v44 + 120));
  if (*(v44 + 119) < 0)
  {
    operator delete(*(v44 + 96));
  }

  std::unique_ptr<nlv4_inference_orchestrator::vocabulary::Vocabulary>::reset[abi:ne200100](v47, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v46);
  std::unique_ptr<nl_sentencepiece::SentencepieceModel>::reset[abi:ne200100](v45, 0);
  v50 = *v48;
  *v48 = 0;
  if (v50)
  {
    (*(*v50 + 88))(v50);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [43],void>(std::string *this, std::string *a2)
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

void sub_222863A78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
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

void SNLPAssetVersionChecks::assertAssetVersionValid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a1, *(a1 + 8));
  }

  else
  {
    v51 = *a1;
  }

  isAssetVersionValid = SNLPAssetVersionChecks::isAssetVersionValid(&v51, a2, a3, a4, a5);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if ((isAssetVersionValid & 1) == 0)
  {
    if (*(a2 + 4) == 1)
    {
      std::to_string(&v50, *a2);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v50, "unknown");
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v11 = std::string::append(&v40, " asset (generation: ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v50;
    }

    else
    {
      v13 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v41, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v42, ", NCV: ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, *(a3 + 16));
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v39.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v43, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v44, ") is incompatible with the inference runtime (compatible generations: [");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    uint32SetAsString(a4, &v38);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v38;
    }

    else
    {
      v25 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v38.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v45, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v46, "], compatible NCV numbers: [");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    uint32SetAsString(a5, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v37;
    }

    else
    {
      v31 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v37.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v47, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v48, "])");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v49);
    exception->__vftable = &unk_2835E6B78;
  }
}

void sub_222863E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (*(v68 - 121) < 0)
  {
    operator delete(*(v68 - 144));
  }

  if (*(v68 - 153) < 0)
  {
    operator delete(*(v68 - 176));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v68 - 185) < 0)
  {
    operator delete(*(v68 - 208));
  }

  if (*(v68 - 217) < 0)
  {
    operator delete(*(v68 - 240));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v66 & 1) == 0)
    {
LABEL_30:
      if (*(v68 - 97) < 0)
      {
        operator delete(*(v68 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v66)
  {
    goto LABEL_30;
  }

  __cxa_free_exception(v67);
  goto LABEL_30;
}

void snlp::ssu::encoder::SSUEncoder::buildFromAssetsDirectory(char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SNLPOSLoggerForCategory(7);
  v3 = os_signpost_id_generate(v2);
  v4 = SNLPOSLoggerForCategory(7);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SSUEncoder Build from assets directory", "", buf, 2u);
    }
  }

  v6 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEFAULT, "BEGIN SSUEncoder Build from assets directory", buf, 2u);
  }

  v7 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "Building SSUEncoder from assets directory: %s", buf, 0xCu);
  }

  snlp::ssu::espresso::SSUNessieModel::buildFromAssetsDirectory(a1);
}

void sub_222864370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::unique_ptr<snlp::ssu::encoder::SSUPreprocessor const>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<snlp::ssu::espresso::SSUNessieModel const>::~unique_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_222864444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(std::sub_match<const char *> *a1, std::sub_match<const char *> *a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  memset(__p, 0, 41);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a1, a2, __p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, a1, a2, __p, 0);
  if (__p[0].__begin_)
  {
    operator delete(__p[0].__begin_);
  }

  if (!v7)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_2228645A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

unsigned __int8 *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v4 += 16;
      a3 += 16;
    }

    while (v4 != a2);
    v5 = result;
    do
    {
      v6 = *v5;
      v5 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(result + 8, v6);
      result = v5;
    }

    while (v5 != a2);
  }

  return result;
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835E6B50;
  if (*(a11 + 24) == 1)
  {
    std::allocate_shared[abi:ne200100]<itfm_inference_orchestrator::vocabulary::Vocabulary,std::allocator<itfm_inference_orchestrator::vocabulary::Vocabulary>,std::string const&,0>();
  }

  *(a1 + 8) = 0uLL;
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>((a1 + 24), "config.json");
  *(a1 + 48) = *a10;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(__p, a3);
  AssetDirectoryGenerationNumber = getAssetDirectoryGenerationNumber(__p);
  *(a1 + 52) = AssetDirectoryGenerationNumber;
  *(a1 + 56) = BYTE4(AssetDirectoryGenerationNumber);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::getITFMAssetVersion((a1 + 64));
}

{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a5, *(a5 + 8));
  }

  else
  {
    v20 = *a5;
  }

  v21 = 1;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a11, *(a11 + 8));
  }

  else
  {
    *&v18.__r_.__value_.__l.__data_ = *a11;
    v18.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  v19 = 1;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v20, a6, a7, a8, a9, a10, &v18);
}

{
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a5, *(a5 + 8));
  }

  else
  {
    v20 = *a5;
  }

  v21 = 1;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a11, *(a11 + 8));
  }

  else
  {
    *&v18.__r_.__value_.__l.__data_ = *a11;
    v18.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  v19 = 1;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v20, a6, a7, a8, a9, a10, &v18);
}

void sub_2228654B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v53 - 233) < 0)
  {
    operator delete(*(v53 - 256));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&a13);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a28, a27);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::ifstream::~ifstream(&a47, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x278]);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::~MatchedSpansFeaturizer((v52 + 184));
  v54 = *(v52 + 176);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v52 + 128);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v52 + 88);
  MEMORY[0x223DC3390](v52 + 64);
  if (*(v52 + 47) < 0)
  {
    operator delete(*(v52 + 24));
  }

  v55 = *(v52 + 16);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(a1);
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

void sub_2228658D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a5, *(a5 + 8));
  }

  else
  {
    v19 = *a5;
  }

  v20 = 1;
  LOBYTE(__p) = 0;
  v18 = 0;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v19, a6, a7, a8, a9, a10, &__p);
}

{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a5, *(a5 + 8));
  }

  else
  {
    v19 = *a5;
  }

  v20 = 1;
  LOBYTE(__p) = 0;
  v18 = 0;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &v19, a6, a7, a8, a9, a10, &__p);
}

void sub_2228659F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  nlohmann::detail::input_stream_adapter::~input_stream_adapter(this);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10)
{
  LOBYTE(__p) = 0;
  v21 = 0;
  if (*(a10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a10, *(a10 + 8));
  }

  else
  {
    *&v18.__r_.__value_.__l.__data_ = *a10;
    v18.__r_.__value_.__r.__words[2] = *(a10 + 16);
  }

  v19 = 1;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &__p, a5, a6, a7, a8, a9, &v18);
}

{
  LOBYTE(__p) = 0;
  v21 = 0;
  if (*(a10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a10, *(a10 + 8));
  }

  else
  {
    *&v18.__r_.__value_.__l.__data_ = *a10;
    v18.__r_.__value_.__r.__words[2] = *(a10 + 16);
  }

  v19 = 1;
  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::ITFMOrchestrator(a1, a2, a3, a4, &__p, a5, a6, a7, a8, a9, &v18);
}

void sub_222865E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_222865ED0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t itfm_inference_orchestrator::vocabulary::Vocabulary::Vocabulary(uint64_t a1, uint64_t *a2)
{
  v21[19] = *MEMORY[0x277D85DE8];
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "[UNK]");
  std::string::basic_string[abi:ne200100]<0>(v4 + 24, "[PAD]");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "[CLS]");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "[SEP]");
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  std::ifstream::basic_ifstream(v19, a2);
  if ((v20[*(v19[0] - 24) + 16] & 5) != 0)
  {
    std::ifstream::close(v19);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v8 = std::string::append(&v16, " Error code: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v14.__val_ = 0;
    v14.__cat_ = std::system_category();
    std::error_code::message(&v15, &v14);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v17, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    exception->__vftable = &unk_2835E9238;
  }

  itfm_inference_orchestrator::vocabulary::Vocabulary::initializeFromStream(a1, v19);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v19 + *(v19[0] - 24)), *&v20[*(v19[0] - 24) + 16] | 4);
  }

  v19[0] = *MEMORY[0x277D82808];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v20);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v21);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2228661CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v38 & 1) == 0)
    {
LABEL_12:
      std::ifstream::~ifstream(&a36, MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](&STACK[0x220]);
      std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(v36 + 128));
      std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(v36 + 104));
      if (*(v36 + 95) < 0)
      {
        operator delete(*(v36 + 72));
      }

      if (*(v36 + 71) < 0)
      {
        operator delete(*(v36 + 48));
      }

      if (*(v36 + 47) < 0)
      {
        operator delete(*(v36 + 24));
      }

      if (*(v36 + 23) < 0)
      {
        operator delete(*v36);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v37);
  goto LABEL_12;
}

void sub_222866E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t *a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  MEMORY[0x223DC4D00](v74, 0x10F3C406283AB8ALL);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a28);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a33);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  MEMORY[0x223DC3400](&a62);
  if (a2 == 1)
  {
    v80 = __cxa_begin_catch(a1);
    v81 = MEMORY[0x277CCACA8];
    v82 = [a20 loggingComponentString];
    v89 = [a20 loggingComponentString];
    (*(*v80 + 16))(v80);
    v83 = [v81 stringWithFormat:@"%@ Asset Error when creating the %@ (ITFM) inference orchestrator: %s"];

    if (a17)
    {
      v84 = MEMORY[0x277CCA9B8];
      v85 = [a20 errorDomain];
      v86 = *MEMORY[0x277CCA470];
      a66 = *MEMORY[0x277CCA450];
      a67 = v86;
      a68 = v83;
      a69 = v83;
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 - 224 forKeys:v79 - 240 count:2];
      *a17 = [v84 errorWithDomain:v85 code:1 userInfo:v87];
    }

    __cxa_end_catch();
    JUMPOUT(0x222866DD8);
  }

  v88 = *a19;
  *a19 = 0;
  if (v88)
  {
    (*(*v88 + 16))(v88);
  }

  _Unwind_Resume(a1);
}

void sub_2228676CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
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
    operator new();
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void snlp::ssu::matcher::SSUMatcher::validateAssetVersion(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v2, "version.yaml");
  v3 = v2;
  memset(&v2, 0, sizeof(v2));
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1, &v3);
  getAssetDirectoryNCV(&__p);
}

void sub_222867C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC3400](v34 - 64);
  _Unwind_Resume(a1);
}

void sub_222867CD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  JUMPOUT(0x222867CC8);
}

uint64_t SNLPAssetVersionChecks::getITFMSupportedGenerationNumbers@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 1)
  {
    if (result == 2)
    {
      v2 = @"PSCSupportedGenerationList";
    }

    else
    {
      v2 = @"LVCSupportedGenerationList";
    }
  }

  else
  {
    if (!result)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1065353216;
      return result;
    }

    v2 = @"SNLCSupportedGenerationList";
  }

  return [SNLPAssetVersionChecker loadUInt32ListFromConfigPListResourceName:v2];
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_222867FF8(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x223DC4D00](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2228681E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x223DC4D00](v10, v11);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_70;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_70;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_70;
        }

        v11 = *v4;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_70;
        }

LABEL_37:
        if (v4 + 1 == a3)
        {
          goto LABEL_70;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6u)
          {
            goto LABEL_70;
          }

          v13 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_70:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v14 = v4[2];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6u)
          {
            goto LABEL_70;
          }

          v15 = -87;
        }

        v16 = v15 + v14 + 16 * (v13 + v12);
        if (this)
        {
          std::string::operator=(this, v16);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        }

        v4 += 3;
        return v4;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_62;
        }

        goto LABEL_37;
      }

      if (!this)
      {
        v9 = 11;
        goto LABEL_67;
      }

      v8 = this;
      v9 = 11;
LABEL_66:
      std::string::operator=(v8, v9);
      return ++v4;
    }

    if (v5 == 114)
    {
      if (!this)
      {
        v9 = 13;
        goto LABEL_67;
      }

      v8 = this;
      v9 = 13;
      goto LABEL_66;
    }

    if (v5 == 116)
    {
      if (!this)
      {
        v9 = 9;
        goto LABEL_67;
      }

      v8 = this;
      v9 = 9;
      goto LABEL_66;
    }

LABEL_62:
    if ((v5 & 0x80) != 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      v9 = *a2;
      if (this)
      {
        v8 = this;
        goto LABEL_66;
      }

LABEL_67:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v9);
      return ++v4;
    }

    goto LABEL_70;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v9 = 12;
        goto LABEL_67;
      }

      v8 = this;
      v9 = 12;
      goto LABEL_66;
    }

    if (v5 == 110)
    {
      if (!this)
      {
        v9 = 10;
        goto LABEL_67;
      }

      v8 = this;
      v9 = 10;
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v9 = 0;
      goto LABEL_67;
    }

    v8 = this;
    v9 = 0;
    goto LABEL_66;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_70;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_70;
  }

  v7 = v6 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  v4 += 2;
  return v4;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100]((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_2228694C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v124, 0, 48);
    v62 = *(a1 + 40);
    if (!v62)
    {
LABEL_184:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v124);
      return v62;
    }

    *v128 = 0;
    memset(&v128[8], 0, 32);
    v129 = 0uLL;
    memset(v130, 0, 37);
    std::deque<std::__state<char>>::push_back(v124, v128);
    if (v130[0])
    {
      operator delete(v130[0]);
    }

    if (*&v128[32])
    {
      operator delete(*&v128[32]);
    }

    v119 = a4;
    v63 = *&v124[8];
    v64 = *&v124[40] + *&v124[32] - 1;
    v65 = v64 / 0x2A;
    v66 = *(*&v124[8] + 8 * (v64 / 0x2A));
    v67 = 3 * (v64 % 0x2A);
    v68 = v66 + 32 * v67;
    *v68 = 0;
    *(v68 + 8) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 16) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v63 + 8 * v65) + 32 * v67 + 56), *(a1 + 32));
    v123 = 0;
    v69 = 0;
    v121 = 0;
    v70 = a3 - a2;
    v71 = *&v124[40];
    v72 = *&v124[8];
    v73 = *&v124[40] + *&v124[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v124[8] + 8 * v74) + 32 * v75 + 80) = v62;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    v77 = a5;
    *(v76 + 88) = a5;
    *(v76 + 92) = a6;
    v78 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v69 & 0xFFF) == 0 && (v69 >> 12) >= v70)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v80 = v71 + *&v124[32] - 1;
      v81 = (((v80 >> 1) * v78) >> 64) >> 4;
      v82 = *(*&v124[8] + 8 * v81) - 4032 * v81 + 96 * v80;
      v84 = (v82 + 80);
      v83 = *(v82 + 80);
      if (v83)
      {
        (*(*v83 + 16))(v83, v82);
      }

      v85 = *v82;
      if (*v82 <= -995)
      {
        switch(v85)
        {
          case -1000:
            v90 = *(v82 + 16);
            v92 = (v77 & 0x1000) == 0 || v90 == a3;
            v93 = v90 != a2 || (v77 & 0x20) == 0;
            if (!v93 || !v92)
            {
              goto LABEL_179;
            }

            v94 = &v90[-*(v82 + 8)];
            v95 = v121;
            if (v121 <= v94)
            {
              v95 = v94;
            }

            if (v123)
            {
              v94 = v95;
            }

            if (v94 == v70)
            {
              v96 = *&v124[8];
              v97 = *&v124[16];
              if (*&v124[16] == *&v124[8])
              {
                v97 = *&v124[8];
              }

              else
              {
                v98 = (((*&v124[32] >> 1) * v78) >> 64) >> 4;
                v99 = (*&v124[8] + 8 * v98);
                v100 = (*v99 - 4032 * v98 + 96 * *&v124[32]);
                v101 = v78;
                v102 = ((((*&v124[40] + *&v124[32]) >> 1) * v78) >> 64) >> 4;
                v103 = *(*&v124[8] + 8 * v102) - 4032 * v102 + 96 * (*&v124[40] + *&v124[32]);
                if (v100 != v103)
                {
                  do
                  {
                    std::allocator<std::__state<char>>::destroy[abi:ne200100](v100);
                    v100 += 12;
                    if ((v100 - *v99) == 4032)
                    {
                      v104 = v99[1];
                      ++v99;
                      v100 = v104;
                    }
                  }

                  while (v100 != v103);
                  v96 = *&v124[8];
                  v97 = *&v124[16];
                }

                v77 = a5;
                v78 = v101;
              }

              *&v124[40] = 0;
              v107 = (v97 - v96) >> 3;
              if (v107 >= 3)
              {
                do
                {
                  operator delete(*v96);
                  v96 = (*&v124[8] + 8);
                  *&v124[8] = v96;
                  v107 = (*&v124[16] - v96) >> 3;
                }

                while (v107 > 2);
              }

              if (v107 == 1)
              {
                v108 = 21;
LABEL_170:
                *&v124[32] = v108;
              }

              else if (v107 == 2)
              {
                v108 = 42;
                goto LABEL_170;
              }

              v123 = 1;
              v121 = a3 - a2;
              break;
            }

            v121 = v94;
            std::deque<std::__state<char>>::pop_back(v124);
            v123 = 1;
            break;
          case -999:
            break;
          case -995:
            v86 = *&v124[32];
            v87 = *&v124[8];
            v88 = *&v124[16];
            if (!*&v124[32])
            {
              v89 = 42 * ((*&v124[16] - *&v124[8]) >> 3) - 1;
              if (*&v124[16] == *&v124[8])
              {
                v89 = 0;
              }

              if ((v89 - *&v124[40]) < 0x2A)
              {
                if (*&v124[16] - *&v124[8] < *&v124[24] - *v124)
                {
                  if (*&v124[8] != *v124)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v124[24] == *v124)
                {
                  v109 = 1;
                }

                else
                {
                  v109 = (*&v124[24] - *v124) >> 2;
                }

                *&v128[32] = v124;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v109);
              }

              *&v124[32] = 42;
              *v128 = *(*&v124[16] - 8);
              *&v124[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v124, v128);
              v86 = *&v124[32];
              v87 = *&v124[8];
              v88 = *&v124[16];
            }

            v110 = (((v86 >> 1) * v78) >> 64) >> 4;
            v111 = (v87 + 8 * v110);
            v112 = *v111 - 4032 * v110 + 96 * v86;
            if (v88 == v87)
            {
              v113 = 0;
            }

            else
            {
              v113 = v112;
            }

            if (v113 == *v111)
            {
              v113 = *(v111 - 1) + 4032;
            }

            v114 = *(v82 + 16);
            *(v113 - 96) = *v82;
            *(v113 - 80) = v114;
            *(v113 - 56) = 0;
            *(v113 - 48) = 0;
            *(v113 - 64) = 0;
            *(v113 - 64) = *(v82 + 32);
            *(v113 - 48) = *(v82 + 48);
            *(v82 + 32) = 0;
            *(v82 + 40) = 0;
            *(v82 + 48) = 0;
            *(v113 - 40) = 0;
            *(v113 - 32) = 0;
            *(v113 - 24) = 0;
            *(v113 - 40) = *(v82 + 56);
            *(v113 - 24) = *(v82 + 72);
            *(v82 + 56) = 0;
            *(v82 + 64) = 0;
            *(v82 + 72) = 0;
            v115 = *v84;
            *(v113 - 11) = *(v82 + 85);
            *(v113 - 16) = v115;
            *&v124[32] = vaddq_s64(*&v124[32], xmmword_2229D2930);
            goto LABEL_179;
          default:
            goto LABEL_187;
        }
      }

      else
      {
        if (v85 > -993)
        {
          if (v85 == -992)
          {
            v105 = *(v82 + 16);
            *v128 = *v82;
            *&v128[16] = v105;
            v129 = 0uLL;
            *&v128[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v128[32], *(v82 + 32), *(v82 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v82 + 40) - *(v82 + 32)) >> 3));
            memset(v130, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v130, *(v82 + 56), *(v82 + 64), (*(v82 + 64) - *(v82 + 56)) >> 4);
            v106 = *v84;
            *(&v130[3] + 5) = *(v82 + 85);
            v130[3] = v106;
            (*(**(v82 + 80) + 24))(*(v82 + 80), 1, v82);
            (*(*v130[3] + 24))(v130[3], 0, v128);
            std::deque<std::__state<char>>::push_back(v124, v128);
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
            }

            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
            }
          }

          else if (v85 != -991)
          {
LABEL_187:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_180;
        }

        if (v85 != -994)
        {
          if (v85 != -993)
          {
            goto LABEL_187;
          }

LABEL_179:
          std::deque<std::__state<char>>::pop_back(v124);
        }
      }

LABEL_180:
      v71 = *&v124[40];
      if (!*&v124[40])
      {
        if (v123)
        {
          v116 = *v119;
          *v116 = a2;
          *(v116 + 8) = &a2[v121];
          v62 = 1;
          *(v116 + 16) = 1;
        }

        else
        {
          v62 = 0;
        }

        goto LABEL_184;
      }
    }
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  *v128 = 0;
  memset(&v128[8], 0, 32);
  v129 = 0u;
  memset(v130, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_92:
    v62 = 0;
    goto LABEL_93;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v124 = 0;
  memset(&v124[8], 0, 48);
  *__p = 0uLL;
  memset(v126, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v124[32])
  {
    operator delete(*&v124[32]);
  }

  v118 = a4;
  v13 = v132;
  *(v132 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v132 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v120 = a3;
  v122 = a2;
  v17 = a3 - a2;
  v18 = v132;
  *(v132 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v124 = *v22;
          *&v124[16] = v36;
          memset(&v124[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v124[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v126[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v126[1] + 5) = *(v18 - 11);
          v126[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v126[1] + 24))(v126[1], 0, v124);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v124[32])
          {
            *&v124[40] = *&v124[32];
            operator delete(*&v124[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_186:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_186;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v122 || (a5 & 0x1000) != 0 && v24 != v120)
      {
LABEL_40:
        v35 = v132 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v132 - 12);
        v132 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v128 = *v22;
        *&v128[16] = v26;
        if (v128 != v22)
        {
          v28 = *(v18 - 8);
          v27 = *(v18 - 7);
          v29 = v27 - v28;
          v30 = *(&v129 + 1);
          v31 = *&v128[32];
          if (*(&v129 + 1) - *&v128[32] < v27 - v28)
          {
            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
              v30 = 0;
              *&v128[32] = 0;
              v129 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v34);
              }
            }

            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v129;
          if (v129 - *&v128[32] >= v29)
          {
            while (v28 != v27)
            {
              *v31 = *v28;
              *(v31 + 16) = *(v28 + 16);
              v28 += 24;
              v31 += 24;
            }
          }

          else
          {
            v39 = (v28 + v129 - *&v128[32]);
            if (v129 != *&v128[32])
            {
              do
              {
                *v31 = *v28;
                *(v31 + 16) = *(v28 + 16);
                v28 += 24;
                v31 += 24;
              }

              while (v28 != v39);
            }

            while (v39 != v27)
            {
              v40 = *v39;
              *(v38 + 16) = *(v39 + 2);
              *v38 = v40;
              v38 += 24;
              v39 = (v39 + 24);
            }

            v31 = v38;
          }

          *&v129 = v31;
          v42 = *(v18 - 5);
          v41 = *(v18 - 4);
          v43 = v41 - v42;
          v44 = v130[2];
          v45 = v130[0];
          if ((v130[2] - v130[0]) < (v41 - v42))
          {
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
              v44 = 0;
              memset(v130, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v47);
              }
            }

            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v48 = v130[1];
          if ((v130[1] - v130[0]) >= v43)
          {
            while (v42 != v41)
            {
              *v45 = *v42;
              v45[1] = *(v42 + 1);
              v42 += 16;
              v45 += 2;
            }
          }

          else
          {
            v49 = &v42[v130[1] - v130[0]];
            if (v130[1] != v130[0])
            {
              do
              {
                *v45 = *v42;
                v45[1] = *(v42 + 1);
                v42 += 16;
                v45 += 2;
              }

              while (v42 != v49);
            }

            while (v49 != v41)
            {
              v50 = *v49;
              v49 += 16;
              *v48++ = v50;
            }

            v45 = v48;
          }

          v130[1] = v45;
        }

        v51 = *v21;
        *(&v130[3] + 5) = *(v21 + 5);
        v130[3] = v51;
        v14 = v25;
      }

      v52 = v132;
      if (v14 == v17)
      {
        v53 = v131;
        while (v52 != v53)
        {
          v52 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:ne200100](v52);
        }

        v132 = v53;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v54 = v132 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v132 - 12);
        v132 = v54;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v132;
  }

  while (v131 != v132);
  if ((v15 & 1) == 0)
  {
    goto LABEL_92;
  }

  v56 = *v118;
  *v56 = v122;
  *(v56 + 8) = &v122[v14];
  *(v56 + 16) = 1;
  if (v129 != *&v128[32])
  {
    v57 = 0xAAAAAAAAAAAAAAABLL * ((v129 - *&v128[32]) >> 3);
    v58 = (*&v128[32] + 16);
    v59 = 1;
    do
    {
      v60 = v56 + 24 * v59;
      *v60 = *(v58 - 1);
      v61 = *v58;
      v58 += 24;
      *(v60 + 16) = v61;
      v19 = v57 > v59++;
    }

    while (v19);
  }

  v62 = 1;
LABEL_93:
  if (v130[0])
  {
    v130[1] = v130[0];
    operator delete(v130[0]);
  }

  if (*&v128[32])
  {
    *&v129 = *&v128[32];
    operator delete(*&v128[32]);
  }

  *v128 = &v131;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v128);
  return v62;
}

void sub_22286A688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x223DC4D00);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2835E8F58;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x223DC4D00);
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC4D00);
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22286AF3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_87;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v113, &__s);
  __p = v113;
  size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v113.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v113);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v113;
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v113.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v113.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_178;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_178:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_231;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v113);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_181;
        }
      }

      v38 = 5;
LABEL_181:
      v18 = v108;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v88 = 1;
      goto LABEL_211;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v88 = 0;
    goto LABEL_213;
  }

  v89 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v113);
  v90 = this->__equivalences_.__begin_;
  v91 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v92 = this->__equivalences_.__end_ - v90;
  if (v92)
  {
    v93 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = __s.__r_.__value_.__r.__words[0];
    }

    if (v93 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    }

    v96 = 1;
    v97 = 1;
    while (1)
    {
      v98 = HIBYTE(v90->__r_.__value_.__r.__words[2]);
      v99 = v98;
      if ((v98 & 0x80u) != 0)
      {
        v98 = v90->__r_.__value_.__l.__size_;
      }

      if (v94 == v98)
      {
        v100 = v99 >= 0 ? v90 : v90->__r_.__value_.__r.__words[0];
        if (!memcmp(v89, v100, v94))
        {
          break;
        }
      }

      v97 = v96++ < v93;
      ++v90;
      if (!--v95)
      {
        goto LABEL_208;
      }
    }

    v88 = 1;
    v38 = 5;
    if (v91 < 0)
    {
LABEL_209:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v97 = 0;
LABEL_208:
    v38 = 0;
    v88 = 0;
    if (v91 < 0)
    {
      goto LABEL_209;
    }
  }

  if (!v97)
  {
LABEL_213:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v103 = tab[__src];
      if (((v103 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_231;
      }

      neg_mask = this->__neg_mask_;
      if ((v103 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_230:
        negate = v88;
LABEL_232:
        v9 = 2;
        goto LABEL_87;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_232;
        }
      }

      goto LABEL_230;
    }

LABEL_231:
    negate = 1;
    goto LABEL_232;
  }

LABEL_211:
  v9 = 2;
  negate = v88;
  if (v38)
  {
    goto LABEL_87;
  }

LABEL_65:
  v40 = *a2->__current_;
  v113.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    v113.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_86;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v45 = (v40 == 95) & (v44 >> 7);
    }

    else
    {
      LOBYTE(v45) = 1;
    }

    end = this->__neg_chars_.__end_;
    v47 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v48 = !v47 || v47 == end;
    v49 = !v48;
    if ((v45 & 1) == 0 && !v49)
    {
LABEL_86:
      negate = 1;
      goto LABEL_87;
    }
  }

  v52 = this->__ranges_.__begin_;
  v53 = this->__ranges_.__end_;
  if (v52 != v53)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
      v52 = this->__ranges_.__begin_;
      v53 = this->__ranges_.__end_;
      v54 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v55 = v53 - v52;
    if (v55)
    {
      v109 = v9;
      v105 = negate;
      v106 = v54;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      if ((v54 & 0x80u) == 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((v54 & 0x80u) == 0)
      {
        v58 = &__s;
      }

      else
      {
        v58 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      }

      v60 = &v52->second.__r_.__value_.__r.__words[2] + 7;
      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v60 - 24);
        if (v63 >= 0)
        {
          v64 = *(v60 - 24);
        }

        else
        {
          v64 = *(v60 - 39);
        }

        if (v63 >= 0)
        {
          v65 = (v60 - 47);
        }

        else
        {
          v65 = *(v60 - 47);
        }

        if (v64 >= v57)
        {
          v66 = v57;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v58, v65, v66);
        v68 = v57 >= v64;
        if (v67)
        {
          v68 = v67 >= 0;
        }

        if (v68)
        {
          v69 = *v60;
          if (v69 >= 0)
          {
            v70 = *v60;
          }

          else
          {
            v70 = *(v60 - 15);
          }

          if (v69 >= 0)
          {
            v71 = (v60 - 23);
          }

          else
          {
            v71 = *(v60 - 23);
          }

          if (v57 >= v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = v57;
          }

          v73 = memcmp(v71, v58, v72);
          v74 = v70 >= v57;
          if (v73)
          {
            v74 = v73 >= 0;
          }

          if (v74)
          {
            break;
          }
        }

        v62 = v61++ < v56;
        v60 += 48;
        if (!--v59)
        {
          negate = v105;
          goto LABEL_142;
        }
      }

      negate = 1;
LABEL_142:
      v9 = v109;
      if ((v106 & 0x80) == 0)
      {
LABEL_144:
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_145;
      }
    }

    else
    {
      v62 = 0;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_144;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_144;
  }

LABEL_145:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_171;
  }

  v75 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
  v76 = this->__equivalences_.__begin_;
  v77 = this->__equivalences_.__end_ - v76;
  if (!v77)
  {
    v82 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_169;
  }

  v107 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v110 = v9;
  v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __s.__r_.__value_.__r.__words[0];
  }

  if (v78 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  }

  v81 = 1;
  v82 = 1;
  while (1)
  {
    v83 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
    v84 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v83 = v76->__r_.__value_.__l.__size_;
    }

    if (v79 == v83)
    {
      v85 = v84 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
      if (!memcmp(v75, v85, v79))
      {
        break;
      }
    }

    v82 = v81++ < v78;
    ++v76;
    if (!--v80)
    {
      goto LABEL_168;
    }
  }

  negate = 1;
LABEL_168:
  v9 = v110;
  if (v107 < 0)
  {
LABEL_169:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_170:
  if (v82)
  {
    goto LABEL_87;
  }

LABEL_171:
  v86 = this->__mask_;
  if ((v113.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113.__r_.__value_.__s.__data_[0]] & v86) != 0)
  {
    goto LABEL_86;
  }

  v87 = (v86 >> 7) & 1;
  if (v113.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v87) = 0;
  }

  negate |= v87;
LABEL_87:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v51 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v51 = -995;
  }

  a2->__do_ = v51;
  a2->__node_ = first;
}

void sub_22286B8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22286B978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemory(uint64_t a1, E5RT::IOPort *this, const void **a3)
{
  E5RT::IOPort::GetPortDescriptor(&v12, this);
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Found a null pointer to a port descriptor.");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_2835E9238;
  }

  if (!E5RT::OperandDescriptor::TryAsTensorDescriptor(v12))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "All ports should be buffers.");
    std::runtime_error::runtime_error(v9, &v11);
    v9->__vftable = &unk_2835E9238;
  }

  v5 = E5RT::OperandDescriptor::TensorDescriptor(v12);
  E5RT::TensorDescriptor::GetSize(v5);
  E5RT::BufferObject::AllocMemory();
  v11.__r_.__value_.__r.__words[0] = a3;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 312), a3);
  if (v10)
  {
    operator new();
  }

  v7 = v6[6];
  *(v6 + 5) = 0u;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_22286C018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (a17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void nlv4_inference_orchestrator::trees::split(std::string *a1, std::string *__str, const void **a3)
{
  v3 = a3;
  v5 = a1;
  v6 = a3[1];
  v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v8 = v7;
  v9 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v7 >= 0)
  {
    v11 = __str;
  }

  else
  {
    v11 = __str->__r_.__value_.__r.__words[0];
  }

  __s = v11;
  if (v7 >= 0)
  {
    v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __str->__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    if (v12 >= v6)
    {
      v20 = *a3;
      v21 = v11;
      v22 = v11 + v12;
      v23 = **a3;
      v24 = v12;
      do
      {
        v25 = v24 - v6;
        if (v25 == -1)
        {
          break;
        }

        v26 = memchr(v21, v23, v25 + 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (!memcmp(v26, v20, v6))
        {
          if (v27 == v22 || v27 - __s == -1)
          {
            break;
          }

          v33 = __s;
          do
          {
            if (v12 - v6 == -1)
            {
              break;
            }

            v34 = memchr(v33, v23, v12 - v6 + 1);
            if (!v34)
            {
              break;
            }

            v35 = v34;
            if (!memcmp(v34, v20, v6))
            {
              goto LABEL_60;
            }

            v33 = (v35 + 1);
            v12 = v22 - (v35 + 1);
          }

          while (v12 >= v6);
          v35 = v22;
LABEL_60:
          v5 = a1;
          if (v35 == v22)
          {
            v13 = -1;
          }

          else
          {
            v13 = v35 - __s;
          }

          v3 = a3;
          goto LABEL_12;
        }

        v21 = (v27 + 1);
        v24 = v22 - (v27 + 1);
      }

      while (v24 >= v6);
    }

    if (v8 < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v9, size);
    }

    else
    {
      v39 = *__str;
    }

    *a1 = v39;
    memset(&v39, 0, sizeof(v39));
    v40 = "";
    std::string::basic_string[abi:ne200100]<0>(&a1[1], "");
  }

  else
  {
    v13 = 0;
LABEL_12:
    std::string::basic_string(&v42, __str, 0, v13, &v41);
    nlv4_inference_orchestrator::trees::trimWhitespace(&v39, &v42);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v14 = v3[1];
    v15 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v15 & 0x80u) == 0)
    {
      v16 = __str;
    }

    else
    {
      v16 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = __str->__r_.__value_.__l.__size_;
    }

    if (v14)
    {
      v17 = v16 + v15;
      if (v15 >= v14)
      {
        v28 = *v3;
        v29 = **v3;
        v30 = v16;
        do
        {
          v31 = v15 - v14;
          if (v31 == -1)
          {
            break;
          }

          v32 = memchr(v30, v29, v31 + 1);
          if (!v32)
          {
            break;
          }

          v18 = v32;
          if (!memcmp(v32, v28, v14))
          {
            goto LABEL_22;
          }

          v30 = (v18 + 1);
          v15 = v17 - (v18 + 1);
        }

        while (v15 >= v14);
      }

      v18 = v17;
LABEL_22:
      v19 = v18 - v16;
      if (v18 == v17)
      {
        v19 = -1;
      }
    }

    else
    {
      v19 = 0;
    }

    std::string::basic_string(&v41, __str, v19 + v14, 0xFFFFFFFFFFFFFFFFLL, &v43);
    nlv4_inference_orchestrator::trees::trimWhitespace(&v42, &v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      *v5 = v39;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v5 + 1, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v5[1] = v42;
    }
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_22286C4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 + 23) < 0)
  {
    operator delete(*v32);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::trees::trimWhitespace(std::string *a1, const std::string *a2)
{
  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, " \f\n\r\t\v");
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v4 = __p[0];
    v8 = __p[1];
  }

  if (!size)
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v9 = size;
    v10 = v6;
    while (memchr(v4, v10->__r_.__value_.__s.__data_[0], v8))
    {
      v10 = (v10 + 1);
      if (!--v9)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - v6;
  if (v11 == -1)
  {
LABEL_23:
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  else
  {
    v12 = v6 + size - 1;
    while (size)
    {
      v13 = v12;
      if (v8)
      {
        --v12;
        --size;
        if (memchr(v4, *v13, v8))
        {
          continue;
        }
      }

      v14 = v13 - v6;
      goto LABEL_25;
    }

    v14 = -1;
LABEL_25:
    std::string::basic_string(a1, a2, v11, v14 - v11 + 1, &v17);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22286C6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t snlp::common::e5ml::asset_finder::AssetFinder::checkFastReshapeCompatibility(uint64_t a1, uint64_t *a2)
{
  v40[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v38, a2);
  v37 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(v33, v38, v36);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v36);
  v29 = v33;
  v30 = 0;
  v31 = 0;
  v32 = 0x8000000000000000;
  v3 = v33[0];
  if (v33[0])
  {
    if (v33[0] == 2)
    {
      v31 = *v34;
    }

    else if (v33[0] == 1)
    {
      v30 = *v34;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 1;
  }

  v4 = (a1 + 72);
  while (1)
  {
    v26 = 0;
    v27 = 0;
    v25 = v33;
    v28 = 0x8000000000000000;
    if (v3 == 2)
    {
      v27 = v34[1];
    }

    else if (v3 == 1)
    {
      v26 = v34 + 1;
    }

    else
    {
      v28 = 1;
    }

    if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(&v29, &v25))
    {
      break;
    }

    if (*v29 != 1)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v35, "cannot use key() for non-object iterators");
      nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 207, v35);
    }

    v5 = *(v30 + 55);
    if (v5 >= 0)
    {
      v6 = *(v30 + 55);
    }

    else
    {
      v6 = *(v30 + 40);
    }

    v7 = *(a1 + 95);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 80);
    }

    if (v6 == v7)
    {
      v9 = v5 >= 0 ? (v30 + 32) : *(v30 + 32);
      v10 = *v4;
      v11 = (v8 >= 0 ? a1 + 72 : *v4);
      if (!memcmp(v9, v11, v6) && *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v29) == 1)
      {
        v12 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v29);
        v26 = 0;
        v27 = 0;
        v25 = v12;
        v28 = 0x8000000000000000;
        v13 = *v12;
        if (v13 == 1)
        {
          v26 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(*(v12 + 1), (a1 + 96));
        }

        else if (v13 == 2)
        {
          v27 = *(*(v12 + 1) + 8);
        }

        else
        {
          v28 = 1;
        }

        v14 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v29);
        v22 = 0;
        v23 = 0;
        v21 = v14;
        v24 = 0x8000000000000000;
        v15 = *v14;
        if (v15 == 2)
        {
          v23 = *(*(v14 + 1) + 8);
        }

        else if (v15 == 1)
        {
          v22 = *(v14 + 1) + 8;
        }

        else
        {
          v24 = 1;
        }

        if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(&v25, &v21))
        {
          v16 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v29);
          if (*nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::at(v16, (a1 + 96)) == 3)
          {
            v17 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v29);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::at(v17, (a1 + 96));
            v35[0] = 3;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
          }
        }
      }
    }

    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator++(&v29);
    v3 = v33[0];
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v34, v33[0]);
  v38[0] = *MEMORY[0x277D82808];
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](&v39);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v40);
  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22286CB5C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v31 + 8), a22);
  std::ifstream::~ifstream(&buf, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x258]);
  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = (*(*v34 + 16))(v34);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v36;
      _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_ERROR, "E5ML bundle properties parsing failed: %s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x22286CAC4);
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(uint64_t a1, std::string *a2, uint64_t a3, int *a4, uint64_t a5, __int128 *a6)
{
  v11 = std::string::basic_string[abi:ne200100]<0>(a1, "main");
  E5RT::ExecutionStream::CreateExecutionStream(v11);
  v12 = *a4;
  *(a1 + 40) = *a4;
  *(a1 + 32) = v12;
  std::__optional_copy_base<snlp::common::selflogging::NLXSchemaNLXClientEventMetadata,false>::__optional_copy_base[abi:ne200100]((a1 + 48), a6);
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = *a4;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a2);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::createInferenceOperation(a1, &__p);
  v13 = v19;
  *(a1 + 176) = v19;
  if (v13)
  {
    operator new();
  }

  v14 = 0;
  *(a1 + 184) = 0;
  v19 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = *(a1 + 184);
  }

  v16 = *(a1 + 176);
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  snlp::common::espresso_inference::e5ml::WeightsHandler::WeightsHandler(a1 + 192, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::unordered_map<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>::unordered_map(a1 + 272, a3);
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  return a1;
}

void sub_22286CE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  snlp::common::espresso_inference::e5ml::MILCompiler::~MILCompiler(v18);
  v20 = *(v17 + 24);
  *(v17 + 24) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void snlp::ssu::espresso::SSUNessieModel::SSUNessieModel(void *a1, std::string *a2, void *a3, uint64_t a4, char a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "output_encoding_dim");
  NetworkConfig = snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = NetworkConfig;
  std::string::basic_string[abi:ne200100]<0>(__p, "max_seq_len");
  v11 = snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  a1[1] = v11;
  std::string::basic_string[abi:ne200100]<0>(__p, "min_batch_size");
  v12 = snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  a1[2] = v12;
  a1[3] = snlp::ssu::espresso::SSUNessieModel::getMaxBatchSizeOrDefault(a3, a4, a5);
  v13 = a1[1];
  v16 = 14;
  strcpy(__p, "max_batch_size");
  v14 = snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(a3, __p);
  snlp::ssu::espresso::SSUNessieModel::buildModuleWithValidation(a1, a2, v13, v14, a1[3], (a1 + 4));
}

void sub_22286D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(void *a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &unk_2835E9238;
  }

  if (*(v2 + 16) != 1)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v7 = *&v6->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v5, &v9);
    v5->__vftable = &unk_2835E9238;
  }

  return *(v2 + 10);
}

void sub_22286D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::espresso::SSUNessieModel::getMaxBatchSizeOrDefault(void *a1, uint64_t a2, char a3)
{
  v8 = 14;
  strcpy(__p, "max_batch_size");
  NetworkConfig = snlp::ssu::espresso::SSUNessieModel::getNetworkConfig(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3)
  {
    return a2;
  }

  else
  {
    return NetworkConfig;
  }
}

void sub_22286D364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModel::buildModuleWithValidation(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*a1)
  {
    if (a1[1])
    {
      v6 = a1[2];
      if (v6)
      {
        if (v6 <= a4)
        {
          if (v6 <= a5)
          {
            if (a5 <= a4)
            {

              snlp::ssu::espresso::SSUNessieModule::SSUNessieModule(a6, a2, a3, a5);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::to_string(&v49, a5);
            v38 = std::string::insert(&v49, 0, "SSUNessieModel instance max batch size (");
            v39 = *&v38->__r_.__value_.__l.__data_;
            v50.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
            *&v50.__r_.__value_.__l.__data_ = v39;
            v38->__r_.__value_.__l.__size_ = 0;
            v38->__r_.__value_.__r.__words[2] = 0;
            v38->__r_.__value_.__r.__words[0] = 0;
            v40 = std::string::append(&v50, ") exceeds the config max batch size (");
            v41 = *&v40->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = v41;
            v40->__r_.__value_.__l.__size_ = 0;
            v40->__r_.__value_.__r.__words[2] = 0;
            v40->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v48, a4);
            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v48;
            }

            else
            {
              v42 = v48.__r_.__value_.__r.__words[0];
            }

            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v48.__r_.__value_.__l.__size_;
            }

            v44 = std::string::append(&v51, v42, size);
            v45 = *&v44->__r_.__value_.__l.__data_;
            v52.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
            *&v52.__r_.__value_.__l.__data_ = v45;
            v44->__r_.__value_.__l.__size_ = 0;
            v44->__r_.__value_.__r.__words[2] = 0;
            v44->__r_.__value_.__r.__words[0] = 0;
            v46 = std::string::append(&v52, ")");
            v47 = *&v46->__r_.__value_.__l.__data_;
            v53.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
            *&v53.__r_.__value_.__l.__data_ = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(exception, &v53);
            exception->__vftable = &unk_2835E9238;
          }

          v25 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v49, a5);
          v26 = std::string::insert(&v49, 0, "SSUNessieModel instance max batch size (");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v50.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          v28 = std::string::append(&v50, ") is less than the config min batch size (");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v51.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v51.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v48, a1[2]);
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v48;
          }

          else
          {
            v30 = v48.__r_.__value_.__r.__words[0];
          }

          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v48.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&v51, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v52.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v52.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v52, ")");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v53.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v53.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v25, &v53);
          v25->__vftable = &unk_2835E9238;
        }

        v12 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v49, a1[2]);
        v13 = std::string::insert(&v49, 0, "SSUNessieModel config min batch size (");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        v15 = std::string::append(&v50, ") exceeds the max batch size (");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v51.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v51.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v48, a4);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v48;
        }

        else
        {
          v17 = v48.__r_.__value_.__r.__words[0];
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v48.__r_.__value_.__l.__size_;
        }

        v19 = std::string::append(&v51, v17, v18);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v52, ")");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v12, &v53);
        v12->__vftable = &unk_2835E9238;
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v53, "SSUNessieModel config min batch size must be non-zero");
      std::runtime_error::runtime_error(v10, &v53);
      v10->__vftable = &unk_2835E9238;
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v53, "SSUNessieModel config max sequence length must be non-zero");
    std::runtime_error::runtime_error(v9, &v53);
    v9->__vftable = &unk_2835E9238;
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v53, "SSUNessieModel config output encoding dimension must be non-zero");
  std::runtime_error::runtime_error(v8, &v53);
  v8->__vftable = &unk_2835E9238;
}

void sub_22286D8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v34)
  {
    __cxa_free_exception(v33);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModule::SSUNessieModule(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v9 = 6;
  LOBYTE(v7[0]) = 0;
  v8 = 0;
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, v10, &v9, a1, v7);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v10);
  std::string::basic_string[abi:ne200100]<0>((a1 + 352), "padding_mask");
  std::string::basic_string[abi:ne200100]<0>((a1 + 376), "token_ids");
  std::string::basic_string[abi:ne200100]<0>((a1 + 400), "encodings");
  *(a1 + 424) = a3;
  *(a1 + 432) = 850045863;
  *(a1 + 488) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  snlp::ssu::espresso::SSUNessieModule::reshapeInputDescriptors(a1, a4);
}

void sub_22286DB20(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex((v1 + 432));
  if (*(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  if (*(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule(v1);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::buildModel(std::__fs::filesystem::path *this@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::setupEspressoV2Model(this, &v9);
  if (v9)
  {
    *a2 = v9;
  }

  else
  {
    v4 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = SLODWORD(this[2].__pn_.__r_.__value_.__r.__words[2]);
      if (v5 >= 8)
      {
        v7 = SNLPOSLoggerForCategory(4);
        v6 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v11 = "<UNDEFINED_COMPONENT>";
          v12 = 2048;
          v13 = v5;
          _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v6 = off_2784B6F30[v5];
      }

      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "[%s] Could not find the relevant E5-ML (v2) assets. Falling back onto Espresso v1 assets.", buf, 0xCu);
    }

    itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::setupEspressoV1Model(this, a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::setupEspressoV2Model(std::__fs::filesystem::path *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&v6.__pn_, this, this + 4);
  std::__fs::filesystem::__status(&v6, 0);
  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (v5.__r_.__value_.__s.__data_[0] && v5.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&__p, this, this + 4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = __p;
    }

    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_22286E014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  v31 = *(v29 + 8);
  *(v29 + 8) = 0;
  if (v31)
  {
    itfm_inference_orchestrator::inference_engine::ITFME5MLModule::~ITFME5MLModule(v31);
    MEMORY[0x223DC4D00]();
  }

  MEMORY[0x223DC4D00](v29, 0x10B3C401575683FLL);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  *v28 = 0;
  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
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
    operator new();
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22286E448(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223DC48B0](v13, a1);
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

  MEMORY[0x223DC48C0](v13);
  return a1;
}

void sub_22286E5A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x223DC48C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x22286E584);
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

void sub_22286E888(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](v1);
  _Unwind_Resume(a1);
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v7, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 212, v7);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_22286E980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 214, v6);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v6, "cannot get value");
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v4, 214, v6);
  }

  return result;
}

void sub_22286EACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(uint64_t a1, void *a2)
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
    v6 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::at(unsigned __int8 *a1, void *a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *a1;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_2784B68D0[v6];
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use at() with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 304, &v11);
  }

  v3 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(*(a1 + 1), &v13, a2);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v3 + 56;
}

void sub_22286ED2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t nlohmann::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v10 = v3 == 5 && v4 == 7;
    if (v10)
    {
      v15 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v13 = *(a1 + 1);
        v14 = *(a2 + 1);
        return v13 == v14;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          return result;
        }

        v13 = *(a1 + 1);
        v14 = *(a2 + 1);
        return v13 == v14;
      }

      v15 = *(a1 + 1);
    }

    return *(a2 + 1) == v15;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        v8 = a1[8];
        v9 = a2[8];
        return v8 == v9;
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = *(a1 + 1);
          v6 = *(a2 + 1);
          v7 = *(v5 + 8) - *v5;
          if (v7 == *(v6 + 8) - *v6 && !memcmp(*v5, *v6, v7) && *(v5 + 24) == *(v6 + 24))
          {
            v8 = *(v5 + 25);
            v9 = *(v6 + 25);
            return v8 == v9;
          }
        }

        return 0;
      }

      v13 = *(a1 + 1);
      v14 = *(a2 + 1);
      return v13 == v14;
    }

    return *(a1 + 1) == *(a2 + 1);
  }

  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v17 = *(a1 + 1);
      v18 = *(a2 + 1);
      if (v17[2] != v18[2])
      {
        return 0;
      }

      v21 = *v17;
      v19 = v17 + 1;
      v20 = v21;
      if (v21 != v19)
      {
        v22 = *v18;
        while (1)
        {
          v23 = *(v20 + 55);
          if (v23 >= 0)
          {
            v24 = *(v20 + 55);
          }

          else
          {
            v24 = v20[5];
          }

          v25 = *(v22 + 55);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = v22[5];
          }

          if (v24 != v25)
          {
            break;
          }

          v27 = v23 >= 0 ? v20 + 4 : v20[4];
          v28 = v26 >= 0 ? v22 + 4 : v22[4];
          if (memcmp(v27, v28, v24))
          {
            break;
          }

          result = nlohmann::operator==(v20 + 7, v22 + 7);
          if (result)
          {
            v30 = v20[1];
            v31 = v20;
            if (v30)
            {
              do
              {
                v20 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v20 = v31[2];
                v10 = *v20 == v31;
                v31 = v20;
              }

              while (!v10);
            }

            v32 = v22[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v22[2];
                v10 = *v33 == v22;
                v22 = v33;
              }

              while (!v10);
            }

            result = 1;
            v22 = v33;
            if (v20 != v19)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v3 != 2)
  {
    v34 = *(a1 + 1);
    v35 = *(a2 + 1);
    v36 = *(v34 + 23);
    if (v36 >= 0)
    {
      v37 = *(v34 + 23);
    }

    else
    {
      v37 = *(v34 + 8);
    }

    v38 = *(v35 + 23);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(v35 + 8);
    }

    if (v37 == v38)
    {
      if (v36 >= 0)
      {
        v40 = *(a1 + 1);
      }

      else
      {
        v40 = *v34;
      }

      if (v39 >= 0)
      {
        v41 = *(a2 + 1);
      }

      else
      {
        v41 = *v35;
      }

      return memcmp(v40, v41, v37) == 0;
    }

    return 0;
  }

  v42 = *(a1 + 1);
  v43 = *(a2 + 1);
  v44 = *v42;
  v45 = v42[1];
  v46 = *v43;
  if (v45 - *v42 != v43[1] - *v43)
  {
    return 0;
  }

  if (v44 == v45)
  {
    return 1;
  }

  do
  {
    result = nlohmann::operator==(v44, v46);
    if (!result)
    {
      break;
    }

    v44 += 16;
    v46 += 16;
  }

  while (v44 != v45);
  return result;
}

uint64_t *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *result) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v19 = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v9);
    }

    v10 = 16 * v6;
    v16 = 0;
    v17 = v10;
    *(&v18 + 1) = 0;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *&v18 = 16 * v6 + 16;
    v11 = v2[1];
    v12 = 16 * v6 + *v2 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(*v2, v11, v12);
    v13 = *v2;
    *v2 = v12;
    v14 = v2[2];
    v15 = v18;
    *(v2 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
    v5 = v15;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = v3 + 16;
  }

  v2[1] = v5;
  return result;
}

void sub_22286F274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::__unordered_map_hasher<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::__unordered_map_equal<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>,std::equal_to<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,std::hash<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>,true>,std::allocator<std::__hash_value_type<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType,std::__fs::filesystem::path>>>::find<snlp::common::e5ml::asset_finder::AssetFinder::EspressoAssetType>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void nlv4_inference_orchestrator::inference_engine::BertModule::BertModule(nlv4_inference_orchestrator::inference_engine::BertModule *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = &unk_2835E5EC8;
  *(this + 2) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 16, "");
  std::string::basic_string[abi:ne200100]<0>(this + 40, "");
  std::string::basic_string[abi:ne200100]<0>(this + 64, "");
  std::string::basic_string[abi:ne200100]<0>(this + 88, "");
  std::string::basic_string[abi:ne200100]<0>(this + 112, "max_seq_length");
  *(this + 17) = 0;
  v2 = xmmword_2229D2C08;
  v3 = 192;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(this + 136, &v2, &v4, 3uLL);
}

void sub_22286F564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  if (*(v1 + 351) < 0)
  {
    operator delete(*(v1 + 328));
  }

  if (*(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  if (*(v1 + 303) < 0)
  {
    operator delete(*(v1 + 280));
  }

  if (*(v1 + 279) < 0)
  {
    operator delete(*(v1 + 256));
  }

  if (*(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 144) = v4;
    operator delete(v4);
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_22286F7F4(_Unwind_Exception *a1)
{
  if (*(v1 + 879) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 855) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 831) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 807) < 0)
  {
    operator delete(*v2);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule((v1 + 432));
  nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(v1);
  _Unwind_Resume(a1);
}

void sub_22286F8EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<snlp::common::selflogging::NLXSchemaNLXClientEventMetadata,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[3].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 80) == 1)
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

    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
      *&this[2].__r_.__value_.__l.__data_ = v6;
    }

    LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
    this[3].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_22286F9CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 80) == 1)
  {
    snlp::common::selflogging::NLXSchemaNLXClientEventMetadata::~NLXSchemaNLXClientEventMetadata(v1);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::createInferenceOperation(uint64_t a1, std::__fs::filesystem::path *this)
{
  if (snlp::common::espresso_inference::e5ml::EspressoE5MLModule::modelIsMilFormat(this, this))
  {

    snlp::common::espresso_inference::e5ml::MILCompiler::compileToE5ML((a1 + 40), this);
  }

  if (!snlp::common::espresso_inference::e5ml::EspressoE5MLModule::modelIsE5Format(this, v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::__fs::filesystem::path::filename[abi:ne200100](this, &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v10;
    }

    v6 = std::string::insert(&v11, 0, "The model file (");
    v7 = *&v6->__r_.__value_.__l.__data_;
    pn.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&pn.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&pn, ") is not a recognised E5-ML model format.");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    exception->__vftable = &unk_2835E6B78;
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "Inference Call");
  if (SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, this->__pn_.__r_.__value_.__l.__data_, this->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = this->__pn_;
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_22286FC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

BOOL snlp::common::espresso_inference::e5ml::EspressoE5MLModule::modelIsMilFormat(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, ".mil");
  if (!std::__fs::filesystem::path::__extension(this).__size_)
  {
    v4 = 0;
    goto LABEL_22;
  }

  std::__fs::filesystem::path::extension[abi:ne200100](&__p, this);
  v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = __p;
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (v5 == size)
  {
    if ((v14 & 0x80u) == 0)
    {
      v8 = v13;
    }

    else
    {
      v8 = v13[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    v4 = memcmp(v8, v9, v5) == 0;
    if (v7 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (v3 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_22:
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v4;
}